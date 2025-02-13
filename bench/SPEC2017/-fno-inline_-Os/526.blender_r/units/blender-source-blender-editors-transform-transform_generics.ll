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
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.TransData = type { float, float, float, ptr, [3 x float], ptr, float, [3 x float], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], ptr, ptr, ptr, ptr, ptr, i32, i16 }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.SpaceAction = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.bDopeSheet, i8, i8, i16, float }
%struct.bDopeSheet = type { ptr, %struct.ListBase, ptr, [64 x i8], i32, i32, i32, i32 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.SpaceNla = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i16, i16, i32, ptr, %struct.View2D }
%struct.TransDataNla = type { ptr, ptr, ptr, ptr, [3 x float], [3 x float], i32, i32 }
%struct.NlaStrip = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, ptr, i32, i32 }
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }
%struct.SpaceIpo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.ListBase, i16, i16, i32, float, i32 }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
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
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.MirrorModifierData = type { %struct.ModifierData, i16, i16, float, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.wmTimer = type { ptr, ptr, ptr, double, i32, ptr, double, double, double, double, double, i32 }
%struct.ScreenAnimData = type { ptr, i16, i16, i16, i32, i32, double }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }

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
@switch.table.initTransInfo_edit_pet_to_flag = private unnamed_addr constant [3 x i32] [i32 2048, i32 6144, i32 33556480], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @getViewVector(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x float], align 16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 31
  %7 = load i16, ptr %6, align 4, !tbaa !34
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %1) #18
  %10 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  store float 1.000000e+00, ptr %10, align 4, !tbaa !48
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %4) #18
  %11 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  store float 1.000000e+00, ptr %11, align 4, !tbaa !48
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 27
  call void @mul_m4_v4(ptr noundef nonnull %12, ptr noundef nonnull %5) #19
  %13 = load <2 x float>, ptr %5, align 16, !tbaa !48
  %14 = fmul <2 x float> %13, <float 2.000000e+00, float 2.000000e+00>
  store <2 x float> %14, ptr %5, align 16, !tbaa !48
  %15 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %16 = load float, ptr %15, align 8, !tbaa !48
  %17 = fmul float %16, 2.000000e+00
  store float %17, ptr %15, align 8, !tbaa !48
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28
  call void @mul_m4_v4(ptr noundef nonnull %18, ptr noundef nonnull %5) #19
  call fastcc void @sub_v3_v3v3(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  br label %21

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %20) #18
  br label %21

21:                                               ; preds = %19, %9
  call fastcc void @normalize_v3(ptr noundef %2) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !49 {
  %3 = load float, ptr %1, align 4, !tbaa !48
  store float %3, ptr %0, align 4, !tbaa !48
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !48
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !48
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !48
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !50 {
  %4 = load float, ptr %1, align 4, !tbaa !48
  %5 = load float, ptr %2, align 4, !tbaa !48
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !48
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !48
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !48
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !48
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !48
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !48
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !51 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @recalcData(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !52
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call fastcc void @recalcData_objects(ptr noundef nonnull %0) #18
  br label %26

7:                                                ; preds = %1
  %8 = and i32 %3, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call fastcc void @recalcData_objects(ptr noundef nonnull %0) #18
  br label %26

11:                                               ; preds = %7
  %12 = and i32 %3, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @flushTransPaintCurve(ptr noundef nonnull %0) #19
  br label %26

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %17 = load i8, ptr %16, align 8, !tbaa !53
  switch i8 %17, label %25 [
    i8 6, label %18
    i8 12, label %19
    i8 13, label %20
    i8 8, label %21
    i8 2, label %22
    i8 16, label %23
    i8 20, label %24
  ]

18:                                               ; preds = %15
  tail call fastcc void @recalcData_image(ptr noundef nonnull %0) #18
  br label %26

19:                                               ; preds = %15
  tail call fastcc void @recalcData_actedit(ptr noundef nonnull %0) #18
  br label %26

20:                                               ; preds = %15
  tail call fastcc void @recalcData_nla(ptr noundef nonnull %0) #18
  br label %26

21:                                               ; preds = %15
  tail call fastcc void @recalcData_sequencer(ptr noundef nonnull %0) #18
  br label %26

22:                                               ; preds = %15
  tail call fastcc void @recalcData_graphedit(ptr noundef nonnull %0) #18
  br label %26

23:                                               ; preds = %15
  tail call void @flushTransNodes(ptr noundef nonnull %0) #19
  br label %26

24:                                               ; preds = %15
  tail call fastcc void @recalcData_spaceclip(ptr noundef nonnull %0) #18
  br label %26

25:                                               ; preds = %15
  tail call fastcc void @recalcData_objects(ptr noundef nonnull %0) #18
  br label %26

26:                                               ; preds = %10, %18, %20, %22, %24, %25, %23, %21, %19, %14, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @recalcData_objects(ptr noundef %0) unnamed_addr #0 !PGOFuncName !54 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = alloca [4 x float], align 16
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  %11 = icmp eq ptr %10, null
  br i1 %11, label %228, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !78
  switch i16 %14, label %218 [
    i16 2, label %15
    i16 3, label %15
    i16 22, label %42
    i16 1, label %62
    i16 25, label %84
  ]

15:                                               ; preds = %12, %12
  %16 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !81
  %18 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef %17) #19
  %19 = load ptr, ptr %18, align 8, !tbaa !82
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %21 = load i16, ptr %20, align 4, !tbaa !83
  %22 = icmp eq i16 %21, 3
  br i1 %22, label %25, label %23

23:                                               ; preds = %15
  %24 = load ptr, ptr %9, align 8, !tbaa !77
  tail call fastcc void @clipMirrorModifier(ptr noundef nonnull %0, ptr noundef %24) #18
  tail call void @applyProject(ptr noundef nonnull %0) #19
  br label %25

25:                                               ; preds = %23, %15
  %26 = load ptr, ptr %9, align 8, !tbaa !77
  %27 = getelementptr inbounds %struct.Object, ptr %26, i64 0, i32 19
  %28 = load ptr, ptr %27, align 8, !tbaa !81
  tail call void @DAG_id_tag_update(ptr noundef %28, i16 noundef signext 0) #19
  %29 = load i16, ptr %20, align 4, !tbaa !83
  %30 = icmp eq i16 %29, 3
  %31 = icmp eq ptr %19, null
  br i1 %30, label %33, label %32

32:                                               ; preds = %25
  br i1 %31, label %346, label %38

33:                                               ; preds = %25
  br i1 %31, label %346, label %34

34:                                               ; preds = %33, %34
  %35 = phi ptr [ %36, %34 ], [ %19, %33 ]
  tail call void @BKE_nurb_handles_calc(ptr noundef nonnull %35) #19
  %36 = load ptr, ptr %35, align 8, !tbaa !84
  %37 = icmp eq ptr %36, null
  br i1 %37, label %346, label %34, !llvm.loop !86

38:                                               ; preds = %32, %38
  %39 = phi ptr [ %40, %38 ], [ %19, %32 ]
  tail call void @BKE_nurb_test2D(ptr noundef nonnull %39) #19
  tail call void @BKE_nurb_handles_calc(ptr noundef nonnull %39) #19
  %40 = load ptr, ptr %39, align 8, !tbaa !84
  %41 = icmp eq ptr %40, null
  br i1 %41, label %346, label %38, !llvm.loop !88

42:                                               ; preds = %12
  %43 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %44 = load ptr, ptr %43, align 8, !tbaa !81
  %45 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %46 = load i16, ptr %45, align 4, !tbaa !83
  %47 = icmp eq i16 %46, 3
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  tail call void @applyProject(ptr noundef nonnull %0) #19
  %49 = load ptr, ptr %9, align 8, !tbaa !77
  %50 = getelementptr inbounds %struct.Object, ptr %49, i64 0, i32 19
  %51 = load ptr, ptr %50, align 8, !tbaa !81
  br label %52

52:                                               ; preds = %48, %42
  %53 = phi ptr [ %51, %48 ], [ %44, %42 ]
  tail call void @DAG_id_tag_update(ptr noundef %53, i16 noundef signext 0) #19
  %54 = getelementptr inbounds %struct.Lattice, ptr %44, i64 0, i32 26
  %55 = load ptr, ptr %54, align 8, !tbaa !89
  %56 = load ptr, ptr %55, align 8, !tbaa !91
  %57 = getelementptr inbounds %struct.Lattice, ptr %56, i64 0, i32 5
  %58 = load i16, ptr %57, align 2, !tbaa !93
  %59 = and i16 %58, 2
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %346, label %61

61:                                               ; preds = %52
  tail call void @outside_lattice(ptr noundef nonnull %56) #19
  br label %346

62:                                               ; preds = %12
  %63 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %10) #19
  %64 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %65 = load i16, ptr %64, align 4, !tbaa !83
  %66 = icmp eq i16 %65, 3
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  tail call void @applyProject(ptr noundef nonnull %0) #19
  %68 = load ptr, ptr %9, align 8, !tbaa !77
  tail call fastcc void @clipMirrorModifier(ptr noundef nonnull %0, ptr noundef %68) #18
  br label %69

69:                                               ; preds = %67, %62
  %70 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %71 = load i32, ptr %70, align 8, !tbaa !52
  %72 = and i32 %71, 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !94
  %77 = and i32 %76, 524288
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  tail call fastcc void @editbmesh_apply_to_mirror(ptr noundef nonnull %0) #18
  br label %80

80:                                               ; preds = %79, %74, %69
  %81 = load ptr, ptr %9, align 8, !tbaa !77
  %82 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 19
  %83 = load ptr, ptr %82, align 8, !tbaa !81
  tail call void @DAG_id_tag_update(ptr noundef %83, i16 noundef signext 0) #19
  tail call void @EDBM_mesh_normals_update(ptr noundef %63) #19
  tail call void @BKE_editmesh_tessface_calc(ptr noundef %63) #19
  br label %346

84:                                               ; preds = %12
  %85 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %86 = load ptr, ptr %85, align 8, !tbaa !81
  %87 = getelementptr inbounds %struct.bArmature, ptr %86, i64 0, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !95
  %89 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %90 = load ptr, ptr %89, align 8, !tbaa !97
  %91 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %92 = load i16, ptr %91, align 4, !tbaa !83
  %93 = icmp eq i16 %92, 3
  br i1 %93, label %95, label %94

94:                                               ; preds = %84
  tail call void @applyProject(ptr noundef nonnull %0) #19
  br label %95

95:                                               ; preds = %94, %84
  %96 = load ptr, ptr %88, align 8, !tbaa !98
  %97 = icmp eq ptr %96, null
  br i1 %97, label %170, label %98

98:                                               ; preds = %95, %167
  %99 = phi ptr [ %168, %167 ], [ %96, %95 ]
  %100 = getelementptr inbounds %struct.EditBone, ptr %99, i64 0, i32 9
  %101 = load i32, ptr %100, align 4, !tbaa !99
  %102 = and i32 %101, 16
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %131, label %104

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.EditBone, ptr %99, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !101
  %107 = icmp eq ptr %106, null
  br i1 %107, label %131, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.EditBone, ptr %106, i64 0, i32 9
  %110 = load i32, ptr %109, align 4, !tbaa !99
  %111 = and i32 %110, 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.EditBone, ptr %99, i64 0, i32 7
  %115 = getelementptr inbounds %struct.EditBone, ptr %106, i64 0, i32 8
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %114, ptr noundef nonnull %115) #18
  %116 = load i32, ptr %0, align 8, !tbaa !102
  %117 = icmp eq i32 %116, 15
  br i1 %117, label %118, label %131

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.EditBone, ptr %106, i64 0, i32 19
  %120 = load float, ptr %119, align 4, !tbaa !103
  %121 = getelementptr inbounds %struct.EditBone, ptr %99, i64 0, i32 18
  store float %120, ptr %121, align 8, !tbaa !104
  br label %131

122:                                              ; preds = %108
  %123 = getelementptr inbounds %struct.EditBone, ptr %106, i64 0, i32 8
  %124 = getelementptr inbounds %struct.EditBone, ptr %99, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %123, ptr noundef nonnull %124) #18
  %125 = load i32, ptr %0, align 8, !tbaa !102
  %126 = icmp eq i32 %125, 15
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.EditBone, ptr %99, i64 0, i32 18
  %129 = load float, ptr %128, align 8, !tbaa !104
  %130 = getelementptr inbounds %struct.EditBone, ptr %106, i64 0, i32 19
  store float %129, ptr %130, align 4, !tbaa !103
  br label %131

131:                                              ; preds = %98, %118, %113, %127, %122, %104
  %132 = getelementptr inbounds %struct.EditBone, ptr %99, i64 0, i32 7
  %133 = getelementptr inbounds %struct.EditBone, ptr %99, i64 0, i32 8
  %134 = tail call fastcc float @len_v3v3(ptr noundef nonnull %132, ptr noundef nonnull %133) #18
  %135 = getelementptr inbounds %struct.EditBone, ptr %99, i64 0, i32 14
  store float %134, ptr %135, align 8, !tbaa !105
  %136 = getelementptr inbounds %struct.EditBone, ptr %99, i64 0, i32 20
  %137 = load float, ptr %136, align 8, !tbaa !106
  %138 = fcmp oeq float %137, 0.000000e+00
  br i1 %138, label %139, label %154

139:                                              ; preds = %131
  %140 = insertelement <2 x float> poison, float %134, i64 0
  %141 = shufflevector <2 x float> %140, <2 x float> poison, <2 x i32> zeroinitializer
  %142 = fmul <2 x float> %141, <float 2.500000e-01, float 0x3FB99999A0000000>
  %143 = getelementptr inbounds %struct.EditBone, ptr %99, i64 0, i32 18
  store <2 x float> %142, ptr %143, align 8, !tbaa !48
  %144 = getelementptr inbounds %struct.EditBone, ptr %99, i64 0, i32 11
  %145 = extractelement <2 x float> %142, i64 0
  store float %145, ptr %144, align 4, !tbaa !107
  %146 = getelementptr inbounds %struct.EditBone, ptr %99, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !101
  %148 = icmp eq ptr %147, null
  br i1 %148, label %167, label %149

149:                                              ; preds = %139
  %150 = getelementptr inbounds %struct.EditBone, ptr %147, i64 0, i32 19
  %151 = load float, ptr %150, align 4, !tbaa !103
  %152 = fcmp ogt float %145, %151
  br i1 %152, label %153, label %167

153:                                              ; preds = %149
  store float %151, ptr %143, align 8, !tbaa !104
  br label %167

154:                                              ; preds = %131
  %155 = load i32, ptr %0, align 8, !tbaa !102
  %156 = icmp eq i32 %155, 15
  br i1 %156, label %167, label %157

157:                                              ; preds = %154
  %158 = fdiv float %134, %137
  %159 = getelementptr inbounds %struct.EditBone, ptr %99, i64 0, i32 11
  %160 = load float, ptr %159, align 4, !tbaa !107
  %161 = fmul float %158, %160
  store float %161, ptr %159, align 4, !tbaa !107
  %162 = getelementptr inbounds %struct.EditBone, ptr %99, i64 0, i32 18
  %163 = load <2 x float>, ptr %162, align 8, !tbaa !48
  %164 = insertelement <2 x float> poison, float %158, i64 0
  %165 = shufflevector <2 x float> %164, <2 x float> poison, <2 x i32> zeroinitializer
  %166 = fmul <2 x float> %165, %163
  store <2 x float> %166, ptr %162, align 8, !tbaa !48
  store float %134, ptr %136, align 8, !tbaa !106
  br label %167

167:                                              ; preds = %149, %153, %139, %157, %154
  %168 = load ptr, ptr %99, align 8, !tbaa !98
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %98, !llvm.loop !108

170:                                              ; preds = %167, %95
  %171 = load i32, ptr %0, align 8, !tbaa !102
  switch i32 %171, label %172 [
    i32 18, label %207
    i32 15, label %207
    i32 14, label %207
  ]

172:                                              ; preds = %170
  %173 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %174 = load i32, ptr %173, align 8, !tbaa !109
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %207

176:                                              ; preds = %172, %202
  %177 = phi i32 [ %203, %202 ], [ %174, %172 ]
  %178 = phi ptr [ %205, %202 ], [ %90, %172 ]
  %179 = phi i32 [ %204, %202 ], [ 0, %172 ]
  %180 = getelementptr inbounds %struct.TransData, ptr %178, i64 0, i32 15
  %181 = load ptr, ptr %180, align 8, !tbaa !110
  %182 = icmp eq ptr %181, null
  br i1 %182, label %202, label %183

183:                                              ; preds = %176
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %184 = load i16, ptr %91, align 4, !tbaa !83
  %185 = icmp eq i16 %184, 3
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.TransData, ptr %178, i64 0, i32 6
  %188 = load float, ptr %187, align 8, !tbaa !112
  br label %198

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.TransData, ptr %178, i64 0, i32 10, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %190) #18
  %191 = getelementptr inbounds %struct.EditBone, ptr %181, i64 0, i32 8
  %192 = getelementptr inbounds %struct.EditBone, ptr %181, i64 0, i32 7
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %2, ptr noundef nonnull %191, ptr noundef nonnull %192) #18
  call fastcc void @normalize_v3(ptr noundef nonnull %2) #18
  %193 = getelementptr inbounds %struct.TransData, ptr %178, i64 0, i32 10, i64 1
  call void @rotation_between_vecs_to_quat(ptr noundef nonnull %4, ptr noundef nonnull %193, ptr noundef nonnull %2) #19
  call void @mul_qt_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #19
  %194 = call float @ED_rollBoneToVector(ptr noundef nonnull %181, ptr noundef nonnull %3, i8 noundef zeroext 0) #19
  %195 = getelementptr inbounds %struct.TransData, ptr %178, i64 0, i32 6
  %196 = load float, ptr %195, align 8, !tbaa !112
  %197 = call float @angle_compat_rad(float noundef %194, float noundef %196) #19
  br label %198

198:                                              ; preds = %189, %186
  %199 = phi float [ %188, %186 ], [ %197, %189 ]
  %200 = getelementptr inbounds %struct.EditBone, ptr %181, i64 0, i32 6
  store float %199, ptr %200, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #17
  %201 = load i32, ptr %173, align 8, !tbaa !109
  br label %202

202:                                              ; preds = %176, %198
  %203 = phi i32 [ %177, %176 ], [ %201, %198 ]
  %204 = add nuw nsw i32 %179, 1
  %205 = getelementptr inbounds %struct.TransData, ptr %178, i64 1
  %206 = icmp slt i32 %204, %203
  br i1 %206, label %176, label %207, !llvm.loop !113

207:                                              ; preds = %202, %172, %170, %170, %170
  %208 = getelementptr inbounds %struct.bArmature, ptr %86, i64 0, i32 8
  %209 = load i32, ptr %208, align 8, !tbaa !114
  %210 = and i32 %209, 256
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %346, label %212

212:                                              ; preds = %207
  %213 = load i16, ptr %91, align 4, !tbaa !83
  %214 = icmp eq i16 %213, 3
  br i1 %214, label %217, label %215

215:                                              ; preds = %212
  %216 = load ptr, ptr %9, align 8, !tbaa !77
  call void @transform_armature_mirror_update(ptr noundef %216) #19
  br label %346

217:                                              ; preds = %212
  call void @restoreBones(ptr noundef nonnull %0) #19
  br label %346

218:                                              ; preds = %12
  %219 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %220 = load i16, ptr %219, align 4, !tbaa !83
  %221 = icmp eq i16 %220, 3
  br i1 %221, label %224, label %222

222:                                              ; preds = %218
  tail call void @applyProject(ptr noundef nonnull %0) #19
  %223 = load ptr, ptr %9, align 8, !tbaa !77
  br label %224

224:                                              ; preds = %222, %218
  %225 = phi ptr [ %223, %222 ], [ %10, %218 ]
  %226 = getelementptr inbounds %struct.Object, ptr %225, i64 0, i32 19
  %227 = load ptr, ptr %226, align 8, !tbaa !81
  tail call void @DAG_id_tag_update(ptr noundef %227, i16 noundef signext 0) #19
  br label %346

228:                                              ; preds = %1
  %229 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %230 = load i32, ptr %229, align 4, !tbaa !94
  %231 = and i32 %230, 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %270, label %233

233:                                              ; preds = %228
  %234 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %235 = load ptr, ptr %234, align 8, !tbaa !115
  %236 = icmp eq ptr %235, null
  br i1 %236, label %270, label %237

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.Object, ptr %235, i64 0, i32 19
  %239 = load ptr, ptr %238, align 8, !tbaa !81
  %240 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 58
  %241 = load ptr, ptr %240, align 8, !tbaa !116
  %242 = icmp eq ptr %241, null
  br i1 %242, label %260, label %243

243:                                              ; preds = %237
  %244 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 53
  %245 = load ptr, ptr %244, align 8, !tbaa !117
  %246 = icmp eq ptr %245, null
  br i1 %246, label %260, label %247

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 20
  %249 = load ptr, ptr %248, align 8, !tbaa !118
  %250 = getelementptr inbounds %struct.ToolSettings, ptr %249, i64 0, i32 21
  %251 = load i16, ptr %250, align 8, !tbaa !119
  %252 = and i16 %251, 1
  %253 = icmp eq i16 %252, 0
  br i1 %253, label %260, label %254

254:                                              ; preds = %247
  tail call fastcc void @animrecord_check_state(ptr noundef nonnull %6, ptr noundef nonnull %235, ptr noundef nonnull %241) #18
  %255 = load ptr, ptr %244, align 8, !tbaa !117
  %256 = load ptr, ptr %5, align 8, !tbaa !55
  %257 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %258 = load ptr, ptr %257, align 8, !tbaa !126
  %259 = load i32, ptr %0, align 8, !tbaa !102
  tail call void @autokeyframe_pose_cb_func(ptr noundef %255, ptr noundef %256, ptr noundef %258, ptr noundef nonnull %235, i32 noundef %259, i16 noundef signext 0) #19
  br label %260

260:                                              ; preds = %254, %247, %243, %237
  %261 = getelementptr inbounds %struct.bArmature, ptr %239, i64 0, i32 8
  %262 = load i32, ptr %261, align 8, !tbaa !114
  %263 = and i32 %262, 64
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %260
  tail call void @DAG_id_tag_update(ptr noundef nonnull %235, i16 noundef signext 2) #19
  %266 = getelementptr inbounds %struct.Object, ptr %235, i64 0, i32 18
  %267 = load ptr, ptr %266, align 8, !tbaa !127
  tail call void @BIK_clear_data(ptr noundef %267) #19
  br label %346

268:                                              ; preds = %260
  %269 = load ptr, ptr %5, align 8, !tbaa !55
  tail call void @BKE_pose_where_is(ptr noundef %269, ptr noundef nonnull %235) #19
  br label %346

270:                                              ; preds = %233, %228
  %271 = icmp eq ptr %8, null
  br i1 %271, label %288, label %272

272:                                              ; preds = %270
  %273 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 7
  %274 = load ptr, ptr %273, align 8, !tbaa !128
  %275 = getelementptr inbounds %struct.Object, ptr %274, i64 0, i32 27
  %276 = load i32, ptr %275, align 8, !tbaa !130
  %277 = and i32 %276, 32
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %288, label %279

279:                                              ; preds = %272
  %280 = tail call ptr @PE_get_current(ptr noundef nonnull %6, ptr noundef nonnull %274) #19
  %281 = icmp eq ptr %280, null
  br i1 %281, label %288, label %282

282:                                              ; preds = %279
  %283 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %284 = load i16, ptr %283, align 4, !tbaa !83
  %285 = icmp eq i16 %284, 3
  br i1 %285, label %287, label %286

286:                                              ; preds = %282
  tail call void @applyProject(ptr noundef nonnull %0) #19
  br label %287

287:                                              ; preds = %286, %282
  tail call void @flushTransParticles(ptr noundef nonnull %0) #19
  br label %346

288:                                              ; preds = %279, %272, %270
  %289 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %290 = load i16, ptr %289, align 4, !tbaa !83
  %291 = icmp eq i16 %290, 3
  br i1 %291, label %293, label %292

292:                                              ; preds = %288
  tail call void @applyProject(ptr noundef nonnull %0) #19
  br label %293

293:                                              ; preds = %292, %288
  %294 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %295 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %296 = load i32, ptr %295, align 8, !tbaa !109
  %297 = icmp sgt i32 %296, 0
  br i1 %297, label %298, label %346

298:                                              ; preds = %293
  %299 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 58
  %300 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 53
  %301 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  br label %302

302:                                              ; preds = %298, %341
  %303 = phi i64 [ 0, %298 ], [ %342, %341 ]
  %304 = load ptr, ptr %294, align 8, !tbaa !97
  %305 = getelementptr inbounds %struct.TransData, ptr %304, i64 %303, i32 11
  %306 = load ptr, ptr %305, align 8, !tbaa !131
  %307 = getelementptr inbounds %struct.TransData, ptr %304, i64 %303, i32 16
  %308 = load i32, ptr %307, align 8, !tbaa !132
  %309 = and i32 %308, 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %346

311:                                              ; preds = %302
  %312 = and i32 %308, 2048
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %341

314:                                              ; preds = %311
  %315 = load ptr, ptr %299, align 8, !tbaa !116
  %316 = icmp eq ptr %315, null
  br i1 %316, label %336, label %317

317:                                              ; preds = %314
  %318 = load ptr, ptr %5, align 8, !tbaa !55
  %319 = icmp eq ptr %318, null
  br i1 %319, label %327, label %320

320:                                              ; preds = %317
  %321 = getelementptr inbounds %struct.Scene, ptr %318, i64 0, i32 20
  %322 = load ptr, ptr %321, align 8, !tbaa !118
  %323 = getelementptr inbounds %struct.ToolSettings, ptr %322, i64 0, i32 21
  %324 = load i16, ptr %323, align 8, !tbaa !119
  %325 = and i16 %324, 1
  %326 = icmp eq i16 %325, 0
  br i1 %326, label %336, label %331

327:                                              ; preds = %317
  %328 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !133
  %329 = and i16 %328, 1
  %330 = icmp eq i16 %329, 0
  br i1 %330, label %336, label %331

331:                                              ; preds = %327, %320
  tail call fastcc void @animrecord_check_state(ptr noundef %318, ptr noundef %306, ptr noundef nonnull %315) #18
  %332 = load ptr, ptr %300, align 8, !tbaa !117
  %333 = load ptr, ptr %5, align 8, !tbaa !55
  %334 = load ptr, ptr %301, align 8, !tbaa !126
  %335 = load i32, ptr %0, align 8, !tbaa !102
  tail call void @autokeyframe_ob_cb_func(ptr noundef %332, ptr noundef %333, ptr noundef %334, ptr noundef %306, i32 noundef %335) #19
  br label %336

336:                                              ; preds = %331, %327, %320, %314
  tail call void @DAG_id_tag_update(ptr noundef %306, i16 noundef signext 1) #19
  %337 = load i32, ptr %229, align 4, !tbaa !94
  %338 = and i32 %337, 8
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %341, label %340

340:                                              ; preds = %336
  tail call void @DAG_id_tag_update(ptr noundef %306, i16 noundef signext 2) #19
  br label %341

341:                                              ; preds = %311, %340, %336
  %342 = add nuw nsw i64 %303, 1
  %343 = load i32, ptr %295, align 8, !tbaa !109
  %344 = sext i32 %343 to i64
  %345 = icmp slt i64 %342, %344
  br i1 %345, label %302, label %346, !llvm.loop !137

346:                                              ; preds = %38, %34, %341, %302, %32, %33, %293, %265, %268, %207, %217, %215, %52, %61, %287, %80, %224
  ret void
}

; Function Attrs: optsize
declare void @flushTransPaintCurve(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @recalcData_image(ptr noundef %0) unnamed_addr #0 !PGOFuncName !138 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !52
  %4 = and i32 %3, 128
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call fastcc void @recalcData_mask_common(ptr noundef nonnull %0) #18
  br label %33

7:                                                ; preds = %1
  %8 = and i32 %3, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @flushTransPaintCurve(ptr noundef nonnull %0) #19
  br label %33

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %13 = load ptr, ptr %12, align 8, !tbaa !77
  %14 = icmp eq ptr %13, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 3
  %17 = load i16, ptr %16, align 8, !tbaa !78
  %18 = icmp eq i16 %17, 1
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %21 = load ptr, ptr %20, align 8, !tbaa !139
  %22 = getelementptr inbounds %struct.ScrArea, ptr %21, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !140
  tail call void @flushTransUVs(ptr noundef nonnull %0) #19
  %24 = getelementptr inbounds %struct.SpaceImage, ptr %23, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !142
  %26 = and i32 %25, 2048
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  tail call void @ED_uvedit_live_unwrap_re_solve() #19
  br label %29

29:                                               ; preds = %28, %19
  %30 = load ptr, ptr %12, align 8, !tbaa !77
  %31 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 19
  %32 = load ptr, ptr %31, align 8, !tbaa !81
  tail call void @DAG_id_tag_update(ptr noundef %32, i16 noundef signext 0) #19
  br label %33

33:                                               ; preds = %10, %29, %15, %11, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @recalcData_actedit(ptr noundef %0) unnamed_addr #0 !PGOFuncName !148 {
  %2 = alloca %struct.bAnimContext, align 8
  %3 = alloca %struct.ListBase, align 8
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %7 = load ptr, ptr %6, align 8, !tbaa !139
  %8 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %2, i64 0, i32 9
  store ptr %5, ptr %10, align 8, !tbaa !149
  %11 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.Base, ptr %12, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !128
  br label %17

17:                                               ; preds = %1, %14
  %18 = phi ptr [ %16, %14 ], [ null, %1 ]
  %19 = getelementptr inbounds %struct.bAnimContext, ptr %2, i64 0, i32 10
  store ptr %18, ptr %19, align 8, !tbaa !151
  %20 = getelementptr inbounds %struct.bAnimContext, ptr %2, i64 0, i32 5
  store ptr %7, ptr %20, align 8, !tbaa !152
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %22 = load ptr, ptr %21, align 8, !tbaa !153
  %23 = getelementptr inbounds %struct.bAnimContext, ptr %2, i64 0, i32 7
  store ptr %22, ptr %23, align 8, !tbaa !154
  %24 = getelementptr inbounds %struct.bAnimContext, ptr %2, i64 0, i32 6
  store ptr %9, ptr %24, align 8, !tbaa !155
  %25 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 8
  %26 = load i8, ptr %25, align 8, !tbaa !156
  %27 = zext i8 %26 to i16
  %28 = getelementptr inbounds %struct.bAnimContext, ptr %2, i64 0, i32 3
  store i16 %27, ptr %28, align 4, !tbaa !157
  %29 = icmp eq ptr %22, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 8
  %32 = load i16, ptr %31, align 2, !tbaa !158
  br label %33

33:                                               ; preds = %17, %30
  %34 = phi i16 [ %32, %30 ], [ 0, %17 ]
  %35 = getelementptr inbounds %struct.bAnimContext, ptr %2, i64 0, i32 4
  store i16 %34, ptr %35, align 2, !tbaa !161
  %36 = call zeroext i8 @ANIM_animdata_context_getdata(ptr noundef nonnull %2) #19
  %37 = getelementptr inbounds %struct.bAnimContext, ptr %2, i64 0, i32 1
  %38 = load i16, ptr %37, align 8
  switch i16 %38, label %40 [
    i16 9, label %39
    i16 3, label %39
  ]

39:                                               ; preds = %33, %33
  call void @flushTransIntFrameActionData(ptr noundef nonnull %0) #19
  br label %57

40:                                               ; preds = %33
  %41 = sext i16 %38 to i32
  %42 = load ptr, ptr %2, align 8, !tbaa !162
  %43 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 1025, ptr noundef %42, i32 noundef %41) #19
  %44 = getelementptr inbounds %struct.SpaceAction, ptr %9, i64 0, i32 11
  %45 = load i16, ptr %44, align 2, !tbaa !163
  %46 = and i16 %45, 1024
  %47 = icmp ne i16 %46, 0
  %48 = load ptr, ptr %3, align 8
  %49 = icmp eq ptr %48, null
  %50 = select i1 %47, i1 true, i1 %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %40, %51
  %52 = phi ptr [ %54, %51 ], [ %48, %40 ]
  %53 = load ptr, ptr %4, align 8, !tbaa !55
  call void @ANIM_list_elem_update(ptr noundef %53, ptr noundef nonnull %52) #19
  %54 = load ptr, ptr %52, align 8, !tbaa !98
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %51, !llvm.loop !166

56:                                               ; preds = %51, %40
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #19
  br label %57

57:                                               ; preds = %56, %39
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @recalcData_nla(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !167 {
  %2 = alloca %struct.PointerRNA, align 8
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 55
  %6 = load i16, ptr %5, align 4, !tbaa !168
  %7 = sitofp i16 %6 to double
  %8 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 65
  %9 = load float, ptr %8, align 4, !tbaa !169
  %10 = fpext float %9 to double
  %11 = fdiv double %7, %10
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !109
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %276

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %17 = load ptr, ptr %16, align 8, !tbaa !139
  %18 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !140
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %21 = load ptr, ptr %20, align 8, !tbaa !170
  %22 = getelementptr inbounds %struct.SpaceNla, ptr %19, i64 0, i32 7
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %24 = getelementptr inbounds %struct.SpaceNla, ptr %19, i64 0, i32 6
  br label %25

25:                                               ; preds = %15, %271
  %26 = phi ptr [ %21, %15 ], [ %273, %271 ]
  %27 = phi i32 [ 0, %15 ], [ %272, %271 ]
  %28 = getelementptr inbounds %struct.TransDataNla, ptr %26, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  %30 = getelementptr inbounds %struct.TransDataNla, ptr %26, i64 0, i32 7
  %31 = load i32, ptr %30, align 4, !tbaa !173
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %271, label %33

33:                                               ; preds = %25
  %34 = load i16, ptr %22, align 2, !tbaa !174
  %35 = and i16 %34, 64
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load ptr, ptr %3, align 8, !tbaa !55
  %39 = load ptr, ptr %26, align 8, !tbaa !176
  call void @ANIM_id_update(ptr noundef %38, ptr noundef %39) #19
  br label %40

40:                                               ; preds = %37, %33
  %41 = load i16, ptr %23, align 4, !tbaa !83
  %42 = icmp eq i16 %41, 3
  br i1 %42, label %58, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.NlaStrip, ptr %29, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !177
  %46 = icmp eq ptr %45, null
  %47 = getelementptr inbounds %struct.NlaStrip, ptr %45, i64 0, i32 21
  %48 = getelementptr inbounds %struct.TransDataNla, ptr %26, i64 0, i32 4
  %49 = getelementptr inbounds %struct.NlaStrip, ptr %45, i64 0, i32 11
  %50 = load ptr, ptr %29, align 8, !tbaa !179
  %51 = icmp eq ptr %50, null
  %52 = getelementptr inbounds %struct.NlaStrip, ptr %50, i64 0, i32 21
  %53 = getelementptr inbounds %struct.TransDataNla, ptr %26, i64 0, i32 5
  %54 = getelementptr inbounds %struct.NlaStrip, ptr %50, i64 0, i32 10
  %55 = or i1 %46, %51
  %56 = getelementptr inbounds %struct.NlaStrip, ptr %29, i64 0, i32 10
  %57 = getelementptr inbounds %struct.NlaStrip, ptr %29, i64 0, i32 11
  br label %93

58:                                               ; preds = %40
  %59 = getelementptr inbounds %struct.TransDataNla, ptr %26, i64 0, i32 4
  %60 = load float, ptr %59, align 8, !tbaa !48
  %61 = getelementptr inbounds %struct.NlaStrip, ptr %29, i64 0, i32 10
  store float %60, ptr %61, align 8, !tbaa !180
  %62 = getelementptr inbounds %struct.NlaStrip, ptr %29, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !177
  %64 = icmp eq ptr %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.NlaStrip, ptr %63, i64 0, i32 21
  %67 = load i16, ptr %66, align 2, !tbaa !181
  %68 = icmp eq i16 %67, 1
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.NlaStrip, ptr %63, i64 0, i32 11
  store float %60, ptr %70, align 4, !tbaa !182
  br label %71

71:                                               ; preds = %69, %65, %58
  %72 = getelementptr inbounds %struct.TransDataNla, ptr %26, i64 0, i32 5
  %73 = load float, ptr %72, align 4, !tbaa !48
  %74 = getelementptr inbounds %struct.NlaStrip, ptr %29, i64 0, i32 11
  store float %73, ptr %74, align 4, !tbaa !182
  %75 = load ptr, ptr %29, align 8, !tbaa !179
  %76 = icmp eq ptr %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.NlaStrip, ptr %75, i64 0, i32 21
  %79 = load i16, ptr %78, align 2, !tbaa !181
  %80 = icmp eq i16 %79, 1
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.NlaStrip, ptr %75, i64 0, i32 10
  store float %73, ptr %82, align 8, !tbaa !180
  br label %83

83:                                               ; preds = %81, %77, %71
  call void @BKE_nlameta_flush_transforms(ptr noundef nonnull %29) #19
  %84 = getelementptr inbounds %struct.TransDataNla, ptr %26, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !183
  %86 = getelementptr inbounds %struct.TransDataNla, ptr %26, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !184
  %88 = icmp eq ptr %85, %87
  br i1 %88, label %271, label %89

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.NlaTrack, ptr %87, i64 0, i32 2
  call void @BLI_remlink(ptr noundef nonnull %90, ptr noundef nonnull %29) #19
  %91 = load ptr, ptr %84, align 8, !tbaa !183
  %92 = getelementptr inbounds %struct.NlaTrack, ptr %91, i64 0, i32 2
  call void @BLI_addtail(ptr noundef nonnull %92, ptr noundef nonnull %29) #19
  br label %271

93:                                               ; preds = %43, %141
  %94 = phi i16 [ 0, %43 ], [ %143, %141 ]
  br i1 %46, label %102, label %95

95:                                               ; preds = %93
  %96 = load i16, ptr %47, align 2, !tbaa !181
  %97 = icmp eq i16 %96, 1
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = load float, ptr %48, align 8, !tbaa !48
  %100 = load float, ptr %49, align 4, !tbaa !182
  %101 = fcmp olt float %99, %100
  br label %102

102:                                              ; preds = %98, %95, %93
  %103 = phi i1 [ false, %95 ], [ false, %93 ], [ %101, %98 ]
  br i1 %51, label %116, label %104

104:                                              ; preds = %102
  %105 = load i16, ptr %52, align 2, !tbaa !181
  %106 = icmp eq i16 %105, 1
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = load float, ptr %53, align 4, !tbaa !48
  %109 = load float, ptr %54, align 8, !tbaa !180
  %110 = fcmp ogt float %108, %109
  br label %111

111:                                              ; preds = %107, %104
  %112 = phi i1 [ false, %104 ], [ %110, %107 ]
  %113 = select i1 %103, i1 %112, i1 false
  %114 = icmp eq i16 %94, 4
  %115 = or i1 %114, %113
  br i1 %115, label %118, label %125

116:                                              ; preds = %102
  %117 = icmp eq i16 %94, 4
  br i1 %117, label %122, label %133

118:                                              ; preds = %111
  br i1 %55, label %122, label %119

119:                                              ; preds = %118
  %120 = load float, ptr %49, align 4, !tbaa !182
  store float %120, ptr %48, align 8, !tbaa !48
  %121 = load float, ptr %54, align 8, !tbaa !180
  br label %141

122:                                              ; preds = %116, %118
  %123 = load float, ptr %56, align 8, !tbaa !180
  store float %123, ptr %48, align 8, !tbaa !48
  %124 = load float, ptr %57, align 4, !tbaa !182
  br label %141

125:                                              ; preds = %111
  br i1 %112, label %126, label %133

126:                                              ; preds = %125
  %127 = load float, ptr %53, align 4, !tbaa !48
  %128 = load float, ptr %54, align 8, !tbaa !180
  %129 = fsub float %127, %128
  %130 = load float, ptr %48, align 8, !tbaa !48
  %131 = fsub float %130, %129
  store float %131, ptr %48, align 8, !tbaa !48
  %132 = fsub float %127, %129
  br label %141

133:                                              ; preds = %116, %125
  br i1 %103, label %134, label %145

134:                                              ; preds = %133
  %135 = load float, ptr %49, align 4, !tbaa !182
  %136 = load float, ptr %48, align 8, !tbaa !48
  %137 = fsub float %135, %136
  %138 = fadd float %136, %137
  store float %138, ptr %48, align 8, !tbaa !48
  %139 = load float, ptr %53, align 4, !tbaa !48
  %140 = fadd float %137, %139
  br label %141

141:                                              ; preds = %122, %119, %134, %126
  %142 = phi float [ %124, %122 ], [ %121, %119 ], [ %140, %134 ], [ %132, %126 ]
  store float %142, ptr %53, align 4, !tbaa !48
  %143 = add nuw nsw i16 %94, 1
  %144 = icmp eq i16 %143, 5
  br i1 %144, label %145, label %93, !llvm.loop !185

145:                                              ; preds = %141, %133
  %146 = load i16, ptr %24, align 8, !tbaa !186
  switch i16 %146, label %178 [
    i16 2, label %147
    i16 1, label %147
    i16 4, label %154
    i16 5, label %154
    i16 3, label %165
  ]

147:                                              ; preds = %145, %145
  %148 = load float, ptr %48, align 8, !tbaa !48
  %149 = fadd float %148, 5.000000e-01
  %150 = call float @llvm.floor.f32(float %149)
  store float %150, ptr %48, align 8, !tbaa !48
  %151 = load float, ptr %53, align 4, !tbaa !48
  %152 = fadd float %151, 5.000000e-01
  %153 = call float @llvm.floor.f32(float %152)
  br label %176

154:                                              ; preds = %145, %145
  %155 = load float, ptr %48, align 8, !tbaa !48
  %156 = fpext float %155 to double
  %157 = fdiv double %156, %11
  %158 = fadd double %157, 5.000000e-01
  %159 = call double @llvm.floor.f64(double %158)
  %160 = fmul double %11, %159
  %161 = fptrunc double %160 to float
  %162 = fsub float %161, %155
  store float %161, ptr %48, align 8, !tbaa !48
  %163 = load float, ptr %53, align 4, !tbaa !48
  %164 = fadd float %163, %162
  br label %176

165:                                              ; preds = %145
  %166 = load ptr, ptr %3, align 8, !tbaa !55
  %167 = getelementptr inbounds %struct.Scene, ptr %166, i64 0, i32 24
  %168 = load float, ptr %48, align 8, !tbaa !48
  %169 = call i32 @ED_markers_find_nearest_marker_time(ptr noundef nonnull %167, float noundef %168) #19
  %170 = sitofp i32 %169 to float
  store float %170, ptr %48, align 8, !tbaa !48
  %171 = load ptr, ptr %3, align 8, !tbaa !55
  %172 = getelementptr inbounds %struct.Scene, ptr %171, i64 0, i32 24
  %173 = load float, ptr %53, align 4, !tbaa !48
  %174 = call i32 @ED_markers_find_nearest_marker_time(ptr noundef nonnull %172, float noundef %173) #19
  %175 = sitofp i32 %174 to float
  br label %176

176:                                              ; preds = %147, %154, %165
  %177 = phi float [ %175, %165 ], [ %164, %154 ], [ %153, %147 ]
  store float %177, ptr %53, align 4, !tbaa !48
  br label %178

178:                                              ; preds = %176, %145
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_NlaStrip, ptr noundef nonnull %29, ptr noundef nonnull %2) #19
  %179 = load float, ptr %48, align 8, !tbaa !48
  call void @RNA_float_set(ptr noundef nonnull %2, ptr noundef nonnull @.str.16, float noundef %179) #19
  %180 = load float, ptr %53, align 4, !tbaa !48
  call void @RNA_float_set(ptr noundef nonnull %2, ptr noundef nonnull @.str.17, float noundef %180) #19
  %181 = load float, ptr %48, align 8, !tbaa !48
  call void @RNA_float_set(ptr noundef nonnull %2, ptr noundef nonnull @.str.16, float noundef %181) #19
  %182 = load float, ptr %53, align 4, !tbaa !48
  call void @RNA_float_set(ptr noundef nonnull %2, ptr noundef nonnull @.str.17, float noundef %182) #19
  call void @BKE_nlameta_flush_transforms(ptr noundef nonnull %29) #19
  %183 = getelementptr inbounds %struct.TransDataNla, ptr %26, i64 0, i32 4, i64 1
  %184 = load float, ptr %183, align 4, !tbaa !48
  %185 = fptosi float %184 to i32
  %186 = sitofp i32 %185 to float
  %187 = load i16, ptr %22, align 2, !tbaa !174
  %188 = and i16 %187, 32
  %189 = icmp eq i16 %188, 0
  %190 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !187
  %191 = sitofp i16 %190 to float
  %192 = select i1 %189, float 0x3FF3333340000000, float 0x3FE99999A0000000
  %193 = fmul float %192, %191
  %194 = call float @llvm.fmuladd.f32(float %191, float 0x3FB99999A0000000, float %193)
  %195 = fdiv float %186, %194
  %196 = getelementptr inbounds %struct.TransDataNla, ptr %26, i64 0, i32 6
  %197 = load i32, ptr %196, align 8, !tbaa !188
  %198 = sitofp i32 %197 to float
  %199 = fsub float %195, %198
  %200 = fptosi float %199 to i32
  %201 = getelementptr inbounds %struct.TransDataNla, ptr %26, i64 0, i32 5, i64 1
  %202 = load float, ptr %201, align 4, !tbaa !48
  %203 = fptosi float %202 to i32
  %204 = sitofp i32 %203 to float
  %205 = load i16, ptr %22, align 2, !tbaa !174
  %206 = and i16 %205, 32
  %207 = icmp eq i16 %206, 0
  %208 = select i1 %207, float 0x3FF3333340000000, float 0x3FE99999A0000000
  %209 = fmul float %208, %191
  %210 = call float @llvm.fmuladd.f32(float %191, float 0x3FB99999A0000000, float %209)
  %211 = fdiv float %204, %210
  %212 = fsub float %211, %198
  %213 = fptosi float %212 to i32
  %214 = icmp ne i32 %200, 0
  %215 = icmp ne i32 %213, 0
  %216 = select i1 %214, i1 true, i1 %215
  br i1 %216, label %217, label %271

217:                                              ; preds = %178
  %218 = select i1 %215, i32 %213, i32 %200
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %220, label %243

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.TransDataNla, ptr %26, i64 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !184
  %223 = load ptr, ptr %222, align 8, !tbaa !189
  %224 = icmp eq ptr %223, null
  br i1 %224, label %271, label %225

225:                                              ; preds = %220, %232
  %226 = phi ptr [ %239, %232 ], [ %223, %220 ]
  %227 = phi i32 [ %238, %232 ], [ 0, %220 ]
  %228 = load float, ptr %56, align 8, !tbaa !180
  %229 = load float, ptr %57, align 4, !tbaa !182
  %230 = call zeroext i8 @BKE_nlatrack_has_space(ptr noundef nonnull %226, float noundef %228, float noundef %229) #19
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %271, label %232

232:                                              ; preds = %225
  %233 = load ptr, ptr %221, align 8, !tbaa !184
  %234 = getelementptr inbounds %struct.NlaTrack, ptr %233, i64 0, i32 2
  call void @BLI_remlink(ptr noundef nonnull %234, ptr noundef nonnull %29) #19
  %235 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef nonnull %226, ptr noundef nonnull %29) #19
  store ptr %226, ptr %221, align 8, !tbaa !184
  %236 = load i32, ptr %196, align 8, !tbaa !188
  %237 = add nsw i32 %236, 1
  store i32 %237, ptr %196, align 8, !tbaa !188
  %238 = add nuw nsw i32 %227, 1
  %239 = load ptr, ptr %226, align 8, !tbaa !189
  %240 = icmp ne ptr %239, null
  %241 = icmp slt i32 %238, %218
  %242 = select i1 %240, i1 %241, i1 false
  br i1 %242, label %225, label %271, !llvm.loop !191

243:                                              ; preds = %217
  %244 = sub nsw i32 0, %218
  %245 = getelementptr inbounds %struct.TransDataNla, ptr %26, i64 0, i32 2
  %246 = load ptr, ptr %245, align 8, !tbaa !184
  %247 = getelementptr inbounds %struct.NlaTrack, ptr %246, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !192
  %249 = icmp ne ptr %248, null
  %250 = icmp ne i32 %218, 0
  %251 = and i1 %249, %250
  br i1 %251, label %252, label %271

252:                                              ; preds = %243, %259
  %253 = phi ptr [ %267, %259 ], [ %248, %243 ]
  %254 = phi i32 [ %265, %259 ], [ 0, %243 ]
  %255 = load float, ptr %56, align 8, !tbaa !180
  %256 = load float, ptr %57, align 4, !tbaa !182
  %257 = call zeroext i8 @BKE_nlatrack_has_space(ptr noundef nonnull %253, float noundef %255, float noundef %256) #19
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %271, label %259

259:                                              ; preds = %252
  %260 = load ptr, ptr %245, align 8, !tbaa !184
  %261 = getelementptr inbounds %struct.NlaTrack, ptr %260, i64 0, i32 2
  call void @BLI_remlink(ptr noundef nonnull %261, ptr noundef nonnull %29) #19
  %262 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef nonnull %253, ptr noundef nonnull %29) #19
  store ptr %253, ptr %245, align 8, !tbaa !184
  %263 = load i32, ptr %196, align 8, !tbaa !188
  %264 = add nsw i32 %263, -1
  store i32 %264, ptr %196, align 8, !tbaa !188
  %265 = add nuw nsw i32 %254, 1
  %266 = getelementptr inbounds %struct.NlaTrack, ptr %253, i64 0, i32 1
  %267 = load ptr, ptr %266, align 8, !tbaa !192
  %268 = icmp ne ptr %267, null
  %269 = icmp slt i32 %265, %244
  %270 = select i1 %268, i1 %269, i1 false
  br i1 %270, label %252, label %271, !llvm.loop !193

271:                                              ; preds = %252, %259, %225, %232, %243, %220, %178, %83, %89, %25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  %272 = add nuw nsw i32 %27, 1
  %273 = getelementptr inbounds %struct.TransDataNla, ptr %26, i64 1
  %274 = load i32, ptr %12, align 8, !tbaa !109
  %275 = icmp slt i32 %272, %274
  br i1 %275, label %25, label %276, !llvm.loop !194

276:                                              ; preds = %271, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @recalcData_sequencer(ptr noundef %0) unnamed_addr #0 !PGOFuncName !195 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !109
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %26

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  br label %9

9:                                                ; preds = %5, %21
  %10 = phi i32 [ %3, %5 ], [ %22, %21 ]
  %11 = phi ptr [ %7, %5 ], [ %24, %21 ]
  %12 = phi i32 [ 0, %5 ], [ %23, %21 ]
  %13 = phi ptr [ null, %5 ], [ %16, %21 ]
  %14 = getelementptr inbounds %struct.TransData, ptr %11, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !110
  %16 = load ptr, ptr %15, align 8, !tbaa !196
  %17 = icmp eq ptr %16, %13
  br i1 %17, label %21, label %18

18:                                               ; preds = %9
  %19 = load ptr, ptr %8, align 8, !tbaa !55
  tail call void @BKE_sequence_invalidate_dependent(ptr noundef %19, ptr noundef %16) #19
  %20 = load i32, ptr %2, align 8, !tbaa !109
  br label %21

21:                                               ; preds = %18, %9
  %22 = phi i32 [ %20, %18 ], [ %10, %9 ]
  %23 = add nuw nsw i32 %12, 1
  %24 = getelementptr inbounds %struct.TransData, ptr %11, i64 1
  %25 = icmp slt i32 %23, %22
  br i1 %25, label %9, label %26, !llvm.loop !198

26:                                               ; preds = %21, %1
  tail call void @BKE_sequencer_preprocessed_cache_cleanup() #19
  tail call void @flushTransSeq(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @recalcData_graphedit(ptr noundef %0) unnamed_addr #0 !PGOFuncName !199 {
  %2 = alloca %struct.ListBase, align 8
  %3 = alloca %struct.bAnimContext, align 8
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %5 = load ptr, ptr %4, align 8, !tbaa !139
  %6 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 9
  store ptr %9, ptr %10, align 8, !tbaa !149
  %11 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.Base, ptr %12, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !128
  br label %17

17:                                               ; preds = %1, %14
  %18 = phi ptr [ %16, %14 ], [ null, %1 ]
  %19 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 10
  store ptr %18, ptr %19, align 8, !tbaa !151
  %20 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 5
  store ptr %5, ptr %20, align 8, !tbaa !152
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %22 = load ptr, ptr %21, align 8, !tbaa !153
  %23 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 7
  store ptr %22, ptr %23, align 8, !tbaa !154
  %24 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 6
  store ptr %7, ptr %24, align 8, !tbaa !155
  %25 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 8
  %26 = load i8, ptr %25, align 8, !tbaa !156
  %27 = zext i8 %26 to i16
  %28 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 3
  store i16 %27, ptr %28, align 4, !tbaa !157
  %29 = icmp eq ptr %22, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 8
  %32 = load i16, ptr %31, align 2, !tbaa !158
  br label %33

33:                                               ; preds = %17, %30
  %34 = phi i16 [ %32, %30 ], [ 0, %17 ]
  %35 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 4
  store i16 %34, ptr %35, align 2, !tbaa !161
  %36 = call zeroext i8 @ANIM_animdata_context_getdata(ptr noundef nonnull %3) #19
  call void @flushTransGraphData(ptr noundef nonnull %0) #19
  %37 = load ptr, ptr %3, align 8, !tbaa !162
  %38 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %39 = load i16, ptr %38, align 8, !tbaa !200
  %40 = sext i16 %39 to i32
  %41 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 261, ptr noundef %37, i32 noundef %40) #19
  %42 = load ptr, ptr %2, align 8, !tbaa !98
  %43 = icmp eq ptr %42, null
  br i1 %43, label %73, label %44

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.SpaceIpo, ptr %7, i64 0, i32 11
  br label %46

46:                                               ; preds = %44, %66
  %47 = phi ptr [ %42, %44 ], [ %68, %66 ]
  %48 = phi i32 [ 0, %44 ], [ %67, %66 ]
  %49 = getelementptr inbounds %struct.bAnimListElem, ptr %47, i64 0, i32 8
  %50 = load ptr, ptr %49, align 8, !tbaa !201
  %51 = call fastcc zeroext i8 @fcu_test_selected(ptr noundef %50) #18, !range !203
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %46
  %54 = call signext i16 @test_time_fcurve(ptr noundef %50) #19
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = add nsw i32 %48, 1
  br label %59

58:                                               ; preds = %53
  call void @calchandles_fcurve(ptr noundef %50) #19
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ %48, %58 ]
  %61 = load i32, ptr %45, align 4, !tbaa !204
  %62 = and i32 %61, 2048
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load ptr, ptr %8, align 8, !tbaa !55
  call void @ANIM_list_elem_update(ptr noundef %65, ptr noundef nonnull %47) #19
  br label %66

66:                                               ; preds = %59, %64, %46
  %67 = phi i32 [ %48, %46 ], [ %60, %64 ], [ %60, %59 ]
  %68 = load ptr, ptr %47, align 8, !tbaa !98
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %46, !llvm.loop !206

70:                                               ; preds = %66
  %71 = icmp eq i32 %67, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %70
  call void @remake_graph_transdata(ptr noundef %0, ptr noundef nonnull %2) #19
  br label %73

73:                                               ; preds = %33, %72, %70
  call void @ANIM_animdata_freelist(ptr noundef nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  ret void
}

; Function Attrs: optsize
declare void @flushTransNodes(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @recalcData_spaceclip(ptr noundef %0) unnamed_addr #0 !PGOFuncName !207 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %3 = load ptr, ptr %2, align 8, !tbaa !139
  %4 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !140
  %6 = tail call zeroext i8 @ED_space_clip_check_show_trackedit(ptr noundef %5) #19
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %85, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @ED_space_clip_get_clip(ptr noundef %5) #19
  %10 = getelementptr inbounds %struct.MovieClip, ptr %9, i64 0, i32 11
  %11 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %10) #19
  %12 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %5) #19
  tail call void @flushTransTracking(ptr noundef nonnull %0) #19
  %13 = load ptr, ptr %11, align 8, !tbaa !98
  %14 = icmp eq ptr %13, null
  br i1 %14, label %84, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 12
  br label %17

17:                                               ; preds = %15, %81
  %18 = phi ptr [ %13, %15 ], [ %82, %81 ]
  %19 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 13
  %20 = load i32, ptr %19, align 8, !tbaa !208
  %21 = and i32 %20, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %81

23:                                               ; preds = %17
  %24 = and i32 %20, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = load i32, ptr %16, align 8, !tbaa !210
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 14
  %32 = load i32, ptr %31, align 4, !tbaa !215
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30, %26
  %36 = and i32 %27, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %81, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 15
  %40 = load i32, ptr %39, align 8, !tbaa !216
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  %43 = and i32 %20, 64
  %44 = icmp eq i32 %43, 0
  %45 = and i1 %44, %42
  br i1 %45, label %49, label %81

46:                                               ; preds = %30, %23
  %47 = and i32 %20, 64
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %81

49:                                               ; preds = %38, %46
  %50 = tail call ptr @BKE_tracking_marker_get(ptr noundef nonnull %18, i32 noundef %12) #19
  %51 = load i32, ptr %0, align 8, !tbaa !102
  switch i32 %51, label %81 [
    i32 1, label %52
    i32 3, label %63
    i32 2, label %74
  ]

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 14
  %54 = load i32, ptr %53, align 4, !tbaa !215
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  tail call void @BKE_tracking_marker_clamp(ptr noundef %50, i32 noundef 2) #19
  br label %58

58:                                               ; preds = %57, %52
  %59 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 15
  %60 = load i32, ptr %59, align 8, !tbaa !216
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %81, label %79

63:                                               ; preds = %49
  %64 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 14
  %65 = load i32, ptr %64, align 4, !tbaa !215
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  tail call void @BKE_tracking_marker_clamp(ptr noundef %50, i32 noundef 1) #19
  br label %69

69:                                               ; preds = %68, %63
  %70 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 15
  %71 = load i32, ptr %70, align 8, !tbaa !216
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %81, label %79

74:                                               ; preds = %49
  %75 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 14
  %76 = load i32, ptr %75, align 4, !tbaa !215
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %74, %69, %58
  %80 = phi i32 [ 4, %58 ], [ 3, %69 ], [ 2, %74 ]
  tail call void @BKE_tracking_marker_clamp(ptr noundef %50, i32 noundef %80) #19
  br label %81

81:                                               ; preds = %79, %58, %74, %69, %49, %46, %38, %35, %17
  %82 = load ptr, ptr %18, align 8, !tbaa !98
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %17, !llvm.loop !217

84:                                               ; preds = %81, %8
  tail call void @DAG_id_tag_update(ptr noundef %9, i16 noundef signext 0) #19
  br label %91

85:                                               ; preds = %1
  %86 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %87 = load i32, ptr %86, align 8, !tbaa !52
  %88 = and i32 %87, 128
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  tail call fastcc void @recalcData_mask_common(ptr noundef nonnull %0) #18
  br label %91

91:                                               ; preds = %85, %90, %84
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @drawLine(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, i16 noundef signext %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x i8], align 1
  %10 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %10) #17
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %12 = load i8, ptr %11, align 8, !tbaa !53
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %14, label %26

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %16 = load ptr, ptr %15, align 8, !tbaa !126
  tail call void @glPushMatrix() #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef %2) #18
  %17 = getelementptr inbounds %struct.View3D, ptr %16, i64 0, i32 33
  %18 = load float, ptr %17, align 8, !tbaa !218
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %18) #18
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %8) #18
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull %8) #18
  %19 = and i16 %4, 1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds [3 x i8], ptr %9, i64 0, i64 2
  store i8 -36, ptr %22, align 1, !tbaa !220
  %23 = getelementptr inbounds [3 x i8], ptr %9, i64 0, i64 1
  store i8 -36, ptr %23, align 1, !tbaa !220
  store i8 -36, ptr %9, align 1, !tbaa !220
  br label %25

24:                                               ; preds = %14
  call void @UI_GetThemeColor3ubv(i32 noundef 24, ptr noundef nonnull %9) #19
  br label %25

25:                                               ; preds = %24, %21
  call void @UI_make_axis_color(ptr noundef nonnull %9, ptr noundef nonnull %10, i8 noundef zeroext %3) #19
  call void @glColor3ubv(ptr noundef nonnull %10) #19
  call void @setlinestyle(i32 noundef 0) #19
  call void @glBegin(i32 noundef 3) #19
  call void @glVertex3fv(ptr noundef nonnull %6) #19
  call void @glVertex3fv(ptr noundef nonnull %7) #19
  call void @glEnd() #19
  call void @glPopMatrix() #19
  br label %26

26:                                               ; preds = %25, %5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  ret void
}

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #2 !PGOFuncName !221 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !48
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !48
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !48
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !222 {
  %4 = load float, ptr %1, align 4, !tbaa !48
  %5 = load float, ptr %2, align 4, !tbaa !48
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !48
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !48
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !48
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !48
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !48
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !48
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @UI_make_axis_color(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glColor3ubv(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @setlinestyle(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glVertex3fv(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #3

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @resetTransModal(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !102
  switch i32 %2, label %5 [
    i32 28, label %3
    i32 29, label %4
  ]

3:                                                ; preds = %1
  tail call void @freeEdgeSlideVerts(ptr noundef nonnull %0) #19
  br label %5

4:                                                ; preds = %1
  tail call void @freeVertSlideVerts(ptr noundef nonnull %0) #19
  br label %5

5:                                                ; preds = %1, %4, %3
  ret void
}

; Function Attrs: optsize
declare void @freeEdgeSlideVerts(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @freeVertSlideVerts(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @resetTransRestrictions(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !94
  %4 = and i32 %3, -1793
  store i32 %4, ptr %2, align 4, !tbaa !94
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @initTransInfo(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef readonly %3) local_unnamed_addr #0 {
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %6 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #19
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #19
  %9 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #19
  %10 = tail call ptr @CTX_data_active_object(ptr noundef %0) #19
  %11 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  store ptr %5, ptr %11, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  store ptr %8, ptr %12, align 8, !tbaa !139
  %13 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  store ptr %7, ptr %13, align 8, !tbaa !153
  %14 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  store ptr %9, ptr %14, align 8, !tbaa !77
  %15 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 57
  store ptr %6, ptr %15, align 8, !tbaa !223
  %16 = icmp eq ptr %2, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !224
  br label %20

20:                                               ; preds = %4, %17
  %21 = phi ptr [ %19, %17 ], [ null, %4 ]
  %22 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 60
  store ptr %21, ptr %22, align 8, !tbaa !226
  %23 = icmp eq ptr %9, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 64
  %26 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 47
  tail call void @copy_m3_m4(ptr noundef nonnull %25, ptr noundef nonnull %26) #19
  tail call void @normalize_m3(ptr noundef nonnull %25) #19
  br label %27

27:                                               ; preds = %24, %20
  %28 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  %29 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 34
  store i8 0, ptr %29, align 1, !tbaa !227
  %30 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  store i32 0, ptr %30, align 4, !tbaa !94
  %31 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  store i32 1, ptr %31, align 8, !tbaa !228
  %32 = icmp eq ptr %3, null
  %33 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22
  br i1 %32, label %42, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 6
  tail call fastcc void @copy_v2_v2_int(ptr noundef nonnull %33, ptr noundef nonnull %35) #18
  %36 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %37 = load i16, ptr %36, align 8, !tbaa !229
  %38 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 23
  store i16 %37, ptr %38, align 8, !tbaa !231
  %39 = load i32, ptr %33, align 8, !tbaa !232
  %40 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22, i64 1
  %41 = load i32, ptr %40, align 4, !tbaa !232
  br label %44

42:                                               ; preds = %27
  store i32 0, ptr %33, align 8, !tbaa !232
  %43 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22, i64 1
  store i32 0, ptr %43, align 4, !tbaa !232
  br label %44

44:                                               ; preds = %42, %34
  %45 = phi i32 [ 0, %42 ], [ %41, %34 ]
  %46 = phi i32 [ 0, %42 ], [ %39, %34 ]
  %47 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 13, i32 6
  store i32 %46, ptr %47, align 4, !tbaa !232
  %48 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 13, i32 6, i64 1
  store i32 %45, ptr %48, align 4, !tbaa !232
  %49 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 61
  store i32 %46, ptr %49, align 8, !tbaa !232
  %50 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 61, i64 1
  store i32 %45, ptr %50, align 4, !tbaa !232
  %51 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  %52 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 5
  store float 0.000000e+00, ptr %52, align 4, !tbaa !233
  %53 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %51, i8 0, i64 20, i1 false)
  tail call fastcc void @zero_v3(ptr noundef nonnull %53) #18
  %54 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 20
  tail call fastcc void @zero_v3(ptr noundef nonnull %54) #18
  %55 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 36
  tail call void @unit_m3(ptr noundef nonnull %55) #19
  br i1 %32, label %59, label %56

56:                                               ; preds = %44
  %57 = load i32, ptr %30, align 4, !tbaa !94
  %58 = or i32 %57, 2097152
  store i32 %58, ptr %30, align 4, !tbaa !94
  br label %59

59:                                               ; preds = %56, %44
  %60 = load i32, ptr %1, align 8, !tbaa !102
  switch i32 %60, label %65 [
    i32 12, label %61
    i32 26, label %61
  ]

61:                                               ; preds = %59, %59
  %62 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %63 = load i32, ptr %62, align 8, !tbaa !52
  %64 = or i32 %63, 2
  store i32 %64, ptr %62, align 8, !tbaa !52
  br label %65

65:                                               ; preds = %59, %61
  %66 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 51
  store i8 0, ptr %66, align 4, !tbaa !234
  br i1 %16, label %81, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 7
  %69 = load ptr, ptr %68, align 8, !tbaa !235
  %70 = tail call ptr @RNA_struct_find_property(ptr noundef %69, ptr noundef nonnull @.str) #19
  %71 = icmp eq ptr %70, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %67
  %73 = load ptr, ptr %68, align 8, !tbaa !235
  %74 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %73, ptr noundef nonnull %70) #19
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %68, align 8, !tbaa !235
  %78 = tail call i32 @RNA_property_boolean_get(ptr noundef %77, ptr noundef nonnull %70) #19
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  store i8 1, ptr %66, align 4, !tbaa !234
  br label %81

81:                                               ; preds = %76, %80, %72, %67, %65
  %82 = icmp eq ptr %8, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %81
  %84 = icmp eq ptr %7, null
  %85 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 8
  %86 = load i8, ptr %85, align 8, !tbaa !156
  %87 = icmp eq i8 %86, 1
  %88 = select i1 %84, i1 %87, i1 false
  br i1 %88, label %89, label %92

89:                                               ; preds = %83, %81
  %90 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  store i8 0, ptr %90, align 8, !tbaa !53
  %91 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  br label %286

92:                                               ; preds = %83
  %93 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  store i8 %86, ptr %93, align 8, !tbaa !53
  %94 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  switch i8 %86, label %286 [
    i8 1, label %95
    i8 6, label %218
    i8 16, label %251
    i8 2, label %255
    i8 20, label %264
  ]

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 19
  %97 = load ptr, ptr %96, align 8, !tbaa !140
  %98 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %99 = tail call ptr @ED_screen_animation_playing(ptr noundef %98) #19
  %100 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 52
  store ptr %97, ptr %100, align 8, !tbaa !126
  %101 = icmp eq ptr %99, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.bScreen, ptr %99, i64 0, i32 21
  %104 = load ptr, ptr %103, align 8, !tbaa !236
  br label %105

105:                                              ; preds = %95, %102
  %106 = phi ptr [ %104, %102 ], [ null, %95 ]
  %107 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 58
  store ptr %106, ptr %107, align 8, !tbaa !116
  %108 = load i32, ptr %30, align 4, !tbaa !94
  %109 = and i32 %108, 2097152
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.View3D, ptr %97, i64 0, i32 40
  %113 = load i8, ptr %112, align 1, !tbaa !238
  %114 = zext i8 %113 to i16
  %115 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 44
  store i16 %114, ptr %115, align 4, !tbaa !239
  store i8 0, ptr %112, align 1, !tbaa !238
  br label %116

116:                                              ; preds = %111, %105
  %117 = getelementptr inbounds %struct.View3D, ptr %97, i64 0, i32 28
  %118 = load i16, ptr %117, align 8, !tbaa !240
  %119 = and i16 %118, 1024
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %116
  %122 = or i32 %108, 16384
  store i32 %122, ptr %30, align 4, !tbaa !94
  br label %123

123:                                              ; preds = %121, %116
  %124 = getelementptr inbounds %struct.View3D, ptr %97, i64 0, i32 27
  %125 = load i16, ptr %124, align 2, !tbaa !241
  %126 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 32
  %127 = load i32, ptr %1, align 8, !tbaa !102
  %128 = icmp eq i32 %127, 7
  %129 = select i1 %128, i16 1, i16 %125
  store i16 %129, ptr %126, align 2
  br i1 %16, label %150, label %130

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 7
  %132 = load ptr, ptr %131, align 8, !tbaa !235
  %133 = tail call ptr @RNA_struct_find_property(ptr noundef %132, ptr noundef nonnull @.str.1) #19
  %134 = icmp eq ptr %133, null
  br i1 %134, label %150, label %135

135:                                              ; preds = %130
  %136 = load ptr, ptr %131, align 8, !tbaa !235
  %137 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %136, ptr noundef nonnull %133) #19
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %150, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr %131, align 8, !tbaa !235
  %141 = tail call i32 @RNA_property_enum_get(ptr noundef %140, ptr noundef nonnull %133) #19
  %142 = trunc i32 %141 to i16
  %143 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 43
  store i16 %142, ptr %143, align 2, !tbaa !242
  %144 = shl i32 %141, 16
  %145 = ashr exact i32 %144, 16
  %146 = tail call i32 @BIF_countTransformOrientation(ptr noundef %0) #19
  %147 = add nsw i32 %146, 5
  %148 = icmp slt i32 %145, %147
  br i1 %148, label %155, label %149

149:                                              ; preds = %139
  store i16 0, ptr %143, align 2, !tbaa !242
  br label %155

150:                                              ; preds = %135, %130, %123
  %151 = getelementptr inbounds %struct.View3D, ptr %97, i64 0, i32 41
  %152 = load i8, ptr %151, align 4, !tbaa !243
  %153 = zext i8 %152 to i16
  %154 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 43
  store i16 %153, ptr %154, align 2, !tbaa !242
  br label %155

155:                                              ; preds = %139, %149, %150
  %156 = load i16, ptr %126, align 2, !tbaa !244
  %157 = icmp eq i16 %156, 2
  br i1 %157, label %158, label %170

158:                                              ; preds = %155
  %159 = load ptr, ptr %15, align 8, !tbaa !223
  %160 = getelementptr inbounds %struct.ToolSettings, ptr %159, i64 0, i32 8
  %161 = load i16, ptr %160, align 2, !tbaa !245
  %162 = and i16 %161, 4
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %158
  %165 = load i32, ptr %1, align 8, !tbaa !102
  switch i32 %165, label %170 [
    i32 2, label %166
    i32 3, label %166
    i32 10, label %166
  ]

166:                                              ; preds = %164, %164, %164
  %167 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %168 = load i32, ptr %167, align 8, !tbaa !52
  %169 = or i32 %168, 4
  store i32 %169, ptr %167, align 8, !tbaa !52
  br label %170

170:                                              ; preds = %164, %166, %158, %155
  %171 = icmp eq ptr %10, null
  br i1 %171, label %191, label %172

172:                                              ; preds = %170
  %173 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 27
  %174 = load i32, ptr %173, align 8, !tbaa !130
  %175 = and i32 %174, 30
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %191, label %177

177:                                              ; preds = %172
  %178 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #19
  %179 = icmp eq ptr %178, null
  br i1 %179, label %191, label %180

180:                                              ; preds = %177
  %181 = load ptr, ptr %178, align 8, !tbaa !246
  %182 = icmp eq ptr %181, null
  br i1 %182, label %191, label %183

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.Brush, ptr %181, i64 0, i32 16
  %185 = load i32, ptr %184, align 8, !tbaa !247
  %186 = icmp sgt i32 %185, -1
  br i1 %186, label %191, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %189 = load i32, ptr %188, align 8, !tbaa !52
  %190 = or i32 %189, 256
  store i32 %190, ptr %188, align 8, !tbaa !52
  br label %191

191:                                              ; preds = %177, %180, %183, %187, %172, %170
  br i1 %16, label %312, label %192

192:                                              ; preds = %191
  %193 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 7
  %194 = load ptr, ptr %193, align 8, !tbaa !235
  %195 = tail call ptr @RNA_struct_find_property(ptr noundef %194, ptr noundef nonnull @.str.2) #19
  %196 = icmp eq ptr %195, null
  br i1 %196, label %295, label %197

197:                                              ; preds = %192
  %198 = load ptr, ptr %193, align 8, !tbaa !235
  %199 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %198, ptr noundef nonnull %195) #19
  %200 = icmp eq i8 %199, 0
  %201 = load ptr, ptr %193, align 8, !tbaa !235
  br i1 %200, label %212, label %202

202:                                              ; preds = %197
  %203 = tail call i32 @RNA_property_boolean_get(ptr noundef %201, ptr noundef nonnull %195) #19
  %204 = icmp eq i32 %203, 0
  %205 = load ptr, ptr %15, align 8, !tbaa !223
  %206 = getelementptr inbounds %struct.ToolSettings, ptr %205, i64 0, i32 10
  %207 = load i8, ptr %206, align 1, !tbaa !251
  br i1 %204, label %210, label %208

208:                                              ; preds = %202
  %209 = or i8 %207, 4
  store i8 %209, ptr %206, align 1, !tbaa !251
  br label %295

210:                                              ; preds = %202
  %211 = and i8 %207, -5
  store i8 %211, ptr %206, align 1, !tbaa !251
  br label %295

212:                                              ; preds = %197
  %213 = load ptr, ptr %15, align 8, !tbaa !223
  %214 = getelementptr inbounds %struct.ToolSettings, ptr %213, i64 0, i32 10
  %215 = load i8, ptr %214, align 1, !tbaa !251
  %216 = and i8 %215, 4
  %217 = zext nneg i8 %216 to i32
  tail call void @RNA_property_boolean_set(ptr noundef %201, ptr noundef nonnull %195, i32 noundef %217) #19
  br label %295

218:                                              ; preds = %92
  %219 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 19
  %220 = load ptr, ptr %219, align 8, !tbaa !140
  %221 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2
  %222 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 52
  store ptr %221, ptr %222, align 8, !tbaa !126
  %223 = getelementptr inbounds %struct.SpaceImage, ptr %220, i64 0, i32 25
  %224 = load i8, ptr %223, align 1, !tbaa !252
  %225 = zext i8 %224 to i16
  %226 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 32
  store i16 %225, ptr %226, align 2, !tbaa !244
  %227 = load ptr, ptr %14, align 8, !tbaa !77
  %228 = tail call zeroext i8 @ED_space_image_show_uvedit(ptr noundef %220, ptr noundef %227) #19
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %230, label %293

230:                                              ; preds = %218
  %231 = getelementptr inbounds %struct.SpaceImage, ptr %220, i64 0, i32 17
  %232 = load i8, ptr %231, align 4, !tbaa !253
  switch i8 %232, label %293 [
    i8 2, label %233
    i8 1, label %237
  ]

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %235 = load i32, ptr %234, align 8, !tbaa !52
  %236 = or i32 %235, 128
  store i32 %236, ptr %234, align 8, !tbaa !52
  br label %293

237:                                              ; preds = %230
  %238 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %239 = load ptr, ptr %238, align 8, !tbaa !118
  %240 = getelementptr inbounds %struct.ToolSettings, ptr %239, i64 0, i32 17
  %241 = load ptr, ptr %240, align 8, !tbaa !246
  %242 = icmp eq ptr %241, null
  br i1 %242, label %293, label %243

243:                                              ; preds = %237
  %244 = getelementptr inbounds %struct.Brush, ptr %241, i64 0, i32 16
  %245 = load i32, ptr %244, align 8, !tbaa !247
  %246 = icmp sgt i32 %245, -1
  br i1 %246, label %293, label %247

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %249 = load i32, ptr %248, align 8, !tbaa !52
  %250 = or i32 %249, 256
  store i32 %250, ptr %248, align 8, !tbaa !52
  br label %293

251:                                              ; preds = %92
  %252 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2
  %253 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 52
  store ptr %252, ptr %253, align 8, !tbaa !126
  %254 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 32
  store i16 0, ptr %254, align 2, !tbaa !244
  br label %293

255:                                              ; preds = %92
  %256 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 19
  %257 = load ptr, ptr %256, align 8, !tbaa !140
  %258 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2
  %259 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 52
  store ptr %258, ptr %259, align 8, !tbaa !126
  %260 = getelementptr inbounds %struct.SpaceIpo, ptr %257, i64 0, i32 13
  %261 = load i32, ptr %260, align 4, !tbaa !254
  %262 = trunc i32 %261 to i16
  %263 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 32
  store i16 %262, ptr %263, align 2, !tbaa !244
  br label %293

264:                                              ; preds = %92
  %265 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 19
  %266 = load ptr, ptr %265, align 8, !tbaa !140
  %267 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2
  %268 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 52
  store ptr %267, ptr %268, align 8, !tbaa !126
  %269 = getelementptr inbounds %struct.SpaceClip, ptr %266, i64 0, i32 25
  %270 = load i32, ptr %269, align 8, !tbaa !255
  %271 = trunc i32 %270 to i16
  %272 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 32
  store i16 %271, ptr %272, align 2, !tbaa !244
  %273 = tail call zeroext i8 @ED_space_clip_check_show_trackedit(ptr noundef %266) #19
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %279, label %275

275:                                              ; preds = %264
  %276 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %277 = load i32, ptr %276, align 8, !tbaa !52
  %278 = or i32 %277, 64
  store i32 %278, ptr %276, align 8, !tbaa !52
  br label %293

279:                                              ; preds = %264
  %280 = tail call zeroext i8 @ED_space_clip_check_show_maskedit(ptr noundef nonnull %266) #19
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %293, label %282

282:                                              ; preds = %279
  %283 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %284 = load i32, ptr %283, align 8, !tbaa !52
  %285 = or i32 %284, 128
  store i32 %285, ptr %283, align 8, !tbaa !52
  br label %293

286:                                              ; preds = %89, %92
  %287 = phi ptr [ %91, %89 ], [ %94, %92 ]
  %288 = icmp eq ptr %7, null
  %289 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2
  %290 = select i1 %288, ptr null, ptr %289
  %291 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 52
  store ptr %290, ptr %291, align 8
  %292 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 32
  store i16 0, ptr %292, align 2, !tbaa !244
  br label %293

293:                                              ; preds = %275, %282, %279, %218, %233, %230, %247, %243, %237, %255, %286, %251
  %294 = phi ptr [ %94, %275 ], [ %94, %282 ], [ %94, %279 ], [ %94, %218 ], [ %94, %233 ], [ %94, %230 ], [ %94, %247 ], [ %94, %243 ], [ %94, %237 ], [ %94, %255 ], [ %287, %286 ], [ %94, %251 ]
  br i1 %16, label %312, label %295

295:                                              ; preds = %212, %210, %208, %192, %293
  %296 = phi ptr [ %94, %212 ], [ %94, %210 ], [ %94, %208 ], [ %94, %192 ], [ %294, %293 ]
  %297 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 7
  %298 = load ptr, ptr %297, align 8, !tbaa !235
  %299 = tail call ptr @RNA_struct_find_property(ptr noundef %298, ptr noundef nonnull @.str.3) #19
  %300 = icmp eq ptr %299, null
  br i1 %300, label %312, label %301

301:                                              ; preds = %295
  %302 = load ptr, ptr %297, align 8, !tbaa !235
  %303 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %302, ptr noundef nonnull %299) #19
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %312, label %305

305:                                              ; preds = %301
  %306 = load ptr, ptr %297, align 8, !tbaa !235
  %307 = tail call i32 @RNA_property_boolean_get(ptr noundef %306, ptr noundef nonnull %299) #19
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %321, label %309

309:                                              ; preds = %305
  %310 = load i32, ptr %30, align 4, !tbaa !94
  %311 = or i32 %310, 8388608
  store i32 %311, ptr %30, align 4, !tbaa !94
  br label %321

312:                                              ; preds = %191, %301, %295, %293
  %313 = phi ptr [ %94, %191 ], [ %296, %301 ], [ %296, %295 ], [ %294, %293 ]
  %314 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !256
  %315 = and i32 %314, 2097152
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %320, label %317

317:                                              ; preds = %312
  %318 = load i32, ptr %30, align 4, !tbaa !94
  %319 = or i32 %318, 8388608
  store i32 %319, ptr %30, align 4, !tbaa !94
  br label %320

320:                                              ; preds = %312, %317
  br i1 %16, label %339, label %321

321:                                              ; preds = %309, %305, %320
  %322 = phi ptr [ %296, %309 ], [ %296, %305 ], [ %313, %320 ]
  %323 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 7
  %324 = load ptr, ptr %323, align 8, !tbaa !235
  %325 = tail call ptr @RNA_struct_find_property(ptr noundef %324, ptr noundef nonnull @.str.4) #19
  %326 = icmp eq ptr %325, null
  br i1 %326, label %339, label %327

327:                                              ; preds = %321
  %328 = load ptr, ptr %323, align 8, !tbaa !235
  %329 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %328, ptr noundef nonnull %325) #19
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %339, label %331

331:                                              ; preds = %327
  %332 = load ptr, ptr %323, align 8, !tbaa !235
  %333 = tail call i32 @RNA_property_boolean_get(ptr noundef %332, ptr noundef nonnull %325) #19
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %362, label %335

335:                                              ; preds = %331
  %336 = load i32, ptr %30, align 4, !tbaa !94
  %337 = or i32 %336, 524288
  store i32 %337, ptr %30, align 4, !tbaa !94
  %338 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 46
  store i16 1, ptr %338, align 8, !tbaa !257
  br label %362

339:                                              ; preds = %327, %321, %320
  %340 = phi ptr [ %322, %327 ], [ %322, %321 ], [ %313, %320 ]
  %341 = load i8, ptr %340, align 8, !tbaa !53
  %342 = icmp eq i8 %341, 1
  br i1 %342, label %343, label %361

343:                                              ; preds = %339
  %344 = load ptr, ptr %14, align 8, !tbaa !77
  %345 = icmp eq ptr %344, null
  br i1 %345, label %361, label %346

346:                                              ; preds = %343
  %347 = getelementptr inbounds %struct.Object, ptr %344, i64 0, i32 3
  %348 = load i16, ptr %347, align 8, !tbaa !78
  %349 = icmp eq i16 %348, 1
  br i1 %349, label %350, label %361

350:                                              ; preds = %346
  %351 = getelementptr inbounds %struct.Object, ptr %344, i64 0, i32 19
  %352 = load ptr, ptr %351, align 8, !tbaa !81
  %353 = getelementptr inbounds %struct.Mesh, ptr %352, i64 0, i32 46
  %354 = load i8, ptr %353, align 1, !tbaa !258
  %355 = and i8 %354, 1
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %361, label %357

357:                                              ; preds = %350
  %358 = load i32, ptr %30, align 4, !tbaa !94
  %359 = or i32 %358, 524288
  store i32 %359, ptr %30, align 4, !tbaa !94
  %360 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 46
  store i16 1, ptr %360, align 8, !tbaa !257
  br label %361

361:                                              ; preds = %339, %357, %350, %346, %343
  br i1 %16, label %456, label %362

362:                                              ; preds = %335, %331, %361
  %363 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 7
  %364 = load ptr, ptr %363, align 8, !tbaa !235
  %365 = tail call ptr @RNA_struct_find_property(ptr noundef %364, ptr noundef nonnull @.str.5) #19
  %366 = icmp eq ptr %365, null
  br i1 %366, label %456, label %367

367:                                              ; preds = %362
  %368 = load ptr, ptr %363, align 8, !tbaa !235
  %369 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %368, ptr noundef nonnull %365) #19
  %370 = icmp eq i8 %369, 0
  br i1 %370, label %377, label %371

371:                                              ; preds = %367
  %372 = load ptr, ptr %363, align 8, !tbaa !235
  %373 = tail call i32 @RNA_property_enum_get(ptr noundef %372, ptr noundef nonnull %365) #19
  %374 = tail call fastcc i32 @initTransInfo_edit_pet_to_flag(i32 noundef %373) #18, !range !261
  %375 = load i32, ptr %30, align 4, !tbaa !94
  %376 = or i32 %375, %374
  br label %415

377:                                              ; preds = %367
  %378 = load i32, ptr %30, align 4, !tbaa !94
  %379 = and i32 %378, 2097152
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %417, label %381

381:                                              ; preds = %377
  %382 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %383 = load i32, ptr %382, align 8, !tbaa !52
  %384 = and i32 %383, 4
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %417

386:                                              ; preds = %381
  %387 = load ptr, ptr %14, align 8, !tbaa !77
  %388 = icmp eq ptr %387, null
  br i1 %388, label %395, label %389

389:                                              ; preds = %386
  %390 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 56
  %391 = load i16, ptr %390, align 2, !tbaa !262
  %392 = sext i16 %391 to i32
  %393 = tail call fastcc i32 @initTransInfo_edit_pet_to_flag(i32 noundef %392) #18, !range !261
  %394 = or i32 %393, %378
  br label %415

395:                                              ; preds = %386
  %396 = and i32 %383, 128
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %409, label %398

398:                                              ; preds = %395
  %399 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 59
  %400 = load i8, ptr %399, align 1, !tbaa !263
  %401 = icmp eq i8 %400, 0
  br i1 %401, label %417, label %402

402:                                              ; preds = %398
  %403 = or i32 %378, 2048
  store i32 %403, ptr %30, align 4, !tbaa !94
  %404 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 56
  %405 = load i16, ptr %404, align 2, !tbaa !262
  %406 = icmp eq i16 %405, 2
  br i1 %406, label %407, label %417

407:                                              ; preds = %402
  %408 = or i32 %378, 6144
  br label %415

409:                                              ; preds = %395
  %410 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 58
  %411 = load i8, ptr %410, align 2, !tbaa !264
  %412 = icmp eq i8 %411, 0
  br i1 %412, label %417, label %413

413:                                              ; preds = %409
  %414 = or i32 %378, 2048
  br label %415

415:                                              ; preds = %389, %413, %407, %371
  %416 = phi i32 [ %376, %371 ], [ %408, %407 ], [ %414, %413 ], [ %394, %389 ]
  store i32 %416, ptr %30, align 4, !tbaa !94
  br label %417

417:                                              ; preds = %415, %381, %402, %398, %409, %377
  %418 = load ptr, ptr %363, align 8, !tbaa !235
  %419 = tail call ptr @RNA_struct_find_property(ptr noundef %418, ptr noundef nonnull @.str.6) #19
  %420 = icmp eq ptr %419, null
  br i1 %420, label %428, label %421

421:                                              ; preds = %417
  %422 = load ptr, ptr %363, align 8, !tbaa !235
  %423 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %422, ptr noundef nonnull %419) #19
  %424 = icmp eq i8 %423, 0
  br i1 %424, label %428, label %425

425:                                              ; preds = %421
  %426 = load ptr, ptr %363, align 8, !tbaa !235
  %427 = tail call float @RNA_property_float_get(ptr noundef %426, ptr noundef nonnull %419) #19
  br label %431

428:                                              ; preds = %421, %417
  %429 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 19
  %430 = load float, ptr %429, align 8, !tbaa !265
  br label %431

431:                                              ; preds = %428, %425
  %432 = phi float [ %430, %428 ], [ %427, %425 ]
  %433 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 18
  store float %432, ptr %433, align 4, !tbaa !266
  %434 = fcmp ugt float %432, 0x3EE4F8B580000000
  br i1 %434, label %439, label %435

435:                                              ; preds = %431
  %436 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 18
  %437 = fpext float %432 to double
  %438 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %437) #18
  store float 1.000000e+00, ptr %436, align 4, !tbaa !266
  br label %439

439:                                              ; preds = %431, %435
  %440 = load ptr, ptr %363, align 8, !tbaa !235
  %441 = tail call ptr @RNA_struct_find_property(ptr noundef %440, ptr noundef nonnull @.str.8) #19
  %442 = icmp eq ptr %441, null
  br i1 %442, label %452, label %443

443:                                              ; preds = %439
  %444 = load ptr, ptr %363, align 8, !tbaa !235
  %445 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %444, ptr noundef nonnull %441) #19
  %446 = icmp eq i8 %445, 0
  br i1 %446, label %452, label %447

447:                                              ; preds = %443
  %448 = load ptr, ptr %363, align 8, !tbaa !235
  %449 = tail call i32 @RNA_property_enum_get(ptr noundef %448, ptr noundef nonnull %441) #19
  %450 = trunc i32 %449 to i16
  %451 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 45
  store i16 %450, ptr %451, align 2, !tbaa !267
  br label %460

452:                                              ; preds = %443, %439
  %453 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 57
  %454 = load i16, ptr %453, align 8, !tbaa !268
  %455 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 45
  store i16 %454, ptr %455, align 2, !tbaa !267
  br label %460

456:                                              ; preds = %362, %361
  %457 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %458 = load i32, ptr %457, align 8, !tbaa !52
  %459 = or i32 %458, 4
  store i32 %459, ptr %457, align 8, !tbaa !52
  br label %460

460:                                              ; preds = %447, %452, %456
  tail call void @setTransformViewMatrices(ptr noundef nonnull %1) #19
  %461 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15
  tail call void @initNumInput(ptr noundef nonnull %461) #19
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @normalize_m3(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2_int(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !269 {
  %3 = load i32, ptr %1, align 4, !tbaa !232
  store i32 %3, ptr %0, align 4, !tbaa !232
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !232
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %5, ptr %6, align 4, !tbaa !232
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #5 !PGOFuncName !270 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !48
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare void @unit_m3(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ED_screen_animation_playing(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BIF_countTransformOrientation(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_paint_get_active_from_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_property_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ED_space_image_show_uvedit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ED_space_clip_check_show_trackedit(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ED_space_clip_check_show_maskedit(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @initTransInfo_edit_pet_to_flag(i32 noundef %0) unnamed_addr #6 !PGOFuncName !271 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  %6 = getelementptr inbounds [3 x i32], ptr @switch.table.initTransInfo_edit_pet_to_flag, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: optsize
declare float @RNA_property_float_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare void @setTransformViewMatrices(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @initNumInput(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @postTrans(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 66
  %4 = load ptr, ptr %3, align 8, !tbaa !272
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %8 = load ptr, ptr %7, align 8, !tbaa !153
  %9 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !273
  tail call void @ED_region_draw_cb_exit(ptr noundef %10, ptr noundef nonnull %4) #19
  br label %11

11:                                               ; preds = %6, %2
  %12 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 65
  %13 = load ptr, ptr %12, align 8, !tbaa !274
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %17 = load ptr, ptr %16, align 8, !tbaa !153
  %18 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !273
  tail call void @ED_region_draw_cb_exit(ptr noundef %19, ptr noundef nonnull %13) #19
  br label %20

20:                                               ; preds = %15, %11
  %21 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 67
  %22 = load ptr, ptr %21, align 8, !tbaa !275
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %26 = load ptr, ptr %25, align 8, !tbaa !153
  %27 = getelementptr inbounds %struct.ARegion, ptr %26, i64 0, i32 20
  %28 = load ptr, ptr %27, align 8, !tbaa !273
  tail call void @ED_region_draw_cb_exit(ptr noundef %28, ptr noundef nonnull %22) #19
  br label %29

29:                                               ; preds = %24, %20
  %30 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 68
  %31 = load ptr, ptr %30, align 8, !tbaa !276
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %35 = load ptr, ptr %30, align 8, !tbaa !276
  tail call void @WM_paint_cursor_end(ptr noundef %34, ptr noundef %35) #19
  br label %36

36:                                               ; preds = %33, %29
  %37 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 41
  %38 = load ptr, ptr %37, align 8, !tbaa !277
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void %38(ptr noundef nonnull %1) #19
  br label %52

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  %43 = load ptr, ptr %42, align 8, !tbaa !170
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !94
  %48 = and i32 %47, 131072
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !98
  tail call void %51(ptr noundef nonnull %43) #19
  store ptr null, ptr %42, align 8, !tbaa !170
  br label %52

52:                                               ; preds = %41, %45, %50, %40
  %53 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  %54 = load ptr, ptr %53, align 8, !tbaa !97
  %55 = icmp eq ptr %54, null
  br i1 %55, label %96, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  %58 = load ptr, ptr %57, align 8, !tbaa !77
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.Object, ptr %58, i64 0, i32 3
  %62 = load i16, ptr %61, align 8, !tbaa !78
  %63 = and i16 %62, -2
  %64 = icmp eq i16 %63, 2
  br i1 %64, label %69, label %65

65:                                               ; preds = %60, %56
  %66 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  %67 = load i8, ptr %66, align 8, !tbaa !53
  %68 = icmp eq i8 %67, 2
  br i1 %68, label %69, label %93

69:                                               ; preds = %60, %65
  %70 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  %71 = load i32, ptr %70, align 8, !tbaa !109
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %69, %86
  %74 = phi i32 [ %87, %86 ], [ %71, %69 ]
  %75 = phi ptr [ %89, %86 ], [ %54, %69 ]
  %76 = phi i32 [ %88, %86 ], [ 0, %69 ]
  %77 = getelementptr inbounds %struct.TransData, ptr %75, i64 0, i32 16
  %78 = load i32, ptr %77, align 8, !tbaa !132
  %79 = and i32 %78, 4096
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %73
  %82 = load ptr, ptr @MEM_freeN, align 8, !tbaa !98
  %83 = getelementptr inbounds %struct.TransData, ptr %75, i64 0, i32 14
  %84 = load ptr, ptr %83, align 8, !tbaa !278
  tail call void %82(ptr noundef %84) #19
  %85 = load i32, ptr %70, align 8, !tbaa !109
  br label %86

86:                                               ; preds = %73, %81
  %87 = phi i32 [ %74, %73 ], [ %85, %81 ]
  %88 = add nuw nsw i32 %76, 1
  %89 = getelementptr inbounds %struct.TransData, ptr %75, i64 1
  %90 = icmp slt i32 %88, %87
  br i1 %90, label %73, label %91, !llvm.loop !279

91:                                               ; preds = %86
  %92 = load ptr, ptr %53, align 8, !tbaa !97
  br label %93

93:                                               ; preds = %91, %69, %65
  %94 = phi ptr [ %92, %91 ], [ %54, %69 ], [ %54, %65 ]
  %95 = load ptr, ptr @MEM_freeN, align 8, !tbaa !98
  tail call void %95(ptr noundef %94) #19
  br label %96

96:                                               ; preds = %93, %52
  %97 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 14
  tail call void @BLI_freelistN(ptr noundef nonnull %97) #19
  %98 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 11
  %99 = load ptr, ptr %98, align 8, !tbaa !280
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %96
  %102 = load ptr, ptr @MEM_freeN, align 8, !tbaa !98
  tail call void %102(ptr noundef nonnull %99) #19
  br label %103

103:                                              ; preds = %101, %96
  %104 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 12
  %105 = load ptr, ptr %104, align 8, !tbaa !281
  %106 = icmp eq ptr %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr @MEM_freeN, align 8, !tbaa !98
  tail call void %108(ptr noundef nonnull %105) #19
  store ptr null, ptr %104, align 8, !tbaa !281
  br label %109

109:                                              ; preds = %107, %103
  %110 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  %111 = load i8, ptr %110, align 8, !tbaa !53
  switch i8 %111, label %145 [
    i8 6, label %112
    i8 1, label %131
  ]

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %114 = load i32, ptr %113, align 8, !tbaa !52
  %115 = and i32 %114, 384
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %145

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %119 = load ptr, ptr %118, align 8, !tbaa !139
  %120 = getelementptr inbounds %struct.ScrArea, ptr %119, i64 0, i32 19
  %121 = load ptr, ptr %120, align 8, !tbaa !140
  %122 = getelementptr inbounds %struct.SpaceImage, ptr %121, i64 0, i32 4
  %123 = load i32, ptr %122, align 4, !tbaa !142
  %124 = and i32 %123, 2048
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %145, label %126

126:                                              ; preds = %117
  %127 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 3
  %128 = load i16, ptr %127, align 4, !tbaa !83
  %129 = icmp eq i16 %128, 3
  %130 = zext i1 %129 to i16
  tail call void @ED_uvedit_live_unwrap_end(i16 noundef signext %130) #19
  br label %145

131:                                              ; preds = %109
  %132 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %133 = load i32, ptr %132, align 4, !tbaa !94
  %134 = and i32 %133, 2097152
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %138 = load ptr, ptr %137, align 8, !tbaa !139
  %139 = getelementptr inbounds %struct.ScrArea, ptr %138, i64 0, i32 19
  %140 = load ptr, ptr %139, align 8, !tbaa !140
  %141 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 44
  %142 = load i16, ptr %141, align 4, !tbaa !239
  %143 = trunc i16 %142 to i8
  %144 = getelementptr inbounds %struct.View3D, ptr %140, i64 0, i32 40
  store i8 %143, ptr %144, align 1, !tbaa !238
  br label %145

145:                                              ; preds = %131, %136, %109, %117, %126, %112
  %146 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 16, i32 7
  %147 = load ptr, ptr %146, align 8, !tbaa !282
  %148 = icmp eq ptr %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %145
  %150 = load ptr, ptr @MEM_freeN, align 8, !tbaa !98
  tail call void %150(ptr noundef nonnull %147) #19
  br label %151

151:                                              ; preds = %149, %145
  ret void
}

; Function Attrs: optsize
declare void @ED_region_draw_cb_exit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_paint_cursor_end(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_uvedit_live_unwrap_end(i16 noundef signext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @applyTransObjects(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !109
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %35

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !97
  br label %8

8:                                                ; preds = %6, %28
  %9 = phi ptr [ %29, %28 ], [ %7, %6 ]
  %10 = getelementptr inbounds %struct.TransData, ptr %9, i64 0, i32 4
  %11 = getelementptr inbounds %struct.TransData, ptr %9, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !283
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %12) #18
  %13 = getelementptr inbounds %struct.TransData, ptr %9, i64 0, i32 13
  %14 = load ptr, ptr %13, align 8, !tbaa !284
  %15 = getelementptr inbounds %struct.TransDataExtension, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !285
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.TransDataExtension, ptr %14, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %19, ptr noundef nonnull %16) #18
  %20 = load ptr, ptr %13, align 8, !tbaa !284
  br label %21

21:                                               ; preds = %18, %8
  %22 = phi ptr [ %20, %18 ], [ %14, %8 ]
  %23 = getelementptr inbounds %struct.TransDataExtension, ptr %22, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !287
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.TransDataExtension, ptr %22, i64 0, i32 12
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %27, ptr noundef nonnull %24) #18
  br label %28

28:                                               ; preds = %21, %26
  %29 = getelementptr inbounds %struct.TransData, ptr %9, i64 1
  %30 = load ptr, ptr %2, align 8, !tbaa !97
  %31 = load i32, ptr %3, align 8, !tbaa !109
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TransData, ptr %30, i64 %32
  %34 = icmp ult ptr %29, %33
  br i1 %34, label %8, label %35, !llvm.loop !288

35:                                               ; preds = %28, %1
  tail call void @recalcData(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @restoreTransObjects(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !109
  %5 = sext i32 %4 to i64
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !97
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi ptr [ %11, %9 ], [ %8, %7 ]
  tail call fastcc void @restoreElement(ptr noundef %10) #18
  %11 = getelementptr inbounds %struct.TransData, ptr %10, i64 1
  %12 = load ptr, ptr %2, align 8, !tbaa !97
  %13 = load i32, ptr %3, align 8, !tbaa !109
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TransData, ptr %12, i64 %14
  %16 = icmp ult ptr %11, %15
  br i1 %16, label %9, label %17, !llvm.loop !289

17:                                               ; preds = %9, %1
  %18 = phi i64 [ %5, %1 ], [ %14, %9 ]
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !281
  %21 = icmp ne ptr %20, null
  %22 = getelementptr inbounds %struct.TransData2D, ptr %20, i64 %18
  %23 = icmp sgt i64 %18, 0
  %24 = and i1 %21, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %17, %46
  %26 = phi ptr [ %47, %46 ], [ %20, %17 ]
  %27 = getelementptr inbounds %struct.TransData2D, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !290
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
  %38 = load ptr, ptr %37, align 8, !tbaa !292
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
  br i1 %48, label %25, label %49, !llvm.loop !293

49:                                               ; preds = %46, %17
  %50 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 36
  tail call void @unit_m3(ptr noundef nonnull %50) #19
  tail call void @recalcData(ptr noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @restoreElement(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !294 {
  %2 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !283
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %6) #18
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !295
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 6
  %13 = load float, ptr %12, align 8, !tbaa !112
  store float %13, ptr %9, align 4, !tbaa !48
  br label %14

14:                                               ; preds = %11, %7
  %15 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 13
  %16 = load ptr, ptr %15, align 8, !tbaa !284
  %17 = icmp eq ptr %16, null
  br i1 %17, label %60, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 16
  %20 = load i32, ptr %19, align 8, !tbaa !132
  %21 = and i32 %20, 1024
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.TransDataExtension, ptr %16, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !285
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.TransDataExtension, ptr %16, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %25, ptr noundef nonnull %28) #18
  %29 = load ptr, ptr %15, align 8, !tbaa !284
  br label %30

30:                                               ; preds = %27, %23
  %31 = phi ptr [ %29, %27 ], [ %16, %23 ]
  %32 = getelementptr inbounds %struct.TransDataExtension, ptr %31, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !296
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.TransDataExtension, ptr %31, i64 0, i32 8
  %37 = load float, ptr %36, align 8, !tbaa !297
  store float %37, ptr %33, align 4, !tbaa !48
  br label %38

38:                                               ; preds = %35, %30
  %39 = getelementptr inbounds %struct.TransDataExtension, ptr %31, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !298
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.TransDataExtension, ptr %31, i64 0, i32 10
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %40, ptr noundef nonnull %43) #18
  %44 = load ptr, ptr %15, align 8, !tbaa !284
  br label %45

45:                                               ; preds = %42, %38
  %46 = phi ptr [ %44, %42 ], [ %31, %38 ]
  %47 = getelementptr inbounds %struct.TransDataExtension, ptr %46, i64 0, i32 11
  %48 = load ptr, ptr %47, align 8, !tbaa !287
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.TransDataExtension, ptr %46, i64 0, i32 12
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %48, ptr noundef nonnull %51) #18
  %52 = load ptr, ptr %15, align 8, !tbaa !284
  br label %53

53:                                               ; preds = %50, %45
  %54 = phi ptr [ %52, %50 ], [ %46, %45 ]
  %55 = getelementptr inbounds %struct.TransDataExtension, ptr %54, i64 0, i32 5
  %56 = load ptr, ptr %55, align 8, !tbaa !299
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.TransDataExtension, ptr %54, i64 0, i32 6
  tail call void @copy_qt_qt(ptr noundef nonnull %56, ptr noundef nonnull %59) #19
  br label %60

60:                                               ; preds = %53, %58, %18, %14
  %61 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 16
  %62 = load i32, ptr %61, align 8, !tbaa !132
  %63 = and i32 %62, 4096
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 14
  %67 = load ptr, ptr %66, align 8, !tbaa !278
  %68 = load i8, ptr %67, align 8, !tbaa !300
  %69 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %67, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !302
  store i8 %68, ptr %70, align 1, !tbaa !220
  %71 = load ptr, ptr %66, align 8, !tbaa !278
  %72 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %71, i64 0, i32 1
  %73 = load i8, ptr %72, align 1, !tbaa !303
  %74 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %71, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !304
  store i8 %73, ptr %75, align 1, !tbaa !220
  br label %76

76:                                               ; preds = %65, %60
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @calculateCenter2D(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x float], align 4
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !94
  %5 = and i32 %4, 6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %13 = load ptr, ptr %12, align 8, !tbaa !115
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ %9, %7 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #17
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %16) #18
  %17 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %17, ptr noundef nonnull %2) #19
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 21
  call void @projectFloatView(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %18) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #17
  br label %22

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 21
  tail call void @projectFloatView(ptr noundef nonnull %0, ptr noundef nonnull %20, ptr noundef nonnull %21) #19
  br label %22

22:                                               ; preds = %19, %14
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @projectFloatView(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @calculateCenterCursor(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %8 = load ptr, ptr %7, align 8, !tbaa !126
  %9 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %6, ptr noundef %8) #19
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef %9) #18
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !94
  %12 = and i32 %11, 6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %16 = load ptr, ptr %15, align 8, !tbaa !77
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %20 = load ptr, ptr %19, align 8, !tbaa !115
  br label %21

21:                                               ; preds = %14, %18
  %22 = phi ptr [ %20, %18 ], [ %16, %14 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #17
  %23 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 47
  %24 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 47, i64 3
  tail call fastcc void @sub_v3_v3v3(ptr noundef %1, ptr noundef %1, ptr noundef nonnull %24) #18
  call void @copy_m3_m4(ptr noundef nonnull %3, ptr noundef nonnull %23) #19
  %25 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %4, ptr noundef nonnull %3) #19
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef %1) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #17
  br label %44

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !52
  %29 = and i32 %28, 256
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %33 = load ptr, ptr %32, align 8, !tbaa !153
  %34 = tail call i32 @ED_view3d_project_float_global(ptr noundef %33, ptr noundef %9, ptr noundef %1, i32 noundef 0) #19
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %32, align 8, !tbaa !153
  %38 = getelementptr inbounds %struct.ARegion, ptr %37, i64 0, i32 5
  %39 = load <2 x i16>, ptr %38, align 8, !tbaa !305
  %40 = sitofp <2 x i16> %39 to <2 x float>
  %41 = fmul <2 x float> %40, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %41, ptr %1, align 4, !tbaa !48
  br label %42

42:                                               ; preds = %36, %31
  %43 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %43, align 4, !tbaa !48
  br label %44

44:                                               ; preds = %26, %42, %21
  ret void
}

; Function Attrs: optsize
declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ED_view3d_project_float_global(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @calculateCenterCursor2D(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store float 1.000000e+00, ptr %3, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store float 1.000000e+00, ptr %4, align 4, !tbaa !48
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %7 = load i8, ptr %6, align 8, !tbaa !53
  switch i8 %7, label %92 [
    i8 6, label %8
    i8 20, label %21
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %10 = load ptr, ptr %9, align 8, !tbaa !139
  %11 = getelementptr inbounds %struct.ScrArea, ptr %10, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !140
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !52
  %15 = and i32 %14, 128
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %8
  call void @ED_space_image_get_aspect(ptr noundef %12, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  br label %19

18:                                               ; preds = %8
  call void @ED_space_image_get_uv_aspect(ptr noundef %12, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  br label %19

19:                                               ; preds = %18, %17
  %20 = getelementptr inbounds %struct.SpaceImage, ptr %12, i64 0, i32 11
  br label %34

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %23 = load ptr, ptr %22, align 8, !tbaa !139
  %24 = getelementptr inbounds %struct.ScrArea, ptr %23, i64 0, i32 19
  %25 = load ptr, ptr %24, align 8, !tbaa !140
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !52
  %28 = and i32 %27, 64
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  call void @ED_space_clip_get_aspect_dimension_aware(ptr noundef %25, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  br label %32

31:                                               ; preds = %21
  call void @ED_space_clip_get_aspect(ptr noundef %25, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  br label %32

32:                                               ; preds = %31, %30
  %33 = getelementptr inbounds %struct.SpaceClip, ptr %25, i64 0, i32 27
  br label %34

34:                                               ; preds = %19, %32
  %35 = phi ptr [ %33, %32 ], [ %20, %19 ]
  %36 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %37 = load i32, ptr %36, align 8, !tbaa !52
  %38 = and i32 %37, 128
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %65, label %40

40:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %41 = load i8, ptr %6, align 8, !tbaa !53
  switch i8 %41, label %58 [
    i8 6, label %42
    i8 20, label %50
  ]

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %44 = load ptr, ptr %43, align 8, !tbaa !139
  %45 = getelementptr inbounds %struct.ScrArea, ptr %44, i64 0, i32 19
  %46 = load ptr, ptr %45, align 8, !tbaa !140
  %47 = getelementptr inbounds %struct.SpaceImage, ptr %46, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !306
  %49 = getelementptr inbounds %struct.SpaceImage, ptr %46, i64 0, i32 6
  call void @BKE_mask_coord_from_image(ptr noundef %48, ptr noundef nonnull %49, ptr noundef nonnull %5, ptr noundef nonnull %35) #19
  br label %58

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %52 = load ptr, ptr %51, align 8, !tbaa !139
  %53 = getelementptr inbounds %struct.ScrArea, ptr %52, i64 0, i32 19
  %54 = load ptr, ptr %53, align 8, !tbaa !140
  %55 = getelementptr inbounds %struct.SpaceClip, ptr %54, i64 0, i32 10
  %56 = load ptr, ptr %55, align 8, !tbaa !307
  %57 = getelementptr inbounds %struct.SpaceClip, ptr %54, i64 0, i32 9
  call void @BKE_mask_coord_from_movieclip(ptr noundef %56, ptr noundef nonnull %57, ptr noundef nonnull %5, ptr noundef nonnull %35) #19
  br label %58

58:                                               ; preds = %40, %50, %42
  %59 = load float, ptr %3, align 4, !tbaa !48
  %60 = load float, ptr %4, align 4, !tbaa !48
  %61 = load <2 x float>, ptr %5, align 8, !tbaa !48
  %62 = insertelement <2 x float> poison, float %59, i64 0
  %63 = insertelement <2 x float> %62, float %60, i64 1
  %64 = fmul <2 x float> %61, %63
  store <2 x float> %64, ptr %1, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  br label %92

65:                                               ; preds = %34
  %66 = and i32 %37, 256
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %83, label %68

68:                                               ; preds = %65
  %69 = load i8, ptr %6, align 8, !tbaa !53
  %70 = icmp eq i8 %69, 6
  br i1 %70, label %71, label %92

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %73 = load ptr, ptr %72, align 8, !tbaa !153
  %74 = getelementptr inbounds %struct.ARegion, ptr %73, i64 0, i32 2
  %75 = load float, ptr %35, align 4, !tbaa !48
  %76 = call float @UI_view2d_view_to_region_x(ptr noundef nonnull %74, float noundef %75) #19
  store float %76, ptr %1, align 4, !tbaa !48
  %77 = load ptr, ptr %72, align 8, !tbaa !153
  %78 = getelementptr inbounds %struct.ARegion, ptr %77, i64 0, i32 2
  %79 = getelementptr inbounds float, ptr %35, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !48
  %81 = call float @UI_view2d_view_to_region_y(ptr noundef nonnull %78, float noundef %80) #19
  %82 = getelementptr inbounds float, ptr %1, i64 1
  store float %81, ptr %82, align 4, !tbaa !48
  br label %92

83:                                               ; preds = %65
  %84 = load float, ptr %35, align 4, !tbaa !48
  %85 = load float, ptr %3, align 4, !tbaa !48
  %86 = fmul float %84, %85
  store float %86, ptr %1, align 4, !tbaa !48
  %87 = getelementptr inbounds float, ptr %35, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !48
  %89 = load float, ptr %4, align 4, !tbaa !48
  %90 = fmul float %88, %89
  %91 = getelementptr inbounds float, ptr %1, i64 1
  store float %90, ptr %91, align 4, !tbaa !48
  br label %92

92:                                               ; preds = %2, %58, %68, %71, %83
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret void
}

; Function Attrs: optsize
declare void @ED_space_image_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_space_image_get_uv_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_space_clip_get_aspect_dimension_aware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_space_clip_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_mask_coord_from_image(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_mask_coord_from_movieclip(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @UI_view2d_view_to_region_x(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @UI_view2d_view_to_region_y(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @calculateCenterCursorGraph2D(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %4 = load ptr, ptr %3, align 8, !tbaa !139
  %5 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !140
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !308
  %11 = sitofp i32 %10 to float
  store float %11, ptr %1, align 4, !tbaa !48
  %12 = getelementptr inbounds %struct.SpaceIpo, ptr %6, i64 0, i32 12
  %13 = load float, ptr %12, align 8, !tbaa !309
  %14 = getelementptr inbounds float, ptr %1, i64 1
  store float %13, ptr %14, align 4, !tbaa !48
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @calculateCenterMedian(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #9 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i64 12, i1 false)
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !109
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = zext nneg i32 %5 to i64
  br label %11

11:                                               ; preds = %7, %21
  %12 = phi i64 [ 0, %7 ], [ %23, %21 ]
  %13 = phi i32 [ 0, %7 ], [ %22, %21 ]
  %14 = getelementptr inbounds %struct.TransData, ptr %9, i64 %12, i32 16
  %15 = load i32, ptr %14, align 8, !tbaa !132
  %16 = and i32 %15, 513
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.TransData, ptr %9, i64 %12, i32 7
  call fastcc void @add_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %19) #18
  %20 = add nsw i32 %13, 1
  br label %21

21:                                               ; preds = %11, %18
  %22 = phi i32 [ %20, %18 ], [ %13, %11 ]
  %23 = add nuw nsw i64 %12, 1
  %24 = icmp eq i64 %23, %10
  br i1 %24, label %25, label %11, !llvm.loop !310

25:                                               ; preds = %21
  %26 = icmp eq i32 %22, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  %28 = sitofp i32 %22 to float
  %29 = fdiv float 1.000000e+00, %28
  call fastcc void @mul_v3_fl(ptr noundef nonnull %3, float noundef %29) #18
  br label %30

30:                                               ; preds = %2, %27, %25
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !311 {
  %3 = load float, ptr %1, align 4, !tbaa !48
  %4 = load float, ptr %0, align 4, !tbaa !48
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !48
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !48
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !48
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !48
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !48
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !48
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @calculateCenterBound(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !109
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  br label %10

10:                                               ; preds = %8, %25
  %11 = phi i32 [ %6, %8 ], [ %26, %25 ]
  %12 = phi i64 [ 0, %8 ], [ %27, %25 ]
  %13 = icmp eq i64 %12, 0
  %14 = load ptr, ptr %9, align 8, !tbaa !97
  br i1 %13, label %23, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.TransData, ptr %14, i64 %12, i32 16
  %17 = load i32, ptr %16, align 8, !tbaa !132
  %18 = and i32 %17, 513
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.TransData, ptr %14, i64 %12, i32 7
  call void @minmax_v3v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %21) #19
  %22 = load i32, ptr %5, align 8, !tbaa !109
  br label %25

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.TransData, ptr %14, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %24) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %24) #18
  br label %25

25:                                               ; preds = %23, %20, %15
  %26 = phi i32 [ %11, %23 ], [ %22, %20 ], [ %11, %15 ]
  %27 = add nuw nsw i64 %12, 1
  %28 = sext i32 %26 to i64
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %10, label %30, !llvm.loop !312

30:                                               ; preds = %25, %2
  call void @mid_v3_v3v3(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  ret void
}

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @calculateCenterActive(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMEditSelection, align 8
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  %8 = icmp eq ptr %7, null
  br i1 %8, label %64, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !78
  switch i16 %11, label %130 [
    i16 1, label %12
    i16 25, label %20
    i16 2, label %35
    i16 3, label %35
    i16 5, label %43
    i16 22, label %58
  ]

12:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  %13 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %7) #19
  %14 = load ptr, ptr %13, align 8, !tbaa !313
  %15 = call zeroext i8 @BM_select_history_active_get(ptr noundef %14, ptr noundef nonnull %4) #19
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  call void @BM_editselection_center(ptr noundef nonnull %4, ptr noundef %2) #19
  br label %18

18:                                               ; preds = %17, %12
  %19 = phi i8 [ 1, %17 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  br label %130

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !81
  %23 = getelementptr inbounds %struct.bArmature, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !315
  %25 = icmp eq ptr %24, null
  br i1 %25, label %130, label %26

26:                                               ; preds = %20
  %27 = icmp eq i8 %1, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.EditBone, ptr %24, i64 0, i32 9
  %30 = load i32, ptr %29, align 4, !tbaa !99
  %31 = and i32 %30, 3
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %130, label %33

33:                                               ; preds = %28, %26
  %34 = getelementptr inbounds %struct.EditBone, ptr %24, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %34) #18
  br label %130

35:                                               ; preds = %9, %9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  %36 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !81
  %38 = call zeroext i8 @ED_curve_active_center(ptr noundef %37, ptr noundef nonnull %5) #19
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %5) #18
  br label %41

41:                                               ; preds = %40, %35
  %42 = phi i8 [ 1, %40 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  br label %130

43:                                               ; preds = %9
  %44 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %45 = load ptr, ptr %44, align 8, !tbaa !81
  %46 = getelementptr inbounds %struct.MetaBall, ptr %45, i64 0, i32 18
  %47 = load ptr, ptr %46, align 8, !tbaa !316
  %48 = icmp eq ptr %47, null
  br i1 %48, label %130, label %49

49:                                               ; preds = %43
  %50 = icmp eq i8 %1, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.MetaElem, ptr %47, i64 0, i32 4
  %53 = load i16, ptr %52, align 2, !tbaa !318
  %54 = and i16 %53, 1
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %130, label %56

56:                                               ; preds = %51, %49
  %57 = getelementptr inbounds %struct.MetaElem, ptr %47, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %57) #18
  br label %130

58:                                               ; preds = %9
  %59 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %60 = load ptr, ptr %59, align 8, !tbaa !81
  %61 = tail call ptr @BKE_lattice_active_point_get(ptr noundef %60) #19
  %62 = icmp eq ptr %61, null
  br i1 %62, label %130, label %63

63:                                               ; preds = %58
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %61) #18
  br label %130

64:                                               ; preds = %3
  %65 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !94
  %67 = and i32 %66, 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %93, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %71 = load ptr, ptr %70, align 8, !tbaa !55
  %72 = getelementptr inbounds %struct.Scene, ptr %71, i64 0, i32 6
  %73 = load ptr, ptr %72, align 8, !tbaa !56
  %74 = icmp eq ptr %73, null
  br i1 %74, label %130, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.Base, ptr %73, i64 0, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !128
  %78 = icmp eq ptr %77, null
  br i1 %78, label %130, label %79

79:                                               ; preds = %75
  %80 = tail call ptr @BKE_pose_channel_active(ptr noundef nonnull %77) #19
  %81 = icmp eq ptr %80, null
  br i1 %81, label %130, label %82

82:                                               ; preds = %79
  %83 = icmp eq i8 %1, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.bPoseChannel, ptr %80, i64 0, i32 12
  %86 = load ptr, ptr %85, align 8, !tbaa !320
  %87 = getelementptr inbounds %struct.Bone, ptr %86, i64 0, i32 10
  %88 = load i32, ptr %87, align 8, !tbaa !322
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %130, label %91

91:                                               ; preds = %84, %82
  %92 = getelementptr inbounds %struct.bPoseChannel, ptr %80, i64 0, i32 31
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %92) #18
  br label %130

93:                                               ; preds = %64
  %94 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %95 = load i32, ptr %94, align 8, !tbaa !52
  %96 = and i32 %95, 256
  %97 = icmp eq i32 %96, 0
  %98 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %99 = load ptr, ptr %98, align 8, !tbaa !55
  br i1 %97, label %113, label %100

100:                                              ; preds = %93
  %101 = tail call ptr @BKE_paint_get_active(ptr noundef %99) #19
  %102 = load ptr, ptr %101, align 8, !tbaa !246
  %103 = getelementptr inbounds %struct.Brush, ptr %102, i64 0, i32 9
  %104 = load ptr, ptr %103, align 8, !tbaa !324
  %105 = getelementptr inbounds %struct.PaintCurve, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !325
  %107 = getelementptr inbounds %struct.PaintCurve, ptr %104, i64 0, i32 3
  %108 = load i32, ptr %107, align 4, !tbaa !327
  %109 = sext i32 %108 to i64
  %110 = getelementptr %struct.PaintCurvePoint, ptr %106, i64 %109
  %111 = getelementptr %struct.PaintCurvePoint, ptr %110, i64 -1, i32 0, i32 0, i64 1
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef %111) #18
  %112 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %112, align 4, !tbaa !48
  br label %130

113:                                              ; preds = %93
  %114 = getelementptr inbounds %struct.Scene, ptr %99, i64 0, i32 6
  %115 = load ptr, ptr %114, align 8, !tbaa !56
  %116 = icmp eq ptr %115, null
  br i1 %116, label %130, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.Base, ptr %115, i64 0, i32 7
  %119 = load ptr, ptr %118, align 8, !tbaa !128
  %120 = icmp eq ptr %119, null
  br i1 %120, label %130, label %121

121:                                              ; preds = %117
  %122 = icmp eq i8 %1, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.Object, ptr %119, i64 0, i32 53
  %125 = load i16, ptr %124, align 4, !tbaa !328
  %126 = and i16 %125, 1
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %123, %121
  %129 = getelementptr inbounds %struct.Object, ptr %119, i64 0, i32 47, i64 3
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %129) #18
  br label %130

130:                                              ; preds = %113, %69, %117, %123, %128, %75, %91, %84, %79, %58, %63, %43, %51, %56, %20, %28, %33, %100, %18, %41, %9
  %131 = phi i8 [ 0, %9 ], [ %42, %41 ], [ %19, %18 ], [ 1, %100 ], [ 1, %33 ], [ 0, %28 ], [ 0, %20 ], [ 1, %56 ], [ 0, %51 ], [ 0, %43 ], [ 1, %63 ], [ 0, %58 ], [ 0, %75 ], [ 1, %91 ], [ 0, %84 ], [ 0, %79 ], [ 1, %128 ], [ 0, %123 ], [ 0, %117 ], [ 0, %69 ], [ 0, %113 ]
  ret i8 %131
}

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BM_select_history_active_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_editselection_center(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ED_curve_active_center(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_lattice_active_point_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_pose_channel_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_paint_get_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @calculateCenter(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x float], align 8
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 32
  %5 = load i16, ptr %4, align 2, !tbaa !244
  switch i16 %5, label %26 [
    i16 0, label %6
    i16 3, label %8
    i16 1, label %10
    i16 2, label %19
    i16 4, label %21
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  tail call void @calculateCenterBound(ptr noundef nonnull %0, ptr noundef nonnull %7) #18
  br label %26

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  tail call void @calculateCenterMedian(ptr noundef nonnull %0, ptr noundef nonnull %9) #18
  br label %26

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %12 = load i8, ptr %11, align 8, !tbaa !53
  switch i8 %12, label %17 [
    i8 6, label %13
    i8 20, label %13
    i8 2, label %15
  ]

13:                                               ; preds = %10, %10
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  tail call void @calculateCenterCursor2D(ptr noundef nonnull %0, ptr noundef nonnull %14) #18
  br label %26

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  tail call void @calculateCenterCursorGraph2D(ptr noundef nonnull %0, ptr noundef nonnull %16) #18
  br label %26

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  tail call void @calculateCenterCursor(ptr noundef nonnull %0, ptr noundef nonnull %18) #18
  br label %26

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  tail call void @calculateCenterMedian(ptr noundef nonnull %0, ptr noundef nonnull %20) #18
  br label %26

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %23 = tail call zeroext i8 @calculateCenterActive(ptr noundef nonnull %0, i8 noundef zeroext 0, ptr noundef nonnull %22) #18, !range !203
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @calculateCenterMedian(ptr noundef nonnull %0, ptr noundef nonnull %22) #18
  br label %26

26:                                               ; preds = %25, %21, %13, %17, %15, %1, %19, %8, %6
  tail call void @calculateCenter2D(ptr noundef nonnull %0) #18
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 5
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %27, ptr noundef nonnull %28) #18
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !94
  %31 = and i32 %30, 6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %35 = load ptr, ptr %34, align 8, !tbaa !77
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %39 = load ptr, ptr %38, align 8, !tbaa !115
  br label %40

40:                                               ; preds = %33, %37
  %41 = phi ptr [ %39, %37 ], [ %35, %33 ]
  %42 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 47
  tail call void @mul_m4_v3(ptr noundef nonnull %42, ptr noundef nonnull %27) #19
  %43 = load i32, ptr %29, align 4, !tbaa !94
  br label %44

44:                                               ; preds = %40, %26
  %45 = phi i32 [ %43, %40 ], [ %30, %26 ]
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %78, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %50 = load i8, ptr %49, align 8, !tbaa !53
  %51 = icmp eq i8 %50, 1
  br i1 %51, label %52, label %78

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %54 = load ptr, ptr %53, align 8, !tbaa !153
  %55 = icmp eq ptr %54, null
  br i1 %55, label %78, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.ARegion, ptr %54, i64 0, i32 8
  %58 = load i16, ptr %57, align 2, !tbaa !158
  %59 = icmp ne i16 %58, 0
  %60 = and i32 %45, 16
  %61 = icmp eq i32 %60, 0
  %62 = or i1 %61, %59
  br i1 %62, label %78, label %63

63:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #17
  %64 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %64) #18
  call fastcc void @normalize_v3(ptr noundef nonnull %2) #18
  %65 = load <2 x float>, ptr %28, align 4, !tbaa !48
  %66 = load <2 x float>, ptr %2, align 8, !tbaa !48
  %67 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %66, <2 x float> <float -6.000000e+00, float -6.000000e+00>, <2 x float> %65)
  store <2 x float> %67, ptr %2, align 8, !tbaa !48
  %68 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 2
  %69 = load float, ptr %68, align 4, !tbaa !48
  %70 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  %71 = load float, ptr %70, align 8, !tbaa !48
  %72 = tail call float @llvm.fmuladd.f32(float %71, float -6.000000e+00, float %69)
  store float %72, ptr %70, align 8, !tbaa !48
  %73 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 21
  call void @projectFloatView(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %73) #19
  %74 = load i32, ptr %0, align 8, !tbaa !102
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  call fastcc void @copy_v3_v3(ptr noundef nonnull %28, ptr noundef nonnull %2) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %27, ptr noundef nonnull %28) #18
  br label %77

77:                                               ; preds = %76, %63
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #17
  br label %78

78:                                               ; preds = %48, %52, %56, %77, %44
  %79 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %80 = load i8, ptr %79, align 8, !tbaa !53
  %81 = icmp eq i8 %80, 1
  br i1 %81, label %82, label %110

82:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  %83 = load i32, ptr %29, align 4, !tbaa !94
  %84 = and i32 %83, 6
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %88 = load ptr, ptr %87, align 8, !tbaa !77
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %92 = load ptr, ptr %91, align 8, !tbaa !115
  br label %93

93:                                               ; preds = %86, %90
  %94 = phi ptr [ %92, %90 ], [ %88, %86 ]
  %95 = getelementptr inbounds %struct.Object, ptr %94, i64 0, i32 47
  call void @mul_v3_m4v3(ptr noundef nonnull %3, ptr noundef nonnull %95, ptr noundef nonnull %28) #19
  br label %97

96:                                               ; preds = %82
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %28) #18
  br label %97

97:                                               ; preds = %96, %93
  %98 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %99 = load ptr, ptr %98, align 8, !tbaa !153
  %100 = getelementptr inbounds %struct.ARegion, ptr %99, i64 0, i32 8
  %101 = load i16, ptr %100, align 2, !tbaa !158
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.ARegion, ptr %99, i64 0, i32 30
  %105 = load ptr, ptr %104, align 8, !tbaa !329
  %106 = call float @ED_view3d_calc_zfac(ptr noundef %105, ptr noundef nonnull %3, ptr noundef null) #19
  br label %107

107:                                              ; preds = %97, %103
  %108 = phi float [ %106, %103 ], [ 0.000000e+00, %97 ]
  %109 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 62
  store float %108, ptr %109, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  br label %110

110:                                              ; preds = %107, %78
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @ED_view3d_calc_zfac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @calculatePropRatio(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !94
  %6 = and i32 %5, 2048
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !109
  %10 = icmp sgt i32 %9, 0
  br i1 %7, label %18, label %11

11:                                               ; preds = %1
  br i1 %10, label %12, label %105

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 46
  %14 = and i32 %5, 4096
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 18
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 45
  br label %19

18:                                               ; preds = %1
  br i1 %10, label %117, label %124

19:                                               ; preds = %12, %100
  %20 = phi ptr [ %3, %12 ], [ %102, %100 ]
  %21 = phi i32 [ 0, %12 ], [ %101, %100 ]
  %22 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 16
  %23 = load i32, ptr %22, align 8, !tbaa !132
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 2
  store float 1.000000e+00, ptr %27, align 8, !tbaa !330
  br label %100

28:                                               ; preds = %19
  %29 = load i32, ptr %4, align 4, !tbaa !94
  %30 = and i32 %29, 524288
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !283
  %35 = load float, ptr %34, align 4, !tbaa !48
  %36 = load i16, ptr %13, align 8, !tbaa !257
  %37 = sitofp i16 %36 to float
  %38 = fmul float %35, %37
  %39 = fcmp olt float %38, 0xBEE4F8B580000000
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = or i32 %23, 2048
  store i32 %41, ptr %22, align 8, !tbaa !132
  %42 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 2
  store float 0.000000e+00, ptr %42, align 8, !tbaa !330
  tail call fastcc void @restoreElement(ptr noundef nonnull %20) #18
  br label %100

43:                                               ; preds = %32, %28
  br i1 %15, label %51, label %44

44:                                               ; preds = %43
  %45 = and i32 %23, 16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load float, ptr %20, align 8, !tbaa !331
  %49 = load float, ptr %16, align 4, !tbaa !266
  %50 = fcmp ogt float %48, %49
  br i1 %50, label %56, label %58

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 1
  %53 = load float, ptr %52, align 4, !tbaa !332
  %54 = load float, ptr %16, align 4, !tbaa !266
  %55 = fcmp ogt float %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %51, %47, %44
  %57 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 2
  store float 0.000000e+00, ptr %57, align 8, !tbaa !330
  tail call fastcc void @restoreElement(ptr noundef nonnull %20) #18
  br label %100

58:                                               ; preds = %47
  %59 = and i32 %23, -22
  store i32 %59, ptr %22, align 8, !tbaa !132
  %60 = fsub float %49, %48
  %61 = fdiv float %60, %49
  br label %66

62:                                               ; preds = %51
  %63 = and i32 %23, -6
  store i32 %63, ptr %22, align 8, !tbaa !132
  %64 = fsub float %54, %53
  %65 = fdiv float %64, %54
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi float [ %61, %58 ], [ %65, %62 ]
  %68 = fcmp olt float %67, 0.000000e+00
  %69 = select i1 %68, float 0.000000e+00, float %67
  %70 = load i16, ptr %17, align 2, !tbaa !267
  switch i16 %70, label %98 [
    i16 3, label %71
    i16 0, label %74
    i16 2, label %81
    i16 4, label %84
    i16 5, label %86
    i16 1, label %88
    i16 6, label %94
  ]

71:                                               ; preds = %66
  %72 = fmul float %69, %69
  %73 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 2
  store float %72, ptr %73, align 8, !tbaa !330
  br label %100

74:                                               ; preds = %66
  %75 = fmul float %69, 3.000000e+00
  %76 = fmul float %69, -2.000000e+00
  %77 = fmul float %69, %76
  %78 = fmul float %69, %77
  %79 = tail call float @llvm.fmuladd.f32(float %75, float %69, float %78)
  %80 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 2
  store float %79, ptr %80, align 8, !tbaa !330
  br label %100

81:                                               ; preds = %66
  %82 = tail call float @llvm.sqrt.f32(float %69)
  %83 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 2
  store float %82, ptr %83, align 8, !tbaa !330
  br label %100

84:                                               ; preds = %66
  %85 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 2
  store float %69, ptr %85, align 8, !tbaa !330
  br label %100

86:                                               ; preds = %66
  %87 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 2
  store float 1.000000e+00, ptr %87, align 8, !tbaa !330
  br label %100

88:                                               ; preds = %66
  %89 = fneg float %69
  %90 = fmul float %69, %89
  %91 = tail call float @llvm.fmuladd.f32(float %69, float 2.000000e+00, float %90)
  %92 = tail call float @sqrtf(float noundef %91) #19
  %93 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 2
  store float %92, ptr %93, align 8, !tbaa !330
  br label %100

94:                                               ; preds = %66
  %95 = tail call float @BLI_frand() #19
  %96 = fmul float %69, %95
  %97 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 2
  store float %96, ptr %97, align 8, !tbaa !330
  br label %100

98:                                               ; preds = %66
  %99 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 2
  store float 1.000000e+00, ptr %99, align 8, !tbaa !330
  br label %100

100:                                              ; preds = %26, %56, %98, %94, %88, %86, %84, %81, %74, %71, %40
  %101 = add nuw nsw i32 %21, 1
  %102 = getelementptr inbounds %struct.TransData, ptr %20, i64 1
  %103 = load i32, ptr %8, align 8, !tbaa !109
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %19, label %105, !llvm.loop !333

105:                                              ; preds = %100, %11
  %106 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 45
  %107 = load i16, ptr %106, align 2, !tbaa !267
  %108 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  switch i16 %107, label %116 [
    i16 3, label %109
    i16 0, label %110
    i16 2, label %111
    i16 4, label %112
    i16 5, label %113
    i16 1, label %114
    i16 6, label %115
  ]

109:                                              ; preds = %105
  store i64 11664110607946536, ptr %108, align 1
  br label %126

110:                                              ; preds = %105
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %108, ptr noundef nonnull align 1 dereferenceable(9) @.str.10, i64 9, i1 false) #19
  br label %126

111:                                              ; preds = %105
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %108, ptr noundef nonnull align 1 dereferenceable(7) @.str.11, i64 7, i1 false) #19
  br label %126

112:                                              ; preds = %105
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %108, ptr noundef nonnull align 1 dereferenceable(9) @.str.12, i64 9, i1 false) #19
  br label %126

113:                                              ; preds = %105
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %108, ptr noundef nonnull align 1 dereferenceable(11) @.str.13, i64 11, i1 false) #19
  br label %126

114:                                              ; preds = %105
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %108, ptr noundef nonnull align 1 dereferenceable(9) @.str.14, i64 9, i1 false) #19
  br label %126

115:                                              ; preds = %105
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %108, ptr noundef nonnull align 1 dereferenceable(9) @.str.15, i64 9, i1 false) #19
  br label %126

116:                                              ; preds = %105
  store i8 0, ptr %108, align 8, !tbaa !220
  br label %126

117:                                              ; preds = %18, %117
  %118 = phi ptr [ %122, %117 ], [ %3, %18 ]
  %119 = phi i32 [ %121, %117 ], [ 0, %18 ]
  %120 = getelementptr inbounds %struct.TransData, ptr %118, i64 0, i32 2
  store float 1.000000e+00, ptr %120, align 8, !tbaa !330
  %121 = add nuw nsw i32 %119, 1
  %122 = getelementptr inbounds %struct.TransData, ptr %118, i64 1
  %123 = icmp eq i32 %121, %9
  br i1 %123, label %124, label %117, !llvm.loop !334

124:                                              ; preds = %117, %18
  %125 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  store i8 0, ptr %125, align 8, !tbaa !220
  br label %126

126:                                              ; preds = %109, %110, %111, %112, %113, %114, %115, %116, %124
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare float @BLI_frand() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !335 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #18
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #19
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #18
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #18
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !336 {
  %3 = load float, ptr %0, align 4, !tbaa !48
  %4 = load float, ptr %1, align 4, !tbaa !48
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !48
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !48
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !48
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !48
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #2 !PGOFuncName !337 {
  %4 = load float, ptr %1, align 4, !tbaa !48
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !48
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !48
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !48
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !48
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_curve_editNurbs_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clipMirrorModifier(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !338 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = icmp eq ptr %9, null
  br i1 %10, label %157, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %13 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %15 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %16 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %17 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %18 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  br label %19

19:                                               ; preds = %11, %151
  %20 = phi ptr [ %9, %11 ], [ %155, %151 ]
  %21 = phi float [ 0.000000e+00, %11 ], [ %154, %151 ]
  %22 = phi float [ 0.000000e+00, %11 ], [ %153, %151 ]
  %23 = phi float [ 0.000000e+00, %11 ], [ %152, %151 ]
  %24 = getelementptr inbounds %struct.ModifierData, ptr %20, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !339
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %27, label %151

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.ModifierData, ptr %20, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !341
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %151, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.MirrorModifierData, ptr %20, i64 0, i32 2
  %34 = load i16, ptr %33, align 2, !tbaa !342
  %35 = zext i16 %34 to i32
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %151, label %38

38:                                               ; preds = %32
  %39 = and i32 %35, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.MirrorModifierData, ptr %20, i64 0, i32 3
  %43 = load float, ptr %42, align 4, !tbaa !344
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
  %52 = load float, ptr %51, align 4, !tbaa !344
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
  %61 = load float, ptr %60, align 4, !tbaa !344
  br label %64

62:                                               ; preds = %53
  %63 = icmp eq i32 %55, 0
  br i1 %63, label %151, label %64

64:                                               ; preds = %58, %62
  %65 = phi i32 [ %59, %58 ], [ %55, %62 ]
  %66 = phi float [ %61, %58 ], [ %21, %62 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  %67 = load ptr, ptr %12, align 8, !tbaa !97
  %68 = getelementptr inbounds %struct.MirrorModifierData, ptr %20, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !345
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  %72 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 47
  %73 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %72) #19
  call void @mul_m4_m4m4(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %13) #19
  %74 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  br label %75

75:                                               ; preds = %71, %64
  %76 = load i32, ptr %14, align 8, !tbaa !109
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %150

78:                                               ; preds = %75
  %79 = and i32 %65, 1
  %80 = icmp eq i32 %79, 0
  %81 = and i32 %65, 2
  %82 = icmp eq i32 %81, 0
  %83 = and i32 %65, 4
  %84 = icmp eq i32 %83, 0
  br label %85

85:                                               ; preds = %78, %145
  %86 = phi ptr [ %67, %78 ], [ %147, %145 ]
  %87 = phi i32 [ 0, %78 ], [ %146, %145 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  %88 = getelementptr inbounds %struct.TransData, ptr %86, i64 0, i32 16
  %89 = load i32, ptr %88, align 8, !tbaa !132
  %90 = and i32 %89, 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %144

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.TransData, ptr %86, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !283
  %95 = icmp eq ptr %94, null
  br i1 %95, label %144, label %96

96:                                               ; preds = %92
  %97 = and i32 %89, 2048
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %145

99:                                               ; preds = %96
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %94) #18
  %100 = getelementptr inbounds %struct.TransData, ptr %86, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %100) #18
  %101 = load ptr, ptr %68, align 8, !tbaa !345
  %102 = icmp eq ptr %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %6) #19
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %7) #19
  br label %104

104:                                              ; preds = %103, %99
  br i1 %80, label %114, label %105

105:                                              ; preds = %104
  %106 = load float, ptr %7, align 4, !tbaa !48
  %107 = call float @llvm.fabs.f32(float %106)
  %108 = fcmp ugt float %107, %45
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load float, ptr %6, align 4, !tbaa !48
  %111 = fmul float %106, %110
  %112 = fcmp olt float %111, 0.000000e+00
  br i1 %112, label %113, label %114

113:                                              ; preds = %109, %105
  store float 0.000000e+00, ptr %6, align 4, !tbaa !48
  br label %114

114:                                              ; preds = %109, %113, %104
  %115 = phi i32 [ 1, %113 ], [ 0, %109 ], [ 0, %104 ]
  br i1 %82, label %125, label %116

116:                                              ; preds = %114
  %117 = load float, ptr %15, align 4, !tbaa !48
  %118 = call float @llvm.fabs.f32(float %117)
  %119 = fcmp ugt float %118, %54
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load float, ptr %16, align 4, !tbaa !48
  %122 = fmul float %117, %121
  %123 = fcmp olt float %122, 0.000000e+00
  br i1 %123, label %124, label %125

124:                                              ; preds = %120, %116
  store float 0.000000e+00, ptr %16, align 4, !tbaa !48
  br label %125

125:                                              ; preds = %120, %124, %114
  %126 = phi i32 [ 1, %124 ], [ %115, %120 ], [ %115, %114 ]
  br i1 %84, label %136, label %127

127:                                              ; preds = %125
  %128 = load float, ptr %17, align 4, !tbaa !48
  %129 = call float @llvm.fabs.f32(float %128)
  %130 = fcmp ugt float %129, %66
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load float, ptr %18, align 4, !tbaa !48
  %133 = fmul float %128, %132
  %134 = fcmp olt float %133, 0.000000e+00
  br i1 %134, label %135, label %136

135:                                              ; preds = %127, %131
  store float 0.000000e+00, ptr %18, align 4, !tbaa !48
  br label %138

136:                                              ; preds = %131, %125
  %137 = icmp eq i32 %126, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %135, %136
  %139 = load ptr, ptr %68, align 8, !tbaa !345
  %140 = icmp eq ptr %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %138
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %6) #19
  br label %142

142:                                              ; preds = %141, %138
  %143 = load ptr, ptr %93, align 8, !tbaa !283
  call fastcc void @copy_v3_v3(ptr noundef %143, ptr noundef nonnull %6) #18
  br label %145

144:                                              ; preds = %92, %85
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  br label %150

145:                                              ; preds = %96, %142, %136
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  %146 = add nuw nsw i32 %87, 1
  %147 = getelementptr inbounds %struct.TransData, ptr %86, i64 1
  %148 = load i32, ptr %14, align 8, !tbaa !109
  %149 = icmp slt i32 %146, %148
  br i1 %149, label %85, label %150, !llvm.loop !346

150:                                              ; preds = %145, %75, %144
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  br label %151

151:                                              ; preds = %32, %150, %62, %19, %27
  %152 = phi float [ %23, %27 ], [ %23, %19 ], [ %45, %150 ], [ %45, %62 ], [ %23, %32 ]
  %153 = phi float [ %22, %27 ], [ %22, %19 ], [ %54, %150 ], [ %54, %62 ], [ %22, %32 ]
  %154 = phi float [ %21, %27 ], [ %21, %19 ], [ %66, %150 ], [ %21, %62 ], [ %21, %32 ]
  %155 = load ptr, ptr %20, align 8, !tbaa !98
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %19, !llvm.loop !347

157:                                              ; preds = %151, %2
  ret void
}

; Function Attrs: optsize
declare void @applyProject(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_nurb_handles_calc(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_nurb_test2D(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @outside_lattice(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @editbmesh_apply_to_mirror(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !348 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !109
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %44

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  br label %8

8:                                                ; preds = %5, %40
  %9 = phi i32 [ %41, %40 ], [ 0, %5 ]
  %10 = phi ptr [ %42, %40 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.TransData, ptr %10, i64 0, i32 16
  %12 = load i32, ptr %11, align 8, !tbaa !132
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.TransData, ptr %10, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !283
  %18 = icmp eq ptr %17, null
  br i1 %18, label %44, label %19

19:                                               ; preds = %15
  %20 = and i32 %12, 2048
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.TransData, ptr %10, i64 0, i32 15
  %24 = load ptr, ptr %23, align 8, !tbaa !110
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = load float, ptr %17, align 4, !tbaa !48
  %28 = fneg float %27
  %29 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 2
  store float %28, ptr %29, align 8, !tbaa !48
  %30 = getelementptr inbounds float, ptr %17, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !48
  %32 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 2, i64 1
  store float %31, ptr %32, align 4, !tbaa !48
  %33 = getelementptr inbounds float, ptr %17, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !48
  %35 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 2, i64 2
  store float %34, ptr %35, align 8, !tbaa !48
  br label %36

36:                                               ; preds = %26, %22
  %37 = and i32 %12, 65536
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  store float 0.000000e+00, ptr %17, align 4, !tbaa !48
  br label %40

40:                                               ; preds = %36, %39, %19
  %41 = add nuw nsw i32 %9, 1
  %42 = getelementptr inbounds %struct.TransData, ptr %10, i64 1
  %43 = icmp eq i32 %41, %3
  br i1 %43, label %44, label %8, !llvm.loop !349

44:                                               ; preds = %40, %8, %15, %1
  ret void
}

; Function Attrs: optsize
declare void @EDBM_mesh_normals_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_editmesh_tessface_calc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !350 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #18
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  ret float %4
}

; Function Attrs: optsize
declare void @rotation_between_vecs_to_quat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @ED_rollBoneToVector(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare float @angle_compat_rad(float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @transform_armature_mirror_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @restoreBones(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @animrecord_check_state(ptr noundef readonly %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #0 !PGOFuncName !351 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = icmp eq ptr %2, null
  br i1 %6, label %58, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmTimer, ptr %2, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !352
  %10 = icmp eq ptr %0, null
  %11 = icmp eq ptr %1, null
  %12 = or i1 %10, %11
  %13 = icmp eq ptr %9, null
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %58, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !118
  %18 = getelementptr inbounds %struct.ToolSettings, ptr %17, i64 0, i32 22
  %19 = load i16, ptr %18, align 2, !tbaa !354
  %20 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2
  %21 = and i16 %20, 1
  %22 = icmp ne i16 %21, 0
  %23 = and i16 %19, 1025
  %24 = icmp ne i16 %23, 1024
  %25 = select i1 %24, i1 true, i1 %22
  br i1 %25, label %58, label %26

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.ScreenAnimData, ptr %9, i64 0, i32 3
  %28 = load i16, ptr %27, align 4, !tbaa !355
  %29 = and i16 %28, 2
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %58, label %31

31:                                               ; preds = %26
  %32 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %1) #19
  %33 = load ptr, ptr %32, align 8, !tbaa !357
  %34 = icmp eq ptr %33, null
  br i1 %34, label %58, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.AnimData, ptr %32, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !359
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  call void @calc_action_range(ptr noundef nonnull %33, ptr noundef nonnull %4, ptr noundef nonnull %5, i16 noundef signext 1) #19
  %41 = load float, ptr %5, align 4, !tbaa !48
  %42 = load float, ptr %4, align 4, !tbaa !48
  %43 = fadd float %42, 2.000000e+00
  %44 = fcmp ogt float %41, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load ptr, ptr %32, align 8, !tbaa !357
  %47 = call ptr @add_nlastrip_to_stack(ptr noundef nonnull %32, ptr noundef %46) #19
  %48 = load ptr, ptr %32, align 8, !tbaa !357
  %49 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 6
  %50 = load i32, ptr %49, align 4, !tbaa !360
  %51 = add nsw i32 %50, -1
  store i32 %51, ptr %49, align 4, !tbaa !360
  store ptr null, ptr %32, align 8, !tbaa !357
  %52 = getelementptr inbounds %struct.NlaStrip, ptr %47, i64 0, i32 19
  store i16 2, ptr %52, align 2, !tbaa !362
  %53 = getelementptr inbounds %struct.NlaStrip, ptr %47, i64 0, i32 23
  %54 = load i32, ptr %53, align 8, !tbaa !363
  %55 = and i32 %54, -1028
  store i32 %55, ptr %53, align 8, !tbaa !363
  %56 = getelementptr inbounds %struct.AnimData, ptr %32, i64 0, i32 10
  store i16 2, ptr %56, align 2, !tbaa !364
  br label %57

57:                                               ; preds = %45, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  br label %58

58:                                               ; preds = %3, %15, %26, %57, %35, %31, %7
  ret void
}

; Function Attrs: optsize
declare void @autokeyframe_pose_cb_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BIK_clear_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_pose_where_is(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @PE_get_current(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @flushTransParticles(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @autokeyframe_ob_cb_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !365 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #18
  %3 = tail call float @sqrtf(float noundef %2) #19
  ret float %3
}

; Function Attrs: optsize
declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @calc_action_range(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @add_nlastrip_to_stack(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @recalcData_mask_common(ptr noundef %0) unnamed_addr #0 !PGOFuncName !366 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 53
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  %4 = tail call ptr @CTX_data_edit_mask(ptr noundef %3) #19
  tail call void @flushTransMasking(ptr noundef %0) #19
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #19
  ret void
}

; Function Attrs: optsize
declare void @flushTransUVs(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_uvedit_live_unwrap_re_solve() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_edit_mask(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @flushTransMasking(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ANIM_animdata_context_getdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @flushTransIntFrameActionData(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ANIM_list_elem_update(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ANIM_id_update(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_nlameta_flush_transforms(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #11

; Function Attrs: optsize
declare i32 @ED_markers_find_nearest_marker_time(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_nlatrack_has_space(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_nlatrack_add_strip(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequence_invalidate_dependent(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequencer_preprocessed_cache_cleanup() local_unnamed_addr #3

; Function Attrs: optsize
declare void @flushTransSeq(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @flushTransGraphData(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @fcu_test_selected(ptr nocapture noundef readonly %0) unnamed_addr #14 !PGOFuncName !367 {
  %2 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !368
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !370
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %5, %26
  %10 = phi i32 [ %27, %26 ], [ 0, %5 ]
  %11 = phi ptr [ %28, %26 ], [ %3, %5 ]
  %12 = getelementptr inbounds %struct.BezTriple, ptr %11, i64 0, i32 8
  %13 = load i8, ptr %12, align 4, !tbaa !371
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.BezTriple, ptr %11, i64 0, i32 7
  %18 = load i8, ptr %17, align 1, !tbaa !373
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.BezTriple, ptr %11, i64 0, i32 9
  %23 = load i8, ptr %22, align 1, !tbaa !374
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = add nuw i32 %10, 1
  %28 = getelementptr inbounds %struct.BezTriple, ptr %11, i64 1
  %29 = icmp eq i32 %27, %7
  br i1 %29, label %30, label %9, !llvm.loop !375

30:                                               ; preds = %21, %16, %9, %26, %5, %1
  %31 = phi i8 [ 0, %1 ], [ 0, %5 ], [ 1, %21 ], [ 1, %16 ], [ 1, %9 ], [ 0, %26 ]
  ret i8 %31
}

; Function Attrs: optsize
declare signext i16 @test_time_fcurve(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @calchandles_fcurve(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @remake_graph_transdata(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_tracking_get_active_tracks(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ED_space_clip_get_clip_frame_number(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @flushTransTracking(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_tracking_marker_clamp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize }

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
!49 = !{!"transform_generics.c:copy_v3_v3"}
!50 = !{!"transform_generics.c:sub_v3_v3v3"}
!51 = !{!"transform_generics.c:normalize_v3"}
!52 = !{!35, !36, i64 16}
!53 = !{!35, !37, i64 976}
!54 = !{!"transform_generics.c:recalcData_objects"}
!55 = !{!35, !41, i64 1256}
!56 = !{!57, !41, i64 168}
!57 = !{!"Scene", !58, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !44, i64 152, !41, i64 168, !41, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !36, i64 232, !36, i64 236, !36, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !59, i64 280, !68, i64 4264, !44, i64 4296, !44, i64 4312, !41, i64 4328, !41, i64 4336, !41, i64 4344, !41, i64 4352, !41, i64 4360, !41, i64 4368, !39, i64 4376, !39, i64 4378, !36, i64 4380, !44, i64 4384, !69, i64 4400, !70, i64 4416, !73, i64 4600, !41, i64 4608, !74, i64 4616, !41, i64 4640, !75, i64 4648, !75, i64 4656, !61, i64 4664, !62, i64 4824, !76, i64 4888, !41, i64 4952}
!58 = !{!"ID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !39, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !41, i64 112}
!59 = !{!"RenderData", !60, i64 0, !41, i64 248, !41, i64 256, !63, i64 264, !64, i64 328, !36, i64 400, !36, i64 404, !36, i64 408, !40, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !39, i64 432, !39, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !36, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !36, i64 484, !36, i64 488, !39, i64 492, !39, i64 494, !36, i64 496, !36, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !36, i64 516, !36, i64 520, !36, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !65, i64 544, !65, i64 560, !66, i64 576, !44, i64 592, !39, i64 608, !39, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !36, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !40, i64 660, !40, i64 664, !39, i64 668, !39, i64 670, !40, i64 672, !40, i64 676, !37, i64 680, !36, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !36, i64 2520, !39, i64 2524, !39, i64 2526, !40, i64 2528, !40, i64 2532, !39, i64 2536, !39, i64 2538, !40, i64 2540, !39, i64 2544, !39, i64 2546, !36, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !40, i64 2560, !40, i64 2564, !41, i64 2568, !36, i64 2576, !40, i64 2580, !37, i64 2584, !67, i64 2616, !36, i64 3976, !36, i64 3980}
!60 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !40, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !61, i64 24, !62, i64 184}
!61 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !40, i64 136, !40, i64 140, !41, i64 144, !41, i64 152}
!62 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!63 = !{!"QuicktimeCodecSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !39, i64 48, !39, i64 50, !36, i64 52, !36, i64 56, !36, i64 60}
!64 = !{!"FFMpegCodecData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !40, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !41, i64 64}
!65 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!66 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!67 = !{!"BakeData", !60, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !40, i64 1280, !40, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!68 = !{!"AudioData", !36, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !36, i64 16, !39, i64 20, !39, i64 22, !40, i64 24, !40, i64 28}
!69 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!70 = !{!"GameData", !69, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !71, i64 40, !39, i64 64, !39, i64 66, !40, i64 68, !72, i64 72, !40, i64 128, !40, i64 132, !36, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180}
!71 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !40, i64 8, !40, i64 12, !41, i64 16}
!72 = !{!"RecastData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !36, i64 40, !40, i64 44, !40, i64 48, !39, i64 52, !39, i64 54}
!73 = !{!"UnitSettings", !40, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!74 = !{!"PhysicsSettings", !37, i64 0, !36, i64 12, !36, i64 16, !36, i64 20}
!75 = !{!"long", !37, i64 0}
!76 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!77 = !{!35, !41, i64 1312}
!78 = !{!79, !39, i64 136}
!79 = !{!"Object", !58, i64 0, !41, i64 120, !41, i64 128, !39, i64 136, !39, i64 138, !36, i64 140, !36, i64 144, !36, i64 148, !37, i64 152, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288, !41, i64 296, !41, i64 304, !80, i64 312, !41, i64 360, !44, i64 368, !44, i64 384, !44, i64 400, !44, i64 416, !36, i64 432, !36, i64 436, !41, i64 440, !41, i64 448, !36, i64 456, !36, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !40, i64 616, !40, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !36, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !36, i64 968, !36, i64 972, !36, i64 976, !36, i64 980, !36, i64 984, !40, i64 988, !40, i64 992, !40, i64 996, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !40, i64 1028, !40, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !40, i64 1048, !40, i64 1052, !44, i64 1056, !44, i64 1072, !44, i64 1088, !44, i64 1104, !40, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !36, i64 1144, !36, i64 1148, !41, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !44, i64 1176, !44, i64 1192, !44, i64 1208, !44, i64 1224, !41, i64 1240, !41, i64 1248, !41, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !40, i64 1268, !41, i64 1272, !41, i64 1280, !41, i64 1288, !41, i64 1296, !75, i64 1304, !75, i64 1312, !36, i64 1320, !36, i64 1324, !44, i64 1328, !44, i64 1344, !41, i64 1360, !41, i64 1368, !41, i64 1376, !37, i64 1384, !41, i64 1392, !44, i64 1400, !41, i64 1416}
!80 = !{!"bAnimVizSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44}
!81 = !{!79, !41, i64 296}
!82 = !{!44, !41, i64 0}
!83 = !{!35, !39, i64 12}
!84 = !{!85, !41, i64 0}
!85 = !{!"Nurb", !41, i64 0, !41, i64 8, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !36, i64 24, !36, i64 28, !37, i64 32, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !39, i64 80, !39, i64 82, !36, i64 84}
!86 = distinct !{!86, !87}
!87 = !{!"llvm.loop.mustprogress"}
!88 = distinct !{!88, !87}
!89 = !{!90, !41, i64 272}
!90 = !{!"Lattice", !58, i64 0, !41, i64 120, !39, i64 128, !39, i64 130, !39, i64 132, !39, i64 134, !39, i64 136, !39, i64 138, !39, i64 140, !39, i64 142, !37, i64 144, !37, i64 145, !37, i64 146, !37, i64 147, !36, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !37, i64 208, !41, i64 272}
!91 = !{!92, !41, i64 0}
!92 = !{!"EditLatt", !41, i64 0, !36, i64 8, !37, i64 12}
!93 = !{!90, !39, i64 134}
!94 = !{!35, !36, i64 4}
!95 = !{!96, !41, i64 160}
!96 = !{!"bArmature", !58, i64 0, !41, i64 120, !44, i64 128, !44, i64 144, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !39, i64 208, !39, i64 210, !36, i64 212, !36, i64 216, !36, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !36, i64 248, !36, i64 252}
!97 = !{!35, !41, i64 56}
!98 = !{!41, !41, i64 0}
!99 = !{!100, !36, i64 132}
!100 = !{!"EditBone", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !37, i64 40, !40, i64 104, !37, i64 108, !37, i64 120, !36, i64 132, !36, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !39, i64 180}
!101 = !{!100, !41, i64 24}
!102 = !{!35, !36, i64 0}
!103 = !{!100, !40, i64 172}
!104 = !{!100, !40, i64 168}
!105 = !{!100, !40, i64 152}
!106 = !{!100, !40, i64 176}
!107 = !{!100, !40, i64 140}
!108 = distinct !{!108, !87}
!109 = !{!35, !36, i64 48}
!110 = !{!111, !41, i64 208}
!111 = !{!"TransData", !40, i64 0, !40, i64 4, !40, i64 8, !41, i64 16, !37, i64 24, !41, i64 40, !40, i64 48, !37, i64 52, !37, i64 64, !37, i64 100, !37, i64 136, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !36, i64 216, !39, i64 220}
!112 = !{!111, !40, i64 48}
!113 = distinct !{!113, !87}
!114 = !{!96, !36, i64 192}
!115 = !{!35, !41, i64 1128}
!116 = !{!35, !41, i64 1272}
!117 = !{!35, !41, i64 1232}
!118 = !{!57, !41, i64 264}
!119 = !{!120, !39, i64 344}
!120 = !{!"ToolSettings", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !39, i64 44, !39, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !40, i64 52, !39, i64 56, !37, i64 58, !37, i64 59, !121, i64 64, !123, i64 168, !40, i64 336, !40, i64 340, !39, i64 344, !39, i64 346, !37, i64 348, !37, i64 349, !39, i64 350, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !40, i64 368, !40, i64 372, !40, i64 376, !40, i64 380, !40, i64 384, !40, i64 388, !39, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !41, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !39, i64 434, !39, i64 436, !39, i64 438, !39, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !36, i64 448, !36, i64 452, !36, i64 456, !36, i64 460, !39, i64 464, !39, i64 466, !36, i64 468, !40, i64 472, !40, i64 476, !124, i64 480, !125, i64 608}
!121 = !{!"ImagePaintSettings", !122, i64 0, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !37, i64 48, !36, i64 52, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !37, i64 88, !40, i64 100}
!122 = !{!"Paint", !41, i64 0, !41, i64 8, !41, i64 16, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36}
!123 = !{!"ParticleEditSettings", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !41, i64 120, !40, i64 128, !40, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !41, i64 152, !41, i64 160}
!124 = !{!"UnifiedPaintSettings", !36, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !37, i64 16, !37, i64 28, !36, i64 40, !37, i64 44, !40, i64 52, !36, i64 56, !36, i64 60, !37, i64 64, !37, i64 65, !40, i64 72, !37, i64 76, !36, i64 84, !40, i64 88, !37, i64 92, !37, i64 100, !36, i64 108, !41, i64 112, !40, i64 120, !36, i64 124}
!125 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 21, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36}
!126 = !{!35, !41, i64 1224}
!127 = !{!79, !41, i64 288}
!128 = !{!129, !41, i64 32}
!129 = !{!"Base", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !39, i64 28, !39, i64 30, !41, i64 32}
!130 = !{!79, !36, i64 432}
!131 = !{!111, !41, i64 176}
!132 = !{!111, !36, i64 216}
!133 = !{!134, !39, i64 8976}
!134 = !{!"UserDef", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !36, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !36, i64 8484, !36, i64 8488, !36, i64 8492, !39, i64 8496, !39, i64 8498, !36, i64 8500, !36, i64 8504, !36, i64 8508, !36, i64 8512, !36, i64 8516, !36, i64 8520, !36, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !44, i64 8536, !44, i64 8552, !44, i64 8568, !44, i64 8584, !44, i64 8600, !44, i64 8616, !44, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !36, i64 8912, !36, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !40, i64 8956, !40, i64 8960, !36, i64 8964, !39, i64 8968, !39, i64 8970, !40, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !135, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !36, i64 10896, !36, i64 10900, !40, i64 10904, !40, i64 10908, !36, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !136, i64 10928}
!135 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!136 = !{!"WalkNavigation", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !39, i64 24, !37, i64 26}
!137 = distinct !{!137, !87}
!138 = !{!"transform_generics.c:recalcData_image"}
!139 = !{!35, !41, i64 1240}
!140 = !{!141, !41, i64 96}
!141 = !{!"ScrArea", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !66, i64 56, !37, i64 72, !37, i64 73, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !39, i64 84, !37, i64 86, !37, i64 87, !41, i64 88, !44, i64 96, !44, i64 112, !44, i64 128, !44, i64 144}
!142 = !{!143, !36, i64 36}
!143 = !{!"SpaceImage", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !36, i64 36, !41, i64 40, !144, i64 48, !41, i64 88, !145, i64 96, !146, i64 5360, !41, i64 10520, !37, i64 10528, !40, i64 10536, !40, i64 10540, !40, i64 10544, !40, i64 10548, !40, i64 10552, !37, i64 10556, !37, i64 10557, !39, i64 10558, !39, i64 10560, !39, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !147, i64 10568}
!144 = !{!"ImageUser", !41, i64 0, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !36, i64 36}
!145 = !{!"Scopes", !36, i64 0, !36, i64 4, !36, i64 8, !40, i64 12, !36, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !40, i64 32, !36, i64 36, !37, i64 40, !146, i64 64, !41, i64 5224, !41, i64 5232, !41, i64 5240, !41, i64 5248, !36, i64 5256, !36, i64 5260}
!146 = !{!"Histogram", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !40, i64 5128, !40, i64 5132, !39, i64 5136, !39, i64 5138, !36, i64 5140, !37, i64 5144}
!147 = !{!"MaskSpaceInfo", !41, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!148 = !{!"transform_generics.c:recalcData_actedit"}
!149 = !{!150, !41, i64 48}
!150 = !{!"bAnimContext", !41, i64 0, !39, i64 8, !39, i64 10, !39, i64 12, !39, i64 14, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72}
!151 = !{!150, !41, i64 56}
!152 = !{!150, !41, i64 16}
!153 = !{!35, !41, i64 1248}
!154 = !{!150, !41, i64 32}
!155 = !{!150, !41, i64 24}
!156 = !{!141, !37, i64 72}
!157 = !{!150, !39, i64 12}
!158 = !{!159, !39, i64 214}
!159 = !{!"ARegion", !41, i64 0, !41, i64 8, !160, i64 16, !66, i64 176, !66, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !40, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !41, i64 240, !44, i64 248, !44, i64 264, !44, i64 280, !44, i64 296, !44, i64 312, !44, i64 328, !44, i64 344, !41, i64 360, !41, i64 368, !41, i64 376}
!160 = !{!"View2D", !65, i64 0, !65, i64 16, !66, i64 32, !66, i64 48, !66, i64 64, !37, i64 80, !37, i64 88, !40, i64 96, !40, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !41, i64 128, !36, i64 136, !36, i64 140, !41, i64 144, !41, i64 152}
!161 = !{!150, !39, i64 14}
!162 = !{!150, !41, i64 0}
!163 = !{!164, !39, i64 338}
!164 = !{!"SpaceAction", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !160, i64 56, !41, i64 216, !165, i64 224, !37, i64 336, !37, i64 337, !39, i64 338, !40, i64 340}
!165 = !{!"bDopeSheet", !41, i64 0, !44, i64 8, !41, i64 24, !37, i64 32, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108}
!166 = distinct !{!166, !87}
!167 = !{!"transform_generics.c:recalcData_nla"}
!168 = !{!57, !39, i64 820}
!169 = !{!57, !40, i64 900}
!170 = !{!35, !41, i64 1136}
!171 = !{!172, !41, i64 24}
!172 = !{!"TransDataNla", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !37, i64 44, !36, i64 56, !36, i64 60}
!173 = !{!172, !36, i64 60}
!174 = !{!175, !39, i64 58}
!175 = !{!"SpaceNla", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !39, i64 56, !39, i64 58, !36, i64 60, !41, i64 64, !160, i64 72}
!176 = !{!172, !41, i64 0}
!177 = !{!178, !41, i64 8}
!178 = !{!"NlaStrip", !41, i64 0, !41, i64 8, !44, i64 16, !41, i64 32, !41, i64 40, !44, i64 48, !44, i64 64, !37, i64 80, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !39, i64 184, !39, i64 186, !39, i64 188, !39, i64 190, !41, i64 192, !36, i64 200, !36, i64 204}
!179 = !{!178, !41, i64 0}
!180 = !{!178, !40, i64 152}
!181 = !{!178, !39, i64 190}
!182 = !{!178, !40, i64 156}
!183 = !{!172, !41, i64 8}
!184 = !{!172, !41, i64 16}
!185 = distinct !{!185, !87}
!186 = !{!175, !39, i64 56}
!187 = !{!134, !39, i64 8948}
!188 = !{!172, !36, i64 56}
!189 = !{!190, !41, i64 0}
!190 = !{!"NlaTrack", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !36, i64 36, !37, i64 40}
!191 = distinct !{!191, !87}
!192 = !{!190, !41, i64 8}
!193 = distinct !{!193, !87}
!194 = distinct !{!194, !87}
!195 = !{!"transform_generics.c:recalcData_sequencer"}
!196 = !{!197, !41, i64 0}
!197 = !{!"TransDataSeq", !41, i64 0, !36, i64 8, !36, i64 12, !39, i64 16}
!198 = distinct !{!198, !87}
!199 = !{!"transform_generics.c:recalcData_graphedit"}
!200 = !{!150, !39, i64 8}
!201 = !{!202, !41, i64 40}
!202 = !{!"bAnimListElem", !41, i64 0, !41, i64 8, !41, i64 16, !36, i64 24, !36, i64 28, !36, i64 32, !39, i64 36, !39, i64 38, !41, i64 40, !41, i64 48, !41, i64 56}
!203 = !{i8 0, i8 2}
!204 = !{!205, !36, i64 244}
!205 = !{!"SpaceIpo", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !160, i64 56, !41, i64 216, !44, i64 224, !39, i64 240, !39, i64 242, !36, i64 244, !40, i64 248, !36, i64 252}
!206 = distinct !{!206, !87}
!207 = !{!"transform_generics.c:recalcData_spaceclip"}
!208 = !{!209, !36, i64 152}
!209 = !{!"MovieTrackingTrack", !41, i64 0, !41, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !36, i64 120, !36, i64 124, !41, i64 128, !37, i64 136, !40, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !37, i64 164, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !36, i64 184, !40, i64 188, !41, i64 192, !40, i64 200, !40, i64 204}
!210 = !{!211, !36, i64 208}
!211 = !{!"SpaceClip", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !212, i64 56, !41, i64 64, !213, i64 72, !36, i64 208, !39, i64 212, !39, i64 214, !36, i64 216, !37, i64 220, !40, i64 228, !40, i64 232, !36, i64 236, !37, i64 240, !37, i64 304, !36, i64 368, !39, i64 372, !39, i64 374, !36, i64 376, !36, i64 380, !37, i64 384, !147, i64 392}
!212 = !{!"MovieClipUser", !36, i64 0, !39, i64 4, !39, i64 6}
!213 = !{!"MovieClipScopes", !39, i64 0, !39, i64 2, !36, i64 4, !36, i64 8, !36, i64 12, !214, i64 16, !41, i64 80, !41, i64 88, !37, i64 96, !39, i64 104, !39, i64 106, !36, i64 108, !41, i64 112, !41, i64 120, !37, i64 128}
!214 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !36, i64 56, !36, i64 60}
!215 = !{!209, !36, i64 156}
!216 = !{!209, !36, i64 160}
!217 = distinct !{!217, !87}
!218 = !{!219, !40, i64 256}
!219 = !{!"View3D", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !37, i64 56, !40, i64 72, !40, i64 76, !37, i64 80, !37, i64 81, !36, i64 84, !36, i64 88, !39, i64 92, !39, i64 94, !41, i64 96, !41, i64 104, !65, i64 112, !44, i64 128, !41, i64 144, !41, i64 152, !37, i64 160, !36, i64 224, !36, i64 228, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !37, i64 260, !37, i64 272, !39, i64 284, !39, i64 286, !39, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !44, i64 296, !44, i64 312, !44, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !41, i64 352, !41, i64 360, !41, i64 368}
!220 = !{!37, !37, i64 0}
!221 = !{!"transform_generics.c:mul_v3_fl"}
!222 = !{!"transform_generics.c:add_v3_v3v3"}
!223 = !{!35, !41, i64 1264}
!224 = !{!225, !41, i64 120}
!225 = !{!"wmOperator", !41, i64 0, !41, i64 8, !37, i64 16, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !44, i64 128, !41, i64 144, !41, i64 152, !39, i64 160, !37, i64 162}
!226 = !{!35, !41, i64 1288}
!227 = !{!35, !37, i64 977}
!228 = !{!35, !36, i64 640}
!229 = !{!230, !39, i64 16}
!230 = !{!"wmEvent", !41, i64 0, !41, i64 8, !39, i64 16, !39, i64 18, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !39, i64 44, !39, i64 46, !36, i64 48, !36, i64 52, !45, i64 56, !36, i64 64, !36, i64 68, !39, i64 72, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !41, i64 88, !41, i64 96, !39, i64 104, !39, i64 106, !36, i64 108, !41, i64 112}
!231 = !{!35, !39, i64 696}
!232 = !{!36, !36, i64 0}
!233 = !{!35, !40, i64 20}
!234 = !{!35, !37, i64 1220}
!235 = !{!225, !41, i64 112}
!236 = !{!237, !41, i64 232}
!237 = !{!"bScreen", !58, i64 0, !44, i64 120, !44, i64 136, !44, i64 152, !44, i64 168, !41, i64 184, !41, i64 192, !36, i64 200, !36, i64 204, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !41, i64 232, !41, i64 240}
!238 = !{!219, !37, i64 291}
!239 = !{!35, !39, i64 1156}
!240 = !{!219, !39, i64 240}
!241 = !{!219, !39, i64 238}
!242 = !{!35, !39, i64 1154}
!243 = !{!219, !37, i64 292}
!244 = !{!35, !39, i64 974}
!245 = !{!120, !39, i64 46}
!246 = !{!122, !41, i64 0}
!247 = !{!248, !36, i64 1856}
!248 = !{!"Brush", !58, i64 0, !249, i64 120, !41, i64 144, !250, i64 152, !250, i64 464, !41, i64 776, !41, i64 784, !41, i64 792, !41, i64 800, !41, i64 808, !37, i64 816, !40, i64 1840, !39, i64 1844, !39, i64 1846, !40, i64 1848, !36, i64 1852, !36, i64 1856, !36, i64 1860, !40, i64 1864, !36, i64 1868, !36, i64 1872, !36, i64 1876, !36, i64 1880, !40, i64 1884, !40, i64 1888, !37, i64 1892, !40, i64 1904, !37, i64 1908, !36, i64 1920, !40, i64 1924, !40, i64 1928, !36, i64 1932, !36, i64 1936, !36, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !40, i64 1948, !40, i64 1952, !40, i64 1956, !40, i64 1960, !40, i64 1964, !36, i64 1968, !36, i64 1972, !36, i64 1976, !40, i64 1980, !40, i64 1984, !36, i64 1988, !36, i64 1992, !40, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!249 = !{!"BrushClone", !41, i64 0, !37, i64 8, !40, i64 16, !40, i64 20}
!250 = !{!"MTex", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !41, i64 8, !41, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !40, i64 116, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !39, i64 128, !39, i64 130, !37, i64 132, !37, i64 133, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308}
!251 = !{!120, !37, i64 49}
!252 = !{!143, !37, i64 10567}
!253 = !{!143, !37, i64 10556}
!254 = !{!205, !36, i64 252}
!255 = !{!211, !36, i64 376}
!256 = !{!134, !36, i64 8}
!257 = !{!35, !39, i64 1160}
!258 = !{!259, !37, i64 1365}
!259 = !{!"Mesh", !58, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !260, i64 280, !260, i64 480, !260, i64 680, !260, i64 880, !260, i64 1080, !36, i64 1280, !36, i64 1284, !36, i64 1288, !36, i64 1292, !36, i64 1296, !36, i64 1300, !36, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !36, i64 1344, !39, i64 1348, !39, i64 1350, !40, i64 1352, !36, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !39, i64 1366, !41, i64 1368}
!260 = !{!"CustomData", !41, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !41, i64 184, !41, i64 192}
!261 = !{i32 0, i32 33556481}
!262 = !{!120, !39, i64 438}
!263 = !{!120, !37, i64 443}
!264 = !{!120, !37, i64 442}
!265 = !{!120, !40, i64 336}
!266 = !{!35, !40, i64 644}
!267 = !{!35, !39, i64 1158}
!268 = !{!120, !39, i64 440}
!269 = !{!"transform_generics.c:copy_v2_v2_int"}
!270 = !{!"transform_generics.c:zero_v3"}
!271 = !{!"transform_generics.c:initTransInfo_edit_pet_to_flag"}
!272 = !{!35, !41, i64 1368}
!273 = !{!159, !41, i64 240}
!274 = !{!35, !41, i64 1360}
!275 = !{!35, !41, i64 1376}
!276 = !{!35, !41, i64 1384}
!277 = !{!35, !41, i64 1144}
!278 = !{!111, !41, i64 200}
!279 = distinct !{!279, !87}
!280 = !{!35, !41, i64 64}
!281 = !{!35, !41, i64 72}
!282 = !{!35, !41, i64 632}
!283 = !{!111, !41, i64 16}
!284 = !{!111, !41, i64 192}
!285 = !{!286, !41, i64 40}
!286 = !{!"TransDataExtension", !37, i64 0, !37, i64 12, !37, i64 28, !41, i64 40, !37, i64 48, !41, i64 64, !37, i64 72, !41, i64 88, !40, i64 96, !41, i64 104, !37, i64 112, !41, i64 128, !37, i64 136, !37, i64 148, !37, i64 212, !37, i64 248, !37, i64 284, !36, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 364, !40, i64 376}
!287 = !{!286, !41, i64 128}
!288 = distinct !{!288, !87}
!289 = distinct !{!289, !87}
!290 = !{!291, !41, i64 24}
!291 = !{!"TransData2D", !37, i64 0, !41, i64 16, !41, i64 24, !41, i64 32, !37, i64 40, !37, i64 48}
!292 = !{!291, !41, i64 32}
!293 = distinct !{!293, !87}
!294 = !{!"transform_generics.c:restoreElement"}
!295 = !{!111, !41, i64 40}
!296 = !{!286, !41, i64 88}
!297 = !{!286, !40, i64 96}
!298 = !{!286, !41, i64 104}
!299 = !{!286, !41, i64 64}
!300 = !{!301, !37, i64 0}
!301 = !{!"TransDataCurveHandleFlags", !37, i64 0, !37, i64 1, !41, i64 8, !41, i64 16}
!302 = !{!301, !41, i64 8}
!303 = !{!301, !37, i64 1}
!304 = !{!301, !41, i64 16}
!305 = !{!39, !39, i64 0}
!306 = !{!143, !41, i64 40}
!307 = !{!211, !41, i64 64}
!308 = !{!57, !36, i64 680}
!309 = !{!205, !40, i64 248}
!310 = distinct !{!310, !87}
!311 = !{!"transform_generics.c:add_v3_v3"}
!312 = distinct !{!312, !87}
!313 = !{!314, !41, i64 0}
!314 = !{!"BMEditMesh", !41, i64 0, !41, i64 8, !36, i64 16, !41, i64 24, !36, i64 32, !41, i64 40, !41, i64 48, !75, i64 56, !41, i64 64, !36, i64 72, !41, i64 80, !36, i64 88, !39, i64 92, !39, i64 94, !41, i64 96, !36, i64 104}
!315 = !{!96, !41, i64 176}
!316 = !{!317, !41, i64 240}
!317 = !{!"MetaBall", !58, i64 0, !41, i64 120, !44, i64 128, !44, i64 144, !41, i64 160, !41, i64 168, !41, i64 176, !37, i64 184, !37, i64 185, !39, i64 186, !39, i64 188, !39, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !40, i64 228, !40, i64 232, !40, i64 236, !41, i64 240}
!318 = !{!319, !39, i64 26}
!319 = !{!"MetaElem", !41, i64 0, !41, i64 8, !41, i64 16, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !37, i64 44, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !41, i64 88, !41, i64 96}
!320 = !{!321, !41, i64 120}
!321 = !{!"bPoseChannel", !41, i64 0, !41, i64 8, !41, i64 16, !44, i64 24, !37, i64 40, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !41, i64 120, !41, i64 128, !41, i64 136, !44, i64 144, !44, i64 160, !41, i64 176, !41, i64 184, !41, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !40, i64 264, !39, i64 268, !39, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !40, i64 524, !40, i64 528, !40, i64 532, !41, i64 536}
!322 = !{!323, !36, i64 176}
!323 = !{!"Bone", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !44, i64 32, !37, i64 48, !40, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !36, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !37, i64 308, !36, i64 320, !39, i64 324, !37, i64 326}
!324 = !{!248, !41, i64 808}
!325 = !{!326, !41, i64 120}
!326 = !{!"PaintCurve", !58, i64 0, !41, i64 120, !36, i64 128, !36, i64 132}
!327 = !{!326, !36, i64 132}
!328 = !{!79, !39, i64 948}
!329 = !{!159, !41, i64 376}
!330 = !{!111, !40, i64 8}
!331 = !{!111, !40, i64 0}
!332 = !{!111, !40, i64 4}
!333 = distinct !{!333, !87}
!334 = distinct !{!334, !87}
!335 = !{!"transform_generics.c:normalize_v3_v3"}
!336 = !{!"transform_generics.c:dot_v3v3"}
!337 = !{!"transform_generics.c:mul_v3_v3fl"}
!338 = !{!"transform_generics.c:clipMirrorModifier"}
!339 = !{!340, !36, i64 16}
!340 = !{!"ModifierData", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !37, i64 32, !41, i64 96, !41, i64 104}
!341 = !{!340, !36, i64 20}
!342 = !{!343, !39, i64 114}
!343 = !{!"MirrorModifierData", !340, i64 0, !39, i64 112, !39, i64 114, !40, i64 116, !41, i64 120}
!344 = !{!343, !40, i64 116}
!345 = !{!343, !41, i64 120}
!346 = distinct !{!346, !87}
!347 = distinct !{!347, !87}
!348 = !{!"transform_generics.c:editbmesh_apply_to_mirror"}
!349 = distinct !{!349, !87}
!350 = !{!"transform_generics.c:len_v3v3"}
!351 = !{!"transform_generics.c:animrecord_check_state"}
!352 = !{!353, !41, i64 40}
!353 = !{!"wmTimer", !41, i64 0, !41, i64 8, !41, i64 16, !45, i64 24, !36, i64 32, !41, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !36, i64 88}
!354 = !{!120, !39, i64 346}
!355 = !{!356, !39, i64 12}
!356 = !{!"ScreenAnimData", !41, i64 0, !39, i64 8, !39, i64 10, !39, i64 12, !36, i64 16, !36, i64 20, !45, i64 24}
!357 = !{!358, !41, i64 0}
!358 = !{!"AnimData", !41, i64 0, !41, i64 8, !41, i64 16, !44, i64 24, !41, i64 40, !44, i64 48, !44, i64 64, !36, i64 80, !36, i64 84, !39, i64 88, !39, i64 90, !40, i64 92}
!359 = !{!358, !36, i64 80}
!360 = !{!361, !36, i64 100}
!361 = !{!"bAction", !58, i64 0, !44, i64 120, !44, i64 136, !44, i64 152, !44, i64 168, !36, i64 184, !36, i64 188, !36, i64 192, !36, i64 196}
!362 = !{!178, !39, i64 186}
!363 = !{!178, !36, i64 200}
!364 = !{!358, !39, i64 90}
!365 = !{!"transform_generics.c:len_v3"}
!366 = !{!"transform_generics.c:recalcData_mask_common"}
!367 = !{!"transform_generics.c:fcu_test_selected"}
!368 = !{!369, !41, i64 48}
!369 = !{!"FCurve", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !44, i64 32, !41, i64 48, !41, i64 56, !36, i64 64, !40, i64 68, !39, i64 72, !39, i64 74, !36, i64 76, !41, i64 80, !36, i64 88, !37, i64 92, !40, i64 104, !40, i64 108}
!370 = !{!369, !36, i64 64}
!371 = !{!372, !37, i64 52}
!372 = !{!"BezTriple", !37, i64 0, !40, i64 36, !40, i64 40, !40, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !40, i64 56, !40, i64 60, !40, i64 64, !37, i64 68}
!373 = !{!372, !37, i64 51}
!374 = !{!372, !37, i64 53}
!375 = distinct !{!375, !87}
