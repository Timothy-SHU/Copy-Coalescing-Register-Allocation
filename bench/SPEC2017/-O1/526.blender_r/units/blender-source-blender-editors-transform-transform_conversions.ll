; ModuleID = 'blender/source/blender/editors/transform/transform_conversions.c'
source_filename = "blender/source/blender/editors/transform/transform_conversions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.StructRNA = type opaque
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.TransInfo = type { i32, i32, i32, i16, i32, float, float, ptr, ptr, i32, ptr, ptr, ptr, %struct.TransCon, %struct.TransSnap, %struct.NumInput, %struct.MouseInput, i32, float, [20 x i8], [3 x float], [2 x float], [2 x i32], i16, i16, [3 x float], i8, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i16, i16, i8, i8, [3 x float], [3 x [3 x float]], [3 x [3 x float]], [64 x i8], ptr, ptr, ptr, i16, i16, i16, i16, i16, [4 x float], [4 x float], [3 x float], [3 x float], i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32], float, ptr, [3 x [3 x float]], ptr, ptr, ptr, ptr }
%struct.TransCon = type { i16, [50 x i8], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x float], [2 x i32], i32, ptr, ptr, ptr, ptr }
%struct.TransSnap = type { i16, i16, i16, i16, i8, i8, i8, i8, i16, [3 x float], [3 x float], [3 x float], [3 x float], i8, %struct.ListBase, ptr, float, double, ptr, ptr, ptr, ptr }
%struct.NumInput = type { i16, i32, [3 x i32], i8, i16, [3 x i16], [3 x float], [3 x float], [3 x float], i16, [64 x i8], i32 }
%struct.MouseInput = type { ptr, ptr, [2 x i32], i8, [2 x i32], [2 x float], float, ptr }
%struct.TransData = type { float, float, float, ptr, [3 x float], ptr, float, [3 x float], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], ptr, ptr, ptr, ptr, ptr, i32, i16 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bKinematicConstraint = type { ptr, i16, i16, i16, i16, [64 x i8], ptr, [64 x i8], float, float, float, [3 x float], i16, i16, float }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.BoneInitData = type { ptr, [3 x float], float, float, [3 x float], float, float, float }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
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
%struct.PTCacheEdit = type { %struct.ListBase, ptr, ptr, %struct.PTCacheID, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, i32, i32, i32, i32, [3 x i8], [3 x i8] }
%struct.PTCacheID = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSystemModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.PTCacheEditPoint = type { ptr, i32, i16 }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.ParticleData = type { %struct.ParticleKey, %struct.ParticleKey, ptr, ptr, ptr, i32, float, float, float, i32, i32, [4 x float], float, float, float, i32, i32, i16, i16 }
%struct.ParticleKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.PTCacheEditKey = type { ptr, ptr, ptr, ptr, [3 x float], float, float, i16 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.TransData2D = type { [3 x float], ptr, ptr, ptr, [2 x float], [2 x float] }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.TransDataSeq = type { ptr, i32, i32, i16 }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.tGPFtransdata = type { float, ptr }
%struct.BeztMap = type { ptr, i32, i32, i16, i8, i8 }
%struct.SpaceIpo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.ListBase, i16, i16, i32, float, i32 }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.TransDataCurveHandleFlags = type { i8, i8, ptr, ptr }
%struct.TransDataGraph = type { float }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.EdgeSlideData = type { ptr, i32, ptr, [2 x i32], [2 x i32], ptr, i8, ptr, float, i8, i8, i32 }
%struct.SpaceSeq = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, float, float, i16, i16, i16, i16, i32, float, i32, i32, ptr, %struct.SequencerScopes }
%struct.SequencerScopes = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SpaceNode = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, ptr, i16, i16, float, float, float, float, float, [2 x float], %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, %struct.ListBase, ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
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
%struct.MovieTrackingPlaneTrack = type { ptr, ptr, [64 x i8], ptr, i32, i32, ptr, i32, i32, ptr, float, i32 }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.SpaceAction = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.bDopeSheet, i8, i8, i16, float }
%struct.bDopeSheet = type { ptr, %struct.ListBase, ptr, [64 x i8], i32, i32, i32, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.bGPdata = type { %struct.ID, %struct.ListBase, i32, i16, i16, ptr }
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }
%struct.bGPDframe = type { ptr, ptr, %struct.ListBase, i32, i32 }
%struct.Mask = type { %struct.ID, ptr, %struct.ListBase, i32, i32, i32, i32, i32, i32 }
%struct.MaskLayer = type { ptr, ptr, [64 x i8], %struct.ListBase, %struct.ListBase, ptr, ptr, float, i8, i8, i8, [7 x i8], i8, i8 }
%struct.MaskLayerShape = type { ptr, ptr, ptr, i32, i32, i8, [7 x i8] }
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }
%struct.PointCache = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [64 x i8], [64 x i8], [64 x i8], [1024 x i8], ptr, %struct.ListBase, ptr, ptr }
%struct.TransDataExtension = type { [3 x float], [4 x float], [3 x float], ptr, [3 x float], ptr, [4 x float], ptr, float, ptr, [4 x float], ptr, [3 x float], [4 x [4 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.TransDataTracking = type { i32, i32, i32, ptr, ptr, [2 x float], [2 x float], [2 x float], ptr, i32, ptr, ptr, float, i16, ptr, ptr }
%struct.MovieTrackingPlaneMarker = type { [4 x [2 x float]], i32, i32 }
%struct.TransDataMasking = type { i8, [2 x float], [2 x float], [3 x [3 x float]], ptr, [3 x [3 x float]], [3 x [3 x float]], i8, i32 }
%struct.TransDataPaintCurve = type { ptr, i8 }
%struct.BMEditSelection = type { ptr, ptr, ptr, i8 }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.UvElementMap = type { ptr, ptr, i32, i32, ptr }
%struct.UvElement = type { ptr, ptr, i16, i8, i8, i16 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.NlaStrip = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, ptr, i32, i32 }
%struct.SpaceNla = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i16, i16, i32, ptr, %struct.View2D }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.TransDataNla = type { ptr, ptr, ptr, ptr, [3 x float], [3 x float], i32, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.LinkNode = type { ptr, ptr }
%struct.TransIslandData = type { [3 x float], [3 x [3 x float]] }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.MetaElem = type { ptr, ptr, ptr, i16, i16, i16, i16, float, float, float, [4 x float], float, float, float, float, float, float, float, ptr, ptr }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.MaskSpline = type { ptr, ptr, i16, i8, i8, i32, ptr, %struct.MaskParent, ptr }
%struct.MaskParent = type { i32, i32, ptr, [64 x i8], [64 x i8], [2 x float], [4 x [2 x float]] }
%struct.MaskSplinePoint = type { %struct.BezTriple, i32, i32, ptr, %struct.MaskParent }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.PaintCurve = type { %struct.ID, ptr, i32, i32 }
%struct.PaintCurvePoint = type { %struct.BezTriple, float }
%struct.bChildOfConstraint = type { ptr, i32, i32, [4 x [4 x float]], [64 x i8] }
%struct.bRotateLikeConstraint = type { ptr, i32, i32, [64 x i8] }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Rotation\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Scaling\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"LocRotScale\00", align 1
@RNA_PoseBone = external global %struct.StructRNA, align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"bones\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"bones[\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"flushTransTracking markers\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"BeztMaps\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"beztmap_adjusted_map\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"FCurveSelFrameNums\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"Unsupported object type for text-space transform\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Linked data can't text-space transform\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"TransTexspace\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"TransCrease\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"TransObData(Mask Editing)\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"TransObData2D(Mask Editing)\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"TransDataMasking(Mask Editing)\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"TransData2D\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"TransData\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"TransDataPaintCurve\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"TransIslandData(UV Editing)\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"TransObData(UV Editing)\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"TransObData2D(UV Editing)\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"TransData(Action Editor)\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"transdata2d\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"TimeSlide + tGPFtransdata\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"tGPFtransdata\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"TimeSlide Min/Max\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"TransData(NLA Editor)\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"TransDataNla (NLA Editor)\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"TransSeq TransData\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"TransSeq TransData2D\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"TransSeq TransDataSeq\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"TransData (Graph Editor)\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"TransData2D (Graph Editor)\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"TransDataGraph\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.37 = private unnamed_addr constant [14 x i8] c"CuHandle Data\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"TransNode TransData\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"TransNode TransData2D\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"TransTracking TransData\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"TransTracking TransData2D\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"TransTracking TransDataTracking\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"scratch nears\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"TransObData(Mesh EditMode)\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"TransObData ext\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"crazy quats\00", align 1
@__func__.editmesh_set_connectivity_distance = private unnamed_addr constant [35 x i8] c"editmesh_set_connectivity_distance\00", align 1
@__func__.editmesh_islands_info_calc = private unnamed_addr constant [27 x i8] c"editmesh_islands_info_calc\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"TransObData(Curve EditMode)\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"TransObData(Lattice EditMode)\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"TransObData(MBall EditMode)\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"MetaElement_TransExtension\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"TransEditBone\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"BoneInitData\00", align 1
@.str.53 = private unnamed_addr constant [51 x i8] c"Cannot change Pose when 'Rest Position' is enabled\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"TransPoseBone\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"TransPoseBoneExt\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"Bone selection count error\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"TempConstraint\00", align 1
@.str.58 = private unnamed_addr constant [27 x i8] c"TransObData(Particle Mode)\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"Particle_TransExtension\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"TransOb\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"TransObExtension\00", align 1
@str = private unnamed_addr constant [27 x i8] c"edit type not implemented!\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @sort_trans_data_dist(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %37

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.TransData, ptr %7, i64 0, i32 16
  %9 = load i32, ptr %8, align 8, !tbaa !49
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %18

12:                                               ; preds = %18
  %13 = getelementptr inbounds %struct.TransData, ptr %19, i64 1
  %14 = getelementptr inbounds %struct.TransData, ptr %19, i64 1, i32 16
  %15 = load i32, ptr %14, align 8, !tbaa !49
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18, !llvm.loop !51

18:                                               ; preds = %5, %12
  %19 = phi ptr [ %13, %12 ], [ %7, %5 ]
  %20 = phi i32 [ %21, %12 ], [ 0, %5 ]
  %21 = add nuw nsw i32 %20, 1
  %22 = icmp eq i32 %21, %3
  br i1 %22, label %37, label %12, !llvm.loop !51

23:                                               ; preds = %12
  %24 = icmp slt i32 %21, %3
  br label %25

25:                                               ; preds = %23, %5
  %26 = phi i1 [ %24, %23 ], [ %4, %5 ]
  %27 = phi i32 [ %21, %23 ], [ 0, %5 ]
  %28 = phi ptr [ %13, %23 ], [ %7, %5 ]
  br i1 %26, label %29, label %37

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !54
  %32 = and i32 %31, 4096
  %33 = icmp eq i32 %32, 0
  %34 = sub nsw i32 %3, %27
  %35 = sext i32 %34 to i64
  %36 = select i1 %33, ptr @trans_data_compare_rdist, ptr @trans_data_compare_dist
  tail call void @qsort(ptr noundef %28, i64 noundef %35, i64 noundef 224, ptr noundef nonnull %36) #18
  br label %37

37:                                               ; preds = %18, %29, %1, %25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @trans_data_compare_dist(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load float, ptr %0, align 8, !tbaa !55
  %4 = load float, ptr %1, align 8, !tbaa !55
  %5 = fcmp olt float %3, %4
  %6 = fcmp ogt float %3, %4
  %7 = zext i1 %6 to i32
  %8 = select i1 %5, i32 -1, i32 %7
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @trans_data_compare_rdist(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 4, !tbaa !56
  %5 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !56
  %7 = fcmp olt float %4, %6
  %8 = fcmp ogt float %4, %6
  %9 = zext i1 %8 to i32
  %10 = select i1 %7, i32 -1, i32 %9
  ret i32 %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @count_set_pose_transflags(ptr nocapture noundef %0, i16 noundef signext %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = load i32, ptr %0, align 4, !tbaa !57
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = icmp eq ptr %7, null
  br i1 %8, label %41, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.bArmature, ptr %11, i64 0, i32 15
  %13 = load i32, ptr %12, align 8, !tbaa !65
  br label %14

14:                                               ; preds = %9, %38
  %15 = phi ptr [ %7, %9 ], [ %39, %38 ]
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %15, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  %18 = getelementptr inbounds %struct.Bone, ptr %17, i64 0, i32 25
  %19 = load i32, ptr %18, align 8, !tbaa !69
  %20 = and i32 %13, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.Bone, ptr %17, i64 0, i32 10
  %24 = load i32, ptr %23, align 8, !tbaa !71
  %25 = and i32 %24, 64
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = and i32 %24, 1
  %29 = icmp eq i32 %28, 0
  %30 = and i32 %24, -1065034
  %31 = or i32 %24, 8
  %32 = select i1 %29, i32 %30, i32 %31
  %33 = and i32 %32, -1065025
  store i32 %33, ptr %23, align 8, !tbaa !71
  br label %38

34:                                               ; preds = %14, %22
  %35 = getelementptr inbounds %struct.Bone, ptr %17, i64 0, i32 10
  %36 = load i32, ptr %35, align 8, !tbaa !71
  %37 = and i32 %36, -9
  store i32 %37, ptr %35, align 8, !tbaa !71
  br label %38

38:                                               ; preds = %27, %34
  %39 = load ptr, ptr %15, align 8, !tbaa !63
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %14, !llvm.loop !72

41:                                               ; preds = %38, %3
  %42 = icmp eq i32 %4, 14
  br i1 %42, label %59, label %43

43:                                               ; preds = %41
  %44 = load ptr, ptr %6, align 8, !tbaa !63
  %45 = icmp eq ptr %44, null
  br i1 %45, label %59, label %46

46:                                               ; preds = %43, %56
  %47 = phi ptr [ %57, %56 ], [ %44, %43 ]
  %48 = getelementptr inbounds %struct.bPoseChannel, ptr %47, i64 0, i32 12
  %49 = load ptr, ptr %48, align 8, !tbaa !67
  %50 = getelementptr inbounds %struct.Bone, ptr %49, i64 0, i32 10
  %51 = load i32, ptr %50, align 8, !tbaa !71
  %52 = and i32 %51, 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.Bone, ptr %49, i64 0, i32 4
  tail call fastcc void @bone_children_clear_transflag(i32 noundef %4, i16 noundef signext %1, ptr noundef nonnull %55)
  br label %56

56:                                               ; preds = %46, %54
  %57 = load ptr, ptr %47, align 8, !tbaa !63
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %46, !llvm.loop !73

59:                                               ; preds = %56, %43, %41
  %60 = load ptr, ptr %5, align 8, !tbaa !58
  %61 = load ptr, ptr %60, align 8, !tbaa !63
  %62 = icmp eq ptr %61, null
  br i1 %62, label %139, label %63

63:                                               ; preds = %59
  %64 = icmp eq i32 %4, 1
  br label %65

65:                                               ; preds = %63, %132
  %66 = phi ptr [ %61, %63 ], [ %135, %132 ]
  %67 = phi i32 [ 0, %63 ], [ %134, %132 ]
  %68 = phi i32 [ 0, %63 ], [ %133, %132 ]
  %69 = getelementptr inbounds %struct.bPoseChannel, ptr %66, i64 0, i32 12
  %70 = load ptr, ptr %69, align 8, !tbaa !67
  %71 = getelementptr inbounds %struct.Bone, ptr %70, i64 0, i32 10
  %72 = load i32, ptr %71, align 8, !tbaa !71
  %73 = and i32 %72, 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %132, label %75

75:                                               ; preds = %65
  %76 = add nsw i32 %67, 1
  br i1 %64, label %77, label %132

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.bPoseChannel, ptr %66, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !63
  %80 = icmp eq ptr %79, null
  br i1 %80, label %112, label %81

81:                                               ; preds = %77, %108
  %82 = phi ptr [ %110, %108 ], [ %79, %77 ]
  %83 = phi ptr [ %109, %108 ], [ undef, %77 ]
  %84 = getelementptr inbounds %struct.bConstraint, ptr %82, i64 0, i32 3
  %85 = load i16, ptr %84, align 8, !tbaa !74
  %86 = icmp eq i16 %85, 3
  br i1 %86, label %87, label %108

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.bConstraint, ptr %82, i64 0, i32 9
  %89 = load float, ptr %88, align 8, !tbaa !76
  %90 = fcmp une float %89, 0.000000e+00
  br i1 %90, label %91, label %108

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.bConstraint, ptr %82, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !77
  %94 = load ptr, ptr %93, align 8, !tbaa !78
  %95 = icmp eq ptr %94, null
  br i1 %95, label %105, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.Object, ptr %94, i64 0, i32 3
  %98 = load i16, ptr %97, align 8, !tbaa !80
  %99 = icmp eq i16 %98, 25
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.bKinematicConstraint, ptr %93, i64 0, i32 5
  %102 = load i8, ptr %101, align 8, !tbaa !81
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100, %96
  br label %105

105:                                              ; preds = %104, %100, %91
  %106 = phi ptr [ %83, %104 ], [ %93, %91 ], [ %93, %100 ]
  %107 = phi i1 [ true, %104 ], [ false, %91 ], [ false, %100 ]
  br i1 %107, label %108, label %112

108:                                              ; preds = %105, %87, %81
  %109 = phi ptr [ %106, %105 ], [ %83, %87 ], [ %83, %81 ]
  %110 = load ptr, ptr %82, align 8, !tbaa !63
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %81, !llvm.loop !82

112:                                              ; preds = %105, %108, %77
  %113 = phi ptr [ null, %77 ], [ %106, %105 ], [ null, %108 ]
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %132

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.bPoseChannel, ptr %66, i64 0, i32 13
  %117 = load ptr, ptr %116, align 8, !tbaa !83
  %118 = icmp eq ptr %117, null
  %119 = and i32 %72, 16
  %120 = icmp eq i32 %119, 0
  %121 = or i1 %120, %118
  br i1 %121, label %126, label %122

122:                                              ; preds = %115
  %123 = and i32 %72, 16384
  %124 = icmp eq i32 %123, 0
  %125 = select i1 %124, i32 %68, i32 1
  br label %132

126:                                              ; preds = %115
  %127 = getelementptr inbounds %struct.bPoseChannel, ptr %66, i64 0, i32 7
  %128 = load i16, ptr %127, align 4, !tbaa !84
  %129 = and i16 %128, 7
  %130 = icmp eq i16 %129, 7
  %131 = select i1 %130, i32 %68, i32 1
  br label %132

132:                                              ; preds = %126, %122, %112, %65, %75
  %133 = phi i32 [ %68, %75 ], [ %68, %65 ], [ %125, %122 ], [ %131, %126 ], [ 1, %112 ]
  %134 = phi i32 [ %76, %75 ], [ %67, %65 ], [ %76, %122 ], [ %76, %126 ], [ %76, %112 ]
  %135 = load ptr, ptr %66, align 8, !tbaa !63
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %65, !llvm.loop !85

137:                                              ; preds = %132
  %138 = icmp ne i32 %133, 0
  br label %139

139:                                              ; preds = %137, %59
  %140 = phi i1 [ false, %59 ], [ %138, %137 ]
  %141 = phi i32 [ 0, %59 ], [ %134, %137 ]
  %142 = icmp ne i32 %4, 1
  %143 = select i1 %142, i1 true, i1 %140
  br i1 %143, label %145, label %144

144:                                              ; preds = %139
  store i32 2, ptr %0, align 4, !tbaa !57
  br label %145

145:                                              ; preds = %144, %139
  ret i32 %141
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bone_children_clear_transflag(i32 noundef %0, i16 noundef signext %1, ptr nocapture noundef readonly %2) unnamed_addr #4 {
  %4 = load ptr, ptr %2, align 8, !tbaa !63
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %3
  %7 = and i32 %0, -9
  %8 = icmp ne i32 %7, 2
  %9 = icmp ne i16 %1, 2
  %10 = or i1 %8, %9
  br label %11

11:                                               ; preds = %6, %27
  %12 = phi ptr [ %4, %6 ], [ %30, %27 ]
  %13 = getelementptr inbounds %struct.Bone, ptr %12, i64 0, i32 10
  %14 = load i32, ptr %13, align 8, !tbaa !71
  %15 = and i32 %14, 528
  %16 = icmp eq i32 %15, 528
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = or i32 %14, 16384
  br label %27

19:                                               ; preds = %11
  %20 = and i32 %14, 8
  %21 = icmp eq i32 %20, 0
  %22 = or i1 %21, %10
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = or i32 %14, 1048576
  br label %27

25:                                               ; preds = %19
  %26 = and i32 %14, -9
  br label %27

27:                                               ; preds = %23, %25, %17
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ], [ %18, %17 ]
  store i32 %28, ptr %13, align 8, !tbaa !71
  %29 = getelementptr inbounds %struct.Bone, ptr %12, i64 0, i32 4
  tail call fastcc void @bone_children_clear_transflag(i32 noundef %0, i16 noundef signext %1, ptr noundef nonnull %29)
  %30 = load ptr, ptr %12, align 8, !tbaa !63
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %11, !llvm.loop !86

32:                                               ; preds = %27, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @transform_autoik_update(ptr nocapture noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 57
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 14
  switch i16 %1, label %16 [
    i16 1, label %6
    i16 -1, label %9
  ]

6:                                                ; preds = %2
  %7 = load i16, ptr %5, align 2, !tbaa !88
  %8 = add i16 %7, 1
  br label %14

9:                                                ; preds = %2
  %10 = load i16, ptr %5, align 2, !tbaa !88
  %11 = icmp sgt i16 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = add nsw i16 %10, -1
  br label %14

14:                                               ; preds = %6, %12
  %15 = phi i16 [ %13, %12 ], [ %8, %6 ]
  store i16 %15, ptr %5, align 2, !tbaa !88
  br label %16

16:                                               ; preds = %14, %2, %9
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %18 = load ptr, ptr %17, align 8, !tbaa !89
  %19 = icmp eq ptr %18, null
  br i1 %19, label %73, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = icmp eq ptr %22, null
  br i1 %23, label %73, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %22, align 8, !tbaa !63
  %26 = icmp eq ptr %25, null
  br i1 %26, label %73, label %27

27:                                               ; preds = %24, %70
  %28 = phi ptr [ %71, %70 ], [ %25, %24 ]
  %29 = load i16, ptr %5, align 2, !tbaa !88
  %30 = getelementptr inbounds %struct.bPoseChannel, ptr %28, i64 0, i32 9
  %31 = load i8, ptr %30, align 8, !tbaa !90
  %32 = and i8 %31, 9
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %70, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.bPoseChannel, ptr %28, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !63
  %37 = icmp eq ptr %36, null
  br i1 %37, label %70, label %38

38:                                               ; preds = %34
  %39 = icmp eq i16 %29, 0
  br label %40

40:                                               ; preds = %38, %67
  %41 = phi ptr [ %36, %38 ], [ %68, %67 ]
  %42 = getelementptr inbounds %struct.bConstraint, ptr %41, i64 0, i32 3
  %43 = load i16, ptr %42, align 8, !tbaa !74
  %44 = icmp eq i16 %43, 3
  br i1 %44, label %45, label %67

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.bConstraint, ptr %41, i64 0, i32 9
  %47 = load float, ptr %46, align 8, !tbaa !76
  %48 = fcmp une float %47, 0.000000e+00
  br i1 %48, label %49, label %67

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.bConstraint, ptr %41, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !77
  %52 = getelementptr inbounds %struct.bKinematicConstraint, ptr %51, i64 0, i32 2
  %53 = load i16, ptr %52, align 2, !tbaa !91
  %54 = and i16 %53, 8
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %49
  br i1 %39, label %61, label %57

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.bKinematicConstraint, ptr %51, i64 0, i32 4
  %59 = load i16, ptr %58, align 2, !tbaa !92
  %60 = icmp slt i16 %59, %29
  br i1 %60, label %61, label %64

61:                                               ; preds = %57, %56
  %62 = getelementptr inbounds %struct.bKinematicConstraint, ptr %51, i64 0, i32 4
  %63 = load i16, ptr %62, align 2, !tbaa !92
  br label %64

64:                                               ; preds = %57, %61
  %65 = phi i16 [ %63, %61 ], [ %29, %57 ]
  %66 = getelementptr inbounds %struct.bKinematicConstraint, ptr %51, i64 0, i32 3
  store i16 %65, ptr %66, align 4, !tbaa !93
  br label %67

67:                                               ; preds = %64, %49, %45, %40
  %68 = load ptr, ptr %41, align 8, !tbaa !63
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %40, !llvm.loop !94

70:                                               ; preds = %67, %34, %27
  %71 = load ptr, ptr %28, align 8, !tbaa !63
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %27, !llvm.loop !95

73:                                               ; preds = %70, %24, %16, %20
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @restoreBones(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = icmp eq ptr %4, null
  br i1 %5, label %101, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !100
  %13 = and i32 %12, 256
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 4
  br label %16

16:                                               ; preds = %6, %97
  %17 = phi ptr [ %4, %6 ], [ %99, %97 ]
  %18 = phi ptr [ %3, %6 ], [ %98, %97 ]
  %19 = getelementptr inbounds %struct.BoneInitData, ptr %18, i64 0, i32 5
  %20 = load float, ptr %19, align 8, !tbaa !101
  %21 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 11
  store float %20, ptr %21, align 4, !tbaa !102
  %22 = getelementptr inbounds %struct.BoneInitData, ptr %18, i64 0, i32 2
  %23 = load float, ptr %22, align 4, !tbaa !104
  %24 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 19
  store float %23, ptr %24, align 4, !tbaa !105
  %25 = getelementptr inbounds %struct.BoneInitData, ptr %18, i64 0, i32 3
  %26 = load float, ptr %25, align 8, !tbaa !106
  %27 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 6
  store float %26, ptr %27, align 8, !tbaa !107
  %28 = getelementptr inbounds %struct.BoneInitData, ptr %18, i64 0, i32 6
  %29 = load float, ptr %28, align 4, !tbaa !108
  %30 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 13
  store float %29, ptr %30, align 4, !tbaa !109
  %31 = getelementptr inbounds %struct.BoneInitData, ptr %18, i64 0, i32 7
  %32 = load float, ptr %31, align 8, !tbaa !110
  %33 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 15
  store float %32, ptr %33, align 4, !tbaa !111
  %34 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 7
  %35 = getelementptr inbounds %struct.BoneInitData, ptr %18, i64 0, i32 4
  %36 = load float, ptr %35, align 4, !tbaa !112
  store float %36, ptr %34, align 4, !tbaa !112
  %37 = getelementptr inbounds %struct.BoneInitData, ptr %18, i64 0, i32 4, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !112
  %39 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 7, i64 1
  store float %38, ptr %39, align 4, !tbaa !112
  %40 = getelementptr inbounds %struct.BoneInitData, ptr %18, i64 0, i32 4, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !112
  %42 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 7, i64 2
  store float %41, ptr %42, align 4, !tbaa !112
  %43 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 8
  %44 = getelementptr inbounds %struct.BoneInitData, ptr %18, i64 0, i32 1
  %45 = load float, ptr %44, align 4, !tbaa !112
  store float %45, ptr %43, align 4, !tbaa !112
  %46 = getelementptr inbounds %struct.BoneInitData, ptr %18, i64 0, i32 1, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !112
  %48 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 8, i64 1
  store float %47, ptr %48, align 4, !tbaa !112
  %49 = getelementptr inbounds %struct.BoneInitData, ptr %18, i64 0, i32 1, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !112
  %51 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 8, i64 2
  store float %50, ptr %51, align 4, !tbaa !112
  br i1 %14, label %97, label %52

52:                                               ; preds = %16
  %53 = load ptr, ptr %15, align 8, !tbaa !113
  %54 = load ptr, ptr %53, align 8, !tbaa !63
  %55 = icmp eq ptr %54, null
  br i1 %55, label %78, label %56

56:                                               ; preds = %52, %75
  %57 = phi ptr [ %76, %75 ], [ %54, %52 ]
  %58 = getelementptr inbounds %struct.EditBone, ptr %57, i64 0, i32 9
  %59 = load i32, ptr %58, align 4, !tbaa !114
  %60 = and i32 %59, 16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.EditBone, ptr %57, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !115
  %65 = icmp eq ptr %64, %17
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.EditBone, ptr %57, i64 0, i32 7
  %68 = load float, ptr %43, align 4, !tbaa !112
  store float %68, ptr %67, align 4, !tbaa !112
  %69 = load float, ptr %48, align 4, !tbaa !112
  %70 = getelementptr inbounds %struct.EditBone, ptr %57, i64 0, i32 7, i64 1
  store float %69, ptr %70, align 4, !tbaa !112
  %71 = load float, ptr %51, align 4, !tbaa !112
  %72 = getelementptr inbounds %struct.EditBone, ptr %57, i64 0, i32 7, i64 2
  store float %71, ptr %72, align 4, !tbaa !112
  %73 = load float, ptr %24, align 4, !tbaa !105
  %74 = getelementptr inbounds %struct.EditBone, ptr %57, i64 0, i32 18
  store float %73, ptr %74, align 8, !tbaa !116
  br label %75

75:                                               ; preds = %56, %62, %66
  %76 = load ptr, ptr %57, align 8, !tbaa !63
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %56, !llvm.loop !117

78:                                               ; preds = %75, %52
  %79 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 9
  %80 = load i32, ptr %79, align 4, !tbaa !114
  %81 = and i32 %80, 16
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !115
  %86 = icmp eq ptr %85, null
  br i1 %86, label %97, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.EditBone, ptr %85, i64 0, i32 8
  %89 = load float, ptr %34, align 4, !tbaa !112
  store float %89, ptr %88, align 4, !tbaa !112
  %90 = load float, ptr %39, align 4, !tbaa !112
  %91 = getelementptr inbounds %struct.EditBone, ptr %85, i64 0, i32 8, i64 1
  store float %90, ptr %91, align 4, !tbaa !112
  %92 = load float, ptr %42, align 4, !tbaa !112
  %93 = getelementptr inbounds %struct.EditBone, ptr %85, i64 0, i32 8, i64 2
  store float %92, ptr %93, align 4, !tbaa !112
  %94 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 18
  %95 = load float, ptr %94, align 8, !tbaa !116
  %96 = getelementptr inbounds %struct.EditBone, ptr %85, i64 0, i32 19
  store float %95, ptr %96, align 4, !tbaa !105
  br label %97

97:                                               ; preds = %78, %83, %87, %16
  %98 = getelementptr inbounds %struct.BoneInitData, ptr %18, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !97
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %16, !llvm.loop !118

101:                                              ; preds = %97, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @flushTransParticles(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = alloca [4 x [4 x float]], align 16
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %6 = load ptr, ptr %5, align 8, !tbaa !119
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !120
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !139
  br label %13

13:                                               ; preds = %1, %10
  %14 = phi ptr [ %12, %10 ], [ null, %1 ]
  %15 = tail call ptr @PE_get_current(ptr noundef %6, ptr noundef %14) #18
  %16 = getelementptr inbounds %struct.PTCacheEdit, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !54
  %20 = and i32 %19, 2048
  %21 = icmp eq ptr %17, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %13
  %23 = tail call ptr @psys_get_modifier(ptr noundef %14, ptr noundef nonnull %17) #18
  br label %24

24:                                               ; preds = %22, %13
  %25 = phi ptr [ %23, %22 ], [ null, %13 ]
  %26 = getelementptr inbounds %struct.PTCacheEdit, ptr %15, i64 0, i32 11
  %27 = load i32, ptr %26, align 8, !tbaa !144
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %116

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.PTCacheEdit, ptr %15, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !145
  %32 = getelementptr inbounds %struct.ParticleSystem, ptr %17, i64 0, i32 25
  %33 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %25, i64 0, i32 2
  %34 = getelementptr inbounds %struct.ParticleSystem, ptr %17, i64 0, i32 2
  %35 = getelementptr inbounds %struct.ParticleSystem, ptr %17, i64 0, i32 3
  %36 = getelementptr inbounds float, ptr %4, i64 1
  %37 = getelementptr inbounds float, ptr %4, i64 2
  %38 = icmp eq i32 %20, 0
  br label %39

39:                                               ; preds = %29, %110
  %40 = phi i64 [ 0, %29 ], [ %111, %110 ]
  %41 = phi ptr [ %31, %29 ], [ %112, %110 ]
  %42 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %41, i64 0, i32 2
  %43 = load i16, ptr %42, align 4, !tbaa !146
  %44 = and i16 %43, 4
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %110, label %46

46:                                               ; preds = %39
  br i1 %21, label %108, label %47

47:                                               ; preds = %46
  %48 = load i32, ptr %32, align 4, !tbaa !148
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %108

51:                                               ; preds = %47
  %52 = load ptr, ptr %33, align 8, !tbaa !150
  %53 = load ptr, ptr %34, align 8, !tbaa !153
  %54 = getelementptr inbounds %struct.ParticleSettings, ptr %53, i64 0, i32 8
  %55 = load i16, ptr %54, align 2, !tbaa !154
  %56 = load ptr, ptr %35, align 8, !tbaa !156
  %57 = getelementptr inbounds %struct.ParticleData, ptr %56, i64 %40
  call void @psys_mat_hair_to_global(ptr noundef %14, ptr noundef %52, i16 noundef signext %55, ptr noundef %57, ptr noundef nonnull %2) #18
  %58 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  %59 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %41, i64 0, i32 1
  %60 = load i32, ptr %59, align 8, !tbaa !157
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %110

62:                                               ; preds = %51
  %63 = load ptr, ptr %41, align 8, !tbaa !158
  br label %64

64:                                               ; preds = %62, %103
  %65 = phi i32 [ %104, %103 ], [ 0, %62 ]
  %66 = phi ptr [ %105, %103 ], [ %63, %62 ]
  %67 = getelementptr inbounds %struct.PTCacheEditKey, ptr %66, i64 0, i32 4
  %68 = load float, ptr %67, align 4, !tbaa !112
  store float %68, ptr %4, align 4, !tbaa !112
  %69 = getelementptr inbounds %struct.PTCacheEditKey, ptr %66, i64 0, i32 4, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !112
  store float %70, ptr %36, align 4, !tbaa !112
  %71 = getelementptr inbounds %struct.PTCacheEditKey, ptr %66, i64 0, i32 4, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !112
  store float %72, ptr %37, align 4, !tbaa !112
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  br i1 %38, label %94, label %73

73:                                               ; preds = %64
  %74 = load ptr, ptr %66, align 8, !tbaa !159
  %75 = load float, ptr %74, align 4, !tbaa !112
  %76 = load float, ptr %4, align 4, !tbaa !112
  %77 = fsub float %75, %76
  %78 = call float @llvm.fabs.f32(float %77)
  %79 = fcmp ugt float %78, 0x3F1A36E2E0000000
  br i1 %79, label %94, label %80

80:                                               ; preds = %73
  %81 = getelementptr inbounds float, ptr %74, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !112
  %83 = load float, ptr %36, align 4, !tbaa !112
  %84 = fsub float %82, %83
  %85 = call float @llvm.fabs.f32(float %84)
  %86 = fcmp ugt float %85, 0x3F1A36E2E0000000
  br i1 %86, label %94, label %87

87:                                               ; preds = %80
  %88 = getelementptr inbounds float, ptr %74, i64 2
  %89 = load float, ptr %88, align 4, !tbaa !112
  %90 = load float, ptr %37, align 4, !tbaa !112
  %91 = fsub float %89, %90
  %92 = call float @llvm.fabs.f32(float %91)
  %93 = fcmp ugt float %92, 0x3F1A36E2E0000000
  br i1 %93, label %94, label %103

94:                                               ; preds = %73, %80, %87, %64
  %95 = load ptr, ptr %66, align 8, !tbaa !159
  %96 = load float, ptr %4, align 4, !tbaa !112
  store float %96, ptr %95, align 4, !tbaa !112
  %97 = load float, ptr %36, align 4, !tbaa !112
  %98 = getelementptr inbounds float, ptr %95, i64 1
  store float %97, ptr %98, align 4, !tbaa !112
  %99 = load float, ptr %37, align 4, !tbaa !112
  %100 = getelementptr inbounds float, ptr %95, i64 2
  store float %99, ptr %100, align 4, !tbaa !112
  %101 = load i16, ptr %42, align 4, !tbaa !146
  %102 = or i16 %101, 2
  store i16 %102, ptr %42, align 4, !tbaa !146
  br label %103

103:                                              ; preds = %87, %94
  %104 = add nuw nsw i32 %65, 1
  %105 = getelementptr inbounds %struct.PTCacheEditKey, ptr %66, i64 1
  %106 = load i32, ptr %59, align 8, !tbaa !157
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %64, label %110, !llvm.loop !161

108:                                              ; preds = %47, %46
  %109 = or i16 %43, 2
  store i16 %109, ptr %42, align 4, !tbaa !146
  br label %110

110:                                              ; preds = %103, %51, %108, %39
  %111 = add nuw nsw i64 %40, 1
  %112 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %41, i64 1
  %113 = load i32, ptr %26, align 8, !tbaa !144
  %114 = sext i32 %113 to i64
  %115 = icmp slt i64 %111, %114
  br i1 %115, label %39, label %116, !llvm.loop !162

116:                                              ; preds = %110, %24
  %117 = load ptr, ptr %7, align 8, !tbaa !120
  %118 = icmp eq ptr %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.Base, ptr %117, i64 0, i32 7
  %121 = load ptr, ptr %120, align 8, !tbaa !139
  br label %122

122:                                              ; preds = %116, %119
  %123 = phi ptr [ %121, %119 ], [ null, %116 ]
  call void @PE_update_object(ptr noundef %6, ptr noundef %123, i32 noundef 1) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #18
  ret void
}

declare ptr @PE_get_current(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @psys_get_modifier(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @psys_mat_hair_to_global(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @PE_update_object(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @flushTransNodes(ptr noundef %0) local_unnamed_addr #6 {
  %2 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !163
  %3 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !167
  %4 = sitofp i32 %3 to float
  %5 = fmul float %2, %4
  %6 = fdiv float %5, 7.200000e+01
  tail call void @applyGridAbsolute(ptr noundef %0) #18
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %45

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !168
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  br label %15

15:                                               ; preds = %10, %34
  %16 = phi i32 [ %35, %34 ], [ 0, %10 ]
  %17 = phi ptr [ %36, %34 ], [ %14, %10 ]
  %18 = phi ptr [ %37, %34 ], [ %12, %10 ]
  %19 = getelementptr inbounds %struct.TransData, ptr %17, i64 0, i32 15
  %20 = load ptr, ptr %19, align 8, !tbaa !169
  %21 = load float, ptr %18, align 8, !tbaa !112
  %22 = fdiv float %21, %6
  %23 = getelementptr inbounds [3 x float], ptr %18, i64 0, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !112
  %25 = fdiv float %24, %6
  %26 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !170
  %28 = icmp eq ptr %27, null
  %29 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 24
  br i1 %28, label %32, label %30

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 25
  tail call void @nodeFromView(ptr noundef nonnull %27, float noundef %22, float noundef %25, ptr noundef nonnull %29, ptr noundef nonnull %31) #18
  br label %34

32:                                               ; preds = %15
  store float %22, ptr %29, align 8, !tbaa !172
  %33 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 25
  store float %25, ptr %33, align 4, !tbaa !173
  br label %34

34:                                               ; preds = %32, %30
  %35 = add nuw nsw i32 %16, 1
  %36 = getelementptr inbounds %struct.TransData, ptr %17, i64 1
  %37 = getelementptr inbounds %struct.TransData2D, ptr %18, i64 1
  %38 = load i32, ptr %7, align 8, !tbaa !34
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %15, label %40, !llvm.loop !174

40:                                               ; preds = %34
  %41 = icmp eq i32 %38, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %44 = load ptr, ptr %43, align 8, !tbaa !175
  tail call void @ED_node_link_intersect_test(ptr noundef %44, i32 noundef 1) #18
  br label %45

45:                                               ; preds = %1, %42, %40
  ret void
}

declare void @applyGridAbsolute(ptr noundef) local_unnamed_addr #7

declare void @nodeFromView(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @ED_node_link_intersect_test(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @flushTransSeq(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #18
  %5 = load ptr, ptr %4, align 8, !tbaa !176
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %103

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !168
  %13 = load ptr, ptr %6, align 8, !tbaa !48
  br label %14

14:                                               ; preds = %10, %92
  %15 = phi i32 [ %96, %92 ], [ 0, %10 ]
  %16 = phi i32 [ %95, %92 ], [ 0, %10 ]
  %17 = phi i32 [ %94, %92 ], [ 0, %10 ]
  %18 = phi ptr [ %93, %92 ], [ null, %10 ]
  %19 = phi ptr [ %98, %92 ], [ %12, %10 ]
  %20 = phi ptr [ %97, %92 ], [ %13, %10 ]
  %21 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 15
  %22 = load ptr, ptr %21, align 8, !tbaa !169
  %23 = load ptr, ptr %22, align 8, !tbaa !178
  %24 = getelementptr inbounds %struct.Sequence, ptr %23, i64 0, i32 8
  %25 = load i32, ptr %24, align 4, !tbaa !180
  %26 = load float, ptr %19, align 8, !tbaa !112
  %27 = fadd float %26, 5.000000e-01
  %28 = tail call float @llvm.floor.f32(float %27)
  %29 = fptosi float %28 to i32
  %30 = getelementptr inbounds %struct.TransDataSeq, ptr %22, i64 0, i32 3
  %31 = load i16, ptr %30, align 8, !tbaa !182
  switch i16 %31, label %68 [
    i16 1, label %32
    i16 2, label %58
    i16 4, label %63
  ]

32:                                               ; preds = %14
  %33 = getelementptr inbounds %struct.Sequence, ptr %23, i64 0, i32 14
  %34 = load i32, ptr %33, align 4, !tbaa !183
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = tail call zeroext i8 @BKE_sequence_tx_test(ptr noundef %23) #18
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36, %32
  %40 = getelementptr inbounds %struct.TransDataSeq, ptr %22, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !184
  %42 = sub nsw i32 %29, %41
  store i32 %42, ptr %24, align 4, !tbaa !180
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32, ptr %33, align 4, !tbaa !183
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %43
  %47 = getelementptr inbounds [3 x float], ptr %19, i64 0, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !112
  %49 = fadd float %48, 5.000000e-01
  %50 = tail call float @llvm.floor.f32(float %49)
  %51 = fptosi float %50 to i32
  %52 = getelementptr inbounds %struct.Sequence, ptr %23, i64 0, i32 13
  store i32 %51, ptr %52, align 8, !tbaa !185
  %53 = icmp slt i32 %51, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 1, ptr %52, align 8, !tbaa !185
  br label %68

55:                                               ; preds = %46
  %56 = icmp sgt i32 %51, 32
  br i1 %56, label %57, label %68

57:                                               ; preds = %55
  store i32 32, ptr %52, align 8, !tbaa !185
  br label %68

58:                                               ; preds = %14
  tail call void @BKE_sequence_tx_set_final_left(ptr noundef %23, i32 noundef %29) #18
  %59 = getelementptr inbounds %struct.TransDataSeq, ptr %22, i64 0, i32 1
  %60 = load i32, ptr %59, align 8, !tbaa !186
  %61 = and i32 %60, 2
  %62 = and i32 %60, 4
  tail call void @BKE_sequence_tx_handle_xlimits(ptr noundef %23, i32 noundef %61, i32 noundef %62) #18
  tail call void @BKE_sequence_single_fix(ptr noundef %23) #18
  br label %68

63:                                               ; preds = %14
  tail call void @BKE_sequence_tx_set_final_right(ptr noundef %23, i32 noundef %29) #18
  %64 = getelementptr inbounds %struct.TransDataSeq, ptr %22, i64 0, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !186
  %66 = and i32 %65, 2
  %67 = and i32 %65, 4
  tail call void @BKE_sequence_tx_handle_xlimits(ptr noundef %23, i32 noundef %66, i32 noundef %67) #18
  tail call void @BKE_sequence_single_fix(ptr noundef %23) #18
  br label %68

68:                                               ; preds = %43, %55, %57, %54, %14, %63, %58
  %69 = icmp eq ptr %23, %18
  br i1 %69, label %88, label %70

70:                                               ; preds = %68
  %71 = icmp eq ptr %18, null
  br i1 %71, label %85, label %72

72:                                               ; preds = %70
  %73 = load ptr, ptr %2, align 8, !tbaa !119
  %74 = getelementptr inbounds %struct.Sequence, ptr %18, i64 0, i32 14
  %75 = load i32, ptr %74, align 4, !tbaa !183
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  tail call void @BKE_sequence_calc(ptr noundef %73, ptr noundef nonnull %18) #18
  br label %79

78:                                               ; preds = %72
  tail call void @BKE_sequence_calc_disp(ptr noundef %73, ptr noundef nonnull %18) #18
  br label %79

79:                                               ; preds = %78, %77
  %80 = icmp eq i32 %16, 1
  br i1 %80, label %81, label %85

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.Sequence, ptr %18, i64 0, i32 8
  %83 = load i32, ptr %82, align 4, !tbaa !180
  %84 = sub nsw i32 %83, %17
  tail call void @BKE_sequencer_offset_animdata(ptr noundef %73, ptr noundef nonnull %18, i32 noundef %84) #18
  br label %85

85:                                               ; preds = %81, %79, %70
  %86 = load i16, ptr %30, align 8, !tbaa !182
  %87 = sext i16 %86 to i32
  br label %92

88:                                               ; preds = %68
  %89 = load i16, ptr %30, align 8, !tbaa !182
  %90 = sext i16 %89 to i32
  %91 = or i32 %16, %90
  br label %92

92:                                               ; preds = %88, %85
  %93 = phi ptr [ %23, %85 ], [ %18, %88 ]
  %94 = phi i32 [ %25, %85 ], [ %17, %88 ]
  %95 = phi i32 [ %87, %85 ], [ %91, %88 ]
  %96 = add nuw nsw i32 %15, 1
  %97 = getelementptr inbounds %struct.TransData, ptr %20, i64 1
  %98 = getelementptr inbounds %struct.TransData2D, ptr %19, i64 1
  %99 = load i32, ptr %7, align 8, !tbaa !34
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %14, label %101, !llvm.loop !187

101:                                              ; preds = %92
  %102 = icmp eq i32 %95, 1
  br label %103

103:                                              ; preds = %101, %1
  %104 = phi ptr [ null, %1 ], [ %93, %101 ]
  %105 = phi i32 [ 0, %1 ], [ %94, %101 ]
  %106 = phi i1 [ false, %1 ], [ %102, %101 ]
  %107 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %108 = icmp eq ptr %104, null
  br i1 %108, label %121, label %109

109:                                              ; preds = %103
  %110 = load ptr, ptr %2, align 8, !tbaa !119
  %111 = getelementptr inbounds %struct.Sequence, ptr %104, i64 0, i32 14
  %112 = load i32, ptr %111, align 4, !tbaa !183
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  tail call void @BKE_sequence_calc(ptr noundef %110, ptr noundef nonnull %104) #18
  br label %116

115:                                              ; preds = %109
  tail call void @BKE_sequence_calc_disp(ptr noundef %110, ptr noundef nonnull %104) #18
  br label %116

116:                                              ; preds = %115, %114
  br i1 %106, label %117, label %121

117:                                              ; preds = %116
  %118 = getelementptr inbounds %struct.Sequence, ptr %104, i64 0, i32 8
  %119 = load i32, ptr %118, align 4, !tbaa !180
  %120 = sub nsw i32 %119, %105
  tail call void @BKE_sequencer_offset_animdata(ptr noundef %110, ptr noundef nonnull %104, i32 noundef %120) #18
  br label %121

121:                                              ; preds = %117, %116, %103
  %122 = load i32, ptr %0, align 8, !tbaa !188
  switch i32 %122, label %162 [
    i32 30, label %123
    i32 19, label %123
  ]

123:                                              ; preds = %121, %121
  %124 = load ptr, ptr %5, align 8, !tbaa !63
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %141, %123
  %127 = load ptr, ptr %5, align 8, !tbaa !63
  %128 = icmp eq ptr %127, null
  br i1 %128, label %162, label %144

129:                                              ; preds = %123, %141
  %130 = phi ptr [ %142, %141 ], [ %124, %123 ]
  %131 = getelementptr inbounds %struct.Sequence, ptr %130, i64 0, i32 6
  %132 = load i32, ptr %131, align 4, !tbaa !189
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %141

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.Sequence, ptr %130, i64 0, i32 5
  %136 = load i32, ptr %135, align 8, !tbaa !190
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %134
  %140 = load ptr, ptr %2, align 8, !tbaa !119
  tail call void @BKE_sequence_calc(ptr noundef %140, ptr noundef nonnull %130) #18
  br label %141

141:                                              ; preds = %129, %134, %139
  %142 = load ptr, ptr %130, align 8, !tbaa !63
  %143 = icmp eq ptr %142, null
  br i1 %143, label %126, label %129, !llvm.loop !191

144:                                              ; preds = %126, %159
  %145 = phi ptr [ %160, %159 ], [ %127, %126 ]
  %146 = getelementptr inbounds %struct.Sequence, ptr %145, i64 0, i32 33
  %147 = load ptr, ptr %146, align 8, !tbaa !192
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %157

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.Sequence, ptr %145, i64 0, i32 34
  %151 = load ptr, ptr %150, align 8, !tbaa !193
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.Sequence, ptr %145, i64 0, i32 35
  %155 = load ptr, ptr %154, align 8, !tbaa !194
  %156 = icmp eq ptr %155, null
  br i1 %156, label %159, label %157

157:                                              ; preds = %153, %149, %144
  %158 = load ptr, ptr %2, align 8, !tbaa !119
  tail call void @BKE_sequence_calc(ptr noundef %158, ptr noundef nonnull %145) #18
  br label %159

159:                                              ; preds = %153, %157
  %160 = load ptr, ptr %145, align 8, !tbaa !63
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %144, !llvm.loop !195

162:                                              ; preds = %159, %126, %121
  %163 = load i32, ptr %107, align 8, !tbaa !34
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %193

165:                                              ; preds = %162
  %166 = load ptr, ptr %6, align 8, !tbaa !48
  br label %167

167:                                              ; preds = %165, %188
  %168 = phi i32 [ %189, %188 ], [ 0, %165 ]
  %169 = phi ptr [ %173, %188 ], [ null, %165 ]
  %170 = phi ptr [ %190, %188 ], [ %166, %165 ]
  %171 = getelementptr inbounds %struct.TransData, ptr %170, i64 0, i32 15
  %172 = load ptr, ptr %171, align 8, !tbaa !169
  %173 = load ptr, ptr %172, align 8, !tbaa !178
  %174 = icmp eq ptr %173, %169
  br i1 %174, label %188, label %175

175:                                              ; preds = %167
  %176 = getelementptr inbounds %struct.Sequence, ptr %173, i64 0, i32 14
  %177 = load i32, ptr %176, align 4, !tbaa !183
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.Sequence, ptr %173, i64 0, i32 5
  %181 = load i32, ptr %180, align 8, !tbaa !190
  %182 = and i32 %181, -9
  store i32 %182, ptr %180, align 8, !tbaa !190
  %183 = tail call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %5, ptr noundef %173) #18
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %179
  %186 = load i32, ptr %180, align 8, !tbaa !190
  %187 = or i32 %186, 8
  store i32 %187, ptr %180, align 8, !tbaa !190
  br label %188

188:                                              ; preds = %175, %185, %179, %167
  %189 = add nuw nsw i32 %168, 1
  %190 = getelementptr inbounds %struct.TransData, ptr %170, i64 1
  %191 = load i32, ptr %107, align 8, !tbaa !34
  %192 = icmp slt i32 %189, %191
  br i1 %192, label %167, label %193, !llvm.loop !196

193:                                              ; preds = %188, %162
  ret void
}

declare ptr @BKE_sequencer_editing_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

declare zeroext i8 @BKE_sequence_tx_test(ptr noundef) local_unnamed_addr #7

declare void @BKE_sequence_tx_set_final_left(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @BKE_sequence_tx_handle_xlimits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @BKE_sequence_single_fix(ptr noundef) local_unnamed_addr #7

declare void @BKE_sequence_tx_set_final_right(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @BKE_sequence_calc(ptr noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i8 @BKE_sequence_test_overlap(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @flushTransUVs(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %7 = load ptr, ptr %6, align 8, !tbaa !175
  %8 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  call void @ED_space_image_get_uv_aspect(ptr noundef %9, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  call void @ED_space_image_get_size(ptr noundef %9, ptr noundef nonnull %2, ptr noundef nonnull %3) #18
  %10 = load float, ptr %4, align 4, !tbaa !112
  %11 = fdiv float 1.000000e+00, %10
  %12 = load float, ptr %5, align 4, !tbaa !112
  %13 = fdiv float 1.000000e+00, %12
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !34
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !168
  %20 = getelementptr inbounds %struct.SpaceImage, ptr %9, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !199
  %22 = and i32 %21, 1024
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %25 = load i32, ptr %2, align 4
  %26 = sitofp i32 %25 to float
  %27 = load i32, ptr %3, align 4
  %28 = sitofp i32 %27 to float
  br label %29

29:                                               ; preds = %17, %50
  %30 = phi ptr [ %19, %17 ], [ %52, %50 ]
  %31 = phi i32 [ 0, %17 ], [ %51, %50 ]
  %32 = load float, ptr %30, align 8, !tbaa !112
  %33 = fmul float %11, %32
  %34 = getelementptr inbounds %struct.TransData2D, ptr %30, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !205
  store float %33, ptr %35, align 4, !tbaa !112
  %36 = getelementptr inbounds [3 x float], ptr %30, i64 0, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !112
  %38 = fmul float %13, %37
  %39 = getelementptr inbounds float, ptr %35, i64 1
  store float %38, ptr %39, align 4, !tbaa !112
  br i1 %23, label %50, label %40

40:                                               ; preds = %29
  %41 = load i16, ptr %24, align 4, !tbaa !207
  %42 = icmp eq i16 %41, 3
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = call float @llvm.fmuladd.f32(float %26, float %33, float 5.000000e-01)
  %45 = call float @llvm.floor.f32(float %44)
  %46 = fdiv float %45, %26
  store float %46, ptr %35, align 4, !tbaa !112
  %47 = call float @llvm.fmuladd.f32(float %28, float %38, float 5.000000e-01)
  %48 = call float @llvm.floor.f32(float %47)
  %49 = fdiv float %48, %28
  store float %49, ptr %39, align 4, !tbaa !112
  br label %50

50:                                               ; preds = %29, %40, %43
  %51 = add nuw nsw i32 %31, 1
  %52 = getelementptr inbounds %struct.TransData2D, ptr %30, i64 1
  %53 = icmp eq i32 %51, %15
  br i1 %53, label %54, label %29, !llvm.loop !208

54:                                               ; preds = %50, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  ret void
}

declare void @ED_space_image_get_uv_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @ED_space_image_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #8

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @clipUVTransform(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i8 noundef zeroext %2) local_unnamed_addr #6 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %9 = load ptr, ptr %8, align 8, !tbaa !175
  %10 = getelementptr inbounds %struct.ScrArea, ptr %9, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !197
  call void @ED_space_image_get_uv_aspect(ptr noundef %11, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %12 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  store float 0.000000e+00, ptr %12, align 4, !tbaa !112
  store float 0.000000e+00, ptr %6, align 4, !tbaa !112
  %13 = load float, ptr %4, align 4, !tbaa !112
  store float %13, ptr %7, align 4, !tbaa !112
  %14 = load float, ptr %5, align 4, !tbaa !112
  %15 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  store float %14, ptr %15, align 4, !tbaa !112
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !34
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i32 [ %27, %22 ], [ 0, %19 ]
  %24 = phi ptr [ %28, %22 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.TransData, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !209
  call void @minmax_v2v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %26) #18
  %27 = add nuw nsw i32 %23, 1
  %28 = getelementptr inbounds %struct.TransData, ptr %24, i64 1
  %29 = load i32, ptr %16, align 8, !tbaa !34
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %22, label %31, !llvm.loop !210

31:                                               ; preds = %22, %3
  %32 = icmp eq i8 %2, 0
  %33 = load float, ptr %6, align 4, !tbaa !112
  %34 = fcmp olt float %33, 0.000000e+00
  br i1 %32, label %96, label %35

35:                                               ; preds = %31
  br i1 %34, label %36, label %47

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %38 = load float, ptr %37, align 4, !tbaa !112
  %39 = fcmp ogt float %38, 0.000000e+00
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load float, ptr %4, align 4, !tbaa !112
  %42 = fmul float %41, 5.000000e-01
  %43 = fcmp olt float %38, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = fsub float %38, %33
  %46 = fdiv float %38, %45
  br label %59

47:                                               ; preds = %40, %36, %35
  %48 = load float, ptr %7, align 4, !tbaa !112
  %49 = load float, ptr %4, align 4, !tbaa !112
  %50 = fcmp ogt float %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %53 = load float, ptr %52, align 4, !tbaa !112
  %54 = fcmp olt float %53, %49
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = fsub float %53, %49
  %57 = fsub float %53, %48
  %58 = fdiv float %56, %57
  br label %59

59:                                               ; preds = %44, %55
  %60 = phi float [ %58, %55 ], [ %46, %44 ]
  %61 = load float, ptr %1, align 4, !tbaa !112
  %62 = fmul float %60, %61
  store float %62, ptr %1, align 4, !tbaa !112
  br label %63

63:                                               ; preds = %59, %47, %51
  %64 = phi i32 [ 0, %51 ], [ 0, %47 ], [ 1, %59 ]
  %65 = load float, ptr %12, align 4, !tbaa !112
  %66 = fcmp olt float %65, 0.000000e+00
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !112
  %70 = fcmp ogt float %69, 0.000000e+00
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load float, ptr %5, align 4, !tbaa !112
  %73 = fmul float %72, 5.000000e-01
  %74 = fcmp olt float %69, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = fsub float %69, %65
  %77 = fdiv float %69, %76
  %78 = getelementptr inbounds float, ptr %1, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !112
  %80 = fmul float %77, %79
  store float %80, ptr %78, align 4, !tbaa !112
  br label %124

81:                                               ; preds = %71, %67, %63
  %82 = load float, ptr %15, align 4, !tbaa !112
  %83 = load float, ptr %5, align 4, !tbaa !112
  %84 = fcmp ogt float %82, %83
  br i1 %84, label %85, label %124

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !112
  %88 = fcmp olt float %87, %83
  br i1 %88, label %89, label %124

89:                                               ; preds = %85
  %90 = fsub float %87, %83
  %91 = fsub float %87, %82
  %92 = fdiv float %90, %91
  %93 = getelementptr inbounds float, ptr %1, i64 1
  %94 = load float, ptr %93, align 4, !tbaa !112
  %95 = fmul float %92, %94
  store float %95, ptr %93, align 4, !tbaa !112
  br label %124

96:                                               ; preds = %31
  br i1 %34, label %103, label %97

97:                                               ; preds = %96
  %98 = load float, ptr %7, align 4, !tbaa !112
  %99 = load float, ptr %4, align 4, !tbaa !112
  %100 = fcmp ogt float %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = fsub float %98, %99
  br label %103

103:                                              ; preds = %96, %101
  %104 = phi float [ %102, %101 ], [ %33, %96 ]
  %105 = load float, ptr %1, align 4, !tbaa !112
  %106 = fsub float %105, %104
  store float %106, ptr %1, align 4, !tbaa !112
  br label %107

107:                                              ; preds = %103, %97
  %108 = phi i32 [ 0, %97 ], [ 1, %103 ]
  %109 = load float, ptr %12, align 4, !tbaa !112
  %110 = fcmp olt float %109, 0.000000e+00
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = getelementptr inbounds float, ptr %1, i64 1
  %113 = load float, ptr %112, align 4, !tbaa !112
  %114 = fsub float %113, %109
  store float %114, ptr %112, align 4, !tbaa !112
  br label %124

115:                                              ; preds = %107
  %116 = load float, ptr %15, align 4, !tbaa !112
  %117 = load float, ptr %5, align 4, !tbaa !112
  %118 = fcmp ogt float %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = fsub float %116, %117
  %121 = getelementptr inbounds float, ptr %1, i64 1
  %122 = load float, ptr %121, align 4, !tbaa !112
  %123 = fsub float %122, %120
  store float %123, ptr %121, align 4, !tbaa !112
  br label %124

124:                                              ; preds = %115, %81, %85, %111, %119, %75, %89
  %125 = phi i32 [ %64, %75 ], [ %64, %89 ], [ %108, %111 ], [ %108, %119 ], [ %64, %85 ], [ %64, %81 ], [ %108, %115 ]
  %126 = phi i1 [ true, %75 ], [ true, %89 ], [ true, %111 ], [ true, %119 ], [ false, %85 ], [ false, %81 ], [ false, %115 ]
  %127 = icmp ne i32 %125, 0
  %128 = or i1 %127, %126
  %129 = zext i1 %128 to i8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret i8 %129
}

declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @clipUVData(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %5 = load ptr, ptr %4, align 8, !tbaa !175
  %6 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !197
  call void @ED_space_image_get_uv_aspect(ptr noundef %7, ptr noundef nonnull %2, ptr noundef nonnull %3) #18
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %46

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  br label %14

14:                                               ; preds = %11, %42
  %15 = phi i32 [ %43, %42 ], [ 0, %11 ]
  %16 = phi ptr [ %44, %42 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.TransData, ptr %16, i64 0, i32 16
  %18 = load i32, ptr %17, align 8, !tbaa !49
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %14
  %22 = and i32 %18, 2048
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.TransData, ptr %16, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !209
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %28

28:                                               ; preds = %24
  %29 = load float, ptr %26, align 4, !tbaa !112
  %30 = fcmp olt float %29, 0.000000e+00
  %31 = select i1 %30, float 0.000000e+00, float %29
  %32 = load float, ptr %2, align 4, !tbaa !112
  %33 = fcmp olt float %31, %32
  %34 = select i1 %33, float %31, float %32
  store float %34, ptr %26, align 4, !tbaa !112
  %35 = getelementptr inbounds float, ptr %26, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !112
  %37 = fcmp olt float %36, 0.000000e+00
  %38 = select i1 %37, float 0.000000e+00, float %36
  %39 = load float, ptr %3, align 4, !tbaa !112
  %40 = fcmp olt float %38, %39
  %41 = select i1 %40, float %38, float %39
  store float %41, ptr %35, align 4, !tbaa !112
  br label %42

42:                                               ; preds = %21, %24, %28
  %43 = add nuw nsw i32 %15, 1
  %44 = getelementptr inbounds %struct.TransData, ptr %16, i64 1
  %45 = icmp eq i32 %43, %9
  br i1 %45, label %46, label %14, !llvm.loop !211

46:                                               ; preds = %42, %14, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @flushTransIntFrameActionData(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %7 = load ptr, ptr %6, align 8, !tbaa !96
  %8 = load i32, ptr %0, align 8, !tbaa !188
  %9 = icmp eq i32 %8, 20
  %10 = select i1 %9, i64 2, i64 0
  %11 = getelementptr inbounds float, ptr %7, i64 %10
  br label %12

12:                                               ; preds = %5, %12
  %13 = phi i32 [ %21, %12 ], [ 0, %5 ]
  %14 = phi ptr [ %22, %12 ], [ %11, %5 ]
  %15 = load float, ptr %14, align 8, !tbaa !212
  %16 = fadd float %15, 5.000000e-01
  %17 = tail call float @llvm.floor.f32(float %16)
  %18 = fptosi float %17 to i32
  %19 = getelementptr inbounds %struct.tGPFtransdata, ptr %14, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !214
  store i32 %18, ptr %20, align 4, !tbaa !57
  %21 = add nuw nsw i32 %13, 1
  %22 = getelementptr inbounds %struct.tGPFtransdata, ptr %14, i64 1
  %23 = load i32, ptr %2, align 8, !tbaa !34
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %12, label %25, !llvm.loop !215

25:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @remake_graph_transdata(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = alloca %struct.BeztMap, align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !63
  %5 = icmp eq ptr %4, null
  br i1 %5, label %238, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %8 = load ptr, ptr %7, align 8, !tbaa !175
  %9 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !197
  %11 = getelementptr inbounds %struct.SpaceIpo, ptr %10, i64 0, i32 11
  %12 = load i32, ptr %11, align 4, !tbaa !216
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 12
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %18 = zext i1 %14 to i8
  br label %19

19:                                               ; preds = %6, %235
  %20 = phi ptr [ %4, %6 ], [ %236, %235 ]
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %20, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !219
  %23 = getelementptr inbounds %struct.FCurve, ptr %22, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !221
  %25 = icmp eq ptr %24, null
  br i1 %25, label %235, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.FCurve, ptr %22, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !223
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %55, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %32 = sext i32 %28 to i64
  %33 = mul nsw i64 %32, 24
  %34 = tail call ptr %31(i64 noundef %33, ptr noundef nonnull @.str.8) #18
  %35 = icmp sgt i32 %28, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %30, %36
  %37 = phi i32 [ %51, %36 ], [ 0, %30 ]
  %38 = phi ptr [ %52, %36 ], [ %34, %30 ]
  %39 = phi ptr [ %40, %36 ], [ null, %30 ]
  %40 = phi ptr [ %53, %36 ], [ %24, %30 ]
  store ptr %40, ptr %38, align 8, !tbaa !224
  %41 = getelementptr inbounds %struct.BeztMap, ptr %38, i64 0, i32 1
  store i32 %37, ptr %41, align 8, !tbaa !226
  %42 = getelementptr inbounds %struct.BeztMap, ptr %38, i64 0, i32 2
  store i32 %37, ptr %42, align 4, !tbaa !227
  %43 = icmp eq ptr %39, null
  %44 = select i1 %43, ptr %40, ptr %39
  %45 = getelementptr inbounds %struct.BezTriple, ptr %44, i64 0, i32 4
  %46 = load i8, ptr %45, align 4, !tbaa !228
  %47 = getelementptr inbounds %struct.BeztMap, ptr %38, i64 0, i32 4
  store i8 %46, ptr %47, align 2, !tbaa !230
  %48 = getelementptr inbounds %struct.BezTriple, ptr %40, i64 0, i32 4
  %49 = load i8, ptr %48, align 4, !tbaa !228
  %50 = getelementptr inbounds %struct.BeztMap, ptr %38, i64 0, i32 5
  store i8 %49, ptr %50, align 1, !tbaa !231
  %51 = add nuw nsw i32 %37, 1
  %52 = getelementptr inbounds %struct.BeztMap, ptr %38, i64 1
  %53 = getelementptr inbounds %struct.BezTriple, ptr %40, i64 1
  %54 = icmp eq i32 %51, %28
  br i1 %54, label %55, label %36, !llvm.loop !232

55:                                               ; preds = %36, %30, %26
  %56 = phi ptr [ null, %26 ], [ %34, %30 ], [ %34, %36 ]
  %57 = load i32, ptr %27, align 8, !tbaa !223
  %58 = icmp eq i32 %57, 0
  br label %62

59:                                               ; preds = %103, %62
  %60 = phi i32 [ 0, %62 ], [ %86, %103 ]
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %106, label %62, !llvm.loop !233

62:                                               ; preds = %55, %59
  br i1 %58, label %59, label %63

63:                                               ; preds = %62, %103
  %64 = phi i32 [ %86, %103 ], [ 0, %62 ]
  %65 = phi i32 [ %67, %103 ], [ %57, %62 ]
  %66 = phi ptr [ %104, %103 ], [ %56, %62 ]
  %67 = add nsw i32 %65, -1
  %68 = icmp sgt i32 %65, 1
  br i1 %68, label %69, label %85

69:                                               ; preds = %63
  %70 = load ptr, ptr %66, align 8, !tbaa !224
  %71 = getelementptr inbounds [3 x [3 x float]], ptr %70, i64 0, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !112
  %73 = getelementptr inbounds %struct.BeztMap, ptr %66, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !224
  %75 = getelementptr inbounds [3 x [3 x float]], ptr %74, i64 0, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !112
  %77 = fcmp ogt float %72, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct.BeztMap, ptr %66, i64 0, i32 2
  %80 = load i32, ptr %79, align 4, !tbaa !227
  %81 = add i32 %80, 1
  store i32 %81, ptr %79, align 4, !tbaa !227
  %82 = getelementptr inbounds %struct.BeztMap, ptr %66, i64 1, i32 2
  %83 = load i32, ptr %82, align 4, !tbaa !227
  %84 = add i32 %83, -1
  store i32 %84, ptr %82, align 4, !tbaa !227
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %66, i64 24, i1 false), !tbaa.struct !234
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %66, ptr noundef nonnull align 8 dereferenceable(24) %73, i64 24, i1 false), !tbaa.struct !234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %73, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !234
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3)
  br label %85

85:                                               ; preds = %78, %69, %63
  %86 = phi i32 [ 1, %78 ], [ %64, %69 ], [ %64, %63 ]
  %87 = getelementptr inbounds %struct.BeztMap, ptr %66, i64 0, i32 3
  %88 = load i16, ptr %87, align 8, !tbaa !235
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %85
  %91 = load ptr, ptr %66, align 8, !tbaa !224
  %92 = load float, ptr %91, align 4, !tbaa !112
  %93 = getelementptr inbounds [3 x [3 x float]], ptr %91, i64 0, i64 1
  %94 = load float, ptr %93, align 4, !tbaa !112
  %95 = fcmp ogt float %92, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = getelementptr inbounds [3 x [3 x float]], ptr %91, i64 0, i64 2
  %98 = load float, ptr %97, align 4, !tbaa !112
  %99 = fcmp olt float %98, %94
  br i1 %99, label %101, label %100

100:                                              ; preds = %96, %90
  br label %101

101:                                              ; preds = %96, %100
  %102 = phi i16 [ -1, %100 ], [ 1, %96 ]
  store i16 %102, ptr %87, align 8, !tbaa !235
  br label %103

103:                                              ; preds = %101, %85
  %104 = getelementptr inbounds %struct.BeztMap, ptr %66, i64 1
  %105 = icmp eq i32 %67, 0
  br i1 %105, label %59, label %63, !llvm.loop !236

106:                                              ; preds = %59
  %107 = load i32, ptr %27, align 8, !tbaa !223
  %108 = load ptr, ptr %23, align 8, !tbaa !221
  %109 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %110 = load i32, ptr %15, align 8, !tbaa !34
  %111 = sext i32 %110 to i64
  %112 = tail call ptr %109(i64 noundef %111, ptr noundef nonnull @.str.9) #18
  %113 = icmp sgt i32 %107, 0
  br i1 %113, label %114, label %232

114:                                              ; preds = %106, %228
  %115 = phi ptr [ %230, %228 ], [ %56, %106 ]
  %116 = phi i32 [ %229, %228 ], [ 0, %106 ]
  %117 = load i32, ptr %15, align 8, !tbaa !34
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %228

119:                                              ; preds = %114
  %120 = load ptr, ptr %17, align 8, !tbaa !48
  %121 = load ptr, ptr %16, align 8, !tbaa !168
  %122 = getelementptr inbounds %struct.BeztMap, ptr %115, i64 0, i32 2
  %123 = getelementptr inbounds %struct.BeztMap, ptr %115, i64 0, i32 3
  %124 = getelementptr inbounds %struct.BeztMap, ptr %115, i64 0, i32 2
  %125 = getelementptr inbounds %struct.BeztMap, ptr %115, i64 0, i32 2
  %126 = getelementptr inbounds %struct.BeztMap, ptr %115, i64 0, i32 3
  %127 = getelementptr inbounds %struct.BeztMap, ptr %115, i64 0, i32 2
  %128 = getelementptr inbounds %struct.BeztMap, ptr %115, i64 0, i32 2
  %129 = getelementptr inbounds %struct.BeztMap, ptr %115, i64 0, i32 3
  %130 = getelementptr inbounds %struct.BeztMap, ptr %115, i64 0, i32 2
  %131 = getelementptr inbounds %struct.BeztMap, ptr %115, i64 0, i32 2
  br label %132

132:                                              ; preds = %119, %221
  %133 = phi i64 [ 0, %119 ], [ %222, %221 ]
  %134 = phi ptr [ %120, %119 ], [ %224, %221 ]
  %135 = phi ptr [ %121, %119 ], [ %223, %221 ]
  %136 = getelementptr inbounds i8, ptr %112, i64 %133
  %137 = load i8, ptr %136, align 1, !tbaa !81
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %221

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.TransData2D, ptr %135, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !205
  %142 = load ptr, ptr %115, align 8, !tbaa !224
  %143 = icmp eq ptr %141, %142
  br i1 %143, label %144, label %157

144:                                              ; preds = %139
  %145 = load i16, ptr %126, align 8, !tbaa !235
  %146 = icmp eq i16 %145, 1
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load i32, ptr %128, align 4, !tbaa !227
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.BezTriple, ptr %108, i64 %149, i32 0, i64 2
  br label %155

151:                                              ; preds = %144
  %152 = load i32, ptr %127, align 4, !tbaa !227
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.BezTriple, ptr %108, i64 %153
  br label %155

155:                                              ; preds = %151, %147
  %156 = phi ptr [ %154, %151 ], [ %150, %147 ]
  store ptr %156, ptr %140, align 8, !tbaa !205
  br label %191

157:                                              ; preds = %139
  %158 = getelementptr inbounds [3 x [3 x float]], ptr %142, i64 0, i64 2
  %159 = icmp eq ptr %141, %158
  br i1 %159, label %160, label %173

160:                                              ; preds = %157
  %161 = load i16, ptr %123, align 8, !tbaa !235
  %162 = icmp eq i16 %161, 1
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = load i32, ptr %125, align 4, !tbaa !227
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.BezTriple, ptr %108, i64 %165
  br label %171

167:                                              ; preds = %160
  %168 = load i32, ptr %124, align 4, !tbaa !227
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.BezTriple, ptr %108, i64 %169, i32 0, i64 2
  br label %171

171:                                              ; preds = %167, %163
  %172 = phi ptr [ %170, %167 ], [ %166, %163 ]
  store ptr %172, ptr %140, align 8, !tbaa !205
  br label %191

173:                                              ; preds = %157
  %174 = getelementptr inbounds [3 x [3 x float]], ptr %142, i64 0, i64 1
  %175 = icmp eq ptr %141, %174
  br i1 %175, label %176, label %192

176:                                              ; preds = %173
  %177 = load i32, ptr %122, align 4, !tbaa !227
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.BezTriple, ptr %108, i64 %178, i32 0, i64 1
  store ptr %179, ptr %140, align 8, !tbaa !205
  %180 = getelementptr inbounds %struct.TransData2D, ptr %135, i64 0, i32 2
  %181 = load ptr, ptr %180, align 8, !tbaa !237
  %182 = icmp eq ptr %181, null
  br i1 %182, label %185, label %183

183:                                              ; preds = %176
  %184 = getelementptr inbounds %struct.BezTriple, ptr %108, i64 %178
  store ptr %184, ptr %180, align 8, !tbaa !237
  br label %185

185:                                              ; preds = %183, %176
  %186 = getelementptr inbounds %struct.TransData2D, ptr %135, i64 0, i32 3
  %187 = load ptr, ptr %186, align 8, !tbaa !238
  %188 = icmp eq ptr %187, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.BezTriple, ptr %108, i64 %178, i32 0, i64 2
  store ptr %190, ptr %186, align 8, !tbaa !238
  br label %191

191:                                              ; preds = %185, %189, %155, %171
  store i8 1, ptr %136, align 1, !tbaa !81
  br label %192

192:                                              ; preds = %191, %173
  %193 = load i8, ptr %136, align 1, !tbaa !81
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %221, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.TransData, ptr %134, i64 0, i32 16
  %197 = load i32, ptr %196, align 8, !tbaa !49
  %198 = and i32 %197, 4096
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %221, label %200

200:                                              ; preds = %195
  %201 = getelementptr inbounds %struct.TransData, ptr %134, i64 0, i32 14
  %202 = load ptr, ptr %201, align 8, !tbaa !239
  %203 = icmp eq ptr %202, null
  br i1 %203, label %221, label %204

204:                                              ; preds = %200
  %205 = load i16, ptr %129, align 8, !tbaa !235
  %206 = icmp eq i16 %205, 1
  %207 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %202, i64 0, i32 2
  %208 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %202, i64 0, i32 3
  br i1 %206, label %209, label %214

209:                                              ; preds = %204
  %210 = load i32, ptr %131, align 4, !tbaa !227
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct.BezTriple, ptr %108, i64 %211, i32 6
  store ptr %212, ptr %207, align 8, !tbaa !240
  %213 = getelementptr inbounds %struct.BezTriple, ptr %108, i64 %211, i32 5
  br label %219

214:                                              ; preds = %204
  %215 = load i32, ptr %130, align 4, !tbaa !227
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds %struct.BezTriple, ptr %108, i64 %216, i32 5
  store ptr %217, ptr %207, align 8, !tbaa !240
  %218 = getelementptr inbounds %struct.BezTriple, ptr %108, i64 %216, i32 6
  br label %219

219:                                              ; preds = %209, %214
  %220 = phi ptr [ %218, %214 ], [ %213, %209 ]
  store ptr %220, ptr %208, align 8, !tbaa !242
  br label %221

221:                                              ; preds = %219, %200, %195, %192, %132
  %222 = add nuw nsw i64 %133, 1
  %223 = getelementptr inbounds %struct.TransData2D, ptr %135, i64 1
  %224 = getelementptr inbounds %struct.TransData, ptr %134, i64 1
  %225 = load i32, ptr %15, align 8, !tbaa !34
  %226 = sext i32 %225 to i64
  %227 = icmp slt i64 %222, %226
  br i1 %227, label %132, label %228, !llvm.loop !243

228:                                              ; preds = %221, %114
  %229 = add nuw nsw i32 %116, 1
  %230 = getelementptr inbounds %struct.BeztMap, ptr %115, i64 1
  %231 = icmp eq i32 %229, %107
  br i1 %231, label %232, label %114, !llvm.loop !244

232:                                              ; preds = %228, %106
  %233 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  tail call void %233(ptr noundef %112) #18
  %234 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  tail call void %234(ptr noundef %56) #18
  tail call void @sort_time_fcurve(ptr noundef %22) #18
  tail call void @testhandles_fcurve(ptr noundef %22, i8 noundef zeroext %18) #18
  br label %235

235:                                              ; preds = %232, %19
  %236 = load ptr, ptr %20, align 8, !tbaa !63
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %19, !llvm.loop !245

238:                                              ; preds = %235, %2
  ret void
}

declare void @sort_time_fcurve(ptr noundef) local_unnamed_addr #7

declare void @testhandles_fcurve(ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @flushTransGraphData(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 55
  %5 = load i16, ptr %4, align 4, !tbaa !246
  %6 = sitofp i16 %5 to double
  %7 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 65
  %8 = load float, ptr %7, align 4, !tbaa !247
  %9 = fpext float %8 to double
  %10 = fdiv double %6, %9
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !34
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %195

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %16 = load ptr, ptr %15, align 8, !tbaa !96
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !168
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %22 = load ptr, ptr %21, align 8, !tbaa !175
  %23 = getelementptr inbounds %struct.ScrArea, ptr %22, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !197
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %26 = getelementptr inbounds %struct.SpaceIpo, ptr %24, i64 0, i32 10
  %27 = getelementptr inbounds %struct.SpaceIpo, ptr %24, i64 0, i32 10
  br label %28

28:                                               ; preds = %14, %188
  %29 = phi ptr [ %20, %14 ], [ %190, %188 ]
  %30 = phi ptr [ %18, %14 ], [ %191, %188 ]
  %31 = phi i32 [ 0, %14 ], [ %189, %188 ]
  %32 = phi ptr [ %16, %14 ], [ %192, %188 ]
  %33 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 15
  %34 = load ptr, ptr %33, align 8, !tbaa !169
  %35 = load float, ptr %32, align 4, !tbaa !248
  %36 = fdiv float 1.000000e+00, %35
  %37 = load i16, ptr %25, align 4, !tbaa !207
  %38 = icmp eq i16 %37, 3
  br i1 %38, label %68, label %39

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 16
  %41 = load i32, ptr %40, align 8, !tbaa !49
  %42 = and i32 %41, 16384
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %39
  %45 = load i16, ptr %26, align 2, !tbaa !250
  switch i16 %45, label %68 [
    i16 2, label %46
    i16 4, label %52
    i16 3, label %60
  ]

46:                                               ; preds = %44
  %47 = load float, ptr %30, align 8, !tbaa !112
  %48 = fpext float %47 to double
  %49 = fadd double %48, 5.000000e-01
  %50 = tail call double @llvm.floor.f64(double %49)
  %51 = fptrunc double %50 to float
  br label %66

52:                                               ; preds = %44
  %53 = load float, ptr %30, align 8, !tbaa !112
  %54 = fpext float %53 to double
  %55 = fdiv double %54, %10
  %56 = fadd double %55, 5.000000e-01
  %57 = tail call double @llvm.floor.f64(double %56)
  %58 = fmul double %10, %57
  %59 = fptrunc double %58 to float
  br label %66

60:                                               ; preds = %44
  %61 = load ptr, ptr %2, align 8, !tbaa !119
  %62 = getelementptr inbounds %struct.Scene, ptr %61, i64 0, i32 24
  %63 = load float, ptr %30, align 8, !tbaa !112
  %64 = tail call i32 @ED_markers_find_nearest_marker_time(ptr noundef nonnull %62, float noundef %63) #18
  %65 = sitofp i32 %64 to float
  br label %66

66:                                               ; preds = %60, %52, %46
  %67 = phi float [ %51, %46 ], [ %59, %52 ], [ %65, %60 ]
  store float %67, ptr %30, align 8, !tbaa !112
  br label %68

68:                                               ; preds = %66, %44, %39, %28
  %69 = icmp eq ptr %34, null
  %70 = load float, ptr %30, align 8, !tbaa !112
  br i1 %69, label %73, label %71

71:                                               ; preds = %68
  %72 = tail call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %34, float noundef %70, i16 noundef signext 1) #18
  br label %73

73:                                               ; preds = %68, %71
  %74 = phi float [ %72, %71 ], [ %70, %68 ]
  %75 = getelementptr inbounds %struct.TransData2D, ptr %30, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !205
  store float %74, ptr %76, align 4, !tbaa !112
  %77 = load i16, ptr %25, align 4, !tbaa !207
  %78 = icmp eq i16 %77, 3
  br i1 %78, label %120, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 16
  %81 = load i32, ptr %80, align 8, !tbaa !49
  %82 = and i32 %81, 16384
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %120

84:                                               ; preds = %79
  %85 = load i16, ptr %27, align 2, !tbaa !250
  switch i16 %85, label %120 [
    i16 1, label %86
    i16 5, label %100
  ]

86:                                               ; preds = %84
  %87 = load float, ptr %30, align 8, !tbaa !112
  %88 = fpext float %87 to double
  %89 = fadd double %88, 5.000000e-01
  %90 = tail call double @llvm.floor.f64(double %89)
  %91 = fptrunc double %90 to float
  %92 = getelementptr inbounds %struct.TransData2D, ptr %30, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !205
  store float %91, ptr %93, align 4, !tbaa !112
  %94 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !209
  %96 = load float, ptr %95, align 4, !tbaa !112
  %97 = fpext float %96 to double
  %98 = fadd double %97, 5.000000e-01
  %99 = tail call double @llvm.floor.f64(double %98)
  br label %116

100:                                              ; preds = %84
  %101 = load float, ptr %30, align 8, !tbaa !112
  %102 = fpext float %101 to double
  %103 = fdiv double %102, %10
  %104 = fadd double %103, 5.000000e-01
  %105 = tail call double @llvm.floor.f64(double %104)
  %106 = fmul double %10, %105
  %107 = fptrunc double %106 to float
  store float %107, ptr %30, align 8, !tbaa !112
  %108 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !209
  %110 = load float, ptr %109, align 4, !tbaa !112
  %111 = fpext float %110 to double
  %112 = fdiv double %111, %10
  %113 = fadd double %112, 5.000000e-01
  %114 = tail call double @llvm.floor.f64(double %113)
  %115 = fmul double %10, %114
  br label %116

116:                                              ; preds = %100, %86
  %117 = phi double [ %99, %86 ], [ %115, %100 ]
  %118 = phi ptr [ %95, %86 ], [ %109, %100 ]
  %119 = fptrunc double %117 to float
  store float %119, ptr %118, align 4, !tbaa !112
  br label %120

120:                                              ; preds = %116, %84, %79, %73
  %121 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 16
  %122 = load i32, ptr %121, align 8, !tbaa !49
  %123 = and i32 %122, 32768
  %124 = icmp eq i32 %123, 0
  %125 = getelementptr inbounds [3 x float], ptr %30, i64 0, i64 1
  %126 = load float, ptr %125, align 4, !tbaa !112
  br i1 %124, label %130, label %127

127:                                              ; preds = %120
  %128 = fadd float %126, 5.000000e-01
  %129 = tail call float @llvm.floor.f32(float %128)
  br label %132

130:                                              ; preds = %120
  %131 = fmul float %36, %126
  br label %132

132:                                              ; preds = %130, %127
  %133 = phi float [ %131, %130 ], [ %129, %127 ]
  %134 = getelementptr inbounds %struct.TransData2D, ptr %30, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !205
  %136 = getelementptr inbounds float, ptr %135, i64 1
  store float %133, ptr %136, align 4, !tbaa !112
  %137 = and i32 %122, 131072
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %162, label %139

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.TransData2D, ptr %30, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !237
  %142 = icmp eq ptr %141, null
  br i1 %142, label %162, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.TransData2D, ptr %30, i64 0, i32 4
  %145 = load float, ptr %144, align 8, !tbaa !112
  %146 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !209
  %148 = load float, ptr %147, align 4, !tbaa !112
  %149 = fadd float %145, %148
  %150 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 4
  %151 = load float, ptr %150, align 8, !tbaa !112
  %152 = fsub float %149, %151
  store float %152, ptr %141, align 4, !tbaa !112
  %153 = getelementptr inbounds %struct.TransData2D, ptr %30, i64 0, i32 4, i64 1
  %154 = load float, ptr %153, align 4, !tbaa !112
  %155 = getelementptr inbounds float, ptr %147, i64 1
  %156 = load float, ptr %155, align 4, !tbaa !112
  %157 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 4, i64 1
  %158 = load float, ptr %157, align 4, !tbaa !112
  %159 = fsub float %156, %158
  %160 = tail call float @llvm.fmuladd.f32(float %159, float %36, float %154)
  %161 = getelementptr inbounds float, ptr %141, i64 1
  store float %160, ptr %161, align 4, !tbaa !112
  br label %162

162:                                              ; preds = %143, %139, %132
  %163 = and i32 %122, 262144
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %188, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.TransData2D, ptr %30, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !238
  %168 = icmp eq ptr %167, null
  br i1 %168, label %188, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.TransData2D, ptr %30, i64 0, i32 5
  %171 = load float, ptr %170, align 8, !tbaa !112
  %172 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !209
  %174 = load float, ptr %173, align 4, !tbaa !112
  %175 = fadd float %171, %174
  %176 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 4
  %177 = load float, ptr %176, align 8, !tbaa !112
  %178 = fsub float %175, %177
  store float %178, ptr %167, align 4, !tbaa !112
  %179 = getelementptr inbounds %struct.TransData2D, ptr %30, i64 0, i32 5, i64 1
  %180 = load float, ptr %179, align 4, !tbaa !112
  %181 = getelementptr inbounds float, ptr %173, i64 1
  %182 = load float, ptr %181, align 4, !tbaa !112
  %183 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 4, i64 1
  %184 = load float, ptr %183, align 4, !tbaa !112
  %185 = fsub float %182, %184
  %186 = tail call float @llvm.fmuladd.f32(float %185, float %36, float %180)
  %187 = getelementptr inbounds float, ptr %167, i64 1
  store float %186, ptr %187, align 4, !tbaa !112
  br label %188

188:                                              ; preds = %169, %165, %162
  %189 = add nuw nsw i32 %31, 1
  %190 = getelementptr inbounds %struct.TransData, ptr %29, i64 1
  %191 = getelementptr inbounds %struct.TransData2D, ptr %30, i64 1
  %192 = getelementptr inbounds %struct.TransDataGraph, ptr %32, i64 1
  %193 = load i32, ptr %11, align 8, !tbaa !34
  %194 = icmp slt i32 %189, %193
  br i1 %194, label %28, label %195, !llvm.loop !251

195:                                              ; preds = %188, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

declare i32 @ED_markers_find_nearest_marker_time(ptr noundef, float noundef) local_unnamed_addr #7

declare float @BKE_nla_tweakedit_remap(ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @autokeyframe_ob_cb_func(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #6 {
  %6 = alloca %struct.ListBase, align 8
  %7 = tail call i32 @autokeyframe_cfra_can_key(ptr noundef %1, ptr noundef %3) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %173, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @CTX_wm_reports(ptr noundef %0) #18
  %11 = tail call ptr @ANIM_scene_get_active_keyingset(ptr noundef %1) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %12 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !252
  %14 = sitofp i32 %13 to float
  %15 = tail call signext i16 @ANIM_get_keyframing_flags(ptr noundef %1, i16 noundef signext 1) #18
  call void @ANIM_relative_keyingset_add_source(ptr noundef nonnull %6, ptr noundef %3, ptr noundef null, ptr noundef null) #18
  %16 = icmp eq ptr %1, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !253
  %20 = getelementptr inbounds %struct.ToolSettings, ptr %19, i64 0, i32 22
  %21 = load i16, ptr %20, align 2, !tbaa !254
  %22 = and i16 %21, 64
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %17
  %25 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !261
  %26 = and i16 %25, 64
  %27 = icmp eq i16 %26, 0
  %28 = icmp eq ptr %11, null
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %40, label %38

30:                                               ; preds = %9
  %31 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !261
  %32 = and i16 %31, 64
  %33 = icmp eq i16 %32, 0
  %34 = icmp eq ptr %11, null
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %40, label %38

36:                                               ; preds = %17
  %37 = icmp eq ptr %11, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %24, %30, %36
  %39 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull %11, i16 noundef signext 0, float noundef %14) #18
  br label %164

40:                                               ; preds = %36, %30, %24
  br i1 %16, label %52, label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %43 = load ptr, ptr %42, align 8, !tbaa !253
  %44 = getelementptr inbounds %struct.ToolSettings, ptr %43, i64 0, i32 22
  %45 = load i16, ptr %44, align 2, !tbaa !254
  %46 = and i16 %45, 1
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !261
  %50 = and i16 %49, 1
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %85, label %56

52:                                               ; preds = %40
  %53 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !261
  %54 = and i16 %53, 1
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %85, label %56

56:                                               ; preds = %52, %48, %41
  %57 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !262
  %59 = icmp eq ptr %58, null
  br i1 %59, label %164, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %58, align 8, !tbaa !263
  %62 = icmp eq ptr %61, null
  br i1 %62, label %164, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.bAction, ptr %61, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !63
  %66 = icmp eq ptr %65, null
  br i1 %66, label %164, label %67

67:                                               ; preds = %63, %67
  %68 = phi ptr [ %83, %67 ], [ %65, %63 ]
  %69 = getelementptr inbounds %struct.FCurve, ptr %68, i64 0, i32 9
  %70 = load i16, ptr %69, align 8, !tbaa !265
  %71 = and i16 %70, -3
  store i16 %71, ptr %69, align 8, !tbaa !265
  %72 = load ptr, ptr %58, align 8, !tbaa !263
  %73 = getelementptr inbounds %struct.FCurve, ptr %68, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !266
  %75 = icmp eq ptr %74, null
  %76 = getelementptr inbounds %struct.bActionGroup, ptr %74, i64 0, i32 5
  %77 = select i1 %75, ptr null, ptr %76
  %78 = getelementptr inbounds %struct.FCurve, ptr %68, i64 0, i32 12
  %79 = load ptr, ptr %78, align 8, !tbaa !267
  %80 = getelementptr inbounds %struct.FCurve, ptr %68, i64 0, i32 11
  %81 = load i32, ptr %80, align 4, !tbaa !268
  %82 = call signext i16 @insert_keyframe(ptr noundef %10, ptr noundef %3, ptr noundef %72, ptr noundef %77, ptr noundef %79, i32 noundef %81, float noundef %14, i16 noundef signext %15) #18
  %83 = load ptr, ptr %68, align 8, !tbaa !63
  %84 = icmp eq ptr %83, null
  br i1 %84, label %164, label %67, !llvm.loop !269

85:                                               ; preds = %52, %48
  br i1 %16, label %97, label %86

86:                                               ; preds = %85
  %87 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %88 = load ptr, ptr %87, align 8, !tbaa !253
  %89 = getelementptr inbounds %struct.ToolSettings, ptr %88, i64 0, i32 22
  %90 = load i16, ptr %89, align 2, !tbaa !254
  %91 = and i16 %90, 2
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %86
  %94 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !261
  %95 = and i16 %94, 2
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %161, label %101

97:                                               ; preds = %85
  %98 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !261
  %99 = and i16 %98, 2
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %161, label %101

101:                                              ; preds = %97, %93, %86
  switch i32 %4, label %144 [
    i32 1, label %145
    i32 2, label %102
    i32 3, label %123
  ]

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 27
  %104 = load i16, ptr %103, align 2, !tbaa !270
  switch i16 %104, label %117 [
    i16 4, label %105
    i16 1, label %116
  ]

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %107 = load ptr, ptr %106, align 8, !tbaa !120
  %108 = icmp eq ptr %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.Base, ptr %107, i64 0, i32 7
  %111 = load ptr, ptr %110, align 8, !tbaa !139
  br label %112

112:                                              ; preds = %105, %109
  %113 = phi ptr [ %111, %109 ], [ null, %105 ]
  %114 = icmp ne ptr %113, %3
  %115 = zext i1 %114 to i8
  br label %117

116:                                              ; preds = %102
  br label %117

117:                                              ; preds = %112, %102, %116
  %118 = phi i8 [ 1, %116 ], [ %115, %112 ], [ 0, %102 ]
  %119 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  %120 = load i16, ptr %119, align 8, !tbaa !272
  %121 = and i16 %120, 1024
  %122 = icmp ne i16 %121, 0
  br label %145

123:                                              ; preds = %101
  %124 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 27
  %125 = load i16, ptr %124, align 2, !tbaa !270
  switch i16 %125, label %138 [
    i16 4, label %126
    i16 1, label %137
  ]

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %128 = load ptr, ptr %127, align 8, !tbaa !120
  %129 = icmp eq ptr %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.Base, ptr %128, i64 0, i32 7
  %132 = load ptr, ptr %131, align 8, !tbaa !139
  br label %133

133:                                              ; preds = %126, %130
  %134 = phi ptr [ %132, %130 ], [ null, %126 ]
  %135 = icmp ne ptr %134, %3
  %136 = zext i1 %135 to i8
  br label %138

137:                                              ; preds = %123
  br label %138

138:                                              ; preds = %133, %123, %137
  %139 = phi i8 [ 1, %137 ], [ %136, %133 ], [ 0, %123 ]
  %140 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  %141 = load i16, ptr %140, align 8, !tbaa !272
  %142 = and i16 %141, 1024
  %143 = icmp ne i16 %142, 0
  br label %145

144:                                              ; preds = %101
  br label %145

145:                                              ; preds = %138, %117, %101, %144
  %146 = phi i1 [ true, %101 ], [ true, %117 ], [ true, %144 ], [ %143, %138 ]
  %147 = phi i1 [ true, %101 ], [ %122, %117 ], [ true, %144 ], [ true, %138 ]
  %148 = phi i8 [ 1, %101 ], [ %118, %117 ], [ 0, %144 ], [ %139, %138 ]
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %145
  %151 = call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str) #18
  %152 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null, ptr noundef %151, i16 noundef signext 0, float noundef %14) #18
  br label %153

153:                                              ; preds = %150, %145
  br i1 %147, label %157, label %154

154:                                              ; preds = %153
  %155 = call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str.1) #18
  %156 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null, ptr noundef %155, i16 noundef signext 0, float noundef %14) #18
  br label %157

157:                                              ; preds = %154, %153
  br i1 %146, label %164, label %158

158:                                              ; preds = %157
  %159 = call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str.2) #18
  %160 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null, ptr noundef %159, i16 noundef signext 0, float noundef %14) #18
  br label %164

161:                                              ; preds = %97, %93
  %162 = call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str.3) #18
  %163 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null, ptr noundef %162, i16 noundef signext 0, float noundef %14) #18
  br label %164

164:                                              ; preds = %67, %63, %157, %158, %56, %60, %161, %38
  %165 = icmp eq ptr %0, null
  br i1 %165, label %172, label %166

166:                                              ; preds = %164
  %167 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 21, i32 11
  %168 = load i16, ptr %167, align 2, !tbaa !273
  %169 = and i16 %168, 4
  %170 = icmp eq i16 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %166
  call void @ED_objects_recalculate_paths(ptr noundef nonnull %0, ptr noundef %1) #18
  br label %172

172:                                              ; preds = %171, %166, %164
  call void @BLI_freelistN(ptr noundef nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  br label %173

173:                                              ; preds = %172, %5
  ret void
}

declare i32 @autokeyframe_cfra_can_key(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #7

declare ptr @ANIM_scene_get_active_keyingset(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

declare signext i16 @ANIM_get_keyframing_flags(ptr noundef, i16 noundef signext) local_unnamed_addr #7

declare void @ANIM_relative_keyingset_add_source(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @ANIM_apply_keyingset(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, float noundef) local_unnamed_addr #7

declare signext i16 @insert_keyframe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, i16 noundef signext) local_unnamed_addr #7

declare ptr @ANIM_builtin_keyingset_get_named(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @ED_objects_recalculate_paths(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @autokeyframe_pose_cb_func(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, i16 noundef signext %5) local_unnamed_addr #6 {
  %7 = alloca %struct.ListBase, align 8
  %8 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !262
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %9, align 8, !tbaa !263
  br label %13

13:                                               ; preds = %6, %11
  %14 = phi ptr [ %12, %11 ], [ null, %6 ]
  %15 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = tail call i32 @autokeyframe_cfra_can_key(ptr noundef %1, ptr noundef %3) #18
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load ptr, ptr %16, align 8, !tbaa !63
  %21 = icmp eq ptr %20, null
  br i1 %21, label %202, label %189

22:                                               ; preds = %13
  %23 = tail call ptr @CTX_wm_reports(ptr noundef %0) #18
  %24 = tail call ptr @ANIM_scene_get_active_keyingset(ptr noundef %1) #18
  %25 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !252
  %27 = sitofp i32 %26 to float
  %28 = tail call signext i16 @ANIM_get_keyframing_flags(ptr noundef %1, i16 noundef signext 1) #18
  %29 = icmp eq i16 %5, 0
  %30 = or i16 %28, 2
  %31 = select i1 %29, i16 %28, i16 %30
  %32 = load ptr, ptr %16, align 8, !tbaa !63
  %33 = icmp eq ptr %32, null
  br i1 %33, label %180, label %34

34:                                               ; preds = %22
  %35 = icmp eq ptr %1, null
  %36 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %37 = icmp eq ptr %24, null
  %38 = icmp eq ptr %24, null
  %39 = icmp eq ptr %24, null
  %40 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %41 = icmp eq ptr %14, null
  %42 = getelementptr inbounds %struct.bAction, ptr %14, i64 0, i32 1
  %43 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %44 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 27
  %45 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  %46 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 27
  %47 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  br label %48

48:                                               ; preds = %34, %177
  %49 = phi ptr [ %32, %34 ], [ %178, %177 ]
  %50 = getelementptr inbounds %struct.bPoseChannel, ptr %49, i64 0, i32 12
  %51 = load ptr, ptr %50, align 8, !tbaa !67
  %52 = getelementptr inbounds %struct.Bone, ptr %51, i64 0, i32 10
  %53 = load i32, ptr %52, align 8, !tbaa !71
  %54 = and i32 %53, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %177, label %56

56:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %57 = and i32 %53, -8193
  store i32 %57, ptr %52, align 8, !tbaa !71
  call void @ANIM_relative_keyingset_add_source(ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull @RNA_PoseBone, ptr noundef nonnull %49) #18
  br i1 %35, label %69, label %58

58:                                               ; preds = %56
  %59 = load ptr, ptr %36, align 8, !tbaa !253
  %60 = getelementptr inbounds %struct.ToolSettings, ptr %59, i64 0, i32 22
  %61 = load i16, ptr %60, align 2, !tbaa !254
  %62 = and i16 %61, 64
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !261
  %66 = and i16 %65, 64
  %67 = icmp eq i16 %66, 0
  %68 = select i1 %67, i1 true, i1 %38
  br i1 %68, label %77, label %75

69:                                               ; preds = %56
  %70 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !261
  %71 = and i16 %70, 64
  %72 = icmp eq i16 %71, 0
  %73 = select i1 %72, i1 true, i1 %39
  br i1 %73, label %77, label %75

74:                                               ; preds = %58
  br i1 %37, label %77, label %75

75:                                               ; preds = %64, %69, %74
  %76 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull %24, i16 noundef signext 0, float noundef %27) #18
  br label %176

77:                                               ; preds = %74, %69, %64
  br i1 %35, label %88, label %78

78:                                               ; preds = %77
  %79 = load ptr, ptr %40, align 8, !tbaa !253
  %80 = getelementptr inbounds %struct.ToolSettings, ptr %79, i64 0, i32 22
  %81 = load i16, ptr %80, align 2, !tbaa !254
  %82 = and i16 %81, 1
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %78
  %85 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !261
  %86 = and i16 %85, 1
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %125, label %92

88:                                               ; preds = %77
  %89 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !261
  %90 = and i16 %89, 1
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %125, label %92

92:                                               ; preds = %88, %84, %78
  br i1 %41, label %176, label %93

93:                                               ; preds = %92
  %94 = load ptr, ptr %42, align 8, !tbaa !63
  %95 = icmp eq ptr %94, null
  br i1 %95, label %176, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.bPoseChannel, ptr %49, i64 0, i32 4
  br label %98

98:                                               ; preds = %96, %122
  %99 = phi ptr [ %94, %96 ], [ %123, %122 ]
  %100 = getelementptr inbounds %struct.FCurve, ptr %99, i64 0, i32 12
  %101 = load ptr, ptr %100, align 8, !tbaa !267
  %102 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %101, ptr noundef nonnull dereferenceable(1) @.str.4) #19
  %103 = icmp eq ptr %102, null
  br i1 %103, label %122, label %104

104:                                              ; preds = %98
  %105 = call ptr @BLI_str_quoted_substrN(ptr noundef %101, ptr noundef nonnull @.str.5) #18
  %106 = icmp eq ptr %105, null
  br i1 %106, label %122, label %107

107:                                              ; preds = %104
  %108 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %105, ptr noundef nonnull dereferenceable(1) %97) #19
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.FCurve, ptr %99, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !266
  %113 = icmp eq ptr %112, null
  %114 = getelementptr inbounds %struct.bActionGroup, ptr %112, i64 0, i32 5
  %115 = select i1 %113, ptr null, ptr %114
  %116 = load ptr, ptr %100, align 8, !tbaa !267
  %117 = getelementptr inbounds %struct.FCurve, ptr %99, i64 0, i32 11
  %118 = load i32, ptr %117, align 4, !tbaa !268
  %119 = call signext i16 @insert_keyframe(ptr noundef %23, ptr noundef %3, ptr noundef nonnull %14, ptr noundef %115, ptr noundef %116, i32 noundef %118, float noundef %27, i16 noundef signext %31) #18
  br label %120

120:                                              ; preds = %107, %110
  %121 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %121(ptr noundef nonnull %105) #18
  br label %122

122:                                              ; preds = %120, %104, %98
  %123 = load ptr, ptr %99, align 8, !tbaa !63
  %124 = icmp eq ptr %123, null
  br i1 %124, label %176, label %98, !llvm.loop !274

125:                                              ; preds = %88, %84
  br i1 %35, label %136, label %126

126:                                              ; preds = %125
  %127 = load ptr, ptr %43, align 8, !tbaa !253
  %128 = getelementptr inbounds %struct.ToolSettings, ptr %127, i64 0, i32 22
  %129 = load i16, ptr %128, align 2, !tbaa !254
  %130 = and i16 %129, 2
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %126
  %133 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !261
  %134 = and i16 %133, 2
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %173, label %140

136:                                              ; preds = %125
  %137 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !261
  %138 = and i16 %137, 2
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %173, label %140

140:                                              ; preds = %136, %132, %126
  switch i32 %4, label %158 [
    i32 1, label %141
    i32 2, label %142
    i32 3, label %150
  ]

141:                                              ; preds = %140
  br label %158

142:                                              ; preds = %140
  %143 = load i16, ptr %46, align 2, !tbaa !270
  %144 = icmp eq i16 %143, 1
  %145 = icmp eq i16 %143, 4
  %146 = or i1 %144, %145
  %147 = load i16, ptr %47, align 8, !tbaa !272
  %148 = and i16 %147, 1024
  %149 = icmp ne i16 %148, 0
  br label %158

150:                                              ; preds = %140
  %151 = load i16, ptr %44, align 2, !tbaa !270
  %152 = icmp eq i16 %151, 1
  %153 = icmp eq i16 %151, 4
  %154 = or i1 %152, %153
  %155 = load i16, ptr %45, align 8, !tbaa !272
  %156 = and i16 %155, 1024
  %157 = icmp ne i16 %156, 0
  br label %158

158:                                              ; preds = %150, %142, %140, %141
  %159 = phi i1 [ %29, %141 ], [ %149, %142 ], [ true, %140 ], [ true, %150 ]
  %160 = phi i1 [ true, %141 ], [ true, %142 ], [ true, %140 ], [ %157, %150 ]
  %161 = phi i1 [ %29, %141 ], [ %146, %142 ], [ false, %140 ], [ %154, %150 ]
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str) #18
  %164 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null, ptr noundef %163, i16 noundef signext 0, float noundef %27) #18
  br label %165

165:                                              ; preds = %162, %158
  br i1 %159, label %169, label %166

166:                                              ; preds = %165
  %167 = call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str.1) #18
  %168 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null, ptr noundef %167, i16 noundef signext 0, float noundef %27) #18
  br label %169

169:                                              ; preds = %166, %165
  br i1 %160, label %176, label %170

170:                                              ; preds = %169
  %171 = call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str.2) #18
  %172 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null, ptr noundef %171, i16 noundef signext 0, float noundef %27) #18
  br label %176

173:                                              ; preds = %136, %132
  %174 = call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str.3) #18
  %175 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null, ptr noundef %174, i16 noundef signext 0, float noundef %27) #18
  br label %176

176:                                              ; preds = %122, %93, %169, %170, %92, %173, %75
  call void @BLI_freelistN(ptr noundef nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18
  br label %177

177:                                              ; preds = %48, %176
  %178 = load ptr, ptr %49, align 8, !tbaa !63
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %48, !llvm.loop !275

180:                                              ; preds = %177, %22
  %181 = icmp eq ptr %0, null
  br i1 %181, label %202, label %182

182:                                              ; preds = %180
  %183 = load ptr, ptr %15, align 8, !tbaa !58
  %184 = getelementptr inbounds %struct.bPose, ptr %183, i64 0, i32 14, i32 11
  %185 = load i16, ptr %184, align 2, !tbaa !276
  %186 = and i16 %185, 4
  %187 = icmp eq i16 %186, 0
  br i1 %187, label %202, label %188

188:                                              ; preds = %182
  call void @ED_pose_recalculate_paths(ptr noundef %1, ptr noundef %3) #18
  br label %202

189:                                              ; preds = %19, %199
  %190 = phi ptr [ %200, %199 ], [ %20, %19 ]
  %191 = getelementptr inbounds %struct.bPoseChannel, ptr %190, i64 0, i32 12
  %192 = load ptr, ptr %191, align 8, !tbaa !67
  %193 = getelementptr inbounds %struct.Bone, ptr %192, i64 0, i32 10
  %194 = load i32, ptr %193, align 8, !tbaa !71
  %195 = and i32 %194, 8
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %189
  %198 = or i32 %194, 8192
  store i32 %198, ptr %193, align 8, !tbaa !71
  br label %199

199:                                              ; preds = %189, %197
  %200 = load ptr, ptr %190, align 8, !tbaa !63
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %189, !llvm.loop !278

202:                                              ; preds = %199, %19, %180, %182, %188
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #10

declare ptr @BLI_str_quoted_substrN(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

declare void @ED_pose_recalculate_paths(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @special_aftertrans_update(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = alloca [256 x ptr], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca %struct.ListBase, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca %struct.bAnimContext, align 8
  %13 = alloca %struct.ListBase, align 8
  %14 = alloca %struct.bAnimContext, align 8
  %15 = alloca %struct.ListBase, align 8
  %16 = alloca %struct.bAnimContext, align 8
  %17 = alloca %struct.ListBase, align 8
  %18 = alloca %struct.ListBase, align 8
  %19 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 3
  %20 = load i16, ptr %19, align 4, !tbaa !207
  %21 = icmp eq i16 %20, 3
  %22 = load i32, ptr %1, align 8, !tbaa !188
  %23 = icmp eq i32 %22, 23
  %24 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !34
  %26 = icmp eq i32 %25, 0
  %27 = icmp eq i32 %22, 0
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %973, label %29

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  %31 = load i8, ptr %30, align 8, !tbaa !279
  %32 = icmp eq i8 %31, 1
  br i1 %32, label %33, label %94

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  %35 = load ptr, ptr %34, align 8, !tbaa !99
  %36 = icmp eq ptr %35, null
  br i1 %36, label %94, label %37

37:                                               ; preds = %33
  %38 = icmp eq i32 %22, 28
  br i1 %21, label %89, label %39

39:                                               ; preds = %37
  br i1 %38, label %40, label %43

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  %42 = load ptr, ptr %41, align 8, !tbaa !96
  tail call void @projectEdgeSlideData(ptr noundef nonnull %1, i8 noundef zeroext 1) #18
  tail call void @freeEdgeSlideTempFaces(ptr noundef %42) #18
  br label %43

43:                                               ; preds = %40, %39
  %44 = load ptr, ptr %34, align 8, !tbaa !99
  %45 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 3
  %46 = load i16, ptr %45, align 8, !tbaa !80
  %47 = icmp eq i16 %46, 1
  br i1 %47, label %48, label %94

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %50 = load ptr, ptr %49, align 8, !tbaa !119
  %51 = getelementptr inbounds %struct.Scene, ptr %50, i64 0, i32 20
  %52 = load ptr, ptr %51, align 8, !tbaa !253
  %53 = getelementptr inbounds %struct.ToolSettings, ptr %52, i64 0, i32 7
  %54 = load i16, ptr %53, align 4, !tbaa !280
  %55 = icmp eq i16 %54, 0
  %56 = icmp eq ptr %44, null
  %57 = or i1 %56, %55
  br i1 %57, label %94, label %58

58:                                               ; preds = %48
  %59 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %44) #18
  %60 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !54
  %62 = and i32 %61, 524288
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %85, label %64

64:                                               ; preds = %58
  %65 = load ptr, ptr %59, align 8, !tbaa !281
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %65, i8 noundef zeroext 1, i8 noundef zeroext 16, i8 noundef zeroext 0) #18
  %66 = load i32, ptr %24, align 8, !tbaa !34
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  %70 = load ptr, ptr %69, align 8, !tbaa !48
  br label %71

71:                                               ; preds = %68, %81
  %72 = phi i32 [ %82, %81 ], [ 0, %68 ]
  %73 = phi ptr [ %83, %81 ], [ %70, %68 ]
  %74 = getelementptr inbounds %struct.TransData, ptr %73, i64 0, i32 15
  %75 = load ptr, ptr %74, align 8, !tbaa !169
  %76 = icmp eq ptr %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.BMHeader, ptr %75, i64 0, i32 3
  %79 = load i8, ptr %78, align 1, !tbaa !283
  %80 = or i8 %79, 16
  store i8 %80, ptr %78, align 1, !tbaa !283
  br label %81

81:                                               ; preds = %77, %71
  %82 = add nuw nsw i32 %72, 1
  %83 = getelementptr inbounds %struct.TransData, ptr %73, i64 1
  %84 = icmp eq i32 %82, %66
  br i1 %84, label %85, label %71, !llvm.loop !285

85:                                               ; preds = %81, %64, %58
  %86 = phi i8 [ 1, %58 ], [ 17, %64 ], [ 17, %81 ]
  %87 = load ptr, ptr %49, align 8, !tbaa !119
  %88 = load ptr, ptr %34, align 8, !tbaa !99
  tail call void @EDBM_automerge(ptr noundef %87, ptr noundef %88, i8 noundef zeroext 1, i8 noundef zeroext %86) #18
  br label %94

89:                                               ; preds = %37
  br i1 %38, label %90, label %94

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  %92 = load ptr, ptr %91, align 8, !tbaa !96
  %93 = getelementptr inbounds %struct.EdgeSlideData, ptr %92, i64 0, i32 8
  store float 0.000000e+00, ptr %93, align 8, !tbaa !286
  tail call void @projectEdgeSlideData(ptr noundef nonnull %1, i8 noundef zeroext 0) #18
  br label %94

94:                                               ; preds = %85, %48, %33, %89, %90, %43, %29
  %95 = load i8, ptr %30, align 8, !tbaa !279
  switch i8 %95, label %544 [
    i8 8, label %96
    i8 6, label %128
    i8 16, label %134
    i8 20, label %170
    i8 12, label %262
    i8 2, label %477
    i8 13, label %522
  ]

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %98 = load ptr, ptr %97, align 8, !tbaa !175
  %99 = getelementptr inbounds %struct.ScrArea, ptr %98, i64 0, i32 19
  %100 = load ptr, ptr %99, align 8, !tbaa !197
  %101 = getelementptr inbounds %struct.SpaceSeq, ptr %100, i64 0, i32 13
  %102 = load i32, ptr %101, align 8, !tbaa !288
  %103 = and i32 %102, 2
  %104 = icmp eq i32 %103, 0
  %105 = select i1 %104, i1 true, i1 %21
  br i1 %105, label %951, label %106

106:                                              ; preds = %96
  %107 = load i32, ptr %1, align 8, !tbaa !188
  %108 = icmp eq i32 %107, 30
  %109 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 26
  %110 = load i8, ptr %109, align 8, !tbaa !291
  br i1 %108, label %111, label %120

111:                                              ; preds = %106
  %112 = icmp eq i8 %110, 66
  br i1 %112, label %113, label %951

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %115 = load ptr, ptr %114, align 8, !tbaa !119
  %116 = getelementptr inbounds %struct.Scene, ptr %115, i64 0, i32 24
  %117 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 47
  %118 = load float, ptr %117, align 4, !tbaa !112
  %119 = tail call i32 @ED_markers_post_apply_transform(ptr noundef nonnull %116, ptr noundef %115, i32 noundef 19, float noundef %118, i8 noundef zeroext %110) #18
  br label %951

120:                                              ; preds = %106
  switch i8 %110, label %951 [
    i8 76, label %121
    i8 82, label %121
  ]

121:                                              ; preds = %120, %120
  %122 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %123 = load ptr, ptr %122, align 8, !tbaa !119
  %124 = getelementptr inbounds %struct.Scene, ptr %123, i64 0, i32 24
  %125 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 47
  %126 = load float, ptr %125, align 4, !tbaa !112
  %127 = tail call i32 @ED_markers_post_apply_transform(ptr noundef nonnull %124, ptr noundef %123, i32 noundef 22, float noundef %126, i8 noundef zeroext %110) #18
  br label %951

128:                                              ; preds = %94
  %129 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %130 = load i32, ptr %129, align 8, !tbaa !292
  %131 = and i32 %130, 128
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %951, label %133

133:                                              ; preds = %128
  tail call fastcc void @special_aftertrans_update__mask(ptr noundef %0, ptr noundef nonnull %1)
  br label %951

134:                                              ; preds = %94
  %135 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %136 = load ptr, ptr %135, align 8, !tbaa !175
  %137 = getelementptr inbounds %struct.ScrArea, ptr %136, i64 0, i32 19
  %138 = load ptr, ptr %137, align 8, !tbaa !197
  %139 = load i16, ptr %19, align 4, !tbaa !207
  %140 = icmp eq i16 %139, 3
  br i1 %140, label %141, label %163

141:                                              ; preds = %134
  %142 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 51
  %143 = load i8, ptr %142, align 4, !tbaa !293
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %163, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.SpaceNode, ptr %138, i64 0, i32 19
  %147 = load ptr, ptr %146, align 8, !tbaa !294
  %148 = icmp eq ptr %147, null
  br i1 %148, label %163, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.bNodeTree, ptr %147, i64 0, i32 7
  %151 = load ptr, ptr %150, align 8, !tbaa !296
  %152 = icmp eq ptr %151, null
  br i1 %152, label %163, label %153

153:                                              ; preds = %149, %161
  %154 = phi ptr [ %155, %161 ], [ %151, %149 ]
  %155 = load ptr, ptr %154, align 8, !tbaa !299
  %156 = getelementptr inbounds %struct.bNode, ptr %154, i64 0, i32 7
  %157 = load i32, ptr %156, align 8, !tbaa !300
  %158 = and i32 %157, 1
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %153
  tail call void @nodeFreeNode(ptr noundef nonnull %147, ptr noundef nonnull %154) #18
  br label %161

161:                                              ; preds = %160, %153
  %162 = icmp eq ptr %155, null
  br i1 %162, label %163, label %153, !llvm.loop !301

163:                                              ; preds = %161, %149, %134, %141, %145
  br i1 %21, label %168, label %164

164:                                              ; preds = %163
  %165 = getelementptr inbounds %struct.SpaceNode, ptr %138, i64 0, i32 19
  %166 = load ptr, ptr %165, align 8, !tbaa !294
  tail call void @ED_node_post_apply_transform(ptr noundef %0, ptr noundef %166) #18
  %167 = load ptr, ptr %135, align 8, !tbaa !175
  tail call void @ED_node_link_insert(ptr noundef %167) #18
  br label %168

168:                                              ; preds = %164, %163
  %169 = load ptr, ptr %135, align 8, !tbaa !175
  tail call void @ED_node_link_intersect_test(ptr noundef %169, i32 noundef 0) #18
  br label %951

170:                                              ; preds = %94
  %171 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %172 = load i32, ptr %171, align 8, !tbaa !292
  %173 = and i32 %172, 64
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %258, label %175

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %177 = load ptr, ptr %176, align 8, !tbaa !175
  %178 = getelementptr inbounds %struct.ScrArea, ptr %177, i64 0, i32 19
  %179 = load ptr, ptr %178, align 8, !tbaa !197
  %180 = tail call ptr @ED_space_clip_get_clip(ptr noundef %179) #18
  %181 = getelementptr inbounds %struct.MovieClip, ptr %180, i64 0, i32 11
  %182 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %181) #18
  %183 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %179) #18
  %184 = load ptr, ptr %182, align 8, !tbaa !63
  %185 = icmp eq ptr %184, null
  br i1 %185, label %250, label %186

186:                                              ; preds = %175
  %187 = getelementptr inbounds %struct.SpaceClip, ptr %179, i64 0, i32 12
  br label %188

188:                                              ; preds = %186, %247
  %189 = phi ptr [ %184, %186 ], [ %248, %247 ]
  %190 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %189, i64 0, i32 8
  %191 = load i32, ptr %190, align 4, !tbaa !302
  %192 = and i32 %191, 2
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %247

194:                                              ; preds = %188
  %195 = trunc i32 %191 to i8
  %196 = and i8 %195, 1
  %197 = and i32 %191, 9
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %243

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %189, i64 0, i32 4
  %201 = load i32, ptr %200, align 8, !tbaa !304
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %243

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %189, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !305
  %206 = zext nneg i32 %201 to i64
  br label %207

207:                                              ; preds = %237, %203
  %208 = phi i64 [ %240, %237 ], [ 0, %203 ]
  %209 = phi i8 [ %238, %237 ], [ %196, %203 ]
  %210 = getelementptr inbounds ptr, ptr %205, i64 %208
  %211 = load ptr, ptr %210, align 8, !tbaa !63
  %212 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %211, i64 0, i32 13
  %213 = load i32, ptr %212, align 8, !tbaa !306
  %214 = and i32 %213, 32
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %236

216:                                              ; preds = %207
  %217 = and i32 %213, 1
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %237

219:                                              ; preds = %216
  %220 = load i32, ptr %187, align 8, !tbaa !308
  %221 = and i32 %220, 1
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %228, label %223

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %211, i64 0, i32 14
  %225 = load i32, ptr %224, align 4, !tbaa !313
  %226 = and i32 %225, 1
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %223, %219
  %229 = and i32 %220, 2
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %236, label %231

231:                                              ; preds = %228
  %232 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %211, i64 0, i32 15
  %233 = load i32, ptr %232, align 8, !tbaa !314
  %234 = and i32 %233, 1
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %231, %228, %207
  br label %237

237:                                              ; preds = %236, %231, %223, %216
  %238 = phi i8 [ %209, %236 ], [ 1, %231 ], [ 1, %223 ], [ 1, %216 ]
  %239 = phi i1 [ true, %236 ], [ false, %231 ], [ false, %223 ], [ false, %216 ]
  %240 = add nuw nsw i64 %208, 1
  %241 = icmp ult i64 %240, %206
  %242 = select i1 %239, i1 %241, i1 false
  br i1 %242, label %207, label %243, !llvm.loop !315

243:                                              ; preds = %237, %199, %194
  %244 = phi i8 [ %196, %194 ], [ %196, %199 ], [ %238, %237 ]
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %243
  tail call void @BKE_tracking_track_plane_from_existing_motion(ptr noundef nonnull %189, i32 noundef %183) #18
  br label %247

247:                                              ; preds = %246, %243, %188
  %248 = load ptr, ptr %189, align 8, !tbaa !63
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %188, !llvm.loop !316

250:                                              ; preds = %247, %175
  %251 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %252 = load ptr, ptr %251, align 8, !tbaa !119
  %253 = getelementptr inbounds %struct.Scene, ptr %252, i64 0, i32 18
  %254 = load ptr, ptr %253, align 8, !tbaa !317
  %255 = icmp eq ptr %254, null
  br i1 %255, label %951, label %256

256:                                              ; preds = %250
  %257 = tail call zeroext i8 @nodeUpdateID(ptr noundef nonnull %254, ptr noundef %180) #18
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67436544, ptr noundef null) #18
  br label %951

258:                                              ; preds = %170
  %259 = and i32 %172, 128
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %951, label %261

261:                                              ; preds = %258
  tail call fastcc void @special_aftertrans_update__mask(ptr noundef %0, ptr noundef nonnull %1)
  br label %951

262:                                              ; preds = %94
  %263 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %264 = load ptr, ptr %263, align 8, !tbaa !175
  %265 = getelementptr inbounds %struct.ScrArea, ptr %264, i64 0, i32 19
  %266 = load ptr, ptr %265, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %12) #18
  %267 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %12) #18
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %970, label %269

269:                                              ; preds = %262
  %270 = getelementptr inbounds %struct.bAnimContext, ptr %12, i64 0, i32 10
  %271 = load ptr, ptr %270, align 8, !tbaa !318
  %272 = getelementptr inbounds %struct.bAnimContext, ptr %12, i64 0, i32 1
  %273 = load i16, ptr %272, align 8
  switch i16 %273, label %453 [
    i16 4, label %274
    i16 2, label %274
    i16 1, label %301
    i16 3, label %340
    i16 9, label %397
  ]

274:                                              ; preds = %269, %269
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %275 = load ptr, ptr %12, align 8, !tbaa !320
  %276 = sext i16 %273 to i32
  %277 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef 257, ptr noundef %275, i32 noundef %276) #18
  %278 = load ptr, ptr %13, align 8, !tbaa !63
  %279 = icmp eq ptr %278, null
  br i1 %279, label %300, label %280

280:                                              ; preds = %274
  %281 = getelementptr inbounds %struct.SpaceAction, ptr %266, i64 0, i32 11
  %282 = xor i1 %21, true
  %283 = select i1 %282, i1 true, i1 %23
  br label %284

284:                                              ; preds = %280, %297
  %285 = phi ptr [ %278, %280 ], [ %298, %297 ]
  %286 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %12, ptr noundef nonnull %285) #18
  %287 = getelementptr inbounds %struct.bAnimListElem, ptr %285, i64 0, i32 8
  %288 = load ptr, ptr %287, align 8, !tbaa !219
  %289 = load i16, ptr %281, align 2, !tbaa !321
  %290 = and i16 %289, 16
  %291 = icmp eq i16 %290, 0
  %292 = select i1 %291, i1 %283, i1 false
  br i1 %292, label %293, label %297

293:                                              ; preds = %284
  %294 = icmp eq ptr %286, null
  br i1 %294, label %296, label %295

295:                                              ; preds = %293
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %286, ptr noundef %288, i8 noundef zeroext 0, i8 noundef zeroext 1) #18
  call fastcc void @posttrans_fcurve_clean(ptr noundef %288, i16 noundef signext 0)
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %286, ptr noundef %288, i8 noundef zeroext 1, i8 noundef zeroext 1) #18
  br label %297

296:                                              ; preds = %293
  call fastcc void @posttrans_fcurve_clean(ptr noundef %288, i16 noundef signext 0)
  br label %297

297:                                              ; preds = %295, %296, %284
  %298 = load ptr, ptr %285, align 8, !tbaa !63
  %299 = icmp eq ptr %298, null
  br i1 %299, label %300, label %284, !llvm.loop !324

300:                                              ; preds = %297, %274
  call void @ANIM_animdata_freelist(ptr noundef nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #18
  br label %453

301:                                              ; preds = %269
  %302 = icmp eq ptr %271, null
  br i1 %302, label %313, label %303

303:                                              ; preds = %301
  %304 = getelementptr inbounds %struct.Object, ptr %271, i64 0, i32 18
  %305 = load ptr, ptr %304, align 8, !tbaa !58
  %306 = icmp eq ptr %305, null
  br i1 %306, label %307, label %311

307:                                              ; preds = %303
  %308 = call ptr @BKE_key_from_object(ptr noundef nonnull %271) #18
  %309 = icmp eq ptr %308, null
  %310 = select i1 %309, i16 1, i16 7
  br label %311

311:                                              ; preds = %307, %303
  %312 = phi i16 [ 7, %303 ], [ %310, %307 ]
  call void @DAG_id_tag_update(ptr noundef nonnull %271, i16 noundef signext %312) #18
  br label %313

313:                                              ; preds = %311, %301
  %314 = getelementptr inbounds %struct.SpaceAction, ptr %266, i64 0, i32 11
  %315 = load i16, ptr %314, align 2, !tbaa !321
  %316 = and i16 %315, 16
  %317 = icmp eq i16 %316, 0
  %318 = xor i1 %21, true
  %319 = select i1 %318, i1 true, i1 %23
  %320 = select i1 %317, i1 %319, i1 false
  br i1 %320, label %321, label %453

321:                                              ; preds = %313
  %322 = load ptr, ptr %12, align 8, !tbaa !320
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %323 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %12, ptr noundef nonnull %9, i32 noundef 257, ptr noundef %322, i32 noundef 1) #18
  %324 = load ptr, ptr %9, align 8, !tbaa !63
  %325 = icmp eq ptr %324, null
  br i1 %325, label %339, label %326

326:                                              ; preds = %321, %336
  %327 = phi ptr [ %337, %336 ], [ %324, %321 ]
  %328 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %12, ptr noundef nonnull %327) #18
  %329 = icmp eq ptr %328, null
  %330 = getelementptr inbounds %struct.bAnimListElem, ptr %327, i64 0, i32 8
  %331 = load ptr, ptr %330, align 8, !tbaa !219
  br i1 %329, label %335, label %332

332:                                              ; preds = %326
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %328, ptr noundef %331, i8 noundef zeroext 0, i8 noundef zeroext 1) #18
  %333 = load ptr, ptr %330, align 8, !tbaa !219
  call fastcc void @posttrans_fcurve_clean(ptr noundef %333, i16 noundef signext 0)
  %334 = load ptr, ptr %330, align 8, !tbaa !219
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %328, ptr noundef %334, i8 noundef zeroext 1, i8 noundef zeroext 1) #18
  br label %336

335:                                              ; preds = %326
  call fastcc void @posttrans_fcurve_clean(ptr noundef %331, i16 noundef signext 0)
  br label %336

336:                                              ; preds = %335, %332
  %337 = load ptr, ptr %327, align 8, !tbaa !63
  %338 = icmp eq ptr %337, null
  br i1 %338, label %339, label %326, !llvm.loop !325

339:                                              ; preds = %336, %321
  call void @ANIM_animdata_freelist(ptr noundef nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #18
  br label %453

340:                                              ; preds = %269
  %341 = getelementptr inbounds %struct.SpaceAction, ptr %266, i64 0, i32 11
  %342 = load i16, ptr %341, align 2, !tbaa !321
  %343 = and i16 %342, 16
  %344 = icmp eq i16 %343, 0
  %345 = xor i1 %21, true
  %346 = select i1 %345, i1 true, i1 %23
  %347 = select i1 %344, i1 %346, i1 false
  br i1 %347, label %348, label %453

348:                                              ; preds = %340
  %349 = load ptr, ptr @G, align 8, !tbaa !326
  %350 = getelementptr inbounds %struct.Main, ptr %349, i64 0, i32 41
  %351 = load ptr, ptr %350, align 8, !tbaa !63
  %352 = icmp eq ptr %351, null
  br i1 %352, label %453, label %353

353:                                              ; preds = %348, %394
  %354 = phi ptr [ %395, %394 ], [ %351, %348 ]
  %355 = getelementptr inbounds %struct.ID, ptr %354, i64 0, i32 6
  %356 = load i32, ptr %355, align 4, !tbaa !328
  %357 = getelementptr inbounds %struct.ID, ptr %354, i64 0, i32 5
  %358 = load i16, ptr %357, align 2, !tbaa !329
  %359 = lshr i16 %358, 9
  %360 = and i16 %359, 1
  %361 = zext nneg i16 %360 to i32
  %362 = icmp eq i32 %356, %361
  br i1 %362, label %394, label %363

363:                                              ; preds = %353
  %364 = getelementptr inbounds %struct.bGPdata, ptr %354, i64 0, i32 1
  %365 = load ptr, ptr %364, align 8, !tbaa !63
  %366 = icmp eq ptr %365, null
  br i1 %366, label %394, label %367

367:                                              ; preds = %363, %391
  %368 = phi ptr [ %392, %391 ], [ %365, %363 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #18
  store i8 0, ptr %11, align 1, !tbaa !81
  %369 = getelementptr inbounds %struct.bGPDlayer, ptr %368, i64 0, i32 2
  call void @BLI_sortlist_r(ptr noundef nonnull %369, ptr noundef nonnull %11, ptr noundef nonnull @gpf_cmp_frame) #18
  %370 = load i8, ptr %11, align 1, !tbaa !81
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %391, label %372

372:                                              ; preds = %367
  %373 = load ptr, ptr %369, align 8, !tbaa !330
  %374 = icmp eq ptr %373, null
  br i1 %374, label %391, label %375

375:                                              ; preds = %372
  %376 = load ptr, ptr %373, align 8, !tbaa !332
  %377 = icmp eq ptr %376, null
  br i1 %377, label %391, label %378

378:                                              ; preds = %375, %388
  %379 = phi ptr [ %389, %388 ], [ %376, %375 ]
  %380 = phi ptr [ %379, %388 ], [ %373, %375 ]
  %381 = getelementptr inbounds %struct.bGPDframe, ptr %380, i64 0, i32 3
  %382 = load i32, ptr %381, align 8, !tbaa !334
  %383 = getelementptr inbounds %struct.bGPDframe, ptr %379, i64 0, i32 3
  %384 = load i32, ptr %383, align 8, !tbaa !334
  %385 = icmp eq i32 %382, %384
  br i1 %385, label %386, label %388

386:                                              ; preds = %378
  %387 = call zeroext i8 @gpencil_layer_delframe(ptr noundef nonnull %368, ptr noundef nonnull %380) #18
  br label %388

388:                                              ; preds = %386, %378
  %389 = load ptr, ptr %379, align 8, !tbaa !332
  %390 = icmp eq ptr %389, null
  br i1 %390, label %391, label %378

391:                                              ; preds = %388, %375, %372, %367
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #18
  %392 = load ptr, ptr %368, align 8, !tbaa !63
  %393 = icmp eq ptr %392, null
  br i1 %393, label %394, label %367, !llvm.loop !335

394:                                              ; preds = %391, %363, %353
  %395 = load ptr, ptr %354, align 8, !tbaa !63
  %396 = icmp eq ptr %395, null
  br i1 %396, label %453, label %353, !llvm.loop !336

397:                                              ; preds = %269
  %398 = getelementptr inbounds %struct.SpaceAction, ptr %266, i64 0, i32 11
  %399 = load i16, ptr %398, align 2, !tbaa !321
  %400 = and i16 %399, 16
  %401 = icmp eq i16 %400, 0
  %402 = xor i1 %21, true
  %403 = select i1 %402, i1 true, i1 %23
  %404 = select i1 %401, i1 %403, i1 false
  br i1 %404, label %405, label %453

405:                                              ; preds = %397
  %406 = load ptr, ptr @G, align 8, !tbaa !326
  %407 = getelementptr inbounds %struct.Main, ptr %406, i64 0, i32 43
  %408 = load ptr, ptr %407, align 8, !tbaa !63
  %409 = icmp eq ptr %408, null
  br i1 %409, label %453, label %410

410:                                              ; preds = %405, %450
  %411 = phi ptr [ %451, %450 ], [ %408, %405 ]
  %412 = getelementptr inbounds %struct.ID, ptr %411, i64 0, i32 6
  %413 = load i32, ptr %412, align 4, !tbaa !328
  %414 = getelementptr inbounds %struct.ID, ptr %411, i64 0, i32 5
  %415 = load i16, ptr %414, align 2, !tbaa !329
  %416 = lshr i16 %415, 9
  %417 = and i16 %416, 1
  %418 = zext nneg i16 %417 to i32
  %419 = icmp eq i32 %413, %418
  br i1 %419, label %450, label %420

420:                                              ; preds = %410
  %421 = getelementptr inbounds %struct.Mask, ptr %411, i64 0, i32 2
  %422 = load ptr, ptr %421, align 8, !tbaa !63
  %423 = icmp eq ptr %422, null
  br i1 %423, label %450, label %424

424:                                              ; preds = %420, %447
  %425 = phi ptr [ %448, %447 ], [ %422, %420 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #18
  store i8 0, ptr %10, align 1, !tbaa !81
  %426 = getelementptr inbounds %struct.MaskLayer, ptr %425, i64 0, i32 4
  call void @BLI_sortlist_r(ptr noundef nonnull %426, ptr noundef nonnull %10, ptr noundef nonnull @masklay_shape_cmp_frame) #18
  %427 = load i8, ptr %10, align 1, !tbaa !81
  %428 = icmp eq i8 %427, 0
  br i1 %428, label %447, label %429

429:                                              ; preds = %424
  %430 = load ptr, ptr %426, align 8, !tbaa !337
  %431 = icmp eq ptr %430, null
  br i1 %431, label %447, label %432

432:                                              ; preds = %429
  %433 = load ptr, ptr %430, align 8, !tbaa !339
  %434 = icmp eq ptr %433, null
  br i1 %434, label %447, label %435

435:                                              ; preds = %432, %444
  %436 = phi ptr [ %445, %444 ], [ %433, %432 ]
  %437 = phi ptr [ %436, %444 ], [ %430, %432 ]
  %438 = getelementptr inbounds %struct.MaskLayerShape, ptr %437, i64 0, i32 4
  %439 = load i32, ptr %438, align 4, !tbaa !341
  %440 = getelementptr inbounds %struct.MaskLayerShape, ptr %436, i64 0, i32 4
  %441 = load i32, ptr %440, align 4, !tbaa !341
  %442 = icmp eq i32 %439, %441
  br i1 %442, label %443, label %444

443:                                              ; preds = %435
  call void @BKE_mask_layer_shape_unlink(ptr noundef nonnull %425, ptr noundef nonnull %437) #18
  br label %444

444:                                              ; preds = %443, %435
  %445 = load ptr, ptr %436, align 8, !tbaa !339
  %446 = icmp eq ptr %445, null
  br i1 %446, label %447, label %435

447:                                              ; preds = %444, %432, %429, %424
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #18
  %448 = load ptr, ptr %425, align 8, !tbaa !63
  %449 = icmp eq ptr %448, null
  br i1 %449, label %450, label %424, !llvm.loop !342

450:                                              ; preds = %447, %420, %410
  %451 = load ptr, ptr %411, align 8, !tbaa !63
  %452 = icmp eq ptr %451, null
  br i1 %452, label %453, label %410, !llvm.loop !343

453:                                              ; preds = %450, %394, %405, %348, %269, %339, %313, %397, %340, %300
  %454 = getelementptr inbounds %struct.SpaceAction, ptr %266, i64 0, i32 11
  %455 = load i16, ptr %454, align 2, !tbaa !321
  %456 = and i16 %455, 2048
  %457 = icmp eq i16 %456, 0
  %458 = select i1 %457, i1 true, i1 %21
  br i1 %458, label %471, label %459

459:                                              ; preds = %453
  %460 = load i32, ptr %1, align 8, !tbaa !188
  switch i32 %460, label %471 [
    i32 19, label %461
    i32 21, label %461
  ]

461:                                              ; preds = %459, %459
  %462 = call ptr @ED_context_get_markers(ptr noundef %0) #18
  %463 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %464 = load ptr, ptr %463, align 8, !tbaa !119
  %465 = load i32, ptr %1, align 8, !tbaa !188
  %466 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 47
  %467 = load float, ptr %466, align 4, !tbaa !112
  %468 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 26
  %469 = load i8, ptr %468, align 8, !tbaa !291
  %470 = call i32 @ED_markers_post_apply_transform(ptr noundef %462, ptr noundef %464, i32 noundef %465, float noundef %467, i8 noundef zeroext %469) #18
  br label %471

471:                                              ; preds = %461, %459, %453
  %472 = load i16, ptr %272, align 8
  switch i16 %472, label %473 [
    i16 9, label %474
    i16 3, label %474
  ]

473:                                              ; preds = %471
  call void @ANIM_editkeyframes_refresh(ptr noundef nonnull %12) #18
  br label %474

474:                                              ; preds = %471, %471, %473
  %475 = load i16, ptr %454, align 2, !tbaa !321
  %476 = and i16 %475, -2
  store i16 %476, ptr %454, align 2, !tbaa !321
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %12) #18
  br label %951

477:                                              ; preds = %94
  %478 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %479 = load ptr, ptr %478, align 8, !tbaa !175
  %480 = getelementptr inbounds %struct.ScrArea, ptr %479, i64 0, i32 19
  %481 = load ptr, ptr %480, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %14) #18
  %482 = getelementptr inbounds %struct.SpaceIpo, ptr %481, i64 0, i32 11
  %483 = load i32, ptr %482, align 4, !tbaa !216
  %484 = and i32 %483, 4
  %485 = icmp eq i32 %484, 0
  %486 = zext i1 %485 to i16
  %487 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %14) #18
  %488 = icmp eq i8 %487, 0
  br i1 %488, label %971, label %489

489:                                              ; preds = %477
  %490 = getelementptr inbounds %struct.bAnimContext, ptr %14, i64 0, i32 1
  %491 = load i16, ptr %490, align 8, !tbaa !344
  %492 = icmp eq i16 %491, 0
  br i1 %492, label %519, label %493

493:                                              ; preds = %489
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %494 = load ptr, ptr %14, align 8, !tbaa !320
  %495 = sext i16 %491 to i32
  %496 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef 261, ptr noundef %494, i32 noundef %495) #18
  %497 = load ptr, ptr %15, align 8, !tbaa !63
  %498 = icmp eq ptr %497, null
  br i1 %498, label %518, label %499

499:                                              ; preds = %493
  %500 = xor i1 %21, true
  %501 = select i1 %500, i1 true, i1 %23
  br label %502

502:                                              ; preds = %499, %515
  %503 = phi ptr [ %497, %499 ], [ %516, %515 ]
  %504 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %14, ptr noundef nonnull %503) #18
  %505 = getelementptr inbounds %struct.bAnimListElem, ptr %503, i64 0, i32 8
  %506 = load ptr, ptr %505, align 8, !tbaa !219
  %507 = load i32, ptr %482, align 4, !tbaa !216
  %508 = and i32 %507, 2
  %509 = icmp eq i32 %508, 0
  %510 = select i1 %509, i1 %501, i1 false
  br i1 %510, label %511, label %515

511:                                              ; preds = %502
  %512 = icmp eq ptr %504, null
  br i1 %512, label %514, label %513

513:                                              ; preds = %511
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %504, ptr noundef %506, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  call fastcc void @posttrans_fcurve_clean(ptr noundef %506, i16 noundef signext %486)
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %504, ptr noundef %506, i8 noundef zeroext 1, i8 noundef zeroext 0) #18
  br label %515

514:                                              ; preds = %511
  call fastcc void @posttrans_fcurve_clean(ptr noundef %506, i16 noundef signext %486)
  br label %515

515:                                              ; preds = %513, %514, %502
  %516 = load ptr, ptr %503, align 8, !tbaa !63
  %517 = icmp eq ptr %516, null
  br i1 %517, label %518, label %502, !llvm.loop !345

518:                                              ; preds = %515, %493
  call void @ANIM_animdata_freelist(ptr noundef nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #18
  br label %519

519:                                              ; preds = %518, %489
  br i1 %21, label %521, label %520

520:                                              ; preds = %519
  call void @ANIM_editkeyframes_refresh(ptr noundef nonnull %14) #18
  br label %521

521:                                              ; preds = %519, %520
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %14) #18
  br label %951

522:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %16) #18
  %523 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %16) #18
  %524 = icmp eq i8 %523, 0
  br i1 %524, label %972, label %525

525:                                              ; preds = %522
  %526 = getelementptr inbounds %struct.bAnimContext, ptr %16, i64 0, i32 1
  %527 = load i16, ptr %526, align 8, !tbaa !344
  %528 = icmp eq i16 %527, 0
  br i1 %528, label %543, label %529

529:                                              ; preds = %525
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %530 = load ptr, ptr %16, align 8, !tbaa !320
  %531 = sext i16 %527 to i32
  %532 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %16, ptr noundef nonnull %17, i32 noundef 257, ptr noundef %530, i32 noundef %531) #18
  %533 = load ptr, ptr %17, align 8, !tbaa !63
  %534 = icmp eq ptr %533, null
  br i1 %534, label %542, label %535

535:                                              ; preds = %529, %535
  %536 = phi ptr [ %540, %535 ], [ %533, %529 ]
  %537 = getelementptr inbounds %struct.bAnimListElem, ptr %536, i64 0, i32 2
  %538 = load ptr, ptr %537, align 8, !tbaa !346
  call void @BKE_nlatrack_sort_strips(ptr noundef %538) #18
  %539 = getelementptr inbounds %struct.NlaTrack, ptr %538, i64 0, i32 2
  call void @BKE_nlastrips_clear_metas(ptr noundef nonnull %539, i8 noundef zeroext 0, i8 noundef zeroext 1) #18
  %540 = load ptr, ptr %536, align 8, !tbaa !63
  %541 = icmp eq ptr %540, null
  br i1 %541, label %542, label %535, !llvm.loop !347

542:                                              ; preds = %535, %529
  call void @ANIM_animdata_freelist(ptr noundef nonnull %17) #18
  call void @ED_nla_postop_refresh(ptr noundef nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #18
  br label %543

543:                                              ; preds = %525, %542
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %16) #18
  br label %951

544:                                              ; preds = %94
  %545 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  %546 = load ptr, ptr %545, align 8, !tbaa !99
  %547 = icmp eq ptr %546, null
  br i1 %547, label %556, label %548

548:                                              ; preds = %544
  %549 = getelementptr inbounds %struct.Object, ptr %546, i64 0, i32 3
  %550 = load i16, ptr %549, align 8, !tbaa !80
  %551 = icmp eq i16 %550, 1
  br i1 %551, label %552, label %951

552:                                              ; preds = %548
  %553 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %546) #18
  %554 = load ptr, ptr %545, align 8, !tbaa !99
  %555 = tail call i32 @ED_mesh_mirror_spatial_table(ptr noundef %554, ptr noundef %553, ptr noundef null, i8 noundef zeroext 101) #18
  br label %951

556:                                              ; preds = %544
  %557 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %558 = load i32, ptr %557, align 4, !tbaa !54
  %559 = and i32 %558, 4
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %855, label %561

561:                                              ; preds = %556
  %562 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 39
  %563 = load ptr, ptr %562, align 8, !tbaa !89
  %564 = icmp eq ptr %563, null
  br i1 %564, label %855, label %565

565:                                              ; preds = %561
  %566 = getelementptr inbounds %struct.Object, ptr %563, i64 0, i32 19
  %567 = load ptr, ptr %566, align 8, !tbaa !64
  %568 = and i32 %558, 262144
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %578, label %570

570:                                              ; preds = %565
  %571 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %572 = load i32, ptr %571, align 8, !tbaa !292
  %573 = and i32 %572, 16
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %578, label %575

575:                                              ; preds = %570
  %576 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %577 = load ptr, ptr %576, align 8, !tbaa !119
  tail call void @BKE_pose_where_is(ptr noundef %577, ptr noundef nonnull %563) #18
  br label %578

578:                                              ; preds = %575, %570, %565
  br i1 %21, label %730, label %579

579:                                              ; preds = %578
  %580 = load i32, ptr %1, align 8, !tbaa !188
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %586, label %582

582:                                              ; preds = %579
  %583 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 32
  %584 = load i16, ptr %583, align 2, !tbaa !348
  %585 = tail call i32 @count_set_pose_transflags(ptr noundef nonnull %1, i16 noundef signext %584, ptr noundef nonnull %563)
  br label %586

586:                                              ; preds = %579, %582
  %587 = load i32, ptr %1, align 8, !tbaa !188
  %588 = icmp eq i32 %587, 1
  br i1 %588, label %589, label %730

589:                                              ; preds = %586
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %3) #18
  %590 = getelementptr inbounds %struct.Object, ptr %563, i64 0, i32 18
  %591 = load ptr, ptr %590, align 8, !tbaa !58
  %592 = load ptr, ptr %591, align 8, !tbaa !63
  %593 = icmp eq ptr %592, null
  br i1 %593, label %728, label %594

594:                                              ; preds = %589, %722
  %595 = phi ptr [ %724, %722 ], [ %592, %589 ]
  %596 = phi i32 [ %723, %722 ], [ 0, %589 ]
  %597 = getelementptr inbounds %struct.bPoseChannel, ptr %595, i64 0, i32 3
  %598 = load ptr, ptr %597, align 8, !tbaa !63
  %599 = icmp eq ptr %598, null
  br i1 %599, label %631, label %600

600:                                              ; preds = %594, %627
  %601 = phi ptr [ %629, %627 ], [ %598, %594 ]
  %602 = phi ptr [ %628, %627 ], [ undef, %594 ]
  %603 = getelementptr inbounds %struct.bConstraint, ptr %601, i64 0, i32 3
  %604 = load i16, ptr %603, align 8, !tbaa !74
  %605 = icmp eq i16 %604, 3
  br i1 %605, label %606, label %627

606:                                              ; preds = %600
  %607 = getelementptr inbounds %struct.bConstraint, ptr %601, i64 0, i32 9
  %608 = load float, ptr %607, align 8, !tbaa !76
  %609 = fcmp une float %608, 0.000000e+00
  br i1 %609, label %610, label %627

610:                                              ; preds = %606
  %611 = getelementptr inbounds %struct.bConstraint, ptr %601, i64 0, i32 2
  %612 = load ptr, ptr %611, align 8, !tbaa !77
  %613 = load ptr, ptr %612, align 8, !tbaa !78
  %614 = icmp eq ptr %613, null
  br i1 %614, label %624, label %615

615:                                              ; preds = %610
  %616 = getelementptr inbounds %struct.Object, ptr %613, i64 0, i32 3
  %617 = load i16, ptr %616, align 8, !tbaa !80
  %618 = icmp eq i16 %617, 25
  br i1 %618, label %619, label %623

619:                                              ; preds = %615
  %620 = getelementptr inbounds %struct.bKinematicConstraint, ptr %612, i64 0, i32 5
  %621 = load i8, ptr %620, align 8, !tbaa !81
  %622 = icmp eq i8 %621, 0
  br i1 %622, label %624, label %623

623:                                              ; preds = %619, %615
  br label %624

624:                                              ; preds = %623, %619, %610
  %625 = phi ptr [ %602, %623 ], [ %612, %610 ], [ %612, %619 ]
  %626 = phi i1 [ true, %623 ], [ false, %610 ], [ false, %619 ]
  br i1 %626, label %627, label %631

627:                                              ; preds = %624, %606, %600
  %628 = phi ptr [ %625, %624 ], [ %602, %606 ], [ %602, %600 ]
  %629 = load ptr, ptr %601, align 8, !tbaa !63
  %630 = icmp eq ptr %629, null
  br i1 %630, label %631, label %600, !llvm.loop !82

631:                                              ; preds = %627, %624, %594
  %632 = phi ptr [ null, %594 ], [ %625, %624 ], [ null, %627 ]
  %633 = icmp eq ptr %632, null
  br i1 %633, label %722, label %634

634:                                              ; preds = %631
  %635 = getelementptr inbounds %struct.bKinematicConstraint, ptr %632, i64 0, i32 2
  %636 = load i16, ptr %635, align 2, !tbaa !91
  %637 = zext i16 %636 to i32
  %638 = and i32 %637, 4
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %722, label %640

640:                                              ; preds = %634
  %641 = and i32 %637, 1
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %643, label %646

643:                                              ; preds = %640
  %644 = getelementptr inbounds %struct.bPoseChannel, ptr %595, i64 0, i32 13
  %645 = load ptr, ptr %644, align 8, !tbaa !83
  br label %646

646:                                              ; preds = %643, %640
  %647 = phi ptr [ %645, %643 ], [ %595, %640 ]
  %648 = icmp eq ptr %647, null
  br i1 %648, label %669, label %649

649:                                              ; preds = %646
  %650 = getelementptr inbounds %struct.bKinematicConstraint, ptr %632, i64 0, i32 3
  %651 = load i16, ptr %650, align 4, !tbaa !93
  %652 = sext i16 %651 to i32
  %653 = add nsw i32 %652, -1
  %654 = call i32 @llvm.umin.i32(i32 %653, i32 255)
  %655 = add nuw nsw i32 %654, 1
  %656 = zext nneg i32 %654 to i64
  br label %657

657:                                              ; preds = %662, %649
  %658 = phi i64 [ 0, %649 ], [ %663, %662 ]
  %659 = phi ptr [ %647, %649 ], [ %665, %662 ]
  %660 = getelementptr inbounds [256 x ptr], ptr %3, i64 0, i64 %658
  store ptr %659, ptr %660, align 8, !tbaa !63
  %661 = icmp eq i64 %658, %656
  br i1 %661, label %669, label %662

662:                                              ; preds = %657
  %663 = add nuw nsw i64 %658, 1
  %664 = getelementptr inbounds %struct.bPoseChannel, ptr %659, i64 0, i32 13
  %665 = load ptr, ptr %664, align 8, !tbaa !83
  %666 = icmp eq ptr %665, null
  br i1 %666, label %667, label %657, !llvm.loop !349

667:                                              ; preds = %662
  %668 = trunc i64 %663 to i32
  br label %669

669:                                              ; preds = %657, %667, %646
  %670 = phi i32 [ 0, %646 ], [ %668, %667 ], [ %655, %657 ]
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %719, label %672

672:                                              ; preds = %669
  %673 = zext nneg i32 %670 to i64
  br label %674

674:                                              ; preds = %717, %672
  %675 = phi i64 [ %673, %672 ], [ %676, %717 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  %676 = add nsw i64 %675, -1
  %677 = getelementptr inbounds [256 x ptr], ptr %3, i64 0, i64 %676
  %678 = load ptr, ptr %677, align 8, !tbaa !63
  %679 = getelementptr inbounds %struct.bPoseChannel, ptr %678, i64 0, i32 12
  %680 = load ptr, ptr %679, align 8, !tbaa !67
  %681 = getelementptr inbounds %struct.Bone, ptr %680, i64 0, i32 10
  %682 = load i32, ptr %681, align 8, !tbaa !71
  %683 = or i32 %682, 8
  store i32 %683, ptr %681, align 8, !tbaa !71
  %684 = getelementptr inbounds %struct.bPoseChannel, ptr %678, i64 0, i32 29
  call void @BKE_armature_mat_pose_to_bone(ptr noundef %678, ptr noundef nonnull %684, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #18
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %4) #18
  %685 = getelementptr inbounds %struct.bPoseChannel, ptr %678, i64 0, i32 26
  %686 = load i16, ptr %685, align 4, !tbaa !350
  %687 = icmp sgt i16 %686, 0
  br i1 %687, label %688, label %690

688:                                              ; preds = %674
  %689 = getelementptr inbounds %struct.bPoseChannel, ptr %678, i64 0, i32 22
  call void @mat3_to_eulO(ptr noundef nonnull %689, i16 noundef signext %686, ptr noundef nonnull %5) #18
  br label %697

690:                                              ; preds = %674
  %691 = icmp eq i16 %686, -1
  br i1 %691, label %692, label %695

692:                                              ; preds = %690
  %693 = getelementptr inbounds %struct.bPoseChannel, ptr %678, i64 0, i32 24
  %694 = getelementptr inbounds %struct.bPoseChannel, ptr %678, i64 0, i32 25
  call void @mat3_to_axis_angle(ptr noundef nonnull %693, ptr noundef nonnull %694, ptr noundef nonnull %5) #18
  br label %697

695:                                              ; preds = %690
  %696 = getelementptr inbounds %struct.bPoseChannel, ptr %678, i64 0, i32 23
  call void @mat3_to_quat(ptr noundef nonnull %696, ptr noundef nonnull %5) #18
  br label %697

697:                                              ; preds = %695, %692, %688
  %698 = load i16, ptr %635, align 2, !tbaa !91
  %699 = and i16 %698, 16
  %700 = icmp eq i16 %699, 0
  br i1 %700, label %717, label %701

701:                                              ; preds = %697
  %702 = load i16, ptr %685, align 4, !tbaa !350
  %703 = icmp sgt i16 %702, 0
  br i1 %703, label %704, label %706

704:                                              ; preds = %701
  %705 = getelementptr inbounds %struct.bPoseChannel, ptr %678, i64 0, i32 22
  call void @eulO_to_mat3(ptr noundef nonnull %6, ptr noundef nonnull %705, i16 noundef signext %702) #18
  br label %714

706:                                              ; preds = %701
  %707 = icmp eq i16 %702, -1
  br i1 %707, label %708, label %712

708:                                              ; preds = %706
  %709 = getelementptr inbounds %struct.bPoseChannel, ptr %678, i64 0, i32 24
  %710 = getelementptr inbounds %struct.bPoseChannel, ptr %678, i64 0, i32 25
  %711 = load float, ptr %710, align 8, !tbaa !351
  call void @axis_angle_to_mat3(ptr noundef nonnull %6, ptr noundef nonnull %709, float noundef %711) #18
  br label %714

712:                                              ; preds = %706
  %713 = getelementptr inbounds %struct.bPoseChannel, ptr %678, i64 0, i32 23
  call void @quat_to_mat3(ptr noundef nonnull %6, ptr noundef nonnull %713) #18
  br label %714

714:                                              ; preds = %712, %708, %704
  %715 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %7, ptr noundef nonnull %6) #18
  call void @mul_m3_m3m3(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %7) #18
  %716 = getelementptr inbounds %struct.bPoseChannel, ptr %678, i64 0, i32 21
  call void @mat3_to_size(ptr noundef nonnull %716, ptr noundef nonnull %8) #18
  br label %717

717:                                              ; preds = %714, %697
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  %718 = icmp eq i64 %676, 0
  br i1 %718, label %719, label %674, !llvm.loop !352

719:                                              ; preds = %717, %669
  %720 = load i16, ptr %635, align 2, !tbaa !91
  %721 = and i16 %720, -5
  store i16 %721, ptr %635, align 2, !tbaa !91
  br label %722

722:                                              ; preds = %719, %634, %631
  %723 = phi i32 [ 1, %719 ], [ %596, %634 ], [ %596, %631 ]
  %724 = load ptr, ptr %595, align 8, !tbaa !63
  %725 = icmp eq ptr %724, null
  br i1 %725, label %726, label %594, !llvm.loop !353

726:                                              ; preds = %722
  %727 = trunc i32 %723 to i16
  br label %728

728:                                              ; preds = %589, %726
  %729 = phi i16 [ 0, %589 ], [ %727, %726 ]
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %3) #18
  br label %781

730:                                              ; preds = %578, %586
  %731 = getelementptr inbounds %struct.Object, ptr %563, i64 0, i32 18
  %732 = load ptr, ptr %731, align 8, !tbaa !58
  %733 = load ptr, ptr %732, align 8, !tbaa !63
  %734 = icmp eq ptr %733, null
  br i1 %734, label %781, label %735

735:                                              ; preds = %730, %778
  %736 = phi ptr [ %779, %778 ], [ %733, %730 ]
  %737 = getelementptr inbounds %struct.bPoseChannel, ptr %736, i64 0, i32 3
  %738 = load ptr, ptr %737, align 8, !tbaa !63
  %739 = icmp eq ptr %738, null
  br i1 %739, label %771, label %740

740:                                              ; preds = %735, %767
  %741 = phi ptr [ %769, %767 ], [ %738, %735 ]
  %742 = phi ptr [ %768, %767 ], [ undef, %735 ]
  %743 = getelementptr inbounds %struct.bConstraint, ptr %741, i64 0, i32 3
  %744 = load i16, ptr %743, align 8, !tbaa !74
  %745 = icmp eq i16 %744, 3
  br i1 %745, label %746, label %767

746:                                              ; preds = %740
  %747 = getelementptr inbounds %struct.bConstraint, ptr %741, i64 0, i32 9
  %748 = load float, ptr %747, align 8, !tbaa !76
  %749 = fcmp une float %748, 0.000000e+00
  br i1 %749, label %750, label %767

750:                                              ; preds = %746
  %751 = getelementptr inbounds %struct.bConstraint, ptr %741, i64 0, i32 2
  %752 = load ptr, ptr %751, align 8, !tbaa !77
  %753 = load ptr, ptr %752, align 8, !tbaa !78
  %754 = icmp eq ptr %753, null
  br i1 %754, label %764, label %755

755:                                              ; preds = %750
  %756 = getelementptr inbounds %struct.Object, ptr %753, i64 0, i32 3
  %757 = load i16, ptr %756, align 8, !tbaa !80
  %758 = icmp eq i16 %757, 25
  br i1 %758, label %759, label %763

759:                                              ; preds = %755
  %760 = getelementptr inbounds %struct.bKinematicConstraint, ptr %752, i64 0, i32 5
  %761 = load i8, ptr %760, align 8, !tbaa !81
  %762 = icmp eq i8 %761, 0
  br i1 %762, label %764, label %763

763:                                              ; preds = %759, %755
  br label %764

764:                                              ; preds = %763, %759, %750
  %765 = phi ptr [ %742, %763 ], [ %752, %750 ], [ %752, %759 ]
  %766 = phi i1 [ true, %763 ], [ false, %750 ], [ false, %759 ]
  br i1 %766, label %767, label %771

767:                                              ; preds = %764, %746, %740
  %768 = phi ptr [ %765, %764 ], [ %742, %746 ], [ %742, %740 ]
  %769 = load ptr, ptr %741, align 8, !tbaa !63
  %770 = icmp eq ptr %769, null
  br i1 %770, label %771, label %740, !llvm.loop !82

771:                                              ; preds = %764, %767, %735
  %772 = phi ptr [ null, %735 ], [ %765, %764 ], [ null, %767 ]
  %773 = icmp eq ptr %772, null
  br i1 %773, label %778, label %774

774:                                              ; preds = %771
  %775 = getelementptr inbounds %struct.bKinematicConstraint, ptr %772, i64 0, i32 2
  %776 = load i16, ptr %775, align 2, !tbaa !91
  %777 = and i16 %776, -5
  store i16 %777, ptr %775, align 2, !tbaa !91
  br label %778

778:                                              ; preds = %774, %771
  %779 = load ptr, ptr %736, align 8, !tbaa !63
  %780 = icmp eq ptr %779, null
  br i1 %780, label %781, label %735, !llvm.loop !354

781:                                              ; preds = %778, %730, %728
  %782 = phi i16 [ %729, %728 ], [ 0, %730 ], [ 0, %778 ]
  %783 = load i32, ptr %1, align 8, !tbaa !188
  %784 = icmp eq i32 %783, 1
  br i1 %784, label %785, label %839

785:                                              ; preds = %781
  %786 = getelementptr inbounds %struct.Object, ptr %563, i64 0, i32 18
  %787 = load ptr, ptr %786, align 8, !tbaa !58
  %788 = load ptr, ptr %787, align 8, !tbaa !63
  %789 = icmp eq ptr %788, null
  br i1 %789, label %839, label %793

790:                                              ; preds = %837, %793
  %791 = load ptr, ptr %794, align 8, !tbaa !63
  %792 = icmp eq ptr %791, null
  br i1 %792, label %839, label %793, !llvm.loop !355

793:                                              ; preds = %785, %790
  %794 = phi ptr [ %791, %790 ], [ %788, %785 ]
  %795 = getelementptr inbounds %struct.bPoseChannel, ptr %794, i64 0, i32 6
  %796 = load i16, ptr %795, align 2, !tbaa !356
  %797 = and i16 %796, -7169
  store i16 %797, ptr %795, align 2, !tbaa !356
  %798 = getelementptr inbounds %struct.bPoseChannel, ptr %794, i64 0, i32 9
  %799 = load i8, ptr %798, align 8, !tbaa !90
  %800 = and i8 %799, -10
  store i8 %800, ptr %798, align 8, !tbaa !90
  %801 = getelementptr inbounds %struct.bPoseChannel, ptr %794, i64 0, i32 3
  %802 = load ptr, ptr %801, align 8, !tbaa !357
  %803 = icmp eq ptr %802, null
  br i1 %803, label %790, label %804

804:                                              ; preds = %793, %837
  %805 = phi ptr [ %806, %837 ], [ %802, %793 ]
  %806 = load ptr, ptr %805, align 8, !tbaa !358
  %807 = getelementptr inbounds %struct.bConstraint, ptr %805, i64 0, i32 3
  %808 = load i16, ptr %807, align 8, !tbaa !74
  %809 = icmp eq i16 %808, 3
  br i1 %809, label %810, label %837

810:                                              ; preds = %804
  %811 = getelementptr inbounds %struct.bConstraint, ptr %805, i64 0, i32 2
  %812 = load ptr, ptr %811, align 8, !tbaa !77
  %813 = getelementptr inbounds %struct.bKinematicConstraint, ptr %812, i64 0, i32 2
  %814 = load i16, ptr %813, align 2, !tbaa !91
  %815 = and i16 %814, 8
  %816 = icmp eq i16 %815, 0
  br i1 %816, label %822, label %817

817:                                              ; preds = %810
  %818 = load ptr, ptr %786, align 8, !tbaa !58
  call void @BIK_clear_data(ptr noundef %818) #18
  call void @BLI_remlink(ptr noundef nonnull %801, ptr noundef nonnull %805) #18
  %819 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  %820 = load ptr, ptr %811, align 8, !tbaa !77
  call void %819(ptr noundef %820) #18
  %821 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %821(ptr noundef nonnull %805) #18
  br label %837

822:                                              ; preds = %810
  %823 = load i8, ptr %798, align 8, !tbaa !90
  %824 = or i8 %823, 1
  store i8 %824, ptr %798, align 8, !tbaa !90
  %825 = load ptr, ptr %812, align 8, !tbaa !78
  %826 = icmp eq ptr %825, null
  br i1 %826, label %835, label %827

827:                                              ; preds = %822
  %828 = getelementptr inbounds %struct.Object, ptr %825, i64 0, i32 3
  %829 = load i16, ptr %828, align 8, !tbaa !80
  %830 = icmp eq i16 %829, 25
  br i1 %830, label %831, label %837

831:                                              ; preds = %827
  %832 = getelementptr inbounds %struct.bKinematicConstraint, ptr %812, i64 0, i32 5
  %833 = load i8, ptr %832, align 8, !tbaa !81
  %834 = icmp eq i8 %833, 0
  br i1 %834, label %835, label %837

835:                                              ; preds = %831, %822
  %836 = or i8 %823, 9
  store i8 %836, ptr %798, align 8, !tbaa !90
  br label %837

837:                                              ; preds = %835, %831, %827, %817, %804
  %838 = icmp eq ptr %806, null
  br i1 %838, label %790, label %804, !llvm.loop !359

839:                                              ; preds = %790, %785, %781
  br i1 %21, label %848, label %840

840:                                              ; preds = %839
  %841 = load i32, ptr %1, align 8, !tbaa !188
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %848, label %843

843:                                              ; preds = %840
  %844 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %845 = load ptr, ptr %844, align 8, !tbaa !119
  %846 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 52
  %847 = load ptr, ptr %846, align 8, !tbaa !360
  call void @autokeyframe_pose_cb_func(ptr noundef %0, ptr noundef %845, ptr noundef %847, ptr noundef nonnull %563, i32 noundef %841, i16 noundef signext %782)
  call void @DAG_id_tag_update(ptr noundef nonnull %563, i16 noundef signext 2) #18
  br label %951

848:                                              ; preds = %840, %839
  %849 = getelementptr inbounds %struct.bArmature, ptr %567, i64 0, i32 8
  %850 = load i32, ptr %849, align 8, !tbaa !100
  %851 = and i32 %850, 64
  %852 = icmp eq i32 %851, 0
  call void @DAG_id_tag_update(ptr noundef nonnull %563, i16 noundef signext 2) #18
  br i1 %852, label %951, label %853

853:                                              ; preds = %848
  %854 = getelementptr inbounds %struct.Object, ptr %563, i64 0, i32 103
  store i8 0, ptr %854, align 1, !tbaa !361
  br label %951

855:                                              ; preds = %561, %556
  %856 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %857 = load i32, ptr %856, align 8, !tbaa !292
  %858 = and i32 %857, 256
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %860, label %951

860:                                              ; preds = %855
  %861 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %862 = load ptr, ptr %861, align 8, !tbaa !119
  %863 = getelementptr inbounds %struct.Scene, ptr %862, i64 0, i32 6
  %864 = load ptr, ptr %863, align 8, !tbaa !120
  %865 = icmp eq ptr %864, null
  br i1 %865, label %878, label %866

866:                                              ; preds = %860
  %867 = getelementptr inbounds %struct.Base, ptr %864, i64 0, i32 7
  %868 = load ptr, ptr %867, align 8, !tbaa !139
  %869 = icmp eq ptr %868, null
  br i1 %869, label %878, label %870

870:                                              ; preds = %866
  %871 = getelementptr inbounds %struct.Object, ptr %868, i64 0, i32 27
  %872 = load i32, ptr %871, align 8, !tbaa !362
  %873 = and i32 %872, 32
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %878, label %875

875:                                              ; preds = %870
  %876 = tail call ptr @PE_get_current(ptr noundef %862, ptr noundef nonnull %868) #18
  %877 = icmp eq ptr %876, null
  br i1 %877, label %878, label %951

878:                                              ; preds = %875, %870, %866, %860
  %879 = load i32, ptr %24, align 8, !tbaa !34
  %880 = icmp sgt i32 %879, 0
  br i1 %880, label %881, label %951

881:                                              ; preds = %878
  %882 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  %883 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 52
  br label %889

884:                                              ; preds = %950
  %885 = add nuw nsw i64 %890, 1
  %886 = load i32, ptr %24, align 8, !tbaa !34
  %887 = sext i32 %886 to i64
  %888 = icmp slt i64 %885, %887
  br i1 %888, label %889, label %951, !llvm.loop !363

889:                                              ; preds = %881, %884
  %890 = phi i64 [ 0, %881 ], [ %885, %884 ]
  %891 = load ptr, ptr %882, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #18
  %892 = getelementptr inbounds %struct.TransData, ptr %891, i64 %890, i32 11
  %893 = load ptr, ptr %892, align 8, !tbaa !364
  %894 = getelementptr inbounds %struct.TransData, ptr %891, i64 %890, i32 16
  %895 = load i32, ptr %894, align 8, !tbaa !49
  %896 = and i32 %895, 4
  %897 = icmp eq i32 %896, 0
  %898 = and i32 %895, 2052
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %900, label %950

900:                                              ; preds = %889
  %901 = load ptr, ptr %861, align 8, !tbaa !119
  call void @BKE_ptcache_ids_from_object(ptr noundef nonnull %18, ptr noundef %893, ptr noundef %901, i32 noundef 8) #18
  %902 = load ptr, ptr %18, align 8, !tbaa !63
  %903 = icmp eq ptr %902, null
  br i1 %903, label %918, label %904

904:                                              ; preds = %900, %915
  %905 = phi ptr [ %916, %915 ], [ %902, %900 ]
  %906 = getelementptr inbounds %struct.PTCacheID, ptr %905, i64 0, i32 5
  %907 = load i32, ptr %906, align 8, !tbaa !365
  %908 = icmp eq i32 %907, 1
  br i1 %908, label %915, label %909

909:                                              ; preds = %904
  %910 = getelementptr inbounds %struct.PTCacheID, ptr %905, i64 0, i32 25
  %911 = load ptr, ptr %910, align 8, !tbaa !366
  %912 = getelementptr inbounds %struct.PointCache, ptr %911, i64 0, i32 2
  %913 = load i32, ptr %912, align 8, !tbaa !367
  %914 = or i32 %913, 2
  store i32 %914, ptr %912, align 8, !tbaa !367
  br label %915

915:                                              ; preds = %904, %909
  %916 = load ptr, ptr %905, align 8, !tbaa !63
  %917 = icmp eq ptr %916, null
  br i1 %917, label %918, label %904, !llvm.loop !369

918:                                              ; preds = %915, %900
  call void @BLI_freelistN(ptr noundef nonnull %18) #18
  %919 = load ptr, ptr %861, align 8, !tbaa !119
  %920 = call i32 @BKE_ptcache_object_reset(ptr noundef %919, ptr noundef %893, i32 noundef 2) #18
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %923, label %922

922:                                              ; preds = %918
  call void @DAG_id_tag_update(ptr noundef %893, i16 noundef signext 2) #18
  br label %923

923:                                              ; preds = %922, %918
  call void @DAG_id_tag_update(ptr noundef %893, i16 noundef signext 1) #18
  br i1 %21, label %928, label %924

924:                                              ; preds = %923
  %925 = load ptr, ptr %861, align 8, !tbaa !119
  %926 = load ptr, ptr %883, align 8, !tbaa !360
  %927 = load i32, ptr %1, align 8, !tbaa !188
  call void @autokeyframe_ob_cb_func(ptr noundef %0, ptr noundef %925, ptr noundef %926, ptr noundef %893, i32 noundef %927)
  br label %928

928:                                              ; preds = %924, %923
  %929 = getelementptr inbounds %struct.Object, ptr %893, i64 0, i32 128
  %930 = load ptr, ptr %929, align 8, !tbaa !370
  %931 = icmp ne ptr %930, null
  %932 = select i1 %931, i1 %21, i1 false
  br i1 %932, label %933, label %950

933:                                              ; preds = %928
  %934 = load ptr, ptr %861, align 8, !tbaa !119
  %935 = call float @BKE_scene_frame_get(ptr noundef %934) #18
  %936 = load ptr, ptr %861, align 8, !tbaa !119
  %937 = getelementptr inbounds %struct.Scene, ptr %936, i64 0, i32 47
  %938 = load ptr, ptr %937, align 8, !tbaa !371
  %939 = call zeroext i8 @BKE_rigidbody_check_sim_running(ptr noundef %938, float noundef %935) #18
  %940 = icmp eq i8 %939, 0
  br i1 %940, label %950, label %941

941:                                              ; preds = %933
  %942 = getelementptr inbounds %struct.TransData, ptr %891, i64 %890, i32 13
  %943 = load ptr, ptr %942, align 8, !tbaa !372
  %944 = getelementptr inbounds %struct.TransDataExtension, ptr %943, i64 0, i32 18
  %945 = getelementptr inbounds %struct.TransDataExtension, ptr %943, i64 0, i32 19
  %946 = getelementptr inbounds %struct.TransDataExtension, ptr %943, i64 0, i32 20
  %947 = getelementptr inbounds %struct.TransDataExtension, ptr %943, i64 0, i32 21
  %948 = getelementptr inbounds %struct.TransDataExtension, ptr %943, i64 0, i32 22
  %949 = load float, ptr %948, align 8, !tbaa !373
  call void @BKE_rigidbody_aftertrans_update(ptr noundef %893, ptr noundef nonnull %944, ptr noundef nonnull %945, ptr noundef nonnull %946, ptr noundef nonnull %947, float noundef %949) #18
  br label %950

950:                                              ; preds = %928, %941, %933, %889
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #18
  br i1 %897, label %884, label %951

951:                                              ; preds = %950, %884, %848, %878, %256, %250, %474, %521, %543, %843, %853, %96, %121, %111, %113, %120, %133, %128, %258, %261, %552, %548, %855, %875, %168
  %952 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %953 = load ptr, ptr %952, align 8, !tbaa !119
  %954 = getelementptr inbounds %struct.Scene, ptr %953, i64 0, i32 5
  %955 = load ptr, ptr %954, align 8, !tbaa !63
  %956 = icmp eq ptr %955, null
  br i1 %956, label %973, label %957

957:                                              ; preds = %951, %965
  %958 = phi ptr [ %968, %965 ], [ %955, %951 ]
  %959 = getelementptr inbounds %struct.Base, ptr %958, i64 0, i32 4
  %960 = load i32, ptr %959, align 8, !tbaa !375
  %961 = and i32 %960, 2
  %962 = icmp eq i32 %961, 0
  br i1 %962, label %965, label %963

963:                                              ; preds = %957
  %964 = or i32 %960, 1
  store i32 %964, ptr %959, align 8, !tbaa !375
  br label %965

965:                                              ; preds = %963, %957
  %966 = load i32, ptr %959, align 8, !tbaa !375
  %967 = and i32 %966, -8495
  store i32 %967, ptr %959, align 8, !tbaa !375
  %968 = load ptr, ptr %958, align 8, !tbaa !63
  %969 = icmp eq ptr %968, null
  br i1 %969, label %973, label %957, !llvm.loop !376

970:                                              ; preds = %262
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %12) #18
  br label %973

971:                                              ; preds = %477
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %14) #18
  br label %973

972:                                              ; preds = %522
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %16) #18
  br label %973

973:                                              ; preds = %965, %951, %972, %971, %970, %2
  ret void
}

declare void @projectEdgeSlideData(ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

declare void @freeEdgeSlideTempFaces(ptr noundef) local_unnamed_addr #7

declare i32 @ED_markers_post_apply_transform(ptr noundef, ptr noundef, i32 noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @special_aftertrans_update__mask(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  %4 = load i8, ptr %3, align 8, !tbaa !279
  switch i8 %4, label %17 [
    i8 20, label %5
    i8 6, label %11
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %7 = load ptr, ptr %6, align 8, !tbaa !175
  %8 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !197
  %10 = tail call ptr @ED_space_clip_get_mask(ptr noundef %9) #18
  br label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %13 = load ptr, ptr %12, align 8, !tbaa !175
  %14 = getelementptr inbounds %struct.ScrArea, ptr %13, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !197
  %16 = tail call ptr @ED_space_image_get_mask(ptr noundef %15) #18
  br label %17

17:                                               ; preds = %2, %11, %5
  %18 = phi ptr [ %10, %5 ], [ %16, %11 ], [ null, %2 ]
  %19 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %20 = load ptr, ptr %19, align 8, !tbaa !119
  %21 = getelementptr inbounds %struct.Scene, ptr %20, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !317
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358285312, ptr noundef %18) #18
  br label %25

25:                                               ; preds = %24, %17
  %26 = load ptr, ptr %19, align 8, !tbaa !119
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.Scene, ptr %26, i64 0, i32 20
  %30 = load ptr, ptr %29, align 8, !tbaa !253
  %31 = getelementptr inbounds %struct.ToolSettings, ptr %30, i64 0, i32 21
  %32 = load i16, ptr %31, align 8, !tbaa !377
  %33 = and i16 %32, 1
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %43, label %39

35:                                               ; preds = %25
  %36 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !378
  %37 = and i16 %36, 1
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35, %28
  %40 = getelementptr inbounds %struct.Scene, ptr %26, i64 0, i32 22, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !252
  %42 = tail call zeroext i8 @ED_mask_layer_shape_auto_key_select(ptr noundef %18, i32 noundef %41) #18
  br label %43

43:                                               ; preds = %39, %35, %28
  ret void
}

declare void @ED_node_post_apply_transform(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @ED_node_link_insert(ptr noundef) local_unnamed_addr #7

declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare ptr @ANIM_nla_mapping_get(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @ANIM_nla_mapping_apply_fcurve(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @posttrans_fcurve_clean(ptr noundef %0, i16 noundef signext %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !223
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %104, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !221
  %9 = icmp eq ptr %8, null
  br i1 %9, label %104, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %12 = zext i32 %4 to i64
  %13 = shl nuw nsw i64 %12, 2
  %14 = tail call ptr %11(i64 noundef %13, ptr noundef nonnull @.str.10) #18
  %15 = load i32, ptr %3, align 8, !tbaa !223
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %50, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %7, align 8, !tbaa !221
  %19 = zext i32 %15 to i64
  br label %20

20:                                               ; preds = %17, %45
  %21 = phi i64 [ 0, %17 ], [ %48, %45 ]
  %22 = phi i32 [ 0, %17 ], [ %47, %45 ]
  %23 = phi i32 [ 0, %17 ], [ %46, %45 ]
  %24 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 %21, i32 8
  %25 = load i8, ptr %24, align 4, !tbaa !379
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 %21, i32 7
  %30 = load i8, ptr %29, align 1, !tbaa !380
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 %21, i32 9
  %35 = load i8, ptr %34, align 1, !tbaa !381
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %33, %28, %20
  %39 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 %21, i32 0, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !112
  %41 = sext i32 %23 to i64
  %42 = getelementptr inbounds float, ptr %14, i64 %41
  store float %40, ptr %42, align 4, !tbaa !112
  %43 = add nsw i32 %23, 1
  %44 = add nsw i32 %22, 1
  br label %45

45:                                               ; preds = %38, %33
  %46 = phi i32 [ %43, %38 ], [ %23, %33 ]
  %47 = phi i32 [ %44, %38 ], [ %22, %33 ]
  %48 = add nuw nsw i64 %21, 1
  %49 = icmp eq i64 %48, %19
  br i1 %49, label %50, label %20, !llvm.loop !382

50:                                               ; preds = %45, %10
  %51 = phi i32 [ 0, %10 ], [ %47, %45 ]
  %52 = icmp eq i32 %51, 0
  %53 = icmp eq i32 %51, %15
  %54 = or i1 %52, %53
  br i1 %54, label %102, label %55

55:                                               ; preds = %50
  %56 = add i32 %15, -1
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %58, label %100

58:                                               ; preds = %55
  %59 = icmp slt i32 %51, 1
  %60 = sext i32 %51 to i64
  %61 = zext nneg i32 %56 to i64
  br label %62

62:                                               ; preds = %58, %97
  %63 = phi i64 [ %61, %58 ], [ %98, %97 ]
  %64 = load ptr, ptr %7, align 8, !tbaa !221
  %65 = getelementptr inbounds %struct.BezTriple, ptr %64, i64 %63, i32 8
  %66 = load i8, ptr %65, align 4, !tbaa !379
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %97

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.BezTriple, ptr %64, i64 %63, i32 7
  %71 = load i8, ptr %70, align 1, !tbaa !380
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.BezTriple, ptr %64, i64 %63, i32 9
  %76 = load i8, ptr %75, align 1, !tbaa !381
  %77 = and i8 %76, 1
  %78 = icmp ne i8 %77, 0
  %79 = or i1 %78, %59
  br i1 %79, label %97, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.BezTriple, ptr %64, i64 %63, i32 0, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !112
  br label %83

83:                                               ; preds = %92, %80
  %84 = phi i64 [ %94, %92 ], [ 0, %80 ]
  %85 = getelementptr inbounds float, ptr %14, i64 %84
  %86 = load float, ptr %85, align 4, !tbaa !112
  %87 = fsub float %82, %86
  %88 = tail call float @llvm.fabs.f32(float %87)
  %89 = fcmp ult float %88, 0x3E80000000000000
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = trunc i64 %63 to i32
  tail call void @delete_fcurve_key(ptr noundef %0, i32 noundef %91, i8 noundef zeroext 0) #18
  br label %97

92:                                               ; preds = %83
  %93 = fcmp uge float %82, %86
  %94 = add nuw nsw i64 %84, 1
  %95 = icmp slt i64 %94, %60
  %96 = select i1 %93, i1 %95, i1 false
  br i1 %96, label %83, label %97, !llvm.loop !383

97:                                               ; preds = %92, %74, %69, %62, %90
  %98 = add nsw i64 %63, -1
  %99 = icmp sgt i64 %63, 0
  br i1 %99, label %62, label %100, !llvm.loop !384

100:                                              ; preds = %97, %55
  %101 = trunc i16 %1 to i8
  tail call void @testhandles_fcurve(ptr noundef %0, i8 noundef zeroext %101) #18
  br label %102

102:                                              ; preds = %100, %50
  %103 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  tail call void %103(ptr noundef %14) #18
  br label %104

104:                                              ; preds = %2, %6, %102
  ret void
}

declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #7

declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #7

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #7

declare ptr @ED_context_get_markers(ptr noundef) local_unnamed_addr #7

declare void @ANIM_editkeyframes_refresh(ptr noundef) local_unnamed_addr #7

declare void @BKE_nlatrack_sort_strips(ptr noundef) local_unnamed_addr #7

declare void @BKE_nlastrips_clear_metas(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

declare void @ED_nla_postop_refresh(ptr noundef) local_unnamed_addr #7

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #7

declare i32 @ED_mesh_mirror_spatial_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

declare void @BKE_pose_where_is(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @BKE_ptcache_ids_from_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @BKE_ptcache_object_reset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #7

declare zeroext i8 @BKE_rigidbody_check_sim_running(ptr noundef, float noundef) local_unnamed_addr #7

declare void @BKE_rigidbody_aftertrans_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @special_transform_moving(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %3 = load i8, ptr %2, align 8, !tbaa !279
  switch i8 %3, label %5 [
    i8 8, label %22
    i8 2, label %4
  ]

4:                                                ; preds = %1
  br label %22

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %7 = load ptr, ptr %6, align 8, !tbaa !99
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !54
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %16 = load ptr, ptr %15, align 8, !tbaa !89
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %9
  %19 = and i32 %11, 9
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %18, %5, %14, %1, %4
  %23 = phi i32 [ 8, %4 ], [ 4, %1 ], [ 2, %14 ], [ 2, %5 ], [ %21, %18 ]
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define dso_local void @flushTransTracking(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %5 = load ptr, ptr %4, align 8, !tbaa !175
  %6 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  call void @ED_space_clip_get_aspect_dimension_aware(ptr noundef %7, ptr noundef nonnull %2, ptr noundef nonnull %3) #18
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 4, !tbaa !207
  %10 = icmp eq i16 %9, 3
  br i1 %10, label %11, label %92

11:                                               ; preds = %1
  %12 = load ptr, ptr %4, align 8, !tbaa !175
  %13 = getelementptr inbounds %struct.ScrArea, ptr %12, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !197
  %15 = call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %14) #18
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !34
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %92

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  br label %21

21:                                               ; preds = %19, %87
  %22 = phi i32 [ 0, %19 ], [ %89, %87 ]
  %23 = load ptr, ptr %20, align 8, !tbaa !96
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds %struct.TransDataTracking, ptr %23, i64 %24
  %26 = load i32, ptr %25, align 8, !tbaa !385
  switch i32 %26, label %87 [
    i32 0, label %27
    i32 1, label %48
    i32 2, label %79
  ]

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.TransDataTracking, ptr %23, i64 %24, i32 14
  %29 = load ptr, ptr %28, align 8, !tbaa !387
  %30 = call ptr @BKE_tracking_marker_get(ptr noundef %29, i32 noundef %15) #18
  %31 = getelementptr inbounds %struct.TransDataTracking, ptr %23, i64 %24, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !388
  %33 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %30, i64 0, i32 5
  store i32 %32, ptr %33, align 4, !tbaa !389
  %34 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %29, i64 0, i32 13
  %35 = load i32, ptr %34, align 8, !tbaa !306
  %36 = and i32 %35, 1
  %37 = add i32 %36, %22
  %38 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %29, i64 0, i32 14
  %39 = load i32, ptr %38, align 4, !tbaa !313
  %40 = shl i32 %39, 2
  %41 = and i32 %40, 4
  %42 = add i32 %37, %41
  %43 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %29, i64 0, i32 15
  %44 = load i32, ptr %43, align 8, !tbaa !314
  %45 = shl i32 %44, 1
  %46 = and i32 %45, 2
  %47 = add i32 %42, %46
  br label %87

48:                                               ; preds = %21
  %49 = getelementptr inbounds %struct.TransDataTracking, ptr %23, i64 %24, i32 14
  %50 = load ptr, ptr %49, align 8, !tbaa !387
  %51 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %50, i64 0, i32 8
  %52 = load i32, ptr %51, align 8, !tbaa !390
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %87

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %50, i64 0, i32 10
  %56 = load ptr, ptr %55, align 8, !tbaa !391
  %57 = getelementptr %struct.MovieTrackingMarker, ptr %56, i64 -1, i32 5
  %58 = getelementptr inbounds %struct.TransDataTracking, ptr %23, i64 %24, i32 1
  %59 = zext nneg i32 %52 to i64
  br label %60

60:                                               ; preds = %54, %76
  %61 = phi i64 [ 1, %54 ], [ %77, %76 ]
  %62 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %56, i64 %61, i32 5
  %63 = load i32, ptr %62, align 4, !tbaa !389
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = getelementptr %struct.MovieTrackingMarker, ptr %57, i64 %61
  %68 = load i32, ptr %67, align 4, !tbaa !389
  %69 = and i32 %68, 1
  %70 = icmp ne i32 %69, 0
  %71 = and i32 %63, 12
  %72 = icmp eq i32 %71, 0
  %73 = or i1 %72, %70
  br i1 %73, label %76, label %74

74:                                               ; preds = %66
  %75 = load i32, ptr %58, align 4, !tbaa !388
  store i32 %75, ptr %62, align 4, !tbaa !389
  br label %76

76:                                               ; preds = %74, %66, %60
  %77 = add nuw nsw i64 %61, 1
  %78 = icmp eq i64 %77, %59
  br i1 %78, label %87, label %60, !llvm.loop !392

79:                                               ; preds = %21
  %80 = getelementptr inbounds %struct.TransDataTracking, ptr %23, i64 %24, i32 15
  %81 = load ptr, ptr %80, align 8, !tbaa !393
  %82 = call ptr @BKE_tracking_plane_marker_get(ptr noundef %81, i32 noundef %15) #18
  %83 = getelementptr inbounds %struct.TransDataTracking, ptr %23, i64 %24, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !388
  %85 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %82, i64 0, i32 2
  store i32 %84, ptr %85, align 4, !tbaa !394
  %86 = add nsw i32 %22, 3
  br label %87

87:                                               ; preds = %76, %48, %79, %27, %21
  %88 = phi i32 [ %47, %27 ], [ %86, %79 ], [ %22, %21 ], [ %22, %48 ], [ %22, %76 ]
  %89 = add nsw i32 %88, 1
  %90 = load i32, ptr %16, align 8, !tbaa !34
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %21, label %92, !llvm.loop !396

92:                                               ; preds = %87, %11, %1
  %93 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %94 = load i32, ptr %93, align 8, !tbaa !34
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %265

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %98 = load ptr, ptr %97, align 8, !tbaa !96
  %99 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 12
  %100 = load ptr, ptr %99, align 8, !tbaa !168
  %101 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  br label %102

102:                                              ; preds = %96, %258
  %103 = phi i32 [ 0, %96 ], [ %260, %258 ]
  %104 = phi ptr [ %98, %96 ], [ %262, %258 ]
  %105 = phi ptr [ %100, %96 ], [ %261, %258 ]
  %106 = load i32, ptr %104, align 8, !tbaa !385
  switch i32 %106, label %258 [
    i32 0, label %107
    i32 1, label %231
    i32 2, label %247
  ]

107:                                              ; preds = %102
  %108 = load i32, ptr %0, align 8, !tbaa !188
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.TransDataTracking, ptr %104, i64 0, i32 2
  %112 = load i32, ptr %111, align 8, !tbaa !397
  %113 = icmp eq i32 %112, 4
  br i1 %113, label %258, label %114

114:                                              ; preds = %110, %107
  %115 = load float, ptr %105, align 8, !tbaa !112
  %116 = load float, ptr %2, align 4, !tbaa !112
  %117 = fdiv float %115, %116
  %118 = getelementptr inbounds [3 x float], ptr %105, i64 0, i64 1
  %119 = load float, ptr %118, align 4, !tbaa !112
  %120 = load float, ptr %3, align 4, !tbaa !112
  %121 = fdiv float %119, %120
  %122 = load i32, ptr %101, align 4, !tbaa !54
  %123 = and i32 %122, 16777216
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %209, label %125

125:                                              ; preds = %114
  switch i32 %108, label %209 [
    i32 3, label %126
    i32 1, label %130
  ]

126:                                              ; preds = %125
  %127 = getelementptr inbounds %struct.TransDataTracking, ptr %104, i64 0, i32 2
  %128 = load i32, ptr %127, align 8, !tbaa !397
  %129 = icmp eq i32 %128, 2
  br i1 %129, label %209, label %258

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.TransDataTracking, ptr %104, i64 0, i32 2
  %132 = load i32, ptr %131, align 8, !tbaa !397
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %209

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.TransDataTracking, ptr %104, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !398
  %137 = icmp eq ptr %136, null
  br i1 %137, label %209, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.TransDataTracking, ptr %104, i64 0, i32 8
  %140 = load ptr, ptr %139, align 8, !tbaa !399
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %165

142:                                              ; preds = %138
  %143 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %144 = getelementptr inbounds %struct.TransDataTracking, ptr %104, i64 0, i32 9
  %145 = load i32, ptr %144, align 8, !tbaa !400
  %146 = sext i32 %145 to i64
  %147 = shl nsw i64 %146, 3
  %148 = call ptr %143(i64 noundef %147, ptr noundef nonnull @.str.6) #18
  store ptr %148, ptr %139, align 8, !tbaa !399
  %149 = load i32, ptr %144, align 8, !tbaa !400
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %142
  %152 = getelementptr inbounds %struct.TransDataTracking, ptr %104, i64 0, i32 10
  %153 = load ptr, ptr %152, align 8, !tbaa !401
  %154 = zext nneg i32 %149 to i64
  br label %155

155:                                              ; preds = %151, %155
  %156 = phi i64 [ 0, %151 ], [ %163, %155 ]
  %157 = getelementptr inbounds [2 x float], ptr %148, i64 %156
  %158 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %153, i64 %156
  %159 = load float, ptr %158, align 4, !tbaa !112
  store float %159, ptr %157, align 4, !tbaa !112
  %160 = getelementptr inbounds float, ptr %158, i64 1
  %161 = load float, ptr %160, align 4, !tbaa !112
  %162 = getelementptr inbounds float, ptr %157, i64 1
  store float %161, ptr %162, align 4, !tbaa !112
  %163 = add nuw nsw i64 %156, 1
  %164 = icmp eq i64 %163, %154
  br i1 %164, label %165, label %155, !llvm.loop !402

165:                                              ; preds = %155, %142, %138
  %166 = getelementptr inbounds %struct.TransDataTracking, ptr %104, i64 0, i32 5
  %167 = load float, ptr %166, align 4, !tbaa !112
  %168 = fsub float %117, %167
  %169 = getelementptr inbounds %struct.TransDataTracking, ptr %104, i64 0, i32 5, i64 1
  %170 = load float, ptr %169, align 4, !tbaa !112
  %171 = fsub float %121, %170
  %172 = getelementptr inbounds %struct.TransDataTracking, ptr %104, i64 0, i32 6
  %173 = load float, ptr %172, align 4, !tbaa !112
  %174 = fsub float %168, %173
  %175 = getelementptr inbounds %struct.TransDataTracking, ptr %104, i64 0, i32 6, i64 1
  %176 = load float, ptr %175, align 4, !tbaa !112
  %177 = fsub float %171, %176
  %178 = fsub float %117, %173
  %179 = fsub float %121, %176
  %180 = getelementptr inbounds %struct.TransDataTracking, ptr %104, i64 0, i32 9
  %181 = load i32, ptr %180, align 8, !tbaa !400
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %202

183:                                              ; preds = %165
  %184 = getelementptr inbounds %struct.TransDataTracking, ptr %104, i64 0, i32 10
  %185 = load ptr, ptr %184, align 8, !tbaa !401
  %186 = load ptr, ptr %139, align 8, !tbaa !399
  %187 = zext nneg i32 %181 to i64
  br label %188

188:                                              ; preds = %183, %188
  %189 = phi i64 [ 0, %183 ], [ %198, %188 ]
  %190 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %185, i64 %189
  %191 = getelementptr inbounds [2 x float], ptr %186, i64 %189
  %192 = load float, ptr %191, align 4, !tbaa !112
  %193 = fadd float %178, %192
  store float %193, ptr %190, align 4, !tbaa !112
  %194 = getelementptr inbounds float, ptr %191, i64 1
  %195 = load float, ptr %194, align 4, !tbaa !112
  %196 = fadd float %179, %195
  %197 = getelementptr inbounds float, ptr %190, i64 1
  store float %196, ptr %197, align 4, !tbaa !112
  %198 = add nuw nsw i64 %189, 1
  %199 = icmp eq i64 %198, %187
  br i1 %199, label %200, label %188, !llvm.loop !403

200:                                              ; preds = %188
  %201 = trunc i64 %198 to i32
  br label %202

202:                                              ; preds = %200, %165
  %203 = phi i32 [ 0, %165 ], [ %201, %200 ]
  %204 = getelementptr inbounds %struct.TransData2D, ptr %105, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !205
  %206 = fneg float %174
  store float %206, ptr %205, align 4, !tbaa !112
  %207 = fneg float %177
  %208 = getelementptr inbounds float, ptr %205, i64 1
  store float %207, ptr %208, align 4, !tbaa !112
  br label %209

209:                                              ; preds = %125, %126, %130, %134, %202, %114
  %210 = phi i32 [ %103, %126 ], [ %203, %202 ], [ %103, %134 ], [ %103, %130 ], [ %103, %114 ], [ %103, %125 ]
  %211 = getelementptr inbounds %struct.TransDataTracking, ptr %104, i64 0, i32 2
  %212 = load i32, ptr %211, align 8, !tbaa !397
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = getelementptr inbounds %struct.TransDataTracking, ptr %104, i64 0, i32 3
  %216 = load ptr, ptr %215, align 8, !tbaa !398
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %258

218:                                              ; preds = %214, %209
  %219 = getelementptr inbounds %struct.TransData2D, ptr %105, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !205
  store float %117, ptr %220, align 4, !tbaa !112
  %221 = getelementptr inbounds float, ptr %220, i64 1
  store float %121, ptr %221, align 4, !tbaa !112
  %222 = getelementptr inbounds %struct.TransDataTracking, ptr %104, i64 0, i32 3
  %223 = load ptr, ptr %222, align 8, !tbaa !398
  %224 = icmp eq ptr %223, null
  br i1 %224, label %258, label %225

225:                                              ; preds = %218
  %226 = load float, ptr %223, align 4, !tbaa !112
  %227 = fsub float %117, %226
  store float %227, ptr %220, align 4, !tbaa !112
  %228 = getelementptr inbounds float, ptr %223, i64 1
  %229 = load float, ptr %228, align 4, !tbaa !112
  %230 = fsub float %121, %229
  store float %230, ptr %221, align 4, !tbaa !112
  br label %258

231:                                              ; preds = %102
  %232 = getelementptr inbounds %struct.TransDataTracking, ptr %104, i64 0, i32 11
  %233 = load ptr, ptr %232, align 8, !tbaa !404
  %234 = getelementptr inbounds %struct.TransDataTracking, ptr %104, i64 0, i32 13
  %235 = load i16, ptr %234, align 4, !tbaa !405
  %236 = sext i16 %235 to i64
  %237 = getelementptr inbounds float, ptr %233, i64 %236
  %238 = load float, ptr %237, align 4, !tbaa !112
  %239 = getelementptr inbounds [3 x float], ptr %105, i64 0, i64 1
  %240 = load float, ptr %239, align 4, !tbaa !112
  %241 = getelementptr inbounds %struct.TransDataTracking, ptr %104, i64 0, i32 12
  %242 = load float, ptr %241, align 8, !tbaa !406
  %243 = call float @llvm.fmuladd.f32(float %240, float %242, float %238)
  %244 = getelementptr inbounds %struct.TransData2D, ptr %105, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !205
  %246 = getelementptr inbounds float, ptr %245, i64 %236
  store float %243, ptr %246, align 4, !tbaa !112
  br label %258

247:                                              ; preds = %102
  %248 = load float, ptr %105, align 8, !tbaa !112
  %249 = load float, ptr %2, align 4, !tbaa !112
  %250 = fdiv float %248, %249
  %251 = getelementptr inbounds %struct.TransData2D, ptr %105, i64 0, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !205
  store float %250, ptr %252, align 4, !tbaa !112
  %253 = getelementptr inbounds [3 x float], ptr %105, i64 0, i64 1
  %254 = load float, ptr %253, align 4, !tbaa !112
  %255 = load float, ptr %3, align 4, !tbaa !112
  %256 = fdiv float %254, %255
  %257 = getelementptr inbounds float, ptr %252, i64 1
  store float %256, ptr %257, align 4, !tbaa !112
  br label %258

258:                                              ; preds = %110, %126, %218, %225, %214, %102, %247, %231
  %259 = phi i32 [ %103, %231 ], [ %103, %247 ], [ %103, %102 ], [ %103, %110 ], [ %103, %126 ], [ %210, %218 ], [ %210, %225 ], [ %210, %214 ]
  %260 = add nsw i32 %259, 1
  %261 = getelementptr inbounds %struct.TransData2D, ptr %105, i64 1
  %262 = getelementptr inbounds %struct.TransDataTracking, ptr %104, i64 1
  %263 = load i32, ptr %93, align 8, !tbaa !34
  %264 = icmp slt i32 %260, %263
  br i1 %264, label %102, label %265, !llvm.loop !407

265:                                              ; preds = %258, %92
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  ret void
}

declare void @ED_space_clip_get_aspect_dimension_aware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @flushTransMasking(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %4 = load ptr, ptr %3, align 8, !tbaa !175
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %6 = load ptr, ptr %5, align 8, !tbaa !408
  %7 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  call void @ED_mask_get_aspect(ptr noundef %4, ptr noundef %6, ptr noundef nonnull %2, ptr noundef nonnull %7) #18
  %8 = load float, ptr %2, align 4, !tbaa !112
  %9 = fdiv float 1.000000e+00, %8
  %10 = load float, ptr %7, align 4, !tbaa !112
  %11 = fdiv float 1.000000e+00, %10
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !34
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %73

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %17 = load ptr, ptr %16, align 8, !tbaa !96
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !168
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  br label %22

22:                                               ; preds = %15, %67
  %23 = phi ptr [ %19, %15 ], [ %69, %67 ]
  %24 = phi ptr [ %17, %15 ], [ %70, %67 ]
  %25 = phi i32 [ 0, %15 ], [ %68, %67 ]
  %26 = load float, ptr %23, align 8, !tbaa !112
  %27 = fmul float %9, %26
  %28 = getelementptr inbounds %struct.TransData2D, ptr %23, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !205
  store float %27, ptr %29, align 4, !tbaa !112
  %30 = getelementptr inbounds [3 x float], ptr %23, i64 0, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !112
  %32 = fmul float %11, %31
  %33 = getelementptr inbounds float, ptr %29, i64 1
  store float %32, ptr %33, align 4, !tbaa !112
  %34 = getelementptr inbounds %struct.TransDataMasking, ptr %24, i64 0, i32 6
  call void @mul_m3_v2(ptr noundef nonnull %34, ptr noundef nonnull %29) #18
  %35 = load i8, ptr %24, align 8, !tbaa !409
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %22
  %38 = getelementptr inbounds %struct.TransDataMasking, ptr %24, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !411
  %40 = getelementptr inbounds %struct.TransDataMasking, ptr %24, i64 0, i32 8
  %41 = load i32, ptr %40, align 4, !tbaa !412
  %42 = load ptr, ptr %28, align 8, !tbaa !205
  %43 = load i32, ptr %20, align 4, !tbaa !54
  %44 = lshr i32 %43, 24
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, 1
  %47 = getelementptr inbounds %struct.TransDataMasking, ptr %24, i64 0, i32 2
  %48 = getelementptr inbounds %struct.TransDataMasking, ptr %24, i64 0, i32 3
  call void @BKE_mask_point_set_handle(ptr noundef %39, i32 noundef %41, ptr noundef %42, i8 noundef zeroext %46, ptr noundef nonnull %47, ptr noundef nonnull %48) #18
  br label %49

49:                                               ; preds = %37, %22
  %50 = load i16, ptr %21, align 4, !tbaa !207
  %51 = icmp eq i16 %50, 3
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.TransDataMasking, ptr %24, i64 0, i32 8
  %54 = load i32, ptr %53, align 4, !tbaa !412
  switch i32 %54, label %67 [
    i32 2, label %55
    i32 3, label %61
  ]

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.TransDataMasking, ptr %24, i64 0, i32 7
  %57 = load i8, ptr %56, align 8, !tbaa !413
  %58 = getelementptr inbounds %struct.TransDataMasking, ptr %24, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !411
  %60 = getelementptr inbounds %struct.BezTriple, ptr %59, i64 0, i32 5
  store i8 %57, ptr %60, align 1, !tbaa !414
  br label %67

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.TransDataMasking, ptr %24, i64 0, i32 7
  %63 = load i8, ptr %62, align 8, !tbaa !413
  %64 = getelementptr inbounds %struct.TransDataMasking, ptr %24, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !411
  %66 = getelementptr inbounds %struct.BezTriple, ptr %65, i64 0, i32 6
  store i8 %63, ptr %66, align 2, !tbaa !417
  br label %67

67:                                               ; preds = %52, %49, %61, %55
  %68 = add nuw nsw i32 %25, 1
  %69 = getelementptr inbounds %struct.TransData2D, ptr %23, i64 1
  %70 = getelementptr inbounds %struct.TransDataMasking, ptr %24, i64 1
  %71 = load i32, ptr %12, align 8, !tbaa !34
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %22, label %73, !llvm.loop !418

73:                                               ; preds = %67, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret void
}

declare void @ED_mask_get_aspect(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @mul_m3_v2(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @BKE_mask_point_set_handle(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @flushTransPaintCurve(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %27

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %7 = load ptr, ptr %6, align 8, !tbaa !96
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !168
  br label %10

10:                                               ; preds = %5, %10
  %11 = phi i32 [ %23, %10 ], [ 0, %5 ]
  %12 = phi ptr [ %24, %10 ], [ %7, %5 ]
  %13 = phi ptr [ %25, %10 ], [ %9, %5 ]
  %14 = load ptr, ptr %12, align 8, !tbaa !419
  %15 = getelementptr inbounds %struct.TransDataPaintCurve, ptr %12, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !421
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds [3 x [3 x float]], ptr %14, i64 0, i64 %17
  %19 = load float, ptr %13, align 4, !tbaa !112
  store float %19, ptr %18, align 4, !tbaa !112
  %20 = getelementptr inbounds float, ptr %13, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !112
  %22 = getelementptr inbounds float, ptr %18, i64 1
  store float %21, ptr %22, align 4, !tbaa !112
  %23 = add nuw nsw i32 %11, 1
  %24 = getelementptr inbounds %struct.TransDataPaintCurve, ptr %12, i64 1
  %25 = getelementptr inbounds %struct.TransData2D, ptr %13, i64 1
  %26 = icmp eq i32 %23, %3
  br i1 %26, label %27, label %10, !llvm.loop !422

27:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @createTransData(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [3 x [3 x float]], align 16
  %13 = alloca [3 x [3 x float]], align 16
  %14 = alloca [3 x [3 x float]], align 16
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca ptr, align 8
  %20 = alloca %struct.BMEditSelection, align 8
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x float], align 4
  %23 = alloca [3 x float], align 4
  %24 = alloca [3 x float], align 4
  %25 = alloca [3 x float], align 4
  %26 = alloca %struct.BMIter, align 8
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  %29 = alloca %struct.BMIter, align 8
  %30 = alloca %struct.BMIter, align 8
  %31 = alloca %struct.BMIter, align 8
  %32 = alloca %struct.BMIter, align 8
  %33 = alloca [3 x [3 x float]], align 16
  %34 = alloca [3 x [3 x float]], align 16
  %35 = alloca ptr, align 8
  %36 = alloca ptr, align 8
  %37 = alloca [3 x [3 x float]], align 16
  %38 = alloca [3 x [3 x float]], align 16
  %39 = alloca [3 x [3 x float]], align 16
  %40 = alloca float, align 4
  %41 = alloca float, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca float, align 4
  %47 = alloca float, align 4
  %48 = alloca %struct.BMIter, align 8
  %49 = alloca %struct.BMIter, align 8
  %50 = alloca %struct.TransData, align 8
  %51 = alloca %struct.TransData, align 8
  %52 = alloca %struct.TransData, align 8
  %53 = alloca %struct.TransData, align 8
  %54 = alloca %struct.TransData, align 8
  %55 = alloca float, align 4
  %56 = alloca float, align 4
  %57 = alloca %struct.bAnimContext, align 8
  %58 = alloca %struct.ListBase, align 8
  %59 = alloca [3 x [3 x float]], align 16
  %60 = alloca [3 x [3 x float]], align 16
  %61 = alloca float, align 4
  %62 = alloca float, align 4
  %63 = alloca float, align 4
  %64 = alloca float, align 4
  %65 = alloca float, align 4
  %66 = alloca float, align 4
  %67 = alloca %struct.bAnimContext, align 8
  %68 = alloca %struct.ListBase, align 8
  %69 = alloca float, align 4
  %70 = alloca float, align 4
  %71 = alloca %struct.bAnimContext, align 8
  %72 = alloca %struct.ListBase, align 8
  %73 = alloca float, align 4
  %74 = alloca float, align 4
  %75 = alloca %struct.TransData, align 8
  %76 = alloca %struct.TransData, align 8
  %77 = alloca %struct.TransData, align 8
  %78 = alloca %struct.BMIter, align 8
  %79 = alloca [3 x [3 x float]], align 16
  %80 = alloca [3 x [3 x float]], align 16
  %81 = alloca ptr, align 8
  %82 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %83 = load ptr, ptr %82, align 8, !tbaa !119
  %84 = getelementptr inbounds %struct.Scene, ptr %83, i64 0, i32 6
  %85 = load ptr, ptr %84, align 8, !tbaa !120
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %2
  %88 = getelementptr inbounds %struct.Base, ptr %85, i64 0, i32 7
  %89 = load ptr, ptr %88, align 8, !tbaa !139
  br label %90

90:                                               ; preds = %2, %87
  %91 = phi ptr [ %89, %87 ], [ null, %2 ]
  %92 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %93 = load i32, ptr %92, align 8, !tbaa !292
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %195, label %96

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !54
  %99 = or i32 %98, 8
  store i32 %99, ptr %97, align 4, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %81) #18
  br i1 %86, label %103, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.Base, ptr %85, i64 0, i32 7
  %102 = load ptr, ptr %101, align 8, !tbaa !139
  br label %103

103:                                              ; preds = %100, %96
  %104 = phi ptr [ %102, %100 ], [ null, %96 ]
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 0, ptr %107, align 8, !tbaa !34
  br label %194

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.Object, ptr %104, i64 0, i32 19
  %110 = load ptr, ptr %109, align 8, !tbaa !64
  %111 = icmp eq ptr %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.ID, ptr %110, i64 0, i32 4
  %114 = load i16, ptr %113, align 8, !tbaa !88
  switch i16 %114, label %115 [
    i16 17741, label %119
    i16 21827, label %119
    i16 16973, label %119
  ]

115:                                              ; preds = %112, %108
  %116 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 60
  %117 = load ptr, ptr %116, align 8, !tbaa !423
  tail call void @BKE_report(ptr noundef %117, i32 noundef 32, ptr noundef nonnull @.str.11) #18
  %118 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 0, ptr %118, align 8, !tbaa !34
  br label %194

119:                                              ; preds = %112, %112, %112
  %120 = tail call zeroext i8 @BKE_object_obdata_is_libdata(ptr noundef nonnull %104) #18
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 60
  %124 = load ptr, ptr %123, align 8, !tbaa !423
  tail call void @BKE_report(ptr noundef %124, i32 noundef 32, ptr noundef nonnull @.str.12) #18
  %125 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 0, ptr %125, align 8, !tbaa !34
  br label %194

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 1, ptr %127, align 8, !tbaa !34
  %128 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %129 = tail call ptr %128(i64 noundef 224, ptr noundef nonnull @.str.13) #18
  %130 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %129, ptr %130, align 8, !tbaa !48
  %131 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %132 = tail call ptr %131(i64 noundef 384, ptr noundef nonnull @.str.13) #18
  %133 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 11
  store ptr %132, ptr %133, align 8, !tbaa !424
  %134 = getelementptr inbounds %struct.TransData, ptr %129, i64 0, i32 13
  store ptr %132, ptr %134, align 8, !tbaa !372
  %135 = getelementptr inbounds %struct.TransData, ptr %129, i64 0, i32 16
  store i32 1, ptr %135, align 8, !tbaa !49
  %136 = getelementptr inbounds %struct.TransData, ptr %129, i64 0, i32 7
  %137 = getelementptr inbounds %struct.Object, ptr %104, i64 0, i32 47
  %138 = getelementptr inbounds %struct.Object, ptr %104, i64 0, i32 47, i64 3
  %139 = load float, ptr %138, align 4, !tbaa !112
  store float %139, ptr %136, align 4, !tbaa !112
  %140 = getelementptr inbounds %struct.Object, ptr %104, i64 0, i32 47, i64 3, i64 1
  %141 = load float, ptr %140, align 4, !tbaa !112
  %142 = getelementptr inbounds %struct.TransData, ptr %129, i64 0, i32 7, i64 1
  store float %141, ptr %142, align 4, !tbaa !112
  %143 = getelementptr inbounds %struct.Object, ptr %104, i64 0, i32 47, i64 3, i64 2
  %144 = load float, ptr %143, align 4, !tbaa !112
  %145 = getelementptr inbounds %struct.TransData, ptr %129, i64 0, i32 7, i64 2
  store float %144, ptr %145, align 4, !tbaa !112
  %146 = getelementptr inbounds %struct.TransData, ptr %129, i64 0, i32 11
  store ptr %104, ptr %146, align 8, !tbaa !364
  %147 = getelementptr inbounds %struct.TransData, ptr %129, i64 0, i32 8
  tail call void @copy_m3_m4(ptr noundef nonnull %147, ptr noundef nonnull %137) #18
  %148 = getelementptr inbounds %struct.TransData, ptr %129, i64 0, i32 10
  tail call void @copy_m3_m4(ptr noundef nonnull %148, ptr noundef nonnull %137) #18
  tail call void @normalize_m3(ptr noundef nonnull %148) #18
  %149 = getelementptr inbounds %struct.TransData, ptr %129, i64 0, i32 9
  tail call void @pseudoinverse_m3_m3(ptr noundef nonnull %149, ptr noundef nonnull %147, float noundef 0x3E45798EE0000000) #18
  %150 = getelementptr inbounds %struct.TransData, ptr %129, i64 0, i32 3
  %151 = load ptr, ptr %134, align 8, !tbaa !372
  %152 = getelementptr inbounds %struct.TransDataExtension, ptr %151, i64 0, i32 11
  %153 = getelementptr inbounds %struct.TransDataExtension, ptr %151, i64 0, i32 3
  %154 = call i32 @BKE_object_obdata_texspace_get(ptr noundef nonnull %104, ptr noundef nonnull %81, ptr noundef nonnull %150, ptr noundef nonnull %152, ptr noundef nonnull %153) #18
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %126
  %157 = getelementptr inbounds %struct.Object, ptr %104, i64 0, i32 86
  %158 = load i16, ptr %157, align 4, !tbaa !425
  %159 = or i16 %158, 4
  store i16 %159, ptr %157, align 4, !tbaa !425
  %160 = load ptr, ptr %81, align 8, !tbaa !63
  %161 = load i16, ptr %160, align 2, !tbaa !88
  %162 = and i16 %161, -2
  store i16 %162, ptr %160, align 2, !tbaa !88
  br label %163

163:                                              ; preds = %156, %126
  %164 = getelementptr inbounds %struct.TransData, ptr %129, i64 0, i32 4
  %165 = load ptr, ptr %150, align 8, !tbaa !209
  %166 = load float, ptr %165, align 4, !tbaa !112
  store float %166, ptr %164, align 4, !tbaa !112
  %167 = getelementptr inbounds float, ptr %165, i64 1
  %168 = load float, ptr %167, align 4, !tbaa !112
  %169 = getelementptr inbounds %struct.TransData, ptr %129, i64 0, i32 4, i64 1
  store float %168, ptr %169, align 4, !tbaa !112
  %170 = getelementptr inbounds float, ptr %165, i64 2
  %171 = load float, ptr %170, align 4, !tbaa !112
  %172 = getelementptr inbounds %struct.TransData, ptr %129, i64 0, i32 4, i64 2
  store float %171, ptr %172, align 4, !tbaa !112
  %173 = load ptr, ptr %134, align 8, !tbaa !372
  %174 = getelementptr inbounds %struct.TransDataExtension, ptr %173, i64 0, i32 4
  %175 = getelementptr inbounds %struct.TransDataExtension, ptr %173, i64 0, i32 3
  %176 = load ptr, ptr %175, align 8, !tbaa !426
  %177 = load float, ptr %176, align 4, !tbaa !112
  store float %177, ptr %174, align 4, !tbaa !112
  %178 = getelementptr inbounds float, ptr %176, i64 1
  %179 = load float, ptr %178, align 4, !tbaa !112
  %180 = getelementptr inbounds %struct.TransDataExtension, ptr %173, i64 0, i32 4, i64 1
  store float %179, ptr %180, align 4, !tbaa !112
  %181 = getelementptr inbounds float, ptr %176, i64 2
  %182 = load float, ptr %181, align 4, !tbaa !112
  %183 = getelementptr inbounds %struct.TransDataExtension, ptr %173, i64 0, i32 4, i64 2
  store float %182, ptr %183, align 4, !tbaa !112
  %184 = getelementptr inbounds %struct.TransDataExtension, ptr %173, i64 0, i32 12
  %185 = getelementptr inbounds %struct.TransDataExtension, ptr %173, i64 0, i32 11
  %186 = load ptr, ptr %185, align 8, !tbaa !427
  %187 = load float, ptr %186, align 4, !tbaa !112
  store float %187, ptr %184, align 4, !tbaa !112
  %188 = getelementptr inbounds float, ptr %186, i64 1
  %189 = load float, ptr %188, align 4, !tbaa !112
  %190 = getelementptr inbounds %struct.TransDataExtension, ptr %173, i64 0, i32 12, i64 1
  store float %189, ptr %190, align 4, !tbaa !112
  %191 = getelementptr inbounds float, ptr %186, i64 2
  %192 = load float, ptr %191, align 4, !tbaa !112
  %193 = getelementptr inbounds %struct.TransDataExtension, ptr %173, i64 0, i32 12, i64 2
  store float %192, ptr %193, align 4, !tbaa !112
  br label %194

194:                                              ; preds = %106, %115, %122, %163
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %81) #18
  br label %6050

195:                                              ; preds = %90
  %196 = and i32 %93, 2
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %381, label %198

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 11
  store ptr null, ptr %199, align 8, !tbaa !424
  %200 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %201 = load i32, ptr %200, align 4, !tbaa !54
  %202 = or i32 %201, 2
  store i32 %202, ptr %200, align 4, !tbaa !54
  %203 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  %204 = load ptr, ptr %203, align 8, !tbaa !99
  %205 = tail call ptr @BKE_editmesh_from_object(ptr noundef %204) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %78) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %79) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %80) #18
  %206 = load i32, ptr %200, align 4, !tbaa !54
  %207 = and i32 %206, 2048
  %208 = load ptr, ptr %205, align 8, !tbaa !281
  %209 = getelementptr inbounds %struct.BMIter, ptr %78, i64 0, i32 4
  store i8 2, ptr %209, align 4, !tbaa !428
  %210 = getelementptr inbounds %struct.BMIter, ptr %78, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %210, align 8, !tbaa !430
  %211 = getelementptr inbounds %struct.BMIter, ptr %78, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %211, align 8, !tbaa !431
  %212 = getelementptr inbounds %struct.BMesh, ptr %208, i64 0, i32 10
  %213 = load ptr, ptr %212, align 8, !tbaa !432
  store ptr %213, ptr %78, align 8, !tbaa !81
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %78) #18
  %214 = load ptr, ptr %211, align 8, !tbaa !431
  %215 = call ptr %214(ptr noundef nonnull %78) #18
  %216 = icmp eq ptr %215, null
  br i1 %216, label %236, label %217

217:                                              ; preds = %198
  %218 = lshr exact i32 %207, 11
  br label %219

219:                                              ; preds = %217, %219
  %220 = phi ptr [ %215, %217 ], [ %234, %219 ]
  %221 = phi i32 [ 0, %217 ], [ %232, %219 ]
  %222 = phi i32 [ 0, %217 ], [ %229, %219 ]
  %223 = getelementptr inbounds %struct.BMHeader, ptr %220, i64 0, i32 3
  %224 = load i8, ptr %223, align 1, !tbaa !283
  %225 = and i8 %224, 2
  %226 = icmp eq i8 %225, 0
  %227 = and i8 %224, 1
  %228 = select i1 %226, i32 %218, i32 0
  %229 = add i32 %222, %228
  %230 = select i1 %226, i8 %227, i8 0
  %231 = zext nneg i8 %230 to i32
  %232 = add i32 %221, %231
  %233 = load ptr, ptr %211, align 8, !tbaa !431
  %234 = call ptr %233(ptr noundef nonnull %78) #18
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %219, !llvm.loop !435

236:                                              ; preds = %219, %198
  %237 = phi i32 [ 0, %198 ], [ %229, %219 ]
  %238 = phi i32 [ 0, %198 ], [ %232, %219 ]
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %307, label %240

240:                                              ; preds = %236
  %241 = icmp ne i32 %207, 0
  %242 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  %243 = select i1 %241, i32 %237, i32 %238
  store i32 %243, ptr %242, align 8, !tbaa !34
  %244 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %245 = sext i32 %243 to i64
  %246 = mul nsw i64 %245, 224
  %247 = call ptr %244(i64 noundef %246, ptr noundef nonnull @.str.14) #18
  %248 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %247, ptr %248, align 8, !tbaa !48
  %249 = load ptr, ptr %203, align 8, !tbaa !99
  %250 = getelementptr inbounds %struct.Object, ptr %249, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %79, ptr noundef nonnull %250) #18
  call void @pseudoinverse_m3_m3(ptr noundef nonnull %80, ptr noundef nonnull %79, float noundef 0x3E45798EE0000000) #18
  %251 = load i32, ptr %1, align 8, !tbaa !188
  %252 = icmp eq i32 %251, 26
  %253 = select i1 %252, i8 2, i8 4
  %254 = select i1 %252, i32 29, i32 30
  %255 = load ptr, ptr %205, align 8, !tbaa !281
  %256 = load ptr, ptr %203, align 8, !tbaa !99
  %257 = call ptr @BKE_mesh_from_object(ptr noundef %256) #18
  call void @BM_mesh_cd_flag_ensure(ptr noundef %255, ptr noundef %257, i8 noundef zeroext %253) #18
  %258 = load ptr, ptr %205, align 8, !tbaa !281
  %259 = getelementptr inbounds %struct.BMesh, ptr %258, i64 0, i32 25
  %260 = call i32 @CustomData_get_offset(ptr noundef nonnull %259, i32 noundef %254) #18
  %261 = load ptr, ptr %205, align 8, !tbaa !281
  store i8 2, ptr %209, align 4, !tbaa !428
  store ptr @bmiter__elem_of_mesh_begin, ptr %210, align 8, !tbaa !430
  store ptr @bmiter__elem_of_mesh_step, ptr %211, align 8, !tbaa !431
  %262 = getelementptr inbounds %struct.BMesh, ptr %261, i64 0, i32 10
  %263 = load ptr, ptr %262, align 8, !tbaa !432
  store ptr %263, ptr %78, align 8, !tbaa !81
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %78) #18
  %264 = load ptr, ptr %211, align 8, !tbaa !431
  %265 = call ptr %264(ptr noundef nonnull %78) #18
  %266 = icmp eq ptr %265, null
  br i1 %266, label %307, label %267

267:                                              ; preds = %240
  %268 = sext i32 %260 to i64
  br label %269

269:                                              ; preds = %267, %302
  %270 = phi ptr [ %247, %267 ], [ %303, %302 ]
  %271 = phi ptr [ %265, %267 ], [ %305, %302 ]
  %272 = getelementptr inbounds %struct.BMHeader, ptr %271, i64 0, i32 3
  %273 = load i8, ptr %272, align 1, !tbaa !283
  %274 = and i8 %273, 2
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %276, label %302

276:                                              ; preds = %269
  %277 = and i8 %273, 1
  %278 = icmp ne i8 %277, 0
  %279 = or i1 %241, %278
  br i1 %279, label %280, label %302

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.TransData, ptr %270, i64 0, i32 7
  %282 = getelementptr inbounds %struct.BMEdge, ptr %271, i64 0, i32 2
  %283 = load ptr, ptr %282, align 8, !tbaa !436
  %284 = getelementptr inbounds %struct.BMVert, ptr %283, i64 0, i32 2
  %285 = getelementptr inbounds %struct.BMEdge, ptr %271, i64 0, i32 3
  %286 = load ptr, ptr %285, align 8, !tbaa !439
  %287 = getelementptr inbounds %struct.BMVert, ptr %286, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %281, ptr noundef nonnull %284, ptr noundef nonnull %287) #18
  %288 = getelementptr inbounds %struct.TransData, ptr %270, i64 0, i32 3
  store ptr null, ptr %288, align 8, !tbaa !209
  %289 = load i8, ptr %272, align 1, !tbaa !283
  %290 = and i8 %289, 1
  %291 = getelementptr inbounds %struct.TransData, ptr %270, i64 0, i32 16
  %292 = zext nneg i8 %290 to i32
  store i32 %292, ptr %291, align 8, !tbaa !49
  %293 = getelementptr inbounds %struct.TransData, ptr %270, i64 0, i32 9
  call void @copy_m3_m3(ptr noundef nonnull %293, ptr noundef nonnull %80) #18
  %294 = getelementptr inbounds %struct.TransData, ptr %270, i64 0, i32 8
  call void @copy_m3_m3(ptr noundef nonnull %294, ptr noundef nonnull %79) #18
  %295 = getelementptr inbounds %struct.TransData, ptr %270, i64 0, i32 13
  store ptr null, ptr %295, align 8, !tbaa !372
  %296 = load ptr, ptr %271, align 8, !tbaa !440
  %297 = getelementptr inbounds i8, ptr %296, i64 %268
  %298 = getelementptr inbounds %struct.TransData, ptr %270, i64 0, i32 5
  store ptr %297, ptr %298, align 8, !tbaa !441
  %299 = load float, ptr %297, align 4, !tbaa !112
  %300 = getelementptr inbounds %struct.TransData, ptr %270, i64 0, i32 6
  store float %299, ptr %300, align 8, !tbaa !442
  %301 = getelementptr inbounds %struct.TransData, ptr %270, i64 1
  br label %302

302:                                              ; preds = %280, %276, %269
  %303 = phi ptr [ %270, %269 ], [ %301, %280 ], [ %270, %276 ]
  %304 = load ptr, ptr %211, align 8, !tbaa !431
  %305 = call ptr %304(ptr noundef nonnull %78) #18
  %306 = icmp eq ptr %305, null
  br i1 %306, label %307, label %269, !llvm.loop !443

307:                                              ; preds = %302, %240, %236
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %80) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %79) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %78) #18
  %308 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  %309 = load ptr, ptr %308, align 8, !tbaa !48
  %310 = icmp eq ptr %309, null
  br i1 %310, label %6050, label %311

311:                                              ; preds = %307
  %312 = load i32, ptr %200, align 4, !tbaa !54
  %313 = and i32 %312, 2048
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %6050, label %315

315:                                              ; preds = %311
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %77)
  %316 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  %317 = load i32, ptr %316, align 8, !tbaa !34
  %318 = sext i32 %317 to i64
  %319 = getelementptr %struct.TransData, ptr %309, i64 %318
  %320 = getelementptr inbounds %struct.TransData, ptr %319, i64 -1
  %321 = icmp ugt ptr %320, %309
  br i1 %321, label %322, label %347

322:                                              ; preds = %315, %343
  %323 = phi ptr [ %345, %343 ], [ %320, %315 ]
  %324 = phi ptr [ %344, %343 ], [ %309, %315 ]
  br label %325

325:                                              ; preds = %322, %331
  %326 = phi ptr [ %332, %331 ], [ %324, %322 ]
  %327 = getelementptr inbounds %struct.TransData, ptr %326, i64 0, i32 16
  %328 = load i32, ptr %327, align 8, !tbaa !49
  %329 = and i32 %328, 1
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %334, label %331

331:                                              ; preds = %325
  %332 = getelementptr inbounds %struct.TransData, ptr %326, i64 1
  %333 = icmp eq ptr %332, %323
  br i1 %333, label %347, label %325, !llvm.loop !444

334:                                              ; preds = %325, %340
  %335 = phi ptr [ %341, %340 ], [ %323, %325 ]
  %336 = getelementptr inbounds %struct.TransData, ptr %335, i64 0, i32 16
  %337 = load i32, ptr %336, align 8, !tbaa !49
  %338 = and i32 %337, 1
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %334
  %341 = getelementptr inbounds %struct.TransData, ptr %335, i64 -1
  %342 = icmp eq ptr %326, %341
  br i1 %342, label %347, label %334, !llvm.loop !445

343:                                              ; preds = %334
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %77, ptr noundef nonnull align 8 dereferenceable(224) %326, i64 224, i1 false), !tbaa.struct !446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %326, ptr noundef nonnull align 8 dereferenceable(224) %335, i64 224, i1 false), !tbaa.struct !446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %335, ptr noundef nonnull align 8 dereferenceable(224) %77, i64 224, i1 false), !tbaa.struct !446
  %344 = getelementptr inbounds %struct.TransData, ptr %326, i64 1
  %345 = getelementptr inbounds %struct.TransData, ptr %335, i64 -1
  %346 = icmp ugt ptr %345, %344
  br i1 %346, label %322, label %347, !llvm.loop !447

347:                                              ; preds = %343, %331, %340, %315
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %77)
  call fastcc void @set_prop_dist(ptr noundef %1, i8 noundef zeroext 1)
  %348 = load i32, ptr %316, align 8, !tbaa !34
  %349 = icmp sgt i32 %348, 0
  br i1 %349, label %350, label %6050

350:                                              ; preds = %347
  %351 = load ptr, ptr %308, align 8, !tbaa !48
  %352 = getelementptr inbounds %struct.TransData, ptr %351, i64 0, i32 16
  %353 = load i32, ptr %352, align 8, !tbaa !49
  %354 = and i32 %353, 1
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %369, label %362

356:                                              ; preds = %362
  %357 = getelementptr inbounds %struct.TransData, ptr %363, i64 1
  %358 = getelementptr inbounds %struct.TransData, ptr %363, i64 1, i32 16
  %359 = load i32, ptr %358, align 8, !tbaa !49
  %360 = and i32 %359, 1
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %367, label %362, !llvm.loop !51

362:                                              ; preds = %350, %356
  %363 = phi ptr [ %357, %356 ], [ %351, %350 ]
  %364 = phi i32 [ %365, %356 ], [ 0, %350 ]
  %365 = add nuw nsw i32 %364, 1
  %366 = icmp eq i32 %365, %348
  br i1 %366, label %6050, label %356, !llvm.loop !51

367:                                              ; preds = %356
  %368 = icmp slt i32 %365, %348
  br label %369

369:                                              ; preds = %367, %350
  %370 = phi i1 [ true, %350 ], [ %368, %367 ]
  %371 = phi i32 [ 0, %350 ], [ %365, %367 ]
  %372 = phi ptr [ %351, %350 ], [ %357, %367 ]
  br i1 %370, label %373, label %6050

373:                                              ; preds = %369
  %374 = load i32, ptr %200, align 4, !tbaa !54
  %375 = and i32 %374, 4096
  %376 = icmp eq i32 %375, 0
  %377 = sub nsw i32 %348, %371
  %378 = sext i32 %377 to i64
  br i1 %376, label %380, label %379

379:                                              ; preds = %373
  call void @qsort(ptr noundef %372, i64 noundef %378, i64 noundef 224, ptr noundef nonnull @trans_data_compare_dist) #18
  br label %6050

380:                                              ; preds = %373
  call void @qsort(ptr noundef %372, i64 noundef %378, i64 noundef 224, ptr noundef nonnull @trans_data_compare_rdist) #18
  br label %6050

381:                                              ; preds = %195
  %382 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  %383 = load i8, ptr %382, align 8, !tbaa !279
  switch i8 %383, label %2985 [
    i8 6, label %384
    i8 12, label %796
    i8 13, label %1245
    i8 8, label %1535
    i8 2, label %1630
    i8 16, label %2074
    i8 20, label %2265
  ]

384:                                              ; preds = %381
  %385 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %386 = load i32, ptr %385, align 4, !tbaa !54
  %387 = or i32 %386, 32832
  store i32 %387, ptr %385, align 4, !tbaa !54
  %388 = and i32 %93, 128
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %464, label %390

390:                                              ; preds = %384
  tail call fastcc void @createTransMaskingData(ptr noundef %0, ptr noundef %1)
  %391 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  %392 = load ptr, ptr %391, align 8, !tbaa !48
  %393 = icmp eq ptr %392, null
  br i1 %393, label %6050, label %394

394:                                              ; preds = %390
  %395 = load i32, ptr %385, align 4, !tbaa !54
  %396 = and i32 %395, 2048
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %6050, label %398

398:                                              ; preds = %394
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %76)
  %399 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  %400 = load i32, ptr %399, align 8, !tbaa !34
  %401 = sext i32 %400 to i64
  %402 = getelementptr %struct.TransData, ptr %392, i64 %401
  %403 = getelementptr inbounds %struct.TransData, ptr %402, i64 -1
  %404 = icmp ugt ptr %403, %392
  br i1 %404, label %405, label %430

405:                                              ; preds = %398, %426
  %406 = phi ptr [ %428, %426 ], [ %403, %398 ]
  %407 = phi ptr [ %427, %426 ], [ %392, %398 ]
  br label %408

408:                                              ; preds = %405, %414
  %409 = phi ptr [ %415, %414 ], [ %407, %405 ]
  %410 = getelementptr inbounds %struct.TransData, ptr %409, i64 0, i32 16
  %411 = load i32, ptr %410, align 8, !tbaa !49
  %412 = and i32 %411, 1
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %417, label %414

414:                                              ; preds = %408
  %415 = getelementptr inbounds %struct.TransData, ptr %409, i64 1
  %416 = icmp eq ptr %415, %406
  br i1 %416, label %430, label %408, !llvm.loop !444

417:                                              ; preds = %408, %423
  %418 = phi ptr [ %424, %423 ], [ %406, %408 ]
  %419 = getelementptr inbounds %struct.TransData, ptr %418, i64 0, i32 16
  %420 = load i32, ptr %419, align 8, !tbaa !49
  %421 = and i32 %420, 1
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %426

423:                                              ; preds = %417
  %424 = getelementptr inbounds %struct.TransData, ptr %418, i64 -1
  %425 = icmp eq ptr %409, %424
  br i1 %425, label %430, label %417, !llvm.loop !445

426:                                              ; preds = %417
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %76, ptr noundef nonnull align 8 dereferenceable(224) %409, i64 224, i1 false), !tbaa.struct !446
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %409, ptr noundef nonnull align 8 dereferenceable(224) %418, i64 224, i1 false), !tbaa.struct !446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %418, ptr noundef nonnull align 8 dereferenceable(224) %76, i64 224, i1 false), !tbaa.struct !446
  %427 = getelementptr inbounds %struct.TransData, ptr %409, i64 1
  %428 = getelementptr inbounds %struct.TransData, ptr %418, i64 -1
  %429 = icmp ugt ptr %428, %427
  br i1 %429, label %405, label %430, !llvm.loop !447

430:                                              ; preds = %426, %414, %423, %398
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %76)
  tail call fastcc void @set_prop_dist(ptr noundef %1, i8 noundef zeroext 1)
  %431 = load i32, ptr %399, align 8, !tbaa !34
  %432 = icmp sgt i32 %431, 0
  br i1 %432, label %433, label %6050

433:                                              ; preds = %430
  %434 = load ptr, ptr %391, align 8, !tbaa !48
  %435 = getelementptr inbounds %struct.TransData, ptr %434, i64 0, i32 16
  %436 = load i32, ptr %435, align 8, !tbaa !49
  %437 = and i32 %436, 1
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %452, label %445

439:                                              ; preds = %445
  %440 = getelementptr inbounds %struct.TransData, ptr %446, i64 1
  %441 = getelementptr inbounds %struct.TransData, ptr %446, i64 1, i32 16
  %442 = load i32, ptr %441, align 8, !tbaa !49
  %443 = and i32 %442, 1
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %450, label %445, !llvm.loop !51

445:                                              ; preds = %433, %439
  %446 = phi ptr [ %440, %439 ], [ %434, %433 ]
  %447 = phi i32 [ %448, %439 ], [ 0, %433 ]
  %448 = add nuw nsw i32 %447, 1
  %449 = icmp eq i32 %448, %431
  br i1 %449, label %6050, label %439, !llvm.loop !51

450:                                              ; preds = %439
  %451 = icmp slt i32 %448, %431
  br label %452

452:                                              ; preds = %450, %433
  %453 = phi i1 [ true, %433 ], [ %451, %450 ]
  %454 = phi i32 [ 0, %433 ], [ %448, %450 ]
  %455 = phi ptr [ %434, %433 ], [ %440, %450 ]
  br i1 %453, label %456, label %6050

456:                                              ; preds = %452
  %457 = load i32, ptr %385, align 4, !tbaa !54
  %458 = and i32 %457, 4096
  %459 = icmp eq i32 %458, 0
  %460 = sub nsw i32 %431, %454
  %461 = sext i32 %460 to i64
  br i1 %459, label %463, label %462

462:                                              ; preds = %456
  tail call void @qsort(ptr noundef %455, i64 noundef %461, i64 noundef 224, ptr noundef nonnull @trans_data_compare_dist) #18
  br label %6050

463:                                              ; preds = %456
  tail call void @qsort(ptr noundef %455, i64 noundef %461, i64 noundef 224, ptr noundef nonnull @trans_data_compare_rdist) #18
  br label %6050

464:                                              ; preds = %384
  %465 = and i32 %93, 256
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %470, label %467

467:                                              ; preds = %464
  %468 = load i32, ptr %1, align 8, !tbaa !188
  switch i32 %468, label %469 [
    i32 6, label %6050
    i32 8, label %6050
  ]

469:                                              ; preds = %467
  tail call fastcc void @createTransPaintCurveVerts(ptr noundef %0, ptr noundef nonnull %1)
  br label %6050

470:                                              ; preds = %464
  %471 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  %472 = load ptr, ptr %471, align 8, !tbaa !99
  %473 = icmp eq ptr %472, null
  br i1 %473, label %6050, label %474

474:                                              ; preds = %470
  %475 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #18
  %476 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #18
  %477 = load ptr, ptr %82, align 8, !tbaa !119
  %478 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #18
  %479 = load ptr, ptr %471, align 8, !tbaa !99
  %480 = tail call ptr @BKE_editmesh_from_object(ptr noundef %479) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %48) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %49) #18
  %481 = load i32, ptr %385, align 4, !tbaa !54
  %482 = lshr i32 %481, 11
  %483 = load ptr, ptr %480, align 8, !tbaa !281
  %484 = getelementptr inbounds %struct.BMesh, ptr %483, i64 0, i32 26
  %485 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %484, i32 noundef 16) #18
  %486 = load ptr, ptr %471, align 8, !tbaa !99
  %487 = tail call zeroext i8 @ED_space_image_show_uvedit(ptr noundef %475, ptr noundef %486) #18
  %488 = icmp eq i8 %487, 0
  br i1 %488, label %722, label %489

489:                                              ; preds = %474
  %490 = and i32 %481, 4096
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %507, label %492

492:                                              ; preds = %489
  %493 = getelementptr inbounds %struct.ToolSettings, ptr %478, i64 0, i32 11
  %494 = load i8, ptr %493, align 2, !tbaa !448
  %495 = and i8 %494, 1
  %496 = load ptr, ptr %480, align 8, !tbaa !281
  %497 = xor i8 %495, 1
  %498 = tail call ptr @BM_uv_element_map_create(ptr noundef %496, i8 noundef zeroext %497, i8 noundef zeroext 1) #18
  %499 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %500 = getelementptr inbounds %struct.UvElementMap, ptr %498, i64 0, i32 3
  %501 = load i32, ptr %500, align 4, !tbaa !449
  %502 = ashr i32 %501, 5
  %503 = add nsw i32 %502, 1
  %504 = sext i32 %503 to i64
  %505 = shl nsw i64 %504, 2
  %506 = tail call ptr %499(i64 noundef %505, ptr noundef nonnull @.str.21) #18
  br label %507

507:                                              ; preds = %492, %489
  %508 = phi ptr [ %506, %492 ], [ null, %489 ]
  %509 = phi ptr [ %498, %492 ], [ null, %489 ]
  %510 = load ptr, ptr %480, align 8, !tbaa !281
  %511 = getelementptr inbounds %struct.BMIter, ptr %48, i64 0, i32 4
  store i8 3, ptr %511, align 4, !tbaa !428
  %512 = getelementptr inbounds %struct.BMIter, ptr %48, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %512, align 8, !tbaa !430
  %513 = getelementptr inbounds %struct.BMIter, ptr %48, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %513, align 8, !tbaa !431
  %514 = getelementptr inbounds %struct.BMesh, ptr %510, i64 0, i32 12
  %515 = load ptr, ptr %514, align 8, !tbaa !451
  store ptr %515, ptr %48, align 8, !tbaa !81
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %48) #18
  %516 = load ptr, ptr %513, align 8, !tbaa !431
  %517 = call ptr %516(ptr noundef nonnull %48) #18
  %518 = icmp eq ptr %517, null
  br i1 %518, label %575, label %519

519:                                              ; preds = %507
  %520 = getelementptr inbounds %struct.BMIter, ptr %49, i64 0, i32 4
  %521 = getelementptr inbounds %struct.BMIter, ptr %49, i64 0, i32 1
  %522 = getelementptr inbounds %struct.BMIter, ptr %49, i64 0, i32 2
  %523 = and i32 %482, 1
  br label %524

524:                                              ; preds = %569, %519
  %525 = phi ptr [ %517, %519 ], [ %573, %569 ]
  %526 = phi i32 [ 0, %519 ], [ %571, %569 ]
  %527 = phi i32 [ 0, %519 ], [ %570, %569 ]
  %528 = load ptr, ptr %480, align 8, !tbaa !281
  %529 = getelementptr inbounds %struct.BMesh, ptr %528, i64 0, i32 27
  %530 = load ptr, ptr %525, align 8, !tbaa !452
  %531 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %529, ptr noundef %530, i32 noundef 15) #18
  %532 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %477, ptr noundef %476, ptr noundef nonnull %525, ptr noundef %531) #18
  %533 = icmp eq i8 %532, 0
  %534 = getelementptr inbounds %struct.BMHeader, ptr %525, i64 0, i32 3
  %535 = load i8, ptr %534, align 1, !tbaa !283
  br i1 %533, label %536, label %538

536:                                              ; preds = %524
  %537 = and i8 %535, -17
  store i8 %537, ptr %534, align 1, !tbaa !283
  br label %569

538:                                              ; preds = %524
  %539 = or i8 %535, 16
  store i8 %539, ptr %534, align 1, !tbaa !283
  store i8 11, ptr %520, align 4, !tbaa !428
  store ptr @bmiter__loop_of_face_begin, ptr %521, align 8, !tbaa !430
  store ptr @bmiter__loop_of_face_step, ptr %522, align 8, !tbaa !431
  store ptr %525, ptr %49, align 8, !tbaa !81
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %49) #18
  %540 = load ptr, ptr %522, align 8, !tbaa !431
  %541 = call ptr %540(ptr noundef nonnull %49) #18
  %542 = icmp eq ptr %541, null
  br i1 %542, label %569, label %543

543:                                              ; preds = %538, %563
  %544 = phi ptr [ %567, %563 ], [ %541, %538 ]
  %545 = phi i32 [ %564, %563 ], [ %526, %538 ]
  %546 = phi i32 [ %565, %563 ], [ %527, %538 ]
  %547 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %477, ptr noundef nonnull %544, i32 noundef %485) #18
  %548 = icmp eq i8 %547, 0
  br i1 %548, label %563, label %549

549:                                              ; preds = %543
  %550 = add nsw i32 %545, 1
  br i1 %491, label %563, label %551

551:                                              ; preds = %549
  %552 = call ptr @BM_uv_element_get(ptr noundef %509, ptr noundef nonnull %525, ptr noundef nonnull %544) #18
  %553 = getelementptr inbounds %struct.UvElement, ptr %552, i64 0, i32 5
  %554 = load i16, ptr %553, align 4, !tbaa !454
  %555 = zext i16 %554 to i32
  %556 = and i32 %555, 31
  %557 = shl nuw i32 1, %556
  %558 = lshr i32 %555, 5
  %559 = zext nneg i32 %558 to i64
  %560 = getelementptr inbounds i32, ptr %508, i64 %559
  %561 = load i32, ptr %560, align 4, !tbaa !57
  %562 = or i32 %557, %561
  store i32 %562, ptr %560, align 4, !tbaa !57
  br label %563

563:                                              ; preds = %551, %549, %543
  %564 = phi i32 [ %550, %551 ], [ %550, %549 ], [ %545, %543 ]
  %565 = add i32 %546, %523
  %566 = load ptr, ptr %522, align 8, !tbaa !431
  %567 = call ptr %566(ptr noundef nonnull %49) #18
  %568 = icmp eq ptr %567, null
  br i1 %568, label %569, label %543, !llvm.loop !456

569:                                              ; preds = %563, %538, %536
  %570 = phi i32 [ %527, %536 ], [ %527, %538 ], [ %565, %563 ]
  %571 = phi i32 [ %526, %536 ], [ %526, %538 ], [ %564, %563 ]
  %572 = load ptr, ptr %513, align 8, !tbaa !431
  %573 = call ptr %572(ptr noundef nonnull %48) #18
  %574 = icmp eq ptr %573, null
  br i1 %574, label %575, label %524, !llvm.loop !457

575:                                              ; preds = %569, %507
  %576 = phi i32 [ 0, %507 ], [ %570, %569 ]
  %577 = phi i32 [ 0, %507 ], [ %571, %569 ]
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %579, label %582

579:                                              ; preds = %575
  br i1 %491, label %722, label %580

580:                                              ; preds = %579
  %581 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %581(ptr noundef %508) #18
  br label %722

582:                                              ; preds = %575
  %583 = and i32 %481, 2048
  %584 = icmp eq i32 %583, 0
  %585 = select i1 %584, i32 %577, i32 %576
  %586 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 %585, ptr %586, align 8, !tbaa !34
  %587 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %588 = sext i32 %585 to i64
  %589 = mul nsw i64 %588, 224
  %590 = call ptr %587(i64 noundef %589, ptr noundef nonnull @.str.22) #18
  %591 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %590, ptr %591, align 8, !tbaa !48
  %592 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %593 = load i32, ptr %586, align 8, !tbaa !34
  %594 = sext i32 %593 to i64
  %595 = mul nsw i64 %594, 56
  %596 = call ptr %592(i64 noundef %595, ptr noundef nonnull @.str.23) #18
  %597 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 12
  store ptr %596, ptr %597, align 8, !tbaa !168
  %598 = getelementptr inbounds %struct.SpaceImage, ptr %475, i64 0, i32 4
  %599 = load i32, ptr %598, align 4, !tbaa !199
  %600 = and i32 %599, 4
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %605, label %602

602:                                              ; preds = %582
  %603 = load i32, ptr %385, align 4, !tbaa !54
  %604 = or i32 %603, 65536
  store i32 %604, ptr %385, align 4, !tbaa !54
  br label %605

605:                                              ; preds = %602, %582
  %606 = load ptr, ptr %591, align 8, !tbaa !48
  %607 = load ptr, ptr %480, align 8, !tbaa !281
  store i8 3, ptr %511, align 4, !tbaa !428
  store ptr @bmiter__elem_of_mesh_begin, ptr %512, align 8, !tbaa !430
  store ptr @bmiter__elem_of_mesh_step, ptr %513, align 8, !tbaa !431
  %608 = getelementptr inbounds %struct.BMesh, ptr %607, i64 0, i32 12
  %609 = load ptr, ptr %608, align 8, !tbaa !451
  store ptr %609, ptr %48, align 8, !tbaa !81
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %48) #18
  %610 = load ptr, ptr %513, align 8, !tbaa !431
  %611 = call ptr %610(ptr noundef nonnull %48) #18
  %612 = icmp eq ptr %611, null
  br i1 %612, label %709, label %613

613:                                              ; preds = %605
  %614 = getelementptr inbounds %struct.BMIter, ptr %49, i64 0, i32 4
  %615 = getelementptr inbounds %struct.BMIter, ptr %49, i64 0, i32 1
  %616 = getelementptr inbounds %struct.BMIter, ptr %49, i64 0, i32 2
  %617 = sext i32 %485 to i64
  br label %618

618:                                              ; preds = %702, %613
  %619 = phi ptr [ %606, %613 ], [ %705, %702 ]
  %620 = phi ptr [ %596, %613 ], [ %704, %702 ]
  %621 = phi ptr [ %611, %613 ], [ %707, %702 ]
  %622 = phi i32 [ 0, %613 ], [ %703, %702 ]
  %623 = getelementptr inbounds %struct.BMHeader, ptr %621, i64 0, i32 3
  %624 = load i8, ptr %623, align 1, !tbaa !283
  %625 = and i8 %624, 16
  %626 = icmp eq i8 %625, 0
  br i1 %626, label %702, label %627

627:                                              ; preds = %618
  store i8 11, ptr %614, align 4, !tbaa !428
  store ptr @bmiter__loop_of_face_begin, ptr %615, align 8, !tbaa !430
  store ptr @bmiter__loop_of_face_step, ptr %616, align 8, !tbaa !431
  store ptr %621, ptr %49, align 8, !tbaa !81
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %49) #18
  %628 = load ptr, ptr %616, align 8, !tbaa !431
  %629 = call ptr %628(ptr noundef nonnull %49) #18
  %630 = icmp eq ptr %629, null
  br i1 %630, label %702, label %631

631:                                              ; preds = %627, %695
  %632 = phi ptr [ %698, %695 ], [ %619, %627 ]
  %633 = phi ptr [ %697, %695 ], [ %620, %627 ]
  %634 = phi ptr [ %700, %695 ], [ %629, %627 ]
  %635 = phi i32 [ %696, %695 ], [ %622, %627 ]
  br i1 %584, label %636, label %639

636:                                              ; preds = %631
  %637 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %477, ptr noundef nonnull %634, i32 noundef %485) #18
  %638 = icmp eq i8 %637, 0
  br i1 %638, label %695, label %639

639:                                              ; preds = %636, %631
  br i1 %491, label %655, label %640

640:                                              ; preds = %639
  %641 = call ptr @BM_uv_element_get(ptr noundef %509, ptr noundef nonnull %621, ptr noundef nonnull %634) #18
  %642 = getelementptr inbounds %struct.UvElement, ptr %641, i64 0, i32 5
  %643 = load i16, ptr %642, align 4, !tbaa !454
  %644 = zext i16 %643 to i32
  %645 = lshr i32 %644, 5
  %646 = zext nneg i32 %645 to i64
  %647 = getelementptr inbounds i32, ptr %508, i64 %646
  %648 = load i32, ptr %647, align 4, !tbaa !57
  %649 = and i32 %644, 31
  %650 = shl nuw i32 1, %649
  %651 = and i32 %650, %648
  %652 = icmp eq i32 %651, 0
  %653 = zext i1 %652 to i32
  %654 = add nsw i32 %635, %653
  br i1 %652, label %695, label %655

655:                                              ; preds = %640, %639
  %656 = phi i32 [ %654, %640 ], [ %635, %639 ]
  %657 = load ptr, ptr %634, align 8, !tbaa !458
  %658 = getelementptr inbounds i8, ptr %657, i64 %617
  %659 = getelementptr inbounds %struct.TransData, ptr %632, i64 1
  %660 = getelementptr inbounds %struct.TransData2D, ptr %633, i64 1
  %661 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %477, ptr noundef nonnull %634, i32 noundef %485) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %46) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %47) #18
  call void @ED_space_image_get_uv_aspect(ptr noundef %475, ptr noundef nonnull %46, ptr noundef nonnull %47) #18
  %662 = load float, ptr %658, align 4, !tbaa !112
  %663 = load float, ptr %46, align 4, !tbaa !112
  %664 = fmul float %662, %663
  store float %664, ptr %633, align 8, !tbaa !112
  %665 = getelementptr inbounds float, ptr %658, i64 1
  %666 = load float, ptr %665, align 4, !tbaa !112
  %667 = load float, ptr %47, align 4, !tbaa !112
  %668 = fmul float %666, %667
  %669 = getelementptr inbounds [3 x float], ptr %633, i64 0, i64 1
  store float %668, ptr %669, align 4, !tbaa !112
  %670 = getelementptr inbounds [3 x float], ptr %633, i64 0, i64 2
  store float 0.000000e+00, ptr %670, align 8, !tbaa !112
  %671 = getelementptr inbounds %struct.TransData2D, ptr %633, i64 0, i32 1
  store ptr %658, ptr %671, align 8, !tbaa !205
  %672 = getelementptr inbounds %struct.TransData, ptr %632, i64 0, i32 16
  store i32 0, ptr %672, align 8, !tbaa !49
  %673 = getelementptr inbounds %struct.TransData, ptr %632, i64 0, i32 3
  store ptr %633, ptr %673, align 8, !tbaa !209
  %674 = getelementptr inbounds %struct.TransData, ptr %632, i64 0, i32 7
  store float %664, ptr %674, align 4, !tbaa !112
  %675 = load float, ptr %669, align 4, !tbaa !112
  %676 = getelementptr inbounds %struct.TransData, ptr %632, i64 0, i32 7, i64 1
  store float %675, ptr %676, align 4, !tbaa !112
  %677 = load float, ptr %670, align 4, !tbaa !112
  %678 = getelementptr inbounds %struct.TransData, ptr %632, i64 0, i32 7, i64 2
  store float %677, ptr %678, align 4, !tbaa !112
  %679 = getelementptr inbounds %struct.TransData, ptr %632, i64 0, i32 4
  %680 = load float, ptr %633, align 4, !tbaa !112
  store float %680, ptr %679, align 4, !tbaa !112
  %681 = load float, ptr %669, align 4, !tbaa !112
  %682 = getelementptr inbounds %struct.TransData, ptr %632, i64 0, i32 4, i64 1
  store float %681, ptr %682, align 4, !tbaa !112
  %683 = load float, ptr %670, align 4, !tbaa !112
  %684 = getelementptr inbounds %struct.TransData, ptr %632, i64 0, i32 4, i64 2
  store float %683, ptr %684, align 4, !tbaa !112
  %685 = getelementptr inbounds %struct.TransData, ptr %632, i64 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %685, i8 0, i64 36, i1 false)
  %686 = getelementptr inbounds %struct.TransData, ptr %632, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %686, align 8, !tbaa !112
  %687 = getelementptr inbounds %struct.TransData, ptr %632, i64 0, i32 13
  store ptr null, ptr %687, align 8, !tbaa !372
  %688 = getelementptr inbounds %struct.TransData, ptr %632, i64 0, i32 5
  store ptr null, ptr %688, align 8, !tbaa !441
  %689 = icmp eq i8 %661, 0
  br i1 %689, label %691, label %690

690:                                              ; preds = %655
  store i32 1, ptr %672, align 8, !tbaa !49
  br label %691

691:                                              ; preds = %690, %655
  %692 = phi float [ 0.000000e+00, %690 ], [ 0x47EFFFFFE0000000, %655 ]
  store float %692, ptr %632, align 8, !tbaa !55
  %693 = getelementptr inbounds %struct.TransData, ptr %632, i64 0, i32 8
  call void @unit_m3(ptr noundef nonnull %693) #18
  %694 = getelementptr inbounds %struct.TransData, ptr %632, i64 0, i32 9
  call void @unit_m3(ptr noundef nonnull %694) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %47) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %46) #18
  br label %695

695:                                              ; preds = %691, %640, %636
  %696 = phi i32 [ %654, %640 ], [ %656, %691 ], [ %635, %636 ]
  %697 = phi ptr [ %633, %640 ], [ %660, %691 ], [ %633, %636 ]
  %698 = phi ptr [ %632, %640 ], [ %659, %691 ], [ %632, %636 ]
  %699 = load ptr, ptr %616, align 8, !tbaa !431
  %700 = call ptr %699(ptr noundef nonnull %49) #18
  %701 = icmp eq ptr %700, null
  br i1 %701, label %702, label %631, !llvm.loop !460

702:                                              ; preds = %695, %627, %618
  %703 = phi i32 [ %622, %618 ], [ %622, %627 ], [ %696, %695 ]
  %704 = phi ptr [ %620, %618 ], [ %620, %627 ], [ %697, %695 ]
  %705 = phi ptr [ %619, %618 ], [ %619, %627 ], [ %698, %695 ]
  %706 = load ptr, ptr %513, align 8, !tbaa !431
  %707 = call ptr %706(ptr noundef nonnull %48) #18
  %708 = icmp eq ptr %707, null
  br i1 %708, label %709, label %618, !llvm.loop !461

709:                                              ; preds = %702, %605
  %710 = phi i32 [ 0, %605 ], [ %703, %702 ]
  br i1 %491, label %715, label %711

711:                                              ; preds = %709
  %712 = load i32, ptr %586, align 8, !tbaa !34
  %713 = sub nsw i32 %712, %710
  store i32 %713, ptr %586, align 8, !tbaa !34
  call void @BM_uv_element_map_free(ptr noundef %509) #18
  %714 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %714(ptr noundef %508) #18
  br label %715

715:                                              ; preds = %711, %709
  %716 = load i32, ptr %598, align 4, !tbaa !199
  %717 = and i32 %716, 2048
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %722, label %719

719:                                              ; preds = %715
  %720 = load ptr, ptr %82, align 8, !tbaa !119
  %721 = load ptr, ptr %471, align 8, !tbaa !99
  call void @ED_uvedit_live_unwrap_begin(ptr noundef %720, ptr noundef %721) #18
  br label %722

722:                                              ; preds = %474, %579, %580, %715, %719
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %49) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %48) #18
  %723 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  %724 = load ptr, ptr %723, align 8, !tbaa !48
  %725 = icmp eq ptr %724, null
  br i1 %725, label %6050, label %726

726:                                              ; preds = %722
  %727 = load i32, ptr %385, align 4, !tbaa !54
  %728 = and i32 %727, 2048
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %6050, label %730

730:                                              ; preds = %726
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %75)
  %731 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  %732 = load i32, ptr %731, align 8, !tbaa !34
  %733 = sext i32 %732 to i64
  %734 = getelementptr %struct.TransData, ptr %724, i64 %733
  %735 = getelementptr inbounds %struct.TransData, ptr %734, i64 -1
  %736 = icmp ugt ptr %735, %724
  br i1 %736, label %737, label %762

737:                                              ; preds = %730, %758
  %738 = phi ptr [ %760, %758 ], [ %735, %730 ]
  %739 = phi ptr [ %759, %758 ], [ %724, %730 ]
  br label %740

740:                                              ; preds = %737, %746
  %741 = phi ptr [ %747, %746 ], [ %739, %737 ]
  %742 = getelementptr inbounds %struct.TransData, ptr %741, i64 0, i32 16
  %743 = load i32, ptr %742, align 8, !tbaa !49
  %744 = and i32 %743, 1
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %749, label %746

746:                                              ; preds = %740
  %747 = getelementptr inbounds %struct.TransData, ptr %741, i64 1
  %748 = icmp eq ptr %747, %738
  br i1 %748, label %762, label %740, !llvm.loop !444

749:                                              ; preds = %740, %755
  %750 = phi ptr [ %756, %755 ], [ %738, %740 ]
  %751 = getelementptr inbounds %struct.TransData, ptr %750, i64 0, i32 16
  %752 = load i32, ptr %751, align 8, !tbaa !49
  %753 = and i32 %752, 1
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %755, label %758

755:                                              ; preds = %749
  %756 = getelementptr inbounds %struct.TransData, ptr %750, i64 -1
  %757 = icmp eq ptr %741, %756
  br i1 %757, label %762, label %749, !llvm.loop !445

758:                                              ; preds = %749
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %75, ptr noundef nonnull align 8 dereferenceable(224) %741, i64 224, i1 false), !tbaa.struct !446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %741, ptr noundef nonnull align 8 dereferenceable(224) %750, i64 224, i1 false), !tbaa.struct !446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %750, ptr noundef nonnull align 8 dereferenceable(224) %75, i64 224, i1 false), !tbaa.struct !446
  %759 = getelementptr inbounds %struct.TransData, ptr %741, i64 1
  %760 = getelementptr inbounds %struct.TransData, ptr %750, i64 -1
  %761 = icmp ugt ptr %760, %759
  br i1 %761, label %737, label %762, !llvm.loop !447

762:                                              ; preds = %758, %746, %755, %730
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %75)
  call fastcc void @set_prop_dist(ptr noundef %1, i8 noundef zeroext 1)
  %763 = load i32, ptr %731, align 8, !tbaa !34
  %764 = icmp sgt i32 %763, 0
  br i1 %764, label %765, label %6050

765:                                              ; preds = %762
  %766 = load ptr, ptr %723, align 8, !tbaa !48
  %767 = getelementptr inbounds %struct.TransData, ptr %766, i64 0, i32 16
  %768 = load i32, ptr %767, align 8, !tbaa !49
  %769 = and i32 %768, 1
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %784, label %777

771:                                              ; preds = %777
  %772 = getelementptr inbounds %struct.TransData, ptr %778, i64 1
  %773 = getelementptr inbounds %struct.TransData, ptr %778, i64 1, i32 16
  %774 = load i32, ptr %773, align 8, !tbaa !49
  %775 = and i32 %774, 1
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %782, label %777, !llvm.loop !51

777:                                              ; preds = %765, %771
  %778 = phi ptr [ %772, %771 ], [ %766, %765 ]
  %779 = phi i32 [ %780, %771 ], [ 0, %765 ]
  %780 = add nuw nsw i32 %779, 1
  %781 = icmp eq i32 %780, %763
  br i1 %781, label %6050, label %771, !llvm.loop !51

782:                                              ; preds = %771
  %783 = icmp slt i32 %780, %763
  br label %784

784:                                              ; preds = %782, %765
  %785 = phi i1 [ true, %765 ], [ %783, %782 ]
  %786 = phi i32 [ 0, %765 ], [ %780, %782 ]
  %787 = phi ptr [ %766, %765 ], [ %772, %782 ]
  br i1 %785, label %788, label %6050

788:                                              ; preds = %784
  %789 = load i32, ptr %385, align 4, !tbaa !54
  %790 = and i32 %789, 4096
  %791 = icmp eq i32 %790, 0
  %792 = sub nsw i32 %763, %786
  %793 = sext i32 %792 to i64
  br i1 %791, label %795, label %794

794:                                              ; preds = %788
  call void @qsort(ptr noundef %787, i64 noundef %793, i64 noundef 224, ptr noundef nonnull @trans_data_compare_dist) #18
  br label %6050

795:                                              ; preds = %788
  call void @qsort(ptr noundef %787, i64 noundef %793, i64 noundef 224, ptr noundef nonnull @trans_data_compare_rdist) #18
  br label %6050

796:                                              ; preds = %381
  %797 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %798 = load i32, ptr %797, align 4, !tbaa !54
  %799 = or i32 %798, 32832
  store i32 %799, ptr %797, align 4, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %71) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %72) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %72, i8 0, i64 16, i1 false)
  %800 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %71) #18
  %801 = icmp eq i8 %800, 0
  br i1 %801, label %1244, label %802

802:                                              ; preds = %796
  %803 = getelementptr inbounds %struct.bAnimContext, ptr %71, i64 0, i32 1
  %804 = load ptr, ptr %71, align 8, !tbaa !320
  %805 = load i16, ptr %803, align 8, !tbaa !344
  %806 = sext i16 %805 to i32
  %807 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %71, ptr noundef nonnull %72, i32 noundef 257, ptr noundef %804, i32 noundef %806) #18
  %808 = load i32, ptr %1, align 8, !tbaa !188
  %809 = icmp eq i32 %808, 22
  br i1 %809, label %810, label %827

810:                                              ; preds = %802
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %73) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %74) #18
  %811 = getelementptr inbounds %struct.bAnimContext, ptr %71, i64 0, i32 7
  %812 = load ptr, ptr %811, align 8, !tbaa !462
  %813 = getelementptr inbounds %struct.ARegion, ptr %812, i64 0, i32 2
  %814 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22
  %815 = load i32, ptr %814, align 8, !tbaa !57
  %816 = sitofp i32 %815 to float
  %817 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22, i64 1
  %818 = load i32, ptr %817, align 4, !tbaa !57
  %819 = sitofp i32 %818 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %813, float noundef %816, float noundef %819, ptr noundef nonnull %73, ptr noundef nonnull %74) #18
  %820 = load float, ptr %73, align 4, !tbaa !112
  %821 = getelementptr inbounds %struct.Scene, ptr %83, i64 0, i32 22, i32 5
  %822 = load i32, ptr %821, align 8, !tbaa !252
  %823 = sitofp i32 %822 to float
  %824 = fcmp ogt float %820, %823
  %825 = select i1 %824, i8 82, i8 76
  %826 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 26
  store i8 %825, ptr %826, align 8, !tbaa !291
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %74) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %73) #18
  br label %829

827:                                              ; preds = %802
  %828 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 26
  store i8 66, ptr %828, align 8, !tbaa !291
  br label %829

829:                                              ; preds = %827, %810
  %830 = load ptr, ptr %72, align 8, !tbaa !63
  %831 = icmp eq ptr %830, null
  br i1 %831, label %968, label %832

832:                                              ; preds = %829
  %833 = getelementptr inbounds %struct.Scene, ptr %83, i64 0, i32 22, i32 5
  %834 = getelementptr inbounds %struct.Scene, ptr %83, i64 0, i32 22, i32 5
  %835 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 26
  %836 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 26
  %837 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 26
  br label %838

838:                                              ; preds = %832, %964
  %839 = phi ptr [ %830, %832 ], [ %966, %964 ]
  %840 = phi i32 [ 0, %832 ], [ %965, %964 ]
  %841 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %71, ptr noundef nonnull %839) #18
  %842 = icmp eq ptr %841, null
  br i1 %842, label %847, label %843

843:                                              ; preds = %838
  %844 = load i32, ptr %833, align 8, !tbaa !252
  %845 = sitofp i32 %844 to float
  %846 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %841, float noundef %845, i16 noundef signext 1) #18
  br label %850

847:                                              ; preds = %838
  %848 = load i32, ptr %834, align 8, !tbaa !252
  %849 = sitofp i32 %848 to float
  br label %850

850:                                              ; preds = %847, %843
  %851 = phi float [ %846, %843 ], [ %849, %847 ]
  %852 = getelementptr inbounds %struct.bAnimListElem, ptr %839, i64 0, i32 3
  %853 = load i32, ptr %852, align 8, !tbaa !463
  switch i32 %853, label %964 [
    i32 7, label %854
    i32 27, label %894
    i32 29, label %929
  ]

854:                                              ; preds = %850
  %855 = getelementptr inbounds %struct.bAnimListElem, ptr %839, i64 0, i32 8
  %856 = load ptr, ptr %855, align 8, !tbaa !219
  %857 = load i8, ptr %837, align 8, !tbaa !291
  %858 = icmp eq ptr %856, null
  br i1 %858, label %891, label %859

859:                                              ; preds = %854
  %860 = getelementptr inbounds %struct.FCurve, ptr %856, i64 0, i32 5
  %861 = load ptr, ptr %860, align 8, !tbaa !221
  %862 = icmp eq ptr %861, null
  br i1 %862, label %891, label %863

863:                                              ; preds = %859
  %864 = getelementptr inbounds %struct.FCurve, ptr %856, i64 0, i32 7
  %865 = load i32, ptr %864, align 8, !tbaa !223
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %891, label %867

867:                                              ; preds = %863, %886
  %868 = phi i32 [ %887, %886 ], [ 0, %863 ]
  %869 = phi i32 [ %888, %886 ], [ 0, %863 ]
  %870 = phi ptr [ %889, %886 ], [ %861, %863 ]
  %871 = getelementptr inbounds %struct.BezTriple, ptr %870, i64 0, i32 8
  %872 = load i8, ptr %871, align 4, !tbaa !379
  %873 = and i8 %872, 1
  %874 = icmp eq i8 %873, 0
  br i1 %874, label %886, label %875

875:                                              ; preds = %867
  %876 = getelementptr inbounds [3 x [3 x float]], ptr %870, i64 0, i64 1
  %877 = load float, ptr %876, align 4, !tbaa !112
  switch i8 %857, label %880 [
    i8 66, label %882
    i8 82, label %878
  ]

878:                                              ; preds = %875
  %879 = fcmp oge float %877, %851
  br label %882

880:                                              ; preds = %875
  %881 = fcmp ole float %877, %851
  br label %882

882:                                              ; preds = %880, %878, %875
  %883 = phi i1 [ %879, %878 ], [ %881, %880 ], [ true, %875 ]
  %884 = zext i1 %883 to i32
  %885 = add nsw i32 %868, %884
  br label %886

886:                                              ; preds = %882, %867
  %887 = phi i32 [ %868, %867 ], [ %885, %882 ]
  %888 = add nuw nsw i32 %869, 1
  %889 = getelementptr inbounds %struct.BezTriple, ptr %870, i64 1
  %890 = icmp eq i32 %888, %865
  br i1 %890, label %891, label %867, !llvm.loop !464

891:                                              ; preds = %886, %863, %859, %854
  %892 = phi i32 [ 0, %859 ], [ 0, %854 ], [ 0, %863 ], [ %887, %886 ]
  %893 = add nsw i32 %892, %840
  br label %964

894:                                              ; preds = %850
  %895 = getelementptr inbounds %struct.bAnimListElem, ptr %839, i64 0, i32 2
  %896 = load ptr, ptr %895, align 8, !tbaa !346
  %897 = load i8, ptr %836, align 8, !tbaa !291
  %898 = icmp eq ptr %896, null
  br i1 %898, label %926, label %899

899:                                              ; preds = %894
  %900 = getelementptr inbounds %struct.bGPDlayer, ptr %896, i64 0, i32 2
  %901 = load ptr, ptr %900, align 8, !tbaa !63
  %902 = icmp eq ptr %901, null
  br i1 %902, label %926, label %903

903:                                              ; preds = %899, %922
  %904 = phi ptr [ %924, %922 ], [ %901, %899 ]
  %905 = phi i32 [ %923, %922 ], [ 0, %899 ]
  %906 = getelementptr inbounds %struct.bGPDframe, ptr %904, i64 0, i32 4
  %907 = load i32, ptr %906, align 4, !tbaa !465
  %908 = and i32 %907, 2
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %922, label %910

910:                                              ; preds = %903
  %911 = getelementptr inbounds %struct.bGPDframe, ptr %904, i64 0, i32 3
  %912 = load i32, ptr %911, align 8, !tbaa !334
  %913 = sitofp i32 %912 to float
  switch i8 %897, label %916 [
    i8 66, label %918
    i8 82, label %914
  ]

914:                                              ; preds = %910
  %915 = fcmp ole float %851, %913
  br label %918

916:                                              ; preds = %910
  %917 = fcmp oge float %851, %913
  br label %918

918:                                              ; preds = %916, %914, %910
  %919 = phi i1 [ %915, %914 ], [ %917, %916 ], [ true, %910 ]
  %920 = zext i1 %919 to i32
  %921 = add nsw i32 %905, %920
  br label %922

922:                                              ; preds = %918, %903
  %923 = phi i32 [ %905, %903 ], [ %921, %918 ]
  %924 = load ptr, ptr %904, align 8, !tbaa !63
  %925 = icmp eq ptr %924, null
  br i1 %925, label %926, label %903, !llvm.loop !466

926:                                              ; preds = %922, %899, %894
  %927 = phi i32 [ 0, %894 ], [ 0, %899 ], [ %923, %922 ]
  %928 = add nsw i32 %927, %840
  br label %964

929:                                              ; preds = %850
  %930 = getelementptr inbounds %struct.bAnimListElem, ptr %839, i64 0, i32 2
  %931 = load ptr, ptr %930, align 8, !tbaa !346
  %932 = load i8, ptr %835, align 8, !tbaa !291
  %933 = icmp eq ptr %931, null
  br i1 %933, label %961, label %934

934:                                              ; preds = %929
  %935 = getelementptr inbounds %struct.MaskLayer, ptr %931, i64 0, i32 4
  %936 = load ptr, ptr %935, align 8, !tbaa !63
  %937 = icmp eq ptr %936, null
  br i1 %937, label %961, label %938

938:                                              ; preds = %934, %957
  %939 = phi ptr [ %959, %957 ], [ %936, %934 ]
  %940 = phi i32 [ %958, %957 ], [ 0, %934 ]
  %941 = getelementptr inbounds %struct.MaskLayerShape, ptr %939, i64 0, i32 5
  %942 = load i8, ptr %941, align 8, !tbaa !467
  %943 = and i8 %942, 1
  %944 = icmp eq i8 %943, 0
  br i1 %944, label %957, label %945

945:                                              ; preds = %938
  %946 = getelementptr inbounds %struct.MaskLayerShape, ptr %939, i64 0, i32 4
  %947 = load i32, ptr %946, align 4, !tbaa !341
  %948 = sitofp i32 %947 to float
  switch i8 %932, label %951 [
    i8 66, label %953
    i8 82, label %949
  ]

949:                                              ; preds = %945
  %950 = fcmp ole float %851, %948
  br label %953

951:                                              ; preds = %945
  %952 = fcmp oge float %851, %948
  br label %953

953:                                              ; preds = %951, %949, %945
  %954 = phi i1 [ %950, %949 ], [ %952, %951 ], [ true, %945 ]
  %955 = zext i1 %954 to i32
  %956 = add nsw i32 %940, %955
  br label %957

957:                                              ; preds = %953, %938
  %958 = phi i32 [ %940, %938 ], [ %956, %953 ]
  %959 = load ptr, ptr %939, align 8, !tbaa !63
  %960 = icmp eq ptr %959, null
  br i1 %960, label %961, label %938, !llvm.loop !468

961:                                              ; preds = %957, %934, %929
  %962 = phi i32 [ 0, %929 ], [ 0, %934 ], [ %958, %957 ]
  %963 = add nsw i32 %962, %840
  br label %964

964:                                              ; preds = %961, %926, %891, %850
  %965 = phi i32 [ %893, %891 ], [ %928, %926 ], [ %963, %961 ], [ %840, %850 ]
  %966 = load ptr, ptr %839, align 8, !tbaa !63
  %967 = icmp eq ptr %966, null
  br i1 %967, label %968, label %838, !llvm.loop !469

968:                                              ; preds = %964, %829
  %969 = phi float [ undef, %829 ], [ %851, %964 ]
  %970 = phi i32 [ 0, %829 ], [ %965, %964 ]
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %1243, label %972

972:                                              ; preds = %968
  %973 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 %970, ptr %973, align 8, !tbaa !34
  %974 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %975 = sext i32 %970 to i64
  %976 = mul nsw i64 %975, 224
  %977 = call ptr %974(i64 noundef %976, ptr noundef nonnull @.str.24) #18
  %978 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %977, ptr %978, align 8, !tbaa !48
  %979 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %980 = load i32, ptr %973, align 8, !tbaa !34
  %981 = sext i32 %980 to i64
  %982 = mul nsw i64 %981, 56
  %983 = call ptr %979(i64 noundef %982, ptr noundef nonnull @.str.25) #18
  %984 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 12
  store ptr %983, ptr %984, align 8, !tbaa !168
  %985 = load ptr, ptr %978, align 8, !tbaa !48
  %986 = load i16, ptr %803, align 8
  switch i16 %986, label %1004 [
    i16 9, label %987
    i16 3, label %987
  ]

987:                                              ; preds = %972, %972
  %988 = load i32, ptr %1, align 8, !tbaa !188
  %989 = icmp eq i32 %988, 20
  %990 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %991 = shl nsw i64 %975, 4
  br i1 %989, label %992, label %999

992:                                              ; preds = %987
  %993 = or disjoint i64 %991, 8
  %994 = call ptr %990(i64 noundef %993, ptr noundef nonnull @.str.26) #18
  %995 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  store ptr %994, ptr %995, align 8, !tbaa !96
  %996 = load i32, ptr %797, align 4, !tbaa !54
  %997 = or i32 %996, 131072
  store i32 %997, ptr %797, align 4, !tbaa !54
  %998 = getelementptr inbounds float, ptr %994, i64 2
  br label %1013

999:                                              ; preds = %987
  %1000 = call ptr %990(i64 noundef %991, ptr noundef nonnull @.str.27) #18
  %1001 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  store ptr %1000, ptr %1001, align 8, !tbaa !96
  %1002 = load i32, ptr %797, align 4, !tbaa !54
  %1003 = or i32 %1002, 131072
  store i32 %1003, ptr %797, align 4, !tbaa !54
  br label %1013

1004:                                             ; preds = %972
  %1005 = load i32, ptr %1, align 8, !tbaa !188
  %1006 = icmp eq i32 %1005, 20
  br i1 %1006, label %1007, label %1013

1007:                                             ; preds = %1004
  %1008 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %1009 = call ptr %1008(i64 noundef 8, ptr noundef nonnull @.str.28) #18
  %1010 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  store ptr %1009, ptr %1010, align 8, !tbaa !96
  %1011 = load i32, ptr %797, align 4, !tbaa !54
  %1012 = or i32 %1011, 131072
  store i32 %1012, ptr %797, align 4, !tbaa !54
  br label %1013

1013:                                             ; preds = %1007, %1004, %999, %992
  %1014 = phi ptr [ %998, %992 ], [ %1000, %999 ], [ null, %1007 ], [ null, %1004 ]
  %1015 = load ptr, ptr %72, align 8, !tbaa !63
  %1016 = icmp eq ptr %1015, null
  br i1 %1016, label %1196, label %1017

1017:                                             ; preds = %1013
  %1018 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 26
  %1019 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 26
  %1020 = getelementptr inbounds %struct.Scene, ptr %83, i64 0, i32 22, i32 5
  %1021 = getelementptr inbounds %struct.Scene, ptr %83, i64 0, i32 22, i32 5
  %1022 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 26
  br label %1023

1023:                                             ; preds = %1017, %1189
  %1024 = phi ptr [ %1015, %1017 ], [ %1194, %1189 ]
  %1025 = phi ptr [ %985, %1017 ], [ %1193, %1189 ]
  %1026 = phi ptr [ %1014, %1017 ], [ %1192, %1189 ]
  %1027 = phi float [ %969, %1017 ], [ %1191, %1189 ]
  %1028 = phi ptr [ %983, %1017 ], [ %1190, %1189 ]
  %1029 = getelementptr inbounds %struct.bAnimListElem, ptr %1024, i64 0, i32 3
  %1030 = load i32, ptr %1029, align 8, !tbaa !463
  switch i32 %1030, label %1119 [
    i32 27, label %1031
    i32 29, label %1075
  ]

1031:                                             ; preds = %1023
  %1032 = getelementptr inbounds %struct.bAnimListElem, ptr %1024, i64 0, i32 2
  %1033 = load ptr, ptr %1032, align 8, !tbaa !346
  %1034 = load i8, ptr %1019, align 8, !tbaa !291
  %1035 = getelementptr inbounds %struct.bGPDlayer, ptr %1033, i64 0, i32 2
  %1036 = load ptr, ptr %1035, align 8, !tbaa !63
  %1037 = icmp eq ptr %1036, null
  br i1 %1037, label %1070, label %1038

1038:                                             ; preds = %1031, %1064
  %1039 = phi ptr [ %1068, %1064 ], [ %1036, %1031 ]
  %1040 = phi i32 [ %1067, %1064 ], [ 0, %1031 ]
  %1041 = phi ptr [ %1066, %1064 ], [ %1025, %1031 ]
  %1042 = phi ptr [ %1065, %1064 ], [ %1026, %1031 ]
  %1043 = getelementptr inbounds %struct.bGPDframe, ptr %1039, i64 0, i32 4
  %1044 = load i32, ptr %1043, align 4, !tbaa !465
  %1045 = and i32 %1044, 2
  %1046 = icmp eq i32 %1045, 0
  br i1 %1046, label %1064, label %1047

1047:                                             ; preds = %1038
  %1048 = getelementptr inbounds %struct.bGPDframe, ptr %1039, i64 0, i32 3
  %1049 = load i32, ptr %1048, align 8, !tbaa !334
  %1050 = sitofp i32 %1049 to float
  switch i8 %1034, label %1053 [
    i8 66, label %1057
    i8 82, label %1051
  ]

1051:                                             ; preds = %1047
  %1052 = fcmp ole float %1027, %1050
  br label %1055

1053:                                             ; preds = %1047
  %1054 = fcmp oge float %1027, %1050
  br label %1055

1055:                                             ; preds = %1053, %1051
  %1056 = phi i1 [ %1052, %1051 ], [ %1054, %1053 ]
  br i1 %1056, label %1057, label %1064

1057:                                             ; preds = %1055, %1047
  %1058 = getelementptr inbounds %struct.TransData, ptr %1041, i64 0, i32 5
  store ptr %1042, ptr %1058, align 8, !tbaa !441
  %1059 = getelementptr inbounds %struct.TransData, ptr %1041, i64 0, i32 6
  store float %1050, ptr %1059, align 8, !tbaa !442
  store float %1050, ptr %1042, align 8, !tbaa !212
  %1060 = getelementptr inbounds %struct.tGPFtransdata, ptr %1042, i64 0, i32 1
  store ptr %1048, ptr %1060, align 8, !tbaa !214
  %1061 = getelementptr inbounds %struct.TransData, ptr %1041, i64 1
  %1062 = getelementptr inbounds %struct.tGPFtransdata, ptr %1042, i64 1
  %1063 = add nsw i32 %1040, 1
  br label %1064

1064:                                             ; preds = %1057, %1055, %1038
  %1065 = phi ptr [ %1062, %1057 ], [ %1042, %1055 ], [ %1042, %1038 ]
  %1066 = phi ptr [ %1061, %1057 ], [ %1041, %1055 ], [ %1041, %1038 ]
  %1067 = phi i32 [ %1063, %1057 ], [ %1040, %1055 ], [ %1040, %1038 ]
  %1068 = load ptr, ptr %1039, align 8, !tbaa !63
  %1069 = icmp eq ptr %1068, null
  br i1 %1069, label %1070, label %1038, !llvm.loop !470

1070:                                             ; preds = %1064, %1031
  %1071 = phi i32 [ 0, %1031 ], [ %1067, %1064 ]
  %1072 = sext i32 %1071 to i64
  %1073 = getelementptr inbounds %struct.TransData, ptr %1025, i64 %1072
  %1074 = getelementptr inbounds %struct.tGPFtransdata, ptr %1026, i64 %1072
  br label %1189

1075:                                             ; preds = %1023
  %1076 = getelementptr inbounds %struct.bAnimListElem, ptr %1024, i64 0, i32 2
  %1077 = load ptr, ptr %1076, align 8, !tbaa !346
  %1078 = load i8, ptr %1018, align 8, !tbaa !291
  %1079 = getelementptr inbounds %struct.MaskLayer, ptr %1077, i64 0, i32 4
  %1080 = load ptr, ptr %1079, align 8, !tbaa !63
  %1081 = icmp eq ptr %1080, null
  br i1 %1081, label %1114, label %1082

1082:                                             ; preds = %1075, %1108
  %1083 = phi ptr [ %1112, %1108 ], [ %1080, %1075 ]
  %1084 = phi i32 [ %1111, %1108 ], [ 0, %1075 ]
  %1085 = phi ptr [ %1110, %1108 ], [ %1025, %1075 ]
  %1086 = phi ptr [ %1109, %1108 ], [ %1026, %1075 ]
  %1087 = getelementptr inbounds %struct.MaskLayerShape, ptr %1083, i64 0, i32 5
  %1088 = load i8, ptr %1087, align 8, !tbaa !467
  %1089 = and i8 %1088, 1
  %1090 = icmp eq i8 %1089, 0
  br i1 %1090, label %1108, label %1091

1091:                                             ; preds = %1082
  %1092 = getelementptr inbounds %struct.MaskLayerShape, ptr %1083, i64 0, i32 4
  %1093 = load i32, ptr %1092, align 4, !tbaa !341
  %1094 = sitofp i32 %1093 to float
  switch i8 %1078, label %1097 [
    i8 66, label %1101
    i8 82, label %1095
  ]

1095:                                             ; preds = %1091
  %1096 = fcmp ole float %1027, %1094
  br label %1099

1097:                                             ; preds = %1091
  %1098 = fcmp oge float %1027, %1094
  br label %1099

1099:                                             ; preds = %1097, %1095
  %1100 = phi i1 [ %1096, %1095 ], [ %1098, %1097 ]
  br i1 %1100, label %1101, label %1108

1101:                                             ; preds = %1099, %1091
  %1102 = getelementptr inbounds %struct.TransData, ptr %1085, i64 0, i32 5
  store ptr %1086, ptr %1102, align 8, !tbaa !441
  %1103 = getelementptr inbounds %struct.TransData, ptr %1085, i64 0, i32 6
  store float %1094, ptr %1103, align 8, !tbaa !442
  store float %1094, ptr %1086, align 8, !tbaa !212
  %1104 = getelementptr inbounds %struct.tGPFtransdata, ptr %1086, i64 0, i32 1
  store ptr %1092, ptr %1104, align 8, !tbaa !214
  %1105 = getelementptr inbounds %struct.TransData, ptr %1085, i64 1
  %1106 = getelementptr inbounds %struct.tGPFtransdata, ptr %1086, i64 1
  %1107 = add nsw i32 %1084, 1
  br label %1108

1108:                                             ; preds = %1101, %1099, %1082
  %1109 = phi ptr [ %1106, %1101 ], [ %1086, %1099 ], [ %1086, %1082 ]
  %1110 = phi ptr [ %1105, %1101 ], [ %1085, %1099 ], [ %1085, %1082 ]
  %1111 = phi i32 [ %1107, %1101 ], [ %1084, %1099 ], [ %1084, %1082 ]
  %1112 = load ptr, ptr %1083, align 8, !tbaa !63
  %1113 = icmp eq ptr %1112, null
  br i1 %1113, label %1114, label %1082, !llvm.loop !471

1114:                                             ; preds = %1108, %1075
  %1115 = phi i32 [ 0, %1075 ], [ %1111, %1108 ]
  %1116 = sext i32 %1115 to i64
  %1117 = getelementptr inbounds %struct.TransData, ptr %1025, i64 %1116
  %1118 = getelementptr inbounds %struct.tGPFtransdata, ptr %1026, i64 %1116
  br label %1189

1119:                                             ; preds = %1023
  %1120 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %71, ptr noundef nonnull %1024) #18
  %1121 = getelementptr inbounds %struct.bAnimListElem, ptr %1024, i64 0, i32 8
  %1122 = load ptr, ptr %1121, align 8, !tbaa !219
  %1123 = icmp eq ptr %1120, null
  br i1 %1123, label %1128, label %1124

1124:                                             ; preds = %1119
  %1125 = load i32, ptr %1020, align 8, !tbaa !252
  %1126 = sitofp i32 %1125 to float
  %1127 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %1120, float noundef %1126, i16 noundef signext 1) #18
  br label %1131

1128:                                             ; preds = %1119
  %1129 = load i32, ptr %1021, align 8, !tbaa !252
  %1130 = sitofp i32 %1129 to float
  br label %1131

1131:                                             ; preds = %1128, %1124
  %1132 = phi float [ %1127, %1124 ], [ %1130, %1128 ]
  %1133 = load i8, ptr %1022, align 8, !tbaa !291
  %1134 = icmp eq ptr %1122, null
  br i1 %1134, label %1189, label %1135

1135:                                             ; preds = %1131
  %1136 = getelementptr inbounds %struct.FCurve, ptr %1122, i64 0, i32 5
  %1137 = load ptr, ptr %1136, align 8, !tbaa !221
  %1138 = icmp eq ptr %1137, null
  br i1 %1138, label %1189, label %1139

1139:                                             ; preds = %1135
  %1140 = getelementptr inbounds %struct.FCurve, ptr %1122, i64 0, i32 7
  %1141 = load i32, ptr %1140, align 8, !tbaa !223
  %1142 = icmp eq i32 %1141, 0
  br i1 %1142, label %1189, label %1143

1143:                                             ; preds = %1139, %1183
  %1144 = phi i32 [ %1186, %1183 ], [ 0, %1139 ]
  %1145 = phi ptr [ %1185, %1183 ], [ %1028, %1139 ]
  %1146 = phi ptr [ %1187, %1183 ], [ %1137, %1139 ]
  %1147 = phi ptr [ %1184, %1183 ], [ %1025, %1139 ]
  %1148 = getelementptr inbounds %struct.BezTriple, ptr %1146, i64 0, i32 8
  %1149 = load i8, ptr %1148, align 4, !tbaa !379
  %1150 = and i8 %1149, 1
  %1151 = icmp eq i8 %1150, 0
  br i1 %1151, label %1183, label %1152

1152:                                             ; preds = %1143
  %1153 = getelementptr inbounds [3 x [3 x float]], ptr %1146, i64 0, i64 1
  %1154 = load float, ptr %1153, align 4, !tbaa !112
  switch i8 %1133, label %1157 [
    i8 66, label %1161
    i8 82, label %1155
  ]

1155:                                             ; preds = %1152
  %1156 = fcmp oge float %1154, %1132
  br label %1159

1157:                                             ; preds = %1152
  %1158 = fcmp ole float %1154, %1132
  br label %1159

1159:                                             ; preds = %1157, %1155
  %1160 = phi i1 [ %1156, %1155 ], [ %1158, %1157 ]
  br i1 %1160, label %1161, label %1183

1161:                                             ; preds = %1159, %1152
  %1162 = getelementptr inbounds %struct.TransData, ptr %1147, i64 0, i32 5
  store ptr %1153, ptr %1162, align 8, !tbaa !441
  %1163 = getelementptr inbounds %struct.TransData, ptr %1147, i64 0, i32 6
  store float %1154, ptr %1163, align 8, !tbaa !442
  %1164 = getelementptr inbounds %struct.TransData, ptr %1147, i64 0, i32 15
  store ptr %1120, ptr %1164, align 8, !tbaa !169
  %1165 = getelementptr inbounds %struct.TransData, ptr %1147, i64 0, i32 16
  %1166 = load i32, ptr %1165, align 8, !tbaa !49
  %1167 = or i32 %1166, 393216
  store i32 %1167, ptr %1165, align 8, !tbaa !49
  %1168 = getelementptr inbounds %struct.TransData2D, ptr %1145, i64 0, i32 2
  store ptr %1146, ptr %1168, align 8, !tbaa !237
  %1169 = getelementptr inbounds [3 x [3 x float]], ptr %1146, i64 0, i64 2
  %1170 = getelementptr inbounds %struct.TransData2D, ptr %1145, i64 0, i32 3
  store ptr %1169, ptr %1170, align 8, !tbaa !238
  %1171 = getelementptr inbounds %struct.TransData2D, ptr %1145, i64 0, i32 4
  %1172 = load float, ptr %1146, align 4, !tbaa !112
  store float %1172, ptr %1171, align 4, !tbaa !112
  %1173 = getelementptr inbounds float, ptr %1146, i64 1
  %1174 = load float, ptr %1173, align 4, !tbaa !112
  %1175 = getelementptr inbounds %struct.TransData2D, ptr %1145, i64 0, i32 4, i64 1
  store float %1174, ptr %1175, align 4, !tbaa !112
  %1176 = getelementptr inbounds %struct.TransData2D, ptr %1145, i64 0, i32 5
  %1177 = load float, ptr %1169, align 4, !tbaa !112
  store float %1177, ptr %1176, align 4, !tbaa !112
  %1178 = getelementptr inbounds [3 x [3 x float]], ptr %1146, i64 0, i64 2, i64 1
  %1179 = load float, ptr %1178, align 4, !tbaa !112
  %1180 = getelementptr inbounds %struct.TransData2D, ptr %1145, i64 0, i32 5, i64 1
  store float %1179, ptr %1180, align 4, !tbaa !112
  %1181 = getelementptr inbounds %struct.TransData, ptr %1147, i64 1
  %1182 = getelementptr inbounds %struct.TransData2D, ptr %1145, i64 1
  br label %1183

1183:                                             ; preds = %1161, %1159, %1143
  %1184 = phi ptr [ %1181, %1161 ], [ %1147, %1159 ], [ %1147, %1143 ]
  %1185 = phi ptr [ %1182, %1161 ], [ %1145, %1159 ], [ %1145, %1143 ]
  %1186 = add nuw nsw i32 %1144, 1
  %1187 = getelementptr inbounds %struct.BezTriple, ptr %1146, i64 1
  %1188 = icmp eq i32 %1186, %1141
  br i1 %1188, label %1189, label %1143, !llvm.loop !472

1189:                                             ; preds = %1183, %1139, %1135, %1131, %1114, %1070
  %1190 = phi ptr [ %1028, %1114 ], [ %1028, %1070 ], [ %1028, %1131 ], [ %1028, %1135 ], [ %1028, %1139 ], [ %1185, %1183 ]
  %1191 = phi float [ %1027, %1114 ], [ %1027, %1070 ], [ %1132, %1131 ], [ %1132, %1135 ], [ %1132, %1139 ], [ %1132, %1183 ]
  %1192 = phi ptr [ %1118, %1114 ], [ %1074, %1070 ], [ %1026, %1131 ], [ %1026, %1135 ], [ %1026, %1139 ], [ %1026, %1183 ]
  %1193 = phi ptr [ %1117, %1114 ], [ %1073, %1070 ], [ %1025, %1131 ], [ %1025, %1135 ], [ %1025, %1139 ], [ %1184, %1183 ]
  %1194 = load ptr, ptr %1024, align 8, !tbaa !63
  %1195 = icmp eq ptr %1194, null
  br i1 %1195, label %1196, label %1023, !llvm.loop !473

1196:                                             ; preds = %1189, %1013
  %1197 = load i32, ptr %1, align 8, !tbaa !188
  %1198 = icmp eq i32 %1197, 20
  br i1 %1198, label %1199, label %1243

1199:                                             ; preds = %1196
  %1200 = icmp sgt i32 %970, 0
  br i1 %1200, label %1201, label %1218

1201:                                             ; preds = %1199
  %1202 = load ptr, ptr %978, align 8, !tbaa !48
  br label %1203

1203:                                             ; preds = %1201, %1203
  %1204 = phi i32 [ %1215, %1203 ], [ 0, %1201 ]
  %1205 = phi float [ %1214, %1203 ], [ -1.000000e+09, %1201 ]
  %1206 = phi float [ %1212, %1203 ], [ 1.000000e+09, %1201 ]
  %1207 = phi ptr [ %1216, %1203 ], [ %1202, %1201 ]
  %1208 = getelementptr inbounds %struct.TransData, ptr %1207, i64 0, i32 5
  %1209 = load ptr, ptr %1208, align 8, !tbaa !441
  %1210 = load float, ptr %1209, align 4, !tbaa !112
  %1211 = fcmp ogt float %1206, %1210
  %1212 = select i1 %1211, float %1210, float %1206
  %1213 = fcmp olt float %1205, %1210
  %1214 = select i1 %1213, float %1210, float %1205
  %1215 = add nuw nsw i32 %1204, 1
  %1216 = getelementptr inbounds %struct.TransData, ptr %1207, i64 1
  %1217 = icmp eq i32 %1215, %970
  br i1 %1217, label %1218, label %1203, !llvm.loop !474

1218:                                             ; preds = %1203, %1199
  %1219 = phi float [ 1.000000e+09, %1199 ], [ %1212, %1203 ]
  %1220 = phi float [ -1.000000e+09, %1199 ], [ %1214, %1203 ]
  %1221 = fcmp oeq float %1219, %1220
  br i1 %1221, label %1222, label %1237

1222:                                             ; preds = %1218
  %1223 = getelementptr inbounds %struct.Scene, ptr %83, i64 0, i32 22, i32 13
  %1224 = load i16, ptr %1223, align 8, !tbaa !475
  %1225 = and i16 %1224, 1
  %1226 = icmp eq i16 %1225, 0
  %1227 = getelementptr inbounds %struct.Scene, ptr %83, i64 0, i32 22, i32 9
  %1228 = getelementptr inbounds %struct.Scene, ptr %83, i64 0, i32 22, i32 6
  %1229 = select i1 %1226, ptr %1228, ptr %1227
  %1230 = load i32, ptr %1229, align 4, !tbaa !57
  %1231 = sitofp i32 %1230 to float
  %1232 = getelementptr inbounds %struct.Scene, ptr %83, i64 0, i32 22, i32 10
  %1233 = getelementptr inbounds %struct.Scene, ptr %83, i64 0, i32 22, i32 7
  %1234 = select i1 %1226, ptr %1233, ptr %1232
  %1235 = load i32, ptr %1234, align 4, !tbaa !57
  %1236 = sitofp i32 %1235 to float
  br label %1237

1237:                                             ; preds = %1222, %1218
  %1238 = phi float [ %1231, %1222 ], [ %1219, %1218 ]
  %1239 = phi float [ %1236, %1222 ], [ %1220, %1218 ]
  %1240 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  %1241 = load ptr, ptr %1240, align 8, !tbaa !96
  store float %1238, ptr %1241, align 4, !tbaa !112
  %1242 = getelementptr inbounds float, ptr %1241, i64 1
  store float %1239, ptr %1242, align 4, !tbaa !112
  br label %1243

1243:                                             ; preds = %1196, %1237, %968
  call void @ANIM_animdata_freelist(ptr noundef nonnull %72) #18
  br label %1244

1244:                                             ; preds = %1243, %796
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %72) #18
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %71) #18
  br label %6050

1245:                                             ; preds = %381
  %1246 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %1247 = load i32, ptr %1246, align 4, !tbaa !54
  %1248 = or i32 %1247, 32832
  store i32 %1248, ptr %1246, align 4, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %67) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %68) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %68, i8 0, i64 16, i1 false)
  %1249 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %67) #18
  %1250 = icmp eq i8 %1249, 0
  br i1 %1250, label %1534, label %1251

1251:                                             ; preds = %1245
  %1252 = getelementptr inbounds %struct.bAnimContext, ptr %67, i64 0, i32 6
  %1253 = load ptr, ptr %1252, align 8, !tbaa !476
  %1254 = load ptr, ptr %67, align 8, !tbaa !320
  %1255 = getelementptr inbounds %struct.bAnimContext, ptr %67, i64 0, i32 1
  %1256 = load i16, ptr %1255, align 8, !tbaa !344
  %1257 = sext i16 %1256 to i32
  %1258 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %67, ptr noundef nonnull %68, i32 noundef 259, ptr noundef %1254, i32 noundef %1257) #18
  %1259 = load i32, ptr %1, align 8, !tbaa !188
  %1260 = icmp eq i32 %1259, 22
  br i1 %1260, label %1261, label %1278

1261:                                             ; preds = %1251
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %69) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %70) #18
  %1262 = getelementptr inbounds %struct.bAnimContext, ptr %67, i64 0, i32 7
  %1263 = load ptr, ptr %1262, align 8, !tbaa !462
  %1264 = getelementptr inbounds %struct.ARegion, ptr %1263, i64 0, i32 2
  %1265 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22
  %1266 = load i32, ptr %1265, align 8, !tbaa !57
  %1267 = sitofp i32 %1266 to float
  %1268 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22, i64 1
  %1269 = load i32, ptr %1268, align 4, !tbaa !57
  %1270 = sitofp i32 %1269 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %1264, float noundef %1267, float noundef %1270, ptr noundef nonnull %69, ptr noundef nonnull %70) #18
  %1271 = load float, ptr %69, align 4, !tbaa !112
  %1272 = getelementptr inbounds %struct.Scene, ptr %83, i64 0, i32 22, i32 5
  %1273 = load i32, ptr %1272, align 8, !tbaa !252
  %1274 = sitofp i32 %1273 to float
  %1275 = fcmp ogt float %1271, %1274
  %1276 = select i1 %1275, i8 82, i8 76
  %1277 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 26
  store i8 %1276, ptr %1277, align 8, !tbaa !291
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %70) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %69) #18
  br label %1280

1278:                                             ; preds = %1251
  %1279 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 26
  store i8 66, ptr %1279, align 8, !tbaa !291
  br label %1280

1280:                                             ; preds = %1278, %1261
  %1281 = load ptr, ptr %68, align 8, !tbaa !63
  %1282 = icmp eq ptr %1281, null
  br i1 %1282, label %1337, label %1283

1283:                                             ; preds = %1280
  %1284 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 26
  %1285 = getelementptr inbounds %struct.Scene, ptr %83, i64 0, i32 22, i32 5
  br label %1290

1286:                                             ; preds = %1333, %1290
  %1287 = phi i32 [ %1292, %1290 ], [ %1334, %1333 ]
  %1288 = load ptr, ptr %1291, align 8, !tbaa !63
  %1289 = icmp eq ptr %1288, null
  br i1 %1289, label %1337, label %1290, !llvm.loop !477

1290:                                             ; preds = %1283, %1286
  %1291 = phi ptr [ %1281, %1283 ], [ %1288, %1286 ]
  %1292 = phi i32 [ 0, %1283 ], [ %1287, %1286 ]
  %1293 = getelementptr inbounds %struct.bAnimListElem, ptr %1291, i64 0, i32 2
  %1294 = load ptr, ptr %1293, align 8, !tbaa !346
  %1295 = getelementptr inbounds %struct.NlaTrack, ptr %1294, i64 0, i32 2
  call void @BKE_nlastrips_make_metas(ptr noundef nonnull %1295, i8 noundef zeroext 1) #18
  %1296 = load ptr, ptr %1295, align 8, !tbaa !63
  %1297 = icmp eq ptr %1296, null
  br i1 %1297, label %1286, label %1298

1298:                                             ; preds = %1290, %1333
  %1299 = phi ptr [ %1335, %1333 ], [ %1296, %1290 ]
  %1300 = phi i32 [ %1334, %1333 ], [ %1292, %1290 ]
  %1301 = getelementptr inbounds %struct.NlaStrip, ptr %1299, i64 0, i32 21
  %1302 = load i16, ptr %1301, align 2, !tbaa !478
  %1303 = icmp eq i16 %1302, 1
  br i1 %1303, label %1333, label %1304

1304:                                             ; preds = %1298
  %1305 = getelementptr inbounds %struct.NlaStrip, ptr %1299, i64 0, i32 23
  %1306 = load i32, ptr %1305, align 8, !tbaa !480
  %1307 = and i32 %1306, 2
  %1308 = icmp eq i32 %1307, 0
  br i1 %1308, label %1333, label %1309

1309:                                             ; preds = %1304
  %1310 = load i8, ptr %1284, align 8, !tbaa !291
  %1311 = getelementptr inbounds %struct.NlaStrip, ptr %1299, i64 0, i32 10
  %1312 = load float, ptr %1311, align 8, !tbaa !481
  %1313 = load i32, ptr %1285, align 8, !tbaa !252
  %1314 = sitofp i32 %1313 to float
  switch i8 %1310, label %1317 [
    i8 66, label %1319
    i8 82, label %1315
  ]

1315:                                             ; preds = %1309
  %1316 = fcmp oge float %1312, %1314
  br label %1319

1317:                                             ; preds = %1309
  %1318 = fcmp ole float %1312, %1314
  br label %1319

1319:                                             ; preds = %1317, %1315, %1309
  %1320 = phi i1 [ %1316, %1315 ], [ %1318, %1317 ], [ true, %1309 ]
  %1321 = zext i1 %1320 to i32
  %1322 = add nsw i32 %1300, %1321
  %1323 = getelementptr inbounds %struct.NlaStrip, ptr %1299, i64 0, i32 11
  %1324 = load float, ptr %1323, align 4, !tbaa !482
  switch i8 %1310, label %1327 [
    i8 66, label %1329
    i8 82, label %1325
  ]

1325:                                             ; preds = %1319
  %1326 = fcmp oge float %1324, %1314
  br label %1329

1327:                                             ; preds = %1319
  %1328 = fcmp ole float %1324, %1314
  br label %1329

1329:                                             ; preds = %1327, %1325, %1319
  %1330 = phi i1 [ %1326, %1325 ], [ %1328, %1327 ], [ true, %1319 ]
  %1331 = zext i1 %1330 to i32
  %1332 = add nsw i32 %1322, %1331
  br label %1333

1333:                                             ; preds = %1329, %1304, %1298
  %1334 = phi i32 [ %1300, %1304 ], [ %1300, %1298 ], [ %1332, %1329 ]
  %1335 = load ptr, ptr %1299, align 8, !tbaa !63
  %1336 = icmp eq ptr %1335, null
  br i1 %1336, label %1286, label %1298, !llvm.loop !483

1337:                                             ; preds = %1286, %1280
  %1338 = phi i32 [ 0, %1280 ], [ %1287, %1286 ]
  %1339 = icmp eq i32 %1338, 0
  br i1 %1339, label %1340, label %1350

1340:                                             ; preds = %1337
  %1341 = load ptr, ptr %68, align 8, !tbaa !63
  %1342 = icmp eq ptr %1341, null
  br i1 %1342, label %1533, label %1343

1343:                                             ; preds = %1340, %1343
  %1344 = phi ptr [ %1348, %1343 ], [ %1341, %1340 ]
  %1345 = getelementptr inbounds %struct.bAnimListElem, ptr %1344, i64 0, i32 2
  %1346 = load ptr, ptr %1345, align 8, !tbaa !346
  %1347 = getelementptr inbounds %struct.NlaTrack, ptr %1346, i64 0, i32 2
  call void @BKE_nlastrips_clear_metas(ptr noundef nonnull %1347, i8 noundef zeroext 0, i8 noundef zeroext 1) #18
  %1348 = load ptr, ptr %1344, align 8, !tbaa !63
  %1349 = icmp eq ptr %1348, null
  br i1 %1349, label %1533, label %1343, !llvm.loop !484

1350:                                             ; preds = %1337
  %1351 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 %1338, ptr %1351, align 8, !tbaa !34
  %1352 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %1353 = sext i32 %1338 to i64
  %1354 = mul nsw i64 %1353, 224
  %1355 = call ptr %1352(i64 noundef %1354, ptr noundef nonnull @.str.29) #18
  %1356 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %1355, ptr %1356, align 8, !tbaa !48
  %1357 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %1358 = load i32, ptr %1351, align 8, !tbaa !34
  %1359 = sext i32 %1358 to i64
  %1360 = shl nsw i64 %1359, 6
  %1361 = call ptr %1357(i64 noundef %1360, ptr noundef nonnull @.str.30) #18
  %1362 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  store ptr %1361, ptr %1362, align 8, !tbaa !96
  %1363 = load i32, ptr %1246, align 4, !tbaa !54
  %1364 = or i32 %1363, 131072
  store i32 %1364, ptr %1246, align 4, !tbaa !54
  %1365 = load ptr, ptr %68, align 8, !tbaa !63
  %1366 = icmp eq ptr %1365, null
  br i1 %1366, label %1533, label %1367

1367:                                             ; preds = %1350
  %1368 = icmp eq ptr %1253, null
  %1369 = getelementptr inbounds %struct.SpaceNla, ptr %1253, i64 0, i32 7
  %1370 = getelementptr inbounds %struct.Scene, ptr %83, i64 0, i32 22, i32 5
  %1371 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 26
  br label %1372

1372:                                             ; preds = %1367, %1528
  %1373 = phi ptr [ %1365, %1367 ], [ %1531, %1528 ]
  %1374 = phi ptr [ %1355, %1367 ], [ %1530, %1528 ]
  %1375 = phi ptr [ %1361, %1367 ], [ %1529, %1528 ]
  %1376 = getelementptr inbounds %struct.bAnimListElem, ptr %1373, i64 0, i32 3
  %1377 = load i32, ptr %1376, align 8, !tbaa !463
  %1378 = icmp eq i32 %1377, 30
  br i1 %1378, label %1379, label %1528

1379:                                             ; preds = %1372
  %1380 = getelementptr inbounds %struct.bAnimListElem, ptr %1373, i64 0, i32 2
  %1381 = load ptr, ptr %1380, align 8, !tbaa !346
  %1382 = getelementptr inbounds %struct.NlaTrack, ptr %1381, i64 0, i32 2
  %1383 = load ptr, ptr %1382, align 8, !tbaa !63
  %1384 = icmp eq ptr %1383, null
  br i1 %1384, label %1528, label %1385

1385:                                             ; preds = %1379
  %1386 = getelementptr inbounds %struct.bAnimListElem, ptr %1373, i64 0, i32 10
  %1387 = load ptr, ptr %1386, align 8, !tbaa !485
  %1388 = getelementptr inbounds %struct.bAnimListElem, ptr %1373, i64 0, i32 9
  %1389 = getelementptr inbounds %struct.AnimData, ptr %1387, i64 0, i32 3
  br label %1390

1390:                                             ; preds = %1385, %1523
  %1391 = phi ptr [ %1383, %1385 ], [ %1526, %1523 ]
  %1392 = phi ptr [ %1374, %1385 ], [ %1525, %1523 ]
  %1393 = phi ptr [ %1375, %1385 ], [ %1524, %1523 ]
  %1394 = getelementptr inbounds %struct.NlaStrip, ptr %1391, i64 0, i32 21
  %1395 = load i16, ptr %1394, align 2, !tbaa !478
  %1396 = icmp eq i16 %1395, 1
  br i1 %1396, label %1523, label %1397

1397:                                             ; preds = %1390
  %1398 = getelementptr inbounds %struct.NlaStrip, ptr %1391, i64 0, i32 23
  %1399 = load i32, ptr %1398, align 8, !tbaa !480
  %1400 = and i32 %1399, 2
  %1401 = icmp eq i32 %1400, 0
  br i1 %1401, label %1523, label %1402

1402:                                             ; preds = %1397
  %1403 = load ptr, ptr %1388, align 8, !tbaa !486
  store ptr %1403, ptr %1393, align 8, !tbaa !487
  %1404 = getelementptr inbounds %struct.TransDataNla, ptr %1393, i64 0, i32 2
  store ptr %1381, ptr %1404, align 8, !tbaa !489
  %1405 = getelementptr inbounds %struct.TransDataNla, ptr %1393, i64 0, i32 1
  store ptr %1381, ptr %1405, align 8, !tbaa !490
  %1406 = getelementptr inbounds %struct.TransDataNla, ptr %1393, i64 0, i32 3
  store ptr %1391, ptr %1406, align 8, !tbaa !491
  %1407 = call i32 @BLI_findindex(ptr noundef nonnull %1389, ptr noundef %1381) #18
  %1408 = getelementptr inbounds %struct.TransDataNla, ptr %1393, i64 0, i32 6
  store i32 %1407, ptr %1408, align 8, !tbaa !492
  %1409 = sitofp i32 %1407 to float
  br i1 %1368, label %1414, label %1410

1410:                                             ; preds = %1402
  %1411 = load i16, ptr %1369, align 2, !tbaa !493
  %1412 = and i16 %1411, 32
  %1413 = icmp eq i16 %1412, 0
  br i1 %1413, label %1414, label %1415

1414:                                             ; preds = %1410, %1402
  br label %1415

1415:                                             ; preds = %1410, %1414
  %1416 = phi float [ 0x3FF3333340000000, %1414 ], [ 0x3FE99999A0000000, %1410 ]
  %1417 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !495
  %1418 = sitofp i16 %1417 to float
  %1419 = fmul float %1416, %1418
  %1420 = sitofp i16 %1417 to float
  %1421 = call float @llvm.fmuladd.f32(float %1420, float 0x3FB99999A0000000, float %1419)
  %1422 = fmul float %1421, %1409
  %1423 = getelementptr inbounds %struct.NlaStrip, ptr %1391, i64 0, i32 10
  %1424 = load float, ptr %1423, align 8, !tbaa !481
  %1425 = getelementptr inbounds %struct.TransDataNla, ptr %1393, i64 0, i32 4
  store float %1424, ptr %1425, align 8, !tbaa !112
  %1426 = getelementptr inbounds %struct.TransDataNla, ptr %1393, i64 0, i32 4, i64 1
  store float %1422, ptr %1426, align 4, !tbaa !112
  %1427 = getelementptr inbounds %struct.NlaStrip, ptr %1391, i64 0, i32 11
  %1428 = load float, ptr %1427, align 4, !tbaa !482
  %1429 = getelementptr inbounds %struct.TransDataNla, ptr %1393, i64 0, i32 5
  store float %1428, ptr %1429, align 4, !tbaa !112
  %1430 = getelementptr inbounds %struct.TransDataNla, ptr %1393, i64 0, i32 5, i64 1
  store float %1422, ptr %1430, align 4, !tbaa !112
  %1431 = load i32, ptr %1370, align 8, !tbaa !252
  %1432 = sitofp i32 %1431 to float
  %1433 = load i8, ptr %1371, align 8, !tbaa !291
  %1434 = load float, ptr %1423, align 8, !tbaa !481
  switch i8 %1433, label %1437 [
    i8 66, label %1441
    i8 82, label %1435
  ]

1435:                                             ; preds = %1415
  %1436 = fcmp oge float %1434, %1432
  br label %1439

1437:                                             ; preds = %1415
  %1438 = fcmp ole float %1434, %1432
  br label %1439

1439:                                             ; preds = %1437, %1435
  %1440 = phi i1 [ %1436, %1435 ], [ %1438, %1437 ]
  br i1 %1440, label %1441, label %1470

1441:                                             ; preds = %1415, %1439
  %1442 = getelementptr inbounds %struct.TransDataNla, ptr %1393, i64 0, i32 7
  store i32 -1, ptr %1442, align 4, !tbaa !496
  %1443 = load i32, ptr %1, align 8, !tbaa !188
  switch i32 %1443, label %1464 [
    i32 1, label %1444
    i32 22, label %1444
  ]

1444:                                             ; preds = %1441, %1441
  %1445 = getelementptr inbounds %struct.TransData, ptr %1392, i64 0, i32 3
  store ptr %1425, ptr %1445, align 8, !tbaa !209
  %1446 = getelementptr inbounds %struct.TransData, ptr %1392, i64 0, i32 4
  store float %1424, ptr %1446, align 4, !tbaa !112
  %1447 = load float, ptr %1426, align 4, !tbaa !112
  %1448 = getelementptr inbounds %struct.TransData, ptr %1392, i64 0, i32 4, i64 1
  store float %1447, ptr %1448, align 4, !tbaa !112
  %1449 = getelementptr inbounds %struct.TransDataNla, ptr %1393, i64 0, i32 4, i64 2
  %1450 = load float, ptr %1449, align 4, !tbaa !112
  %1451 = getelementptr inbounds %struct.TransData, ptr %1392, i64 0, i32 4, i64 2
  store float %1450, ptr %1451, align 4, !tbaa !112
  %1452 = getelementptr inbounds %struct.TransData, ptr %1392, i64 0, i32 7
  store float %1432, ptr %1452, align 4, !tbaa !112
  %1453 = getelementptr inbounds %struct.TransData, ptr %1392, i64 0, i32 7, i64 1
  store float %1422, ptr %1453, align 4, !tbaa !112
  %1454 = getelementptr inbounds %struct.TransData, ptr %1392, i64 0, i32 7, i64 2
  store float 0.000000e+00, ptr %1454, align 4, !tbaa !112
  %1455 = getelementptr inbounds %struct.TransData, ptr %1392, i64 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %1455, i8 0, i64 36, i1 false)
  %1456 = getelementptr inbounds %struct.TransData, ptr %1392, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %1456, align 8, !tbaa !112
  %1457 = getelementptr inbounds %struct.TransData, ptr %1392, i64 0, i32 13
  store ptr null, ptr %1457, align 8, !tbaa !372
  %1458 = getelementptr inbounds %struct.TransData, ptr %1392, i64 0, i32 5
  store ptr null, ptr %1458, align 8, !tbaa !441
  %1459 = getelementptr inbounds %struct.TransData, ptr %1392, i64 0, i32 16
  %1460 = load i32, ptr %1459, align 8, !tbaa !49
  %1461 = or i32 %1460, 1
  store i32 %1461, ptr %1459, align 8, !tbaa !49
  store float 0.000000e+00, ptr %1392, align 8, !tbaa !55
  %1462 = getelementptr inbounds %struct.TransData, ptr %1392, i64 0, i32 8
  call void @unit_m3(ptr noundef nonnull %1462) #18
  %1463 = getelementptr inbounds %struct.TransData, ptr %1392, i64 0, i32 9
  call void @unit_m3(ptr noundef nonnull %1463) #18
  br label %1467

1464:                                             ; preds = %1441
  %1465 = getelementptr inbounds %struct.TransData, ptr %1392, i64 0, i32 5
  store ptr %1425, ptr %1465, align 8, !tbaa !441
  %1466 = getelementptr inbounds %struct.TransData, ptr %1392, i64 0, i32 6
  store float %1424, ptr %1466, align 8, !tbaa !442
  br label %1467

1467:                                             ; preds = %1464, %1444
  %1468 = getelementptr inbounds %struct.TransData, ptr %1392, i64 0, i32 15
  store ptr %1393, ptr %1468, align 8, !tbaa !169
  %1469 = getelementptr inbounds %struct.TransData, ptr %1392, i64 1
  br label %1470

1470:                                             ; preds = %1467, %1439
  %1471 = phi ptr [ %1469, %1467 ], [ %1392, %1439 ]
  %1472 = load i8, ptr %1371, align 8, !tbaa !291
  %1473 = load float, ptr %1427, align 4, !tbaa !482
  %1474 = load i32, ptr %1370, align 8, !tbaa !252
  %1475 = sitofp i32 %1474 to float
  switch i8 %1472, label %1478 [
    i8 66, label %1482
    i8 82, label %1476
  ]

1476:                                             ; preds = %1470
  %1477 = fcmp oge float %1473, %1475
  br label %1480

1478:                                             ; preds = %1470
  %1479 = fcmp ole float %1473, %1475
  br label %1480

1480:                                             ; preds = %1478, %1476
  %1481 = phi i1 [ %1477, %1476 ], [ %1479, %1478 ]
  br i1 %1481, label %1482, label %1516

1482:                                             ; preds = %1470, %1480
  %1483 = getelementptr inbounds %struct.TransDataNla, ptr %1393, i64 0, i32 7
  %1484 = load i32, ptr %1483, align 4, !tbaa !496
  %1485 = icmp eq i32 %1484, 0
  %1486 = select i1 %1485, i32 1, i32 2
  store i32 %1486, ptr %1483, align 4, !tbaa !496
  %1487 = load i32, ptr %1, align 8, !tbaa !188
  switch i32 %1487, label %1509 [
    i32 1, label %1488
    i32 22, label %1488
  ]

1488:                                             ; preds = %1482, %1482
  %1489 = getelementptr inbounds %struct.TransData, ptr %1471, i64 0, i32 3
  store ptr %1429, ptr %1489, align 8, !tbaa !209
  %1490 = getelementptr inbounds %struct.TransData, ptr %1471, i64 0, i32 4
  %1491 = load float, ptr %1429, align 4, !tbaa !112
  store float %1491, ptr %1490, align 4, !tbaa !112
  %1492 = load float, ptr %1430, align 4, !tbaa !112
  %1493 = getelementptr inbounds %struct.TransData, ptr %1471, i64 0, i32 4, i64 1
  store float %1492, ptr %1493, align 4, !tbaa !112
  %1494 = getelementptr inbounds %struct.TransDataNla, ptr %1393, i64 0, i32 5, i64 2
  %1495 = load float, ptr %1494, align 4, !tbaa !112
  %1496 = getelementptr inbounds %struct.TransData, ptr %1471, i64 0, i32 4, i64 2
  store float %1495, ptr %1496, align 4, !tbaa !112
  %1497 = getelementptr inbounds %struct.TransData, ptr %1471, i64 0, i32 7
  store float %1432, ptr %1497, align 4, !tbaa !112
  %1498 = getelementptr inbounds %struct.TransData, ptr %1471, i64 0, i32 7, i64 1
  store float %1422, ptr %1498, align 4, !tbaa !112
  %1499 = getelementptr inbounds %struct.TransData, ptr %1471, i64 0, i32 7, i64 2
  store float 0.000000e+00, ptr %1499, align 4, !tbaa !112
  %1500 = getelementptr inbounds %struct.TransData, ptr %1471, i64 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %1500, i8 0, i64 36, i1 false)
  %1501 = getelementptr inbounds %struct.TransData, ptr %1471, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %1501, align 8, !tbaa !112
  %1502 = getelementptr inbounds %struct.TransData, ptr %1471, i64 0, i32 13
  store ptr null, ptr %1502, align 8, !tbaa !372
  %1503 = getelementptr inbounds %struct.TransData, ptr %1471, i64 0, i32 5
  store ptr null, ptr %1503, align 8, !tbaa !441
  %1504 = getelementptr inbounds %struct.TransData, ptr %1471, i64 0, i32 16
  %1505 = load i32, ptr %1504, align 8, !tbaa !49
  %1506 = or i32 %1505, 1
  store i32 %1506, ptr %1504, align 8, !tbaa !49
  store float 0.000000e+00, ptr %1471, align 8, !tbaa !55
  %1507 = getelementptr inbounds %struct.TransData, ptr %1471, i64 0, i32 8
  call void @unit_m3(ptr noundef nonnull %1507) #18
  %1508 = getelementptr inbounds %struct.TransData, ptr %1471, i64 0, i32 9
  call void @unit_m3(ptr noundef nonnull %1508) #18
  br label %1513

1509:                                             ; preds = %1482
  %1510 = getelementptr inbounds %struct.TransData, ptr %1471, i64 0, i32 5
  store ptr %1429, ptr %1510, align 8, !tbaa !441
  %1511 = load float, ptr %1429, align 4, !tbaa !112
  %1512 = getelementptr inbounds %struct.TransData, ptr %1471, i64 0, i32 6
  store float %1511, ptr %1512, align 8, !tbaa !442
  br label %1513

1513:                                             ; preds = %1509, %1488
  %1514 = getelementptr inbounds %struct.TransData, ptr %1471, i64 0, i32 15
  store ptr %1393, ptr %1514, align 8, !tbaa !169
  %1515 = getelementptr inbounds %struct.TransData, ptr %1471, i64 1
  br label %1516

1516:                                             ; preds = %1513, %1480
  %1517 = phi ptr [ %1515, %1513 ], [ %1471, %1480 ]
  %1518 = getelementptr inbounds %struct.TransDataNla, ptr %1393, i64 0, i32 7
  %1519 = load i32, ptr %1518, align 4, !tbaa !496
  %1520 = icmp eq i32 %1519, 2
  %1521 = select i1 %1520, i64 2, i64 1
  %1522 = getelementptr inbounds %struct.TransDataNla, ptr %1393, i64 %1521
  br label %1523

1523:                                             ; preds = %1516, %1397, %1390
  %1524 = phi ptr [ %1522, %1516 ], [ %1393, %1397 ], [ %1393, %1390 ]
  %1525 = phi ptr [ %1517, %1516 ], [ %1392, %1397 ], [ %1392, %1390 ]
  %1526 = load ptr, ptr %1391, align 8, !tbaa !63
  %1527 = icmp eq ptr %1526, null
  br i1 %1527, label %1528, label %1390, !llvm.loop !497

1528:                                             ; preds = %1523, %1379, %1372
  %1529 = phi ptr [ %1375, %1372 ], [ %1375, %1379 ], [ %1524, %1523 ]
  %1530 = phi ptr [ %1374, %1372 ], [ %1374, %1379 ], [ %1525, %1523 ]
  %1531 = load ptr, ptr %1373, align 8, !tbaa !63
  %1532 = icmp eq ptr %1531, null
  br i1 %1532, label %1533, label %1372, !llvm.loop !498

1533:                                             ; preds = %1528, %1343, %1350, %1340
  call void @ANIM_animdata_freelist(ptr noundef nonnull %68) #18
  br label %1534

1534:                                             ; preds = %1533, %1245
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %68) #18
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %67) #18
  br label %6050

1535:                                             ; preds = %381
  %1536 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %1537 = load i32, ptr %1536, align 4, !tbaa !54
  %1538 = or i32 %1537, 32832
  store i32 %1538, ptr %1536, align 4, !tbaa !54
  %1539 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 4
  %1540 = load i16, ptr %1539, align 2, !tbaa !499
  %1541 = or i16 %1540, 8
  store i16 %1541, ptr %1539, align 2, !tbaa !499
  %1542 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #18
  %1543 = load ptr, ptr %82, align 8, !tbaa !119
  %1544 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %1543, i8 noundef zeroext 0) #18
  %1545 = icmp eq ptr %1544, null
  br i1 %1545, label %1546, label %1548

1546:                                             ; preds = %1535
  %1547 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 0, ptr %1547, align 8, !tbaa !34
  br label %6050

1548:                                             ; preds = %1535
  %1549 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 41
  store ptr @freeSeqData, ptr %1549, align 8, !tbaa !500
  %1550 = load i32, ptr %1, align 8, !tbaa !188
  %1551 = icmp eq i32 %1550, 22
  br i1 %1551, label %1552, label %1566

1552:                                             ; preds = %1548
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %65) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %66) #18
  %1553 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22
  %1554 = load i32, ptr %1553, align 8, !tbaa !57
  %1555 = sitofp i32 %1554 to float
  %1556 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22, i64 1
  %1557 = load i32, ptr %1556, align 4, !tbaa !57
  %1558 = sitofp i32 %1557 to float
  call void @UI_view2d_region_to_view(ptr noundef %1542, float noundef %1555, float noundef %1558, ptr noundef nonnull %65, ptr noundef nonnull %66) #18
  %1559 = load float, ptr %65, align 4, !tbaa !112
  %1560 = getelementptr inbounds %struct.Scene, ptr %1543, i64 0, i32 22, i32 5
  %1561 = load i32, ptr %1560, align 8, !tbaa !252
  %1562 = sitofp i32 %1561 to float
  %1563 = fcmp ogt float %1559, %1562
  %1564 = select i1 %1563, i8 82, i8 76
  %1565 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 26
  store i8 %1564, ptr %1565, align 8, !tbaa !291
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %66) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %65) #18
  br label %1568

1566:                                             ; preds = %1548
  %1567 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 26
  store i8 66, ptr %1567, align 8, !tbaa !291
  br label %1568

1568:                                             ; preds = %1566, %1552
  %1569 = load ptr, ptr %1544, align 8, !tbaa !176
  %1570 = load ptr, ptr %1569, align 8, !tbaa !63
  %1571 = icmp eq ptr %1570, null
  br i1 %1571, label %1604, label %1572

1572:                                             ; preds = %1568, %1601
  %1573 = phi ptr [ %1602, %1601 ], [ %1570, %1568 ]
  %1574 = getelementptr inbounds %struct.Sequence, ptr %1573, i64 0, i32 5
  %1575 = load i32, ptr %1574, align 8, !tbaa !190
  %1576 = and i32 %1575, 1
  %1577 = icmp eq i32 %1576, 0
  br i1 %1577, label %1578, label %1601

1578:                                             ; preds = %1572
  %1579 = getelementptr inbounds %struct.Sequence, ptr %1573, i64 0, i32 6
  %1580 = load i32, ptr %1579, align 4, !tbaa !189
  %1581 = and i32 %1580, 8
  %1582 = icmp eq i32 %1581, 0
  br i1 %1582, label %1601, label %1583

1583:                                             ; preds = %1578
  %1584 = getelementptr inbounds %struct.Sequence, ptr %1573, i64 0, i32 33
  br label %1585

1585:                                             ; preds = %1583, %1598
  %1586 = phi i64 [ 0, %1583 ], [ %1599, %1598 ]
  %1587 = getelementptr inbounds ptr, ptr %1584, i64 %1586
  %1588 = load ptr, ptr %1587, align 8, !tbaa !63
  %1589 = icmp eq ptr %1588, null
  br i1 %1589, label %1598, label %1590

1590:                                             ; preds = %1585
  %1591 = getelementptr inbounds %struct.Sequence, ptr %1588, i64 0, i32 5
  %1592 = load i32, ptr %1591, align 8, !tbaa !190
  %1593 = and i32 %1592, 16391
  %1594 = icmp eq i32 %1593, 1
  br i1 %1594, label %1595, label %1598

1595:                                             ; preds = %1590
  %1596 = load i32, ptr %1574, align 8, !tbaa !190
  %1597 = or i32 %1596, 1
  store i32 %1597, ptr %1574, align 8, !tbaa !190
  br label %1598

1598:                                             ; preds = %1595, %1590, %1585
  %1599 = add nuw nsw i64 %1586, 1
  %1600 = icmp eq i64 %1599, 3
  br i1 %1600, label %1601, label %1585, !llvm.loop !501

1601:                                             ; preds = %1598, %1578, %1572
  %1602 = load ptr, ptr %1573, align 8, !tbaa !63
  %1603 = icmp eq ptr %1602, null
  br i1 %1603, label %1604, label %1572, !llvm.loop !502

1604:                                             ; preds = %1601, %1568
  %1605 = call fastcc i32 @SeqTransCount(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %1569, i32 noundef 0)
  %1606 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 %1605, ptr %1606, align 8, !tbaa !34
  %1607 = icmp eq i32 %1605, 0
  br i1 %1607, label %6050, label %1608

1608:                                             ; preds = %1604
  %1609 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %1610 = sext i32 %1605 to i64
  %1611 = mul nsw i64 %1610, 224
  %1612 = call ptr %1609(i64 noundef %1611, ptr noundef nonnull @.str.31) #18
  %1613 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %1612, ptr %1613, align 8, !tbaa !48
  %1614 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %1615 = load i32, ptr %1606, align 8, !tbaa !34
  %1616 = sext i32 %1615 to i64
  %1617 = mul nsw i64 %1616, 56
  %1618 = call ptr %1614(i64 noundef %1617, ptr noundef nonnull @.str.32) #18
  %1619 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 12
  store ptr %1618, ptr %1619, align 8, !tbaa !168
  %1620 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %1621 = load i32, ptr %1606, align 8, !tbaa !34
  %1622 = sext i32 %1621 to i64
  %1623 = mul nsw i64 %1622, 24
  %1624 = call ptr %1620(i64 noundef %1623, ptr noundef nonnull @.str.33) #18
  %1625 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  store ptr %1624, ptr %1625, align 8, !tbaa !96
  %1626 = load i32, ptr %1536, align 4, !tbaa !54
  %1627 = or i32 %1626, 131072
  store i32 %1627, ptr %1536, align 4, !tbaa !54
  %1628 = load ptr, ptr %1544, align 8, !tbaa !176
  %1629 = call fastcc i32 @SeqToTransData_Recursive(ptr noundef nonnull %1, ptr noundef %1628, ptr noundef %1612, ptr noundef %1618, ptr noundef %1624)
  br label %6050

1630:                                             ; preds = %381
  %1631 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %1632 = load i32, ptr %1631, align 4, !tbaa !54
  %1633 = or i32 %1632, 32832
  store i32 %1633, ptr %1631, align 4, !tbaa !54
  %1634 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %1635 = load ptr, ptr %1634, align 8, !tbaa !175
  %1636 = getelementptr inbounds %struct.ScrArea, ptr %1635, i64 0, i32 19
  %1637 = load ptr, ptr %1636, align 8, !tbaa !197
  %1638 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %1639 = load ptr, ptr %1638, align 8, !tbaa !408
  %1640 = getelementptr inbounds %struct.ARegion, ptr %1639, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %57) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %58) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %59) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %60) #18
  %1641 = load i32, ptr %1, align 8, !tbaa !188
  switch i32 %1641, label %1642 [
    i32 1, label %1645
    i32 19, label %1645
    i32 20, label %1645
  ]

1642:                                             ; preds = %1630
  %1643 = icmp eq i32 %1641, 23
  %1644 = zext i1 %1643 to i8
  br label %1645

1645:                                             ; preds = %1642, %1630, %1630, %1630
  %1646 = phi i8 [ 1, %1630 ], [ %1644, %1642 ], [ 1, %1630 ], [ 1, %1630 ]
  %1647 = getelementptr inbounds %struct.SpaceIpo, ptr %1637, i64 0, i32 11
  %1648 = load i32, ptr %1647, align 4, !tbaa !216
  %1649 = and i32 %1648, 4
  %1650 = icmp eq i32 %1649, 0
  %1651 = zext i1 %1650 to i8
  %1652 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 32
  %1653 = load i16, ptr %1652, align 2, !tbaa !348
  %1654 = icmp eq i16 %1653, 2
  br i1 %1654, label %1655, label %1659

1655:                                             ; preds = %1645
  switch i32 %1641, label %1656 [
    i32 1, label %1659
    i32 19, label %1659
    i32 20, label %1659
  ]

1656:                                             ; preds = %1655
  %1657 = icmp ne i32 %1641, 23
  %1658 = zext i1 %1657 to i8
  br label %1659

1659:                                             ; preds = %1656, %1655, %1655, %1655, %1645
  %1660 = phi i8 [ 0, %1645 ], [ 0, %1655 ], [ %1658, %1656 ], [ 0, %1655 ], [ 0, %1655 ]
  %1661 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %57) #18
  %1662 = icmp eq i8 %1661, 0
  br i1 %1662, label %2073, label %1663

1663:                                             ; preds = %1659
  %1664 = call signext i16 @ANIM_get_normalization_flags(ptr noundef nonnull %57) #18
  %1665 = or i16 %1664, 12
  %1666 = load ptr, ptr %57, align 8, !tbaa !320
  %1667 = getelementptr inbounds %struct.bAnimContext, ptr %57, i64 0, i32 1
  %1668 = load i16, ptr %1667, align 8, !tbaa !344
  %1669 = sext i16 %1668 to i32
  %1670 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %57, ptr noundef nonnull %58, i32 noundef 261, ptr noundef %1666, i32 noundef %1669) #18
  %1671 = load i32, ptr %1, align 8, !tbaa !188
  %1672 = icmp eq i32 %1671, 22
  br i1 %1672, label %1673, label %1687

1673:                                             ; preds = %1663
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %61) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %62) #18
  %1674 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22
  %1675 = load i32, ptr %1674, align 8, !tbaa !57
  %1676 = sitofp i32 %1675 to float
  %1677 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22, i64 1
  %1678 = load i32, ptr %1677, align 4, !tbaa !57
  %1679 = sitofp i32 %1678 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %1640, float noundef %1676, float noundef %1679, ptr noundef nonnull %61, ptr noundef nonnull %62) #18
  %1680 = load float, ptr %61, align 4, !tbaa !112
  %1681 = getelementptr inbounds %struct.Scene, ptr %83, i64 0, i32 22, i32 5
  %1682 = load i32, ptr %1681, align 8, !tbaa !252
  %1683 = sitofp i32 %1682 to float
  %1684 = fcmp ogt float %1680, %1683
  %1685 = select i1 %1684, i8 82, i8 76
  %1686 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 26
  store i8 %1685, ptr %1686, align 8, !tbaa !291
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %62) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %61) #18
  br label %1689

1687:                                             ; preds = %1663
  %1688 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 26
  store i8 66, ptr %1688, align 8, !tbaa !291
  br label %1689

1689:                                             ; preds = %1687, %1673
  %1690 = load ptr, ptr %58, align 8, !tbaa !63
  %1691 = icmp eq ptr %1690, null
  br i1 %1691, label %1786, label %1692

1692:                                             ; preds = %1689
  %1693 = getelementptr inbounds %struct.Scene, ptr %83, i64 0, i32 22, i32 5
  %1694 = getelementptr inbounds %struct.Scene, ptr %83, i64 0, i32 22, i32 5
  %1695 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 26
  %1696 = icmp eq i8 %1646, 0
  %1697 = icmp eq i8 %1660, 0
  br label %1698

1698:                                             ; preds = %1692, %1782
  %1699 = phi ptr [ %1690, %1692 ], [ %1784, %1782 ]
  %1700 = phi i32 [ 0, %1692 ], [ %1783, %1782 ]
  %1701 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %57, ptr noundef nonnull %1699) #18
  %1702 = getelementptr inbounds %struct.bAnimListElem, ptr %1699, i64 0, i32 8
  %1703 = load ptr, ptr %1702, align 8, !tbaa !219
  %1704 = icmp eq ptr %1701, null
  br i1 %1704, label %1709, label %1705

1705:                                             ; preds = %1698
  %1706 = load i32, ptr %1693, align 8, !tbaa !252
  %1707 = sitofp i32 %1706 to float
  %1708 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %1701, float noundef %1707, i16 noundef signext 1) #18
  br label %1712

1709:                                             ; preds = %1698
  %1710 = load i32, ptr %1694, align 8, !tbaa !252
  %1711 = sitofp i32 %1710 to float
  br label %1712

1712:                                             ; preds = %1709, %1705
  %1713 = phi float [ %1708, %1705 ], [ %1711, %1709 ]
  %1714 = getelementptr inbounds %struct.FCurve, ptr %1703, i64 0, i32 5
  %1715 = load ptr, ptr %1714, align 8, !tbaa !221
  %1716 = icmp eq ptr %1715, null
  br i1 %1716, label %1782, label %1717

1717:                                             ; preds = %1712
  %1718 = getelementptr inbounds %struct.FCurve, ptr %1703, i64 0, i32 7
  %1719 = load i32, ptr %1718, align 8, !tbaa !223
  %1720 = icmp eq i32 %1719, 0
  br i1 %1720, label %1782, label %1721

1721:                                             ; preds = %1717
  %1722 = load i8, ptr %1695, align 8, !tbaa !291
  br label %1723

1723:                                             ; preds = %1721, %1777
  %1724 = phi ptr [ %1715, %1721 ], [ %1780, %1777 ]
  %1725 = phi i32 [ %1700, %1721 ], [ %1778, %1777 ]
  %1726 = phi i32 [ 0, %1721 ], [ %1779, %1777 ]
  %1727 = getelementptr inbounds [3 x [3 x float]], ptr %1724, i64 0, i64 1
  %1728 = load float, ptr %1727, align 4, !tbaa !112
  switch i8 %1722, label %1731 [
    i8 66, label %1735
    i8 82, label %1729
  ]

1729:                                             ; preds = %1723
  %1730 = fcmp oge float %1728, %1713
  br label %1733

1731:                                             ; preds = %1723
  %1732 = fcmp ole float %1728, %1713
  br label %1733

1733:                                             ; preds = %1731, %1729
  %1734 = phi i1 [ %1730, %1729 ], [ %1732, %1731 ]
  br i1 %1734, label %1735, label %1777

1735:                                             ; preds = %1723, %1733
  %1736 = getelementptr inbounds %struct.BezTriple, ptr %1724, i64 0, i32 8
  %1737 = load i8, ptr %1736, align 4, !tbaa !379
  %1738 = and i8 %1737, 1
  br i1 %1650, label %1739, label %1743

1739:                                             ; preds = %1735
  %1740 = getelementptr inbounds %struct.BezTriple, ptr %1724, i64 0, i32 7
  %1741 = load i8, ptr %1740, align 1, !tbaa !380
  %1742 = and i8 %1741, 1
  br label %1743

1743:                                             ; preds = %1739, %1735
  %1744 = phi i8 [ %1742, %1739 ], [ %1738, %1735 ]
  br i1 %1650, label %1745, label %1749

1745:                                             ; preds = %1743
  %1746 = getelementptr inbounds %struct.BezTriple, ptr %1724, i64 0, i32 9
  %1747 = load i8, ptr %1746, align 1, !tbaa !381
  %1748 = and i8 %1747, 1
  br label %1749

1749:                                             ; preds = %1745, %1743
  %1750 = phi i8 [ %1748, %1745 ], [ %1738, %1743 ]
  br i1 %1696, label %1760, label %1751

1751:                                             ; preds = %1749
  %1752 = icmp eq i8 %1738, 0
  br i1 %1752, label %1755, label %1753

1753:                                             ; preds = %1751
  %1754 = add nsw i32 %1725, 1
  br label %1777

1755:                                             ; preds = %1751
  %1756 = zext nneg i8 %1744 to i32
  %1757 = add nsw i32 %1725, %1756
  %1758 = zext nneg i8 %1750 to i32
  %1759 = add nsw i32 %1757, %1758
  br label %1777

1760:                                             ; preds = %1749
  br i1 %1697, label %1770, label %1761

1761:                                             ; preds = %1760
  %1762 = getelementptr inbounds %struct.BezTriple, ptr %1724, i64 0, i32 4
  %1763 = load i8, ptr %1762, align 4, !tbaa !228
  %1764 = icmp eq i8 %1763, 2
  br i1 %1764, label %1765, label %1777

1765:                                             ; preds = %1761
  %1766 = zext nneg i8 %1744 to i32
  %1767 = add nsw i32 %1725, %1766
  %1768 = zext nneg i8 %1750 to i32
  %1769 = add nsw i32 %1767, %1768
  br label %1777

1770:                                             ; preds = %1760
  %1771 = zext nneg i8 %1744 to i32
  %1772 = zext nneg i8 %1738 to i32
  %1773 = zext nneg i8 %1750 to i32
  %1774 = add i32 %1725, %1772
  %1775 = add i32 %1774, %1771
  %1776 = add nsw i32 %1775, %1773
  br label %1777

1777:                                             ; preds = %1770, %1765, %1761, %1755, %1753, %1733
  %1778 = phi i32 [ %1725, %1733 ], [ %1754, %1753 ], [ %1725, %1761 ], [ %1759, %1755 ], [ %1769, %1765 ], [ %1776, %1770 ]
  %1779 = add nuw nsw i32 %1726, 1
  %1780 = getelementptr inbounds %struct.BezTriple, ptr %1724, i64 1
  %1781 = icmp eq i32 %1779, %1719
  br i1 %1781, label %1782, label %1723, !llvm.loop !503

1782:                                             ; preds = %1777, %1717, %1712
  %1783 = phi i32 [ %1700, %1712 ], [ %1700, %1717 ], [ %1778, %1777 ]
  %1784 = load ptr, ptr %1699, align 8, !tbaa !63
  %1785 = icmp eq ptr %1784, null
  br i1 %1785, label %1786, label %1698, !llvm.loop !504

1786:                                             ; preds = %1782, %1689
  %1787 = phi i32 [ 0, %1689 ], [ %1783, %1782 ]
  %1788 = icmp eq i32 %1787, 0
  br i1 %1788, label %2072, label %1789

1789:                                             ; preds = %1786
  %1790 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 %1787, ptr %1790, align 8, !tbaa !34
  %1791 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %1792 = sext i32 %1787 to i64
  %1793 = mul nsw i64 %1792, 224
  %1794 = call ptr %1791(i64 noundef %1793, ptr noundef nonnull @.str.34) #18
  %1795 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %1794, ptr %1795, align 8, !tbaa !48
  %1796 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %1797 = load i32, ptr %1790, align 8, !tbaa !34
  %1798 = sext i32 %1797 to i64
  %1799 = mul nsw i64 %1798, 56
  %1800 = call ptr %1796(i64 noundef %1799, ptr noundef nonnull @.str.35) #18
  %1801 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 12
  store ptr %1800, ptr %1801, align 8, !tbaa !168
  %1802 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %1803 = load i32, ptr %1790, align 8, !tbaa !34
  %1804 = sext i32 %1803 to i64
  %1805 = shl nsw i64 %1804, 2
  %1806 = call ptr %1802(i64 noundef %1805, ptr noundef nonnull @.str.36) #18
  %1807 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  store ptr %1806, ptr %1807, align 8, !tbaa !96
  %1808 = load i32, ptr %1631, align 4, !tbaa !54
  %1809 = or i32 %1808, 131072
  store i32 %1809, ptr %1631, align 4, !tbaa !54
  %1810 = load ptr, ptr %1795, align 8, !tbaa !48
  %1811 = load ptr, ptr %1801, align 8, !tbaa !168
  call void @unit_m3(ptr noundef nonnull %59) #18
  call void @unit_m3(ptr noundef nonnull %60) #18
  %1812 = load i32, ptr %1, align 8, !tbaa !188
  %1813 = and i32 %1812, -2
  %1814 = icmp eq i32 %1813, 2
  br i1 %1814, label %1815, label %1862

1815:                                             ; preds = %1789
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %63) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %64) #18
  call void @UI_view2d_scale_get(ptr noundef nonnull %1640, ptr noundef nonnull %63, ptr noundef nonnull %64) #18
  %1816 = load float, ptr %63, align 4, !tbaa !112
  %1817 = load float, ptr %59, align 16, !tbaa !112
  %1818 = fmul float %1816, %1817
  store float %1818, ptr %59, align 16, !tbaa !112
  %1819 = getelementptr inbounds float, ptr %59, i64 1
  %1820 = load float, ptr %1819, align 4, !tbaa !112
  %1821 = fmul float %1816, %1820
  store float %1821, ptr %1819, align 4, !tbaa !112
  %1822 = getelementptr inbounds float, ptr %59, i64 2
  %1823 = load float, ptr %1822, align 8, !tbaa !112
  %1824 = fmul float %1816, %1823
  store float %1824, ptr %1822, align 8, !tbaa !112
  %1825 = getelementptr inbounds [3 x [3 x float]], ptr %59, i64 0, i64 1
  %1826 = load float, ptr %64, align 4, !tbaa !112
  %1827 = load float, ptr %1825, align 4, !tbaa !112
  %1828 = fmul float %1826, %1827
  store float %1828, ptr %1825, align 4, !tbaa !112
  %1829 = getelementptr inbounds [3 x [3 x float]], ptr %59, i64 0, i64 1, i64 1
  %1830 = load float, ptr %1829, align 16, !tbaa !112
  %1831 = fmul float %1826, %1830
  store float %1831, ptr %1829, align 16, !tbaa !112
  %1832 = getelementptr inbounds [3 x [3 x float]], ptr %59, i64 0, i64 1, i64 2
  %1833 = load float, ptr %1832, align 4, !tbaa !112
  %1834 = fmul float %1826, %1833
  store float %1834, ptr %1832, align 4, !tbaa !112
  %1835 = call float @llvm.fabs.f32(float %1816)
  %1836 = fcmp ult float %1835, 0x3E80000000000000
  br i1 %1836, label %1847, label %1837

1837:                                             ; preds = %1815
  %1838 = fdiv float 1.000000e+00, %1816
  %1839 = load float, ptr %60, align 16, !tbaa !112
  %1840 = fmul float %1838, %1839
  store float %1840, ptr %60, align 16, !tbaa !112
  %1841 = getelementptr inbounds float, ptr %60, i64 1
  %1842 = load float, ptr %1841, align 4, !tbaa !112
  %1843 = fmul float %1838, %1842
  store float %1843, ptr %1841, align 4, !tbaa !112
  %1844 = getelementptr inbounds float, ptr %60, i64 2
  %1845 = load float, ptr %1844, align 8, !tbaa !112
  %1846 = fmul float %1838, %1845
  store float %1846, ptr %1844, align 8, !tbaa !112
  br label %1847

1847:                                             ; preds = %1837, %1815
  %1848 = call float @llvm.fabs.f32(float %1826)
  %1849 = fcmp ult float %1848, 0x3E80000000000000
  br i1 %1849, label %1861, label %1850

1850:                                             ; preds = %1847
  %1851 = getelementptr inbounds [3 x [3 x float]], ptr %60, i64 0, i64 1
  %1852 = fdiv float 1.000000e+00, %1826
  %1853 = load float, ptr %1851, align 4, !tbaa !112
  %1854 = fmul float %1852, %1853
  store float %1854, ptr %1851, align 4, !tbaa !112
  %1855 = getelementptr inbounds [3 x [3 x float]], ptr %60, i64 0, i64 1, i64 1
  %1856 = load float, ptr %1855, align 16, !tbaa !112
  %1857 = fmul float %1852, %1856
  store float %1857, ptr %1855, align 16, !tbaa !112
  %1858 = getelementptr inbounds [3 x [3 x float]], ptr %60, i64 0, i64 1, i64 2
  %1859 = load float, ptr %1858, align 4, !tbaa !112
  %1860 = fmul float %1852, %1859
  store float %1860, ptr %1858, align 4, !tbaa !112
  br label %1861

1861:                                             ; preds = %1850, %1847
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %64) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %63) #18
  br label %1862

1862:                                             ; preds = %1861, %1789
  %1863 = load ptr, ptr %58, align 8, !tbaa !63
  %1864 = icmp eq ptr %1863, null
  br i1 %1864, label %2072, label %1865

1865:                                             ; preds = %1862
  %1866 = getelementptr inbounds %struct.Scene, ptr %83, i64 0, i32 22, i32 5
  %1867 = getelementptr inbounds %struct.Scene, ptr %83, i64 0, i32 22, i32 5
  %1868 = getelementptr inbounds %struct.bAnimContext, ptr %57, i64 0, i32 9
  %1869 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 26
  %1870 = icmp ne i8 %1646, 0
  %1871 = icmp ne i8 %1660, 0
  br label %1872

1872:                                             ; preds = %1865, %2066
  %1873 = phi ptr [ %1863, %1865 ], [ %2070, %2066 ]
  %1874 = phi ptr [ %1810, %1865 ], [ %2069, %2066 ]
  %1875 = phi ptr [ %1811, %1865 ], [ %2068, %2066 ]
  %1876 = phi ptr [ %1806, %1865 ], [ %2067, %2066 ]
  %1877 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %57, ptr noundef nonnull %1873) #18
  %1878 = getelementptr inbounds %struct.bAnimListElem, ptr %1873, i64 0, i32 8
  %1879 = load ptr, ptr %1878, align 8, !tbaa !219
  %1880 = getelementptr inbounds %struct.FCurve, ptr %1879, i64 0, i32 9
  %1881 = load i16, ptr %1880, align 8, !tbaa !265
  %1882 = lshr i16 %1881, 11
  %1883 = trunc i16 %1882 to i8
  %1884 = and i8 %1883, 1
  %1885 = icmp eq ptr %1877, null
  br i1 %1885, label %1890, label %1886

1886:                                             ; preds = %1872
  %1887 = load i32, ptr %1866, align 8, !tbaa !252
  %1888 = sitofp i32 %1887 to float
  %1889 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %1877, float noundef %1888, i16 noundef signext 1) #18
  br label %1893

1890:                                             ; preds = %1872
  %1891 = load i32, ptr %1867, align 8, !tbaa !252
  %1892 = sitofp i32 %1891 to float
  br label %1893

1893:                                             ; preds = %1890, %1886
  %1894 = phi float [ %1889, %1886 ], [ %1892, %1890 ]
  %1895 = getelementptr inbounds %struct.FCurve, ptr %1879, i64 0, i32 5
  %1896 = load ptr, ptr %1895, align 8, !tbaa !221
  %1897 = icmp eq ptr %1896, null
  br i1 %1897, label %2066, label %1898

1898:                                             ; preds = %1893
  %1899 = load ptr, ptr %1868, align 8, !tbaa !505
  %1900 = getelementptr inbounds %struct.bAnimListElem, ptr %1873, i64 0, i32 9
  %1901 = load ptr, ptr %1900, align 8, !tbaa !486
  %1902 = load ptr, ptr %1878, align 8, !tbaa !219
  %1903 = call float @ANIM_unit_mapping_get_factor(ptr noundef %1899, ptr noundef %1901, ptr noundef %1902, i16 noundef signext %1665) #18
  %1904 = getelementptr inbounds %struct.FCurve, ptr %1879, i64 0, i32 7
  %1905 = load i32, ptr %1904, align 8, !tbaa !223
  %1906 = icmp eq i32 %1905, 0
  br i1 %1906, label %2062, label %1907

1907:                                             ; preds = %1898
  %1908 = load ptr, ptr %1895, align 8, !tbaa !221
  br label %1909

1909:                                             ; preds = %1907, %2054
  %1910 = phi ptr [ %2057, %2054 ], [ %1874, %1907 ]
  %1911 = phi ptr [ %2056, %2054 ], [ %1875, %1907 ]
  %1912 = phi ptr [ %2055, %2054 ], [ %1876, %1907 ]
  %1913 = phi ptr [ %2059, %2054 ], [ %1908, %1907 ]
  %1914 = phi i32 [ %2058, %2054 ], [ 0, %1907 ]
  %1915 = load i8, ptr %1869, align 8, !tbaa !291
  %1916 = getelementptr inbounds [3 x [3 x float]], ptr %1913, i64 0, i64 1
  %1917 = load float, ptr %1916, align 4, !tbaa !112
  switch i8 %1915, label %1920 [
    i8 66, label %1924
    i8 82, label %1918
  ]

1918:                                             ; preds = %1909
  %1919 = fcmp oge float %1917, %1894
  br label %1922

1920:                                             ; preds = %1909
  %1921 = fcmp ole float %1917, %1894
  br label %1922

1922:                                             ; preds = %1920, %1918
  %1923 = phi i1 [ %1919, %1918 ], [ %1921, %1920 ]
  br i1 %1923, label %1924, label %2054

1924:                                             ; preds = %1909, %1922
  %1925 = getelementptr inbounds %struct.BezTriple, ptr %1913, i64 0, i32 8
  %1926 = load i8, ptr %1925, align 4, !tbaa !379
  %1927 = and i8 %1926, 1
  br i1 %1650, label %1928, label %1932

1928:                                             ; preds = %1924
  %1929 = getelementptr inbounds %struct.BezTriple, ptr %1913, i64 0, i32 7
  %1930 = load i8, ptr %1929, align 1, !tbaa !380
  %1931 = and i8 %1930, 1
  br label %1932

1932:                                             ; preds = %1928, %1924
  %1933 = phi i8 [ %1931, %1928 ], [ %1927, %1924 ]
  br i1 %1650, label %1934, label %1938

1934:                                             ; preds = %1932
  %1935 = getelementptr inbounds %struct.BezTriple, ptr %1913, i64 0, i32 9
  %1936 = load i8, ptr %1935, align 1, !tbaa !381
  %1937 = and i8 %1936, 1
  br label %1938

1938:                                             ; preds = %1934, %1932
  %1939 = phi i8 [ %1937, %1934 ], [ %1927, %1932 ]
  %1940 = icmp ne i8 %1927, 0
  %1941 = select i1 %1870, i1 %1940, i1 false
  br i1 %1941, label %1988, label %1942

1942:                                             ; preds = %1938
  %1943 = icmp eq i8 %1933, 0
  br i1 %1943, label %1961, label %1944

1944:                                             ; preds = %1942
  %1945 = getelementptr inbounds %struct.TransData, ptr %1910, i64 0, i32 16
  %1946 = load i32, ptr %1945, align 8, !tbaa !49
  %1947 = or i32 %1946, 4096
  store i32 %1947, ptr %1945, align 8, !tbaa !49
  %1948 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !63
  %1949 = call ptr %1948(i64 noundef 24, ptr noundef nonnull @.str.37) #18
  %1950 = getelementptr inbounds %struct.TransData, ptr %1910, i64 0, i32 14
  store ptr %1949, ptr %1950, align 8, !tbaa !239
  %1951 = getelementptr inbounds %struct.BezTriple, ptr %1913, i64 0, i32 5
  %1952 = load i8, ptr %1951, align 1, !tbaa !506
  store i8 %1952, ptr %1949, align 8, !tbaa !507
  %1953 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %1949, i64 0, i32 2
  store ptr %1951, ptr %1953, align 8, !tbaa !240
  %1954 = getelementptr inbounds %struct.BezTriple, ptr %1913, i64 0, i32 6
  %1955 = load i8, ptr %1954, align 2, !tbaa !508
  %1956 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %1949, i64 0, i32 1
  store i8 %1955, ptr %1956, align 1, !tbaa !509
  %1957 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %1949, i64 0, i32 3
  store ptr %1954, ptr %1957, align 8, !tbaa !242
  %1958 = getelementptr inbounds %struct.TransData, ptr %1910, i64 1
  %1959 = getelementptr inbounds %struct.TransData2D, ptr %1911, i64 1
  %1960 = getelementptr inbounds %struct.TransDataGraph, ptr %1912, i64 1
  call fastcc void @bezt_to_transdata(ptr noundef %1910, ptr noundef %1911, ptr noundef %1912, ptr noundef %1877, ptr noundef %1913, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext %1884, ptr noundef nonnull %59, ptr noundef nonnull %60, float noundef %1903)
  br label %1961

1961:                                             ; preds = %1944, %1942
  %1962 = phi ptr [ %1960, %1944 ], [ %1912, %1942 ]
  %1963 = phi ptr [ %1959, %1944 ], [ %1911, %1942 ]
  %1964 = phi ptr [ %1958, %1944 ], [ %1910, %1942 ]
  %1965 = phi ptr [ %1949, %1944 ], [ null, %1942 ]
  %1966 = icmp eq i8 %1939, 0
  br i1 %1966, label %1988, label %1967

1967:                                             ; preds = %1961
  %1968 = icmp eq ptr %1965, null
  br i1 %1968, label %1969, label %1983

1969:                                             ; preds = %1967
  %1970 = getelementptr inbounds %struct.TransData, ptr %1964, i64 0, i32 16
  %1971 = load i32, ptr %1970, align 8, !tbaa !49
  %1972 = or i32 %1971, 4096
  store i32 %1972, ptr %1970, align 8, !tbaa !49
  %1973 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !63
  %1974 = call ptr %1973(i64 noundef 24, ptr noundef nonnull @.str.37) #18
  %1975 = getelementptr inbounds %struct.TransData, ptr %1964, i64 0, i32 14
  store ptr %1974, ptr %1975, align 8, !tbaa !239
  %1976 = getelementptr inbounds %struct.BezTriple, ptr %1913, i64 0, i32 5
  %1977 = load i8, ptr %1976, align 1, !tbaa !506
  store i8 %1977, ptr %1974, align 8, !tbaa !507
  %1978 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %1974, i64 0, i32 2
  store ptr %1976, ptr %1978, align 8, !tbaa !240
  %1979 = getelementptr inbounds %struct.BezTriple, ptr %1913, i64 0, i32 6
  %1980 = load i8, ptr %1979, align 2, !tbaa !508
  %1981 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %1974, i64 0, i32 1
  store i8 %1980, ptr %1981, align 1, !tbaa !509
  %1982 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %1974, i64 0, i32 3
  store ptr %1979, ptr %1982, align 8, !tbaa !242
  br label %1983

1983:                                             ; preds = %1969, %1967
  %1984 = phi ptr [ %1974, %1969 ], [ %1965, %1967 ]
  %1985 = getelementptr inbounds %struct.TransData, ptr %1964, i64 1
  %1986 = getelementptr inbounds %struct.TransData2D, ptr %1963, i64 1
  %1987 = getelementptr inbounds %struct.TransDataGraph, ptr %1962, i64 1
  call fastcc void @bezt_to_transdata(ptr noundef %1964, ptr noundef %1963, ptr noundef %1962, ptr noundef %1877, ptr noundef %1913, i32 noundef 2, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext %1884, ptr noundef nonnull %59, ptr noundef nonnull %60, float noundef %1903)
  br label %1988

1988:                                             ; preds = %1983, %1961, %1938
  %1989 = phi ptr [ %1912, %1938 ], [ %1987, %1983 ], [ %1962, %1961 ]
  %1990 = phi ptr [ %1911, %1938 ], [ %1986, %1983 ], [ %1963, %1961 ]
  %1991 = phi ptr [ %1910, %1938 ], [ %1985, %1983 ], [ %1964, %1961 ]
  %1992 = phi ptr [ null, %1938 ], [ %1984, %1983 ], [ %1965, %1961 ]
  %1993 = icmp eq i8 %1927, 0
  %1994 = or i1 %1871, %1993
  br i1 %1994, label %2033, label %1995

1995:                                             ; preds = %1988
  br i1 %1870, label %1996, label %2008

1996:                                             ; preds = %1995
  %1997 = icmp eq i8 %1933, 0
  br i1 %1997, label %2002, label %1998

1998:                                             ; preds = %1996
  %1999 = getelementptr inbounds %struct.TransData, ptr %1991, i64 0, i32 16
  %2000 = load i32, ptr %1999, align 8, !tbaa !49
  %2001 = or i32 %2000, 131072
  store i32 %2001, ptr %1999, align 8, !tbaa !49
  br label %2002

2002:                                             ; preds = %1998, %1996
  %2003 = icmp eq i8 %1939, 0
  br i1 %2003, label %2008, label %2004

2004:                                             ; preds = %2002
  %2005 = getelementptr inbounds %struct.TransData, ptr %1991, i64 0, i32 16
  %2006 = load i32, ptr %2005, align 8, !tbaa !49
  %2007 = or i32 %2006, 262144
  store i32 %2007, ptr %2005, align 8, !tbaa !49
  br label %2008

2008:                                             ; preds = %2004, %2002, %1995
  %2009 = icmp eq i8 %1933, 0
  %2010 = icmp eq i8 %1939, 0
  %2011 = select i1 %2009, i1 true, i1 %2010
  %2012 = icmp eq ptr %1992, null
  %2013 = and i1 %2011, %2012
  br i1 %2013, label %2014, label %2028

2014:                                             ; preds = %2008
  %2015 = getelementptr inbounds %struct.TransData, ptr %1991, i64 0, i32 16
  %2016 = load i32, ptr %2015, align 8, !tbaa !49
  %2017 = or i32 %2016, 4096
  store i32 %2017, ptr %2015, align 8, !tbaa !49
  %2018 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !63
  %2019 = call ptr %2018(i64 noundef 24, ptr noundef nonnull @.str.37) #18
  %2020 = getelementptr inbounds %struct.TransData, ptr %1991, i64 0, i32 14
  store ptr %2019, ptr %2020, align 8, !tbaa !239
  %2021 = getelementptr inbounds %struct.BezTriple, ptr %1913, i64 0, i32 5
  %2022 = load i8, ptr %2021, align 1, !tbaa !506
  store i8 %2022, ptr %2019, align 8, !tbaa !507
  %2023 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %2019, i64 0, i32 2
  store ptr %2021, ptr %2023, align 8, !tbaa !240
  %2024 = getelementptr inbounds %struct.BezTriple, ptr %1913, i64 0, i32 6
  %2025 = load i8, ptr %2024, align 2, !tbaa !508
  %2026 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %2019, i64 0, i32 1
  store i8 %2025, ptr %2026, align 1, !tbaa !509
  %2027 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %2019, i64 0, i32 3
  store ptr %2024, ptr %2027, align 8, !tbaa !242
  br label %2028

2028:                                             ; preds = %2014, %2008
  %2029 = phi ptr [ %2019, %2014 ], [ %1992, %2008 ]
  %2030 = getelementptr inbounds %struct.TransData, ptr %1991, i64 1
  %2031 = getelementptr inbounds %struct.TransData2D, ptr %1990, i64 1
  %2032 = getelementptr inbounds %struct.TransDataGraph, ptr %1989, i64 1
  call fastcc void @bezt_to_transdata(ptr noundef %1991, ptr noundef %1990, ptr noundef %1989, ptr noundef %1877, ptr noundef %1913, i32 noundef 1, i8 noundef zeroext %1927, i8 noundef zeroext 0, i8 noundef zeroext %1884, ptr noundef nonnull %59, ptr noundef nonnull %60, float noundef %1903)
  br label %2033

2033:                                             ; preds = %2028, %1988
  %2034 = phi ptr [ %1989, %1988 ], [ %2032, %2028 ]
  %2035 = phi ptr [ %1990, %1988 ], [ %2031, %2028 ]
  %2036 = phi ptr [ %1991, %1988 ], [ %2030, %2028 ]
  %2037 = phi ptr [ %1992, %1988 ], [ %2029, %2028 ]
  %2038 = getelementptr inbounds %struct.BezTriple, ptr %1913, i64 0, i32 5
  %2039 = load i8, ptr %2038, align 1, !tbaa !506
  switch i8 %2039, label %2054 [
    i8 1, label %2040
    i8 4, label %2040
  ]

2040:                                             ; preds = %2033, %2033
  %2041 = getelementptr inbounds %struct.BezTriple, ptr %1913, i64 0, i32 6
  %2042 = load i8, ptr %2041, align 2, !tbaa !508
  switch i8 %2042, label %2054 [
    i8 1, label %2043
    i8 4, label %2043
  ]

2043:                                             ; preds = %2040, %2040
  %2044 = load i32, ptr %1, align 8, !tbaa !188
  %2045 = and i32 %2044, -2
  %2046 = icmp eq i32 %2045, 2
  br i1 %2046, label %2047, label %2054

2047:                                             ; preds = %2043
  %2048 = icmp ne ptr %2037, null
  %2049 = icmp ne i8 %1933, 0
  %2050 = select i1 %2048, i1 %2049, i1 false
  %2051 = icmp ne i8 %1939, 0
  %2052 = select i1 %2050, i1 %2051, i1 false
  br i1 %2052, label %2053, label %2054

2053:                                             ; preds = %2047
  store i8 3, ptr %2038, align 1, !tbaa !506
  store i8 3, ptr %2041, align 2, !tbaa !508
  br label %2054

2054:                                             ; preds = %2053, %2047, %2043, %2040, %2033, %1922
  %2055 = phi ptr [ %1912, %1922 ], [ %2034, %2043 ], [ %2034, %2040 ], [ %2034, %2033 ], [ %2034, %2047 ], [ %2034, %2053 ]
  %2056 = phi ptr [ %1911, %1922 ], [ %2035, %2043 ], [ %2035, %2040 ], [ %2035, %2033 ], [ %2035, %2047 ], [ %2035, %2053 ]
  %2057 = phi ptr [ %1910, %1922 ], [ %2036, %2043 ], [ %2036, %2040 ], [ %2036, %2033 ], [ %2036, %2047 ], [ %2036, %2053 ]
  %2058 = add nuw nsw i32 %1914, 1
  %2059 = getelementptr inbounds %struct.BezTriple, ptr %1913, i64 1
  %2060 = load i32, ptr %1904, align 8, !tbaa !223
  %2061 = icmp ult i32 %2058, %2060
  br i1 %2061, label %1909, label %2062, !llvm.loop !510

2062:                                             ; preds = %2054, %1898
  %2063 = phi ptr [ %1876, %1898 ], [ %2055, %2054 ]
  %2064 = phi ptr [ %1875, %1898 ], [ %2056, %2054 ]
  %2065 = phi ptr [ %1874, %1898 ], [ %2057, %2054 ]
  call void @testhandles_fcurve(ptr noundef %1879, i8 noundef zeroext %1651) #18
  br label %2066

2066:                                             ; preds = %2062, %1893
  %2067 = phi ptr [ %2063, %2062 ], [ %1876, %1893 ]
  %2068 = phi ptr [ %2064, %2062 ], [ %1875, %1893 ]
  %2069 = phi ptr [ %2065, %2062 ], [ %1874, %1893 ]
  %2070 = load ptr, ptr %1873, align 8, !tbaa !63
  %2071 = icmp eq ptr %2070, null
  br i1 %2071, label %2072, label %1872, !llvm.loop !511

2072:                                             ; preds = %2066, %1862, %1786
  call void @ANIM_animdata_freelist(ptr noundef nonnull %58) #18
  br label %2073

2073:                                             ; preds = %2072, %1659
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %60) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %59) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %58) #18
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %57) #18
  br label %6050

2074:                                             ; preds = %381
  %2075 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %2076 = load i32, ptr %2075, align 4, !tbaa !54
  %2077 = or i32 %2076, 32832
  store i32 %2077, ptr %2075, align 4, !tbaa !54
  %2078 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !163
  %2079 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !167
  %2080 = sitofp i32 %2079 to float
  %2081 = fmul float %2078, %2080
  %2082 = fdiv float %2081, 7.200000e+01
  %2083 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %2084 = load ptr, ptr %2083, align 8, !tbaa !175
  %2085 = getelementptr inbounds %struct.ScrArea, ptr %2084, i64 0, i32 19
  %2086 = load ptr, ptr %2085, align 8, !tbaa !197
  %2087 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 0, ptr %2087, align 8, !tbaa !34
  %2088 = getelementptr inbounds %struct.SpaceNode, ptr %2086, i64 0, i32 19
  %2089 = load ptr, ptr %2088, align 8, !tbaa !294
  %2090 = icmp eq ptr %2089, null
  br i1 %2090, label %2192, label %2091

2091:                                             ; preds = %2074
  %2092 = and i32 %2077, -33560577
  store i32 %2092, ptr %2075, align 4, !tbaa !54
  %2093 = getelementptr inbounds %struct.bNodeTree, ptr %2089, i64 0, i32 7
  %2094 = load ptr, ptr %2093, align 8, !tbaa !63
  %2095 = icmp eq ptr %2094, null
  br i1 %2095, label %2121, label %2096

2096:                                             ; preds = %2091, %2118
  %2097 = phi ptr [ %2119, %2118 ], [ %2094, %2091 ]
  %2098 = getelementptr inbounds %struct.bNode, ptr %2097, i64 0, i32 7
  %2099 = load i32, ptr %2098, align 8, !tbaa !300
  %2100 = and i32 %2099, 1
  %2101 = icmp eq i32 %2100, 0
  br i1 %2101, label %2116, label %2102

2102:                                             ; preds = %2096, %2107
  %2103 = phi ptr [ %2105, %2107 ], [ %2097, %2096 ]
  %2104 = getelementptr inbounds %struct.bNode, ptr %2103, i64 0, i32 19
  %2105 = load ptr, ptr %2104, align 8, !tbaa !170
  %2106 = icmp eq ptr %2105, null
  br i1 %2106, label %2112, label %2107

2107:                                             ; preds = %2102
  %2108 = getelementptr inbounds %struct.bNode, ptr %2105, i64 0, i32 7
  %2109 = load i32, ptr %2108, align 8, !tbaa !300
  %2110 = and i32 %2109, 8192
  %2111 = icmp eq i32 %2110, 0
  br i1 %2111, label %2102, label %2116, !llvm.loop !512

2112:                                             ; preds = %2102
  %2113 = or i32 %2099, 8192
  store i32 %2113, ptr %2098, align 8, !tbaa !300
  %2114 = load i32, ptr %2087, align 8, !tbaa !34
  %2115 = add nsw i32 %2114, 1
  store i32 %2115, ptr %2087, align 8, !tbaa !34
  br label %2118

2116:                                             ; preds = %2107, %2096
  %2117 = and i32 %2099, -8193
  store i32 %2117, ptr %2098, align 8, !tbaa !300
  br label %2118

2118:                                             ; preds = %2116, %2112
  %2119 = load ptr, ptr %2097, align 8, !tbaa !63
  %2120 = icmp eq ptr %2119, null
  br i1 %2120, label %2121, label %2096, !llvm.loop !513

2121:                                             ; preds = %2118, %2091
  %2122 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %2123 = load i32, ptr %2087, align 8, !tbaa !34
  %2124 = sext i32 %2123 to i64
  %2125 = mul nsw i64 %2124, 224
  %2126 = tail call ptr %2122(i64 noundef %2125, ptr noundef nonnull @.str.38) #18
  %2127 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %2126, ptr %2127, align 8, !tbaa !48
  %2128 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %2129 = load i32, ptr %2087, align 8, !tbaa !34
  %2130 = sext i32 %2129 to i64
  %2131 = mul nsw i64 %2130, 56
  %2132 = tail call ptr %2128(i64 noundef %2131, ptr noundef nonnull @.str.39) #18
  %2133 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 12
  store ptr %2132, ptr %2133, align 8, !tbaa !168
  %2134 = load ptr, ptr %2088, align 8, !tbaa !294
  %2135 = getelementptr inbounds %struct.bNodeTree, ptr %2134, i64 0, i32 7
  %2136 = load ptr, ptr %2135, align 8, !tbaa !63
  %2137 = icmp eq ptr %2136, null
  br i1 %2137, label %2192, label %2138

2138:                                             ; preds = %2121, %2187
  %2139 = phi ptr [ %2190, %2187 ], [ %2136, %2121 ]
  %2140 = phi ptr [ %2189, %2187 ], [ %2126, %2121 ]
  %2141 = phi ptr [ %2188, %2187 ], [ %2132, %2121 ]
  %2142 = getelementptr inbounds %struct.bNode, ptr %2139, i64 0, i32 7
  %2143 = load i32, ptr %2142, align 8, !tbaa !300
  %2144 = and i32 %2143, 8192
  %2145 = icmp eq i32 %2144, 0
  br i1 %2145, label %2187, label %2146

2146:                                             ; preds = %2138
  %2147 = getelementptr inbounds %struct.TransData, ptr %2140, i64 1
  %2148 = getelementptr inbounds %struct.TransData2D, ptr %2141, i64 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %55) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %56) #18
  %2149 = getelementptr inbounds %struct.bNode, ptr %2139, i64 0, i32 19
  %2150 = load ptr, ptr %2149, align 8, !tbaa !170
  %2151 = icmp eq ptr %2150, null
  %2152 = getelementptr inbounds %struct.bNode, ptr %2139, i64 0, i32 24
  %2153 = load float, ptr %2152, align 8, !tbaa !172
  br i1 %2151, label %2157, label %2154

2154:                                             ; preds = %2146
  %2155 = getelementptr inbounds %struct.bNode, ptr %2139, i64 0, i32 25
  %2156 = load float, ptr %2155, align 4, !tbaa !173
  call void @nodeToView(ptr noundef nonnull %2150, float noundef %2153, float noundef %2156, ptr noundef nonnull %55, ptr noundef nonnull %56) #18
  br label %2160

2157:                                             ; preds = %2146
  store float %2153, ptr %55, align 4, !tbaa !112
  %2158 = getelementptr inbounds %struct.bNode, ptr %2139, i64 0, i32 25
  %2159 = load float, ptr %2158, align 4, !tbaa !173
  store float %2159, ptr %56, align 4, !tbaa !112
  br label %2160

2160:                                             ; preds = %2157, %2154
  %2161 = load float, ptr %55, align 4, !tbaa !112
  %2162 = fmul float %2082, %2161
  store float %2162, ptr %2141, align 8, !tbaa !112
  %2163 = load float, ptr %56, align 4, !tbaa !112
  %2164 = fmul float %2082, %2163
  %2165 = getelementptr inbounds [3 x float], ptr %2141, i64 0, i64 1
  store float %2164, ptr %2165, align 4, !tbaa !112
  %2166 = getelementptr inbounds [3 x float], ptr %2141, i64 0, i64 2
  store float 0.000000e+00, ptr %2166, align 8, !tbaa !112
  %2167 = getelementptr inbounds %struct.TransData2D, ptr %2141, i64 0, i32 1
  store ptr %2141, ptr %2167, align 8, !tbaa !205
  %2168 = getelementptr inbounds %struct.TransData, ptr %2140, i64 0, i32 16
  store i32 0, ptr %2168, align 8, !tbaa !49
  %2169 = getelementptr inbounds %struct.TransData, ptr %2140, i64 0, i32 3
  store ptr %2141, ptr %2169, align 8, !tbaa !209
  %2170 = getelementptr inbounds %struct.TransData, ptr %2140, i64 0, i32 4
  store float %2162, ptr %2170, align 4, !tbaa !112
  %2171 = load float, ptr %2165, align 4, !tbaa !112
  %2172 = getelementptr inbounds %struct.TransData, ptr %2140, i64 0, i32 4, i64 1
  store float %2171, ptr %2172, align 4, !tbaa !112
  %2173 = load float, ptr %2166, align 4, !tbaa !112
  %2174 = getelementptr inbounds %struct.TransData, ptr %2140, i64 0, i32 4, i64 2
  store float %2173, ptr %2174, align 4, !tbaa !112
  %2175 = load float, ptr %2141, align 8, !tbaa !112
  %2176 = getelementptr inbounds %struct.TransData, ptr %2140, i64 0, i32 7
  store float %2175, ptr %2176, align 4, !tbaa !112
  %2177 = load float, ptr %2165, align 4, !tbaa !112
  %2178 = getelementptr inbounds %struct.TransData, ptr %2140, i64 0, i32 7, i64 1
  store float %2177, ptr %2178, align 4, !tbaa !112
  %2179 = getelementptr inbounds %struct.TransData, ptr %2140, i64 0, i32 7, i64 2
  store float 0.000000e+00, ptr %2179, align 4, !tbaa !112
  %2180 = getelementptr inbounds %struct.TransData, ptr %2140, i64 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %2180, i8 0, i64 36, i1 false)
  %2181 = getelementptr inbounds %struct.TransData, ptr %2140, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %2181, align 8, !tbaa !112
  %2182 = getelementptr inbounds %struct.TransData, ptr %2140, i64 0, i32 13
  store ptr null, ptr %2182, align 8, !tbaa !372
  %2183 = getelementptr inbounds %struct.TransData, ptr %2140, i64 0, i32 5
  store ptr null, ptr %2183, align 8, !tbaa !441
  store i32 1, ptr %2168, align 8, !tbaa !49
  store float 0.000000e+00, ptr %2140, align 8, !tbaa !55
  %2184 = getelementptr inbounds %struct.TransData, ptr %2140, i64 0, i32 8
  call void @unit_m3(ptr noundef nonnull %2184) #18
  %2185 = getelementptr inbounds %struct.TransData, ptr %2140, i64 0, i32 9
  call void @unit_m3(ptr noundef nonnull %2185) #18
  %2186 = getelementptr inbounds %struct.TransData, ptr %2140, i64 0, i32 15
  store ptr %2139, ptr %2186, align 8, !tbaa !169
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %56) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %55) #18
  br label %2187

2187:                                             ; preds = %2160, %2138
  %2188 = phi ptr [ %2148, %2160 ], [ %2141, %2138 ]
  %2189 = phi ptr [ %2147, %2160 ], [ %2140, %2138 ]
  %2190 = load ptr, ptr %2139, align 8, !tbaa !63
  %2191 = icmp eq ptr %2190, null
  br i1 %2191, label %2192, label %2138, !llvm.loop !514

2192:                                             ; preds = %2187, %2121, %2074
  %2193 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  %2194 = load ptr, ptr %2193, align 8, !tbaa !48
  %2195 = icmp eq ptr %2194, null
  br i1 %2195, label %6050, label %2196

2196:                                             ; preds = %2192
  %2197 = load i32, ptr %2075, align 4, !tbaa !54
  %2198 = and i32 %2197, 2048
  %2199 = icmp eq i32 %2198, 0
  br i1 %2199, label %6050, label %2200

2200:                                             ; preds = %2196
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %54)
  %2201 = load i32, ptr %2087, align 8, !tbaa !34
  %2202 = sext i32 %2201 to i64
  %2203 = getelementptr %struct.TransData, ptr %2194, i64 %2202
  %2204 = getelementptr inbounds %struct.TransData, ptr %2203, i64 -1
  %2205 = icmp ugt ptr %2204, %2194
  br i1 %2205, label %2206, label %2231

2206:                                             ; preds = %2200, %2227
  %2207 = phi ptr [ %2229, %2227 ], [ %2204, %2200 ]
  %2208 = phi ptr [ %2228, %2227 ], [ %2194, %2200 ]
  br label %2209

2209:                                             ; preds = %2206, %2215
  %2210 = phi ptr [ %2216, %2215 ], [ %2208, %2206 ]
  %2211 = getelementptr inbounds %struct.TransData, ptr %2210, i64 0, i32 16
  %2212 = load i32, ptr %2211, align 8, !tbaa !49
  %2213 = and i32 %2212, 1
  %2214 = icmp eq i32 %2213, 0
  br i1 %2214, label %2218, label %2215

2215:                                             ; preds = %2209
  %2216 = getelementptr inbounds %struct.TransData, ptr %2210, i64 1
  %2217 = icmp eq ptr %2216, %2207
  br i1 %2217, label %2231, label %2209, !llvm.loop !444

2218:                                             ; preds = %2209, %2224
  %2219 = phi ptr [ %2225, %2224 ], [ %2207, %2209 ]
  %2220 = getelementptr inbounds %struct.TransData, ptr %2219, i64 0, i32 16
  %2221 = load i32, ptr %2220, align 8, !tbaa !49
  %2222 = and i32 %2221, 1
  %2223 = icmp eq i32 %2222, 0
  br i1 %2223, label %2224, label %2227

2224:                                             ; preds = %2218
  %2225 = getelementptr inbounds %struct.TransData, ptr %2219, i64 -1
  %2226 = icmp eq ptr %2210, %2225
  br i1 %2226, label %2231, label %2218, !llvm.loop !445

2227:                                             ; preds = %2218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %54, ptr noundef nonnull align 8 dereferenceable(224) %2210, i64 224, i1 false), !tbaa.struct !446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %2210, ptr noundef nonnull align 8 dereferenceable(224) %2219, i64 224, i1 false), !tbaa.struct !446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %2219, ptr noundef nonnull align 8 dereferenceable(224) %54, i64 224, i1 false), !tbaa.struct !446
  %2228 = getelementptr inbounds %struct.TransData, ptr %2210, i64 1
  %2229 = getelementptr inbounds %struct.TransData, ptr %2219, i64 -1
  %2230 = icmp ugt ptr %2229, %2228
  br i1 %2230, label %2206, label %2231, !llvm.loop !447

2231:                                             ; preds = %2227, %2215, %2224, %2200
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %54)
  call fastcc void @set_prop_dist(ptr noundef %1, i8 noundef zeroext 1)
  %2232 = load i32, ptr %2087, align 8, !tbaa !34
  %2233 = icmp sgt i32 %2232, 0
  br i1 %2233, label %2234, label %6050

2234:                                             ; preds = %2231
  %2235 = load ptr, ptr %2193, align 8, !tbaa !48
  %2236 = getelementptr inbounds %struct.TransData, ptr %2235, i64 0, i32 16
  %2237 = load i32, ptr %2236, align 8, !tbaa !49
  %2238 = and i32 %2237, 1
  %2239 = icmp eq i32 %2238, 0
  br i1 %2239, label %2253, label %2246

2240:                                             ; preds = %2246
  %2241 = getelementptr inbounds %struct.TransData, ptr %2247, i64 1
  %2242 = getelementptr inbounds %struct.TransData, ptr %2247, i64 1, i32 16
  %2243 = load i32, ptr %2242, align 8, !tbaa !49
  %2244 = and i32 %2243, 1
  %2245 = icmp eq i32 %2244, 0
  br i1 %2245, label %2251, label %2246, !llvm.loop !51

2246:                                             ; preds = %2234, %2240
  %2247 = phi ptr [ %2241, %2240 ], [ %2235, %2234 ]
  %2248 = phi i32 [ %2249, %2240 ], [ 0, %2234 ]
  %2249 = add nuw nsw i32 %2248, 1
  %2250 = icmp eq i32 %2249, %2232
  br i1 %2250, label %6050, label %2240, !llvm.loop !51

2251:                                             ; preds = %2240
  %2252 = icmp slt i32 %2249, %2232
  br label %2253

2253:                                             ; preds = %2251, %2234
  %2254 = phi i1 [ true, %2234 ], [ %2252, %2251 ]
  %2255 = phi i32 [ 0, %2234 ], [ %2249, %2251 ]
  %2256 = phi ptr [ %2235, %2234 ], [ %2241, %2251 ]
  br i1 %2254, label %2257, label %6050

2257:                                             ; preds = %2253
  %2258 = load i32, ptr %2075, align 4, !tbaa !54
  %2259 = and i32 %2258, 4096
  %2260 = icmp eq i32 %2259, 0
  %2261 = sub nsw i32 %2232, %2255
  %2262 = sext i32 %2261 to i64
  br i1 %2260, label %2264, label %2263

2263:                                             ; preds = %2257
  call void @qsort(ptr noundef %2256, i64 noundef %2262, i64 noundef 224, ptr noundef nonnull @trans_data_compare_dist) #18
  br label %6050

2264:                                             ; preds = %2257
  call void @qsort(ptr noundef %2256, i64 noundef %2262, i64 noundef 224, ptr noundef nonnull @trans_data_compare_rdist) #18
  br label %6050

2265:                                             ; preds = %381
  %2266 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %2267 = load i32, ptr %2266, align 4, !tbaa !54
  %2268 = or i32 %2267, 32832
  store i32 %2268, ptr %2266, align 4, !tbaa !54
  %2269 = and i32 %93, 64
  %2270 = icmp eq i32 %2269, 0
  br i1 %2270, label %2908, label %2271

2271:                                             ; preds = %2265
  %2272 = tail call ptr @CTX_wm_region(ptr noundef %0) #18
  %2273 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %2274 = tail call ptr @ED_space_clip_get_clip(ptr noundef %2273) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %44) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %45) #18
  %2275 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 0, ptr %2275, align 8, !tbaa !34
  %2276 = icmp eq ptr %2274, null
  br i1 %2276, label %2907, label %2277

2277:                                             ; preds = %2271
  %2278 = getelementptr inbounds %struct.SpaceClip, ptr %2273, i64 0, i32 9
  call void @BKE_movieclip_get_size(ptr noundef nonnull %2274, ptr noundef nonnull %2278, ptr noundef nonnull %44, ptr noundef nonnull %45) #18
  %2279 = load i32, ptr %44, align 4, !tbaa !57
  %2280 = icmp eq i32 %2279, 0
  %2281 = load i32, ptr %45, align 4
  %2282 = icmp eq i32 %2281, 0
  %2283 = select i1 %2280, i1 true, i1 %2282
  br i1 %2283, label %2907, label %2284

2284:                                             ; preds = %2277
  %2285 = getelementptr inbounds %struct.ARegion, ptr %2272, i64 0, i32 8
  %2286 = load i16, ptr %2285, align 2, !tbaa !515
  %2287 = icmp eq i16 %2286, 7
  %2288 = call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %2289 = call ptr @ED_space_clip_get_clip(ptr noundef %2288) #18
  %2290 = getelementptr inbounds %struct.MovieClip, ptr %2289, i64 0, i32 11
  %2291 = call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %2290) #18
  br i1 %2287, label %2292, label %2579

2292:                                             ; preds = %2284
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %42) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %43) #18
  %2293 = getelementptr inbounds %struct.SpaceClip, ptr %2288, i64 0, i32 9
  call void @BKE_movieclip_get_size(ptr noundef %2289, ptr noundef nonnull %2293, ptr noundef nonnull %42, ptr noundef nonnull %43) #18
  store i32 0, ptr %2275, align 8, !tbaa !34
  %2294 = getelementptr inbounds %struct.SpaceClip, ptr %2288, i64 0, i32 12
  %2295 = load i32, ptr %2294, align 8, !tbaa !308
  %2296 = and i32 %2295, 32768
  %2297 = icmp eq i32 %2296, 0
  br i1 %2297, label %2578, label %2298

2298:                                             ; preds = %2292
  %2299 = load ptr, ptr %2291, align 8, !tbaa !63
  %2300 = icmp eq ptr %2299, null
  br i1 %2300, label %2371, label %2301

2301:                                             ; preds = %2298
  %2302 = and i32 %2295, 1
  %2303 = icmp eq i32 %2302, 0
  %2304 = and i32 %2295, 2
  %2305 = icmp eq i32 %2304, 0
  br label %2306

2306:                                             ; preds = %2368, %2301
  %2307 = phi ptr [ %2299, %2301 ], [ %2369, %2368 ]
  %2308 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2307, i64 0, i32 13
  %2309 = load i32, ptr %2308, align 8, !tbaa !306
  %2310 = and i32 %2309, 32
  %2311 = icmp eq i32 %2310, 0
  br i1 %2311, label %2312, label %2368

2312:                                             ; preds = %2306
  %2313 = and i32 %2309, 1
  %2314 = icmp eq i32 %2313, 0
  br i1 %2314, label %2315, label %2330

2315:                                             ; preds = %2312
  br i1 %2303, label %2321, label %2316

2316:                                             ; preds = %2315
  %2317 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2307, i64 0, i32 14
  %2318 = load i32, ptr %2317, align 4, !tbaa !313
  %2319 = and i32 %2318, 1
  %2320 = icmp eq i32 %2319, 0
  br i1 %2320, label %2321, label %2330

2321:                                             ; preds = %2316, %2315
  br i1 %2305, label %2368, label %2322

2322:                                             ; preds = %2321
  %2323 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2307, i64 0, i32 15
  %2324 = load i32, ptr %2323, align 8, !tbaa !314
  %2325 = and i32 %2324, 1
  %2326 = icmp ne i32 %2325, 0
  %2327 = and i32 %2309, 64
  %2328 = icmp eq i32 %2327, 0
  %2329 = and i1 %2328, %2326
  br i1 %2329, label %2333, label %2368

2330:                                             ; preds = %2316, %2312
  %2331 = and i32 %2309, 64
  %2332 = icmp eq i32 %2331, 0
  br i1 %2332, label %2333, label %2368

2333:                                             ; preds = %2330, %2322
  %2334 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2307, i64 0, i32 8
  %2335 = load i32, ptr %2334, align 8, !tbaa !390
  %2336 = icmp sgt i32 %2335, 1
  br i1 %2336, label %2337, label %2368

2337:                                             ; preds = %2333
  %2338 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2307, i64 0, i32 10
  %2339 = load ptr, ptr %2338, align 8, !tbaa !391
  %2340 = getelementptr %struct.MovieTrackingMarker, ptr %2339, i64 -1, i32 5
  %2341 = zext nneg i32 %2335 to i64
  br label %2342

2342:                                             ; preds = %2365, %2337
  %2343 = phi i64 [ 1, %2337 ], [ %2366, %2365 ]
  %2344 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2339, i64 %2343, i32 5
  %2345 = load i32, ptr %2344, align 4, !tbaa !389
  %2346 = and i32 %2345, 1
  %2347 = icmp eq i32 %2346, 0
  br i1 %2347, label %2348, label %2365

2348:                                             ; preds = %2342
  %2349 = getelementptr %struct.MovieTrackingMarker, ptr %2340, i64 %2343
  %2350 = load i32, ptr %2349, align 4, !tbaa !389
  %2351 = and i32 %2350, 1
  %2352 = icmp eq i32 %2351, 0
  br i1 %2352, label %2353, label %2365

2353:                                             ; preds = %2348
  %2354 = and i32 %2345, 4
  %2355 = icmp eq i32 %2354, 0
  br i1 %2355, label %2359, label %2356

2356:                                             ; preds = %2353
  %2357 = load i32, ptr %2275, align 8, !tbaa !34
  %2358 = add nsw i32 %2357, 1
  store i32 %2358, ptr %2275, align 8, !tbaa !34
  br label %2359

2359:                                             ; preds = %2356, %2353
  %2360 = and i32 %2345, 8
  %2361 = icmp eq i32 %2360, 0
  br i1 %2361, label %2365, label %2362

2362:                                             ; preds = %2359
  %2363 = load i32, ptr %2275, align 8, !tbaa !34
  %2364 = add nsw i32 %2363, 1
  store i32 %2364, ptr %2275, align 8, !tbaa !34
  br label %2365

2365:                                             ; preds = %2362, %2359, %2348, %2342
  %2366 = add nuw nsw i64 %2343, 1
  %2367 = icmp eq i64 %2366, %2341
  br i1 %2367, label %2368, label %2342, !llvm.loop !517

2368:                                             ; preds = %2365, %2333, %2330, %2322, %2321, %2306
  %2369 = load ptr, ptr %2307, align 8, !tbaa !63
  %2370 = icmp eq ptr %2369, null
  br i1 %2370, label %2371, label %2306, !llvm.loop !518

2371:                                             ; preds = %2368, %2298
  %2372 = load i32, ptr %2275, align 8, !tbaa !34
  %2373 = icmp eq i32 %2372, 0
  br i1 %2373, label %2578, label %2374

2374:                                             ; preds = %2371
  %2375 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %2376 = sext i32 %2372 to i64
  %2377 = mul nsw i64 %2376, 224
  %2378 = call ptr %2375(i64 noundef %2377, ptr noundef nonnull @.str.40) #18
  %2379 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %2378, ptr %2379, align 8, !tbaa !48
  %2380 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %2381 = load i32, ptr %2275, align 8, !tbaa !34
  %2382 = sext i32 %2381 to i64
  %2383 = mul nsw i64 %2382, 56
  %2384 = call ptr %2380(i64 noundef %2383, ptr noundef nonnull @.str.41) #18
  %2385 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 12
  store ptr %2384, ptr %2385, align 8, !tbaa !168
  %2386 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %2387 = load i32, ptr %2275, align 8, !tbaa !34
  %2388 = sext i32 %2387 to i64
  %2389 = mul nsw i64 %2388, 112
  %2390 = call ptr %2386(i64 noundef %2389, ptr noundef nonnull @.str.42) #18
  %2391 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  store ptr %2390, ptr %2391, align 8, !tbaa !96
  %2392 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 41
  store ptr @transDataTrackingFree, ptr %2392, align 8, !tbaa !500
  %2393 = load ptr, ptr %2291, align 8, !tbaa !63
  %2394 = icmp eq ptr %2393, null
  br i1 %2394, label %2578, label %2395

2395:                                             ; preds = %2374, %2572
  %2396 = phi ptr [ %2576, %2572 ], [ %2393, %2374 ]
  %2397 = phi ptr [ %2575, %2572 ], [ %2390, %2374 ]
  %2398 = phi ptr [ %2574, %2572 ], [ %2378, %2374 ]
  %2399 = phi ptr [ %2573, %2572 ], [ %2384, %2374 ]
  %2400 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2396, i64 0, i32 13
  %2401 = load i32, ptr %2400, align 8, !tbaa !306
  %2402 = and i32 %2401, 32
  %2403 = icmp eq i32 %2402, 0
  br i1 %2403, label %2404, label %2572

2404:                                             ; preds = %2395
  %2405 = and i32 %2401, 1
  %2406 = icmp eq i32 %2405, 0
  br i1 %2406, label %2407, label %2427

2407:                                             ; preds = %2404
  %2408 = load i32, ptr %2294, align 8, !tbaa !308
  %2409 = and i32 %2408, 1
  %2410 = icmp eq i32 %2409, 0
  br i1 %2410, label %2416, label %2411

2411:                                             ; preds = %2407
  %2412 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2396, i64 0, i32 14
  %2413 = load i32, ptr %2412, align 4, !tbaa !313
  %2414 = and i32 %2413, 1
  %2415 = icmp eq i32 %2414, 0
  br i1 %2415, label %2416, label %2427

2416:                                             ; preds = %2411, %2407
  %2417 = and i32 %2408, 2
  %2418 = icmp eq i32 %2417, 0
  br i1 %2418, label %2572, label %2419

2419:                                             ; preds = %2416
  %2420 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2396, i64 0, i32 15
  %2421 = load i32, ptr %2420, align 8, !tbaa !314
  %2422 = and i32 %2421, 1
  %2423 = icmp ne i32 %2422, 0
  %2424 = and i32 %2401, 64
  %2425 = icmp eq i32 %2424, 0
  %2426 = and i1 %2425, %2423
  br i1 %2426, label %2430, label %2572

2427:                                             ; preds = %2411, %2404
  %2428 = and i32 %2401, 64
  %2429 = icmp eq i32 %2428, 0
  br i1 %2429, label %2430, label %2572

2430:                                             ; preds = %2427, %2419
  %2431 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2396, i64 0, i32 8
  %2432 = load i32, ptr %2431, align 8, !tbaa !390
  %2433 = icmp sgt i32 %2432, 1
  br i1 %2433, label %2434, label %2572

2434:                                             ; preds = %2430
  %2435 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2396, i64 0, i32 10
  br label %2436

2436:                                             ; preds = %2564, %2434
  %2437 = phi i64 [ 1, %2434 ], [ %2568, %2564 ]
  %2438 = phi ptr [ %2397, %2434 ], [ %2567, %2564 ]
  %2439 = phi ptr [ %2398, %2434 ], [ %2566, %2564 ]
  %2440 = phi ptr [ %2399, %2434 ], [ %2565, %2564 ]
  %2441 = load ptr, ptr %2435, align 8, !tbaa !391
  %2442 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2441, i64 %2437
  %2443 = add nsw i64 %2437, -1
  %2444 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2441, i64 %2443
  %2445 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2441, i64 %2437, i32 5
  %2446 = load i32, ptr %2445, align 4, !tbaa !389
  %2447 = and i32 %2446, 1
  %2448 = icmp eq i32 %2447, 0
  br i1 %2448, label %2449, label %2564

2449:                                             ; preds = %2436
  %2450 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2441, i64 %2443, i32 5
  %2451 = load i32, ptr %2450, align 4, !tbaa !389
  %2452 = and i32 %2451, 1
  %2453 = icmp eq i32 %2452, 0
  br i1 %2453, label %2454, label %2564

2454:                                             ; preds = %2449
  %2455 = and i32 %2446, 4
  %2456 = icmp eq i32 %2455, 0
  br i1 %2456, label %2505, label %2457

2457:                                             ; preds = %2454
  %2458 = load i32, ptr %42, align 4, !tbaa !57
  %2459 = sitofp i32 %2458 to float
  %2460 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2441, i64 %2437, i32 4
  %2461 = load i32, ptr %2460, align 4, !tbaa !519
  %2462 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2441, i64 %2443, i32 4
  %2463 = load i32, ptr %2462, align 4, !tbaa !519
  %2464 = sub nsw i32 %2461, %2463
  %2465 = sitofp i32 %2464 to float
  %2466 = getelementptr inbounds %struct.TransDataTracking, ptr %2438, i64 0, i32 1
  store i32 %2446, ptr %2466, align 4, !tbaa !388
  %2467 = and i32 %2446, -4
  store i32 %2467, ptr %2445, align 4, !tbaa !389
  store i32 1, ptr %2438, align 8, !tbaa !385
  %2468 = getelementptr inbounds %struct.TransDataTracking, ptr %2438, i64 0, i32 13
  store i16 0, ptr %2468, align 4, !tbaa !405
  %2469 = fdiv float 1.000000e+00, %2459
  %2470 = fmul float %2469, %2465
  %2471 = getelementptr inbounds %struct.TransDataTracking, ptr %2438, i64 0, i32 12
  store float %2470, ptr %2471, align 8, !tbaa !406
  %2472 = getelementptr inbounds %struct.TransDataTracking, ptr %2438, i64 0, i32 11
  store ptr %2444, ptr %2472, align 8, !tbaa !404
  %2473 = getelementptr inbounds %struct.TransDataTracking, ptr %2438, i64 0, i32 14
  store ptr %2396, ptr %2473, align 8, !tbaa !387
  %2474 = sitofp i32 %2461 to float
  store float %2474, ptr %2440, align 8, !tbaa !112
  %2475 = load float, ptr %2442, align 4, !tbaa !112
  %2476 = load float, ptr %2444, align 4, !tbaa !112
  %2477 = fsub float %2475, %2476
  %2478 = fmul float %2477, %2459
  %2479 = fdiv float %2478, %2465
  %2480 = getelementptr inbounds [3 x float], ptr %2440, i64 0, i64 1
  store float %2479, ptr %2480, align 4, !tbaa !112
  %2481 = getelementptr inbounds [3 x float], ptr %2440, i64 0, i64 2
  store float 0.000000e+00, ptr %2481, align 8, !tbaa !112
  %2482 = getelementptr inbounds %struct.TransData2D, ptr %2440, i64 0, i32 1
  store ptr %2442, ptr %2482, align 8, !tbaa !205
  %2483 = getelementptr inbounds %struct.TransData, ptr %2439, i64 0, i32 16
  store i32 0, ptr %2483, align 8, !tbaa !49
  %2484 = getelementptr inbounds %struct.TransData, ptr %2439, i64 0, i32 3
  store ptr %2440, ptr %2484, align 8, !tbaa !209
  %2485 = getelementptr inbounds %struct.TransData, ptr %2439, i64 0, i32 7
  store float %2474, ptr %2485, align 4, !tbaa !112
  %2486 = load float, ptr %2480, align 4, !tbaa !112
  %2487 = getelementptr inbounds %struct.TransData, ptr %2439, i64 0, i32 7, i64 1
  store float %2486, ptr %2487, align 4, !tbaa !112
  %2488 = load float, ptr %2481, align 4, !tbaa !112
  %2489 = getelementptr inbounds %struct.TransData, ptr %2439, i64 0, i32 7, i64 2
  store float %2488, ptr %2489, align 4, !tbaa !112
  %2490 = getelementptr inbounds %struct.TransData, ptr %2439, i64 0, i32 4
  %2491 = load float, ptr %2440, align 4, !tbaa !112
  store float %2491, ptr %2490, align 4, !tbaa !112
  %2492 = load float, ptr %2480, align 4, !tbaa !112
  %2493 = getelementptr inbounds %struct.TransData, ptr %2439, i64 0, i32 4, i64 1
  store float %2492, ptr %2493, align 4, !tbaa !112
  %2494 = load float, ptr %2481, align 4, !tbaa !112
  %2495 = getelementptr inbounds %struct.TransData, ptr %2439, i64 0, i32 4, i64 2
  store float %2494, ptr %2495, align 4, !tbaa !112
  %2496 = getelementptr inbounds %struct.TransData, ptr %2439, i64 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %2496, i8 0, i64 36, i1 false)
  %2497 = getelementptr inbounds %struct.TransData, ptr %2439, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %2497, align 8, !tbaa !112
  %2498 = getelementptr inbounds %struct.TransData, ptr %2439, i64 0, i32 13
  store ptr null, ptr %2498, align 8, !tbaa !372
  %2499 = getelementptr inbounds %struct.TransData, ptr %2439, i64 0, i32 5
  store ptr null, ptr %2499, align 8, !tbaa !441
  store i32 1, ptr %2483, align 8, !tbaa !49
  store float 0.000000e+00, ptr %2439, align 8, !tbaa !55
  %2500 = getelementptr inbounds %struct.TransData, ptr %2439, i64 0, i32 8
  call void @unit_m3(ptr noundef nonnull %2500) #18
  %2501 = getelementptr inbounds %struct.TransData, ptr %2439, i64 0, i32 9
  call void @unit_m3(ptr noundef nonnull %2501) #18
  %2502 = getelementptr inbounds %struct.TransData, ptr %2439, i64 1
  %2503 = getelementptr inbounds %struct.TransData2D, ptr %2440, i64 1
  %2504 = getelementptr inbounds %struct.TransDataTracking, ptr %2438, i64 1
  br label %2505

2505:                                             ; preds = %2457, %2454
  %2506 = phi ptr [ %2503, %2457 ], [ %2440, %2454 ]
  %2507 = phi ptr [ %2502, %2457 ], [ %2439, %2454 ]
  %2508 = phi ptr [ %2504, %2457 ], [ %2438, %2454 ]
  %2509 = load i32, ptr %2445, align 4, !tbaa !389
  %2510 = and i32 %2509, 8
  %2511 = icmp eq i32 %2510, 0
  br i1 %2511, label %2564, label %2512

2512:                                             ; preds = %2505
  %2513 = load ptr, ptr %2435, align 8, !tbaa !391
  %2514 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2513, i64 %2443
  %2515 = load i32, ptr %43, align 4, !tbaa !57
  %2516 = sitofp i32 %2515 to float
  %2517 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2441, i64 %2437, i32 4
  %2518 = load i32, ptr %2517, align 4, !tbaa !519
  %2519 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2513, i64 %2443, i32 4
  %2520 = load i32, ptr %2519, align 4, !tbaa !519
  %2521 = sub nsw i32 %2518, %2520
  %2522 = sitofp i32 %2521 to float
  %2523 = getelementptr inbounds %struct.TransDataTracking, ptr %2508, i64 0, i32 1
  store i32 %2509, ptr %2523, align 4, !tbaa !388
  %2524 = and i32 %2509, -3
  store i32 %2524, ptr %2445, align 4, !tbaa !389
  store i32 1, ptr %2508, align 8, !tbaa !385
  %2525 = getelementptr inbounds %struct.TransDataTracking, ptr %2508, i64 0, i32 13
  store i16 1, ptr %2525, align 4, !tbaa !405
  %2526 = fdiv float 1.000000e+00, %2516
  %2527 = fmul float %2526, %2522
  %2528 = getelementptr inbounds %struct.TransDataTracking, ptr %2508, i64 0, i32 12
  store float %2527, ptr %2528, align 8, !tbaa !406
  %2529 = getelementptr inbounds %struct.TransDataTracking, ptr %2508, i64 0, i32 11
  store ptr %2514, ptr %2529, align 8, !tbaa !404
  %2530 = getelementptr inbounds %struct.TransDataTracking, ptr %2508, i64 0, i32 14
  store ptr %2396, ptr %2530, align 8, !tbaa !387
  %2531 = sitofp i32 %2518 to float
  store float %2531, ptr %2506, align 8, !tbaa !112
  %2532 = getelementptr inbounds [2 x float], ptr %2442, i64 0, i64 1
  %2533 = load float, ptr %2532, align 4, !tbaa !112
  %2534 = getelementptr inbounds [2 x float], ptr %2514, i64 0, i64 1
  %2535 = load float, ptr %2534, align 4, !tbaa !112
  %2536 = fsub float %2533, %2535
  %2537 = fmul float %2536, %2516
  %2538 = fdiv float %2537, %2522
  %2539 = getelementptr inbounds [3 x float], ptr %2506, i64 0, i64 1
  store float %2538, ptr %2539, align 4, !tbaa !112
  %2540 = getelementptr inbounds [3 x float], ptr %2506, i64 0, i64 2
  store float 0.000000e+00, ptr %2540, align 8, !tbaa !112
  %2541 = getelementptr inbounds %struct.TransData2D, ptr %2506, i64 0, i32 1
  store ptr %2442, ptr %2541, align 8, !tbaa !205
  %2542 = getelementptr inbounds %struct.TransData, ptr %2507, i64 0, i32 16
  store i32 0, ptr %2542, align 8, !tbaa !49
  %2543 = getelementptr inbounds %struct.TransData, ptr %2507, i64 0, i32 3
  store ptr %2506, ptr %2543, align 8, !tbaa !209
  %2544 = getelementptr inbounds %struct.TransData, ptr %2507, i64 0, i32 7
  store float %2531, ptr %2544, align 4, !tbaa !112
  %2545 = load float, ptr %2539, align 4, !tbaa !112
  %2546 = getelementptr inbounds %struct.TransData, ptr %2507, i64 0, i32 7, i64 1
  store float %2545, ptr %2546, align 4, !tbaa !112
  %2547 = load float, ptr %2540, align 4, !tbaa !112
  %2548 = getelementptr inbounds %struct.TransData, ptr %2507, i64 0, i32 7, i64 2
  store float %2547, ptr %2548, align 4, !tbaa !112
  %2549 = getelementptr inbounds %struct.TransData, ptr %2507, i64 0, i32 4
  %2550 = load float, ptr %2506, align 4, !tbaa !112
  store float %2550, ptr %2549, align 4, !tbaa !112
  %2551 = load float, ptr %2539, align 4, !tbaa !112
  %2552 = getelementptr inbounds %struct.TransData, ptr %2507, i64 0, i32 4, i64 1
  store float %2551, ptr %2552, align 4, !tbaa !112
  %2553 = load float, ptr %2540, align 4, !tbaa !112
  %2554 = getelementptr inbounds %struct.TransData, ptr %2507, i64 0, i32 4, i64 2
  store float %2553, ptr %2554, align 4, !tbaa !112
  %2555 = getelementptr inbounds %struct.TransData, ptr %2507, i64 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %2555, i8 0, i64 36, i1 false)
  %2556 = getelementptr inbounds %struct.TransData, ptr %2507, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %2556, align 8, !tbaa !112
  %2557 = getelementptr inbounds %struct.TransData, ptr %2507, i64 0, i32 13
  store ptr null, ptr %2557, align 8, !tbaa !372
  %2558 = getelementptr inbounds %struct.TransData, ptr %2507, i64 0, i32 5
  store ptr null, ptr %2558, align 8, !tbaa !441
  store i32 1, ptr %2542, align 8, !tbaa !49
  store float 0.000000e+00, ptr %2507, align 8, !tbaa !55
  %2559 = getelementptr inbounds %struct.TransData, ptr %2507, i64 0, i32 8
  call void @unit_m3(ptr noundef nonnull %2559) #18
  %2560 = getelementptr inbounds %struct.TransData, ptr %2507, i64 0, i32 9
  call void @unit_m3(ptr noundef nonnull %2560) #18
  %2561 = getelementptr inbounds %struct.TransData, ptr %2507, i64 1
  %2562 = getelementptr inbounds %struct.TransData2D, ptr %2506, i64 1
  %2563 = getelementptr inbounds %struct.TransDataTracking, ptr %2508, i64 1
  br label %2564

2564:                                             ; preds = %2512, %2505, %2449, %2436
  %2565 = phi ptr [ %2440, %2436 ], [ %2440, %2449 ], [ %2562, %2512 ], [ %2506, %2505 ]
  %2566 = phi ptr [ %2439, %2436 ], [ %2439, %2449 ], [ %2561, %2512 ], [ %2507, %2505 ]
  %2567 = phi ptr [ %2438, %2436 ], [ %2438, %2449 ], [ %2563, %2512 ], [ %2508, %2505 ]
  %2568 = add nuw nsw i64 %2437, 1
  %2569 = load i32, ptr %2431, align 8, !tbaa !390
  %2570 = sext i32 %2569 to i64
  %2571 = icmp slt i64 %2568, %2570
  br i1 %2571, label %2436, label %2572, !llvm.loop !520

2572:                                             ; preds = %2564, %2430, %2427, %2419, %2416, %2395
  %2573 = phi ptr [ %2399, %2427 ], [ %2399, %2419 ], [ %2399, %2416 ], [ %2399, %2395 ], [ %2399, %2430 ], [ %2565, %2564 ]
  %2574 = phi ptr [ %2398, %2427 ], [ %2398, %2419 ], [ %2398, %2416 ], [ %2398, %2395 ], [ %2398, %2430 ], [ %2566, %2564 ]
  %2575 = phi ptr [ %2397, %2427 ], [ %2397, %2419 ], [ %2397, %2416 ], [ %2397, %2395 ], [ %2397, %2430 ], [ %2567, %2564 ]
  %2576 = load ptr, ptr %2396, align 8, !tbaa !63
  %2577 = icmp eq ptr %2576, null
  br i1 %2577, label %2578, label %2395, !llvm.loop !521

2578:                                             ; preds = %2572, %2374, %2371, %2292
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %43) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %42) #18
  br label %2907

2579:                                             ; preds = %2284
  %2580 = call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %2290) #18
  %2581 = call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %2288) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %40) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %41) #18
  store i32 0, ptr %2275, align 8, !tbaa !34
  %2582 = load ptr, ptr %2291, align 8, !tbaa !63
  %2583 = icmp eq ptr %2582, null
  br i1 %2583, label %2586, label %2584

2584:                                             ; preds = %2579
  %2585 = getelementptr inbounds %struct.SpaceClip, ptr %2288, i64 0, i32 12
  br label %2589

2586:                                             ; preds = %2639, %2579
  %2587 = load ptr, ptr %2580, align 8, !tbaa !63
  %2588 = icmp eq ptr %2587, null
  br i1 %2588, label %2654, label %2642

2589:                                             ; preds = %2639, %2584
  %2590 = phi ptr [ %2582, %2584 ], [ %2640, %2639 ]
  %2591 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2590, i64 0, i32 13
  %2592 = load i32, ptr %2591, align 8, !tbaa !306
  %2593 = and i32 %2592, 32
  %2594 = icmp eq i32 %2593, 0
  br i1 %2594, label %2595, label %2639

2595:                                             ; preds = %2589
  %2596 = and i32 %2592, 1
  %2597 = icmp eq i32 %2596, 0
  br i1 %2597, label %2598, label %2618

2598:                                             ; preds = %2595
  %2599 = load i32, ptr %2585, align 8, !tbaa !308
  %2600 = and i32 %2599, 1
  %2601 = icmp eq i32 %2600, 0
  br i1 %2601, label %2607, label %2602

2602:                                             ; preds = %2598
  %2603 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2590, i64 0, i32 14
  %2604 = load i32, ptr %2603, align 4, !tbaa !313
  %2605 = and i32 %2604, 1
  %2606 = icmp eq i32 %2605, 0
  br i1 %2606, label %2607, label %2618

2607:                                             ; preds = %2602, %2598
  %2608 = and i32 %2599, 2
  %2609 = icmp eq i32 %2608, 0
  br i1 %2609, label %2639, label %2610

2610:                                             ; preds = %2607
  %2611 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2590, i64 0, i32 15
  %2612 = load i32, ptr %2611, align 8, !tbaa !314
  %2613 = and i32 %2612, 1
  %2614 = icmp ne i32 %2613, 0
  %2615 = and i32 %2592, 64
  %2616 = icmp eq i32 %2615, 0
  %2617 = and i1 %2616, %2614
  br i1 %2617, label %2621, label %2639

2618:                                             ; preds = %2602, %2595
  %2619 = and i32 %2592, 64
  %2620 = icmp eq i32 %2619, 0
  br i1 %2620, label %2621, label %2639

2621:                                             ; preds = %2618, %2610
  %2622 = load i32, ptr %2275, align 8, !tbaa !34
  %2623 = select i1 %2597, i32 1, i32 2
  %2624 = add nsw i32 %2622, %2623
  store i32 %2624, ptr %2275, align 8, !tbaa !34
  %2625 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2590, i64 0, i32 14
  %2626 = load i32, ptr %2625, align 4, !tbaa !313
  %2627 = and i32 %2626, 1
  %2628 = icmp eq i32 %2627, 0
  br i1 %2628, label %2631, label %2629

2629:                                             ; preds = %2621
  %2630 = add nsw i32 %2624, 4
  store i32 %2630, ptr %2275, align 8, !tbaa !34
  br label %2631

2631:                                             ; preds = %2629, %2621
  %2632 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2590, i64 0, i32 15
  %2633 = load i32, ptr %2632, align 8, !tbaa !314
  %2634 = and i32 %2633, 1
  %2635 = icmp eq i32 %2634, 0
  br i1 %2635, label %2639, label %2636

2636:                                             ; preds = %2631
  %2637 = load i32, ptr %2275, align 8, !tbaa !34
  %2638 = add nsw i32 %2637, 2
  store i32 %2638, ptr %2275, align 8, !tbaa !34
  br label %2639

2639:                                             ; preds = %2636, %2631, %2618, %2610, %2607, %2589
  %2640 = load ptr, ptr %2590, align 8, !tbaa !63
  %2641 = icmp eq ptr %2640, null
  br i1 %2641, label %2586, label %2589, !llvm.loop !522

2642:                                             ; preds = %2586, %2651
  %2643 = phi ptr [ %2652, %2651 ], [ %2587, %2586 ]
  %2644 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %2643, i64 0, i32 8
  %2645 = load i32, ptr %2644, align 4, !tbaa !302
  %2646 = and i32 %2645, 3
  %2647 = icmp eq i32 %2646, 1
  br i1 %2647, label %2648, label %2651

2648:                                             ; preds = %2642
  %2649 = load i32, ptr %2275, align 8, !tbaa !34
  %2650 = add nsw i32 %2649, 4
  store i32 %2650, ptr %2275, align 8, !tbaa !34
  br label %2651

2651:                                             ; preds = %2648, %2642
  %2652 = load ptr, ptr %2643, align 8, !tbaa !63
  %2653 = icmp eq ptr %2652, null
  br i1 %2653, label %2654, label %2642, !llvm.loop !523

2654:                                             ; preds = %2651, %2586
  %2655 = load i32, ptr %2275, align 8, !tbaa !34
  %2656 = icmp eq i32 %2655, 0
  br i1 %2656, label %2906, label %2657

2657:                                             ; preds = %2654
  call void @ED_space_clip_get_aspect_dimension_aware(ptr noundef %2288, ptr noundef nonnull %40, ptr noundef nonnull %41) #18
  %2658 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %2659 = load i32, ptr %2275, align 8, !tbaa !34
  %2660 = sext i32 %2659 to i64
  %2661 = mul nsw i64 %2660, 224
  %2662 = call ptr %2658(i64 noundef %2661, ptr noundef nonnull @.str.40) #18
  %2663 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %2662, ptr %2663, align 8, !tbaa !48
  %2664 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %2665 = load i32, ptr %2275, align 8, !tbaa !34
  %2666 = sext i32 %2665 to i64
  %2667 = mul nsw i64 %2666, 56
  %2668 = call ptr %2664(i64 noundef %2667, ptr noundef nonnull @.str.41) #18
  %2669 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 12
  store ptr %2668, ptr %2669, align 8, !tbaa !168
  %2670 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %2671 = load i32, ptr %2275, align 8, !tbaa !34
  %2672 = sext i32 %2671 to i64
  %2673 = mul nsw i64 %2672, 112
  %2674 = call ptr %2670(i64 noundef %2673, ptr noundef nonnull @.str.42) #18
  %2675 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  store ptr %2674, ptr %2675, align 8, !tbaa !96
  %2676 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 41
  store ptr @transDataTrackingFree, ptr %2676, align 8, !tbaa !500
  %2677 = load ptr, ptr %2291, align 8, !tbaa !63
  %2678 = icmp eq ptr %2677, null
  br i1 %2678, label %2681, label %2679

2679:                                             ; preds = %2657
  %2680 = getelementptr inbounds %struct.SpaceClip, ptr %2288, i64 0, i32 12
  br label %2687

2681:                                             ; preds = %2834, %2657
  %2682 = phi ptr [ %2668, %2657 ], [ %2835, %2834 ]
  %2683 = phi ptr [ %2674, %2657 ], [ %2836, %2834 ]
  %2684 = phi ptr [ %2662, %2657 ], [ %2837, %2834 ]
  %2685 = load ptr, ptr %2580, align 8, !tbaa !63
  %2686 = icmp eq ptr %2685, null
  br i1 %2686, label %2906, label %2840

2687:                                             ; preds = %2834, %2679
  %2688 = phi ptr [ %2677, %2679 ], [ %2838, %2834 ]
  %2689 = phi ptr [ %2662, %2679 ], [ %2837, %2834 ]
  %2690 = phi ptr [ %2674, %2679 ], [ %2836, %2834 ]
  %2691 = phi ptr [ %2668, %2679 ], [ %2835, %2834 ]
  %2692 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2688, i64 0, i32 13
  %2693 = load i32, ptr %2692, align 8, !tbaa !306
  %2694 = and i32 %2693, 32
  %2695 = icmp eq i32 %2694, 0
  br i1 %2695, label %2696, label %2834

2696:                                             ; preds = %2687
  %2697 = and i32 %2693, 1
  %2698 = icmp eq i32 %2697, 0
  br i1 %2698, label %2699, label %2719

2699:                                             ; preds = %2696
  %2700 = load i32, ptr %2680, align 8, !tbaa !308
  %2701 = and i32 %2700, 1
  %2702 = icmp eq i32 %2701, 0
  br i1 %2702, label %2708, label %2703

2703:                                             ; preds = %2699
  %2704 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2688, i64 0, i32 14
  %2705 = load i32, ptr %2704, align 4, !tbaa !313
  %2706 = and i32 %2705, 1
  %2707 = icmp eq i32 %2706, 0
  br i1 %2707, label %2708, label %2719

2708:                                             ; preds = %2703, %2699
  %2709 = and i32 %2700, 2
  %2710 = icmp eq i32 %2709, 0
  br i1 %2710, label %2834, label %2711

2711:                                             ; preds = %2708
  %2712 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2688, i64 0, i32 15
  %2713 = load i32, ptr %2712, align 8, !tbaa !314
  %2714 = and i32 %2713, 1
  %2715 = icmp ne i32 %2714, 0
  %2716 = and i32 %2693, 64
  %2717 = icmp eq i32 %2716, 0
  %2718 = and i1 %2717, %2715
  br i1 %2718, label %2722, label %2834

2719:                                             ; preds = %2703, %2696
  %2720 = and i32 %2693, 64
  %2721 = icmp eq i32 %2720, 0
  br i1 %2721, label %2722, label %2834

2722:                                             ; preds = %2719, %2711
  %2723 = load float, ptr %40, align 4, !tbaa !112
  %2724 = load float, ptr %41, align 4, !tbaa !112
  %2725 = call ptr @BKE_tracking_marker_ensure(ptr noundef nonnull %2688, i32 noundef %2581) #18
  %2726 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2725, i64 0, i32 5
  %2727 = load i32, ptr %2726, align 4, !tbaa !389
  %2728 = getelementptr inbounds %struct.TransDataTracking, ptr %2690, i64 0, i32 1
  store i32 %2727, ptr %2728, align 4, !tbaa !388
  %2729 = and i32 %2727, -4
  store i32 %2729, ptr %2726, align 4, !tbaa !389
  %2730 = getelementptr inbounds %struct.TransData, ptr %2689, i64 1
  %2731 = getelementptr inbounds %struct.TransData2D, ptr %2691, i64 1
  %2732 = getelementptr inbounds %struct.TransDataTracking, ptr %2690, i64 1
  %2733 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2688, i64 0, i32 7
  call fastcc void @markerToTransDataInit(ptr noundef %2689, ptr noundef %2691, ptr noundef %2690, ptr noundef nonnull %2688, ptr noundef %2725, i32 noundef 1, ptr noundef nonnull %2733, ptr noundef %2725, ptr noundef nonnull %2733, float noundef %2723, float noundef %2724)
  %2734 = load i32, ptr %2692, align 8, !tbaa !306
  %2735 = and i32 %2734, 1
  %2736 = icmp eq i32 %2735, 0
  br i1 %2736, label %2777, label %2737

2737:                                             ; preds = %2722
  %2738 = getelementptr inbounds %struct.TransData, ptr %2689, i64 2
  %2739 = getelementptr inbounds %struct.TransData2D, ptr %2691, i64 2
  %2740 = getelementptr inbounds %struct.TransDataTracking, ptr %2690, i64 2
  store i32 0, ptr %2732, align 8, !tbaa !385
  %2741 = load float, ptr %2725, align 4, !tbaa !112
  %2742 = fmul float %2723, %2741
  store float %2742, ptr %2731, align 8, !tbaa !112
  %2743 = getelementptr inbounds float, ptr %2725, i64 1
  %2744 = load float, ptr %2743, align 4, !tbaa !112
  %2745 = fmul float %2724, %2744
  %2746 = getelementptr inbounds %struct.TransData2D, ptr %2691, i64 1, i32 0, i64 1
  store float %2745, ptr %2746, align 4, !tbaa !112
  %2747 = getelementptr inbounds %struct.TransData2D, ptr %2691, i64 1, i32 1
  store ptr %2725, ptr %2747, align 8, !tbaa !205
  %2748 = getelementptr inbounds %struct.TransData2D, ptr %2691, i64 1, i32 0, i64 2
  store float 0.000000e+00, ptr %2748, align 8, !tbaa !112
  %2749 = getelementptr inbounds %struct.TransDataTracking, ptr %2690, i64 1, i32 3
  store ptr null, ptr %2749, align 8, !tbaa !398
  %2750 = getelementptr inbounds %struct.TransDataTracking, ptr %2690, i64 1, i32 2
  store i32 1, ptr %2750, align 8, !tbaa !397
  %2751 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2688, i64 0, i32 8
  %2752 = load i32, ptr %2751, align 8, !tbaa !390
  %2753 = getelementptr inbounds %struct.TransDataTracking, ptr %2690, i64 1, i32 9
  store i32 %2752, ptr %2753, align 8, !tbaa !400
  %2754 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2688, i64 0, i32 10
  %2755 = load ptr, ptr %2754, align 8, !tbaa !391
  %2756 = getelementptr inbounds %struct.TransDataTracking, ptr %2690, i64 1, i32 10
  store ptr %2755, ptr %2756, align 8, !tbaa !401
  %2757 = getelementptr inbounds %struct.TransDataTracking, ptr %2690, i64 1, i32 14
  store ptr %2688, ptr %2757, align 8, !tbaa !387
  %2758 = getelementptr inbounds %struct.TransData, ptr %2689, i64 1, i32 16
  store i32 0, ptr %2758, align 8, !tbaa !49
  %2759 = getelementptr inbounds %struct.TransData, ptr %2689, i64 1, i32 3
  store ptr %2731, ptr %2759, align 8, !tbaa !209
  %2760 = getelementptr inbounds %struct.TransData, ptr %2689, i64 1, i32 4
  store float %2742, ptr %2760, align 4, !tbaa !112
  %2761 = load float, ptr %2746, align 4, !tbaa !112
  %2762 = getelementptr inbounds %struct.TransData, ptr %2689, i64 1, i32 4, i64 1
  store float %2761, ptr %2762, align 4, !tbaa !112
  %2763 = load float, ptr %2748, align 4, !tbaa !112
  %2764 = getelementptr inbounds %struct.TransData, ptr %2689, i64 1, i32 4, i64 2
  store float %2763, ptr %2764, align 4, !tbaa !112
  store i32 256, ptr %2758, align 8, !tbaa !49
  %2765 = load float, ptr %2725, align 4, !tbaa !112
  %2766 = fmul float %2723, %2765
  %2767 = getelementptr inbounds %struct.TransData, ptr %2689, i64 1, i32 7
  store float %2766, ptr %2767, align 4, !tbaa !112
  %2768 = load float, ptr %2743, align 4, !tbaa !112
  %2769 = fmul float %2724, %2768
  %2770 = getelementptr inbounds %struct.TransData, ptr %2689, i64 1, i32 7, i64 1
  store float %2769, ptr %2770, align 4, !tbaa !112
  %2771 = getelementptr inbounds %struct.TransData, ptr %2689, i64 1, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %2771, i8 0, i64 36, i1 false)
  %2772 = getelementptr inbounds %struct.TransData, ptr %2689, i64 1, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %2772, align 8, !tbaa !112
  %2773 = getelementptr inbounds %struct.TransData, ptr %2689, i64 1, i32 13
  store ptr null, ptr %2773, align 8, !tbaa !372
  %2774 = getelementptr inbounds %struct.TransData, ptr %2689, i64 1, i32 5
  store ptr null, ptr %2774, align 8, !tbaa !441
  store i32 257, ptr %2758, align 8, !tbaa !49
  store float 0.000000e+00, ptr %2730, align 8, !tbaa !55
  %2775 = getelementptr inbounds %struct.TransData, ptr %2689, i64 1, i32 8
  call void @unit_m3(ptr noundef nonnull %2775) #18
  %2776 = getelementptr inbounds %struct.TransData, ptr %2689, i64 1, i32 9
  call void @unit_m3(ptr noundef nonnull %2776) #18
  br label %2777

2777:                                             ; preds = %2737, %2722
  %2778 = phi ptr [ %2740, %2737 ], [ %2732, %2722 ]
  %2779 = phi ptr [ %2739, %2737 ], [ %2731, %2722 ]
  %2780 = phi ptr [ %2738, %2737 ], [ %2730, %2722 ]
  %2781 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2688, i64 0, i32 14
  %2782 = load i32, ptr %2781, align 4, !tbaa !313
  %2783 = and i32 %2782, 1
  %2784 = icmp eq i32 %2783, 0
  br i1 %2784, label %2796, label %2785

2785:                                             ; preds = %2777, %2785
  %2786 = phi i64 [ %2794, %2785 ], [ 0, %2777 ]
  %2787 = phi ptr [ %2790, %2785 ], [ %2780, %2777 ]
  %2788 = phi ptr [ %2791, %2785 ], [ %2779, %2777 ]
  %2789 = phi ptr [ %2792, %2785 ], [ %2778, %2777 ]
  %2790 = getelementptr inbounds %struct.TransData, ptr %2787, i64 1
  %2791 = getelementptr inbounds %struct.TransData2D, ptr %2788, i64 1
  %2792 = getelementptr inbounds %struct.TransDataTracking, ptr %2789, i64 1
  %2793 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2725, i64 0, i32 1, i64 %2786
  call fastcc void @markerToTransDataInit(ptr noundef %2787, ptr noundef %2788, ptr noundef %2789, ptr noundef nonnull %2688, ptr noundef %2725, i32 noundef 2, ptr noundef nonnull %2793, ptr noundef %2725, ptr noundef null, float noundef %2723, float noundef %2724)
  %2794 = add nuw nsw i64 %2786, 1
  %2795 = icmp eq i64 %2794, 4
  br i1 %2795, label %2796, label %2785, !llvm.loop !524

2796:                                             ; preds = %2785, %2777
  %2797 = phi ptr [ %2778, %2777 ], [ %2792, %2785 ]
  %2798 = phi ptr [ %2779, %2777 ], [ %2791, %2785 ]
  %2799 = phi ptr [ %2780, %2777 ], [ %2790, %2785 ]
  %2800 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2688, i64 0, i32 15
  %2801 = load i32, ptr %2800, align 8, !tbaa !314
  %2802 = and i32 %2801, 1
  %2803 = icmp eq i32 %2802, 0
  br i1 %2803, label %2810, label %2804

2804:                                             ; preds = %2796
  %2805 = getelementptr inbounds %struct.TransData, ptr %2799, i64 1
  %2806 = getelementptr inbounds %struct.TransData2D, ptr %2798, i64 1
  %2807 = getelementptr inbounds %struct.TransDataTracking, ptr %2797, i64 1
  %2808 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2725, i64 0, i32 2
  call fastcc void @markerToTransDataInit(ptr noundef %2799, ptr noundef %2798, ptr noundef %2797, ptr noundef nonnull %2688, ptr noundef %2725, i32 noundef 4, ptr noundef nonnull %2808, ptr noundef %2725, ptr noundef null, float noundef %2723, float noundef %2724)
  %2809 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %2725, i64 0, i32 3
  call fastcc void @markerToTransDataInit(ptr noundef nonnull %2805, ptr noundef nonnull %2806, ptr noundef nonnull %2807, ptr noundef nonnull %2688, ptr noundef %2725, i32 noundef 4, ptr noundef nonnull %2809, ptr noundef %2725, ptr noundef null, float noundef %2723, float noundef %2724)
  br label %2810

2810:                                             ; preds = %2804, %2796
  %2811 = load i32, ptr %2692, align 8, !tbaa !306
  %2812 = and i32 %2811, 1
  %2813 = icmp eq i32 %2812, 0
  %2814 = getelementptr inbounds %struct.TransData, ptr %2689, i64 2
  %2815 = getelementptr inbounds %struct.TransData2D, ptr %2691, i64 2
  %2816 = getelementptr inbounds %struct.TransDataTracking, ptr %2690, i64 2
  %2817 = select i1 %2813, ptr %2731, ptr %2815
  %2818 = select i1 %2813, ptr %2732, ptr %2816
  %2819 = select i1 %2813, ptr %2730, ptr %2814
  %2820 = load i32, ptr %2781, align 4, !tbaa !313
  %2821 = shl i32 %2820, 2
  %2822 = and i32 %2821, 4
  %2823 = zext nneg i32 %2822 to i64
  %2824 = getelementptr inbounds %struct.TransData2D, ptr %2817, i64 %2823
  %2825 = getelementptr inbounds %struct.TransDataTracking, ptr %2818, i64 %2823
  %2826 = getelementptr inbounds %struct.TransData, ptr %2819, i64 %2823
  %2827 = load i32, ptr %2800, align 8, !tbaa !314
  %2828 = and i32 %2827, 1
  %2829 = icmp eq i32 %2828, 0
  br i1 %2829, label %2834, label %2830

2830:                                             ; preds = %2810
  %2831 = getelementptr inbounds %struct.TransData, ptr %2826, i64 2
  %2832 = getelementptr inbounds %struct.TransData2D, ptr %2824, i64 2
  %2833 = getelementptr inbounds %struct.TransDataTracking, ptr %2825, i64 2
  br label %2834

2834:                                             ; preds = %2830, %2810, %2719, %2711, %2708, %2687
  %2835 = phi ptr [ %2832, %2830 ], [ %2824, %2810 ], [ %2691, %2719 ], [ %2691, %2711 ], [ %2691, %2708 ], [ %2691, %2687 ]
  %2836 = phi ptr [ %2833, %2830 ], [ %2825, %2810 ], [ %2690, %2719 ], [ %2690, %2711 ], [ %2690, %2708 ], [ %2690, %2687 ]
  %2837 = phi ptr [ %2831, %2830 ], [ %2826, %2810 ], [ %2689, %2719 ], [ %2689, %2711 ], [ %2689, %2708 ], [ %2689, %2687 ]
  %2838 = load ptr, ptr %2688, align 8, !tbaa !63
  %2839 = icmp eq ptr %2838, null
  br i1 %2839, label %2681, label %2687, !llvm.loop !525

2840:                                             ; preds = %2681, %2900
  %2841 = phi ptr [ %2904, %2900 ], [ %2685, %2681 ]
  %2842 = phi ptr [ %2903, %2900 ], [ %2684, %2681 ]
  %2843 = phi ptr [ %2902, %2900 ], [ %2683, %2681 ]
  %2844 = phi ptr [ %2901, %2900 ], [ %2682, %2681 ]
  %2845 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %2841, i64 0, i32 8
  %2846 = load i32, ptr %2845, align 4, !tbaa !302
  %2847 = and i32 %2846, 3
  %2848 = icmp eq i32 %2847, 1
  br i1 %2848, label %2849, label %2900

2849:                                             ; preds = %2840
  %2850 = load float, ptr %40, align 4, !tbaa !112
  %2851 = load float, ptr %41, align 4, !tbaa !112
  %2852 = call ptr @BKE_tracking_plane_marker_ensure(ptr noundef nonnull %2841, i32 noundef %2581) #18
  %2853 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %2852, i64 0, i32 2
  %2854 = load i32, ptr %2853, align 4, !tbaa !394
  %2855 = getelementptr inbounds %struct.TransDataTracking, ptr %2843, i64 0, i32 1
  store i32 %2854, ptr %2855, align 4, !tbaa !388
  %2856 = and i32 %2854, -3
  store i32 %2856, ptr %2853, align 4, !tbaa !394
  br label %2857

2857:                                             ; preds = %2857, %2849
  %2858 = phi i64 [ 0, %2849 ], [ %2894, %2857 ]
  %2859 = phi ptr [ %2842, %2849 ], [ %2862, %2857 ]
  %2860 = phi ptr [ %2844, %2849 ], [ %2863, %2857 ]
  %2861 = phi ptr [ %2843, %2849 ], [ %2864, %2857 ]
  %2862 = getelementptr inbounds %struct.TransData, ptr %2859, i64 1
  %2863 = getelementptr inbounds %struct.TransData2D, ptr %2860, i64 1
  %2864 = getelementptr inbounds %struct.TransDataTracking, ptr %2861, i64 1
  %2865 = getelementptr inbounds [4 x [2 x float]], ptr %2852, i64 0, i64 %2858
  store i32 2, ptr %2861, align 8, !tbaa !385
  %2866 = getelementptr inbounds %struct.TransDataTracking, ptr %2861, i64 0, i32 15
  store ptr %2841, ptr %2866, align 8, !tbaa !393
  %2867 = load float, ptr %2865, align 4, !tbaa !112
  %2868 = fmul float %2850, %2867
  store float %2868, ptr %2860, align 8, !tbaa !112
  %2869 = getelementptr inbounds float, ptr %2865, i64 1
  %2870 = load float, ptr %2869, align 4, !tbaa !112
  %2871 = fmul float %2851, %2870
  %2872 = getelementptr inbounds [3 x float], ptr %2860, i64 0, i64 1
  store float %2871, ptr %2872, align 4, !tbaa !112
  %2873 = getelementptr inbounds %struct.TransData2D, ptr %2860, i64 0, i32 1
  store ptr %2865, ptr %2873, align 8, !tbaa !205
  %2874 = getelementptr inbounds [3 x float], ptr %2860, i64 0, i64 2
  store float 0.000000e+00, ptr %2874, align 8, !tbaa !112
  %2875 = getelementptr inbounds %struct.TransData, ptr %2859, i64 0, i32 16
  store i32 0, ptr %2875, align 8, !tbaa !49
  %2876 = getelementptr inbounds %struct.TransData, ptr %2859, i64 0, i32 3
  store ptr %2860, ptr %2876, align 8, !tbaa !209
  %2877 = getelementptr inbounds %struct.TransData, ptr %2859, i64 0, i32 4
  store float %2868, ptr %2877, align 4, !tbaa !112
  %2878 = load float, ptr %2872, align 4, !tbaa !112
  %2879 = getelementptr inbounds %struct.TransData, ptr %2859, i64 0, i32 4, i64 1
  store float %2878, ptr %2879, align 4, !tbaa !112
  %2880 = load float, ptr %2874, align 4, !tbaa !112
  %2881 = getelementptr inbounds %struct.TransData, ptr %2859, i64 0, i32 4, i64 2
  store float %2880, ptr %2881, align 4, !tbaa !112
  %2882 = getelementptr inbounds %struct.TransData, ptr %2859, i64 0, i32 7
  %2883 = load float, ptr %2860, align 4, !tbaa !112
  store float %2883, ptr %2882, align 4, !tbaa !112
  %2884 = load float, ptr %2872, align 4, !tbaa !112
  %2885 = getelementptr inbounds %struct.TransData, ptr %2859, i64 0, i32 7, i64 1
  store float %2884, ptr %2885, align 4, !tbaa !112
  %2886 = load float, ptr %2874, align 4, !tbaa !112
  %2887 = getelementptr inbounds %struct.TransData, ptr %2859, i64 0, i32 7, i64 2
  store float %2886, ptr %2887, align 4, !tbaa !112
  %2888 = getelementptr inbounds %struct.TransData, ptr %2859, i64 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %2888, i8 0, i64 36, i1 false)
  %2889 = getelementptr inbounds %struct.TransData, ptr %2859, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %2889, align 8, !tbaa !112
  %2890 = getelementptr inbounds %struct.TransData, ptr %2859, i64 0, i32 13
  store ptr null, ptr %2890, align 8, !tbaa !372
  %2891 = getelementptr inbounds %struct.TransData, ptr %2859, i64 0, i32 5
  store ptr null, ptr %2891, align 8, !tbaa !441
  store i32 1, ptr %2875, align 8, !tbaa !49
  store float 0.000000e+00, ptr %2859, align 8, !tbaa !55
  %2892 = getelementptr inbounds %struct.TransData, ptr %2859, i64 0, i32 8
  call void @unit_m3(ptr noundef nonnull %2892) #18
  %2893 = getelementptr inbounds %struct.TransData, ptr %2859, i64 0, i32 9
  call void @unit_m3(ptr noundef nonnull %2893) #18
  %2894 = add nuw nsw i64 %2858, 1
  %2895 = icmp eq i64 %2894, 4
  br i1 %2895, label %2896, label %2857, !llvm.loop !526

2896:                                             ; preds = %2857
  %2897 = getelementptr inbounds %struct.TransData, ptr %2842, i64 4
  %2898 = getelementptr inbounds %struct.TransData2D, ptr %2844, i64 4
  %2899 = getelementptr inbounds %struct.TransDataTracking, ptr %2843, i64 4
  br label %2900

2900:                                             ; preds = %2896, %2840
  %2901 = phi ptr [ %2898, %2896 ], [ %2844, %2840 ]
  %2902 = phi ptr [ %2899, %2896 ], [ %2843, %2840 ]
  %2903 = phi ptr [ %2897, %2896 ], [ %2842, %2840 ]
  %2904 = load ptr, ptr %2841, align 8, !tbaa !63
  %2905 = icmp eq ptr %2904, null
  br i1 %2905, label %2906, label %2840, !llvm.loop !527

2906:                                             ; preds = %2900, %2681, %2654
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %41) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %40) #18
  br label %2907

2907:                                             ; preds = %2271, %2277, %2578, %2906
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %45) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %44) #18
  br label %6050

2908:                                             ; preds = %2265
  %2909 = and i32 %93, 128
  %2910 = icmp eq i32 %2909, 0
  br i1 %2910, label %6050, label %2911

2911:                                             ; preds = %2908
  tail call fastcc void @createTransMaskingData(ptr noundef %0, ptr noundef %1)
  %2912 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  %2913 = load ptr, ptr %2912, align 8, !tbaa !48
  %2914 = icmp eq ptr %2913, null
  br i1 %2914, label %6050, label %2915

2915:                                             ; preds = %2911
  %2916 = load i32, ptr %2266, align 4, !tbaa !54
  %2917 = and i32 %2916, 2048
  %2918 = icmp eq i32 %2917, 0
  br i1 %2918, label %6050, label %2919

2919:                                             ; preds = %2915
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %53)
  %2920 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  %2921 = load i32, ptr %2920, align 8, !tbaa !34
  %2922 = sext i32 %2921 to i64
  %2923 = getelementptr %struct.TransData, ptr %2913, i64 %2922
  %2924 = getelementptr inbounds %struct.TransData, ptr %2923, i64 -1
  %2925 = icmp ugt ptr %2924, %2913
  br i1 %2925, label %2926, label %2951

2926:                                             ; preds = %2919, %2947
  %2927 = phi ptr [ %2949, %2947 ], [ %2924, %2919 ]
  %2928 = phi ptr [ %2948, %2947 ], [ %2913, %2919 ]
  br label %2929

2929:                                             ; preds = %2926, %2935
  %2930 = phi ptr [ %2936, %2935 ], [ %2928, %2926 ]
  %2931 = getelementptr inbounds %struct.TransData, ptr %2930, i64 0, i32 16
  %2932 = load i32, ptr %2931, align 8, !tbaa !49
  %2933 = and i32 %2932, 1
  %2934 = icmp eq i32 %2933, 0
  br i1 %2934, label %2938, label %2935

2935:                                             ; preds = %2929
  %2936 = getelementptr inbounds %struct.TransData, ptr %2930, i64 1
  %2937 = icmp eq ptr %2936, %2927
  br i1 %2937, label %2951, label %2929, !llvm.loop !444

2938:                                             ; preds = %2929, %2944
  %2939 = phi ptr [ %2945, %2944 ], [ %2927, %2929 ]
  %2940 = getelementptr inbounds %struct.TransData, ptr %2939, i64 0, i32 16
  %2941 = load i32, ptr %2940, align 8, !tbaa !49
  %2942 = and i32 %2941, 1
  %2943 = icmp eq i32 %2942, 0
  br i1 %2943, label %2944, label %2947

2944:                                             ; preds = %2938
  %2945 = getelementptr inbounds %struct.TransData, ptr %2939, i64 -1
  %2946 = icmp eq ptr %2930, %2945
  br i1 %2946, label %2951, label %2938, !llvm.loop !445

2947:                                             ; preds = %2938
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %53, ptr noundef nonnull align 8 dereferenceable(224) %2930, i64 224, i1 false), !tbaa.struct !446
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %2930, ptr noundef nonnull align 8 dereferenceable(224) %2939, i64 224, i1 false), !tbaa.struct !446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %2939, ptr noundef nonnull align 8 dereferenceable(224) %53, i64 224, i1 false), !tbaa.struct !446
  %2948 = getelementptr inbounds %struct.TransData, ptr %2930, i64 1
  %2949 = getelementptr inbounds %struct.TransData, ptr %2939, i64 -1
  %2950 = icmp ugt ptr %2949, %2948
  br i1 %2950, label %2926, label %2951, !llvm.loop !447

2951:                                             ; preds = %2947, %2935, %2944, %2919
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %53)
  tail call fastcc void @set_prop_dist(ptr noundef %1, i8 noundef zeroext 1)
  %2952 = load i32, ptr %2920, align 8, !tbaa !34
  %2953 = icmp sgt i32 %2952, 0
  br i1 %2953, label %2954, label %6050

2954:                                             ; preds = %2951
  %2955 = load ptr, ptr %2912, align 8, !tbaa !48
  %2956 = getelementptr inbounds %struct.TransData, ptr %2955, i64 0, i32 16
  %2957 = load i32, ptr %2956, align 8, !tbaa !49
  %2958 = and i32 %2957, 1
  %2959 = icmp eq i32 %2958, 0
  br i1 %2959, label %2973, label %2966

2960:                                             ; preds = %2966
  %2961 = getelementptr inbounds %struct.TransData, ptr %2967, i64 1
  %2962 = getelementptr inbounds %struct.TransData, ptr %2967, i64 1, i32 16
  %2963 = load i32, ptr %2962, align 8, !tbaa !49
  %2964 = and i32 %2963, 1
  %2965 = icmp eq i32 %2964, 0
  br i1 %2965, label %2971, label %2966, !llvm.loop !51

2966:                                             ; preds = %2954, %2960
  %2967 = phi ptr [ %2961, %2960 ], [ %2955, %2954 ]
  %2968 = phi i32 [ %2969, %2960 ], [ 0, %2954 ]
  %2969 = add nuw nsw i32 %2968, 1
  %2970 = icmp eq i32 %2969, %2952
  br i1 %2970, label %6050, label %2960, !llvm.loop !51

2971:                                             ; preds = %2960
  %2972 = icmp slt i32 %2969, %2952
  br label %2973

2973:                                             ; preds = %2971, %2954
  %2974 = phi i1 [ true, %2954 ], [ %2972, %2971 ]
  %2975 = phi i32 [ 0, %2954 ], [ %2969, %2971 ]
  %2976 = phi ptr [ %2955, %2954 ], [ %2961, %2971 ]
  br i1 %2974, label %2977, label %6050

2977:                                             ; preds = %2973
  %2978 = load i32, ptr %2266, align 4, !tbaa !54
  %2979 = and i32 %2978, 4096
  %2980 = icmp eq i32 %2979, 0
  %2981 = sub nsw i32 %2952, %2975
  %2982 = sext i32 %2981 to i64
  br i1 %2980, label %2984, label %2983

2983:                                             ; preds = %2977
  tail call void @qsort(ptr noundef %2976, i64 noundef %2982, i64 noundef 224, ptr noundef nonnull @trans_data_compare_dist) #18
  br label %6050

2984:                                             ; preds = %2977
  tail call void @qsort(ptr noundef %2976, i64 noundef %2982, i64 noundef 224, ptr noundef nonnull @trans_data_compare_rdist) #18
  br label %6050

2985:                                             ; preds = %381
  %2986 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  %2987 = load ptr, ptr %2986, align 8, !tbaa !99
  %2988 = icmp eq ptr %2987, null
  br i1 %2988, label %5137, label %2989

2989:                                             ; preds = %2985
  %2990 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 11
  store ptr null, ptr %2990, align 8, !tbaa !424
  %2991 = getelementptr inbounds %struct.Object, ptr %2987, i64 0, i32 3
  %2992 = load i16, ptr %2991, align 8, !tbaa !80
  switch i16 %2992, label %4980 [
    i16 1, label %2993
    i16 2, label %3836
    i16 3, label %3836
    i16 22, label %4379
    i16 5, label %4497
    i16 25, label %4612
  ]

2993:                                             ; preds = %2989
  %2994 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %2987) #18
  %2995 = load ptr, ptr %2986, align 8, !tbaa !99
  %2996 = getelementptr inbounds %struct.Object, ptr %2995, i64 0, i32 19
  %2997 = load ptr, ptr %2996, align 8, !tbaa !64
  %2998 = load ptr, ptr %2994, align 8, !tbaa !281
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %32) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %33) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %34) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %35) #18
  store ptr null, ptr %35, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %36) #18
  store ptr null, ptr %36, align 8, !tbaa !63
  %2999 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %3000 = load i32, ptr %2999, align 4, !tbaa !54
  %3001 = and i32 %3000, 2048
  %3002 = icmp eq i32 %3001, 0
  %3003 = and i32 %3000, 33560576
  %3004 = select i1 %3002, i32 0, i32 %3003
  %3005 = and i32 %3000, 524288
  %3006 = icmp eq i32 %3005, 0
  br i1 %3006, label %3013, label %3007

3007:                                             ; preds = %2993
  %3008 = getelementptr inbounds %struct.Mesh, ptr %2997, i64 0, i32 46
  %3009 = load i8, ptr %3008, align 1, !tbaa !528
  %3010 = lshr i8 %3009, 4
  %3011 = and i8 %3010, 1
  %3012 = zext i1 %3002 to i8
  tail call void @EDBM_verts_mirror_cache_begin(ptr noundef nonnull %2994, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext %3012, i8 noundef zeroext %3011) #18
  br label %3013

3013:                                             ; preds = %3007, %2993
  %3014 = getelementptr inbounds %struct.BMEditMesh, ptr %2994, i64 0, i32 12
  %3015 = load i16, ptr %3014, align 4, !tbaa !530
  %3016 = zext i16 %3015 to i32
  %3017 = and i32 %3016, 1
  %3018 = icmp eq i32 %3017, 0
  br i1 %3018, label %3023, label %3019

3019:                                             ; preds = %3013
  %3020 = getelementptr inbounds %struct.BMesh, ptr %2998, i64 0, i32 4
  %3021 = load i32, ptr %3020, align 8, !tbaa !531
  %3022 = icmp eq i32 %3021, 0
  br i1 %3022, label %3815, label %3045

3023:                                             ; preds = %3013
  %3024 = and i32 %3016, 2
  %3025 = icmp eq i32 %3024, 0
  br i1 %3025, label %3034, label %3026

3026:                                             ; preds = %3023
  %3027 = getelementptr inbounds %struct.BMesh, ptr %2998, i64 0, i32 4
  %3028 = load i32, ptr %3027, align 8, !tbaa !531
  %3029 = icmp eq i32 %3028, 0
  br i1 %3029, label %3815, label %3030

3030:                                             ; preds = %3026
  %3031 = getelementptr inbounds %struct.BMesh, ptr %2998, i64 0, i32 5
  %3032 = load i32, ptr %3031, align 4, !tbaa !532
  %3033 = icmp eq i32 %3032, 0
  br i1 %3033, label %3815, label %3045

3034:                                             ; preds = %3023
  %3035 = and i32 %3016, 4
  %3036 = icmp eq i32 %3035, 0
  br i1 %3036, label %3045, label %3037

3037:                                             ; preds = %3034
  %3038 = getelementptr inbounds %struct.BMesh, ptr %2998, i64 0, i32 4
  %3039 = load i32, ptr %3038, align 8, !tbaa !531
  %3040 = icmp eq i32 %3039, 0
  br i1 %3040, label %3815, label %3041

3041:                                             ; preds = %3037
  %3042 = getelementptr inbounds %struct.BMesh, ptr %2998, i64 0, i32 6
  %3043 = load i32, ptr %3042, align 8, !tbaa !533
  %3044 = icmp eq i32 %3043, 0
  br i1 %3044, label %3815, label %3045

3045:                                             ; preds = %3041, %3034, %3030, %3019
  %3046 = load i32, ptr %1, align 8, !tbaa !188
  %3047 = icmp eq i32 %3046, 26
  br i1 %3047, label %3048, label %3053

3048:                                             ; preds = %3045
  %3049 = load ptr, ptr %2986, align 8, !tbaa !99
  %3050 = tail call ptr @BKE_mesh_from_object(ptr noundef %3049) #18
  tail call void @BM_mesh_cd_flag_ensure(ptr noundef %2998, ptr noundef %3050, i8 noundef zeroext 1) #18
  %3051 = getelementptr inbounds %struct.BMesh, ptr %2998, i64 0, i32 24
  %3052 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %3051, i32 noundef 29) #18
  br label %3053

3053:                                             ; preds = %3048, %3045
  %3054 = phi i32 [ %3052, %3048 ], [ -1, %3045 ]
  %3055 = icmp eq i32 %3004, 0
  br i1 %3055, label %3089, label %3056

3056:                                             ; preds = %3053
  %3057 = getelementptr inbounds %struct.BMIter, ptr %32, i64 0, i32 4
  store i8 1, ptr %3057, align 4, !tbaa !428
  %3058 = getelementptr inbounds %struct.BMIter, ptr %32, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %3058, align 8, !tbaa !430
  %3059 = getelementptr inbounds %struct.BMIter, ptr %32, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %3059, align 8, !tbaa !431
  %3060 = getelementptr inbounds %struct.BMesh, ptr %2998, i64 0, i32 9
  %3061 = load ptr, ptr %3060, align 8, !tbaa !534
  store ptr %3061, ptr %32, align 8, !tbaa !81
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %32) #18
  %3062 = load ptr, ptr %3059, align 8, !tbaa !431
  %3063 = call ptr %3062(ptr noundef nonnull %32) #18
  %3064 = icmp eq ptr %3063, null
  br i1 %3064, label %3077, label %3065

3065:                                             ; preds = %3056, %3065
  %3066 = phi ptr [ %3075, %3065 ], [ %3063, %3056 ]
  %3067 = phi i32 [ %3073, %3065 ], [ 0, %3056 ]
  %3068 = getelementptr inbounds %struct.BMHeader, ptr %3066, i64 0, i32 3
  %3069 = load i8, ptr %3068, align 1, !tbaa !283
  %3070 = and i8 %3069, 2
  %3071 = icmp eq i8 %3070, 0
  %3072 = zext i1 %3071 to i32
  %3073 = add i32 %3067, %3072
  %3074 = load ptr, ptr %3059, align 8, !tbaa !431
  %3075 = call ptr %3074(ptr noundef nonnull %32) #18
  %3076 = icmp eq ptr %3075, null
  br i1 %3076, label %3077, label %3065, !llvm.loop !535

3077:                                             ; preds = %3065, %3056
  %3078 = phi i32 [ 0, %3056 ], [ %3073, %3065 ]
  %3079 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 %3078, ptr %3079, align 8, !tbaa !34
  %3080 = and i32 %3004, 4096
  %3081 = icmp eq i32 %3080, 0
  br i1 %3081, label %3093, label %3082

3082:                                             ; preds = %3077
  %3083 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !63
  %3084 = load ptr, ptr %2994, align 8, !tbaa !281
  %3085 = load i32, ptr %3084, align 8, !tbaa !536
  %3086 = sext i32 %3085 to i64
  %3087 = shl nsw i64 %3086, 2
  %3088 = call ptr %3083(i64 noundef %3087, ptr noundef nonnull @.str.43) #18
  br label %3093

3089:                                             ; preds = %3053
  %3090 = getelementptr inbounds %struct.BMesh, ptr %2998, i64 0, i32 4
  %3091 = load i32, ptr %3090, align 8, !tbaa !531
  %3092 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 %3091, ptr %3092, align 8, !tbaa !34
  br label %3093

3093:                                             ; preds = %3089, %3082, %3077
  %3094 = phi ptr [ null, %3089 ], [ %3088, %3082 ], [ null, %3077 ]
  %3095 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %3096 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  %3097 = load i32, ptr %3096, align 8, !tbaa !34
  %3098 = sext i32 %3097 to i64
  %3099 = mul nsw i64 %3098, 224
  %3100 = call ptr %3095(i64 noundef %3099, ptr noundef nonnull @.str.44) #18
  %3101 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %3100, ptr %3101, align 8, !tbaa !48
  %3102 = load i32, ptr %1, align 8, !tbaa !188
  switch i32 %3102, label %3109 [
    i32 4, label %3103
    i32 8, label %3103
  ]

3103:                                             ; preds = %3093, %3093
  %3104 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %3105 = load i32, ptr %3096, align 8, !tbaa !34
  %3106 = sext i32 %3105 to i64
  %3107 = mul nsw i64 %3106, 384
  %3108 = call ptr %3104(i64 noundef %3107, ptr noundef nonnull @.str.45) #18
  store ptr %3108, ptr %2990, align 8, !tbaa !424
  br label %3109

3109:                                             ; preds = %3103, %3093
  %3110 = phi ptr [ %3108, %3103 ], [ null, %3093 ]
  %3111 = load ptr, ptr %2986, align 8, !tbaa !99
  %3112 = getelementptr inbounds %struct.Object, ptr %3111, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %33, ptr noundef nonnull %3112) #18
  call void @pseudoinverse_m3_m3(ptr noundef nonnull %34, ptr noundef nonnull %33, float noundef 0x3E45798EE0000000) #18
  %3113 = and i32 %3004, 4096
  %3114 = icmp eq i32 %3113, 0
  br i1 %3114, label %3357, label %3115

3115:                                             ; preds = %3109
  %3116 = load ptr, ptr %2994, align 8, !tbaa !281
  %3117 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !63
  %3118 = load i32, ptr %3116, align 8, !tbaa !536
  %3119 = sext i32 %3118 to i64
  %3120 = shl nsw i64 %3119, 2
  %3121 = call ptr %3117(i64 noundef %3120, ptr noundef nonnull @__func__.editmesh_set_connectivity_distance) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #18
  store ptr null, ptr %27, align 8, !tbaa !63
  %3122 = call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 64, i32 noundef 0) #18
  store ptr null, ptr %28, align 8, !tbaa !63
  %3123 = call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 64, i32 noundef 0) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %29) #18
  %3124 = getelementptr inbounds %struct.BMIter, ptr %29, i64 0, i32 4
  store i8 1, ptr %3124, align 4, !tbaa !428
  %3125 = getelementptr inbounds %struct.BMIter, ptr %29, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %3125, align 8, !tbaa !430
  %3126 = getelementptr inbounds %struct.BMIter, ptr %29, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %3126, align 8, !tbaa !431
  %3127 = getelementptr inbounds %struct.BMesh, ptr %3116, i64 0, i32 9
  %3128 = load ptr, ptr %3127, align 8, !tbaa !534
  store ptr %3128, ptr %29, align 8, !tbaa !81
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %29) #18
  %3129 = load ptr, ptr %3126, align 8, !tbaa !431
  %3130 = call ptr %3129(ptr noundef nonnull %29) #18
  %3131 = icmp eq ptr %3130, null
  br i1 %3131, label %3150, label %3132

3132:                                             ; preds = %3115, %3143
  %3133 = phi i64 [ %3148, %3143 ], [ 0, %3115 ]
  %3134 = phi ptr [ %3147, %3143 ], [ %3130, %3115 ]
  %3135 = getelementptr inbounds %struct.BMHeader, ptr %3134, i64 0, i32 1
  %3136 = trunc i64 %3133 to i32
  store i32 %3136, ptr %3135, align 8, !tbaa !537
  %3137 = getelementptr inbounds %struct.BMHeader, ptr %3134, i64 0, i32 3
  %3138 = load i8, ptr %3137, align 1, !tbaa !283
  %3139 = and i8 %3138, -17
  store i8 %3139, ptr %3137, align 1, !tbaa !283
  %3140 = and i8 %3138, 3
  %3141 = icmp eq i8 %3140, 1
  br i1 %3141, label %3142, label %3143

3142:                                             ; preds = %3132
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %27, ptr noundef nonnull %3134, ptr noundef %3122) #18
  br label %3143

3143:                                             ; preds = %3132, %3142
  %3144 = phi float [ 0.000000e+00, %3142 ], [ 0x47EFFFFFE0000000, %3132 ]
  %3145 = getelementptr inbounds float, ptr %3094, i64 %3133
  store float %3144, ptr %3145, align 4, !tbaa !112
  %3146 = load ptr, ptr %3126, align 8, !tbaa !431
  %3147 = call ptr %3146(ptr noundef nonnull %29) #18
  %3148 = add nuw i64 %3133, 1
  %3149 = icmp eq ptr %3147, null
  br i1 %3149, label %3150, label %3132, !llvm.loop !538

3150:                                             ; preds = %3143, %3115
  %3151 = getelementptr inbounds %struct.BMesh, ptr %3116, i64 0, i32 7
  %3152 = load i8, ptr %3151, align 4, !tbaa !539
  %3153 = and i8 %3152, -2
  store i8 %3153, ptr %3151, align 4, !tbaa !539
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %29) #18
  %3154 = getelementptr inbounds %struct.BMIter, ptr %30, i64 0, i32 4
  %3155 = getelementptr inbounds %struct.BMIter, ptr %30, i64 0, i32 1
  %3156 = getelementptr inbounds %struct.BMIter, ptr %30, i64 0, i32 2
  %3157 = getelementptr inbounds float, ptr %18, i64 1
  %3158 = getelementptr inbounds float, ptr %18, i64 2
  %3159 = getelementptr inbounds %struct.BMIter, ptr %31, i64 0, i32 4
  %3160 = getelementptr inbounds %struct.BMIter, ptr %31, i64 0, i32 1
  %3161 = getelementptr inbounds %struct.BMIter, ptr %31, i64 0, i32 2
  %3162 = getelementptr inbounds float, ptr %17, i64 1
  %3163 = getelementptr inbounds float, ptr %17, i64 2
  br label %3164

3164:                                             ; preds = %3351, %3150
  %3165 = phi ptr [ %3123, %3150 ], [ %3166, %3351 ]
  %3166 = phi ptr [ %3122, %3150 ], [ %3165, %3351 ]
  %3167 = load i32, ptr %3116, align 8, !tbaa !536
  %3168 = sext i32 %3167 to i64
  %3169 = shl nsw i64 %3168, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3121, ptr align 4 %3094, i64 %3169, i1 false)
  br label %3170

3170:                                             ; preds = %3341, %3164
  %3171 = load ptr, ptr %27, align 8, !tbaa !63
  %3172 = icmp eq ptr %3171, null
  br i1 %3172, label %3175, label %3173

3173:                                             ; preds = %3170
  %3174 = call ptr @BLI_linklist_pop_pool(ptr noundef nonnull %27, ptr noundef %3166) #18
  br label %3175

3175:                                             ; preds = %3173, %3170
  %3176 = phi ptr [ %3174, %3173 ], [ null, %3170 ]
  %3177 = icmp eq ptr %3176, null
  br i1 %3177, label %3178, label %3181

3178:                                             ; preds = %3175
  %3179 = load ptr, ptr %28, align 8, !tbaa !63
  %3180 = icmp eq ptr %3179, null
  br i1 %3180, label %3351, label %3342

3181:                                             ; preds = %3175
  %3182 = getelementptr inbounds %struct.BMVert, ptr %3176, i64 0, i32 4
  %3183 = load ptr, ptr %3182, align 8, !tbaa !540
  %3184 = icmp eq ptr %3183, null
  br i1 %3184, label %3263, label %3185

3185:                                             ; preds = %3181
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %30) #18
  store i8 4, ptr %3154, align 4, !tbaa !428
  store ptr @bmiter__edge_of_vert_begin, ptr %3155, align 8, !tbaa !430
  store ptr @bmiter__edge_of_vert_step, ptr %3156, align 8, !tbaa !431
  store ptr %3176, ptr %30, align 8, !tbaa !81
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %30) #18
  %3186 = load ptr, ptr %3156, align 8, !tbaa !431
  %3187 = call ptr %3186(ptr noundef nonnull %30) #18
  %3188 = icmp eq ptr %3187, null
  br i1 %3188, label %3261, label %3189

3189:                                             ; preds = %3185
  %3190 = getelementptr inbounds %struct.BMHeader, ptr %3176, i64 0, i32 1
  %3191 = getelementptr inbounds %struct.BMVert, ptr %3176, i64 0, i32 2
  %3192 = getelementptr inbounds %struct.BMVert, ptr %3176, i64 0, i32 2, i64 1
  %3193 = getelementptr inbounds %struct.BMVert, ptr %3176, i64 0, i32 2, i64 2
  br label %3194

3194:                                             ; preds = %3257, %3189
  %3195 = phi ptr [ %3187, %3189 ], [ %3259, %3257 ]
  %3196 = phi i8 [ 0, %3189 ], [ %3201, %3257 ]
  %3197 = getelementptr inbounds %struct.BMEdge, ptr %3195, i64 0, i32 4
  %3198 = load ptr, ptr %3197, align 8, !tbaa !542
  %3199 = icmp ne ptr %3198, null
  %3200 = zext i1 %3199 to i8
  %3201 = or i8 %3196, %3200
  %3202 = getelementptr inbounds %struct.BMHeader, ptr %3195, i64 0, i32 3
  %3203 = load i8, ptr %3202, align 1, !tbaa !283
  %3204 = and i8 %3203, 2
  %3205 = icmp eq i8 %3204, 0
  br i1 %3205, label %3206, label %3257

3206:                                             ; preds = %3194
  %3207 = getelementptr inbounds %struct.BMEdge, ptr %3195, i64 0, i32 2
  %3208 = load ptr, ptr %3207, align 8, !tbaa !436
  %3209 = icmp eq ptr %3208, %3176
  %3210 = getelementptr inbounds %struct.BMEdge, ptr %3195, i64 0, i32 3
  %3211 = load ptr, ptr %3210, align 8, !tbaa !439
  %3212 = icmp eq ptr %3211, %3176
  %3213 = select i1 %3212, ptr %3208, ptr null
  %3214 = select i1 %3209, ptr %3211, ptr %3213
  %3215 = getelementptr inbounds %struct.BMHeader, ptr %3214, i64 0, i32 3
  %3216 = load i8, ptr %3215, align 1, !tbaa !283
  %3217 = and i8 %3216, 3
  %3218 = icmp eq i8 %3217, 0
  br i1 %3218, label %3219, label %3257

3219:                                             ; preds = %3206
  %3220 = load i32, ptr %3190, align 8, !tbaa !537
  %3221 = getelementptr inbounds %struct.BMHeader, ptr %3214, i64 0, i32 1
  %3222 = load i32, ptr %3221, align 8, !tbaa !537
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #18
  %3223 = getelementptr inbounds %struct.BMVert, ptr %3214, i64 0, i32 2
  %3224 = load float, ptr %3191, align 4, !tbaa !112
  %3225 = load float, ptr %3223, align 4, !tbaa !112
  %3226 = fsub float %3224, %3225
  store float %3226, ptr %18, align 4, !tbaa !112
  %3227 = load float, ptr %3192, align 4, !tbaa !112
  %3228 = getelementptr inbounds %struct.BMVert, ptr %3214, i64 0, i32 2, i64 1
  %3229 = load float, ptr %3228, align 4, !tbaa !112
  %3230 = fsub float %3227, %3229
  store float %3230, ptr %3157, align 4, !tbaa !112
  %3231 = load float, ptr %3193, align 4, !tbaa !112
  %3232 = getelementptr inbounds %struct.BMVert, ptr %3214, i64 0, i32 2, i64 2
  %3233 = load float, ptr %3232, align 4, !tbaa !112
  %3234 = fsub float %3231, %3233
  store float %3234, ptr %3158, align 4, !tbaa !112
  call void @mul_m3_v3(ptr noundef nonnull %33, ptr noundef nonnull %18) #18
  %3235 = sext i32 %3220 to i64
  %3236 = getelementptr inbounds float, ptr %3121, i64 %3235
  %3237 = load float, ptr %3236, align 4, !tbaa !112
  %3238 = load float, ptr %18, align 4, !tbaa !112
  %3239 = load float, ptr %3157, align 4, !tbaa !112
  %3240 = fmul float %3239, %3239
  %3241 = call float @llvm.fmuladd.f32(float %3238, float %3238, float %3240)
  %3242 = load float, ptr %3158, align 4, !tbaa !112
  %3243 = call float @llvm.fmuladd.f32(float %3242, float %3242, float %3241)
  %3244 = call float @sqrtf(float noundef %3243) #18
  %3245 = fadd float %3237, %3244
  %3246 = sext i32 %3222 to i64
  %3247 = getelementptr inbounds float, ptr %3094, i64 %3246
  %3248 = load float, ptr %3247, align 4, !tbaa !112
  %3249 = fcmp uge float %3245, %3248
  br i1 %3249, label %3254, label %3250

3250:                                             ; preds = %3219
  store float %3245, ptr %3247, align 4, !tbaa !112
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #18
  %3251 = load i8, ptr %3215, align 1, !tbaa !283
  %3252 = and i8 %3251, 16
  %3253 = icmp eq i8 %3252, 0
  br i1 %3253, label %3255, label %3257

3254:                                             ; preds = %3219
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #18
  br label %3257

3255:                                             ; preds = %3250
  %3256 = or disjoint i8 %3251, 16
  store i8 %3256, ptr %3215, align 1, !tbaa !283
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %28, ptr noundef %3214, ptr noundef %3165) #18
  br label %3257

3257:                                             ; preds = %3255, %3254, %3250, %3206, %3194
  %3258 = load ptr, ptr %3156, align 8, !tbaa !431
  %3259 = call ptr %3258(ptr noundef nonnull %30) #18
  %3260 = icmp eq ptr %3259, null
  br i1 %3260, label %3261, label %3194, !llvm.loop !543

3261:                                             ; preds = %3257, %3185
  %3262 = phi i8 [ 0, %3185 ], [ %3201, %3257 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %30) #18
  br label %3263

3263:                                             ; preds = %3261, %3181
  %3264 = phi i8 [ %3262, %3261 ], [ 0, %3181 ]
  %3265 = icmp eq i8 %3264, 0
  br i1 %3265, label %3341, label %3266

3266:                                             ; preds = %3263
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %31) #18
  store i8 6, ptr %3159, align 4, !tbaa !428
  store ptr @bmiter__loop_of_vert_begin, ptr %3160, align 8, !tbaa !430
  store ptr @bmiter__loop_of_vert_step, ptr %3161, align 8, !tbaa !431
  store ptr %3176, ptr %31, align 8, !tbaa !81
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %31) #18
  %3267 = load ptr, ptr %3161, align 8, !tbaa !431
  %3268 = call ptr %3267(ptr noundef nonnull %31) #18
  %3269 = icmp eq ptr %3268, null
  br i1 %3269, label %3340, label %3270

3270:                                             ; preds = %3266
  %3271 = getelementptr inbounds %struct.BMHeader, ptr %3176, i64 0, i32 1
  %3272 = getelementptr inbounds %struct.BMVert, ptr %3176, i64 0, i32 2
  %3273 = getelementptr inbounds %struct.BMVert, ptr %3176, i64 0, i32 2, i64 1
  %3274 = getelementptr inbounds %struct.BMVert, ptr %3176, i64 0, i32 2, i64 2
  br label %3275

3275:                                             ; preds = %3336, %3270
  %3276 = phi ptr [ %3268, %3270 ], [ %3338, %3336 ]
  %3277 = getelementptr inbounds %struct.BMLoop, ptr %3276, i64 0, i32 3
  %3278 = load ptr, ptr %3277, align 8, !tbaa !544
  %3279 = getelementptr inbounds %struct.BMHeader, ptr %3278, i64 0, i32 3
  %3280 = load i8, ptr %3279, align 1, !tbaa !283
  %3281 = and i8 %3280, 2
  %3282 = icmp eq i8 %3281, 0
  br i1 %3282, label %3283, label %3336

3283:                                             ; preds = %3275
  %3284 = getelementptr inbounds %struct.BMFace, ptr %3278, i64 0, i32 3
  %3285 = load i32, ptr %3284, align 8, !tbaa !545
  %3286 = icmp eq i32 %3285, 4
  br i1 %3286, label %3287, label %3336

3287:                                             ; preds = %3283
  %3288 = getelementptr inbounds %struct.BMLoop, ptr %3276, i64 0, i32 6
  %3289 = load ptr, ptr %3288, align 8, !tbaa !546
  %3290 = getelementptr inbounds %struct.BMLoop, ptr %3289, i64 0, i32 6
  %3291 = load ptr, ptr %3290, align 8, !tbaa !546
  %3292 = getelementptr inbounds %struct.BMLoop, ptr %3291, i64 0, i32 1
  %3293 = load ptr, ptr %3292, align 8, !tbaa !547
  %3294 = getelementptr inbounds %struct.BMHeader, ptr %3293, i64 0, i32 3
  %3295 = load i8, ptr %3294, align 1, !tbaa !283
  %3296 = and i8 %3295, 3
  %3297 = icmp eq i8 %3296, 0
  br i1 %3297, label %3298, label %3336

3298:                                             ; preds = %3287
  %3299 = load i32, ptr %3271, align 8, !tbaa !537
  %3300 = getelementptr inbounds %struct.BMHeader, ptr %3293, i64 0, i32 1
  %3301 = load i32, ptr %3300, align 8, !tbaa !537
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #18
  %3302 = getelementptr inbounds %struct.BMVert, ptr %3293, i64 0, i32 2
  %3303 = load float, ptr %3272, align 4, !tbaa !112
  %3304 = load float, ptr %3302, align 4, !tbaa !112
  %3305 = fsub float %3303, %3304
  store float %3305, ptr %17, align 4, !tbaa !112
  %3306 = load float, ptr %3273, align 4, !tbaa !112
  %3307 = getelementptr inbounds %struct.BMVert, ptr %3293, i64 0, i32 2, i64 1
  %3308 = load float, ptr %3307, align 4, !tbaa !112
  %3309 = fsub float %3306, %3308
  store float %3309, ptr %3162, align 4, !tbaa !112
  %3310 = load float, ptr %3274, align 4, !tbaa !112
  %3311 = getelementptr inbounds %struct.BMVert, ptr %3293, i64 0, i32 2, i64 2
  %3312 = load float, ptr %3311, align 4, !tbaa !112
  %3313 = fsub float %3310, %3312
  store float %3313, ptr %3163, align 4, !tbaa !112
  call void @mul_m3_v3(ptr noundef nonnull %33, ptr noundef nonnull %17) #18
  %3314 = sext i32 %3299 to i64
  %3315 = getelementptr inbounds float, ptr %3121, i64 %3314
  %3316 = load float, ptr %3315, align 4, !tbaa !112
  %3317 = load float, ptr %17, align 4, !tbaa !112
  %3318 = load float, ptr %3162, align 4, !tbaa !112
  %3319 = fmul float %3318, %3318
  %3320 = call float @llvm.fmuladd.f32(float %3317, float %3317, float %3319)
  %3321 = load float, ptr %3163, align 4, !tbaa !112
  %3322 = call float @llvm.fmuladd.f32(float %3321, float %3321, float %3320)
  %3323 = call float @sqrtf(float noundef %3322) #18
  %3324 = fadd float %3316, %3323
  %3325 = sext i32 %3301 to i64
  %3326 = getelementptr inbounds float, ptr %3094, i64 %3325
  %3327 = load float, ptr %3326, align 4, !tbaa !112
  %3328 = fcmp uge float %3324, %3327
  br i1 %3328, label %3333, label %3329

3329:                                             ; preds = %3298
  store float %3324, ptr %3326, align 4, !tbaa !112
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #18
  %3330 = load i8, ptr %3294, align 1, !tbaa !283
  %3331 = and i8 %3330, 16
  %3332 = icmp eq i8 %3331, 0
  br i1 %3332, label %3334, label %3336

3333:                                             ; preds = %3298
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #18
  br label %3336

3334:                                             ; preds = %3329
  %3335 = or disjoint i8 %3330, 16
  store i8 %3335, ptr %3294, align 1, !tbaa !283
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %28, ptr noundef %3293, ptr noundef %3165) #18
  br label %3336

3336:                                             ; preds = %3334, %3333, %3329, %3287, %3283, %3275
  %3337 = load ptr, ptr %3161, align 8, !tbaa !431
  %3338 = call ptr %3337(ptr noundef nonnull %31) #18
  %3339 = icmp eq ptr %3338, null
  br i1 %3339, label %3340, label %3275, !llvm.loop !548

3340:                                             ; preds = %3336, %3266
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %31) #18
  br label %3341

3341:                                             ; preds = %3340, %3263
  br label %3170, !llvm.loop !549

3342:                                             ; preds = %3178, %3342
  %3343 = phi ptr [ %3349, %3342 ], [ %3179, %3178 ]
  %3344 = getelementptr inbounds %struct.LinkNode, ptr %3343, i64 0, i32 1
  %3345 = load ptr, ptr %3344, align 8, !tbaa !550
  %3346 = getelementptr inbounds %struct.BMHeader, ptr %3345, i64 0, i32 3
  %3347 = load i8, ptr %3346, align 1, !tbaa !283
  %3348 = and i8 %3347, -17
  store i8 %3348, ptr %3346, align 1, !tbaa !283
  %3349 = load ptr, ptr %3343, align 8, !tbaa !63
  %3350 = icmp eq ptr %3349, null
  br i1 %3350, label %3351, label %3342, !llvm.loop !552

3351:                                             ; preds = %3342, %3178
  %3352 = load ptr, ptr %27, align 8, !tbaa !63
  store ptr %3179, ptr %27, align 8, !tbaa !63
  store ptr %3352, ptr %28, align 8, !tbaa !63
  %3353 = call i32 @BLI_mempool_count(ptr noundef %3165) #18
  %3354 = icmp eq i32 %3353, 0
  br i1 %3354, label %3355, label %3164, !llvm.loop !553

3355:                                             ; preds = %3351
  call void @BLI_mempool_destroy(ptr noundef %3165) #18
  store ptr null, ptr %27, align 8, !tbaa !63
  call void @BLI_mempool_destroy(ptr noundef %3166) #18
  store ptr null, ptr %28, align 8, !tbaa !63
  %3356 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %3356(ptr noundef %3121) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #18
  br label %3357

3357:                                             ; preds = %3355, %3109
  %3358 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 32
  %3359 = load i16, ptr %3358, align 2, !tbaa !348
  %3360 = icmp eq i16 %3359, 2
  br i1 %3360, label %3361, label %3530

3361:                                             ; preds = %3357
  %3362 = load ptr, ptr %2994, align 8, !tbaa !281
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #18
  %3363 = load i16, ptr %3014, align 4, !tbaa !530
  %3364 = and i16 %3363, 3
  %3365 = icmp eq i16 %3364, 0
  %3366 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !63
  br i1 %3365, label %3374, label %3367

3367:                                             ; preds = %3361
  %3368 = getelementptr inbounds %struct.BMesh, ptr %3362, i64 0, i32 5
  %3369 = load i32, ptr %3368, align 4, !tbaa !532
  %3370 = sext i32 %3369 to i64
  %3371 = shl nsw i64 %3370, 2
  %3372 = call ptr %3366(i64 noundef %3371, ptr noundef nonnull @__func__.editmesh_islands_info_calc) #18
  %3373 = call i32 @BM_mesh_calc_edge_groups(ptr noundef %3362, ptr noundef %3372, ptr noundef nonnull %19, ptr noundef null, ptr noundef null, i8 noundef zeroext 1) #18
  br label %3381

3374:                                             ; preds = %3361
  %3375 = getelementptr inbounds %struct.BMesh, ptr %3362, i64 0, i32 6
  %3376 = load i32, ptr %3375, align 8, !tbaa !533
  %3377 = sext i32 %3376 to i64
  %3378 = shl nsw i64 %3377, 2
  %3379 = call ptr %3366(i64 noundef %3378, ptr noundef nonnull @__func__.editmesh_islands_info_calc) #18
  %3380 = call i32 @BM_mesh_calc_face_groups(ptr noundef %3362, ptr noundef %3379, ptr noundef nonnull %19, ptr noundef null, ptr noundef null, i8 noundef zeroext 1, i8 noundef zeroext 1) #18
  br label %3381

3381:                                             ; preds = %3374, %3367
  %3382 = phi i32 [ %3373, %3367 ], [ %3380, %3374 ]
  %3383 = phi ptr [ %3372, %3367 ], [ %3379, %3374 ]
  %3384 = phi i8 [ 7, %3367 ], [ 9, %3374 ]
  %3385 = phi i8 [ 2, %3367 ], [ 8, %3374 ]
  %3386 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !63
  %3387 = sext i32 %3382 to i64
  %3388 = mul nsw i64 %3387, 48
  %3389 = call ptr %3386(i64 noundef %3388, ptr noundef nonnull @__func__.editmesh_islands_info_calc) #18
  %3390 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !63
  %3391 = load i32, ptr %3362, align 8, !tbaa !536
  %3392 = sext i32 %3391 to i64
  %3393 = shl nsw i64 %3392, 2
  %3394 = call ptr %3390(i64 noundef %3393, ptr noundef nonnull @__func__.editmesh_islands_info_calc) #18
  %3395 = load i32, ptr %3362, align 8, !tbaa !536
  call void @fill_vn_i(ptr noundef %3394, i32 noundef %3395, i32 noundef -1) #18
  call void @BM_mesh_elem_table_ensure(ptr noundef nonnull %3362, i8 noundef zeroext %3385) #18
  %3396 = getelementptr inbounds %struct.BMesh, ptr %3362, i64 0, i32 15
  %3397 = getelementptr inbounds %struct.BMesh, ptr %3362, i64 0, i32 14
  %3398 = select i1 %3365, ptr %3396, ptr %3397
  %3399 = load ptr, ptr %3398, align 8, !tbaa !63
  call void @BM_mesh_elem_index_ensure(ptr noundef nonnull %3362, i8 noundef zeroext 1) #18
  %3400 = icmp sgt i32 %3382, 0
  br i1 %3400, label %3401, label %3526

3401:                                             ; preds = %3381
  %3402 = getelementptr inbounds float, ptr %21, i64 1
  %3403 = getelementptr inbounds float, ptr %21, i64 2
  %3404 = getelementptr inbounds float, ptr %22, i64 1
  %3405 = getelementptr inbounds float, ptr %22, i64 2
  %3406 = getelementptr inbounds %struct.BMEditSelection, ptr %20, i64 0, i32 3
  %3407 = getelementptr inbounds %struct.BMEditSelection, ptr %20, i64 0, i32 2
  %3408 = getelementptr inbounds float, ptr %23, i64 1
  %3409 = getelementptr inbounds float, ptr %23, i64 2
  %3410 = getelementptr inbounds float, ptr %24, i64 1
  %3411 = getelementptr inbounds float, ptr %24, i64 2
  %3412 = getelementptr inbounds float, ptr %25, i64 1
  %3413 = getelementptr inbounds float, ptr %25, i64 2
  %3414 = getelementptr inbounds %struct.BMIter, ptr %26, i64 0, i32 4
  %3415 = getelementptr inbounds %struct.BMIter, ptr %26, i64 0, i32 1
  %3416 = getelementptr inbounds %struct.BMIter, ptr %26, i64 0, i32 2
  %3417 = zext nneg i32 %3382 to i64
  %3418 = select i1 %3365, ptr @bmiter__vert_of_face_begin, ptr @bmiter__vert_of_edge_begin
  %3419 = select i1 %3365, ptr @bmiter__vert_of_face_step, ptr @bmiter__vert_of_edge_step
  br label %3420

3420:                                             ; preds = %3523, %3401
  %3421 = phi i64 [ 0, %3401 ], [ %3524, %3523 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %20) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %20, i8 0, i64 32, i1 false)
  %3422 = load ptr, ptr %19, align 8, !tbaa !63
  %3423 = getelementptr inbounds [2 x i32], ptr %3422, i64 %3421
  %3424 = load i32, ptr %3423, align 4, !tbaa !57
  %3425 = getelementptr inbounds [2 x i32], ptr %3422, i64 %3421, i64 1
  %3426 = load i32, ptr %3425, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #18
  store float 0.000000e+00, ptr %21, align 4, !tbaa !112
  store float 0.000000e+00, ptr %3402, align 4, !tbaa !112
  store float 0.000000e+00, ptr %3403, align 4, !tbaa !112
  store float 0.000000e+00, ptr %22, align 4, !tbaa !112
  store float 0.000000e+00, ptr %3404, align 4, !tbaa !112
  store float 0.000000e+00, ptr %3405, align 4, !tbaa !112
  store i8 %3385, ptr %3406, align 8, !tbaa !554
  %3427 = icmp sgt i32 %3426, 0
  br i1 %3427, label %3428, label %3483

3428:                                             ; preds = %3420
  %3429 = sext i32 %3424 to i64
  %3430 = zext nneg i32 %3426 to i64
  %3431 = trunc i64 %3421 to i32
  br label %3432

3432:                                             ; preds = %3480, %3428
  %3433 = phi i64 [ 0, %3428 ], [ %3481, %3480 ]
  %3434 = phi float [ 0.000000e+00, %3428 ], [ %3444, %3480 ]
  %3435 = phi float [ 0.000000e+00, %3428 ], [ %3446, %3480 ]
  %3436 = phi float [ 0.000000e+00, %3428 ], [ %3448, %3480 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #18
  %3437 = add nsw i64 %3433, %3429
  %3438 = getelementptr inbounds i32, ptr %3383, i64 %3437
  %3439 = load i32, ptr %3438, align 4, !tbaa !57
  %3440 = sext i32 %3439 to i64
  %3441 = getelementptr inbounds ptr, ptr %3399, i64 %3440
  %3442 = load ptr, ptr %3441, align 8, !tbaa !63
  store ptr %3442, ptr %3407, align 8, !tbaa !556
  call void @BM_editselection_center(ptr noundef nonnull %20, ptr noundef nonnull %23) #18
  call void @BM_editselection_normal(ptr noundef nonnull %20, ptr noundef nonnull %24) #18
  call void @BM_editselection_plane(ptr noundef nonnull %20, ptr noundef nonnull %25) #18
  %3443 = load float, ptr %23, align 4, !tbaa !112
  %3444 = fadd float %3434, %3443
  %3445 = load float, ptr %3408, align 4, !tbaa !112
  %3446 = fadd float %3435, %3445
  %3447 = load float, ptr %3409, align 4, !tbaa !112
  %3448 = fadd float %3436, %3447
  %3449 = load float, ptr %24, align 4, !tbaa !112
  %3450 = load float, ptr %21, align 4, !tbaa !112
  %3451 = fadd float %3449, %3450
  store float %3451, ptr %21, align 4, !tbaa !112
  %3452 = load float, ptr %3410, align 4, !tbaa !112
  %3453 = load float, ptr %3402, align 4, !tbaa !112
  %3454 = fadd float %3452, %3453
  store float %3454, ptr %3402, align 4, !tbaa !112
  %3455 = load float, ptr %3411, align 4, !tbaa !112
  %3456 = load float, ptr %3403, align 4, !tbaa !112
  %3457 = fadd float %3455, %3456
  store float %3457, ptr %3403, align 4, !tbaa !112
  %3458 = load float, ptr %25, align 4, !tbaa !112
  %3459 = load float, ptr %22, align 4, !tbaa !112
  %3460 = fadd float %3458, %3459
  store float %3460, ptr %22, align 4, !tbaa !112
  %3461 = load float, ptr %3412, align 4, !tbaa !112
  %3462 = load float, ptr %3404, align 4, !tbaa !112
  %3463 = fadd float %3461, %3462
  store float %3463, ptr %3404, align 4, !tbaa !112
  %3464 = load float, ptr %3413, align 4, !tbaa !112
  %3465 = load float, ptr %3405, align 4, !tbaa !112
  %3466 = fadd float %3464, %3465
  store float %3466, ptr %3405, align 4, !tbaa !112
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %26) #18
  %3467 = load ptr, ptr %3407, align 8, !tbaa !556
  store i8 %3384, ptr %3414, align 4, !tbaa !428
  store ptr %3418, ptr %3415, align 8, !tbaa !430
  store ptr %3419, ptr %3416, align 8, !tbaa !431
  store ptr %3467, ptr %26, align 8, !tbaa !81
  call void %3418(ptr noundef nonnull %26) #18
  %3468 = load ptr, ptr %3416, align 8, !tbaa !431
  %3469 = call ptr %3468(ptr noundef nonnull %26) #18
  %3470 = icmp eq ptr %3469, null
  br i1 %3470, label %3480, label %3471

3471:                                             ; preds = %3432, %3471
  %3472 = phi ptr [ %3478, %3471 ], [ %3469, %3432 ]
  %3473 = getelementptr inbounds %struct.BMHeader, ptr %3472, i64 0, i32 1
  %3474 = load i32, ptr %3473, align 8, !tbaa !537
  %3475 = sext i32 %3474 to i64
  %3476 = getelementptr inbounds i32, ptr %3394, i64 %3475
  store i32 %3431, ptr %3476, align 4, !tbaa !57
  %3477 = load ptr, ptr %3416, align 8, !tbaa !431
  %3478 = call ptr %3477(ptr noundef nonnull %26) #18
  %3479 = icmp eq ptr %3478, null
  br i1 %3479, label %3480, label %3471, !llvm.loop !557

3480:                                             ; preds = %3471, %3432
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %26) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #18
  %3481 = add nuw nsw i64 %3433, 1
  %3482 = icmp eq i64 %3481, %3430
  br i1 %3482, label %3483, label %3432, !llvm.loop !558

3483:                                             ; preds = %3480, %3420
  %3484 = phi float [ 0.000000e+00, %3420 ], [ %3448, %3480 ]
  %3485 = phi float [ 0.000000e+00, %3420 ], [ %3446, %3480 ]
  %3486 = phi float [ 0.000000e+00, %3420 ], [ %3444, %3480 ]
  %3487 = getelementptr inbounds %struct.TransIslandData, ptr %3389, i64 %3421
  %3488 = sitofp i32 %3426 to float
  %3489 = fdiv float 1.000000e+00, %3488
  %3490 = fmul float %3489, %3486
  store float %3490, ptr %3487, align 4, !tbaa !112
  %3491 = fmul float %3489, %3485
  %3492 = getelementptr inbounds float, ptr %3487, i64 1
  store float %3491, ptr %3492, align 4, !tbaa !112
  %3493 = fmul float %3489, %3484
  %3494 = getelementptr inbounds float, ptr %3487, i64 2
  store float %3493, ptr %3494, align 4, !tbaa !112
  %3495 = getelementptr inbounds %struct.TransIslandData, ptr %3389, i64 %3421, i32 1
  %3496 = call zeroext i8 @createSpaceNormalTangent(ptr noundef nonnull %3495, ptr noundef nonnull %21, ptr noundef nonnull %22) #18
  %3497 = icmp eq i8 %3496, 0
  br i1 %3497, label %3498, label %3523

3498:                                             ; preds = %3483
  %3499 = load float, ptr %21, align 4, !tbaa !112
  %3500 = load float, ptr %3402, align 4, !tbaa !112
  %3501 = fmul float %3500, %3500
  %3502 = call float @llvm.fmuladd.f32(float %3499, float %3499, float %3501)
  %3503 = load float, ptr %3403, align 4, !tbaa !112
  %3504 = call float @llvm.fmuladd.f32(float %3503, float %3503, float %3502)
  %3505 = fcmp ogt float %3504, 0x38AA95A5C0000000
  br i1 %3505, label %3506, label %3515

3506:                                             ; preds = %3498
  %3507 = call float @sqrtf(float noundef %3504) #18
  %3508 = fdiv float 1.000000e+00, %3507
  %3509 = load float, ptr %21, align 4, !tbaa !112
  %3510 = fmul float %3509, %3508
  store float %3510, ptr %21, align 4, !tbaa !112
  %3511 = load float, ptr %3402, align 4, !tbaa !112
  %3512 = fmul float %3508, %3511
  store float %3512, ptr %3402, align 4, !tbaa !112
  %3513 = load float, ptr %3403, align 4, !tbaa !112
  %3514 = fmul float %3508, %3513
  br label %3516

3515:                                             ; preds = %3498
  store float 0.000000e+00, ptr %21, align 4, !tbaa !112
  store float 0.000000e+00, ptr %3402, align 4, !tbaa !112
  br label %3516

3516:                                             ; preds = %3515, %3506
  %3517 = phi float [ 0.000000e+00, %3515 ], [ %3514, %3506 ]
  %3518 = phi float [ 0.000000e+00, %3515 ], [ %3507, %3506 ]
  store float %3517, ptr %3403, align 4, !tbaa !112
  %3519 = fcmp une float %3518, 0.000000e+00
  br i1 %3519, label %3520, label %3522

3520:                                             ; preds = %3516
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %3495, ptr noundef nonnull %21) #18
  %3521 = call zeroext i8 @invert_m3(ptr noundef nonnull %3495) #18
  br label %3523

3522:                                             ; preds = %3516
  call void @unit_m3(ptr noundef nonnull %3495) #18
  br label %3523

3523:                                             ; preds = %3522, %3520, %3483
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %20) #18
  %3524 = add nuw nsw i64 %3421, 1
  %3525 = icmp eq i64 %3524, %3417
  br i1 %3525, label %3526, label %3420, !llvm.loop !559

3526:                                             ; preds = %3523, %3381
  %3527 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %3527(ptr noundef %3383) #18
  %3528 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  %3529 = load ptr, ptr %19, align 8, !tbaa !63
  call void %3528(ptr noundef %3529) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #18
  br label %3530

3530:                                             ; preds = %3526, %3357
  %3531 = phi ptr [ %3394, %3526 ], [ null, %3357 ]
  %3532 = phi ptr [ %3389, %3526 ], [ null, %3357 ]
  %3533 = load ptr, ptr %82, align 8, !tbaa !119
  %3534 = load ptr, ptr %2986, align 8, !tbaa !99
  %3535 = call i32 @modifiers_getCageIndex(ptr noundef %3533, ptr noundef %3534, ptr noundef null, i8 noundef zeroext 1) #18
  %3536 = icmp eq i32 %3535, -1
  br i1 %3536, label %3570, label %3537

3537:                                             ; preds = %3530
  %3538 = load ptr, ptr %82, align 8, !tbaa !119
  %3539 = load ptr, ptr %2986, align 8, !tbaa !99
  %3540 = call zeroext i8 @modifiers_isCorrectableDeformed(ptr noundef %3538, ptr noundef %3539) #18
  %3541 = icmp eq i8 %3540, 0
  br i1 %3541, label %3546, label %3542

3542:                                             ; preds = %3537
  %3543 = load ptr, ptr %82, align 8, !tbaa !119
  %3544 = load ptr, ptr %2986, align 8, !tbaa !99
  %3545 = call i32 @editbmesh_get_first_deform_matrices(ptr noundef %3543, ptr noundef %3544, ptr noundef nonnull %2994, ptr noundef nonnull %35, ptr noundef nonnull %36) #18
  br label %3546

3546:                                             ; preds = %3542, %3537
  %3547 = phi i32 [ %3545, %3542 ], [ -1, %3537 ]
  %3548 = icmp sgt i32 %3547, 0
  br i1 %3548, label %3549, label %3564

3549:                                             ; preds = %3546
  %3550 = load ptr, ptr %82, align 8, !tbaa !119
  %3551 = load ptr, ptr %2986, align 8, !tbaa !99
  %3552 = call ptr @BKE_crazyspace_get_mapped_editverts(ptr noundef %3550, ptr noundef %3551) #18
  %3553 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !63
  %3554 = load ptr, ptr %2994, align 8, !tbaa !281
  %3555 = load i32, ptr %3554, align 8, !tbaa !536
  %3556 = sext i32 %3555 to i64
  %3557 = shl nsw i64 %3556, 4
  %3558 = call ptr %3553(i64 noundef %3557, ptr noundef nonnull @.str.46) #18
  %3559 = load ptr, ptr %36, align 8, !tbaa !63
  %3560 = zext i1 %3055 to i8
  call void @BKE_crazyspace_set_quats_editmesh(ptr noundef nonnull %2994, ptr noundef %3559, ptr noundef %3552, ptr noundef %3558, i8 noundef zeroext %3560) #18
  %3561 = icmp eq ptr %3552, null
  br i1 %3561, label %3564, label %3562

3562:                                             ; preds = %3549
  %3563 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %3563(ptr noundef nonnull %3552) #18
  br label %3564

3564:                                             ; preds = %3562, %3549, %3546
  %3565 = phi ptr [ %3558, %3562 ], [ %3558, %3549 ], [ null, %3546 ]
  %3566 = load ptr, ptr %36, align 8, !tbaa !63
  %3567 = icmp eq ptr %3566, null
  br i1 %3567, label %3570, label %3568

3568:                                             ; preds = %3564
  %3569 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %3569(ptr noundef nonnull %3566) #18
  br label %3570

3570:                                             ; preds = %3568, %3564, %3530
  %3571 = phi ptr [ null, %3530 ], [ %3565, %3568 ], [ %3565, %3564 ]
  br i1 %3006, label %3599, label %3572

3572:                                             ; preds = %3570
  %3573 = getelementptr inbounds %struct.BMIter, ptr %32, i64 0, i32 4
  store i8 1, ptr %3573, align 4, !tbaa !428
  %3574 = getelementptr inbounds %struct.BMIter, ptr %32, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %3574, align 8, !tbaa !430
  %3575 = getelementptr inbounds %struct.BMIter, ptr %32, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %3575, align 8, !tbaa !431
  %3576 = getelementptr inbounds %struct.BMesh, ptr %2998, i64 0, i32 9
  %3577 = load ptr, ptr %3576, align 8, !tbaa !534
  store ptr %3577, ptr %32, align 8, !tbaa !81
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %32) #18
  %3578 = load ptr, ptr %3575, align 8, !tbaa !431
  %3579 = call ptr %3578(ptr noundef nonnull %32) #18
  %3580 = icmp eq ptr %3579, null
  br i1 %3580, label %3599, label %3581

3581:                                             ; preds = %3572, %3595
  %3582 = phi ptr [ %3597, %3595 ], [ %3579, %3572 ]
  %3583 = getelementptr inbounds %struct.BMHeader, ptr %3582, i64 0, i32 3
  %3584 = load i8, ptr %3583, align 1, !tbaa !283
  %3585 = and i8 %3584, 1
  %3586 = icmp eq i8 %3585, 0
  br i1 %3586, label %3595, label %3587

3587:                                             ; preds = %3581
  %3588 = getelementptr inbounds %struct.BMVert, ptr %3582, i64 0, i32 2
  %3589 = load float, ptr %3588, align 8, !tbaa !112
  %3590 = fcmp une float %3589, 0.000000e+00
  br i1 %3590, label %3591, label %3595

3591:                                             ; preds = %3587
  %3592 = fcmp olt float %3589, 0.000000e+00
  br i1 %3592, label %3593, label %3599

3593:                                             ; preds = %3591
  %3594 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 46
  store i16 -1, ptr %3594, align 8, !tbaa !560
  br label %3599

3595:                                             ; preds = %3587, %3581
  %3596 = load ptr, ptr %3575, align 8, !tbaa !431
  %3597 = call ptr %3596(ptr noundef nonnull %32) #18
  %3598 = icmp eq ptr %3597, null
  br i1 %3598, label %3599, label %3581, !llvm.loop !561

3599:                                             ; preds = %3595, %3593, %3591, %3572, %3570
  %3600 = phi i1 [ false, %3593 ], [ true, %3591 ], [ false, %3570 ], [ true, %3572 ], [ true, %3595 ]
  %3601 = phi i1 [ true, %3593 ], [ false, %3591 ], [ false, %3570 ], [ false, %3572 ], [ false, %3595 ]
  %3602 = getelementptr inbounds %struct.BMIter, ptr %32, i64 0, i32 4
  store i8 1, ptr %3602, align 4, !tbaa !428
  %3603 = getelementptr inbounds %struct.BMIter, ptr %32, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %3603, align 8, !tbaa !430
  %3604 = getelementptr inbounds %struct.BMIter, ptr %32, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %3604, align 8, !tbaa !431
  %3605 = getelementptr inbounds %struct.BMesh, ptr %2998, i64 0, i32 9
  %3606 = load ptr, ptr %3605, align 8, !tbaa !534
  store ptr %3606, ptr %32, align 8, !tbaa !81
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %32) #18
  %3607 = load ptr, ptr %3604, align 8, !tbaa !431
  %3608 = call ptr %3607(ptr noundef nonnull %32) #18
  %3609 = icmp eq ptr %3608, null
  br i1 %3609, label %3786, label %3610

3610:                                             ; preds = %3599
  %3611 = icmp eq ptr %3532, null
  %3612 = icmp eq i32 %3054, -1
  %3613 = sext i32 %3054 to i64
  %3614 = icmp eq ptr %3571, null
  br label %3615

3615:                                             ; preds = %3779, %3610
  %3616 = phi i64 [ 0, %3610 ], [ %3784, %3779 ]
  %3617 = phi ptr [ %3100, %3610 ], [ %3781, %3779 ]
  %3618 = phi ptr [ %3110, %3610 ], [ %3780, %3779 ]
  %3619 = phi ptr [ %3608, %3610 ], [ %3783, %3779 ]
  %3620 = getelementptr inbounds %struct.BMHeader, ptr %3619, i64 0, i32 3
  %3621 = load i8, ptr %3620, align 1, !tbaa !283
  %3622 = and i8 %3621, 2
  %3623 = icmp eq i8 %3622, 0
  br i1 %3623, label %3624, label %3779

3624:                                             ; preds = %3615
  %3625 = and i8 %3621, 1
  %3626 = icmp eq i8 %3625, 0
  %3627 = and i1 %3055, %3626
  br i1 %3627, label %3779, label %3628

3628:                                             ; preds = %3624
  br i1 %3611, label %3636, label %3629

3629:                                             ; preds = %3628
  %3630 = getelementptr inbounds i32, ptr %3531, i64 %3616
  %3631 = load i32, ptr %3630, align 4, !tbaa !57
  %3632 = icmp eq i32 %3631, -1
  br i1 %3632, label %3636, label %3633

3633:                                             ; preds = %3629
  %3634 = sext i32 %3631 to i64
  %3635 = getelementptr inbounds %struct.TransIslandData, ptr %3532, i64 %3634
  br label %3636

3636:                                             ; preds = %3633, %3629, %3628
  %3637 = phi ptr [ %3635, %3633 ], [ null, %3629 ], [ null, %3628 ]
  br i1 %3612, label %3641, label %3638

3638:                                             ; preds = %3636
  %3639 = load ptr, ptr %3619, align 8, !tbaa !562
  %3640 = getelementptr inbounds i8, ptr %3639, i64 %3613
  br label %3641

3641:                                             ; preds = %3638, %3636
  %3642 = phi ptr [ %3640, %3638 ], [ null, %3636 ]
  %3643 = getelementptr inbounds %struct.TransData, ptr %3617, i64 0, i32 16
  store i32 0, ptr %3643, align 8, !tbaa !49
  %3644 = getelementptr inbounds %struct.BMVert, ptr %3619, i64 0, i32 2
  %3645 = getelementptr inbounds %struct.TransData, ptr %3617, i64 0, i32 3
  store ptr %3644, ptr %3645, align 8, !tbaa !209
  %3646 = getelementptr inbounds %struct.TransData, ptr %3617, i64 0, i32 4
  %3647 = load float, ptr %3644, align 4, !tbaa !112
  store float %3647, ptr %3646, align 4, !tbaa !112
  %3648 = getelementptr inbounds %struct.BMVert, ptr %3619, i64 0, i32 2, i64 1
  %3649 = load float, ptr %3648, align 4, !tbaa !112
  %3650 = getelementptr inbounds %struct.TransData, ptr %3617, i64 0, i32 4, i64 1
  store float %3649, ptr %3650, align 4, !tbaa !112
  %3651 = getelementptr inbounds %struct.BMVert, ptr %3619, i64 0, i32 2, i64 2
  %3652 = load float, ptr %3651, align 4, !tbaa !112
  %3653 = getelementptr inbounds %struct.TransData, ptr %3617, i64 0, i32 4, i64 2
  store float %3652, ptr %3653, align 4, !tbaa !112
  %3654 = icmp eq ptr %3637, null
  %3655 = getelementptr inbounds %struct.TransData, ptr %3617, i64 0, i32 7, i64 2
  %3656 = getelementptr inbounds %struct.TransData, ptr %3617, i64 0, i32 10
  br i1 %3654, label %3666, label %3657

3657:                                             ; preds = %3641
  %3658 = getelementptr inbounds %struct.TransData, ptr %3617, i64 0, i32 7
  %3659 = load float, ptr %3637, align 4, !tbaa !112
  store float %3659, ptr %3658, align 4, !tbaa !112
  %3660 = getelementptr inbounds float, ptr %3637, i64 1
  %3661 = load float, ptr %3660, align 4, !tbaa !112
  %3662 = getelementptr inbounds %struct.TransData, ptr %3617, i64 0, i32 7, i64 1
  store float %3661, ptr %3662, align 4, !tbaa !112
  %3663 = getelementptr inbounds float, ptr %3637, i64 2
  %3664 = load float, ptr %3663, align 4, !tbaa !112
  store float %3664, ptr %3655, align 4, !tbaa !112
  %3665 = getelementptr inbounds %struct.TransIslandData, ptr %3637, i64 0, i32 1
  call void @copy_m3_m3(ptr noundef nonnull %3656, ptr noundef nonnull %3665) #18
  br label %3687

3666:                                             ; preds = %3641
  %3667 = load i16, ptr %3358, align 2, !tbaa !348
  %3668 = icmp eq i16 %3667, 2
  %3669 = getelementptr inbounds %struct.TransData, ptr %3617, i64 0, i32 7
  %3670 = load float, ptr %3644, align 4, !tbaa !112
  store float %3670, ptr %3669, align 4, !tbaa !112
  %3671 = load float, ptr %3648, align 4, !tbaa !112
  %3672 = getelementptr inbounds %struct.TransData, ptr %3617, i64 0, i32 7, i64 1
  store float %3671, ptr %3672, align 4, !tbaa !112
  %3673 = load float, ptr %3651, align 4, !tbaa !112
  store float %3673, ptr %3655, align 4, !tbaa !112
  br i1 %3668, label %3674, label %3677

3674:                                             ; preds = %3666
  %3675 = getelementptr inbounds %struct.BMVert, ptr %3619, i64 0, i32 3
  %3676 = call zeroext i8 @createSpaceNormal(ptr noundef nonnull %3656, ptr noundef nonnull %3675) #18
  br label %3687

3677:                                             ; preds = %3666
  %3678 = getelementptr inbounds %struct.TransData, ptr %3617, i64 0, i32 10, i64 2
  %3679 = getelementptr inbounds %struct.BMVert, ptr %3619, i64 0, i32 3
  %3680 = load float, ptr %3679, align 4, !tbaa !112
  store float %3680, ptr %3678, align 4, !tbaa !112
  %3681 = getelementptr inbounds %struct.BMVert, ptr %3619, i64 0, i32 3, i64 1
  %3682 = load float, ptr %3681, align 4, !tbaa !112
  %3683 = getelementptr inbounds %struct.TransData, ptr %3617, i64 0, i32 10, i64 2, i64 1
  store float %3682, ptr %3683, align 4, !tbaa !112
  %3684 = getelementptr inbounds %struct.BMVert, ptr %3619, i64 0, i32 3, i64 2
  %3685 = load float, ptr %3684, align 4, !tbaa !112
  %3686 = getelementptr inbounds %struct.TransData, ptr %3617, i64 0, i32 10, i64 2, i64 2
  store float %3685, ptr %3686, align 4, !tbaa !112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3656, i8 0, i64 24, i1 false)
  br label %3687

3687:                                             ; preds = %3677, %3674, %3657
  %3688 = getelementptr inbounds %struct.TransData, ptr %3617, i64 0, i32 13
  store ptr null, ptr %3688, align 8, !tbaa !372
  %3689 = getelementptr inbounds %struct.TransData, ptr %3617, i64 0, i32 5
  store ptr null, ptr %3689, align 8, !tbaa !441
  %3690 = getelementptr inbounds %struct.TransData, ptr %3617, i64 0, i32 15
  store ptr null, ptr %3690, align 8, !tbaa !169
  %3691 = load i32, ptr %1, align 8, !tbaa !188
  switch i32 %3691, label %3712 [
    i32 26, label %3692
    i32 4, label %3695
    i32 8, label %3709
  ]

3692:                                             ; preds = %3687
  store ptr %3642, ptr %3689, align 8, !tbaa !441
  %3693 = load float, ptr %3642, align 4, !tbaa !112
  %3694 = getelementptr inbounds %struct.TransData, ptr %3617, i64 0, i32 6
  store float %3693, ptr %3694, align 8, !tbaa !442
  br label %3712

3695:                                             ; preds = %3687
  %3696 = load ptr, ptr %2994, align 8, !tbaa !281
  %3697 = getelementptr inbounds %struct.BMesh, ptr %3696, i64 0, i32 24
  %3698 = load ptr, ptr %3619, align 8, !tbaa !562
  %3699 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %3697, ptr noundef %3698, i32 noundef 36) #18
  store ptr %3618, ptr %3688, align 8, !tbaa !372
  %3700 = getelementptr inbounds %struct.TransDataExtension, ptr %3618, i64 0, i32 12
  %3701 = load float, ptr %3699, align 4, !tbaa !112
  store float %3701, ptr %3700, align 4, !tbaa !112
  %3702 = getelementptr inbounds float, ptr %3699, i64 1
  %3703 = load float, ptr %3702, align 4, !tbaa !112
  %3704 = getelementptr inbounds %struct.TransDataExtension, ptr %3618, i64 0, i32 12, i64 1
  store float %3703, ptr %3704, align 4, !tbaa !112
  %3705 = getelementptr inbounds float, ptr %3699, i64 2
  %3706 = load float, ptr %3705, align 4, !tbaa !112
  %3707 = getelementptr inbounds %struct.TransDataExtension, ptr %3618, i64 0, i32 12, i64 2
  store float %3706, ptr %3707, align 4, !tbaa !112
  %3708 = getelementptr inbounds %struct.TransDataExtension, ptr %3618, i64 0, i32 11
  store ptr %3699, ptr %3708, align 8, !tbaa !427
  store ptr %3699, ptr %3689, align 8, !tbaa !441
  br label %3712

3709:                                             ; preds = %3687
  store ptr %3618, ptr %3688, align 8, !tbaa !372
  %3710 = call float @BM_vert_calc_shell_factor_ex(ptr noundef nonnull %3619, i8 noundef zeroext 1) #18
  %3711 = getelementptr inbounds %struct.TransDataExtension, ptr %3618, i64 0, i32 12
  store float %3710, ptr %3711, align 8, !tbaa !112
  br label %3712

3712:                                             ; preds = %3709, %3695, %3692, %3687
  %3713 = icmp eq ptr %3618, null
  %3714 = getelementptr inbounds %struct.TransDataExtension, ptr %3618, i64 1
  %3715 = select i1 %3713, ptr null, ptr %3714
  %3716 = load i8, ptr %3620, align 1, !tbaa !283
  %3717 = and i8 %3716, 1
  %3718 = icmp eq i8 %3717, 0
  br i1 %3718, label %3722, label %3719

3719:                                             ; preds = %3712
  %3720 = load i32, ptr %3643, align 8, !tbaa !49
  %3721 = or i32 %3720, 1
  store i32 %3721, ptr %3643, align 8, !tbaa !49
  br label %3722

3722:                                             ; preds = %3719, %3712
  br i1 %3055, label %3732, label %3723

3723:                                             ; preds = %3722
  br i1 %3114, label %3727, label %3724

3724:                                             ; preds = %3723
  %3725 = getelementptr inbounds float, ptr %3094, i64 %3616
  %3726 = load float, ptr %3725, align 4, !tbaa !112
  br label %3730

3727:                                             ; preds = %3723
  %3728 = load i32, ptr %3643, align 8, !tbaa !49
  %3729 = or i32 %3728, 16
  store i32 %3729, ptr %3643, align 8, !tbaa !49
  br label %3730

3730:                                             ; preds = %3724, %3727
  %3731 = phi float [ 0x47EFFFFFE0000000, %3727 ], [ %3726, %3724 ]
  store float %3731, ptr %3617, align 8, !tbaa !55
  br label %3732

3732:                                             ; preds = %3730, %3722
  %3733 = load ptr, ptr %35, align 8, !tbaa !63
  %3734 = icmp eq ptr %3733, null
  br i1 %3734, label %3735, label %3739

3735:                                             ; preds = %3732
  %3736 = and i8 %3716, 16
  %3737 = icmp eq i8 %3736, 0
  %3738 = or i1 %3614, %3737
  br i1 %3738, label %3760, label %3739

3739:                                             ; preds = %3735, %3732
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %37) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %38) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %39) #18
  br i1 %3614, label %3754, label %3740

3740:                                             ; preds = %3739
  %3741 = load i8, ptr %3620, align 1, !tbaa !283
  %3742 = and i8 %3741, 16
  %3743 = icmp eq i8 %3742, 0
  br i1 %3743, label %3754, label %3744

3744:                                             ; preds = %3740
  %3745 = getelementptr inbounds %struct.BMHeader, ptr %3619, i64 0, i32 1
  %3746 = load i32, ptr %3745, align 8, !tbaa !537
  %3747 = sext i32 %3746 to i64
  %3748 = getelementptr inbounds [4 x float], ptr %3571, i64 %3747
  call void @quat_to_mat3(ptr noundef nonnull %38, ptr noundef nonnull %3748) #18
  %3749 = load ptr, ptr %35, align 8, !tbaa !63
  %3750 = icmp eq ptr %3749, null
  br i1 %3750, label %3753, label %3751

3751:                                             ; preds = %3744
  %3752 = getelementptr inbounds [3 x [3 x float]], ptr %3749, i64 %3616
  call void @_va_mul_m3_series_4(ptr noundef nonnull %37, ptr noundef nonnull %3752, ptr noundef nonnull %38, ptr noundef nonnull %33) #18
  br label %3756

3753:                                             ; preds = %3744
  call void @mul_m3_m3m3(ptr noundef nonnull %37, ptr noundef nonnull %33, ptr noundef nonnull %38) #18
  br label %3756

3754:                                             ; preds = %3740, %3739
  %3755 = getelementptr inbounds [3 x [3 x float]], ptr %3733, i64 %3616
  call void @mul_m3_m3m3(ptr noundef nonnull %37, ptr noundef nonnull %33, ptr noundef %3755) #18
  br label %3756

3756:                                             ; preds = %3754, %3753, %3751
  %3757 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %39, ptr noundef nonnull %37) #18
  %3758 = getelementptr inbounds %struct.TransData, ptr %3617, i64 0, i32 9
  call void @copy_m3_m3(ptr noundef nonnull %3758, ptr noundef nonnull %39) #18
  %3759 = getelementptr inbounds %struct.TransData, ptr %3617, i64 0, i32 8
  call void @copy_m3_m3(ptr noundef nonnull %3759, ptr noundef nonnull %37) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %39) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %38) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %37) #18
  br label %3763

3760:                                             ; preds = %3735
  %3761 = getelementptr inbounds %struct.TransData, ptr %3617, i64 0, i32 9
  call void @copy_m3_m3(ptr noundef nonnull %3761, ptr noundef nonnull %34) #18
  %3762 = getelementptr inbounds %struct.TransData, ptr %3617, i64 0, i32 8
  call void @copy_m3_m3(ptr noundef nonnull %3762, ptr noundef nonnull %33) #18
  br label %3763

3763:                                             ; preds = %3760, %3756
  br i1 %3600, label %3764, label %3767

3764:                                             ; preds = %3763
  %3765 = load float, ptr %3646, align 8, !tbaa !112
  %3766 = fcmp ogt float %3765, 0.000000e+00
  br i1 %3766, label %3771, label %3767

3767:                                             ; preds = %3764, %3763
  br i1 %3601, label %3768, label %3777

3768:                                             ; preds = %3767
  %3769 = load float, ptr %3646, align 8, !tbaa !112
  %3770 = fcmp olt float %3769, 0.000000e+00
  br i1 %3770, label %3771, label %3777

3771:                                             ; preds = %3768, %3764
  %3772 = call ptr @EDBM_verts_mirror_get(ptr noundef nonnull %2994, ptr noundef nonnull %3619) #18
  %3773 = icmp eq ptr %3772, null
  %3774 = icmp eq ptr %3772, %3619
  %3775 = or i1 %3773, %3774
  br i1 %3775, label %3777, label %3776

3776:                                             ; preds = %3771
  store ptr %3772, ptr %3690, align 8, !tbaa !169
  br label %3777

3777:                                             ; preds = %3776, %3771, %3768, %3767
  %3778 = getelementptr inbounds %struct.TransData, ptr %3617, i64 1
  br label %3779

3779:                                             ; preds = %3777, %3624, %3615
  %3780 = phi ptr [ %3618, %3615 ], [ %3715, %3777 ], [ %3618, %3624 ]
  %3781 = phi ptr [ %3617, %3615 ], [ %3778, %3777 ], [ %3617, %3624 ]
  %3782 = load ptr, ptr %3604, align 8, !tbaa !431
  %3783 = call ptr %3782(ptr noundef nonnull %32) #18
  %3784 = add nuw i64 %3616, 1
  %3785 = icmp eq ptr %3783, null
  br i1 %3785, label %3786, label %3615, !llvm.loop !563

3786:                                             ; preds = %3779, %3599
  %3787 = icmp eq ptr %3532, null
  br i1 %3787, label %3791, label %3788

3788:                                             ; preds = %3786
  %3789 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %3789(ptr noundef nonnull %3532) #18
  %3790 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %3790(ptr noundef %3531) #18
  br label %3791

3791:                                             ; preds = %3788, %3786
  br i1 %3006, label %3815, label %3792

3792:                                             ; preds = %3791
  %3793 = load i32, ptr %3096, align 8, !tbaa !34
  %3794 = icmp sgt i32 %3793, 0
  br i1 %3794, label %3795, label %3815

3795:                                             ; preds = %3792
  %3796 = load ptr, ptr %3101, align 8, !tbaa !48
  br label %3797

3797:                                             ; preds = %3811, %3795
  %3798 = phi ptr [ %3813, %3811 ], [ %3796, %3795 ]
  %3799 = phi i32 [ %3812, %3811 ], [ 0, %3795 ]
  %3800 = getelementptr inbounds %struct.TransData, ptr %3798, i64 0, i32 3
  %3801 = load ptr, ptr %3800, align 8, !tbaa !209
  %3802 = load float, ptr %3801, align 4, !tbaa !112
  %3803 = fcmp olt float %3802, 0.000000e+00
  %3804 = fneg float %3802
  %3805 = select i1 %3803, float %3804, float %3802
  %3806 = fcmp ugt float %3805, 0x3EE4F8B580000000
  br i1 %3806, label %3811, label %3807

3807:                                             ; preds = %3797
  %3808 = getelementptr inbounds %struct.TransData, ptr %3798, i64 0, i32 16
  %3809 = load i32, ptr %3808, align 8, !tbaa !49
  %3810 = or i32 %3809, 65536
  store i32 %3810, ptr %3808, align 8, !tbaa !49
  br label %3811

3811:                                             ; preds = %3807, %3797
  %3812 = add nuw nsw i32 %3799, 1
  %3813 = getelementptr inbounds %struct.TransData, ptr %3798, i64 1
  %3814 = icmp eq i32 %3812, %3793
  br i1 %3814, label %3815, label %3797, !llvm.loop !564

3815:                                             ; preds = %3811, %3792, %3791, %3041, %3037, %3030, %3026, %3019
  %3816 = phi ptr [ null, %3019 ], [ %3094, %3791 ], [ null, %3026 ], [ null, %3030 ], [ null, %3037 ], [ null, %3041 ], [ %3094, %3792 ], [ %3094, %3811 ]
  %3817 = phi ptr [ null, %3019 ], [ %3571, %3791 ], [ null, %3026 ], [ null, %3030 ], [ null, %3037 ], [ null, %3041 ], [ %3571, %3792 ], [ %3571, %3811 ]
  %3818 = icmp eq ptr %3817, null
  br i1 %3818, label %3821, label %3819

3819:                                             ; preds = %3815
  %3820 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %3820(ptr noundef nonnull %3817) #18
  br label %3821

3821:                                             ; preds = %3819, %3815
  %3822 = load ptr, ptr %35, align 8, !tbaa !63
  %3823 = icmp eq ptr %3822, null
  br i1 %3823, label %3826, label %3824

3824:                                             ; preds = %3821
  %3825 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %3825(ptr noundef nonnull %3822) #18
  br label %3826

3826:                                             ; preds = %3824, %3821
  %3827 = icmp eq ptr %3816, null
  br i1 %3827, label %3830, label %3828

3828:                                             ; preds = %3826
  %3829 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %3829(ptr noundef nonnull %3816) #18
  br label %3830

3830:                                             ; preds = %3828, %3826
  %3831 = load i32, ptr %2999, align 4, !tbaa !54
  %3832 = and i32 %3831, 524288
  %3833 = icmp eq i32 %3832, 0
  br i1 %3833, label %3835, label %3834

3834:                                             ; preds = %3830
  call void @EDBM_verts_mirror_cache_end(ptr noundef nonnull %2994) #18
  br label %3835

3835:                                             ; preds = %3830, %3834
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %36) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %35) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %34) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %33) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %32) #18
  br label %4982

3836:                                             ; preds = %2989, %2989
  %3837 = getelementptr inbounds %struct.Object, ptr %2987, i64 0, i32 19
  %3838 = load ptr, ptr %3837, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #18
  %3839 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %3840 = load i32, ptr %3839, align 4, !tbaa !54
  %3841 = and i32 %3840, 2048
  %3842 = getelementptr inbounds %struct.Curve, ptr %3838, i64 0, i32 16
  %3843 = load i16, ptr %3842, align 8, !tbaa !565
  %3844 = and i16 %3843, 1
  %3845 = getelementptr inbounds %struct.Curve, ptr %3838, i64 0, i32 4
  %3846 = load ptr, ptr %3845, align 8, !tbaa !568
  %3847 = icmp eq ptr %3846, null
  br i1 %3847, label %4378, label %3848

3848:                                             ; preds = %3836
  %3849 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef %3838) #18
  %3850 = load ptr, ptr %3849, align 8, !tbaa !63
  %3851 = icmp eq ptr %3850, null
  br i1 %3851, label %3946, label %3852

3852:                                             ; preds = %3848
  %3853 = lshr exact i32 %3841, 11
  %3854 = icmp eq i16 %3844, 0
  %3855 = icmp eq i32 %3841, 0
  br label %3856

3856:                                             ; preds = %3941, %3852
  %3857 = phi ptr [ %3850, %3852 ], [ %3944, %3941 ]
  %3858 = phi i32 [ 0, %3852 ], [ %3943, %3941 ]
  %3859 = phi i32 [ 0, %3852 ], [ %3942, %3941 ]
  %3860 = getelementptr inbounds %struct.Nurb, ptr %3857, i64 0, i32 2
  %3861 = load i16, ptr %3860, align 8, !tbaa !569
  %3862 = icmp eq i16 %3861, 1
  %3863 = getelementptr inbounds %struct.Nurb, ptr %3857, i64 0, i32 6
  %3864 = load i32, ptr %3863, align 8, !tbaa !571
  br i1 %3862, label %3865, label %3912

3865:                                             ; preds = %3856
  %3866 = icmp sgt i32 %3864, 0
  br i1 %3866, label %3867, label %3941

3867:                                             ; preds = %3865
  %3868 = getelementptr inbounds %struct.Nurb, ptr %3857, i64 0, i32 18
  %3869 = load ptr, ptr %3868, align 8, !tbaa !572
  br label %3870

3870:                                             ; preds = %3906, %3867
  %3871 = phi ptr [ %3910, %3906 ], [ %3869, %3867 ]
  %3872 = phi i32 [ %3908, %3906 ], [ %3858, %3867 ]
  %3873 = phi i32 [ %3907, %3906 ], [ %3859, %3867 ]
  %3874 = phi i32 [ %3909, %3906 ], [ 0, %3867 ]
  %3875 = getelementptr inbounds %struct.BezTriple, ptr %3871, i64 0, i32 10
  %3876 = load i8, ptr %3875, align 2, !tbaa !573
  %3877 = icmp eq i8 %3876, 0
  br i1 %3877, label %3878, label %3906

3878:                                             ; preds = %3870
  br i1 %3854, label %3888, label %3879

3879:                                             ; preds = %3878
  %3880 = getelementptr inbounds %struct.BezTriple, ptr %3871, i64 0, i32 8
  %3881 = load i8, ptr %3880, align 4, !tbaa !379
  %3882 = and i8 %3881, 1
  %3883 = icmp eq i8 %3882, 0
  %3884 = add nsw i32 %3872, 3
  %3885 = select i1 %3883, i32 %3872, i32 %3884
  %3886 = add nsw i32 %3873, 3
  %3887 = select i1 %3855, i32 %3873, i32 %3886
  br label %3906

3888:                                             ; preds = %3878
  %3889 = getelementptr inbounds %struct.BezTriple, ptr %3871, i64 0, i32 7
  %3890 = load i8, ptr %3889, align 1, !tbaa !380
  %3891 = and i8 %3890, 1
  %3892 = zext nneg i8 %3891 to i32
  %3893 = add i32 %3872, %3892
  %3894 = getelementptr inbounds %struct.BezTriple, ptr %3871, i64 0, i32 8
  %3895 = load i8, ptr %3894, align 4, !tbaa !379
  %3896 = and i8 %3895, 1
  %3897 = zext nneg i8 %3896 to i32
  %3898 = add i32 %3893, %3897
  %3899 = getelementptr inbounds %struct.BezTriple, ptr %3871, i64 0, i32 9
  %3900 = load i8, ptr %3899, align 1, !tbaa !381
  %3901 = and i8 %3900, 1
  %3902 = zext nneg i8 %3901 to i32
  %3903 = add i32 %3898, %3902
  %3904 = add nsw i32 %3873, 3
  %3905 = select i1 %3855, i32 %3873, i32 %3904
  br label %3906

3906:                                             ; preds = %3888, %3879, %3870
  %3907 = phi i32 [ %3873, %3870 ], [ %3887, %3879 ], [ %3905, %3888 ]
  %3908 = phi i32 [ %3872, %3870 ], [ %3885, %3879 ], [ %3903, %3888 ]
  %3909 = add nuw nsw i32 %3874, 1
  %3910 = getelementptr inbounds %struct.BezTriple, ptr %3871, i64 1
  %3911 = icmp eq i32 %3909, %3864
  br i1 %3911, label %3941, label %3870, !llvm.loop !574

3912:                                             ; preds = %3856
  %3913 = getelementptr inbounds %struct.Nurb, ptr %3857, i64 0, i32 7
  %3914 = load i32, ptr %3913, align 4, !tbaa !575
  %3915 = mul nsw i32 %3914, %3864
  %3916 = icmp sgt i32 %3915, 0
  br i1 %3916, label %3917, label %3941

3917:                                             ; preds = %3912
  %3918 = getelementptr inbounds %struct.Nurb, ptr %3857, i64 0, i32 17
  %3919 = load ptr, ptr %3918, align 8, !tbaa !576
  br label %3920

3920:                                             ; preds = %3935, %3917
  %3921 = phi i32 [ %3937, %3935 ], [ %3858, %3917 ]
  %3922 = phi i32 [ %3936, %3935 ], [ %3859, %3917 ]
  %3923 = phi i32 [ %3938, %3935 ], [ %3915, %3917 ]
  %3924 = phi ptr [ %3939, %3935 ], [ %3919, %3917 ]
  %3925 = getelementptr inbounds %struct.BPoint, ptr %3924, i64 0, i32 4
  %3926 = load i16, ptr %3925, align 2, !tbaa !577
  %3927 = icmp eq i16 %3926, 0
  br i1 %3927, label %3928, label %3935

3928:                                             ; preds = %3920
  %3929 = add i32 %3922, %3853
  %3930 = getelementptr inbounds %struct.BPoint, ptr %3924, i64 0, i32 3
  %3931 = load i16, ptr %3930, align 4, !tbaa !579
  %3932 = and i16 %3931, 1
  %3933 = zext nneg i16 %3932 to i32
  %3934 = add i32 %3921, %3933
  br label %3935

3935:                                             ; preds = %3928, %3920
  %3936 = phi i32 [ %3922, %3920 ], [ %3929, %3928 ]
  %3937 = phi i32 [ %3921, %3920 ], [ %3934, %3928 ]
  %3938 = add nsw i32 %3923, -1
  %3939 = getelementptr inbounds %struct.BPoint, ptr %3924, i64 1
  %3940 = icmp sgt i32 %3923, 1
  br i1 %3940, label %3920, label %3941, !llvm.loop !580

3941:                                             ; preds = %3935, %3906, %3912, %3865
  %3942 = phi i32 [ %3859, %3865 ], [ %3859, %3912 ], [ %3907, %3906 ], [ %3936, %3935 ]
  %3943 = phi i32 [ %3858, %3865 ], [ %3858, %3912 ], [ %3908, %3906 ], [ %3937, %3935 ]
  %3944 = load ptr, ptr %3857, align 8, !tbaa !63
  %3945 = icmp eq ptr %3944, null
  br i1 %3945, label %3946, label %3856, !llvm.loop !581

3946:                                             ; preds = %3941, %3848
  %3947 = phi i32 [ 0, %3848 ], [ %3942, %3941 ]
  %3948 = phi i32 [ 0, %3848 ], [ %3943, %3941 ]
  %3949 = icmp eq i32 %3948, 0
  br i1 %3949, label %4378, label %3950

3950:                                             ; preds = %3946
  %3951 = icmp eq i32 %3841, 0
  %3952 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  %3953 = select i1 %3951, i32 %3948, i32 %3947
  store i32 %3953, ptr %3952, align 8, !tbaa !34
  %3954 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %3955 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  %3956 = sext i32 %3953 to i64
  %3957 = mul nsw i64 %3956, 224
  %3958 = tail call ptr %3954(i64 noundef %3957, ptr noundef nonnull @.str.47) #18
  %3959 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %3958, ptr %3959, align 8, !tbaa !48
  %3960 = load i32, ptr %3955, align 8, !tbaa !34
  %3961 = icmp eq i32 %3960, 1
  br i1 %3961, label %3962, label %3968

3962:                                             ; preds = %3950
  %3963 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 32
  %3964 = load i16, ptr %3963, align 2, !tbaa !348
  switch i16 %3964, label %3968 [
    i16 0, label %3965
    i16 3, label %3965
    i16 4, label %3965
  ]

3965:                                             ; preds = %3962, %3962, %3962
  %3966 = load i32, ptr %1, align 8, !tbaa !188
  switch i32 %3966, label %3968 [
    i32 3, label %3967
    i32 2, label %3967
    i32 10, label %3967
  ]

3967:                                             ; preds = %3965, %3965, %3965
  store i16 2, ptr %3963, align 2, !tbaa !348
  br label %3968

3968:                                             ; preds = %3967, %3965, %3962, %3950
  %3969 = load ptr, ptr %2986, align 8, !tbaa !99
  %3970 = getelementptr inbounds %struct.Object, ptr %3969, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %12, ptr noundef nonnull %3970) #18
  call void @pseudoinverse_m3_m3(ptr noundef nonnull %13, ptr noundef nonnull %12, float noundef 0x3E45798EE0000000) #18
  %3971 = load ptr, ptr %3849, align 8, !tbaa !63
  %3972 = icmp eq ptr %3971, null
  br i1 %3972, label %4378, label %3973

3973:                                             ; preds = %3968
  %3974 = load ptr, ptr %3959, align 8, !tbaa !48
  %3975 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 32
  %3976 = getelementptr inbounds float, ptr %15, i64 1
  %3977 = getelementptr inbounds float, ptr %15, i64 2
  %3978 = icmp ne i16 %3844, 0
  %3979 = icmp eq i16 %3844, 0
  %3980 = trunc i16 %3844 to i8
  %3981 = xor i8 %3980, 1
  br label %3982

3982:                                             ; preds = %4374, %3973
  %3983 = phi ptr [ %3971, %3973 ], [ %4376, %4374 ]
  %3984 = phi ptr [ %3974, %3973 ], [ %4375, %4374 ]
  %3985 = getelementptr inbounds %struct.Nurb, ptr %3983, i64 0, i32 2
  %3986 = load i16, ptr %3985, align 8, !tbaa !569
  %3987 = icmp eq i16 %3986, 1
  %3988 = getelementptr inbounds %struct.Nurb, ptr %3983, i64 0, i32 6
  %3989 = load i32, ptr %3988, align 8, !tbaa !571
  br i1 %3987, label %3990, label %4295

3990:                                             ; preds = %3982
  %3991 = icmp sgt i32 %3989, 0
  br i1 %3991, label %3992, label %4284

3992:                                             ; preds = %3990
  %3993 = getelementptr inbounds %struct.Nurb, ptr %3983, i64 0, i32 18
  %3994 = load ptr, ptr %3993, align 8, !tbaa !572
  br label %3995

3995:                                             ; preds = %4276, %3992
  %3996 = phi ptr [ %4279, %4276 ], [ %3984, %3992 ]
  %3997 = phi ptr [ %4278, %4276 ], [ %3984, %3992 ]
  %3998 = phi ptr [ %4277, %4276 ], [ %3984, %3992 ]
  %3999 = phi ptr [ %4281, %4276 ], [ %3994, %3992 ]
  %4000 = phi i32 [ %4280, %4276 ], [ 0, %3992 ]
  %4001 = getelementptr inbounds %struct.BezTriple, ptr %3999, i64 0, i32 10
  %4002 = load i8, ptr %4001, align 2, !tbaa !573
  %4003 = icmp eq i8 %4002, 0
  br i1 %4003, label %4004, label %4271

4004:                                             ; preds = %3995
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %14) #18
  %4005 = load i16, ptr %3975, align 2, !tbaa !348
  %4006 = icmp eq i16 %4005, 2
  br i1 %4006, label %4007, label %4032

4007:                                             ; preds = %4004
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #18
  call void @BKE_nurb_bezt_calc_normal(ptr noundef nonnull %3983, ptr noundef %3999, ptr noundef nonnull %15) #18
  call void @BKE_nurb_bezt_calc_plane(ptr noundef nonnull %3983, ptr noundef %3999, ptr noundef nonnull %16) #18
  %4008 = call zeroext i8 @createSpaceNormalTangent(ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16) #18
  %4009 = icmp eq i8 %4008, 0
  br i1 %4009, label %4010, label %4031

4010:                                             ; preds = %4007
  %4011 = load float, ptr %15, align 4, !tbaa !112
  %4012 = load float, ptr %3976, align 4, !tbaa !112
  %4013 = fmul float %4012, %4012
  %4014 = call float @llvm.fmuladd.f32(float %4011, float %4011, float %4013)
  %4015 = load float, ptr %3977, align 4, !tbaa !112
  %4016 = call float @llvm.fmuladd.f32(float %4015, float %4015, float %4014)
  %4017 = fcmp ogt float %4016, 0x38AA95A5C0000000
  br i1 %4017, label %4018, label %4027

4018:                                             ; preds = %4010
  %4019 = call float @sqrtf(float noundef %4016) #18
  %4020 = fdiv float 1.000000e+00, %4019
  %4021 = load float, ptr %15, align 4, !tbaa !112
  %4022 = fmul float %4021, %4020
  store float %4022, ptr %15, align 4, !tbaa !112
  %4023 = load float, ptr %3976, align 4, !tbaa !112
  %4024 = fmul float %4020, %4023
  store float %4024, ptr %3976, align 4, !tbaa !112
  %4025 = load float, ptr %3977, align 4, !tbaa !112
  %4026 = fmul float %4020, %4025
  br label %4028

4027:                                             ; preds = %4010
  store float 0.000000e+00, ptr %15, align 4, !tbaa !112
  store float 0.000000e+00, ptr %3976, align 4, !tbaa !112
  br label %4028

4028:                                             ; preds = %4027, %4018
  %4029 = phi float [ 0.000000e+00, %4027 ], [ %4026, %4018 ]
  store float %4029, ptr %3977, align 4, !tbaa !112
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %14, ptr noundef nonnull %15) #18
  %4030 = call zeroext i8 @invert_m3(ptr noundef nonnull %14) #18
  br label %4031

4031:                                             ; preds = %4028, %4007
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #18
  br label %4032

4032:                                             ; preds = %4031, %4004
  br i1 %3951, label %4033, label %4045

4033:                                             ; preds = %4032
  %4034 = getelementptr inbounds %struct.BezTriple, ptr %3999, i64 0, i32 8
  %4035 = load i8, ptr %4034, align 4, !tbaa !379
  %4036 = and i8 %4035, 1
  %4037 = icmp ne i8 %4036, 0
  %4038 = select i1 %4037, i1 %3978, i1 false
  br i1 %4038, label %4045, label %4039

4039:                                             ; preds = %4033
  %4040 = getelementptr inbounds %struct.BezTriple, ptr %3999, i64 0, i32 7
  %4041 = load i8, ptr %4040, align 1, !tbaa !380
  %4042 = and i8 %4041, 1
  %4043 = icmp ne i8 %4042, 0
  %4044 = select i1 %4043, i1 %3979, i1 false
  br i1 %4044, label %4045, label %4105

4045:                                             ; preds = %4039, %4033, %4032
  %4046 = getelementptr inbounds %struct.TransData, ptr %3998, i64 0, i32 4
  %4047 = load float, ptr %3999, align 4, !tbaa !112
  store float %4047, ptr %4046, align 4, !tbaa !112
  %4048 = getelementptr inbounds float, ptr %3999, i64 1
  %4049 = load float, ptr %4048, align 4, !tbaa !112
  %4050 = getelementptr inbounds %struct.TransData, ptr %3998, i64 0, i32 4, i64 1
  store float %4049, ptr %4050, align 4, !tbaa !112
  %4051 = getelementptr inbounds float, ptr %3999, i64 2
  %4052 = load float, ptr %4051, align 4, !tbaa !112
  %4053 = getelementptr inbounds %struct.TransData, ptr %3998, i64 0, i32 4, i64 2
  store float %4052, ptr %4053, align 4, !tbaa !112
  %4054 = getelementptr inbounds %struct.TransData, ptr %3998, i64 0, i32 3
  store ptr %3999, ptr %4054, align 8, !tbaa !209
  %4055 = getelementptr inbounds %struct.TransData, ptr %3998, i64 0, i32 7
  br i1 %3979, label %4056, label %4064

4056:                                             ; preds = %4045
  %4057 = load i16, ptr %3975, align 2, !tbaa !348
  %4058 = icmp eq i16 %4057, 2
  br i1 %4058, label %4064, label %4059

4059:                                             ; preds = %4056
  %4060 = getelementptr inbounds %struct.BezTriple, ptr %3999, i64 0, i32 8
  %4061 = load i8, ptr %4060, align 4, !tbaa !379
  %4062 = and i8 %4061, 1
  %4063 = icmp ne i8 %4062, 0
  br label %4064

4064:                                             ; preds = %4059, %4056, %4045
  %4065 = phi i1 [ true, %4056 ], [ true, %4045 ], [ %4063, %4059 ]
  %4066 = zext i1 %4065 to i64
  %4067 = getelementptr inbounds [3 x [3 x float]], ptr %3999, i64 0, i64 %4066
  %4068 = load float, ptr %4067, align 4, !tbaa !112
  store float %4068, ptr %4055, align 4, !tbaa !112
  %4069 = getelementptr inbounds float, ptr %4067, i64 1
  %4070 = load float, ptr %4069, align 4, !tbaa !112
  %4071 = getelementptr inbounds %struct.TransData, ptr %3998, i64 0, i32 7, i64 1
  store float %4070, ptr %4071, align 4, !tbaa !112
  %4072 = getelementptr inbounds float, ptr %4067, i64 2
  %4073 = load float, ptr %4072, align 4, !tbaa !112
  %4074 = getelementptr inbounds %struct.TransData, ptr %3998, i64 0, i32 7, i64 2
  store float %4073, ptr %4074, align 4, !tbaa !112
  %4075 = getelementptr inbounds %struct.TransData, ptr %3998, i64 0, i32 16
  %4076 = getelementptr inbounds %struct.BezTriple, ptr %3999, i64 0, i32 7
  %4077 = getelementptr inbounds %struct.BezTriple, ptr %3999, i64 0, i32 8
  %4078 = select i1 %3979, ptr %4076, ptr %4077
  %4079 = load i8, ptr %4078, align 1, !tbaa !81
  %4080 = and i8 %4079, 1
  %4081 = zext nneg i8 %4080 to i32
  store i32 %4081, ptr %4075, align 8, !tbaa !49
  %4082 = getelementptr inbounds %struct.TransData, ptr %3998, i64 0, i32 13
  store ptr null, ptr %4082, align 8, !tbaa !372
  %4083 = getelementptr inbounds %struct.TransData, ptr %3998, i64 0, i32 5
  store ptr null, ptr %4083, align 8, !tbaa !441
  %4084 = getelementptr inbounds %struct.TransData, ptr %3998, i64 0, i32 16
  %4085 = or disjoint i32 %4081, 4096
  store i32 %4085, ptr %4084, align 8, !tbaa !49
  %4086 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !63
  %4087 = call ptr %4086(i64 noundef 24, ptr noundef nonnull @.str.37) #18
  %4088 = getelementptr inbounds %struct.TransData, ptr %3998, i64 0, i32 14
  store ptr %4087, ptr %4088, align 8, !tbaa !239
  %4089 = getelementptr inbounds %struct.BezTriple, ptr %3999, i64 0, i32 5
  %4090 = load i8, ptr %4089, align 1, !tbaa !506
  store i8 %4090, ptr %4087, align 8, !tbaa !507
  %4091 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %4087, i64 0, i32 2
  store ptr %4089, ptr %4091, align 8, !tbaa !240
  %4092 = getelementptr inbounds %struct.BezTriple, ptr %3999, i64 0, i32 6
  %4093 = load i8, ptr %4092, align 2, !tbaa !508
  %4094 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %4087, i64 0, i32 1
  store i8 %4093, ptr %4094, align 1, !tbaa !509
  %4095 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %4087, i64 0, i32 3
  store ptr %4092, ptr %4095, align 8, !tbaa !242
  %4096 = getelementptr inbounds %struct.TransData, ptr %3998, i64 0, i32 9
  call void @copy_m3_m3(ptr noundef nonnull %4096, ptr noundef nonnull %13) #18
  %4097 = getelementptr inbounds %struct.TransData, ptr %3998, i64 0, i32 8
  call void @copy_m3_m3(ptr noundef nonnull %4097, ptr noundef nonnull %12) #18
  %4098 = load i16, ptr %3975, align 2, !tbaa !348
  %4099 = icmp eq i16 %4098, 2
  br i1 %4099, label %4100, label %4102

4100:                                             ; preds = %4064
  %4101 = getelementptr inbounds %struct.TransData, ptr %3998, i64 0, i32 10
  call void @copy_m3_m3(ptr noundef nonnull %4101, ptr noundef nonnull %14) #18
  br label %4102

4102:                                             ; preds = %4100, %4064
  %4103 = getelementptr inbounds %struct.TransData, ptr %3998, i64 1
  %4104 = getelementptr inbounds %struct.TransData, ptr %3996, i64 1
  br label %4105

4105:                                             ; preds = %4102, %4039
  %4106 = phi ptr [ %4103, %4102 ], [ %3998, %4039 ]
  %4107 = phi ptr [ %4104, %4102 ], [ %3996, %4039 ]
  %4108 = phi ptr [ %4087, %4102 ], [ null, %4039 ]
  br i1 %3951, label %4109, label %4114

4109:                                             ; preds = %4105
  %4110 = getelementptr inbounds %struct.BezTriple, ptr %3999, i64 0, i32 8
  %4111 = load i8, ptr %4110, align 4, !tbaa !379
  %4112 = and i8 %4111, 1
  %4113 = icmp eq i8 %4112, 0
  br i1 %4113, label %4187, label %4114

4114:                                             ; preds = %4109, %4105
  %4115 = getelementptr inbounds %struct.TransData, ptr %4106, i64 0, i32 4
  %4116 = getelementptr inbounds [3 x [3 x float]], ptr %3999, i64 0, i64 1
  %4117 = load float, ptr %4116, align 4, !tbaa !112
  store float %4117, ptr %4115, align 4, !tbaa !112
  %4118 = getelementptr inbounds [3 x [3 x float]], ptr %3999, i64 0, i64 1, i64 1
  %4119 = load float, ptr %4118, align 4, !tbaa !112
  %4120 = getelementptr inbounds %struct.TransData, ptr %4106, i64 0, i32 4, i64 1
  store float %4119, ptr %4120, align 4, !tbaa !112
  %4121 = getelementptr inbounds [3 x [3 x float]], ptr %3999, i64 0, i64 1, i64 2
  %4122 = load float, ptr %4121, align 4, !tbaa !112
  %4123 = getelementptr inbounds %struct.TransData, ptr %4106, i64 0, i32 4, i64 2
  store float %4122, ptr %4123, align 4, !tbaa !112
  %4124 = getelementptr inbounds %struct.TransData, ptr %4106, i64 0, i32 3
  store ptr %4116, ptr %4124, align 8, !tbaa !209
  %4125 = getelementptr inbounds %struct.TransData, ptr %4106, i64 0, i32 7
  %4126 = load float, ptr %4116, align 4, !tbaa !112
  store float %4126, ptr %4125, align 4, !tbaa !112
  %4127 = load float, ptr %4118, align 4, !tbaa !112
  %4128 = getelementptr inbounds %struct.TransData, ptr %4106, i64 0, i32 7, i64 1
  store float %4127, ptr %4128, align 4, !tbaa !112
  %4129 = load float, ptr %4121, align 4, !tbaa !112
  %4130 = getelementptr inbounds %struct.TransData, ptr %4106, i64 0, i32 7, i64 2
  store float %4129, ptr %4130, align 4, !tbaa !112
  %4131 = getelementptr inbounds %struct.BezTriple, ptr %3999, i64 0, i32 8
  %4132 = load i8, ptr %4131, align 4, !tbaa !379
  %4133 = and i8 %4132, 1
  %4134 = getelementptr inbounds %struct.TransData, ptr %4106, i64 0, i32 16
  %4135 = zext nneg i8 %4133 to i32
  store i32 %4135, ptr %4134, align 8, !tbaa !49
  %4136 = getelementptr inbounds %struct.TransData, ptr %4106, i64 0, i32 13
  store ptr null, ptr %4136, align 8, !tbaa !372
  %4137 = load i32, ptr %1, align 8, !tbaa !188
  switch i32 %4137, label %4148 [
    i32 16, label %4138
    i32 9, label %4143
  ]

4138:                                             ; preds = %4114
  %4139 = getelementptr inbounds %struct.BezTriple, ptr %3999, i64 0, i32 3
  %4140 = getelementptr inbounds %struct.TransData, ptr %4106, i64 0, i32 5
  store ptr %4139, ptr %4140, align 8, !tbaa !441
  %4141 = load float, ptr %4139, align 4, !tbaa !582
  %4142 = getelementptr inbounds %struct.TransData, ptr %4106, i64 0, i32 6
  store float %4141, ptr %4142, align 8, !tbaa !442
  br label %4150

4143:                                             ; preds = %4114
  %4144 = getelementptr inbounds %struct.BezTriple, ptr %3999, i64 0, i32 1
  %4145 = getelementptr inbounds %struct.TransData, ptr %4106, i64 0, i32 5
  store ptr %4144, ptr %4145, align 8, !tbaa !441
  %4146 = load float, ptr %4144, align 4, !tbaa !583
  %4147 = getelementptr inbounds %struct.TransData, ptr %4106, i64 0, i32 6
  store float %4146, ptr %4147, align 8, !tbaa !442
  br label %4150

4148:                                             ; preds = %4114
  %4149 = getelementptr inbounds %struct.TransData, ptr %4106, i64 0, i32 5
  store ptr null, ptr %4149, align 8, !tbaa !441
  br label %4150

4150:                                             ; preds = %4148, %4143, %4138
  %4151 = getelementptr inbounds %struct.TransData, ptr %4106, i64 0, i32 9
  call void @copy_m3_m3(ptr noundef nonnull %4151, ptr noundef nonnull %13) #18
  %4152 = getelementptr inbounds %struct.TransData, ptr %4106, i64 0, i32 8
  call void @copy_m3_m3(ptr noundef nonnull %4152, ptr noundef nonnull %12) #18
  %4153 = load i16, ptr %3975, align 2, !tbaa !348
  %4154 = icmp eq i16 %4153, 2
  br i1 %4154, label %4155, label %4157

4155:                                             ; preds = %4150
  %4156 = getelementptr inbounds %struct.TransData, ptr %4106, i64 0, i32 10
  call void @copy_m3_m3(ptr noundef nonnull %4156, ptr noundef nonnull %14) #18
  br label %4157

4157:                                             ; preds = %4155, %4150
  %4158 = getelementptr inbounds %struct.BezTriple, ptr %3999, i64 0, i32 7
  %4159 = load i8, ptr %4158, align 1, !tbaa !380
  %4160 = and i8 %4159, 1
  %4161 = icmp eq i8 %4160, 0
  br i1 %4161, label %4162, label %4183

4162:                                             ; preds = %4157
  %4163 = getelementptr inbounds %struct.BezTriple, ptr %3999, i64 0, i32 9
  %4164 = load i8, ptr %4163, align 1, !tbaa !381
  %4165 = and i8 %4164, 1
  %4166 = icmp eq i8 %4165, 0
  %4167 = icmp eq ptr %4108, null
  %4168 = and i1 %4167, %4166
  br i1 %4168, label %4169, label %4183

4169:                                             ; preds = %4162
  %4170 = getelementptr inbounds %struct.TransData, ptr %4106, i64 0, i32 16
  %4171 = load i32, ptr %4170, align 8, !tbaa !49
  %4172 = or i32 %4171, 4096
  store i32 %4172, ptr %4170, align 8, !tbaa !49
  %4173 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !63
  %4174 = call ptr %4173(i64 noundef 24, ptr noundef nonnull @.str.37) #18
  %4175 = getelementptr inbounds %struct.TransData, ptr %4106, i64 0, i32 14
  store ptr %4174, ptr %4175, align 8, !tbaa !239
  %4176 = getelementptr inbounds %struct.BezTriple, ptr %3999, i64 0, i32 5
  %4177 = load i8, ptr %4176, align 1, !tbaa !506
  store i8 %4177, ptr %4174, align 8, !tbaa !507
  %4178 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %4174, i64 0, i32 2
  store ptr %4176, ptr %4178, align 8, !tbaa !240
  %4179 = getelementptr inbounds %struct.BezTriple, ptr %3999, i64 0, i32 6
  %4180 = load i8, ptr %4179, align 2, !tbaa !508
  %4181 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %4174, i64 0, i32 1
  store i8 %4180, ptr %4181, align 1, !tbaa !509
  %4182 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %4174, i64 0, i32 3
  store ptr %4179, ptr %4182, align 8, !tbaa !242
  br label %4183

4183:                                             ; preds = %4169, %4162, %4157
  %4184 = phi ptr [ %4174, %4169 ], [ %4108, %4162 ], [ %4108, %4157 ]
  %4185 = getelementptr inbounds %struct.TransData, ptr %4106, i64 1
  %4186 = getelementptr inbounds %struct.TransData, ptr %4107, i64 1
  br label %4187

4187:                                             ; preds = %4183, %4109
  %4188 = phi ptr [ %4185, %4183 ], [ %4106, %4109 ]
  %4189 = phi ptr [ %4186, %4183 ], [ %4107, %4109 ]
  %4190 = phi ptr [ %4184, %4183 ], [ %4108, %4109 ]
  br i1 %3951, label %4191, label %4203

4191:                                             ; preds = %4187
  %4192 = getelementptr inbounds %struct.BezTriple, ptr %3999, i64 0, i32 8
  %4193 = load i8, ptr %4192, align 4, !tbaa !379
  %4194 = and i8 %4193, 1
  %4195 = icmp ne i8 %4194, 0
  %4196 = select i1 %4195, i1 %3978, i1 false
  br i1 %4196, label %4203, label %4197

4197:                                             ; preds = %4191
  %4198 = getelementptr inbounds %struct.BezTriple, ptr %3999, i64 0, i32 9
  %4199 = load i8, ptr %4198, align 1, !tbaa !381
  %4200 = and i8 %4199, 1
  %4201 = icmp ne i8 %4200, 0
  %4202 = select i1 %4201, i1 %3979, i1 false
  br i1 %4202, label %4203, label %4268

4203:                                             ; preds = %4197, %4191, %4187
  %4204 = getelementptr inbounds %struct.TransData, ptr %4188, i64 0, i32 4
  %4205 = getelementptr inbounds [3 x [3 x float]], ptr %3999, i64 0, i64 2
  %4206 = load float, ptr %4205, align 4, !tbaa !112
  store float %4206, ptr %4204, align 4, !tbaa !112
  %4207 = getelementptr inbounds [3 x [3 x float]], ptr %3999, i64 0, i64 2, i64 1
  %4208 = load float, ptr %4207, align 4, !tbaa !112
  %4209 = getelementptr inbounds %struct.TransData, ptr %4188, i64 0, i32 4, i64 1
  store float %4208, ptr %4209, align 4, !tbaa !112
  %4210 = getelementptr inbounds [3 x [3 x float]], ptr %3999, i64 0, i64 2, i64 2
  %4211 = load float, ptr %4210, align 4, !tbaa !112
  %4212 = getelementptr inbounds %struct.TransData, ptr %4188, i64 0, i32 4, i64 2
  store float %4211, ptr %4212, align 4, !tbaa !112
  %4213 = getelementptr inbounds %struct.TransData, ptr %4188, i64 0, i32 3
  store ptr %4205, ptr %4213, align 8, !tbaa !209
  %4214 = getelementptr inbounds %struct.TransData, ptr %4188, i64 0, i32 7
  br i1 %3979, label %4215, label %4223

4215:                                             ; preds = %4203
  %4216 = load i16, ptr %3975, align 2, !tbaa !348
  %4217 = icmp eq i16 %4216, 2
  br i1 %4217, label %4223, label %4218

4218:                                             ; preds = %4215
  %4219 = getelementptr inbounds %struct.BezTriple, ptr %3999, i64 0, i32 8
  %4220 = load i8, ptr %4219, align 4, !tbaa !379
  %4221 = and i8 %4220, 1
  %4222 = icmp ne i8 %4221, 0
  br label %4223

4223:                                             ; preds = %4218, %4215, %4203
  %4224 = phi i1 [ true, %4215 ], [ true, %4203 ], [ %4222, %4218 ]
  %4225 = select i1 %4224, i64 1, i64 2
  %4226 = getelementptr inbounds [3 x [3 x float]], ptr %3999, i64 0, i64 %4225
  %4227 = load float, ptr %4226, align 4, !tbaa !112
  store float %4227, ptr %4214, align 4, !tbaa !112
  %4228 = getelementptr inbounds float, ptr %4226, i64 1
  %4229 = load float, ptr %4228, align 4, !tbaa !112
  %4230 = getelementptr inbounds %struct.TransData, ptr %4188, i64 0, i32 7, i64 1
  store float %4229, ptr %4230, align 4, !tbaa !112
  %4231 = getelementptr inbounds float, ptr %4226, i64 2
  %4232 = load float, ptr %4231, align 4, !tbaa !112
  %4233 = getelementptr inbounds %struct.TransData, ptr %4188, i64 0, i32 7, i64 2
  store float %4232, ptr %4233, align 4, !tbaa !112
  %4234 = getelementptr inbounds %struct.TransData, ptr %4188, i64 0, i32 16
  %4235 = getelementptr inbounds %struct.BezTriple, ptr %3999, i64 0, i32 9
  %4236 = getelementptr inbounds %struct.BezTriple, ptr %3999, i64 0, i32 8
  %4237 = select i1 %3979, ptr %4235, ptr %4236
  %4238 = load i8, ptr %4237, align 1, !tbaa !81
  %4239 = and i8 %4238, 1
  %4240 = zext nneg i8 %4239 to i32
  store i32 %4240, ptr %4234, align 8, !tbaa !49
  %4241 = getelementptr inbounds %struct.TransData, ptr %4188, i64 0, i32 13
  store ptr null, ptr %4241, align 8, !tbaa !372
  %4242 = getelementptr inbounds %struct.TransData, ptr %4188, i64 0, i32 5
  store ptr null, ptr %4242, align 8, !tbaa !441
  %4243 = icmp eq ptr %4190, null
  br i1 %4243, label %4244, label %4258

4244:                                             ; preds = %4223
  %4245 = getelementptr inbounds %struct.TransData, ptr %4188, i64 0, i32 16
  %4246 = load i32, ptr %4245, align 8, !tbaa !49
  %4247 = or i32 %4246, 4096
  store i32 %4247, ptr %4245, align 8, !tbaa !49
  %4248 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !63
  %4249 = call ptr %4248(i64 noundef 24, ptr noundef nonnull @.str.37) #18
  %4250 = getelementptr inbounds %struct.TransData, ptr %4188, i64 0, i32 14
  store ptr %4249, ptr %4250, align 8, !tbaa !239
  %4251 = getelementptr inbounds %struct.BezTriple, ptr %3999, i64 0, i32 5
  %4252 = load i8, ptr %4251, align 1, !tbaa !506
  store i8 %4252, ptr %4249, align 8, !tbaa !507
  %4253 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %4249, i64 0, i32 2
  store ptr %4251, ptr %4253, align 8, !tbaa !240
  %4254 = getelementptr inbounds %struct.BezTriple, ptr %3999, i64 0, i32 6
  %4255 = load i8, ptr %4254, align 2, !tbaa !508
  %4256 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %4249, i64 0, i32 1
  store i8 %4255, ptr %4256, align 1, !tbaa !509
  %4257 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %4249, i64 0, i32 3
  store ptr %4254, ptr %4257, align 8, !tbaa !242
  br label %4258

4258:                                             ; preds = %4244, %4223
  %4259 = getelementptr inbounds %struct.TransData, ptr %4188, i64 0, i32 9
  call void @copy_m3_m3(ptr noundef nonnull %4259, ptr noundef nonnull %13) #18
  %4260 = getelementptr inbounds %struct.TransData, ptr %4188, i64 0, i32 8
  call void @copy_m3_m3(ptr noundef nonnull %4260, ptr noundef nonnull %12) #18
  %4261 = load i16, ptr %3975, align 2, !tbaa !348
  %4262 = icmp eq i16 %4261, 2
  br i1 %4262, label %4263, label %4265

4263:                                             ; preds = %4258
  %4264 = getelementptr inbounds %struct.TransData, ptr %4188, i64 0, i32 10
  call void @copy_m3_m3(ptr noundef nonnull %4264, ptr noundef nonnull %14) #18
  br label %4265

4265:                                             ; preds = %4263, %4258
  %4266 = getelementptr inbounds %struct.TransData, ptr %4188, i64 1
  %4267 = getelementptr inbounds %struct.TransData, ptr %4189, i64 1
  br label %4268

4268:                                             ; preds = %4265, %4197
  %4269 = phi ptr [ %4266, %4265 ], [ %4188, %4197 ]
  %4270 = phi ptr [ %4267, %4265 ], [ %4189, %4197 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %14) #18
  br label %4276

4271:                                             ; preds = %3995
  %4272 = icmp eq ptr %3997, %3996
  %4273 = select i1 %3951, i1 true, i1 %4272
  br i1 %4273, label %4276, label %4274

4274:                                             ; preds = %4271
  %4275 = getelementptr inbounds %struct.TransData, ptr %3996, i64 -1
  call fastcc void @calc_distanceCurveVerts(ptr noundef %3997, ptr noundef nonnull %4275)
  br label %4276

4276:                                             ; preds = %4274, %4271, %4268
  %4277 = phi ptr [ %4269, %4268 ], [ %3998, %4274 ], [ %3998, %4271 ]
  %4278 = phi ptr [ %3997, %4268 ], [ %3996, %4274 ], [ %3997, %4271 ]
  %4279 = phi ptr [ %4270, %4268 ], [ %3996, %4274 ], [ %3996, %4271 ]
  %4280 = add nuw nsw i32 %4000, 1
  %4281 = getelementptr inbounds %struct.BezTriple, ptr %3999, i64 1
  %4282 = load i32, ptr %3988, align 8, !tbaa !571
  %4283 = icmp slt i32 %4280, %4282
  br i1 %4283, label %3995, label %4284, !llvm.loop !584

4284:                                             ; preds = %4276, %3990
  %4285 = phi ptr [ %3984, %3990 ], [ %4277, %4276 ]
  %4286 = phi ptr [ %3984, %3990 ], [ %4278, %4276 ]
  %4287 = phi ptr [ %3984, %3990 ], [ %4279, %4276 ]
  %4288 = icmp eq ptr %4286, %4287
  %4289 = select i1 %3951, i1 true, i1 %4288
  br i1 %4289, label %4292, label %4290

4290:                                             ; preds = %4284
  %4291 = getelementptr inbounds %struct.TransData, ptr %4287, i64 -1
  call fastcc void @calc_distanceCurveVerts(ptr noundef %4286, ptr noundef nonnull %4291)
  br label %4292

4292:                                             ; preds = %4290, %4284
  %4293 = load i32, ptr %1, align 8, !tbaa !188
  switch i32 %4293, label %4294 [
    i32 16, label %4374
    i32 9, label %4374
  ]

4294:                                             ; preds = %4292
  call void @BKE_nurb_handles_test(ptr noundef nonnull %3983, i8 noundef zeroext %3981) #18
  br label %4374

4295:                                             ; preds = %3982
  %4296 = getelementptr inbounds %struct.Nurb, ptr %3983, i64 0, i32 7
  %4297 = load i32, ptr %4296, align 4, !tbaa !575
  %4298 = mul nsw i32 %4297, %3989
  %4299 = icmp sgt i32 %4298, 0
  br i1 %4299, label %4300, label %4366

4300:                                             ; preds = %4295
  %4301 = getelementptr inbounds %struct.Nurb, ptr %3983, i64 0, i32 17
  %4302 = load ptr, ptr %4301, align 8, !tbaa !576
  br label %4303

4303:                                             ; preds = %4359, %4300
  %4304 = phi ptr [ %4362, %4359 ], [ %3984, %4300 ]
  %4305 = phi ptr [ %4361, %4359 ], [ %3984, %4300 ]
  %4306 = phi ptr [ %4360, %4359 ], [ %3984, %4300 ]
  %4307 = phi i32 [ %4363, %4359 ], [ %4298, %4300 ]
  %4308 = phi ptr [ %4364, %4359 ], [ %4302, %4300 ]
  %4309 = getelementptr inbounds %struct.BPoint, ptr %4308, i64 0, i32 4
  %4310 = load i16, ptr %4309, align 2, !tbaa !577
  %4311 = icmp eq i16 %4310, 0
  br i1 %4311, label %4312, label %4354

4312:                                             ; preds = %4303
  br i1 %3951, label %4313, label %4318

4313:                                             ; preds = %4312
  %4314 = getelementptr inbounds %struct.BPoint, ptr %4308, i64 0, i32 3
  %4315 = load i16, ptr %4314, align 4, !tbaa !579
  %4316 = and i16 %4315, 1
  %4317 = icmp eq i16 %4316, 0
  br i1 %4317, label %4359, label %4318

4318:                                             ; preds = %4313, %4312
  %4319 = getelementptr inbounds %struct.TransData, ptr %4306, i64 0, i32 4
  %4320 = load float, ptr %4308, align 4, !tbaa !112
  store float %4320, ptr %4319, align 4, !tbaa !112
  %4321 = getelementptr inbounds float, ptr %4308, i64 1
  %4322 = load float, ptr %4321, align 4, !tbaa !112
  %4323 = getelementptr inbounds %struct.TransData, ptr %4306, i64 0, i32 4, i64 1
  store float %4322, ptr %4323, align 4, !tbaa !112
  %4324 = getelementptr inbounds float, ptr %4308, i64 2
  %4325 = load float, ptr %4324, align 4, !tbaa !112
  %4326 = getelementptr inbounds %struct.TransData, ptr %4306, i64 0, i32 4, i64 2
  store float %4325, ptr %4326, align 4, !tbaa !112
  %4327 = getelementptr inbounds %struct.TransData, ptr %4306, i64 0, i32 3
  store ptr %4308, ptr %4327, align 8, !tbaa !209
  %4328 = getelementptr inbounds %struct.TransData, ptr %4306, i64 0, i32 7
  %4329 = load float, ptr %4308, align 4, !tbaa !112
  store float %4329, ptr %4328, align 4, !tbaa !112
  %4330 = load float, ptr %4321, align 4, !tbaa !112
  %4331 = getelementptr inbounds %struct.TransData, ptr %4306, i64 0, i32 7, i64 1
  store float %4330, ptr %4331, align 4, !tbaa !112
  %4332 = load float, ptr %4324, align 4, !tbaa !112
  %4333 = getelementptr inbounds %struct.TransData, ptr %4306, i64 0, i32 7, i64 2
  store float %4332, ptr %4333, align 4, !tbaa !112
  %4334 = getelementptr inbounds %struct.BPoint, ptr %4308, i64 0, i32 3
  %4335 = load i16, ptr %4334, align 4, !tbaa !579
  %4336 = and i16 %4335, 1
  %4337 = getelementptr inbounds %struct.TransData, ptr %4306, i64 0, i32 16
  %4338 = zext nneg i16 %4336 to i32
  store i32 %4338, ptr %4337, align 8, !tbaa !49
  %4339 = getelementptr inbounds %struct.TransData, ptr %4306, i64 0, i32 13
  store ptr null, ptr %4339, align 8, !tbaa !372
  %4340 = load i32, ptr %1, align 8, !tbaa !188
  switch i32 %4340, label %4343 [
    i32 16, label %4341
    i32 3, label %4341
  ]

4341:                                             ; preds = %4318, %4318
  %4342 = getelementptr inbounds %struct.BPoint, ptr %4308, i64 0, i32 5
  br label %4345

4343:                                             ; preds = %4318
  %4344 = getelementptr inbounds %struct.BPoint, ptr %4308, i64 0, i32 1
  br label %4345

4345:                                             ; preds = %4343, %4341
  %4346 = phi ptr [ %4344, %4343 ], [ %4342, %4341 ]
  %4347 = getelementptr inbounds %struct.TransData, ptr %4306, i64 0, i32 5
  store ptr %4346, ptr %4347, align 8, !tbaa !441
  %4348 = load float, ptr %4346, align 4, !tbaa !112
  %4349 = getelementptr inbounds %struct.TransData, ptr %4306, i64 0, i32 6
  store float %4348, ptr %4349, align 8, !tbaa !442
  %4350 = getelementptr inbounds %struct.TransData, ptr %4306, i64 0, i32 9
  call void @copy_m3_m3(ptr noundef nonnull %4350, ptr noundef nonnull %13) #18
  %4351 = getelementptr inbounds %struct.TransData, ptr %4306, i64 0, i32 8
  call void @copy_m3_m3(ptr noundef nonnull %4351, ptr noundef nonnull %12) #18
  %4352 = getelementptr inbounds %struct.TransData, ptr %4306, i64 1
  %4353 = getelementptr inbounds %struct.TransData, ptr %4304, i64 1
  br label %4359

4354:                                             ; preds = %4303
  %4355 = icmp eq ptr %4305, %4304
  %4356 = select i1 %3951, i1 true, i1 %4355
  br i1 %4356, label %4359, label %4357

4357:                                             ; preds = %4354
  %4358 = getelementptr inbounds %struct.TransData, ptr %4304, i64 -1
  call fastcc void @calc_distanceCurveVerts(ptr noundef %4305, ptr noundef nonnull %4358)
  br label %4359

4359:                                             ; preds = %4357, %4354, %4345, %4313
  %4360 = phi ptr [ %4352, %4345 ], [ %4306, %4313 ], [ %4306, %4357 ], [ %4306, %4354 ]
  %4361 = phi ptr [ %4305, %4345 ], [ %4305, %4313 ], [ %4304, %4357 ], [ %4305, %4354 ]
  %4362 = phi ptr [ %4353, %4345 ], [ %4304, %4313 ], [ %4304, %4357 ], [ %4304, %4354 ]
  %4363 = add nsw i32 %4307, -1
  %4364 = getelementptr inbounds %struct.BPoint, ptr %4308, i64 1
  %4365 = icmp sgt i32 %4307, 1
  br i1 %4365, label %4303, label %4366, !llvm.loop !585

4366:                                             ; preds = %4359, %4295
  %4367 = phi ptr [ %3984, %4295 ], [ %4360, %4359 ]
  %4368 = phi ptr [ %3984, %4295 ], [ %4361, %4359 ]
  %4369 = phi ptr [ %3984, %4295 ], [ %4362, %4359 ]
  %4370 = icmp eq ptr %4368, %4369
  %4371 = select i1 %3951, i1 true, i1 %4370
  br i1 %4371, label %4374, label %4372

4372:                                             ; preds = %4366
  %4373 = getelementptr inbounds %struct.TransData, ptr %4369, i64 -1
  call fastcc void @calc_distanceCurveVerts(ptr noundef %4368, ptr noundef nonnull %4373)
  br label %4374

4374:                                             ; preds = %4372, %4366, %4294, %4292, %4292
  %4375 = phi ptr [ %4285, %4294 ], [ %4285, %4292 ], [ %4367, %4372 ], [ %4367, %4366 ], [ %4285, %4292 ]
  %4376 = load ptr, ptr %3983, align 8, !tbaa !63
  %4377 = icmp eq ptr %4376, null
  br i1 %4377, label %4378, label %3982, !llvm.loop !586

4378:                                             ; preds = %4374, %3836, %3946, %3968
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #18
  br label %4982

4379:                                             ; preds = %2989
  %4380 = getelementptr inbounds %struct.Object, ptr %2987, i64 0, i32 19
  %4381 = load ptr, ptr %4380, align 8, !tbaa !64
  %4382 = getelementptr inbounds %struct.Lattice, ptr %4381, i64 0, i32 26
  %4383 = load ptr, ptr %4382, align 8, !tbaa !587
  %4384 = load ptr, ptr %4383, align 8, !tbaa !589
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #18
  %4385 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %4386 = load i32, ptr %4385, align 4, !tbaa !54
  %4387 = and i32 %4386, 2048
  %4388 = getelementptr inbounds %struct.Lattice, ptr %4384, i64 0, i32 21
  %4389 = getelementptr inbounds %struct.Lattice, ptr %4384, i64 0, i32 2
  %4390 = load i16, ptr %4389, align 8, !tbaa !591
  %4391 = sext i16 %4390 to i32
  %4392 = getelementptr inbounds %struct.Lattice, ptr %4384, i64 0, i32 3
  %4393 = load i16, ptr %4392, align 2, !tbaa !592
  %4394 = sext i16 %4393 to i32
  %4395 = mul nsw i32 %4394, %4391
  %4396 = getelementptr inbounds %struct.Lattice, ptr %4384, i64 0, i32 4
  %4397 = load i16, ptr %4396, align 4, !tbaa !593
  %4398 = sext i16 %4397 to i32
  %4399 = mul nsw i32 %4395, %4398
  %4400 = icmp eq i32 %4399, 0
  br i1 %4400, label %4425, label %4401

4401:                                             ; preds = %4379
  %4402 = load ptr, ptr %4388, align 8, !tbaa !594
  %4403 = lshr exact i32 %4387, 11
  br label %4404

4404:                                             ; preds = %4420, %4401
  %4405 = phi i32 [ %4399, %4401 ], [ %4409, %4420 ]
  %4406 = phi i32 [ 0, %4401 ], [ %4422, %4420 ]
  %4407 = phi i32 [ 0, %4401 ], [ %4421, %4420 ]
  %4408 = phi ptr [ %4402, %4401 ], [ %4423, %4420 ]
  %4409 = add nsw i32 %4405, -1
  %4410 = getelementptr inbounds %struct.BPoint, ptr %4408, i64 0, i32 4
  %4411 = load i16, ptr %4410, align 2, !tbaa !577
  %4412 = icmp eq i16 %4411, 0
  br i1 %4412, label %4413, label %4420

4413:                                             ; preds = %4404
  %4414 = getelementptr inbounds %struct.BPoint, ptr %4408, i64 0, i32 3
  %4415 = load i16, ptr %4414, align 4, !tbaa !579
  %4416 = and i16 %4415, 1
  %4417 = zext nneg i16 %4416 to i32
  %4418 = add i32 %4406, %4417
  %4419 = add i32 %4407, %4403
  br label %4420

4420:                                             ; preds = %4413, %4404
  %4421 = phi i32 [ %4407, %4404 ], [ %4419, %4413 ]
  %4422 = phi i32 [ %4406, %4404 ], [ %4418, %4413 ]
  %4423 = getelementptr inbounds %struct.BPoint, ptr %4408, i64 1
  %4424 = icmp eq i32 %4409, 0
  br i1 %4424, label %4425, label %4404, !llvm.loop !595

4425:                                             ; preds = %4420, %4379
  %4426 = phi i32 [ 0, %4379 ], [ %4421, %4420 ]
  %4427 = phi i32 [ 0, %4379 ], [ %4422, %4420 ]
  %4428 = icmp eq i32 %4427, 0
  br i1 %4428, label %4496, label %4429

4429:                                             ; preds = %4425
  %4430 = icmp eq i32 %4387, 0
  %4431 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  %4432 = select i1 %4430, i32 %4427, i32 %4426
  store i32 %4432, ptr %4431, align 8, !tbaa !34
  %4433 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %4434 = sext i32 %4432 to i64
  %4435 = mul nsw i64 %4434, 224
  %4436 = tail call ptr %4433(i64 noundef %4435, ptr noundef nonnull @.str.48) #18
  %4437 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %4436, ptr %4437, align 8, !tbaa !48
  %4438 = load ptr, ptr %2986, align 8, !tbaa !99
  %4439 = getelementptr inbounds %struct.Object, ptr %4438, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %10, ptr noundef nonnull %4439) #18
  call void @pseudoinverse_m3_m3(ptr noundef nonnull %11, ptr noundef nonnull %10, float noundef 0x3E45798EE0000000) #18
  %4440 = load i16, ptr %4389, align 8, !tbaa !591
  %4441 = sext i16 %4440 to i32
  %4442 = load i16, ptr %4392, align 2, !tbaa !592
  %4443 = sext i16 %4442 to i32
  %4444 = mul nsw i32 %4443, %4441
  %4445 = load i16, ptr %4396, align 4, !tbaa !593
  %4446 = sext i16 %4445 to i32
  %4447 = mul nsw i32 %4444, %4446
  %4448 = icmp eq i32 %4447, 0
  br i1 %4448, label %4496, label %4449

4449:                                             ; preds = %4429
  %4450 = load ptr, ptr %4388, align 8, !tbaa !594
  %4451 = load ptr, ptr %4437, align 8, !tbaa !48
  br label %4452

4452:                                             ; preds = %4492, %4449
  %4453 = phi i32 [ %4456, %4492 ], [ %4447, %4449 ]
  %4454 = phi ptr [ %4493, %4492 ], [ %4451, %4449 ]
  %4455 = phi ptr [ %4494, %4492 ], [ %4450, %4449 ]
  %4456 = add nsw i32 %4453, -1
  br i1 %4430, label %4457, label %4462

4457:                                             ; preds = %4452
  %4458 = getelementptr inbounds %struct.BPoint, ptr %4455, i64 0, i32 3
  %4459 = load i16, ptr %4458, align 4, !tbaa !579
  %4460 = and i16 %4459, 1
  %4461 = icmp eq i16 %4460, 0
  br i1 %4461, label %4492, label %4462

4462:                                             ; preds = %4457, %4452
  %4463 = getelementptr inbounds %struct.BPoint, ptr %4455, i64 0, i32 4
  %4464 = load i16, ptr %4463, align 2, !tbaa !577
  %4465 = icmp eq i16 %4464, 0
  br i1 %4465, label %4466, label %4492

4466:                                             ; preds = %4462
  %4467 = getelementptr inbounds %struct.TransData, ptr %4454, i64 0, i32 4
  %4468 = load float, ptr %4455, align 4, !tbaa !112
  store float %4468, ptr %4467, align 4, !tbaa !112
  %4469 = getelementptr inbounds float, ptr %4455, i64 1
  %4470 = load float, ptr %4469, align 4, !tbaa !112
  %4471 = getelementptr inbounds %struct.TransData, ptr %4454, i64 0, i32 4, i64 1
  store float %4470, ptr %4471, align 4, !tbaa !112
  %4472 = getelementptr inbounds float, ptr %4455, i64 2
  %4473 = load float, ptr %4472, align 4, !tbaa !112
  %4474 = getelementptr inbounds %struct.TransData, ptr %4454, i64 0, i32 4, i64 2
  store float %4473, ptr %4474, align 4, !tbaa !112
  %4475 = getelementptr inbounds %struct.TransData, ptr %4454, i64 0, i32 3
  store ptr %4455, ptr %4475, align 8, !tbaa !209
  %4476 = getelementptr inbounds %struct.TransData, ptr %4454, i64 0, i32 7
  %4477 = load float, ptr %4455, align 4, !tbaa !112
  store float %4477, ptr %4476, align 4, !tbaa !112
  %4478 = load float, ptr %4469, align 4, !tbaa !112
  %4479 = getelementptr inbounds %struct.TransData, ptr %4454, i64 0, i32 7, i64 1
  store float %4478, ptr %4479, align 4, !tbaa !112
  %4480 = load float, ptr %4472, align 4, !tbaa !112
  %4481 = getelementptr inbounds %struct.TransData, ptr %4454, i64 0, i32 7, i64 2
  store float %4480, ptr %4481, align 4, !tbaa !112
  %4482 = getelementptr inbounds %struct.BPoint, ptr %4455, i64 0, i32 3
  %4483 = load i16, ptr %4482, align 4, !tbaa !579
  %4484 = and i16 %4483, 1
  %4485 = getelementptr inbounds %struct.TransData, ptr %4454, i64 0, i32 16
  %4486 = zext nneg i16 %4484 to i32
  store i32 %4486, ptr %4485, align 8, !tbaa !49
  %4487 = getelementptr inbounds %struct.TransData, ptr %4454, i64 0, i32 9
  call void @copy_m3_m3(ptr noundef nonnull %4487, ptr noundef nonnull %11) #18
  %4488 = getelementptr inbounds %struct.TransData, ptr %4454, i64 0, i32 8
  call void @copy_m3_m3(ptr noundef nonnull %4488, ptr noundef nonnull %10) #18
  %4489 = getelementptr inbounds %struct.TransData, ptr %4454, i64 0, i32 13
  store ptr null, ptr %4489, align 8, !tbaa !372
  %4490 = getelementptr inbounds %struct.TransData, ptr %4454, i64 0, i32 5
  store ptr null, ptr %4490, align 8, !tbaa !441
  %4491 = getelementptr inbounds %struct.TransData, ptr %4454, i64 1
  br label %4492

4492:                                             ; preds = %4466, %4462, %4457
  %4493 = phi ptr [ %4491, %4466 ], [ %4454, %4462 ], [ %4454, %4457 ]
  %4494 = getelementptr inbounds %struct.BPoint, ptr %4455, i64 1
  %4495 = icmp eq i32 %4456, 0
  br i1 %4495, label %4496, label %4452, !llvm.loop !596

4496:                                             ; preds = %4492, %4425, %4429
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #18
  br label %4982

4497:                                             ; preds = %2989
  %4498 = getelementptr inbounds %struct.Object, ptr %2987, i64 0, i32 19
  %4499 = load ptr, ptr %4498, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #18
  %4500 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %4501 = load i32, ptr %4500, align 4, !tbaa !54
  %4502 = and i32 %4501, 2048
  %4503 = getelementptr inbounds %struct.MetaBall, ptr %4499, i64 0, i32 4
  %4504 = load ptr, ptr %4503, align 8, !tbaa !597
  %4505 = load ptr, ptr %4504, align 8, !tbaa !63
  %4506 = icmp eq ptr %4505, null
  br i1 %4506, label %4521, label %4507

4507:                                             ; preds = %4497
  %4508 = lshr exact i32 %4502, 11
  br label %4509

4509:                                             ; preds = %4509, %4507
  %4510 = phi ptr [ %4505, %4507 ], [ %4519, %4509 ]
  %4511 = phi i32 [ 0, %4507 ], [ %4517, %4509 ]
  %4512 = phi i32 [ 0, %4507 ], [ %4518, %4509 ]
  %4513 = getelementptr inbounds %struct.MetaElem, ptr %4510, i64 0, i32 4
  %4514 = load i16, ptr %4513, align 2, !tbaa !599
  %4515 = and i16 %4514, 1
  %4516 = zext nneg i16 %4515 to i32
  %4517 = add i32 %4511, %4516
  %4518 = add i32 %4512, %4508
  %4519 = load ptr, ptr %4510, align 8, !tbaa !63
  %4520 = icmp eq ptr %4519, null
  br i1 %4520, label %4521, label %4509, !llvm.loop !601

4521:                                             ; preds = %4509, %4497
  %4522 = phi i32 [ 0, %4497 ], [ %4518, %4509 ]
  %4523 = phi i32 [ 0, %4497 ], [ %4517, %4509 ]
  %4524 = icmp eq i32 %4523, 0
  br i1 %4524, label %4611, label %4525

4525:                                             ; preds = %4521
  %4526 = icmp eq i32 %4502, 0
  %4527 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  %4528 = select i1 %4526, i32 %4523, i32 %4522
  store i32 %4528, ptr %4527, align 8, !tbaa !34
  %4529 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %4530 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  %4531 = sext i32 %4528 to i64
  %4532 = mul nsw i64 %4531, 224
  %4533 = tail call ptr %4529(i64 noundef %4532, ptr noundef nonnull @.str.49) #18
  %4534 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %4533, ptr %4534, align 8, !tbaa !48
  %4535 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %4536 = load i32, ptr %4530, align 8, !tbaa !34
  %4537 = sext i32 %4536 to i64
  %4538 = mul nsw i64 %4537, 384
  %4539 = tail call ptr %4535(i64 noundef %4538, ptr noundef nonnull @.str.50) #18
  store ptr %4539, ptr %2990, align 8, !tbaa !424
  %4540 = load ptr, ptr %2986, align 8, !tbaa !99
  %4541 = getelementptr inbounds %struct.Object, ptr %4540, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %8, ptr noundef nonnull %4541) #18
  call void @pseudoinverse_m3_m3(ptr noundef nonnull %9, ptr noundef nonnull %8, float noundef 0x3E45798EE0000000) #18
  %4542 = load ptr, ptr %4503, align 8, !tbaa !597
  %4543 = load ptr, ptr %4542, align 8, !tbaa !63
  %4544 = icmp eq ptr %4543, null
  br i1 %4544, label %4611, label %4545

4545:                                             ; preds = %4525, %4606
  %4546 = phi ptr [ %4609, %4606 ], [ %4543, %4525 ]
  %4547 = phi ptr [ %4608, %4606 ], [ %4539, %4525 ]
  %4548 = phi ptr [ %4607, %4606 ], [ %4533, %4525 ]
  br i1 %4526, label %4549, label %4554

4549:                                             ; preds = %4545
  %4550 = getelementptr inbounds %struct.MetaElem, ptr %4546, i64 0, i32 4
  %4551 = load i16, ptr %4550, align 2, !tbaa !599
  %4552 = and i16 %4551, 1
  %4553 = icmp eq i16 %4552, 0
  br i1 %4553, label %4606, label %4554

4554:                                             ; preds = %4549, %4545
  %4555 = getelementptr inbounds %struct.MetaElem, ptr %4546, i64 0, i32 7
  %4556 = getelementptr inbounds %struct.TransData, ptr %4548, i64 0, i32 3
  store ptr %4555, ptr %4556, align 8, !tbaa !209
  %4557 = getelementptr inbounds %struct.TransData, ptr %4548, i64 0, i32 4
  %4558 = load float, ptr %4555, align 4, !tbaa !112
  store float %4558, ptr %4557, align 4, !tbaa !112
  %4559 = getelementptr inbounds %struct.MetaElem, ptr %4546, i64 0, i32 8
  %4560 = load float, ptr %4559, align 4, !tbaa !112
  %4561 = getelementptr inbounds %struct.TransData, ptr %4548, i64 0, i32 4, i64 1
  store float %4560, ptr %4561, align 4, !tbaa !112
  %4562 = getelementptr inbounds %struct.MetaElem, ptr %4546, i64 0, i32 9
  %4563 = load float, ptr %4562, align 4, !tbaa !112
  %4564 = getelementptr inbounds %struct.TransData, ptr %4548, i64 0, i32 4, i64 2
  store float %4563, ptr %4564, align 4, !tbaa !112
  %4565 = getelementptr inbounds %struct.TransData, ptr %4548, i64 0, i32 7
  %4566 = load float, ptr %4555, align 4, !tbaa !112
  store float %4566, ptr %4565, align 4, !tbaa !112
  %4567 = load float, ptr %4559, align 4, !tbaa !112
  %4568 = getelementptr inbounds %struct.TransData, ptr %4548, i64 0, i32 7, i64 1
  store float %4567, ptr %4568, align 4, !tbaa !112
  %4569 = load float, ptr %4562, align 4, !tbaa !112
  %4570 = getelementptr inbounds %struct.TransData, ptr %4548, i64 0, i32 7, i64 2
  store float %4569, ptr %4570, align 4, !tbaa !112
  %4571 = getelementptr inbounds %struct.TransData, ptr %4548, i64 0, i32 10
  %4572 = getelementptr inbounds %struct.MetaElem, ptr %4546, i64 0, i32 10
  call void @quat_to_mat3(ptr noundef nonnull %4571, ptr noundef nonnull %4572) #18
  %4573 = getelementptr inbounds %struct.MetaElem, ptr %4546, i64 0, i32 4
  %4574 = load i16, ptr %4573, align 2, !tbaa !599
  %4575 = and i16 %4574, 1
  %4576 = icmp eq i16 %4575, 0
  %4577 = getelementptr inbounds %struct.TransData, ptr %4548, i64 0, i32 16
  %4578 = select i1 %4576, i32 8, i32 41
  store i32 %4578, ptr %4577, align 8, !tbaa !49
  %4579 = getelementptr inbounds %struct.TransData, ptr %4548, i64 0, i32 9
  call void @copy_m3_m3(ptr noundef nonnull %4579, ptr noundef nonnull %9) #18
  %4580 = getelementptr inbounds %struct.TransData, ptr %4548, i64 0, i32 8
  call void @copy_m3_m3(ptr noundef nonnull %4580, ptr noundef nonnull %8) #18
  %4581 = getelementptr inbounds %struct.TransData, ptr %4548, i64 0, i32 13
  store ptr %4547, ptr %4581, align 8, !tbaa !372
  %4582 = load i16, ptr %4573, align 2, !tbaa !599
  %4583 = and i16 %4582, 16
  %4584 = icmp eq i16 %4583, 0
  %4585 = getelementptr inbounds %struct.MetaElem, ptr %4546, i64 0, i32 16
  %4586 = getelementptr inbounds %struct.MetaElem, ptr %4546, i64 0, i32 14
  %4587 = select i1 %4584, ptr %4585, ptr %4586
  %4588 = getelementptr inbounds %struct.TransData, ptr %4548, i64 0, i32 5
  store ptr %4587, ptr %4588, align 8, !tbaa !441
  %4589 = load float, ptr %4587, align 8, !tbaa !112
  %4590 = getelementptr inbounds %struct.TransData, ptr %4548, i64 0, i32 6
  store float %4589, ptr %4590, align 8, !tbaa !442
  %4591 = getelementptr inbounds %struct.MetaElem, ptr %4546, i64 0, i32 11
  %4592 = getelementptr inbounds %struct.TransDataExtension, ptr %4547, i64 0, i32 11
  store ptr %4591, ptr %4592, align 8, !tbaa !427
  %4593 = load float, ptr %4591, align 4, !tbaa !602
  %4594 = getelementptr inbounds %struct.TransDataExtension, ptr %4547, i64 0, i32 12
  store float %4593, ptr %4594, align 8, !tbaa !112
  %4595 = getelementptr inbounds %struct.MetaElem, ptr %4546, i64 0, i32 12
  %4596 = load float, ptr %4595, align 8, !tbaa !603
  %4597 = getelementptr inbounds %struct.TransDataExtension, ptr %4547, i64 0, i32 12, i64 1
  store float %4596, ptr %4597, align 4, !tbaa !112
  %4598 = getelementptr inbounds %struct.MetaElem, ptr %4546, i64 0, i32 13
  %4599 = load float, ptr %4598, align 4, !tbaa !604
  %4600 = getelementptr inbounds %struct.TransDataExtension, ptr %4547, i64 0, i32 12, i64 2
  store float %4599, ptr %4600, align 8, !tbaa !112
  %4601 = getelementptr inbounds %struct.TransDataExtension, ptr %4547, i64 0, i32 5
  store ptr %4572, ptr %4601, align 8, !tbaa !605
  %4602 = getelementptr inbounds %struct.TransDataExtension, ptr %4547, i64 0, i32 6
  call void @copy_qt_qt(ptr noundef nonnull %4602, ptr noundef nonnull %4572) #18
  %4603 = getelementptr inbounds %struct.TransDataExtension, ptr %4547, i64 0, i32 3
  store ptr null, ptr %4603, align 8, !tbaa !426
  %4604 = getelementptr inbounds %struct.TransData, ptr %4548, i64 1
  %4605 = getelementptr inbounds %struct.TransDataExtension, ptr %4547, i64 1
  br label %4606

4606:                                             ; preds = %4554, %4549
  %4607 = phi ptr [ %4604, %4554 ], [ %4548, %4549 ]
  %4608 = phi ptr [ %4605, %4554 ], [ %4547, %4549 ]
  %4609 = load ptr, ptr %4546, align 8, !tbaa !63
  %4610 = icmp eq ptr %4609, null
  br i1 %4610, label %4611, label %4545, !llvm.loop !606

4611:                                             ; preds = %4606, %4521, %4525
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #18
  br label %4982

4612:                                             ; preds = %2989
  %4613 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %4614 = load i32, ptr %4613, align 4, !tbaa !54
  %4615 = and i32 %4614, -2049
  store i32 %4615, ptr %4613, align 4, !tbaa !54
  %4616 = getelementptr inbounds %struct.Object, ptr %2987, i64 0, i32 19
  %4617 = load ptr, ptr %4616, align 8, !tbaa !64
  %4618 = getelementptr inbounds %struct.bArmature, ptr %4617, i64 0, i32 4
  %4619 = load ptr, ptr %4618, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #18
  %4620 = getelementptr inbounds %struct.bArmature, ptr %4617, i64 0, i32 8
  %4621 = load i32, ptr %4620, align 8, !tbaa !100
  %4622 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 0, ptr %4622, align 8, !tbaa !34
  %4623 = load ptr, ptr %4619, align 8, !tbaa !63
  %4624 = icmp eq ptr %4623, null
  br i1 %4624, label %4678, label %4625

4625:                                             ; preds = %4612
  %4626 = getelementptr inbounds %struct.bArmature, ptr %4617, i64 0, i32 15
  %4627 = and i32 %4621, 256
  %4628 = icmp eq i32 %4627, 0
  br label %4629

4629:                                             ; preds = %4674, %4625
  %4630 = phi ptr [ %4623, %4625 ], [ %4676, %4674 ]
  %4631 = phi i32 [ 0, %4625 ], [ %4675, %4674 ]
  %4632 = load i32, ptr %4622, align 8, !tbaa !34
  %4633 = load i32, ptr %4626, align 8, !tbaa !65
  %4634 = getelementptr inbounds %struct.EditBone, ptr %4630, i64 0, i32 10
  %4635 = load i32, ptr %4634, align 8, !tbaa !607
  %4636 = and i32 %4635, %4633
  %4637 = icmp eq i32 %4636, 0
  br i1 %4637, label %4664, label %4638

4638:                                             ; preds = %4629
  %4639 = getelementptr inbounds %struct.EditBone, ptr %4630, i64 0, i32 9
  %4640 = load i32, ptr %4639, align 4, !tbaa !114
  %4641 = and i32 %4640, 525312
  %4642 = icmp eq i32 %4641, 0
  br i1 %4642, label %4643, label %4664

4643:                                             ; preds = %4638
  %4644 = load i32, ptr %1, align 8, !tbaa !188
  switch i32 %4644, label %4651 [
    i32 14, label %4645
    i32 18, label %4648
  ]

4645:                                             ; preds = %4643
  %4646 = and i32 %4640, 1
  %4647 = icmp eq i32 %4646, 0
  br i1 %4647, label %4664, label %4661

4648:                                             ; preds = %4643
  %4649 = and i32 %4640, 1
  %4650 = icmp eq i32 %4649, 0
  br i1 %4650, label %4664, label %4661

4651:                                             ; preds = %4643
  %4652 = and i32 %4640, 4
  %4653 = icmp eq i32 %4652, 0
  br i1 %4653, label %4656, label %4654

4654:                                             ; preds = %4651
  %4655 = add nsw i32 %4632, 1
  store i32 %4655, ptr %4622, align 8, !tbaa !34
  br label %4656

4656:                                             ; preds = %4654, %4651
  %4657 = and i32 %4640, 2
  %4658 = icmp eq i32 %4657, 0
  br i1 %4658, label %4664, label %4659

4659:                                             ; preds = %4656
  %4660 = load i32, ptr %4622, align 8, !tbaa !34
  br label %4661

4661:                                             ; preds = %4648, %4645, %4659
  %4662 = phi i32 [ %4660, %4659 ], [ %4632, %4645 ], [ %4632, %4648 ]
  %4663 = add nsw i32 %4662, 1
  store i32 %4663, ptr %4622, align 8, !tbaa !34
  br label %4664

4664:                                             ; preds = %4661, %4656, %4648, %4645, %4638, %4629
  br i1 %4628, label %4674, label %4665

4665:                                             ; preds = %4664
  %4666 = load i32, ptr %4622, align 8, !tbaa !34
  %4667 = icmp slt i32 %4632, %4666
  br i1 %4667, label %4668, label %4674

4668:                                             ; preds = %4665
  %4669 = load ptr, ptr %4618, align 8, !tbaa !113
  %4670 = tail call ptr @ED_armature_bone_get_mirrored(ptr noundef %4669, ptr noundef nonnull %4630) #18
  %4671 = icmp ne ptr %4670, null
  %4672 = zext i1 %4671 to i32
  %4673 = add nsw i32 %4631, %4672
  br label %4674

4674:                                             ; preds = %4668, %4665, %4664
  %4675 = phi i32 [ %4631, %4665 ], [ %4631, %4664 ], [ %4673, %4668 ]
  %4676 = load ptr, ptr %4630, align 8, !tbaa !63
  %4677 = icmp eq ptr %4676, null
  br i1 %4677, label %4678, label %4629, !llvm.loop !608

4678:                                             ; preds = %4674, %4612
  %4679 = phi i32 [ 0, %4612 ], [ %4675, %4674 ]
  %4680 = load i32, ptr %4622, align 8, !tbaa !34
  switch i32 %4680, label %4687 [
    i32 0, label %4979
    i32 1, label %4681
  ]

4681:                                             ; preds = %4678
  %4682 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 32
  %4683 = load i16, ptr %4682, align 2, !tbaa !348
  switch i16 %4683, label %4687 [
    i16 0, label %4684
    i16 3, label %4684
    i16 4, label %4684
  ]

4684:                                             ; preds = %4681, %4681, %4681
  %4685 = load i32, ptr %1, align 8, !tbaa !188
  switch i32 %4685, label %4687 [
    i32 3, label %4686
    i32 2, label %4686
    i32 10, label %4686
  ]

4686:                                             ; preds = %4684, %4684, %4684
  store i16 2, ptr %4682, align 2, !tbaa !348
  br label %4687

4687:                                             ; preds = %4686, %4684, %4681, %4678
  %4688 = load ptr, ptr %2986, align 8, !tbaa !99
  %4689 = getelementptr inbounds %struct.Object, ptr %4688, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %4689) #18
  call void @pseudoinverse_m3_m3(ptr noundef nonnull %6, ptr noundef nonnull %5, float noundef 0x3E45798EE0000000) #18
  %4690 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %4691 = load i32, ptr %4622, align 8, !tbaa !34
  %4692 = sext i32 %4691 to i64
  %4693 = mul nsw i64 %4692, 224
  %4694 = call ptr %4690(i64 noundef %4693, ptr noundef nonnull @.str.51) #18
  %4695 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %4694, ptr %4695, align 8, !tbaa !48
  %4696 = and i32 %4621, 256
  %4697 = icmp eq i32 %4696, 0
  br i1 %4697, label %4707, label %4698

4698:                                             ; preds = %4687
  %4699 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !63
  %4700 = add nsw i32 %4679, 1
  %4701 = sext i32 %4700 to i64
  %4702 = mul nsw i64 %4701, 56
  %4703 = call ptr %4699(i64 noundef %4702, ptr noundef nonnull @.str.52) #18
  %4704 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  store ptr %4703, ptr %4704, align 8, !tbaa !96
  %4705 = load i32, ptr %4613, align 4, !tbaa !54
  %4706 = or i32 %4705, 131072
  store i32 %4706, ptr %4613, align 4, !tbaa !54
  br label %4707

4707:                                             ; preds = %4698, %4687
  %4708 = phi ptr [ %4703, %4698 ], [ undef, %4687 ]
  %4709 = load ptr, ptr %4619, align 8, !tbaa !63
  %4710 = icmp eq ptr %4709, null
  br i1 %4710, label %4975, label %4711

4711:                                             ; preds = %4707
  %4712 = getelementptr inbounds %struct.bArmature, ptr %4617, i64 0, i32 15
  %4713 = getelementptr inbounds %struct.bArmature, ptr %4617, i64 0, i32 9
  %4714 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 32
  br label %4715

4715:                                             ; preds = %4971, %4711
  %4716 = phi ptr [ %4709, %4711 ], [ %4973, %4971 ]
  %4717 = phi i32 [ 0, %4711 ], [ %4972, %4971 ]
  %4718 = phi ptr [ %4694, %4711 ], [ %4927, %4971 ]
  %4719 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 14
  %4720 = load float, ptr %4719, align 8, !tbaa !609
  %4721 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 20
  store float %4720, ptr %4721, align 8, !tbaa !610
  %4722 = load i32, ptr %4712, align 8, !tbaa !65
  %4723 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 10
  %4724 = load i32, ptr %4723, align 8, !tbaa !607
  %4725 = and i32 %4724, %4722
  %4726 = icmp eq i32 %4725, 0
  br i1 %4726, label %4926, label %4727

4727:                                             ; preds = %4715
  %4728 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 9
  %4729 = load i32, ptr %4728, align 4, !tbaa !114
  %4730 = and i32 %4729, 525312
  %4731 = icmp eq i32 %4730, 0
  br i1 %4731, label %4732, label %4926

4732:                                             ; preds = %4727
  %4733 = load i32, ptr %1, align 8, !tbaa !188
  switch i32 %4733, label %4842 [
    i32 15, label %4734
    i32 14, label %4783
    i32 18, label %4822
  ]

4734:                                             ; preds = %4732
  %4735 = and i32 %4729, 2
  %4736 = icmp eq i32 %4735, 0
  br i1 %4736, label %4759, label %4737

4737:                                             ; preds = %4734
  %4738 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 18
  %4739 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 5
  store ptr %4738, ptr %4739, align 8, !tbaa !441
  %4740 = load float, ptr %4738, align 4, !tbaa !112
  %4741 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 6
  store float %4740, ptr %4741, align 8, !tbaa !442
  %4742 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 7
  %4743 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 7
  %4744 = load float, ptr %4743, align 4, !tbaa !112
  store float %4744, ptr %4742, align 4, !tbaa !112
  %4745 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 7, i64 1
  %4746 = load float, ptr %4745, align 4, !tbaa !112
  %4747 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 7, i64 1
  store float %4746, ptr %4747, align 4, !tbaa !112
  %4748 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 7, i64 2
  %4749 = load float, ptr %4748, align 4, !tbaa !112
  %4750 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 7, i64 2
  store float %4749, ptr %4750, align 4, !tbaa !112
  %4751 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 16
  store i32 1, ptr %4751, align 8, !tbaa !49
  %4752 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 9
  call void @copy_m3_m3(ptr noundef nonnull %4752, ptr noundef nonnull %6) #18
  %4753 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 8
  call void @copy_m3_m3(ptr noundef nonnull %4753, ptr noundef nonnull %5) #18
  %4754 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 3
  store ptr null, ptr %4754, align 8, !tbaa !209
  %4755 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 13
  store ptr null, ptr %4755, align 8, !tbaa !372
  %4756 = load ptr, ptr %2986, align 8, !tbaa !99
  %4757 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 11
  store ptr %4756, ptr %4757, align 8, !tbaa !364
  %4758 = getelementptr inbounds %struct.TransData, ptr %4718, i64 1
  br label %4759

4759:                                             ; preds = %4737, %4734
  %4760 = phi ptr [ %4758, %4737 ], [ %4718, %4734 ]
  %4761 = load i32, ptr %4728, align 4, !tbaa !114
  %4762 = and i32 %4761, 4
  %4763 = icmp eq i32 %4762, 0
  br i1 %4763, label %4926, label %4764

4764:                                             ; preds = %4759
  %4765 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 19
  %4766 = getelementptr inbounds %struct.TransData, ptr %4760, i64 0, i32 5
  store ptr %4765, ptr %4766, align 8, !tbaa !441
  %4767 = load float, ptr %4765, align 4, !tbaa !112
  %4768 = getelementptr inbounds %struct.TransData, ptr %4760, i64 0, i32 6
  store float %4767, ptr %4768, align 8, !tbaa !442
  %4769 = getelementptr inbounds %struct.TransData, ptr %4760, i64 0, i32 7
  %4770 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 8
  %4771 = load float, ptr %4770, align 4, !tbaa !112
  store float %4771, ptr %4769, align 4, !tbaa !112
  %4772 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 8, i64 1
  %4773 = load float, ptr %4772, align 4, !tbaa !112
  %4774 = getelementptr inbounds %struct.TransData, ptr %4760, i64 0, i32 7, i64 1
  store float %4773, ptr %4774, align 4, !tbaa !112
  %4775 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 8, i64 2
  %4776 = load float, ptr %4775, align 4, !tbaa !112
  %4777 = getelementptr inbounds %struct.TransData, ptr %4760, i64 0, i32 7, i64 2
  store float %4776, ptr %4777, align 4, !tbaa !112
  %4778 = getelementptr inbounds %struct.TransData, ptr %4760, i64 0, i32 16
  store i32 1, ptr %4778, align 8, !tbaa !49
  %4779 = getelementptr inbounds %struct.TransData, ptr %4760, i64 0, i32 9
  call void @copy_m3_m3(ptr noundef nonnull %4779, ptr noundef nonnull %6) #18
  %4780 = getelementptr inbounds %struct.TransData, ptr %4760, i64 0, i32 8
  call void @copy_m3_m3(ptr noundef nonnull %4780, ptr noundef nonnull %5) #18
  %4781 = getelementptr inbounds %struct.TransData, ptr %4760, i64 0, i32 3
  store ptr null, ptr %4781, align 8, !tbaa !209
  %4782 = getelementptr inbounds %struct.TransData, ptr %4760, i64 0, i32 13
  br label %4920

4783:                                             ; preds = %4732
  %4784 = and i32 %4729, 1
  %4785 = icmp eq i32 %4784, 0
  br i1 %4785, label %4926, label %4786

4786:                                             ; preds = %4783
  %4787 = load i32, ptr %4713, align 4, !tbaa !611
  %4788 = icmp eq i32 %4787, 3
  br i1 %4788, label %4789, label %4795

4789:                                             ; preds = %4786
  %4790 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 3
  store ptr null, ptr %4790, align 8, !tbaa !209
  %4791 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 11
  %4792 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 5
  store ptr %4791, ptr %4792, align 8, !tbaa !441
  %4793 = load float, ptr %4791, align 4, !tbaa !102
  %4794 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 6
  store float %4793, ptr %4794, align 8, !tbaa !442
  br label %4806

4795:                                             ; preds = %4786
  %4796 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 13
  %4797 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 3
  store ptr %4796, ptr %4797, align 8, !tbaa !209
  %4798 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 4
  %4799 = load float, ptr %4796, align 4, !tbaa !112
  store float %4799, ptr %4798, align 4, !tbaa !112
  %4800 = load float, ptr %4719, align 4, !tbaa !112
  %4801 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 4, i64 1
  store float %4800, ptr %4801, align 4, !tbaa !112
  %4802 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 15
  %4803 = load float, ptr %4802, align 4, !tbaa !112
  %4804 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 4, i64 2
  store float %4803, ptr %4804, align 4, !tbaa !112
  %4805 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 5
  store ptr null, ptr %4805, align 8, !tbaa !441
  br label %4806

4806:                                             ; preds = %4795, %4789
  %4807 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 7
  %4808 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 7
  %4809 = load float, ptr %4808, align 4, !tbaa !112
  store float %4809, ptr %4807, align 4, !tbaa !112
  %4810 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 7, i64 1
  %4811 = load float, ptr %4810, align 4, !tbaa !112
  %4812 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 7, i64 1
  store float %4811, ptr %4812, align 4, !tbaa !112
  %4813 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 7, i64 2
  %4814 = load float, ptr %4813, align 4, !tbaa !112
  %4815 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 7, i64 2
  store float %4814, ptr %4815, align 4, !tbaa !112
  %4816 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 16
  store i32 1, ptr %4816, align 8, !tbaa !49
  call void @ED_armature_ebone_to_mat3(ptr noundef nonnull %4716, ptr noundef nonnull %7) #18
  %4817 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 8
  call void @mul_m3_m3m3(ptr noundef nonnull %4817, ptr noundef nonnull %5, ptr noundef nonnull %7) #18
  %4818 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 9
  %4819 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %4818, ptr noundef nonnull %4817) #18
  %4820 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 10
  call void @copy_m3_m3(ptr noundef nonnull %4820, ptr noundef nonnull %4817) #18
  call void @normalize_m3(ptr noundef nonnull %4820) #18
  %4821 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 13
  br label %4920

4822:                                             ; preds = %4732
  %4823 = and i32 %4729, 1
  %4824 = icmp eq i32 %4823, 0
  br i1 %4824, label %4926, label %4825

4825:                                             ; preds = %4822
  %4826 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 3
  store ptr null, ptr %4826, align 8, !tbaa !209
  %4827 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 6
  %4828 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 5
  store ptr %4827, ptr %4828, align 8, !tbaa !441
  %4829 = load float, ptr %4827, align 8, !tbaa !107
  %4830 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 6
  store float %4829, ptr %4830, align 8, !tbaa !442
  %4831 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 7
  %4832 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 7
  %4833 = load float, ptr %4832, align 4, !tbaa !112
  store float %4833, ptr %4831, align 4, !tbaa !112
  %4834 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 7, i64 1
  %4835 = load float, ptr %4834, align 4, !tbaa !112
  %4836 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 7, i64 1
  store float %4835, ptr %4836, align 4, !tbaa !112
  %4837 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 7, i64 2
  %4838 = load float, ptr %4837, align 4, !tbaa !112
  %4839 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 7, i64 2
  store float %4838, ptr %4839, align 4, !tbaa !112
  %4840 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 16
  store i32 1, ptr %4840, align 8, !tbaa !49
  %4841 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 13
  br label %4920

4842:                                             ; preds = %4732
  %4843 = and i32 %4729, 4
  %4844 = icmp eq i32 %4843, 0
  br i1 %4844, label %4886, label %4845

4845:                                             ; preds = %4842
  %4846 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 4
  %4847 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 8
  %4848 = load float, ptr %4847, align 4, !tbaa !112
  store float %4848, ptr %4846, align 4, !tbaa !112
  %4849 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 8, i64 1
  %4850 = load float, ptr %4849, align 4, !tbaa !112
  %4851 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 4, i64 1
  store float %4850, ptr %4851, align 4, !tbaa !112
  %4852 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 8, i64 2
  %4853 = load float, ptr %4852, align 4, !tbaa !112
  %4854 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 4, i64 2
  store float %4853, ptr %4854, align 4, !tbaa !112
  %4855 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 7
  %4856 = load i16, ptr %4714, align 2, !tbaa !348
  %4857 = icmp eq i16 %4856, 2
  %4858 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 7
  %4859 = select i1 %4857, ptr %4858, ptr %4846
  %4860 = load float, ptr %4859, align 4, !tbaa !112
  store float %4860, ptr %4855, align 4, !tbaa !112
  %4861 = getelementptr inbounds float, ptr %4859, i64 1
  %4862 = load float, ptr %4861, align 4, !tbaa !112
  %4863 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 7, i64 1
  store float %4862, ptr %4863, align 4, !tbaa !112
  %4864 = getelementptr inbounds float, ptr %4859, i64 2
  %4865 = load float, ptr %4864, align 4, !tbaa !112
  %4866 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 7, i64 2
  store float %4865, ptr %4866, align 4, !tbaa !112
  %4867 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 3
  store ptr %4847, ptr %4867, align 8, !tbaa !209
  %4868 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 16
  store i32 1, ptr %4868, align 8, !tbaa !49
  %4869 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 9
  call void @copy_m3_m3(ptr noundef nonnull %4869, ptr noundef nonnull %6) #18
  %4870 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 8
  call void @copy_m3_m3(ptr noundef nonnull %4870, ptr noundef nonnull %5) #18
  %4871 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 10
  call void @ED_armature_ebone_to_mat3(ptr noundef nonnull %4716, ptr noundef nonnull %4871) #18
  %4872 = load i32, ptr %4728, align 4, !tbaa !114
  %4873 = and i32 %4872, 2
  %4874 = icmp eq i32 %4873, 0
  br i1 %4874, label %4875, label %4880

4875:                                             ; preds = %4845
  %4876 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 15
  store ptr %4716, ptr %4876, align 8, !tbaa !169
  %4877 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 6
  %4878 = load float, ptr %4877, align 8, !tbaa !107
  %4879 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 6
  store float %4878, ptr %4879, align 8, !tbaa !442
  br label %4880

4880:                                             ; preds = %4875, %4845
  %4881 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 13
  store ptr null, ptr %4881, align 8, !tbaa !372
  %4882 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 5
  store ptr null, ptr %4882, align 8, !tbaa !441
  %4883 = load ptr, ptr %2986, align 8, !tbaa !99
  %4884 = getelementptr inbounds %struct.TransData, ptr %4718, i64 0, i32 11
  store ptr %4883, ptr %4884, align 8, !tbaa !364
  %4885 = getelementptr inbounds %struct.TransData, ptr %4718, i64 1
  br label %4886

4886:                                             ; preds = %4880, %4842
  %4887 = phi ptr [ %4885, %4880 ], [ %4718, %4842 ]
  %4888 = load i32, ptr %4728, align 4, !tbaa !114
  %4889 = and i32 %4888, 2
  %4890 = icmp eq i32 %4889, 0
  br i1 %4890, label %4926, label %4891

4891:                                             ; preds = %4886
  %4892 = getelementptr inbounds %struct.TransData, ptr %4887, i64 0, i32 4
  %4893 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 7
  %4894 = load float, ptr %4893, align 4, !tbaa !112
  store float %4894, ptr %4892, align 4, !tbaa !112
  %4895 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 7, i64 1
  %4896 = load float, ptr %4895, align 4, !tbaa !112
  %4897 = getelementptr inbounds %struct.TransData, ptr %4887, i64 0, i32 4, i64 1
  store float %4896, ptr %4897, align 4, !tbaa !112
  %4898 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 7, i64 2
  %4899 = load float, ptr %4898, align 4, !tbaa !112
  %4900 = getelementptr inbounds %struct.TransData, ptr %4887, i64 0, i32 4, i64 2
  store float %4899, ptr %4900, align 4, !tbaa !112
  %4901 = getelementptr inbounds %struct.TransData, ptr %4887, i64 0, i32 7
  store float %4894, ptr %4901, align 4, !tbaa !112
  %4902 = getelementptr inbounds %struct.TransData, ptr %4887, i64 0, i32 7, i64 1
  store float %4896, ptr %4902, align 4, !tbaa !112
  %4903 = getelementptr inbounds %struct.TransData, ptr %4887, i64 0, i32 7, i64 2
  store float %4899, ptr %4903, align 4, !tbaa !112
  %4904 = getelementptr inbounds %struct.TransData, ptr %4887, i64 0, i32 3
  store ptr %4893, ptr %4904, align 8, !tbaa !209
  %4905 = getelementptr inbounds %struct.TransData, ptr %4887, i64 0, i32 16
  store i32 1, ptr %4905, align 8, !tbaa !49
  %4906 = and i32 %4888, 524288
  %4907 = icmp eq i32 %4906, 0
  br i1 %4907, label %4910, label %4908

4908:                                             ; preds = %4891
  %4909 = getelementptr inbounds %struct.TransData, ptr %4887, i64 0, i32 17
  store i16 511, ptr %4909, align 4, !tbaa !612
  br label %4910

4910:                                             ; preds = %4908, %4891
  %4911 = getelementptr inbounds %struct.TransData, ptr %4887, i64 0, i32 9
  call void @copy_m3_m3(ptr noundef nonnull %4911, ptr noundef nonnull %6) #18
  %4912 = getelementptr inbounds %struct.TransData, ptr %4887, i64 0, i32 8
  call void @copy_m3_m3(ptr noundef nonnull %4912, ptr noundef nonnull %5) #18
  %4913 = getelementptr inbounds %struct.TransData, ptr %4887, i64 0, i32 10
  call void @ED_armature_ebone_to_mat3(ptr noundef nonnull %4716, ptr noundef nonnull %4913) #18
  %4914 = getelementptr inbounds %struct.TransData, ptr %4887, i64 0, i32 15
  store ptr %4716, ptr %4914, align 8, !tbaa !169
  %4915 = getelementptr inbounds %struct.EditBone, ptr %4716, i64 0, i32 6
  %4916 = load float, ptr %4915, align 8, !tbaa !107
  %4917 = getelementptr inbounds %struct.TransData, ptr %4887, i64 0, i32 6
  store float %4916, ptr %4917, align 8, !tbaa !442
  %4918 = getelementptr inbounds %struct.TransData, ptr %4887, i64 0, i32 13
  store ptr null, ptr %4918, align 8, !tbaa !372
  %4919 = getelementptr inbounds %struct.TransData, ptr %4887, i64 0, i32 5
  br label %4920

4920:                                             ; preds = %4764, %4806, %4825, %4910
  %4921 = phi ptr [ %4919, %4910 ], [ %4841, %4825 ], [ %4821, %4806 ], [ %4782, %4764 ]
  %4922 = phi ptr [ %4887, %4910 ], [ %4718, %4825 ], [ %4718, %4806 ], [ %4760, %4764 ]
  store ptr null, ptr %4921, align 8, !tbaa !63
  %4923 = load ptr, ptr %2986, align 8, !tbaa !99
  %4924 = getelementptr inbounds %struct.TransData, ptr %4922, i64 0, i32 11
  store ptr %4923, ptr %4924, align 8, !tbaa !364
  %4925 = getelementptr inbounds %struct.TransData, ptr %4922, i64 1
  br label %4926

4926:                                             ; preds = %4920, %4886, %4822, %4783, %4759, %4727, %4715
  %4927 = phi ptr [ %4760, %4759 ], [ %4718, %4783 ], [ %4718, %4822 ], [ %4887, %4886 ], [ %4718, %4727 ], [ %4718, %4715 ], [ %4925, %4920 ]
  %4928 = icmp eq ptr %4718, %4927
  %4929 = select i1 %4697, i1 true, i1 %4928
  br i1 %4929, label %4971, label %4930

4930:                                             ; preds = %4926
  %4931 = load ptr, ptr %4618, align 8, !tbaa !113
  %4932 = call ptr @ED_armature_bone_get_mirrored(ptr noundef %4931, ptr noundef nonnull %4716) #18
  %4933 = icmp eq ptr %4932, null
  br i1 %4933, label %4971, label %4934

4934:                                             ; preds = %4930
  %4935 = sext i32 %4717 to i64
  %4936 = getelementptr inbounds %struct.BoneInitData, ptr %4708, i64 %4935
  store ptr %4932, ptr %4936, align 8, !tbaa !97
  %4937 = getelementptr inbounds %struct.EditBone, ptr %4932, i64 0, i32 11
  %4938 = load float, ptr %4937, align 4, !tbaa !102
  %4939 = getelementptr inbounds %struct.BoneInitData, ptr %4708, i64 %4935, i32 5
  store float %4938, ptr %4939, align 8, !tbaa !101
  %4940 = getelementptr inbounds %struct.EditBone, ptr %4932, i64 0, i32 19
  %4941 = load float, ptr %4940, align 4, !tbaa !105
  %4942 = getelementptr inbounds %struct.BoneInitData, ptr %4708, i64 %4935, i32 2
  store float %4941, ptr %4942, align 4, !tbaa !104
  %4943 = getelementptr inbounds %struct.EditBone, ptr %4932, i64 0, i32 6
  %4944 = load float, ptr %4943, align 8, !tbaa !107
  %4945 = getelementptr inbounds %struct.BoneInitData, ptr %4708, i64 %4935, i32 3
  store float %4944, ptr %4945, align 8, !tbaa !106
  %4946 = getelementptr inbounds %struct.EditBone, ptr %4932, i64 0, i32 13
  %4947 = load float, ptr %4946, align 4, !tbaa !109
  %4948 = getelementptr inbounds %struct.BoneInitData, ptr %4708, i64 %4935, i32 6
  store float %4947, ptr %4948, align 4, !tbaa !108
  %4949 = getelementptr inbounds %struct.EditBone, ptr %4932, i64 0, i32 15
  %4950 = load float, ptr %4949, align 4, !tbaa !111
  %4951 = getelementptr inbounds %struct.BoneInitData, ptr %4708, i64 %4935, i32 7
  store float %4950, ptr %4951, align 8, !tbaa !110
  %4952 = getelementptr inbounds %struct.BoneInitData, ptr %4708, i64 %4935, i32 4
  %4953 = getelementptr inbounds %struct.EditBone, ptr %4932, i64 0, i32 7
  %4954 = load float, ptr %4953, align 4, !tbaa !112
  store float %4954, ptr %4952, align 4, !tbaa !112
  %4955 = getelementptr inbounds %struct.EditBone, ptr %4932, i64 0, i32 7, i64 1
  %4956 = load float, ptr %4955, align 4, !tbaa !112
  %4957 = getelementptr inbounds float, ptr %4952, i64 1
  store float %4956, ptr %4957, align 4, !tbaa !112
  %4958 = getelementptr inbounds %struct.EditBone, ptr %4932, i64 0, i32 7, i64 2
  %4959 = load float, ptr %4958, align 4, !tbaa !112
  %4960 = getelementptr inbounds float, ptr %4952, i64 2
  store float %4959, ptr %4960, align 4, !tbaa !112
  %4961 = getelementptr inbounds %struct.BoneInitData, ptr %4708, i64 %4935, i32 1
  %4962 = getelementptr inbounds %struct.EditBone, ptr %4932, i64 0, i32 8
  %4963 = load float, ptr %4962, align 4, !tbaa !112
  store float %4963, ptr %4961, align 4, !tbaa !112
  %4964 = getelementptr inbounds %struct.EditBone, ptr %4932, i64 0, i32 8, i64 1
  %4965 = load float, ptr %4964, align 4, !tbaa !112
  %4966 = getelementptr inbounds float, ptr %4961, i64 1
  store float %4965, ptr %4966, align 4, !tbaa !112
  %4967 = getelementptr inbounds %struct.EditBone, ptr %4932, i64 0, i32 8, i64 2
  %4968 = load float, ptr %4967, align 4, !tbaa !112
  %4969 = getelementptr inbounds float, ptr %4961, i64 2
  store float %4968, ptr %4969, align 4, !tbaa !112
  %4970 = add nsw i32 %4717, 1
  br label %4971

4971:                                             ; preds = %4934, %4930, %4926
  %4972 = phi i32 [ %4970, %4934 ], [ %4717, %4930 ], [ %4717, %4926 ]
  %4973 = load ptr, ptr %4716, align 8, !tbaa !63
  %4974 = icmp eq ptr %4973, null
  br i1 %4974, label %4975, label %4715, !llvm.loop !613

4975:                                             ; preds = %4971, %4707
  br i1 %4697, label %4979, label %4976

4976:                                             ; preds = %4975
  %4977 = sext i32 %4679 to i64
  %4978 = getelementptr inbounds %struct.BoneInitData, ptr %4708, i64 %4977
  store ptr null, ptr %4978, align 8, !tbaa !97
  br label %4979

4979:                                             ; preds = %4678, %4975, %4976
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #18
  br label %4982

4980:                                             ; preds = %2989
  %4981 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %4982

4982:                                             ; preds = %4378, %4611, %4980, %4979, %4496, %3835
  %4983 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %4984 = load i32, ptr %4983, align 4, !tbaa !54
  %4985 = or i32 %4984, 66
  store i32 %4985, ptr %4983, align 4, !tbaa !54
  %4986 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  %4987 = load ptr, ptr %4986, align 8, !tbaa !48
  %4988 = icmp eq ptr %4987, null
  %4989 = and i32 %4984, 2048
  %4990 = icmp eq i32 %4989, 0
  %4991 = select i1 %4988, i1 true, i1 %4990
  br i1 %4991, label %5129, label %4992

4992:                                             ; preds = %4982
  %4993 = load ptr, ptr %2986, align 8, !tbaa !99
  %4994 = getelementptr inbounds %struct.Object, ptr %4993, i64 0, i32 3
  %4995 = load i16, ptr %4994, align 8, !tbaa !80
  %4996 = add i16 %4995, -1
  %4997 = icmp ult i16 %4996, 2
  %4998 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  br i1 %4997, label %4999, label %5064

4999:                                             ; preds = %4992
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %52)
  %5000 = load i32, ptr %4998, align 8, !tbaa !34
  %5001 = sext i32 %5000 to i64
  %5002 = getelementptr %struct.TransData, ptr %4987, i64 %5001
  %5003 = getelementptr inbounds %struct.TransData, ptr %5002, i64 -1
  %5004 = icmp ugt ptr %5003, %4987
  br i1 %5004, label %5005, label %5030

5005:                                             ; preds = %4999, %5026
  %5006 = phi ptr [ %5028, %5026 ], [ %5003, %4999 ]
  %5007 = phi ptr [ %5027, %5026 ], [ %4987, %4999 ]
  br label %5008

5008:                                             ; preds = %5005, %5014
  %5009 = phi ptr [ %5015, %5014 ], [ %5007, %5005 ]
  %5010 = getelementptr inbounds %struct.TransData, ptr %5009, i64 0, i32 16
  %5011 = load i32, ptr %5010, align 8, !tbaa !49
  %5012 = and i32 %5011, 1
  %5013 = icmp eq i32 %5012, 0
  br i1 %5013, label %5017, label %5014

5014:                                             ; preds = %5008
  %5015 = getelementptr inbounds %struct.TransData, ptr %5009, i64 1
  %5016 = icmp eq ptr %5015, %5006
  br i1 %5016, label %5030, label %5008, !llvm.loop !444

5017:                                             ; preds = %5008, %5023
  %5018 = phi ptr [ %5024, %5023 ], [ %5006, %5008 ]
  %5019 = getelementptr inbounds %struct.TransData, ptr %5018, i64 0, i32 16
  %5020 = load i32, ptr %5019, align 8, !tbaa !49
  %5021 = and i32 %5020, 1
  %5022 = icmp eq i32 %5021, 0
  br i1 %5022, label %5023, label %5026

5023:                                             ; preds = %5017
  %5024 = getelementptr inbounds %struct.TransData, ptr %5018, i64 -1
  %5025 = icmp eq ptr %5009, %5024
  br i1 %5025, label %5030, label %5017, !llvm.loop !445

5026:                                             ; preds = %5017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %52, ptr noundef nonnull align 8 dereferenceable(224) %5009, i64 224, i1 false), !tbaa.struct !446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %5009, ptr noundef nonnull align 8 dereferenceable(224) %5018, i64 224, i1 false), !tbaa.struct !446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %5018, ptr noundef nonnull align 8 dereferenceable(224) %52, i64 224, i1 false), !tbaa.struct !446
  %5027 = getelementptr inbounds %struct.TransData, ptr %5009, i64 1
  %5028 = getelementptr inbounds %struct.TransData, ptr %5018, i64 -1
  %5029 = icmp ugt ptr %5028, %5027
  br i1 %5029, label %5005, label %5030, !llvm.loop !447

5030:                                             ; preds = %5026, %5014, %5023, %4999
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %52)
  call fastcc void @set_prop_dist(ptr noundef %1, i8 noundef zeroext 0)
  %5031 = load i32, ptr %4998, align 8, !tbaa !34
  %5032 = icmp sgt i32 %5031, 0
  br i1 %5032, label %5033, label %5129

5033:                                             ; preds = %5030
  %5034 = load ptr, ptr %4986, align 8, !tbaa !48
  %5035 = getelementptr inbounds %struct.TransData, ptr %5034, i64 0, i32 16
  %5036 = load i32, ptr %5035, align 8, !tbaa !49
  %5037 = and i32 %5036, 1
  %5038 = icmp eq i32 %5037, 0
  br i1 %5038, label %5052, label %5045

5039:                                             ; preds = %5045
  %5040 = getelementptr inbounds %struct.TransData, ptr %5046, i64 1
  %5041 = getelementptr inbounds %struct.TransData, ptr %5046, i64 1, i32 16
  %5042 = load i32, ptr %5041, align 8, !tbaa !49
  %5043 = and i32 %5042, 1
  %5044 = icmp eq i32 %5043, 0
  br i1 %5044, label %5050, label %5045, !llvm.loop !51

5045:                                             ; preds = %5033, %5039
  %5046 = phi ptr [ %5040, %5039 ], [ %5034, %5033 ]
  %5047 = phi i32 [ %5048, %5039 ], [ 0, %5033 ]
  %5048 = add nuw nsw i32 %5047, 1
  %5049 = icmp eq i32 %5048, %5031
  br i1 %5049, label %5129, label %5039, !llvm.loop !51

5050:                                             ; preds = %5039
  %5051 = icmp slt i32 %5048, %5031
  br label %5052

5052:                                             ; preds = %5050, %5033
  %5053 = phi i1 [ true, %5033 ], [ %5051, %5050 ]
  %5054 = phi i32 [ 0, %5033 ], [ %5048, %5050 ]
  %5055 = phi ptr [ %5034, %5033 ], [ %5040, %5050 ]
  br i1 %5053, label %5056, label %5129

5056:                                             ; preds = %5052
  %5057 = load i32, ptr %4983, align 4, !tbaa !54
  %5058 = and i32 %5057, 4096
  %5059 = icmp eq i32 %5058, 0
  %5060 = sub nsw i32 %5031, %5054
  %5061 = sext i32 %5060 to i64
  br i1 %5059, label %5063, label %5062

5062:                                             ; preds = %5056
  call void @qsort(ptr noundef %5055, i64 noundef %5061, i64 noundef 224, ptr noundef nonnull @trans_data_compare_dist) #18
  br label %5129

5063:                                             ; preds = %5056
  call void @qsort(ptr noundef %5055, i64 noundef %5061, i64 noundef 224, ptr noundef nonnull @trans_data_compare_rdist) #18
  br label %5129

5064:                                             ; preds = %4992
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %51)
  %5065 = load i32, ptr %4998, align 8, !tbaa !34
  %5066 = sext i32 %5065 to i64
  %5067 = getelementptr %struct.TransData, ptr %4987, i64 %5066
  %5068 = getelementptr inbounds %struct.TransData, ptr %5067, i64 -1
  %5069 = icmp ugt ptr %5068, %4987
  br i1 %5069, label %5070, label %5095

5070:                                             ; preds = %5064, %5091
  %5071 = phi ptr [ %5093, %5091 ], [ %5068, %5064 ]
  %5072 = phi ptr [ %5092, %5091 ], [ %4987, %5064 ]
  br label %5073

5073:                                             ; preds = %5070, %5079
  %5074 = phi ptr [ %5080, %5079 ], [ %5072, %5070 ]
  %5075 = getelementptr inbounds %struct.TransData, ptr %5074, i64 0, i32 16
  %5076 = load i32, ptr %5075, align 8, !tbaa !49
  %5077 = and i32 %5076, 1
  %5078 = icmp eq i32 %5077, 0
  br i1 %5078, label %5082, label %5079

5079:                                             ; preds = %5073
  %5080 = getelementptr inbounds %struct.TransData, ptr %5074, i64 1
  %5081 = icmp eq ptr %5080, %5071
  br i1 %5081, label %5095, label %5073, !llvm.loop !444

5082:                                             ; preds = %5073, %5088
  %5083 = phi ptr [ %5089, %5088 ], [ %5071, %5073 ]
  %5084 = getelementptr inbounds %struct.TransData, ptr %5083, i64 0, i32 16
  %5085 = load i32, ptr %5084, align 8, !tbaa !49
  %5086 = and i32 %5085, 1
  %5087 = icmp eq i32 %5086, 0
  br i1 %5087, label %5088, label %5091

5088:                                             ; preds = %5082
  %5089 = getelementptr inbounds %struct.TransData, ptr %5083, i64 -1
  %5090 = icmp eq ptr %5074, %5089
  br i1 %5090, label %5095, label %5082, !llvm.loop !445

5091:                                             ; preds = %5082
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %51, ptr noundef nonnull align 8 dereferenceable(224) %5074, i64 224, i1 false), !tbaa.struct !446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %5074, ptr noundef nonnull align 8 dereferenceable(224) %5083, i64 224, i1 false), !tbaa.struct !446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %5083, ptr noundef nonnull align 8 dereferenceable(224) %51, i64 224, i1 false), !tbaa.struct !446
  %5092 = getelementptr inbounds %struct.TransData, ptr %5074, i64 1
  %5093 = getelementptr inbounds %struct.TransData, ptr %5083, i64 -1
  %5094 = icmp ugt ptr %5093, %5092
  br i1 %5094, label %5070, label %5095, !llvm.loop !447

5095:                                             ; preds = %5091, %5079, %5088, %5064
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %51)
  call fastcc void @set_prop_dist(ptr noundef %1, i8 noundef zeroext 1)
  %5096 = load i32, ptr %4998, align 8, !tbaa !34
  %5097 = icmp sgt i32 %5096, 0
  br i1 %5097, label %5098, label %5129

5098:                                             ; preds = %5095
  %5099 = load ptr, ptr %4986, align 8, !tbaa !48
  %5100 = getelementptr inbounds %struct.TransData, ptr %5099, i64 0, i32 16
  %5101 = load i32, ptr %5100, align 8, !tbaa !49
  %5102 = and i32 %5101, 1
  %5103 = icmp eq i32 %5102, 0
  br i1 %5103, label %5117, label %5110

5104:                                             ; preds = %5110
  %5105 = getelementptr inbounds %struct.TransData, ptr %5111, i64 1
  %5106 = getelementptr inbounds %struct.TransData, ptr %5111, i64 1, i32 16
  %5107 = load i32, ptr %5106, align 8, !tbaa !49
  %5108 = and i32 %5107, 1
  %5109 = icmp eq i32 %5108, 0
  br i1 %5109, label %5115, label %5110, !llvm.loop !51

5110:                                             ; preds = %5098, %5104
  %5111 = phi ptr [ %5105, %5104 ], [ %5099, %5098 ]
  %5112 = phi i32 [ %5113, %5104 ], [ 0, %5098 ]
  %5113 = add nuw nsw i32 %5112, 1
  %5114 = icmp eq i32 %5113, %5096
  br i1 %5114, label %5129, label %5104, !llvm.loop !51

5115:                                             ; preds = %5104
  %5116 = icmp slt i32 %5113, %5096
  br label %5117

5117:                                             ; preds = %5115, %5098
  %5118 = phi i1 [ true, %5098 ], [ %5116, %5115 ]
  %5119 = phi i32 [ 0, %5098 ], [ %5113, %5115 ]
  %5120 = phi ptr [ %5099, %5098 ], [ %5105, %5115 ]
  br i1 %5118, label %5121, label %5129

5121:                                             ; preds = %5117
  %5122 = load i32, ptr %4983, align 4, !tbaa !54
  %5123 = and i32 %5122, 4096
  %5124 = icmp eq i32 %5123, 0
  %5125 = sub nsw i32 %5096, %5119
  %5126 = sext i32 %5125 to i64
  br i1 %5124, label %5128, label %5127

5127:                                             ; preds = %5121
  call void @qsort(ptr noundef %5120, i64 noundef %5126, i64 noundef 224, ptr noundef nonnull @trans_data_compare_dist) #18
  br label %5129

5128:                                             ; preds = %5121
  call void @qsort(ptr noundef %5120, i64 noundef %5126, i64 noundef 224, ptr noundef nonnull @trans_data_compare_rdist) #18
  br label %5129

5129:                                             ; preds = %5110, %5045, %5128, %5127, %5117, %5095, %5063, %5062, %5052, %5030, %4982
  %5130 = load i32, ptr %1, align 8, !tbaa !188
  %5131 = icmp eq i32 %5130, 14
  br i1 %5131, label %5132, label %6050

5132:                                             ; preds = %5129
  %5133 = load i32, ptr %4983, align 4, !tbaa !54
  %5134 = and i32 %5133, -71
  %5135 = or disjoint i32 %5134, 4
  store i32 %5135, ptr %4983, align 4, !tbaa !54
  %5136 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 39
  store ptr %91, ptr %5136, align 8, !tbaa !89
  br label %6050

5137:                                             ; preds = %2985
  %5138 = icmp eq ptr %91, null
  br i1 %5138, label %5542, label %5139

5139:                                             ; preds = %5137
  %5140 = getelementptr inbounds %struct.Object, ptr %91, i64 0, i32 27
  %5141 = load i32, ptr %5140, align 8, !tbaa !362
  %5142 = and i32 %5141, 64
  %5143 = icmp eq i32 %5142, 0
  br i1 %5143, label %5145, label %5144

5144:                                             ; preds = %5139
  tail call fastcc void @createTransPose(ptr noundef %1, ptr noundef nonnull %91)
  br label %6050

5145:                                             ; preds = %5139
  %5146 = and i32 %5141, 8
  %5147 = icmp ne i32 %5146, 0
  %5148 = and i32 %93, 256
  %5149 = icmp eq i32 %5148, 0
  %5150 = and i1 %5149, %5147
  br i1 %5150, label %5151, label %5180

5151:                                             ; preds = %5145
  %5152 = tail call ptr @modifiers_isDeformedByArmature(ptr noundef nonnull %91) #18
  %5153 = icmp eq ptr %5152, null
  br i1 %5153, label %6050, label %5154

5154:                                             ; preds = %5151
  %5155 = getelementptr inbounds %struct.Object, ptr %5152, i64 0, i32 27
  %5156 = load i32, ptr %5155, align 8, !tbaa !362
  %5157 = and i32 %5156, 64
  %5158 = icmp eq i32 %5157, 0
  br i1 %5158, label %6050, label %5159

5159:                                             ; preds = %5154
  %5160 = load ptr, ptr %82, align 8, !tbaa !119
  %5161 = tail call ptr @BKE_scene_base_find(ptr noundef %5160, ptr noundef nonnull %5152) #18
  %5162 = icmp eq ptr %5161, null
  br i1 %5162, label %6050, label %5163

5163:                                             ; preds = %5159
  %5164 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 52
  %5165 = load ptr, ptr %5164, align 8, !tbaa !360
  %5166 = getelementptr inbounds %struct.Base, ptr %5161, i64 0, i32 2
  %5167 = load i32, ptr %5166, align 8, !tbaa !614
  %5168 = getelementptr inbounds %struct.View3D, ptr %5165, i64 0, i32 22
  %5169 = load i32, ptr %5168, align 8, !tbaa !615
  %5170 = and i32 %5169, %5167
  %5171 = icmp eq i32 %5170, 0
  br i1 %5171, label %6050, label %5172

5172:                                             ; preds = %5163
  %5173 = getelementptr inbounds %struct.Base, ptr %5161, i64 0, i32 7
  %5174 = load ptr, ptr %5173, align 8, !tbaa !139
  %5175 = getelementptr inbounds %struct.Object, ptr %5174, i64 0, i32 102
  %5176 = load i8, ptr %5175, align 8, !tbaa !616
  %5177 = and i8 %5176, 1
  %5178 = icmp eq i8 %5177, 0
  br i1 %5178, label %5179, label %6050

5179:                                             ; preds = %5172
  tail call fastcc void @createTransPose(ptr noundef %1, ptr noundef nonnull %5152)
  br label %6050

5180:                                             ; preds = %5145
  %5181 = and i32 %5141, 32
  %5182 = icmp eq i32 %5181, 0
  br i1 %5182, label %5528, label %5183

5183:                                             ; preds = %5180
  %5184 = tail call ptr @PE_get_current(ptr noundef %83, ptr noundef nonnull %91) #18
  %5185 = tail call i32 @PE_start_edit(ptr noundef %5184) #18
  %5186 = icmp eq i32 %5185, 0
  br i1 %5186, label %5528, label %5187

5187:                                             ; preds = %5183
  %5188 = tail call ptr @CTX_data_active_base(ptr noundef %0) #18
  %5189 = tail call ptr @CTX_data_active_object(ptr noundef %0) #18
  %5190 = load ptr, ptr %82, align 8, !tbaa !119
  %5191 = tail call ptr @PE_settings(ptr noundef %5190) #18
  %5192 = load ptr, ptr %82, align 8, !tbaa !119
  %5193 = tail call ptr @PE_get_current(ptr noundef %5192, ptr noundef %5189) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  %5194 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %5195 = load i32, ptr %5194, align 4, !tbaa !54
  %5196 = and i32 %5195, 2048
  %5197 = icmp eq ptr %5193, null
  br i1 %5197, label %5453, label %5198

5198:                                             ; preds = %5187
  %5199 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 57
  %5200 = load ptr, ptr %5199, align 8, !tbaa !87
  %5201 = getelementptr inbounds %struct.ToolSettings, ptr %5200, i64 0, i32 18, i32 8
  %5202 = load i32, ptr %5201, align 8, !tbaa !617
  %5203 = icmp eq i32 %5202, 1
  br i1 %5203, label %5453, label %5204

5204:                                             ; preds = %5198
  %5205 = getelementptr inbounds %struct.PTCacheEdit, ptr %5193, i64 0, i32 4
  %5206 = load ptr, ptr %5205, align 8, !tbaa !141
  %5207 = icmp eq ptr %5206, null
  br i1 %5207, label %5210, label %5208

5208:                                             ; preds = %5204
  %5209 = tail call ptr @psys_get_modifier(ptr noundef %5189, ptr noundef nonnull %5206) #18
  br label %5210

5210:                                             ; preds = %5208, %5204
  %5211 = phi ptr [ %5209, %5208 ], [ null, %5204 ]
  %5212 = getelementptr inbounds %struct.Base, ptr %5188, i64 0, i32 4
  %5213 = load i32, ptr %5212, align 8, !tbaa !375
  %5214 = or i32 %5213, 8
  store i32 %5214, ptr %5212, align 8, !tbaa !375
  %5215 = getelementptr inbounds %struct.PTCacheEdit, ptr %5193, i64 0, i32 2
  %5216 = getelementptr inbounds %struct.PTCacheEdit, ptr %5193, i64 0, i32 11
  %5217 = load i32, ptr %5216, align 8, !tbaa !144
  %5218 = icmp sgt i32 %5217, 0
  br i1 %5218, label %5219, label %5276

5219:                                             ; preds = %5210
  %5220 = load ptr, ptr %5215, align 8, !tbaa !145
  %5221 = icmp eq i32 %5196, 0
  br label %5222

5222:                                             ; preds = %5269, %5219
  %5223 = phi i32 [ 0, %5219 ], [ %5262, %5269 ]
  %5224 = phi i32 [ 0, %5219 ], [ %5270, %5269 ]
  %5225 = phi i32 [ 0, %5219 ], [ %5271, %5269 ]
  %5226 = phi ptr [ %5220, %5219 ], [ %5272, %5269 ]
  %5227 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %5226, i64 0, i32 2
  %5228 = load i16, ptr %5227, align 4, !tbaa !146
  %5229 = and i16 %5228, -5
  store i16 %5229, ptr %5227, align 4, !tbaa !146
  %5230 = and i16 %5228, 8
  %5231 = icmp eq i16 %5230, 0
  br i1 %5231, label %5232, label %5260

5232:                                             ; preds = %5222
  %5233 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %5226, i64 0, i32 1
  %5234 = load i32, ptr %5233, align 8, !tbaa !157
  %5235 = icmp sgt i32 %5234, 0
  br i1 %5235, label %5236, label %5260

5236:                                             ; preds = %5232
  %5237 = load ptr, ptr %5226, align 8, !tbaa !158
  br label %5238

5238:                                             ; preds = %5254, %5236
  %5239 = phi i32 [ %5256, %5254 ], [ %5223, %5236 ]
  %5240 = phi i32 [ %5255, %5254 ], [ 0, %5236 ]
  %5241 = phi i32 [ %5257, %5254 ], [ 0, %5236 ]
  %5242 = phi ptr [ %5258, %5254 ], [ %5237, %5236 ]
  %5243 = getelementptr inbounds %struct.PTCacheEditKey, ptr %5242, i64 0, i32 7
  %5244 = load i16, ptr %5243, align 4, !tbaa !618
  %5245 = zext i16 %5244 to i32
  %5246 = and i32 %5245, 4
  %5247 = icmp eq i32 %5246, 0
  br i1 %5247, label %5248, label %5254

5248:                                             ; preds = %5238
  %5249 = and i32 %5245, 1
  %5250 = icmp eq i32 %5249, 0
  %5251 = select i1 %5250, i1 %5221, i1 false
  %5252 = select i1 %5251, i32 %5240, i32 1
  %5253 = select i1 %5250, i32 %5239, i32 1
  br label %5254

5254:                                             ; preds = %5248, %5238
  %5255 = phi i32 [ %5240, %5238 ], [ %5252, %5248 ]
  %5256 = phi i32 [ %5239, %5238 ], [ %5253, %5248 ]
  %5257 = add nuw nsw i32 %5241, 1
  %5258 = getelementptr inbounds %struct.PTCacheEditKey, ptr %5242, i64 1
  %5259 = icmp eq i32 %5257, %5234
  br i1 %5259, label %5260, label %5238, !llvm.loop !619

5260:                                             ; preds = %5254, %5232, %5222
  %5261 = phi i32 [ 0, %5222 ], [ 0, %5232 ], [ %5255, %5254 ]
  %5262 = phi i32 [ %5223, %5222 ], [ %5223, %5232 ], [ %5256, %5254 ]
  %5263 = icmp eq i32 %5261, 0
  br i1 %5263, label %5269, label %5264

5264:                                             ; preds = %5260
  %5265 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %5226, i64 0, i32 1
  %5266 = load i32, ptr %5265, align 8, !tbaa !157
  %5267 = add nsw i32 %5266, %5224
  %5268 = or i16 %5228, 4
  store i16 %5268, ptr %5227, align 4, !tbaa !146
  br label %5269

5269:                                             ; preds = %5264, %5260
  %5270 = phi i32 [ %5267, %5264 ], [ %5224, %5260 ]
  %5271 = add nuw nsw i32 %5225, 1
  %5272 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %5226, i64 1
  %5273 = icmp eq i32 %5271, %5217
  br i1 %5273, label %5274, label %5222, !llvm.loop !620

5274:                                             ; preds = %5269
  %5275 = icmp eq i32 %5262, 0
  br label %5276

5276:                                             ; preds = %5274, %5210
  %5277 = phi i32 [ 0, %5210 ], [ %5270, %5274 ]
  %5278 = phi i1 [ true, %5210 ], [ %5275, %5274 ]
  br i1 %5278, label %5453, label %5279

5279:                                             ; preds = %5276
  %5280 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 %5277, ptr %5280, align 8, !tbaa !34
  %5281 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %5282 = sext i32 %5277 to i64
  %5283 = mul nsw i64 %5282, 224
  %5284 = tail call ptr %5281(i64 noundef %5283, ptr noundef nonnull @.str.58) #18
  %5285 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %5284, ptr %5285, align 8, !tbaa !48
  %5286 = load i32, ptr %1, align 8, !tbaa !188
  %5287 = icmp eq i32 %5286, 24
  br i1 %5287, label %5288, label %5294

5288:                                             ; preds = %5279
  %5289 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %5290 = load i32, ptr %5280, align 8, !tbaa !34
  %5291 = sext i32 %5290 to i64
  %5292 = mul nsw i64 %5291, 384
  %5293 = tail call ptr %5289(i64 noundef %5292, ptr noundef nonnull @.str.59) #18
  br label %5294

5294:                                             ; preds = %5279, %5288
  %5295 = phi ptr [ %5293, %5288 ], [ null, %5279 ]
  %5296 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 11
  store ptr %5295, ptr %5296, align 8, !tbaa !424
  call void @unit_m4(ptr noundef nonnull %4) #18
  %5297 = getelementptr inbounds %struct.Object, ptr %5189, i64 0, i32 50
  %5298 = getelementptr inbounds %struct.Object, ptr %5189, i64 0, i32 47
  %5299 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %5297, ptr noundef nonnull %5298) #18
  %5300 = load i32, ptr %5216, align 8, !tbaa !144
  %5301 = icmp sgt i32 %5300, 0
  br i1 %5301, label %5302, label %5453

5302:                                             ; preds = %5294
  %5303 = load ptr, ptr %5215, align 8, !tbaa !145
  %5304 = getelementptr inbounds %struct.ParticleSystem, ptr %5206, i64 0, i32 25
  %5305 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %5211, i64 0, i32 2
  %5306 = getelementptr inbounds %struct.ParticleSystem, ptr %5206, i64 0, i32 2
  %5307 = getelementptr inbounds %struct.ParticleSystem, ptr %5206, i64 0, i32 3
  %5308 = icmp eq i32 %5196, 0
  br label %5309

5309:                                             ; preds = %5445, %5302
  %5310 = phi i64 [ 0, %5302 ], [ %5448, %5445 ]
  %5311 = phi ptr [ %5284, %5302 ], [ %5447, %5445 ]
  %5312 = phi ptr [ %5295, %5302 ], [ %5446, %5445 ]
  %5313 = phi ptr [ %5303, %5302 ], [ %5449, %5445 ]
  %5314 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %5313, i64 0, i32 2
  %5315 = load i16, ptr %5314, align 4, !tbaa !146
  %5316 = and i16 %5315, 4
  %5317 = icmp eq i16 %5316, 0
  br i1 %5317, label %5445, label %5318

5318:                                             ; preds = %5309
  br i1 %5207, label %5330, label %5319

5319:                                             ; preds = %5318
  %5320 = load i32, ptr %5304, align 4, !tbaa !148
  %5321 = and i32 %5320, 2
  %5322 = icmp eq i32 %5321, 0
  br i1 %5322, label %5323, label %5330

5323:                                             ; preds = %5319
  %5324 = load ptr, ptr %5305, align 8, !tbaa !150
  %5325 = load ptr, ptr %5306, align 8, !tbaa !153
  %5326 = getelementptr inbounds %struct.ParticleSettings, ptr %5325, i64 0, i32 8
  %5327 = load i16, ptr %5326, align 2, !tbaa !154
  %5328 = load ptr, ptr %5307, align 8, !tbaa !156
  %5329 = getelementptr inbounds %struct.ParticleData, ptr %5328, i64 %5310
  call void @psys_mat_hair_to_global(ptr noundef %5189, ptr noundef %5324, i16 noundef signext %5327, ptr noundef %5329, ptr noundef nonnull %4) #18
  br label %5330

5330:                                             ; preds = %5323, %5319, %5318
  %5331 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %5313, i64 0, i32 1
  %5332 = load i32, ptr %5331, align 8, !tbaa !157
  %5333 = icmp sgt i32 %5332, 0
  br i1 %5333, label %5334, label %5438

5334:                                             ; preds = %5330
  %5335 = load ptr, ptr %5313, align 8, !tbaa !158
  br label %5336

5336:                                             ; preds = %5429, %5334
  %5337 = phi ptr [ %5430, %5429 ], [ %5311, %5334 ]
  %5338 = phi ptr [ %5433, %5429 ], [ %5312, %5334 ]
  %5339 = phi i32 [ %5434, %5429 ], [ 0, %5334 ]
  %5340 = phi ptr [ %5435, %5429 ], [ %5335, %5334 ]
  %5341 = getelementptr inbounds %struct.PTCacheEditKey, ptr %5340, i64 0, i32 7
  %5342 = load i16, ptr %5341, align 4, !tbaa !618
  %5343 = and i16 %5342, 8
  %5344 = icmp eq i16 %5343, 0
  br i1 %5344, label %5355, label %5345

5345:                                             ; preds = %5336
  %5346 = getelementptr inbounds %struct.PTCacheEditKey, ptr %5340, i64 0, i32 4
  %5347 = load ptr, ptr %5340, align 8, !tbaa !159
  %5348 = load float, ptr %5347, align 4, !tbaa !112
  store float %5348, ptr %5346, align 4, !tbaa !112
  %5349 = getelementptr inbounds float, ptr %5347, i64 1
  %5350 = load float, ptr %5349, align 4, !tbaa !112
  %5351 = getelementptr inbounds %struct.PTCacheEditKey, ptr %5340, i64 0, i32 4, i64 1
  store float %5350, ptr %5351, align 4, !tbaa !112
  %5352 = getelementptr inbounds float, ptr %5347, i64 2
  %5353 = load float, ptr %5352, align 4, !tbaa !112
  %5354 = getelementptr inbounds %struct.PTCacheEditKey, ptr %5340, i64 0, i32 4, i64 2
  store float %5353, ptr %5354, align 4, !tbaa !112
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %5346) #18
  br label %5357

5355:                                             ; preds = %5336
  %5356 = load ptr, ptr %5340, align 8, !tbaa !159
  br label %5357

5357:                                             ; preds = %5355, %5345
  %5358 = phi ptr [ %5356, %5355 ], [ %5346, %5345 ]
  %5359 = getelementptr inbounds %struct.TransData, ptr %5337, i64 0, i32 3
  store ptr %5358, ptr %5359, align 8, !tbaa !209
  %5360 = getelementptr inbounds %struct.TransData, ptr %5337, i64 0, i32 4
  %5361 = load float, ptr %5358, align 4, !tbaa !112
  store float %5361, ptr %5360, align 4, !tbaa !112
  %5362 = getelementptr inbounds float, ptr %5358, i64 1
  %5363 = load float, ptr %5362, align 4, !tbaa !112
  %5364 = getelementptr inbounds %struct.TransData, ptr %5337, i64 0, i32 4, i64 1
  store float %5363, ptr %5364, align 4, !tbaa !112
  %5365 = getelementptr inbounds float, ptr %5358, i64 2
  %5366 = load float, ptr %5365, align 4, !tbaa !112
  %5367 = getelementptr inbounds %struct.TransData, ptr %5337, i64 0, i32 4, i64 2
  store float %5366, ptr %5367, align 4, !tbaa !112
  %5368 = getelementptr inbounds %struct.TransData, ptr %5337, i64 0, i32 7
  %5369 = load float, ptr %5358, align 4, !tbaa !112
  store float %5369, ptr %5368, align 4, !tbaa !112
  %5370 = load float, ptr %5362, align 4, !tbaa !112
  %5371 = getelementptr inbounds %struct.TransData, ptr %5337, i64 0, i32 7, i64 1
  store float %5370, ptr %5371, align 4, !tbaa !112
  %5372 = load float, ptr %5365, align 4, !tbaa !112
  %5373 = getelementptr inbounds %struct.TransData, ptr %5337, i64 0, i32 7, i64 2
  store float %5372, ptr %5373, align 4, !tbaa !112
  %5374 = load i16, ptr %5341, align 4, !tbaa !618
  %5375 = and i16 %5374, 1
  %5376 = icmp ne i16 %5375, 0
  %5377 = select i1 %5376, i1 true, i1 %5308
  br i1 %5377, label %5378, label %5383

5378:                                             ; preds = %5357
  %5379 = select i1 %5376, i32 1, i32 2048
  %5380 = getelementptr inbounds %struct.TransData, ptr %5337, i64 0, i32 16
  %5381 = load i32, ptr %5380, align 8, !tbaa !49
  %5382 = or i32 %5381, %5379
  store i32 %5382, ptr %5380, align 8, !tbaa !49
  br label %5383

5383:                                             ; preds = %5357, %5378
  %5384 = getelementptr inbounds %struct.TransData, ptr %5337, i64 0, i32 8
  call void @unit_m3(ptr noundef nonnull %5384) #18
  %5385 = getelementptr inbounds %struct.TransData, ptr %5337, i64 0, i32 9
  call void @unit_m3(ptr noundef nonnull %5385) #18
  %5386 = icmp eq i32 %5339, 0
  br i1 %5386, label %5387, label %5400

5387:                                             ; preds = %5383
  %5388 = load i16, ptr %5191, align 8, !tbaa !621
  %5389 = and i16 %5388, 2
  %5390 = icmp eq i16 %5389, 0
  br i1 %5390, label %5400, label %5391

5391:                                             ; preds = %5387
  br i1 %5207, label %5396, label %5392

5392:                                             ; preds = %5391
  %5393 = load i32, ptr %5304, align 4, !tbaa !148
  %5394 = and i32 %5393, 2
  %5395 = icmp eq i32 %5394, 0
  br i1 %5395, label %5396, label %5400

5396:                                             ; preds = %5392, %5391
  %5397 = getelementptr inbounds %struct.TransData, ptr %5337, i64 0, i32 17
  %5398 = load i16, ptr %5397, align 4, !tbaa !612
  %5399 = or i16 %5398, 7
  store i16 %5399, ptr %5397, align 4, !tbaa !612
  br label %5400

5400:                                             ; preds = %5396, %5392, %5387, %5383
  %5401 = getelementptr inbounds %struct.TransData, ptr %5337, i64 0, i32 11
  store ptr %5189, ptr %5401, align 8, !tbaa !364
  %5402 = getelementptr inbounds %struct.TransData, ptr %5337, i64 0, i32 13
  store ptr %5338, ptr %5402, align 8, !tbaa !372
  %5403 = load i32, ptr %1, align 8, !tbaa !188
  %5404 = icmp eq i32 %5403, 24
  br i1 %5404, label %5405, label %5429

5405:                                             ; preds = %5400
  %5406 = getelementptr inbounds %struct.PTCacheEditKey, ptr %5340, i64 0, i32 3
  %5407 = load ptr, ptr %5406, align 8, !tbaa !622
  %5408 = getelementptr inbounds %struct.TransData, ptr %5337, i64 0, i32 5
  store ptr %5407, ptr %5408, align 8, !tbaa !441
  %5409 = load float, ptr %5407, align 4, !tbaa !112
  %5410 = getelementptr inbounds %struct.TransData, ptr %5337, i64 0, i32 6
  store float %5409, ptr %5410, align 8, !tbaa !442
  %5411 = getelementptr inbounds %struct.TransData, ptr %5337, i64 0, i32 16
  %5412 = load i32, ptr %5411, align 8, !tbaa !49
  %5413 = or i32 %5412, 1024
  store i32 %5413, ptr %5411, align 8, !tbaa !49
  br i1 %5386, label %5417, label %5414

5414:                                             ; preds = %5405
  %5415 = getelementptr %struct.PTCacheEditKey, ptr %5340, i64 -1, i32 3
  %5416 = load ptr, ptr %5415, align 8, !tbaa !622
  br label %5417

5417:                                             ; preds = %5405, %5414
  %5418 = phi ptr [ %5416, %5414 ], [ null, %5405 ]
  %5419 = getelementptr inbounds %struct.TransDataExtension, ptr %5338, i64 0, i32 11
  store ptr %5418, ptr %5419, align 8, !tbaa !427
  %5420 = load i32, ptr %5331, align 8, !tbaa !157
  %5421 = add nsw i32 %5420, -1
  %5422 = icmp eq i32 %5339, %5421
  br i1 %5422, label %5426, label %5423

5423:                                             ; preds = %5417
  %5424 = getelementptr inbounds %struct.PTCacheEditKey, ptr %5340, i64 1, i32 3
  %5425 = load ptr, ptr %5424, align 8, !tbaa !622
  br label %5426

5426:                                             ; preds = %5417, %5423
  %5427 = phi ptr [ %5425, %5423 ], [ null, %5417 ]
  %5428 = getelementptr inbounds %struct.TransDataExtension, ptr %5338, i64 0, i32 5
  store ptr %5427, ptr %5428, align 8, !tbaa !605
  br label %5429

5429:                                             ; preds = %5426, %5400
  %5430 = getelementptr %struct.TransData, ptr %5337, i64 1
  %5431 = icmp eq ptr %5338, null
  %5432 = getelementptr inbounds %struct.TransDataExtension, ptr %5338, i64 1
  %5433 = select i1 %5431, ptr null, ptr %5432
  %5434 = add nuw nsw i32 %5339, 1
  %5435 = getelementptr inbounds %struct.PTCacheEditKey, ptr %5340, i64 1
  %5436 = load i32, ptr %5331, align 8, !tbaa !157
  %5437 = icmp slt i32 %5434, %5436
  br i1 %5437, label %5336, label %5438, !llvm.loop !623

5438:                                             ; preds = %5429, %5330
  %5439 = phi ptr [ %5312, %5330 ], [ %5433, %5429 ]
  %5440 = phi ptr [ %5311, %5330 ], [ %5430, %5429 ]
  %5441 = icmp eq ptr %5311, %5440
  %5442 = select i1 %5308, i1 true, i1 %5441
  br i1 %5442, label %5445, label %5443

5443:                                             ; preds = %5438
  %5444 = getelementptr inbounds %struct.TransData, ptr %5440, i64 -1
  call fastcc void @calc_distanceCurveVerts(ptr noundef %5311, ptr noundef nonnull %5444)
  br label %5445

5445:                                             ; preds = %5443, %5438, %5309
  %5446 = phi ptr [ %5312, %5309 ], [ %5439, %5443 ], [ %5439, %5438 ]
  %5447 = phi ptr [ %5311, %5309 ], [ %5440, %5443 ], [ %5440, %5438 ]
  %5448 = add nuw nsw i64 %5310, 1
  %5449 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %5313, i64 1
  %5450 = load i32, ptr %5216, align 8, !tbaa !144
  %5451 = sext i32 %5450 to i64
  %5452 = icmp slt i64 %5448, %5451
  br i1 %5452, label %5309, label %5453, !llvm.loop !624

5453:                                             ; preds = %5445, %5187, %5198, %5276, %5294
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  %5454 = load i32, ptr %5194, align 4, !tbaa !54
  %5455 = or i32 %5454, 64
  store i32 %5455, ptr %5194, align 4, !tbaa !54
  %5456 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  %5457 = load ptr, ptr %5456, align 8, !tbaa !48
  %5458 = icmp eq ptr %5457, null
  %5459 = and i32 %5454, 2048
  %5460 = icmp eq i32 %5459, 0
  %5461 = select i1 %5458, i1 true, i1 %5460
  br i1 %5461, label %6050, label %5462

5462:                                             ; preds = %5453
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %50)
  %5463 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  %5464 = load i32, ptr %5463, align 8, !tbaa !34
  %5465 = sext i32 %5464 to i64
  %5466 = getelementptr %struct.TransData, ptr %5457, i64 %5465
  %5467 = getelementptr inbounds %struct.TransData, ptr %5466, i64 -1
  %5468 = icmp ugt ptr %5467, %5457
  br i1 %5468, label %5469, label %5494

5469:                                             ; preds = %5462, %5490
  %5470 = phi ptr [ %5492, %5490 ], [ %5467, %5462 ]
  %5471 = phi ptr [ %5491, %5490 ], [ %5457, %5462 ]
  br label %5472

5472:                                             ; preds = %5469, %5478
  %5473 = phi ptr [ %5479, %5478 ], [ %5471, %5469 ]
  %5474 = getelementptr inbounds %struct.TransData, ptr %5473, i64 0, i32 16
  %5475 = load i32, ptr %5474, align 8, !tbaa !49
  %5476 = and i32 %5475, 1
  %5477 = icmp eq i32 %5476, 0
  br i1 %5477, label %5481, label %5478

5478:                                             ; preds = %5472
  %5479 = getelementptr inbounds %struct.TransData, ptr %5473, i64 1
  %5480 = icmp eq ptr %5479, %5470
  br i1 %5480, label %5494, label %5472, !llvm.loop !444

5481:                                             ; preds = %5472, %5487
  %5482 = phi ptr [ %5488, %5487 ], [ %5470, %5472 ]
  %5483 = getelementptr inbounds %struct.TransData, ptr %5482, i64 0, i32 16
  %5484 = load i32, ptr %5483, align 8, !tbaa !49
  %5485 = and i32 %5484, 1
  %5486 = icmp eq i32 %5485, 0
  br i1 %5486, label %5487, label %5490

5487:                                             ; preds = %5481
  %5488 = getelementptr inbounds %struct.TransData, ptr %5482, i64 -1
  %5489 = icmp eq ptr %5473, %5488
  br i1 %5489, label %5494, label %5481, !llvm.loop !445

5490:                                             ; preds = %5481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %50, ptr noundef nonnull align 8 dereferenceable(224) %5473, i64 224, i1 false), !tbaa.struct !446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %5473, ptr noundef nonnull align 8 dereferenceable(224) %5482, i64 224, i1 false), !tbaa.struct !446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %5482, ptr noundef nonnull align 8 dereferenceable(224) %50, i64 224, i1 false), !tbaa.struct !446
  %5491 = getelementptr inbounds %struct.TransData, ptr %5473, i64 1
  %5492 = getelementptr inbounds %struct.TransData, ptr %5482, i64 -1
  %5493 = icmp ugt ptr %5492, %5491
  br i1 %5493, label %5469, label %5494, !llvm.loop !447

5494:                                             ; preds = %5490, %5478, %5487, %5462
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %50)
  call fastcc void @set_prop_dist(ptr noundef %1, i8 noundef zeroext 1)
  %5495 = load i32, ptr %5463, align 8, !tbaa !34
  %5496 = icmp sgt i32 %5495, 0
  br i1 %5496, label %5497, label %6050

5497:                                             ; preds = %5494
  %5498 = load ptr, ptr %5456, align 8, !tbaa !48
  %5499 = getelementptr inbounds %struct.TransData, ptr %5498, i64 0, i32 16
  %5500 = load i32, ptr %5499, align 8, !tbaa !49
  %5501 = and i32 %5500, 1
  %5502 = icmp eq i32 %5501, 0
  br i1 %5502, label %5516, label %5509

5503:                                             ; preds = %5509
  %5504 = getelementptr inbounds %struct.TransData, ptr %5510, i64 1
  %5505 = getelementptr inbounds %struct.TransData, ptr %5510, i64 1, i32 16
  %5506 = load i32, ptr %5505, align 8, !tbaa !49
  %5507 = and i32 %5506, 1
  %5508 = icmp eq i32 %5507, 0
  br i1 %5508, label %5514, label %5509, !llvm.loop !51

5509:                                             ; preds = %5497, %5503
  %5510 = phi ptr [ %5504, %5503 ], [ %5498, %5497 ]
  %5511 = phi i32 [ %5512, %5503 ], [ 0, %5497 ]
  %5512 = add nuw nsw i32 %5511, 1
  %5513 = icmp eq i32 %5512, %5495
  br i1 %5513, label %6050, label %5503, !llvm.loop !51

5514:                                             ; preds = %5503
  %5515 = icmp slt i32 %5512, %5495
  br label %5516

5516:                                             ; preds = %5514, %5497
  %5517 = phi i1 [ true, %5497 ], [ %5515, %5514 ]
  %5518 = phi i32 [ 0, %5497 ], [ %5512, %5514 ]
  %5519 = phi ptr [ %5498, %5497 ], [ %5504, %5514 ]
  br i1 %5517, label %5520, label %6050

5520:                                             ; preds = %5516
  %5521 = load i32, ptr %5194, align 4, !tbaa !54
  %5522 = and i32 %5521, 4096
  %5523 = icmp eq i32 %5522, 0
  %5524 = sub nsw i32 %5495, %5518
  %5525 = sext i32 %5524 to i64
  br i1 %5523, label %5527, label %5526

5526:                                             ; preds = %5520
  call void @qsort(ptr noundef %5519, i64 noundef %5525, i64 noundef 224, ptr noundef nonnull @trans_data_compare_dist) #18
  br label %6050

5527:                                             ; preds = %5520
  call void @qsort(ptr noundef %5519, i64 noundef %5525, i64 noundef 224, ptr noundef nonnull @trans_data_compare_rdist) #18
  br label %6050

5528:                                             ; preds = %5180, %5183
  %5529 = load i32, ptr %5140, align 8, !tbaa !362
  %5530 = and i32 %5529, 30
  %5531 = icmp eq i32 %5530, 0
  br i1 %5531, label %5542, label %5532

5532:                                             ; preds = %5528
  %5533 = load i32, ptr %92, align 8, !tbaa !292
  %5534 = and i32 %5533, 256
  %5535 = icmp eq i32 %5534, 0
  br i1 %5535, label %6050, label %5536

5536:                                             ; preds = %5532
  %5537 = load i32, ptr %1, align 8, !tbaa !188
  switch i32 %5537, label %5538 [
    i32 6, label %6050
    i32 8, label %6050
  ]

5538:                                             ; preds = %5536
  %5539 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %5540 = load i32, ptr %5539, align 4, !tbaa !54
  %5541 = or i32 %5540, 32832
  store i32 %5541, ptr %5539, align 4, !tbaa !54
  tail call fastcc void @createTransPaintCurveVerts(ptr noundef %0, ptr noundef nonnull %1)
  br label %6050

5542:                                             ; preds = %5137, %5528
  %5543 = load ptr, ptr %82, align 8, !tbaa !119
  %5544 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %5545 = load i32, ptr %5544, align 4, !tbaa !54
  %5546 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 52
  %5547 = load ptr, ptr %5546, align 8, !tbaa !360
  %5548 = load i32, ptr %1, align 8, !tbaa !188
  %5549 = icmp eq i32 %5548, 0
  br i1 %5549, label %5689, label %5550

5550:                                             ; preds = %5542
  tail call void @BKE_scene_base_flag_to_objects(ptr noundef %5543) #18
  %5551 = load ptr, ptr @G, align 8, !tbaa !326
  %5552 = load ptr, ptr %82, align 8, !tbaa !119
  tail call void @DAG_scene_relations_update(ptr noundef %5551, ptr noundef %5552) #18
  %5553 = getelementptr inbounds %struct.Scene, ptr %5543, i64 0, i32 5
  %5554 = load ptr, ptr %5553, align 8, !tbaa !63
  %5555 = icmp eq ptr %5554, null
  br i1 %5555, label %5556, label %5565

5556:                                             ; preds = %5578, %5550
  %5557 = load ptr, ptr %5553, align 8, !tbaa !63
  %5558 = icmp eq ptr %5557, null
  br i1 %5558, label %5662, label %5559

5559:                                             ; preds = %5556
  %5560 = icmp eq ptr %5547, null
  %5561 = getelementptr inbounds %struct.View3D, ptr %5547, i64 0, i32 22
  %5562 = getelementptr inbounds %struct.Scene, ptr %5543, i64 0, i32 12
  %5563 = select i1 %5560, ptr %5562, ptr %5561
  %5564 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 32
  br label %5581

5565:                                             ; preds = %5550, %5578
  %5566 = phi ptr [ %5579, %5578 ], [ %5554, %5550 ]
  %5567 = getelementptr inbounds %struct.Base, ptr %5566, i64 0, i32 7
  %5568 = load ptr, ptr %5567, align 8, !tbaa !139
  %5569 = getelementptr inbounds %struct.Object, ptr %5568, i64 0, i32 103
  %5570 = load i8, ptr %5569, align 1, !tbaa !361
  %5571 = and i8 %5570, 7
  %5572 = icmp eq i8 %5571, 0
  br i1 %5572, label %5578, label %5573

5573:                                             ; preds = %5565
  %5574 = load ptr, ptr @G, align 8, !tbaa !326
  %5575 = getelementptr inbounds %struct.Main, ptr %5574, i64 0, i32 46
  %5576 = load ptr, ptr %5575, align 8, !tbaa !625
  %5577 = load ptr, ptr %82, align 8, !tbaa !119
  tail call void @BKE_object_handle_update(ptr noundef %5576, ptr noundef %5577, ptr noundef %5568) #18
  br label %5578

5578:                                             ; preds = %5573, %5565
  %5579 = load ptr, ptr %5566, align 8, !tbaa !63
  %5580 = icmp eq ptr %5579, null
  br i1 %5580, label %5556, label %5565, !llvm.loop !627

5581:                                             ; preds = %5659, %5559
  %5582 = phi ptr [ %5557, %5559 ], [ %5660, %5659 ]
  %5583 = getelementptr inbounds %struct.Base, ptr %5582, i64 0, i32 4
  %5584 = load i32, ptr %5583, align 8, !tbaa !375
  %5585 = and i32 %5584, -3
  store i32 %5585, ptr %5583, align 8, !tbaa !375
  %5586 = and i32 %5584, 1
  %5587 = icmp eq i32 %5586, 0
  br i1 %5587, label %5659, label %5588

5588:                                             ; preds = %5581
  %5589 = getelementptr inbounds %struct.Base, ptr %5582, i64 0, i32 2
  %5590 = load i32, ptr %5589, align 8, !tbaa !614
  %5591 = load i32, ptr %5563, align 8, !tbaa !57
  %5592 = and i32 %5591, %5590
  %5593 = icmp eq i32 %5592, 0
  br i1 %5593, label %5659, label %5594

5594:                                             ; preds = %5588
  %5595 = getelementptr inbounds %struct.Base, ptr %5582, i64 0, i32 7
  %5596 = load ptr, ptr %5595, align 8, !tbaa !139
  %5597 = getelementptr inbounds %struct.ID, ptr %5596, i64 0, i32 3
  %5598 = load ptr, ptr %5597, align 8, !tbaa !628
  %5599 = icmp eq ptr %5598, null
  br i1 %5599, label %5600, label %5659

5600:                                             ; preds = %5594
  %5601 = getelementptr inbounds %struct.Object, ptr %5596, i64 0, i32 102
  %5602 = load i8, ptr %5601, align 8, !tbaa !616
  %5603 = and i8 %5602, 1
  %5604 = icmp eq i8 %5603, 0
  br i1 %5604, label %5605, label %5659

5605:                                             ; preds = %5600
  %5606 = getelementptr inbounds %struct.Object, ptr %5596, i64 0, i32 9
  %5607 = load ptr, ptr %5606, align 8, !tbaa !629
  %5608 = icmp eq ptr %5607, null
  br i1 %5608, label %5658, label %5609

5609:                                             ; preds = %5605, %5640
  %5610 = phi ptr [ %5642, %5640 ], [ %5607, %5605 ]
  %5611 = getelementptr inbounds %struct.Object, ptr %5610, i64 0, i32 53
  %5612 = load i16, ptr %5611, align 4, !tbaa !630
  %5613 = and i16 %5612, 1
  %5614 = icmp eq i16 %5613, 0
  br i1 %5614, label %5640, label %5615

5615:                                             ; preds = %5609
  %5616 = tail call ptr @BKE_scene_base_find(ptr noundef %5543, ptr noundef nonnull %5610) #18
  %5617 = icmp eq ptr %5616, null
  br i1 %5617, label %5640, label %5618

5618:                                             ; preds = %5615
  %5619 = getelementptr inbounds %struct.Base, ptr %5616, i64 0, i32 4
  %5620 = load i32, ptr %5619, align 8, !tbaa !375
  %5621 = and i32 %5620, 1
  %5622 = icmp eq i32 %5621, 0
  br i1 %5622, label %5640, label %5623

5623:                                             ; preds = %5618
  %5624 = getelementptr inbounds %struct.Base, ptr %5616, i64 0, i32 2
  %5625 = load i32, ptr %5624, align 8, !tbaa !614
  %5626 = load i32, ptr %5563, align 8, !tbaa !57
  %5627 = and i32 %5626, %5625
  %5628 = icmp eq i32 %5627, 0
  br i1 %5628, label %5640, label %5629

5629:                                             ; preds = %5623
  %5630 = getelementptr inbounds %struct.Base, ptr %5616, i64 0, i32 7
  %5631 = load ptr, ptr %5630, align 8, !tbaa !139
  %5632 = getelementptr inbounds %struct.ID, ptr %5631, i64 0, i32 3
  %5633 = load ptr, ptr %5632, align 8, !tbaa !628
  %5634 = icmp eq ptr %5633, null
  br i1 %5634, label %5635, label %5640

5635:                                             ; preds = %5629
  %5636 = getelementptr inbounds %struct.Object, ptr %5631, i64 0, i32 102
  %5637 = load i8, ptr %5636, align 8, !tbaa !616
  %5638 = and i8 %5637, 1
  %5639 = icmp eq i8 %5638, 0
  br i1 %5639, label %5644, label %5640

5640:                                             ; preds = %5635, %5629, %5623, %5618, %5615, %5609
  %5641 = getelementptr inbounds %struct.Object, ptr %5610, i64 0, i32 9
  %5642 = load ptr, ptr %5641, align 8, !tbaa !629
  %5643 = icmp eq ptr %5642, null
  br i1 %5643, label %5658, label %5609, !llvm.loop !631

5644:                                             ; preds = %5635
  %5645 = load i32, ptr %1, align 8, !tbaa !188
  switch i32 %5645, label %5652 [
    i32 2, label %5646
    i32 10, label %5646
  ]

5646:                                             ; preds = %5644, %5644
  %5647 = load i16, ptr %5564, align 2, !tbaa !348
  %5648 = icmp eq i16 %5647, 2
  br i1 %5648, label %5649, label %5652

5649:                                             ; preds = %5646
  %5650 = load i32, ptr %5583, align 8, !tbaa !375
  %5651 = or i32 %5650, 256
  br label %5656

5652:                                             ; preds = %5646, %5644
  %5653 = load i32, ptr %5583, align 8, !tbaa !375
  %5654 = and i32 %5653, -4
  %5655 = or disjoint i32 %5654, 2
  br label %5656

5656:                                             ; preds = %5649, %5652
  %5657 = phi i32 [ %5655, %5652 ], [ %5651, %5649 ]
  store i32 %5657, ptr %5583, align 8, !tbaa !375
  br label %5658

5658:                                             ; preds = %5640, %5656, %5605
  tail call void @DAG_id_tag_update(ptr noundef %5596, i16 noundef signext 1) #18
  br label %5659

5659:                                             ; preds = %5658, %5600, %5594, %5588, %5581
  %5660 = load ptr, ptr %5582, align 8, !tbaa !63
  %5661 = icmp eq ptr %5660, null
  br i1 %5661, label %5662, label %5581, !llvm.loop !632

5662:                                             ; preds = %5659, %5556
  %5663 = load ptr, ptr @G, align 8, !tbaa !326
  %5664 = load ptr, ptr %82, align 8, !tbaa !119
  tail call void @DAG_scene_flush_update(ptr noundef %5663, ptr noundef %5664, i32 noundef -1, i16 noundef signext 0) #18
  %5665 = load ptr, ptr %5553, align 8, !tbaa !63
  %5666 = icmp eq ptr %5665, null
  br i1 %5666, label %5689, label %5667

5667:                                             ; preds = %5662, %5686
  %5668 = phi ptr [ %5687, %5686 ], [ %5665, %5662 ]
  %5669 = getelementptr inbounds %struct.Base, ptr %5668, i64 0, i32 7
  %5670 = load ptr, ptr %5669, align 8, !tbaa !139
  %5671 = getelementptr inbounds %struct.Object, ptr %5670, i64 0, i32 103
  %5672 = load i8, ptr %5671, align 1, !tbaa !361
  %5673 = and i8 %5672, 1
  %5674 = icmp eq i8 %5673, 0
  br i1 %5674, label %5679, label %5675

5675:                                             ; preds = %5667
  %5676 = getelementptr inbounds %struct.Base, ptr %5668, i64 0, i32 4
  %5677 = load i32, ptr %5676, align 8, !tbaa !375
  %5678 = or i32 %5677, 4
  store i32 %5678, ptr %5676, align 8, !tbaa !375
  br label %5679

5679:                                             ; preds = %5675, %5667
  %5680 = and i8 %5672, 2
  %5681 = icmp eq i8 %5680, 0
  br i1 %5681, label %5686, label %5682

5682:                                             ; preds = %5679
  %5683 = getelementptr inbounds %struct.Base, ptr %5668, i64 0, i32 4
  %5684 = load i32, ptr %5683, align 8, !tbaa !375
  %5685 = or i32 %5684, 8
  store i32 %5685, ptr %5683, align 8, !tbaa !375
  br label %5686

5686:                                             ; preds = %5682, %5679
  %5687 = load ptr, ptr %5668, align 8, !tbaa !63
  %5688 = icmp eq ptr %5687, null
  br i1 %5688, label %5689, label %5667, !llvm.loop !633

5689:                                             ; preds = %5686, %5662, %5542
  %5690 = tail call i32 @ctx_data_list_count(ptr noundef %0, ptr noundef nonnull @CTX_data_selected_objects) #18
  %5691 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 %5690, ptr %5691, align 8, !tbaa !34
  %5692 = icmp eq i32 %5690, 0
  br i1 %5692, label %5693, label %5711

5693:                                             ; preds = %5689
  %5694 = load ptr, ptr %82, align 8, !tbaa !119
  %5695 = getelementptr inbounds %struct.Scene, ptr %5694, i64 0, i32 5
  %5696 = load ptr, ptr %5695, align 8, !tbaa !63
  %5697 = icmp eq ptr %5696, null
  br i1 %5697, label %5981, label %5698

5698:                                             ; preds = %5693, %5706
  %5699 = phi ptr [ %5709, %5706 ], [ %5696, %5693 ]
  %5700 = getelementptr inbounds %struct.Base, ptr %5699, i64 0, i32 4
  %5701 = load i32, ptr %5700, align 8, !tbaa !375
  %5702 = and i32 %5701, 2
  %5703 = icmp eq i32 %5702, 0
  br i1 %5703, label %5706, label %5704

5704:                                             ; preds = %5698
  %5705 = or i32 %5701, 1
  store i32 %5705, ptr %5700, align 8, !tbaa !375
  br label %5706

5706:                                             ; preds = %5704, %5698
  %5707 = load i32, ptr %5700, align 8, !tbaa !375
  %5708 = and i32 %5707, -8495
  store i32 %5708, ptr %5700, align 8, !tbaa !375
  %5709 = load ptr, ptr %5699, align 8, !tbaa !63
  %5710 = icmp eq ptr %5709, null
  br i1 %5710, label %5981, label %5698, !llvm.loop !376

5711:                                             ; preds = %5689
  %5712 = and i32 %5545, 2048
  %5713 = icmp eq i32 %5712, 0
  br i1 %5713, label %5875, label %5714

5714:                                             ; preds = %5711
  %5715 = load ptr, ptr %82, align 8, !tbaa !119
  %5716 = load ptr, ptr %5546, align 8, !tbaa !360
  %5717 = load i32, ptr %1, align 8, !tbaa !188
  switch i32 %5717, label %5722 [
    i32 2, label %5718
    i32 10, label %5718
  ]

5718:                                             ; preds = %5714, %5714
  %5719 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 32
  %5720 = load i16, ptr %5719, align 2, !tbaa !348
  %5721 = icmp eq i16 %5720, 2
  br i1 %5721, label %5803, label %5722

5722:                                             ; preds = %5718, %5714
  %5723 = getelementptr inbounds %struct.Scene, ptr %5715, i64 0, i32 5
  %5724 = load ptr, ptr %5723, align 8, !tbaa !63
  %5725 = icmp eq ptr %5724, null
  br i1 %5725, label %5803, label %5726

5726:                                             ; preds = %5722
  %5727 = icmp eq ptr %5716, null
  %5728 = getelementptr inbounds %struct.View3D, ptr %5716, i64 0, i32 22
  %5729 = getelementptr inbounds %struct.Scene, ptr %5715, i64 0, i32 12
  %5730 = select i1 %5727, ptr %5729, ptr %5728
  br label %5737

5731:                                             ; preds = %5772
  br i1 %5725, label %5803, label %5732

5732:                                             ; preds = %5731
  %5733 = icmp eq ptr %5716, null
  %5734 = getelementptr inbounds %struct.View3D, ptr %5716, i64 0, i32 22
  %5735 = getelementptr inbounds %struct.Scene, ptr %5715, i64 0, i32 12
  %5736 = select i1 %5733, ptr %5735, ptr %5734
  br label %5775

5737:                                             ; preds = %5772, %5726
  %5738 = phi ptr [ %5724, %5726 ], [ %5773, %5772 ]
  %5739 = getelementptr inbounds %struct.Base, ptr %5738, i64 0, i32 4
  %5740 = load i32, ptr %5739, align 8, !tbaa !375
  %5741 = and i32 %5740, 1
  %5742 = icmp eq i32 %5741, 0
  br i1 %5742, label %5772, label %5743

5743:                                             ; preds = %5737
  %5744 = getelementptr inbounds %struct.Base, ptr %5738, i64 0, i32 2
  %5745 = load i32, ptr %5744, align 8, !tbaa !614
  %5746 = load i32, ptr %5730, align 8, !tbaa !57
  %5747 = and i32 %5746, %5745
  %5748 = icmp eq i32 %5747, 0
  br i1 %5748, label %5772, label %5749

5749:                                             ; preds = %5743
  %5750 = getelementptr inbounds %struct.Base, ptr %5738, i64 0, i32 7
  %5751 = load ptr, ptr %5750, align 8, !tbaa !139
  %5752 = getelementptr inbounds %struct.ID, ptr %5751, i64 0, i32 3
  %5753 = load ptr, ptr %5752, align 8, !tbaa !628
  %5754 = icmp eq ptr %5753, null
  br i1 %5754, label %5755, label %5772

5755:                                             ; preds = %5749
  %5756 = getelementptr inbounds %struct.Object, ptr %5751, i64 0, i32 102
  %5757 = load i8, ptr %5756, align 8, !tbaa !616
  %5758 = and i8 %5757, 1
  %5759 = icmp eq i8 %5758, 0
  br i1 %5759, label %5760, label %5772

5760:                                             ; preds = %5755
  %5761 = getelementptr inbounds %struct.Object, ptr %5751, i64 0, i32 9
  %5762 = load ptr, ptr %5761, align 8, !tbaa !629
  %5763 = icmp eq ptr %5762, null
  br i1 %5763, label %5772, label %5764

5764:                                             ; preds = %5760, %5764
  %5765 = phi ptr [ %5770, %5764 ], [ %5762, %5760 ]
  %5766 = getelementptr inbounds %struct.Object, ptr %5765, i64 0, i32 53
  %5767 = load i16, ptr %5766, align 4, !tbaa !630
  %5768 = or i16 %5767, 8192
  store i16 %5768, ptr %5766, align 4, !tbaa !630
  %5769 = getelementptr inbounds %struct.Object, ptr %5765, i64 0, i32 9
  %5770 = load ptr, ptr %5769, align 8, !tbaa !629
  %5771 = icmp eq ptr %5770, null
  br i1 %5771, label %5772, label %5764, !llvm.loop !634

5772:                                             ; preds = %5764, %5760, %5755, %5749, %5743, %5737
  %5773 = load ptr, ptr %5738, align 8, !tbaa !63
  %5774 = icmp eq ptr %5773, null
  br i1 %5774, label %5731, label %5737, !llvm.loop !635

5775:                                             ; preds = %5800, %5732
  %5776 = phi ptr [ %5724, %5732 ], [ %5801, %5800 ]
  %5777 = getelementptr inbounds %struct.Base, ptr %5776, i64 0, i32 7
  %5778 = load ptr, ptr %5777, align 8, !tbaa !139
  %5779 = getelementptr inbounds %struct.Object, ptr %5778, i64 0, i32 53
  %5780 = load i16, ptr %5779, align 4, !tbaa !630
  %5781 = and i16 %5780, 8449
  %5782 = icmp eq i16 %5781, 0
  br i1 %5782, label %5783, label %5800

5783:                                             ; preds = %5775
  %5784 = getelementptr inbounds %struct.Base, ptr %5776, i64 0, i32 2
  %5785 = load i32, ptr %5784, align 8, !tbaa !614
  %5786 = load i32, ptr %5736, align 8, !tbaa !57
  %5787 = and i32 %5786, %5785
  %5788 = icmp eq i32 %5787, 0
  br i1 %5788, label %5800, label %5789

5789:                                             ; preds = %5783
  %5790 = getelementptr inbounds %struct.ID, ptr %5778, i64 0, i32 3
  %5791 = load ptr, ptr %5790, align 8, !tbaa !628
  %5792 = icmp eq ptr %5791, null
  br i1 %5792, label %5793, label %5800

5793:                                             ; preds = %5789
  %5794 = getelementptr inbounds %struct.Object, ptr %5778, i64 0, i32 102
  %5795 = load i8, ptr %5794, align 8, !tbaa !616
  %5796 = and i8 %5795, 1
  %5797 = icmp eq i8 %5796, 0
  br i1 %5797, label %5798, label %5800

5798:                                             ; preds = %5793
  %5799 = tail call fastcc zeroext i8 @mark_children(ptr noundef %5778), !range !636
  br label %5800

5800:                                             ; preds = %5798, %5793, %5789, %5783, %5775
  %5801 = load ptr, ptr %5776, align 8, !tbaa !63
  %5802 = icmp eq ptr %5801, null
  br i1 %5802, label %5803, label %5775, !llvm.loop !637

5803:                                             ; preds = %5800, %5722, %5731, %5718
  %5804 = getelementptr inbounds %struct.Scene, ptr %5715, i64 0, i32 5
  %5805 = load ptr, ptr %5804, align 8, !tbaa !63
  %5806 = icmp eq ptr %5805, null
  br i1 %5806, label %5842, label %5807

5807:                                             ; preds = %5803
  %5808 = icmp eq ptr %5716, null
  %5809 = getelementptr inbounds %struct.View3D, ptr %5716, i64 0, i32 22
  %5810 = getelementptr inbounds %struct.Scene, ptr %5715, i64 0, i32 12
  %5811 = select i1 %5808, ptr %5810, ptr %5809
  br label %5812

5812:                                             ; preds = %5838, %5807
  %5813 = phi ptr [ %5805, %5807 ], [ %5840, %5838 ]
  %5814 = phi i32 [ 0, %5807 ], [ %5839, %5838 ]
  %5815 = getelementptr inbounds %struct.Base, ptr %5813, i64 0, i32 7
  %5816 = load ptr, ptr %5815, align 8, !tbaa !139
  %5817 = getelementptr inbounds %struct.Object, ptr %5816, i64 0, i32 53
  %5818 = load i16, ptr %5817, align 4, !tbaa !630
  %5819 = and i16 %5818, 8449
  %5820 = icmp eq i16 %5819, 0
  br i1 %5820, label %5821, label %5838

5821:                                             ; preds = %5812
  %5822 = getelementptr inbounds %struct.Base, ptr %5813, i64 0, i32 2
  %5823 = load i32, ptr %5822, align 8, !tbaa !614
  %5824 = load i32, ptr %5811, align 8, !tbaa !57
  %5825 = and i32 %5824, %5823
  %5826 = icmp eq i32 %5825, 0
  br i1 %5826, label %5838, label %5827

5827:                                             ; preds = %5821
  %5828 = getelementptr inbounds %struct.ID, ptr %5816, i64 0, i32 3
  %5829 = load ptr, ptr %5828, align 8, !tbaa !628
  %5830 = icmp eq ptr %5829, null
  br i1 %5830, label %5831, label %5838

5831:                                             ; preds = %5827
  %5832 = getelementptr inbounds %struct.Object, ptr %5816, i64 0, i32 102
  %5833 = load i8, ptr %5832, align 8, !tbaa !616
  %5834 = and i8 %5833, 1
  %5835 = icmp eq i8 %5834, 0
  br i1 %5835, label %5836, label %5838

5836:                                             ; preds = %5831
  tail call void @DAG_id_tag_update(ptr noundef %5816, i16 noundef signext 1) #18
  %5837 = add nsw i32 %5814, 1
  br label %5838

5838:                                             ; preds = %5836, %5831, %5827, %5821, %5812
  %5839 = phi i32 [ %5837, %5836 ], [ %5814, %5831 ], [ %5814, %5827 ], [ %5814, %5821 ], [ %5814, %5812 ]
  %5840 = load ptr, ptr %5813, align 8, !tbaa !63
  %5841 = icmp eq ptr %5840, null
  br i1 %5841, label %5842, label %5812, !llvm.loop !638

5842:                                             ; preds = %5838, %5803
  %5843 = phi i32 [ 0, %5803 ], [ %5839, %5838 ]
  %5844 = load ptr, ptr @G, align 8, !tbaa !326
  %5845 = load ptr, ptr %82, align 8, !tbaa !119
  tail call void @DAG_scene_relations_update(ptr noundef %5844, ptr noundef %5845) #18
  %5846 = load ptr, ptr @G, align 8, !tbaa !326
  %5847 = load ptr, ptr %82, align 8, !tbaa !119
  tail call void @DAG_scene_flush_update(ptr noundef %5846, ptr noundef %5847, i32 noundef -1, i16 noundef signext 0) #18
  %5848 = load ptr, ptr %5804, align 8, !tbaa !63
  %5849 = icmp eq ptr %5848, null
  br i1 %5849, label %5872, label %5850

5850:                                             ; preds = %5842, %5869
  %5851 = phi ptr [ %5870, %5869 ], [ %5848, %5842 ]
  %5852 = getelementptr inbounds %struct.Base, ptr %5851, i64 0, i32 7
  %5853 = load ptr, ptr %5852, align 8, !tbaa !139
  %5854 = getelementptr inbounds %struct.Object, ptr %5853, i64 0, i32 103
  %5855 = load i8, ptr %5854, align 1, !tbaa !361
  %5856 = and i8 %5855, 1
  %5857 = icmp eq i8 %5856, 0
  br i1 %5857, label %5862, label %5858

5858:                                             ; preds = %5850
  %5859 = getelementptr inbounds %struct.Base, ptr %5851, i64 0, i32 4
  %5860 = load i32, ptr %5859, align 8, !tbaa !375
  %5861 = or i32 %5860, 4
  store i32 %5861, ptr %5859, align 8, !tbaa !375
  br label %5862

5862:                                             ; preds = %5858, %5850
  %5863 = and i8 %5855, 2
  %5864 = icmp eq i8 %5863, 0
  br i1 %5864, label %5869, label %5865

5865:                                             ; preds = %5862
  %5866 = getelementptr inbounds %struct.Base, ptr %5851, i64 0, i32 4
  %5867 = load i32, ptr %5866, align 8, !tbaa !375
  %5868 = or i32 %5867, 8
  store i32 %5868, ptr %5866, align 8, !tbaa !375
  br label %5869

5869:                                             ; preds = %5865, %5862
  %5870 = load ptr, ptr %5851, align 8, !tbaa !63
  %5871 = icmp eq ptr %5870, null
  br i1 %5871, label %5872, label %5850, !llvm.loop !639

5872:                                             ; preds = %5869, %5842
  %5873 = load i32, ptr %5691, align 8, !tbaa !34
  %5874 = add nsw i32 %5873, %5843
  store i32 %5874, ptr %5691, align 8, !tbaa !34
  br label %5875

5875:                                             ; preds = %5872, %5711
  %5876 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %5877 = load i32, ptr %5691, align 8, !tbaa !34
  %5878 = sext i32 %5877 to i64
  %5879 = mul nsw i64 %5878, 224
  %5880 = tail call ptr %5876(i64 noundef %5879, ptr noundef nonnull @.str.60) #18
  %5881 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %5880, ptr %5881, align 8, !tbaa !48
  %5882 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %5883 = load i32, ptr %5691, align 8, !tbaa !34
  %5884 = sext i32 %5883 to i64
  %5885 = mul nsw i64 %5884, 384
  %5886 = tail call ptr %5882(i64 noundef %5885, ptr noundef nonnull @.str.61) #18
  %5887 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 11
  store ptr %5886, ptr %5887, align 8, !tbaa !424
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %5888 = call i32 @CTX_data_selected_bases(ptr noundef %0, ptr noundef nonnull %3) #18
  %5889 = load ptr, ptr %3, align 8, !tbaa !63
  %5890 = icmp eq ptr %5889, null
  br i1 %5890, label %5926, label %5891

5891:                                             ; preds = %5875, %5920
  %5892 = phi ptr [ %5924, %5920 ], [ %5889, %5875 ]
  %5893 = phi ptr [ %5922, %5920 ], [ %5880, %5875 ]
  %5894 = phi ptr [ %5923, %5920 ], [ %5886, %5875 ]
  %5895 = getelementptr inbounds %struct.CollectionPointerLink, ptr %5892, i64 0, i32 2, i32 2
  %5896 = load ptr, ptr %5895, align 8, !tbaa !640
  %5897 = getelementptr inbounds %struct.Base, ptr %5896, i64 0, i32 7
  %5898 = load ptr, ptr %5897, align 8, !tbaa !139
  %5899 = getelementptr inbounds %struct.TransData, ptr %5893, i64 0, i32 16
  store i32 1, ptr %5899, align 8, !tbaa !49
  %5900 = getelementptr inbounds %struct.Object, ptr %5898, i64 0, i32 56
  %5901 = load i16, ptr %5900, align 2, !tbaa !644
  %5902 = getelementptr inbounds %struct.TransData, ptr %5893, i64 0, i32 17
  store i16 %5901, ptr %5902, align 4, !tbaa !612
  %5903 = getelementptr inbounds %struct.TransData, ptr %5893, i64 0, i32 13
  store ptr %5894, ptr %5903, align 8, !tbaa !372
  %5904 = getelementptr inbounds %struct.Object, ptr %5898, i64 0, i32 83
  %5905 = load i16, ptr %5904, align 8, !tbaa !645
  %5906 = sext i16 %5905 to i32
  %5907 = getelementptr inbounds %struct.TransDataExtension, ptr %5894, i64 0, i32 17
  store i32 %5906, ptr %5907, align 8, !tbaa !646
  %5908 = getelementptr inbounds %struct.Base, ptr %5896, i64 0, i32 4
  %5909 = load i32, ptr %5908, align 8, !tbaa !375
  %5910 = and i32 %5909, 256
  %5911 = icmp eq i32 %5910, 0
  br i1 %5911, label %5913, label %5912

5912:                                             ; preds = %5891
  store i32 8705, ptr %5899, align 8, !tbaa !49
  br label %5913

5913:                                             ; preds = %5912, %5891
  %5914 = getelementptr inbounds %struct.ID, ptr %5898, i64 0, i32 3
  %5915 = load ptr, ptr %5914, align 8, !tbaa !628
  %5916 = icmp eq ptr %5915, null
  br i1 %5916, label %5920, label %5917

5917:                                             ; preds = %5913
  %5918 = load i32, ptr %5899, align 8, !tbaa !49
  %5919 = or i32 %5918, 2048
  store i32 %5919, ptr %5899, align 8, !tbaa !49
  br label %5920

5920:                                             ; preds = %5917, %5913
  call fastcc void @ObjectToTransData(ptr noundef nonnull %1, ptr noundef %5893, ptr noundef %5898)
  %5921 = getelementptr inbounds %struct.TransData, ptr %5893, i64 0, i32 5
  store ptr null, ptr %5921, align 8, !tbaa !441
  %5922 = getelementptr inbounds %struct.TransData, ptr %5893, i64 1
  %5923 = getelementptr inbounds %struct.TransDataExtension, ptr %5894, i64 1
  %5924 = load ptr, ptr %5892, align 8, !tbaa !63
  %5925 = icmp eq ptr %5924, null
  br i1 %5925, label %5926, label %5891, !llvm.loop !647

5926:                                             ; preds = %5920, %5875
  %5927 = phi ptr [ %5886, %5875 ], [ %5923, %5920 ]
  %5928 = phi ptr [ %5880, %5875 ], [ %5922, %5920 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  br i1 %5713, label %5981, label %5929

5929:                                             ; preds = %5926
  %5930 = getelementptr inbounds %struct.Scene, ptr %5543, i64 0, i32 5
  %5931 = load ptr, ptr %5930, align 8, !tbaa !63
  %5932 = icmp eq ptr %5931, null
  br i1 %5932, label %5981, label %5933

5933:                                             ; preds = %5929
  %5934 = load ptr, ptr %5546, align 8, !tbaa !360
  %5935 = icmp eq ptr %5934, null
  %5936 = getelementptr inbounds %struct.View3D, ptr %5934, i64 0, i32 22
  %5937 = getelementptr inbounds %struct.Scene, ptr %5543, i64 0, i32 12
  %5938 = select i1 %5935, ptr %5937, ptr %5936
  br label %5939

5939:                                             ; preds = %5976, %5933
  %5940 = phi ptr [ %5931, %5933 ], [ %5979, %5976 ]
  %5941 = phi ptr [ %5928, %5933 ], [ %5978, %5976 ]
  %5942 = phi ptr [ %5927, %5933 ], [ %5977, %5976 ]
  %5943 = getelementptr inbounds %struct.Base, ptr %5940, i64 0, i32 7
  %5944 = load ptr, ptr %5943, align 8, !tbaa !139
  %5945 = getelementptr inbounds %struct.Object, ptr %5944, i64 0, i32 53
  %5946 = load i16, ptr %5945, align 4, !tbaa !630
  %5947 = and i16 %5946, 8449
  %5948 = icmp eq i16 %5947, 0
  br i1 %5948, label %5949, label %5976

5949:                                             ; preds = %5939
  %5950 = getelementptr inbounds %struct.Base, ptr %5940, i64 0, i32 2
  %5951 = load i32, ptr %5950, align 8, !tbaa !614
  %5952 = load i32, ptr %5938, align 8, !tbaa !57
  %5953 = and i32 %5952, %5951
  %5954 = icmp eq i32 %5953, 0
  br i1 %5954, label %5976, label %5955

5955:                                             ; preds = %5949
  %5956 = getelementptr inbounds %struct.ID, ptr %5944, i64 0, i32 3
  %5957 = load ptr, ptr %5956, align 8, !tbaa !628
  %5958 = icmp eq ptr %5957, null
  br i1 %5958, label %5959, label %5976

5959:                                             ; preds = %5955
  %5960 = getelementptr inbounds %struct.Object, ptr %5944, i64 0, i32 102
  %5961 = load i8, ptr %5960, align 8, !tbaa !616
  %5962 = and i8 %5961, 1
  %5963 = icmp eq i8 %5962, 0
  br i1 %5963, label %5964, label %5976

5964:                                             ; preds = %5959
  %5965 = getelementptr inbounds %struct.Object, ptr %5944, i64 0, i32 56
  %5966 = load i16, ptr %5965, align 2, !tbaa !644
  %5967 = getelementptr inbounds %struct.TransData, ptr %5941, i64 0, i32 17
  store i16 %5966, ptr %5967, align 4, !tbaa !612
  %5968 = getelementptr inbounds %struct.TransData, ptr %5941, i64 0, i32 13
  store ptr %5942, ptr %5968, align 8, !tbaa !372
  %5969 = getelementptr inbounds %struct.Object, ptr %5944, i64 0, i32 83
  %5970 = load i16, ptr %5969, align 8, !tbaa !645
  %5971 = sext i16 %5970 to i32
  %5972 = getelementptr inbounds %struct.TransDataExtension, ptr %5942, i64 0, i32 17
  store i32 %5971, ptr %5972, align 8, !tbaa !646
  call fastcc void @ObjectToTransData(ptr noundef nonnull %1, ptr noundef %5941, ptr noundef %5944)
  %5973 = getelementptr inbounds %struct.TransData, ptr %5941, i64 0, i32 5
  store ptr null, ptr %5973, align 8, !tbaa !441
  %5974 = getelementptr inbounds %struct.TransData, ptr %5941, i64 1
  %5975 = getelementptr inbounds %struct.TransDataExtension, ptr %5942, i64 1
  br label %5976

5976:                                             ; preds = %5964, %5959, %5955, %5949, %5939
  %5977 = phi ptr [ %5975, %5964 ], [ %5942, %5959 ], [ %5942, %5955 ], [ %5942, %5949 ], [ %5942, %5939 ]
  %5978 = phi ptr [ %5974, %5964 ], [ %5941, %5959 ], [ %5941, %5955 ], [ %5941, %5949 ], [ %5941, %5939 ]
  %5979 = load ptr, ptr %5940, align 8, !tbaa !63
  %5980 = icmp eq ptr %5979, null
  br i1 %5980, label %5981, label %5939, !llvm.loop !648

5981:                                             ; preds = %5976, %5706, %5693, %5926, %5929
  %5982 = load i32, ptr %5544, align 4, !tbaa !54
  %5983 = or i32 %5982, 1
  store i32 %5983, ptr %5544, align 4, !tbaa !54
  %5984 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  %5985 = load ptr, ptr %5984, align 8, !tbaa !48
  %5986 = icmp eq ptr %5985, null
  %5987 = and i32 %5982, 2048
  %5988 = icmp eq i32 %5987, 0
  %5989 = select i1 %5986, i1 true, i1 %5988
  br i1 %5989, label %6023, label %5990

5990:                                             ; preds = %5981
  call fastcc void @set_prop_dist(ptr noundef nonnull %1, i8 noundef zeroext 1)
  %5991 = load i32, ptr %5691, align 8, !tbaa !34
  %5992 = icmp sgt i32 %5991, 0
  br i1 %5992, label %5993, label %6023

5993:                                             ; preds = %5990
  %5994 = load ptr, ptr %5984, align 8, !tbaa !48
  %5995 = getelementptr inbounds %struct.TransData, ptr %5994, i64 0, i32 16
  %5996 = load i32, ptr %5995, align 8, !tbaa !49
  %5997 = and i32 %5996, 1
  %5998 = icmp eq i32 %5997, 0
  br i1 %5998, label %6012, label %6005

5999:                                             ; preds = %6005
  %6000 = getelementptr inbounds %struct.TransData, ptr %6006, i64 1
  %6001 = getelementptr inbounds %struct.TransData, ptr %6006, i64 1, i32 16
  %6002 = load i32, ptr %6001, align 8, !tbaa !49
  %6003 = and i32 %6002, 1
  %6004 = icmp eq i32 %6003, 0
  br i1 %6004, label %6010, label %6005, !llvm.loop !51

6005:                                             ; preds = %5993, %5999
  %6006 = phi ptr [ %6000, %5999 ], [ %5994, %5993 ]
  %6007 = phi i32 [ %6008, %5999 ], [ 0, %5993 ]
  %6008 = add nuw nsw i32 %6007, 1
  %6009 = icmp eq i32 %6008, %5991
  br i1 %6009, label %6023, label %5999, !llvm.loop !51

6010:                                             ; preds = %5999
  %6011 = icmp slt i32 %6008, %5991
  br label %6012

6012:                                             ; preds = %6010, %5993
  %6013 = phi i1 [ true, %5993 ], [ %6011, %6010 ]
  %6014 = phi i32 [ 0, %5993 ], [ %6008, %6010 ]
  %6015 = phi ptr [ %5994, %5993 ], [ %6000, %6010 ]
  br i1 %6013, label %6016, label %6023

6016:                                             ; preds = %6012
  %6017 = load i32, ptr %5544, align 4, !tbaa !54
  %6018 = and i32 %6017, 4096
  %6019 = icmp eq i32 %6018, 0
  %6020 = sub nsw i32 %5991, %6014
  %6021 = sext i32 %6020 to i64
  %6022 = select i1 %6019, ptr @trans_data_compare_rdist, ptr @trans_data_compare_dist
  call void @qsort(ptr noundef %6015, i64 noundef %6021, i64 noundef 224, ptr noundef nonnull %6022) #18
  br label %6023

6023:                                             ; preds = %6005, %6016, %6012, %5990, %5981
  %6024 = load i8, ptr %382, align 8, !tbaa !279
  %6025 = icmp eq i8 %6024, 1
  br i1 %6025, label %6026, label %6050

6026:                                             ; preds = %6023
  %6027 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %6028 = load ptr, ptr %6027, align 8, !tbaa !408
  %6029 = getelementptr inbounds %struct.ARegion, ptr %6028, i64 0, i32 8
  %6030 = load i16, ptr %6029, align 2, !tbaa !515
  %6031 = icmp eq i16 %6030, 0
  br i1 %6031, label %6032, label %6050

6032:                                             ; preds = %6026
  %6033 = getelementptr inbounds %struct.ARegion, ptr %6028, i64 0, i32 30
  %6034 = load ptr, ptr %6033, align 8, !tbaa !649
  %6035 = getelementptr inbounds %struct.RegionView3D, ptr %6034, i64 0, i32 25
  %6036 = load i8, ptr %6035, align 1, !tbaa !650
  %6037 = icmp eq i8 %6036, 2
  br i1 %6037, label %6038, label %6050

6038:                                             ; preds = %6032
  %6039 = load ptr, ptr %5546, align 8, !tbaa !360
  %6040 = getelementptr inbounds %struct.View3D, ptr %6039, i64 0, i32 15
  %6041 = load ptr, ptr %6040, align 8, !tbaa !652
  %6042 = icmp eq ptr %6041, null
  br i1 %6042, label %6050, label %6043

6043:                                             ; preds = %6038
  %6044 = getelementptr inbounds %struct.Object, ptr %6041, i64 0, i32 103
  %6045 = load i8, ptr %6044, align 1, !tbaa !361
  %6046 = icmp eq i8 %6045, 0
  br i1 %6046, label %6050, label %6047

6047:                                             ; preds = %6043
  %6048 = load i32, ptr %5544, align 4, !tbaa !54
  %6049 = or i32 %6048, 16
  store i32 %6049, ptr %5544, align 4, !tbaa !54
  br label %6050

6050:                                             ; preds = %362, %2966, %2246, %445, %777, %5509, %5527, %5526, %5516, %5494, %2984, %2983, %2973, %2951, %2264, %2263, %2253, %2231, %795, %794, %784, %762, %463, %462, %452, %430, %380, %379, %369, %347, %1608, %1604, %1546, %6032, %6038, %6047, %6043, %5536, %5536, %5151, %5154, %5163, %5172, %5179, %5159, %467, %467, %311, %307, %1244, %2196, %2192, %5132, %5129, %5538, %5532, %6026, %6023, %5453, %5144, %2907, %2911, %2915, %2908, %2073, %1534, %394, %390, %470, %726, %722, %469, %194
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @set_prop_dist(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #6 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !54
  %8 = and i32 %7, 33554432
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %50, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %12 = load i8, ptr %11, align 8, !tbaa !279
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %14, label %50

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %16 = load ptr, ptr %15, align 8, !tbaa !408
  %17 = icmp eq ptr %16, null
  br i1 %17, label %50, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ARegion, ptr %16, i64 0, i32 8
  %20 = load i16, ptr %19, align 2, !tbaa !515
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ARegion, ptr %16, i64 0, i32 30
  %24 = load ptr, ptr %23, align 8, !tbaa !649
  %25 = getelementptr inbounds %struct.RegionView3D, ptr %24, i64 0, i32 2, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !112
  %27 = getelementptr inbounds %struct.RegionView3D, ptr %24, i64 0, i32 2, i64 2, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !112
  %29 = fmul float %28, %28
  %30 = tail call float @llvm.fmuladd.f32(float %26, float %26, float %29)
  %31 = getelementptr inbounds %struct.RegionView3D, ptr %24, i64 0, i32 2, i64 2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !112
  %33 = tail call float @llvm.fmuladd.f32(float %32, float %32, float %30)
  %34 = fcmp ogt float %33, 0x38AA95A5C0000000
  br i1 %34, label %35, label %45

35:                                               ; preds = %22
  %36 = tail call float @sqrtf(float noundef %33) #18
  %37 = fdiv float 1.000000e+00, %36
  %38 = load float, ptr %25, align 4, !tbaa !112
  %39 = fmul float %38, %37
  store float %39, ptr %3, align 4, !tbaa !112
  %40 = load float, ptr %27, align 4, !tbaa !112
  %41 = fmul float %37, %40
  %42 = getelementptr inbounds float, ptr %3, i64 1
  store float %41, ptr %42, align 4, !tbaa !112
  %43 = load float, ptr %31, align 4, !tbaa !112
  %44 = fmul float %37, %43
  br label %47

45:                                               ; preds = %22
  store float 0.000000e+00, ptr %3, align 4, !tbaa !112
  %46 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %46, align 4, !tbaa !112
  br label %47

47:                                               ; preds = %35, %45
  %48 = phi float [ 0.000000e+00, %45 ], [ %44, %35 ]
  %49 = getelementptr inbounds float, ptr %3, i64 2
  store float %48, ptr %49, align 4, !tbaa !112
  br label %50

50:                                               ; preds = %47, %10, %14, %18, %2
  %51 = phi ptr [ null, %18 ], [ null, %14 ], [ null, %10 ], [ null, %2 ], [ %3, %47 ]
  %52 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %53 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %54 = load i32, ptr %53, align 8, !tbaa !34
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %139

56:                                               ; preds = %50
  %57 = load ptr, ptr %52, align 8, !tbaa !48
  %58 = getelementptr inbounds float, ptr %4, i64 1
  %59 = getelementptr inbounds float, ptr %4, i64 2
  %60 = icmp eq ptr %51, null
  %61 = getelementptr inbounds float, ptr %5, i64 1
  %62 = getelementptr inbounds float, ptr %5, i64 2
  %63 = icmp eq i8 %1, 0
  br label %64

64:                                               ; preds = %56, %134
  %65 = phi ptr [ %57, %56 ], [ %136, %134 ]
  %66 = phi i32 [ 0, %56 ], [ %135, %134 ]
  %67 = getelementptr inbounds %struct.TransData, ptr %65, i64 0, i32 1
  store float 0.000000e+00, ptr %67, align 4, !tbaa !56
  %68 = getelementptr inbounds %struct.TransData, ptr %65, i64 0, i32 16
  %69 = load i32, ptr %68, align 8, !tbaa !49
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %134

72:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  store float -1.000000e+00, ptr %67, align 4, !tbaa !56
  %73 = load i32, ptr %53, align 8, !tbaa !34
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %130

75:                                               ; preds = %72
  %76 = load ptr, ptr %52, align 8, !tbaa !48
  %77 = getelementptr inbounds %struct.TransData, ptr %65, i64 0, i32 7
  %78 = getelementptr inbounds %struct.TransData, ptr %65, i64 0, i32 7, i64 1
  %79 = getelementptr inbounds %struct.TransData, ptr %65, i64 0, i32 7, i64 2
  %80 = getelementptr inbounds %struct.TransData, ptr %65, i64 0, i32 8
  br label %81

81:                                               ; preds = %75, %125
  %82 = phi i32 [ 0, %75 ], [ %126, %125 ]
  %83 = phi ptr [ %76, %75 ], [ %127, %125 ]
  %84 = getelementptr inbounds %struct.TransData, ptr %83, i64 0, i32 16
  %85 = load i32, ptr %84, align 8, !tbaa !49
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %130, label %88

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.TransData, ptr %83, i64 0, i32 7
  %90 = load float, ptr %77, align 4, !tbaa !112
  %91 = load float, ptr %89, align 4, !tbaa !112
  %92 = fsub float %90, %91
  store float %92, ptr %4, align 4, !tbaa !112
  %93 = load float, ptr %78, align 4, !tbaa !112
  %94 = getelementptr inbounds %struct.TransData, ptr %83, i64 0, i32 7, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !112
  %96 = fsub float %93, %95
  store float %96, ptr %58, align 4, !tbaa !112
  %97 = load float, ptr %79, align 4, !tbaa !112
  %98 = getelementptr inbounds %struct.TransData, ptr %83, i64 0, i32 7, i64 2
  %99 = load float, ptr %98, align 4, !tbaa !112
  %100 = fsub float %97, %99
  store float %100, ptr %59, align 4, !tbaa !112
  call void @mul_m3_v3(ptr noundef nonnull %80, ptr noundef nonnull %4) #18
  br i1 %60, label %111, label %101

101:                                              ; preds = %88
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %51) #18
  %102 = load float, ptr %5, align 4, !tbaa !112
  %103 = load float, ptr %4, align 4, !tbaa !112
  %104 = fsub float %103, %102
  store float %104, ptr %4, align 4, !tbaa !112
  %105 = load float, ptr %61, align 4, !tbaa !112
  %106 = load float, ptr %58, align 4, !tbaa !112
  %107 = fsub float %106, %105
  store float %107, ptr %58, align 4, !tbaa !112
  %108 = load float, ptr %62, align 4, !tbaa !112
  %109 = load float, ptr %59, align 4, !tbaa !112
  %110 = fsub float %109, %108
  store float %110, ptr %59, align 4, !tbaa !112
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  br label %111

111:                                              ; preds = %101, %88
  %112 = load float, ptr %4, align 4, !tbaa !112
  %113 = load float, ptr %58, align 4, !tbaa !112
  %114 = fmul float %113, %113
  %115 = call float @llvm.fmuladd.f32(float %112, float %112, float %114)
  %116 = load float, ptr %59, align 4, !tbaa !112
  %117 = call float @llvm.fmuladd.f32(float %116, float %116, float %115)
  %118 = load float, ptr %67, align 4, !tbaa !56
  %119 = fcmp oeq float %118, -1.000000e+00
  %120 = fmul float %118, %118
  %121 = fcmp olt float %117, %120
  %122 = select i1 %119, i1 true, i1 %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %111
  %124 = call float @sqrtf(float noundef %117) #18
  store float %124, ptr %67, align 4, !tbaa !56
  br label %125

125:                                              ; preds = %111, %123
  %126 = add nuw nsw i32 %82, 1
  %127 = getelementptr inbounds %struct.TransData, ptr %83, i64 1
  %128 = load i32, ptr %53, align 8, !tbaa !34
  %129 = icmp slt i32 %126, %128
  br i1 %129, label %81, label %130, !llvm.loop !653

130:                                              ; preds = %125, %81, %72
  br i1 %63, label %133, label %131

131:                                              ; preds = %130
  %132 = load float, ptr %67, align 4, !tbaa !56
  store float %132, ptr %65, align 8, !tbaa !55
  br label %133

133:                                              ; preds = %131, %130
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  br label %134

134:                                              ; preds = %64, %133
  %135 = add nuw nsw i32 %66, 1
  %136 = getelementptr inbounds %struct.TransData, ptr %65, i64 1
  %137 = load i32, ptr %53, align 8, !tbaa !34
  %138 = icmp slt i32 %135, %137
  br i1 %138, label %64, label %139, !llvm.loop !654

139:                                              ; preds = %134, %50
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @createTransMaskingData(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #6 {
  %3 = alloca [2 x float], align 4
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #18
  %5 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #18
  %6 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !54
  %8 = and i32 %7, 2048
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %9 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 0, ptr %9, align 8, !tbaa !34
  %10 = icmp eq ptr %5, null
  br i1 %10, label %225, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  %13 = load i8, ptr %12, align 8, !tbaa !279
  %14 = icmp eq i8 %13, 20
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %17 = load ptr, ptr %16, align 8, !tbaa !175
  %18 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !197
  %20 = tail call ptr @ED_space_clip_get_clip(ptr noundef %19) #18
  %21 = icmp eq ptr %20, null
  br i1 %21, label %225, label %22

22:                                               ; preds = %15, %11
  %23 = getelementptr inbounds %struct.Mask, ptr %5, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  %25 = icmp eq ptr %24, null
  br i1 %25, label %102, label %26

26:                                               ; preds = %22
  %27 = icmp eq i32 %8, 0
  br label %28

28:                                               ; preds = %26, %97
  %29 = phi ptr [ %24, %26 ], [ %100, %97 ]
  %30 = phi i32 [ 0, %26 ], [ %99, %97 ]
  %31 = phi i32 [ 0, %26 ], [ %98, %97 ]
  %32 = getelementptr inbounds %struct.MaskLayer, ptr %29, i64 0, i32 13
  %33 = load i8, ptr %32, align 1, !tbaa !655
  %34 = and i8 %33, 3
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %97

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.MaskLayer, ptr %29, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !63
  %39 = icmp eq ptr %38, null
  br i1 %39, label %97, label %45

40:                                               ; preds = %89, %45
  %41 = phi i32 [ %48, %45 ], [ %90, %89 ]
  %42 = phi i32 [ %47, %45 ], [ %92, %89 ]
  %43 = load ptr, ptr %46, align 8, !tbaa !63
  %44 = icmp eq ptr %43, null
  br i1 %44, label %97, label %45, !llvm.loop !656

45:                                               ; preds = %36, %40
  %46 = phi ptr [ %43, %40 ], [ %38, %36 ]
  %47 = phi i32 [ %42, %40 ], [ %30, %36 ]
  %48 = phi i32 [ %41, %40 ], [ %31, %36 ]
  %49 = getelementptr inbounds %struct.MaskSpline, ptr %46, i64 0, i32 5
  %50 = load i32, ptr %49, align 4, !tbaa !657
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %40

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.MaskSpline, ptr %46, i64 0, i32 6
  br label %54

54:                                               ; preds = %52, %89
  %55 = phi i64 [ 0, %52 ], [ %93, %89 ]
  %56 = phi i32 [ %47, %52 ], [ %92, %89 ]
  %57 = phi i32 [ %48, %52 ], [ %90, %89 ]
  %58 = load ptr, ptr %53, align 8, !tbaa !659
  %59 = getelementptr inbounds %struct.MaskSplinePoint, ptr %58, i64 %55
  %60 = getelementptr inbounds %struct.BezTriple, ptr %59, i64 0, i32 7
  %61 = load i8, ptr %60, align 1, !tbaa !660
  %62 = getelementptr inbounds %struct.BezTriple, ptr %59, i64 0, i32 8
  %63 = load i8, ptr %62, align 4, !tbaa !661
  %64 = getelementptr inbounds %struct.BezTriple, ptr %59, i64 0, i32 9
  %65 = load i8, ptr %64, align 1, !tbaa !662
  %66 = or i8 %61, %65
  %67 = or i8 %66, %63
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %89, label %70

70:                                               ; preds = %54
  %71 = and i8 %63, 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = add nsw i32 %57, 3
  br label %89

75:                                               ; preds = %70
  %76 = tail call i32 @BKE_mask_point_handles_mode_get(ptr noundef %59) #18
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = add nsw i32 %57, 1
  br label %89

80:                                               ; preds = %75
  %81 = load i8, ptr %60, align 1, !tbaa !380
  %82 = and i8 %81, 1
  %83 = zext nneg i8 %82 to i32
  %84 = add i32 %57, %83
  %85 = load i8, ptr %64, align 1, !tbaa !381
  %86 = and i8 %85, 1
  %87 = zext nneg i8 %86 to i32
  %88 = add i32 %84, %87
  br label %89

89:                                               ; preds = %73, %80, %78, %54
  %90 = phi i32 [ %74, %73 ], [ %79, %78 ], [ %88, %80 ], [ %57, %54 ]
  %91 = add nsw i32 %56, 3
  %92 = select i1 %27, i32 %56, i32 %91
  %93 = add nuw nsw i64 %55, 1
  %94 = load i32, ptr %49, align 4, !tbaa !657
  %95 = sext i32 %94 to i64
  %96 = icmp slt i64 %93, %95
  br i1 %96, label %54, label %40, !llvm.loop !663

97:                                               ; preds = %40, %36, %28
  %98 = phi i32 [ %31, %28 ], [ %31, %36 ], [ %41, %40 ]
  %99 = phi i32 [ %30, %28 ], [ %30, %36 ], [ %42, %40 ]
  %100 = load ptr, ptr %29, align 8, !tbaa !63
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %28, !llvm.loop !664

102:                                              ; preds = %97, %22
  %103 = phi i32 [ 0, %22 ], [ %98, %97 ]
  %104 = phi i32 [ 0, %22 ], [ %99, %97 ]
  %105 = icmp eq i32 %103, 0
  br i1 %105, label %225, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %108 = load ptr, ptr %107, align 8, !tbaa !175
  %109 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %110 = load ptr, ptr %109, align 8, !tbaa !408
  %111 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  call void @ED_mask_get_aspect(ptr noundef %108, ptr noundef %110, ptr noundef nonnull %3, ptr noundef nonnull %111) #18
  %112 = icmp eq i32 %8, 0
  %113 = select i1 %112, i32 %103, i32 %104
  store i32 %113, ptr %9, align 8, !tbaa !34
  %114 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %115 = sext i32 %113 to i64
  %116 = mul nsw i64 %115, 224
  %117 = call ptr %114(i64 noundef %116, ptr noundef nonnull @.str.15) #18
  %118 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %117, ptr %118, align 8, !tbaa !48
  %119 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %120 = load i32, ptr %9, align 8, !tbaa !34
  %121 = sext i32 %120 to i64
  %122 = mul nsw i64 %121, 56
  %123 = call ptr %119(i64 noundef %122, ptr noundef nonnull @.str.16) #18
  %124 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 12
  store ptr %123, ptr %124, align 8, !tbaa !168
  %125 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %126 = load i32, ptr %9, align 8, !tbaa !34
  %127 = sext i32 %126 to i64
  %128 = mul nsw i64 %127, 144
  %129 = call ptr %125(i64 noundef %128, ptr noundef nonnull @.str.17) #18
  %130 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  store ptr %129, ptr %130, align 8, !tbaa !96
  %131 = load i32, ptr %6, align 4, !tbaa !54
  %132 = or i32 %131, 131072
  store i32 %132, ptr %6, align 4, !tbaa !54
  %133 = load ptr, ptr %23, align 8, !tbaa !63
  %134 = icmp eq ptr %133, null
  br i1 %134, label %225, label %135

135:                                              ; preds = %106, %219
  %136 = phi ptr [ %223, %219 ], [ %133, %106 ]
  %137 = phi ptr [ %222, %219 ], [ %117, %106 ]
  %138 = phi ptr [ %221, %219 ], [ %123, %106 ]
  %139 = phi ptr [ %220, %219 ], [ %129, %106 ]
  %140 = getelementptr inbounds %struct.MaskLayer, ptr %136, i64 0, i32 13
  %141 = load i8, ptr %140, align 1, !tbaa !655
  %142 = and i8 %141, 3
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %219

144:                                              ; preds = %135
  %145 = getelementptr inbounds %struct.MaskLayer, ptr %136, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !63
  %147 = icmp eq ptr %146, null
  br i1 %147, label %219, label %154

148:                                              ; preds = %211, %154
  %149 = phi ptr [ %158, %154 ], [ %212, %211 ]
  %150 = phi ptr [ %157, %154 ], [ %213, %211 ]
  %151 = phi ptr [ %156, %154 ], [ %214, %211 ]
  %152 = load ptr, ptr %155, align 8, !tbaa !63
  %153 = icmp eq ptr %152, null
  br i1 %153, label %219, label %154, !llvm.loop !665

154:                                              ; preds = %144, %148
  %155 = phi ptr [ %152, %148 ], [ %146, %144 ]
  %156 = phi ptr [ %151, %148 ], [ %137, %144 ]
  %157 = phi ptr [ %150, %148 ], [ %138, %144 ]
  %158 = phi ptr [ %149, %148 ], [ %139, %144 ]
  %159 = getelementptr inbounds %struct.MaskSpline, ptr %155, i64 0, i32 5
  %160 = load i32, ptr %159, align 4, !tbaa !657
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %148

162:                                              ; preds = %154
  %163 = getelementptr inbounds %struct.MaskSpline, ptr %155, i64 0, i32 6
  br label %164

164:                                              ; preds = %162, %211
  %165 = phi i64 [ 0, %162 ], [ %215, %211 ]
  %166 = phi ptr [ %156, %162 ], [ %214, %211 ]
  %167 = phi ptr [ %157, %162 ], [ %213, %211 ]
  %168 = phi ptr [ %158, %162 ], [ %212, %211 ]
  %169 = load ptr, ptr %163, align 8, !tbaa !659
  %170 = getelementptr inbounds %struct.MaskSplinePoint, ptr %169, i64 %165
  br i1 %112, label %171, label %186

171:                                              ; preds = %164
  %172 = getelementptr inbounds %struct.BezTriple, ptr %170, i64 0, i32 7
  %173 = load i8, ptr %172, align 1, !tbaa !660
  %174 = getelementptr inbounds %struct.BezTriple, ptr %170, i64 0, i32 8
  %175 = load i8, ptr %174, align 4, !tbaa !661
  %176 = or i8 %175, %173
  %177 = getelementptr inbounds %struct.BezTriple, ptr %170, i64 0, i32 9
  %178 = load i8, ptr %177, align 1, !tbaa !662
  %179 = or i8 %176, %178
  %180 = and i8 %179, 1
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %211, label %182

182:                                              ; preds = %171
  call fastcc void @MaskPointToTransData(ptr noundef %4, ptr noundef %170, ptr noundef %166, ptr noundef %167, ptr noundef %168, i32 noundef %8, ptr noundef nonnull %3)
  %183 = load i8, ptr %174, align 4, !tbaa !661
  %184 = and i8 %183, 1
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %191, label %187

186:                                              ; preds = %164
  call fastcc void @MaskPointToTransData(ptr noundef %4, ptr noundef %170, ptr noundef %166, ptr noundef %167, ptr noundef %168, i32 noundef %8, ptr noundef nonnull %3)
  br label %187

187:                                              ; preds = %186, %182
  %188 = getelementptr inbounds %struct.TransData, ptr %166, i64 3
  %189 = getelementptr inbounds %struct.TransData2D, ptr %167, i64 3
  %190 = getelementptr inbounds %struct.TransDataMasking, ptr %168, i64 3
  br label %211

191:                                              ; preds = %182
  %192 = call i32 @BKE_mask_point_handles_mode_get(ptr noundef %170) #18
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.TransData, ptr %166, i64 1
  %196 = getelementptr inbounds %struct.TransData2D, ptr %167, i64 1
  %197 = getelementptr inbounds %struct.TransDataMasking, ptr %168, i64 1
  br label %211

198:                                              ; preds = %191
  %199 = load i8, ptr %172, align 1, !tbaa !380
  %200 = and i8 %199, 1
  %201 = zext nneg i8 %200 to i64
  %202 = getelementptr inbounds %struct.TransDataMasking, ptr %168, i64 %201
  %203 = getelementptr inbounds %struct.TransData2D, ptr %167, i64 %201
  %204 = getelementptr inbounds %struct.TransData, ptr %166, i64 %201
  %205 = load i8, ptr %177, align 1, !tbaa !381
  %206 = and i8 %205, 1
  %207 = zext nneg i8 %206 to i64
  %208 = getelementptr inbounds %struct.TransDataMasking, ptr %202, i64 %207
  %209 = getelementptr inbounds %struct.TransData2D, ptr %203, i64 %207
  %210 = getelementptr inbounds %struct.TransData, ptr %204, i64 %207
  br label %211

211:                                              ; preds = %187, %198, %194, %171
  %212 = phi ptr [ %190, %187 ], [ %197, %194 ], [ %208, %198 ], [ %168, %171 ]
  %213 = phi ptr [ %189, %187 ], [ %196, %194 ], [ %209, %198 ], [ %167, %171 ]
  %214 = phi ptr [ %188, %187 ], [ %195, %194 ], [ %210, %198 ], [ %166, %171 ]
  %215 = add nuw nsw i64 %165, 1
  %216 = load i32, ptr %159, align 4, !tbaa !657
  %217 = sext i32 %216 to i64
  %218 = icmp slt i64 %215, %217
  br i1 %218, label %164, label %148, !llvm.loop !666

219:                                              ; preds = %148, %144, %135
  %220 = phi ptr [ %139, %135 ], [ %139, %144 ], [ %149, %148 ]
  %221 = phi ptr [ %138, %135 ], [ %138, %144 ], [ %150, %148 ]
  %222 = phi ptr [ %137, %135 ], [ %137, %144 ], [ %151, %148 ]
  %223 = load ptr, ptr %136, align 8, !tbaa !63
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %135, !llvm.loop !667

225:                                              ; preds = %219, %106, %102, %2, %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @createTransPaintCurveVerts(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #6 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #18
  %4 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 0, ptr %4, align 8, !tbaa !34
  %5 = icmp eq ptr %3, null
  br i1 %5, label %247, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !668
  %8 = icmp eq ptr %7, null
  br i1 %8, label %247, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Brush, ptr %7, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !669
  %12 = icmp eq ptr %11, null
  br i1 %12, label %247, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.PaintCurve, ptr %11, i64 0, i32 1
  %15 = getelementptr inbounds %struct.PaintCurve, ptr %11, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !673
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 8, !tbaa !675
  br label %20

20:                                               ; preds = %18, %46
  %21 = phi i32 [ %47, %46 ], [ 0, %18 ]
  %22 = phi i32 [ %48, %46 ], [ 0, %18 ]
  %23 = phi ptr [ %49, %46 ], [ %19, %18 ]
  %24 = getelementptr inbounds %struct.BezTriple, ptr %23, i64 0, i32 7
  %25 = load i8, ptr %24, align 1, !tbaa !676
  %26 = getelementptr inbounds %struct.BezTriple, ptr %23, i64 0, i32 8
  %27 = load i8, ptr %26, align 4, !tbaa !678
  %28 = getelementptr inbounds %struct.BezTriple, ptr %23, i64 0, i32 9
  %29 = load i8, ptr %28, align 1, !tbaa !679
  %30 = or i8 %27, %25
  %31 = or i8 %30, %29
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %20
  %35 = and i8 %27, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = add nsw i32 %21, 3
  br label %46

39:                                               ; preds = %34
  %40 = and i8 %25, 1
  %41 = zext nneg i8 %40 to i32
  %42 = add i32 %21, %41
  %43 = and i8 %29, 1
  %44 = zext nneg i8 %43 to i32
  %45 = add i32 %42, %44
  br label %46

46:                                               ; preds = %39, %20, %37
  %47 = phi i32 [ %38, %37 ], [ %21, %20 ], [ %45, %39 ]
  %48 = add nuw nsw i32 %22, 1
  %49 = getelementptr inbounds %struct.PaintCurvePoint, ptr %23, i64 1
  %50 = icmp eq i32 %48, %16
  br i1 %50, label %51, label %20, !llvm.loop !680

51:                                               ; preds = %46, %13
  %52 = phi i32 [ 0, %13 ], [ %47, %46 ]
  %53 = getelementptr inbounds %struct.PaintCurve, ptr %11, i64 0, i32 2
  %54 = icmp eq i32 %52, 0
  br i1 %54, label %247, label %55

55:                                               ; preds = %51
  store i32 %52, ptr %4, align 8, !tbaa !34
  %56 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %57 = sext i32 %52 to i64
  %58 = mul nsw i64 %57, 56
  %59 = tail call ptr %56(i64 noundef %58, ptr noundef nonnull @.str.18) #18
  %60 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 12
  store ptr %59, ptr %60, align 8, !tbaa !168
  %61 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %62 = load i32, ptr %4, align 8, !tbaa !34
  %63 = sext i32 %62 to i64
  %64 = mul nsw i64 %63, 224
  %65 = tail call ptr %61(i64 noundef %64, ptr noundef nonnull @.str.19) #18
  %66 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %65, ptr %66, align 8, !tbaa !48
  %67 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %68 = load i32, ptr %4, align 8, !tbaa !34
  %69 = sext i32 %68 to i64
  %70 = shl nsw i64 %69, 4
  %71 = tail call ptr %67(i64 noundef %70, ptr noundef nonnull @.str.20) #18
  %72 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  store ptr %71, ptr %72, align 8, !tbaa !96
  %73 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !54
  %75 = or i32 %74, 131072
  store i32 %75, ptr %73, align 4, !tbaa !54
  %76 = load i32, ptr %53, align 8, !tbaa !673
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %247

78:                                               ; preds = %55
  %79 = load ptr, ptr %14, align 8, !tbaa !675
  br label %80

80:                                               ; preds = %78, %239
  %81 = phi i32 [ %243, %239 ], [ 0, %78 ]
  %82 = phi ptr [ %242, %239 ], [ %71, %78 ]
  %83 = phi ptr [ %241, %239 ], [ %59, %78 ]
  %84 = phi ptr [ %240, %239 ], [ %65, %78 ]
  %85 = phi ptr [ %244, %239 ], [ %79, %78 ]
  %86 = getelementptr inbounds %struct.BezTriple, ptr %85, i64 0, i32 7
  %87 = load i8, ptr %86, align 1, !tbaa !676
  %88 = getelementptr inbounds %struct.BezTriple, ptr %85, i64 0, i32 8
  %89 = load i8, ptr %88, align 4, !tbaa !678
  %90 = or i8 %89, %87
  %91 = getelementptr inbounds %struct.BezTriple, ptr %85, i64 0, i32 9
  %92 = load i8, ptr %91, align 1, !tbaa !381
  %93 = or i8 %90, %92
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %239, label %96

96:                                               ; preds = %80
  %97 = icmp eq i8 %89, 1
  br i1 %97, label %98, label %141

98:                                               ; preds = %96
  %99 = getelementptr inbounds [3 x [3 x float]], ptr %85, i64 0, i64 1
  %100 = getelementptr inbounds [3 x [3 x float]], ptr %85, i64 0, i64 1, i64 1
  %101 = getelementptr inbounds [3 x [3 x float]], ptr %85, i64 0, i64 1, i64 2
  br label %102

102:                                              ; preds = %98, %102
  %103 = phi i64 [ 0, %98 ], [ %139, %102 ]
  %104 = phi ptr [ %84, %98 ], [ %136, %102 ]
  %105 = phi ptr [ %82, %98 ], [ %138, %102 ]
  %106 = phi ptr [ %83, %98 ], [ %137, %102 ]
  %107 = getelementptr inbounds [3 x [3 x float]], ptr %85, i64 0, i64 %103
  %108 = load float, ptr %107, align 4, !tbaa !112
  store float %108, ptr %106, align 4, !tbaa !112
  %109 = getelementptr inbounds float, ptr %107, i64 1
  %110 = load float, ptr %109, align 4, !tbaa !112
  %111 = getelementptr inbounds float, ptr %106, i64 1
  store float %110, ptr %111, align 4, !tbaa !112
  %112 = getelementptr inbounds [3 x float], ptr %106, i64 0, i64 2
  store float 0.000000e+00, ptr %112, align 8, !tbaa !112
  %113 = getelementptr inbounds %struct.TransData2D, ptr %106, i64 0, i32 1
  store ptr %107, ptr %113, align 8, !tbaa !205
  %114 = getelementptr inbounds %struct.TransData, ptr %104, i64 0, i32 16
  store i32 0, ptr %114, align 8, !tbaa !49
  %115 = getelementptr inbounds %struct.TransData, ptr %104, i64 0, i32 3
  store ptr %106, ptr %115, align 8, !tbaa !209
  %116 = getelementptr inbounds %struct.TransData, ptr %104, i64 0, i32 7
  %117 = load float, ptr %99, align 4, !tbaa !112
  store float %117, ptr %116, align 4, !tbaa !112
  %118 = load float, ptr %100, align 4, !tbaa !112
  %119 = getelementptr inbounds %struct.TransData, ptr %104, i64 0, i32 7, i64 1
  store float %118, ptr %119, align 4, !tbaa !112
  %120 = load float, ptr %101, align 4, !tbaa !112
  %121 = getelementptr inbounds %struct.TransData, ptr %104, i64 0, i32 7, i64 2
  store float %120, ptr %121, align 4, !tbaa !112
  %122 = getelementptr inbounds %struct.TransData, ptr %104, i64 0, i32 4
  %123 = load float, ptr %106, align 4, !tbaa !112
  store float %123, ptr %122, align 4, !tbaa !112
  %124 = load float, ptr %111, align 4, !tbaa !112
  %125 = getelementptr inbounds %struct.TransData, ptr %104, i64 0, i32 4, i64 1
  store float %124, ptr %125, align 4, !tbaa !112
  %126 = load float, ptr %112, align 4, !tbaa !112
  %127 = getelementptr inbounds %struct.TransData, ptr %104, i64 0, i32 4, i64 2
  store float %126, ptr %127, align 4, !tbaa !112
  %128 = getelementptr inbounds %struct.TransData, ptr %104, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %128, i8 0, i64 36, i1 false)
  %129 = getelementptr inbounds %struct.TransData, ptr %104, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %129, align 8, !tbaa !112
  %130 = getelementptr inbounds %struct.TransData, ptr %104, i64 0, i32 13
  store ptr null, ptr %130, align 8, !tbaa !372
  %131 = getelementptr inbounds %struct.TransData, ptr %104, i64 0, i32 5
  store ptr null, ptr %131, align 8, !tbaa !441
  store i32 1, ptr %114, align 8, !tbaa !49
  store float 0.000000e+00, ptr %104, align 8, !tbaa !55
  %132 = getelementptr inbounds %struct.TransData, ptr %104, i64 0, i32 8
  tail call void @unit_m3(ptr noundef nonnull %132) #18
  %133 = getelementptr inbounds %struct.TransData, ptr %104, i64 0, i32 9
  tail call void @unit_m3(ptr noundef nonnull %133) #18
  %134 = trunc i64 %103 to i8
  %135 = getelementptr inbounds %struct.TransDataPaintCurve, ptr %105, i64 0, i32 1
  store i8 %134, ptr %135, align 8, !tbaa !421
  store ptr %85, ptr %105, align 8, !tbaa !419
  %136 = getelementptr inbounds %struct.TransData, ptr %104, i64 1
  %137 = getelementptr inbounds %struct.TransData2D, ptr %106, i64 1
  %138 = getelementptr inbounds %struct.TransDataPaintCurve, ptr %105, i64 1
  %139 = add nuw nsw i64 %103, 1
  %140 = icmp eq i64 %139, 3
  br i1 %140, label %217, label %102, !llvm.loop !681

141:                                              ; preds = %96
  %142 = and i8 %92, 1
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %179, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds [3 x [3 x float]], ptr %85, i64 0, i64 2
  %146 = load float, ptr %145, align 4, !tbaa !112
  store float %146, ptr %83, align 4, !tbaa !112
  %147 = getelementptr inbounds [3 x [3 x float]], ptr %85, i64 0, i64 2, i64 1
  %148 = load float, ptr %147, align 4, !tbaa !112
  %149 = getelementptr inbounds float, ptr %83, i64 1
  store float %148, ptr %149, align 4, !tbaa !112
  %150 = getelementptr inbounds [3 x float], ptr %83, i64 0, i64 2
  store float 0.000000e+00, ptr %150, align 8, !tbaa !112
  %151 = getelementptr inbounds %struct.TransData2D, ptr %83, i64 0, i32 1
  store ptr %145, ptr %151, align 8, !tbaa !205
  %152 = getelementptr inbounds %struct.TransData, ptr %84, i64 0, i32 16
  store i32 0, ptr %152, align 8, !tbaa !49
  %153 = getelementptr inbounds %struct.TransData, ptr %84, i64 0, i32 3
  store ptr %83, ptr %153, align 8, !tbaa !209
  %154 = getelementptr inbounds %struct.TransData, ptr %84, i64 0, i32 7
  %155 = getelementptr inbounds [3 x [3 x float]], ptr %85, i64 0, i64 1
  %156 = load float, ptr %155, align 4, !tbaa !112
  store float %156, ptr %154, align 4, !tbaa !112
  %157 = getelementptr inbounds [3 x [3 x float]], ptr %85, i64 0, i64 1, i64 1
  %158 = load float, ptr %157, align 4, !tbaa !112
  %159 = getelementptr inbounds %struct.TransData, ptr %84, i64 0, i32 7, i64 1
  store float %158, ptr %159, align 4, !tbaa !112
  %160 = getelementptr inbounds [3 x [3 x float]], ptr %85, i64 0, i64 1, i64 2
  %161 = load float, ptr %160, align 4, !tbaa !112
  %162 = getelementptr inbounds %struct.TransData, ptr %84, i64 0, i32 7, i64 2
  store float %161, ptr %162, align 4, !tbaa !112
  %163 = getelementptr inbounds %struct.TransData, ptr %84, i64 0, i32 4
  %164 = load float, ptr %83, align 4, !tbaa !112
  store float %164, ptr %163, align 4, !tbaa !112
  %165 = load float, ptr %149, align 4, !tbaa !112
  %166 = getelementptr inbounds %struct.TransData, ptr %84, i64 0, i32 4, i64 1
  store float %165, ptr %166, align 4, !tbaa !112
  %167 = load float, ptr %150, align 4, !tbaa !112
  %168 = getelementptr inbounds %struct.TransData, ptr %84, i64 0, i32 4, i64 2
  store float %167, ptr %168, align 4, !tbaa !112
  %169 = getelementptr inbounds %struct.TransData, ptr %84, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %169, i8 0, i64 36, i1 false)
  %170 = getelementptr inbounds %struct.TransData, ptr %84, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %170, align 8, !tbaa !112
  %171 = getelementptr inbounds %struct.TransData, ptr %84, i64 0, i32 13
  store ptr null, ptr %171, align 8, !tbaa !372
  %172 = getelementptr inbounds %struct.TransData, ptr %84, i64 0, i32 5
  store ptr null, ptr %172, align 8, !tbaa !441
  store i32 1, ptr %152, align 8, !tbaa !49
  store float 0.000000e+00, ptr %84, align 8, !tbaa !55
  %173 = getelementptr inbounds %struct.TransData, ptr %84, i64 0, i32 8
  tail call void @unit_m3(ptr noundef nonnull %173) #18
  %174 = getelementptr inbounds %struct.TransData, ptr %84, i64 0, i32 9
  tail call void @unit_m3(ptr noundef nonnull %174) #18
  %175 = getelementptr inbounds %struct.TransDataPaintCurve, ptr %82, i64 0, i32 1
  store i8 2, ptr %175, align 8, !tbaa !421
  store ptr %85, ptr %82, align 8, !tbaa !419
  %176 = getelementptr inbounds %struct.TransData2D, ptr %83, i64 1
  %177 = getelementptr inbounds %struct.TransDataPaintCurve, ptr %82, i64 1
  %178 = getelementptr inbounds %struct.TransData, ptr %84, i64 1
  br label %179

179:                                              ; preds = %144, %141
  %180 = phi ptr [ %176, %144 ], [ %83, %141 ]
  %181 = phi ptr [ %177, %144 ], [ %82, %141 ]
  %182 = phi ptr [ %178, %144 ], [ %84, %141 ]
  %183 = load i8, ptr %86, align 1, !tbaa !380
  %184 = and i8 %183, 1
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %217, label %186

186:                                              ; preds = %179
  %187 = load float, ptr %85, align 4, !tbaa !112
  store float %187, ptr %180, align 4, !tbaa !112
  %188 = getelementptr inbounds float, ptr %85, i64 1
  %189 = load float, ptr %188, align 4, !tbaa !112
  %190 = getelementptr inbounds float, ptr %180, i64 1
  store float %189, ptr %190, align 4, !tbaa !112
  %191 = getelementptr inbounds [3 x float], ptr %180, i64 0, i64 2
  store float 0.000000e+00, ptr %191, align 8, !tbaa !112
  %192 = getelementptr inbounds %struct.TransData2D, ptr %180, i64 0, i32 1
  store ptr %85, ptr %192, align 8, !tbaa !205
  %193 = getelementptr inbounds %struct.TransData, ptr %182, i64 0, i32 16
  store i32 0, ptr %193, align 8, !tbaa !49
  %194 = getelementptr inbounds %struct.TransData, ptr %182, i64 0, i32 3
  store ptr %180, ptr %194, align 8, !tbaa !209
  %195 = getelementptr inbounds %struct.TransData, ptr %182, i64 0, i32 7
  %196 = getelementptr inbounds [3 x [3 x float]], ptr %85, i64 0, i64 1
  %197 = load float, ptr %196, align 4, !tbaa !112
  store float %197, ptr %195, align 4, !tbaa !112
  %198 = getelementptr inbounds [3 x [3 x float]], ptr %85, i64 0, i64 1, i64 1
  %199 = load float, ptr %198, align 4, !tbaa !112
  %200 = getelementptr inbounds %struct.TransData, ptr %182, i64 0, i32 7, i64 1
  store float %199, ptr %200, align 4, !tbaa !112
  %201 = getelementptr inbounds [3 x [3 x float]], ptr %85, i64 0, i64 1, i64 2
  %202 = load float, ptr %201, align 4, !tbaa !112
  %203 = getelementptr inbounds %struct.TransData, ptr %182, i64 0, i32 7, i64 2
  store float %202, ptr %203, align 4, !tbaa !112
  %204 = getelementptr inbounds %struct.TransData, ptr %182, i64 0, i32 4
  %205 = load float, ptr %180, align 4, !tbaa !112
  store float %205, ptr %204, align 4, !tbaa !112
  %206 = load float, ptr %190, align 4, !tbaa !112
  %207 = getelementptr inbounds %struct.TransData, ptr %182, i64 0, i32 4, i64 1
  store float %206, ptr %207, align 4, !tbaa !112
  %208 = load float, ptr %191, align 4, !tbaa !112
  %209 = getelementptr inbounds %struct.TransData, ptr %182, i64 0, i32 4, i64 2
  store float %208, ptr %209, align 4, !tbaa !112
  %210 = getelementptr inbounds %struct.TransData, ptr %182, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %210, i8 0, i64 36, i1 false)
  %211 = getelementptr inbounds %struct.TransData, ptr %182, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %211, align 8, !tbaa !112
  %212 = getelementptr inbounds %struct.TransData, ptr %182, i64 0, i32 13
  store ptr null, ptr %212, align 8, !tbaa !372
  %213 = getelementptr inbounds %struct.TransData, ptr %182, i64 0, i32 5
  store ptr null, ptr %213, align 8, !tbaa !441
  store i32 1, ptr %193, align 8, !tbaa !49
  store float 0.000000e+00, ptr %182, align 8, !tbaa !55
  %214 = getelementptr inbounds %struct.TransData, ptr %182, i64 0, i32 8
  tail call void @unit_m3(ptr noundef nonnull %214) #18
  %215 = getelementptr inbounds %struct.TransData, ptr %182, i64 0, i32 9
  tail call void @unit_m3(ptr noundef nonnull %215) #18
  %216 = getelementptr inbounds %struct.TransDataPaintCurve, ptr %181, i64 0, i32 1
  store i8 0, ptr %216, align 8, !tbaa !421
  store ptr %85, ptr %181, align 8, !tbaa !419
  br label %217

217:                                              ; preds = %102, %179, %186
  %218 = load i8, ptr %88, align 4, !tbaa !678
  %219 = and i8 %218, 1
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.TransData, ptr %84, i64 3
  %223 = getelementptr inbounds %struct.TransData2D, ptr %83, i64 3
  %224 = getelementptr inbounds %struct.TransDataPaintCurve, ptr %82, i64 3
  br label %239

225:                                              ; preds = %217
  %226 = load i8, ptr %86, align 1, !tbaa !676
  %227 = and i8 %226, 1
  %228 = zext nneg i8 %227 to i64
  %229 = getelementptr inbounds %struct.TransData, ptr %84, i64 %228
  %230 = getelementptr inbounds %struct.TransData2D, ptr %83, i64 %228
  %231 = getelementptr inbounds %struct.TransDataPaintCurve, ptr %82, i64 %228
  %232 = load i8, ptr %91, align 1, !tbaa !679
  %233 = and i8 %232, 1
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %239, label %235

235:                                              ; preds = %225
  %236 = getelementptr inbounds %struct.TransData, ptr %229, i64 1
  %237 = getelementptr inbounds %struct.TransData2D, ptr %230, i64 1
  %238 = getelementptr inbounds %struct.TransDataPaintCurve, ptr %231, i64 1
  br label %239

239:                                              ; preds = %80, %225, %235, %221
  %240 = phi ptr [ %222, %221 ], [ %236, %235 ], [ %229, %225 ], [ %84, %80 ]
  %241 = phi ptr [ %223, %221 ], [ %237, %235 ], [ %230, %225 ], [ %83, %80 ]
  %242 = phi ptr [ %224, %221 ], [ %238, %235 ], [ %231, %225 ], [ %82, %80 ]
  %243 = add nuw nsw i32 %81, 1
  %244 = getelementptr inbounds %struct.PaintCurvePoint, ptr %85, i64 1
  %245 = load i32, ptr %53, align 8, !tbaa !673
  %246 = icmp slt i32 %243, %245
  br i1 %246, label %80, label %247, !llvm.loop !682

247:                                              ; preds = %239, %55, %51, %2, %6, %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @createTransPose(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [3 x [3 x float]], align 16
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  store i32 0, ptr %10, align 8, !tbaa !34
  %11 = tail call ptr @BKE_armature_from_object(ptr noundef %1) #18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %463, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %15 = load ptr, ptr %14, align 8, !tbaa !58
  %16 = icmp eq ptr %15, null
  br i1 %16, label %463, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bArmature, ptr %11, i64 0, i32 8
  %19 = load i32, ptr %18, align 8, !tbaa !100
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %0, align 8, !tbaa !188
  switch i32 %23, label %24 [
    i32 14, label %27
    i32 0, label %27
  ]

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 60
  %26 = load ptr, ptr %25, align 8, !tbaa !423
  tail call void @BKE_report(ptr noundef %26, i32 noundef 32, ptr noundef nonnull @.str.53) #18
  br label %463

27:                                               ; preds = %22, %22, %17
  %28 = and i32 %19, 512
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %109, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %0, align 8, !tbaa !188
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %109

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %35 = load i32, ptr %34, align 8, !tbaa !362
  %36 = and i32 %35, 64
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %109, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %15, align 8, !tbaa !63
  %40 = icmp eq ptr %39, null
  br i1 %40, label %109, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %43 = load ptr, ptr %42, align 8, !tbaa !64
  %44 = getelementptr inbounds %struct.bArmature, ptr %43, i64 0, i32 15
  br label %45

45:                                               ; preds = %41, %98
  %46 = phi ptr [ %39, %41 ], [ %100, %98 ]
  %47 = phi i16 [ 0, %41 ], [ %99, %98 ]
  %48 = getelementptr inbounds %struct.bPoseChannel, ptr %46, i64 0, i32 12
  %49 = load ptr, ptr %48, align 8, !tbaa !67
  %50 = getelementptr inbounds %struct.Bone, ptr %49, i64 0, i32 25
  %51 = load i32, ptr %50, align 8, !tbaa !69
  %52 = load i32, ptr %44, align 8, !tbaa !65
  %53 = and i32 %52, %51
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %98, label %55

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.Bone, ptr %49, i64 0, i32 10
  %57 = load i32, ptr %56, align 8, !tbaa !71
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %98, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.Bone, ptr %49, i64 0, i32 4
  br label %62

62:                                               ; preds = %66, %60
  %63 = phi ptr [ %61, %60 ], [ %64, %66 ]
  %64 = load ptr, ptr %63, align 8, !tbaa !63
  %65 = icmp eq ptr %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.Bone, ptr %64, i64 0, i32 10
  %68 = load i32, ptr %67, align 8, !tbaa !71
  %69 = and i32 %68, 16
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %62, label %71, !llvm.loop !683

71:                                               ; preds = %66, %62
  %72 = and i32 %57, 16
  %73 = icmp eq i32 %72, 0
  %74 = and i1 %73, %65
  br i1 %74, label %98, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.bPoseChannel, ptr %46, i64 0, i32 13
  %77 = load ptr, ptr %76, align 8, !tbaa !83
  %78 = icmp eq ptr %77, null
  br i1 %78, label %94, label %79

79:                                               ; preds = %75, %87
  %80 = phi ptr [ %89, %87 ], [ %77, %75 ]
  %81 = getelementptr inbounds %struct.bPoseChannel, ptr %80, i64 0, i32 12
  %82 = load ptr, ptr %81, align 8, !tbaa !67
  %83 = getelementptr inbounds %struct.Bone, ptr %82, i64 0, i32 10
  %84 = load i32, ptr %83, align 8, !tbaa !71
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.bPoseChannel, ptr %80, i64 0, i32 13
  %89 = load ptr, ptr %88, align 8, !tbaa !83
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %79, !llvm.loop !684

91:                                               ; preds = %87
  %92 = tail call fastcc signext i16 @pose_grab_with_ik_add(ptr noundef nonnull %46), !range !685
  %93 = add i16 %92, %47
  br label %98

94:                                               ; preds = %75
  %95 = load ptr, ptr %14, align 8, !tbaa !58
  %96 = tail call fastcc signext i16 @pose_grab_with_ik_children(ptr noundef %95, ptr noundef %49)
  %97 = add i16 %96, %47
  br label %98

98:                                               ; preds = %79, %94, %91, %71, %55, %45
  %99 = phi i16 [ %47, %71 ], [ %93, %91 ], [ %97, %94 ], [ %47, %55 ], [ %47, %45 ], [ %47, %79 ]
  %100 = load ptr, ptr %46, align 8, !tbaa !63
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %45, !llvm.loop !686

102:                                              ; preds = %98
  %103 = icmp eq i16 %99, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %102
  %105 = load ptr, ptr %14, align 8, !tbaa !58
  tail call void @BIK_clear_data(ptr noundef %105) #18
  %106 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %107 = load i32, ptr %106, align 4, !tbaa !54
  %108 = or i32 %107, 262144
  store i32 %108, ptr %106, align 4, !tbaa !54
  br label %109

109:                                              ; preds = %38, %102, %33, %104, %30, %27
  %110 = phi i1 [ false, %104 ], [ true, %30 ], [ true, %27 ], [ true, %33 ], [ true, %102 ], [ true, %38 ]
  %111 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 32
  %112 = load i16, ptr %111, align 2, !tbaa !348
  %113 = tail call i32 @count_set_pose_transflags(ptr noundef %0, i16 noundef signext %112, ptr noundef %1)
  store i32 %113, ptr %10, align 8, !tbaa !34
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %463, label %115

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !54
  %118 = or i32 %117, 4
  store i32 %118, ptr %116, align 4, !tbaa !54
  %119 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  store ptr %1, ptr %119, align 8, !tbaa !89
  %120 = and i32 %118, -33560577
  store i32 %120, ptr %116, align 4, !tbaa !54
  %121 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %122 = sext i32 %113 to i64
  %123 = mul nsw i64 %122, 224
  %124 = tail call ptr %121(i64 noundef %123, ptr noundef nonnull @.str.54) #18
  %125 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  store ptr %124, ptr %125, align 8, !tbaa !48
  %126 = load ptr, ptr @MEM_callocN, align 8, !tbaa !63
  %127 = load i32, ptr %10, align 8, !tbaa !34
  %128 = sext i32 %127 to i64
  %129 = mul nsw i64 %128, 384
  %130 = tail call ptr %126(i64 noundef %129, ptr noundef nonnull @.str.55) #18
  %131 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 11
  store ptr %130, ptr %131, align 8, !tbaa !424
  %132 = load i32, ptr %10, align 8, !tbaa !34
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %115, %134
  %135 = phi i32 [ %140, %134 ], [ 0, %115 ]
  %136 = phi ptr [ %142, %134 ], [ %130, %115 ]
  %137 = phi ptr [ %141, %134 ], [ %124, %115 ]
  %138 = getelementptr inbounds %struct.TransData, ptr %137, i64 0, i32 13
  store ptr %136, ptr %138, align 8, !tbaa !372
  %139 = getelementptr inbounds %struct.TransData, ptr %137, i64 0, i32 5
  store ptr null, ptr %139, align 8, !tbaa !441
  %140 = add nuw nsw i32 %135, 1
  %141 = getelementptr inbounds %struct.TransData, ptr %137, i64 1
  %142 = getelementptr inbounds %struct.TransDataExtension, ptr %136, i64 1
  %143 = icmp eq i32 %140, %132
  br i1 %143, label %144, label %134, !llvm.loop !687

144:                                              ; preds = %134, %115
  %145 = load ptr, ptr %125, align 8, !tbaa !48
  %146 = load ptr, ptr %14, align 8, !tbaa !58
  %147 = load ptr, ptr %146, align 8, !tbaa !63
  %148 = icmp eq ptr %147, null
  br i1 %148, label %393, label %149

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  br label %151

151:                                              ; preds = %149, %389
  %152 = phi ptr [ %147, %149 ], [ %391, %389 ]
  %153 = phi ptr [ %145, %149 ], [ %390, %389 ]
  %154 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 12
  %155 = load ptr, ptr %154, align 8, !tbaa !67
  %156 = getelementptr inbounds %struct.Bone, ptr %155, i64 0, i32 10
  %157 = load i32, ptr %156, align 8, !tbaa !71
  %158 = and i32 %157, 8
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %389, label %160

160:                                              ; preds = %151
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #18
  %161 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 29
  %162 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 29, i64 3
  %163 = load float, ptr %162, align 4, !tbaa !112
  %164 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 29, i64 3, i64 1
  %165 = load float, ptr %164, align 4, !tbaa !112
  %166 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 29, i64 3, i64 2
  %167 = load float, ptr %166, align 4, !tbaa !112
  %168 = getelementptr inbounds %struct.TransData, ptr %153, i64 0, i32 7
  store float %163, ptr %168, align 4, !tbaa !112
  %169 = getelementptr inbounds %struct.TransData, ptr %153, i64 0, i32 7, i64 1
  store float %165, ptr %169, align 4, !tbaa !112
  %170 = getelementptr inbounds %struct.TransData, ptr %153, i64 0, i32 7, i64 2
  store float %167, ptr %170, align 4, !tbaa !112
  %171 = getelementptr inbounds %struct.TransData, ptr %153, i64 0, i32 11
  store ptr %1, ptr %171, align 8, !tbaa !364
  %172 = getelementptr inbounds %struct.TransData, ptr %153, i64 0, i32 16
  %173 = and i32 %157, 16384
  %174 = icmp eq i32 %173, 0
  %175 = select i1 %174, i32 1, i32 513
  store i32 %175, ptr %172, align 8
  %176 = load i32, ptr %156, align 8, !tbaa !71
  %177 = and i32 %176, 1048576
  %178 = icmp eq i32 %177, 0
  %179 = select i1 %178, i32 %175, i32 8705
  store i32 %179, ptr %172, align 8
  %180 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 7
  %181 = load i16, ptr %180, align 4, !tbaa !84
  %182 = getelementptr inbounds %struct.TransData, ptr %153, i64 0, i32 17
  store i16 %181, ptr %182, align 4, !tbaa !612
  %183 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 20
  %184 = getelementptr inbounds %struct.TransData, ptr %153, i64 0, i32 3
  store ptr %183, ptr %184, align 8, !tbaa !209
  %185 = getelementptr inbounds %struct.TransData, ptr %153, i64 0, i32 4
  %186 = load float, ptr %183, align 4, !tbaa !112
  store float %186, ptr %185, align 4, !tbaa !112
  %187 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 20, i64 1
  %188 = load float, ptr %187, align 4, !tbaa !112
  %189 = getelementptr inbounds %struct.TransData, ptr %153, i64 0, i32 4, i64 1
  store float %188, ptr %189, align 4, !tbaa !112
  %190 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 20, i64 2
  %191 = load float, ptr %190, align 4, !tbaa !112
  %192 = getelementptr inbounds %struct.TransData, ptr %153, i64 0, i32 4, i64 2
  store float %191, ptr %192, align 4, !tbaa !112
  %193 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 21
  %194 = getelementptr inbounds %struct.TransData, ptr %153, i64 0, i32 13
  %195 = load ptr, ptr %194, align 8, !tbaa !372
  %196 = getelementptr inbounds %struct.TransDataExtension, ptr %195, i64 0, i32 11
  store ptr %193, ptr %196, align 8, !tbaa !427
  %197 = getelementptr inbounds %struct.TransDataExtension, ptr %195, i64 0, i32 12
  %198 = load float, ptr %193, align 4, !tbaa !112
  store float %198, ptr %197, align 4, !tbaa !112
  %199 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 21, i64 1
  %200 = load float, ptr %199, align 4, !tbaa !112
  %201 = getelementptr inbounds %struct.TransDataExtension, ptr %195, i64 0, i32 12, i64 1
  store float %200, ptr %201, align 4, !tbaa !112
  %202 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 21, i64 2
  %203 = load float, ptr %202, align 4, !tbaa !112
  %204 = getelementptr inbounds %struct.TransDataExtension, ptr %195, i64 0, i32 12, i64 2
  store float %203, ptr %204, align 4, !tbaa !112
  %205 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 26
  %206 = load i16, ptr %205, align 4, !tbaa !350
  %207 = icmp sgt i16 %206, 0
  %208 = getelementptr inbounds %struct.TransDataExtension, ptr %195, i64 0, i32 3
  br i1 %207, label %209, label %222

209:                                              ; preds = %160
  %210 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 22
  store ptr %210, ptr %208, align 8, !tbaa !426
  %211 = getelementptr inbounds %struct.TransDataExtension, ptr %195, i64 0, i32 9
  store ptr null, ptr %211, align 8, !tbaa !688
  %212 = getelementptr inbounds %struct.TransDataExtension, ptr %195, i64 0, i32 7
  store ptr null, ptr %212, align 8, !tbaa !689
  %213 = getelementptr inbounds %struct.TransDataExtension, ptr %195, i64 0, i32 5
  store ptr null, ptr %213, align 8, !tbaa !605
  %214 = getelementptr inbounds %struct.TransDataExtension, ptr %195, i64 0, i32 4
  %215 = load float, ptr %210, align 4, !tbaa !112
  store float %215, ptr %214, align 4, !tbaa !112
  %216 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 22, i64 1
  %217 = load float, ptr %216, align 4, !tbaa !112
  %218 = getelementptr inbounds %struct.TransDataExtension, ptr %195, i64 0, i32 4, i64 1
  store float %217, ptr %218, align 4, !tbaa !112
  %219 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 22, i64 2
  %220 = load float, ptr %219, align 4, !tbaa !112
  %221 = getelementptr inbounds %struct.TransDataExtension, ptr %195, i64 0, i32 4, i64 2
  store float %220, ptr %221, align 4, !tbaa !112
  br label %246

222:                                              ; preds = %160
  %223 = icmp eq i16 %206, -1
  store ptr null, ptr %208, align 8, !tbaa !426
  br i1 %223, label %224, label %240

224:                                              ; preds = %222
  %225 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 24
  %226 = getelementptr inbounds %struct.TransDataExtension, ptr %195, i64 0, i32 9
  store ptr %225, ptr %226, align 8, !tbaa !688
  %227 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 25
  %228 = getelementptr inbounds %struct.TransDataExtension, ptr %195, i64 0, i32 7
  store ptr %227, ptr %228, align 8, !tbaa !689
  %229 = getelementptr inbounds %struct.TransDataExtension, ptr %195, i64 0, i32 5
  store ptr null, ptr %229, align 8, !tbaa !605
  %230 = load float, ptr %227, align 8, !tbaa !351
  %231 = getelementptr inbounds %struct.TransDataExtension, ptr %195, i64 0, i32 8
  store float %230, ptr %231, align 8, !tbaa !690
  %232 = getelementptr inbounds %struct.TransDataExtension, ptr %195, i64 0, i32 10
  %233 = load float, ptr %225, align 4, !tbaa !112
  store float %233, ptr %232, align 4, !tbaa !112
  %234 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 24, i64 1
  %235 = load float, ptr %234, align 4, !tbaa !112
  %236 = getelementptr inbounds %struct.TransDataExtension, ptr %195, i64 0, i32 10, i64 1
  store float %235, ptr %236, align 4, !tbaa !112
  %237 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 24, i64 2
  %238 = load float, ptr %237, align 4, !tbaa !112
  %239 = getelementptr inbounds %struct.TransDataExtension, ptr %195, i64 0, i32 10, i64 2
  store float %238, ptr %239, align 4, !tbaa !112
  br label %246

240:                                              ; preds = %222
  %241 = getelementptr inbounds %struct.TransDataExtension, ptr %195, i64 0, i32 9
  store ptr null, ptr %241, align 8, !tbaa !688
  %242 = getelementptr inbounds %struct.TransDataExtension, ptr %195, i64 0, i32 7
  store ptr null, ptr %242, align 8, !tbaa !689
  %243 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 23
  %244 = getelementptr inbounds %struct.TransDataExtension, ptr %195, i64 0, i32 5
  store ptr %243, ptr %244, align 8, !tbaa !605
  %245 = getelementptr inbounds %struct.TransDataExtension, ptr %195, i64 0, i32 6
  call void @copy_qt_qt(ptr noundef nonnull %245, ptr noundef nonnull %243) #18
  br label %246

246:                                              ; preds = %240, %224, %209
  %247 = load i16, ptr %205, align 4, !tbaa !350
  %248 = sext i16 %247 to i32
  %249 = load ptr, ptr %194, align 8, !tbaa !372
  %250 = getelementptr inbounds %struct.TransDataExtension, ptr %249, i64 0, i32 17
  store i32 %248, ptr %250, align 8, !tbaa !646
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef nonnull %150) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #18
  call void @BKE_pchan_to_pose_mat(ptr noundef nonnull %152, ptr noundef nonnull %7, ptr noundef nonnull %8) #18
  %251 = load i32, ptr %0, align 8, !tbaa !188
  %252 = icmp eq i32 %251, 1
  %253 = select i1 %252, ptr %8, ptr %7
  call void @copy_m3_m4(ptr noundef nonnull %3, ptr noundef nonnull %253) #18
  call void @copy_m3_m4(ptr noundef nonnull %9, ptr noundef nonnull %7) #18
  %254 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 3
  %255 = call fastcc zeroext i8 @constraints_list_needinv(ptr noundef nonnull %0, ptr noundef nonnull %254)
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %263, label %257

257:                                              ; preds = %246
  %258 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 30
  call void @copy_m3_m4(ptr noundef nonnull %6, ptr noundef nonnull %258) #18
  %259 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %260 = getelementptr inbounds %struct.TransData, ptr %153, i64 0, i32 8
  call void @_va_mul_m3_series_4(ptr noundef nonnull %260, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %3) #18
  %261 = load ptr, ptr %194, align 8, !tbaa !372
  %262 = getelementptr inbounds %struct.TransDataExtension, ptr %261, i64 0, i32 15
  call void @_va_mul_m3_series_4(ptr noundef nonnull %262, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %9) #18
  br label %267

263:                                              ; preds = %246
  %264 = getelementptr inbounds %struct.TransData, ptr %153, i64 0, i32 8
  call void @_va_mul_m3_series_3(ptr noundef nonnull %264, ptr noundef nonnull %4, ptr noundef nonnull %3) #18
  %265 = load ptr, ptr %194, align 8, !tbaa !372
  %266 = getelementptr inbounds %struct.TransDataExtension, ptr %265, i64 0, i32 15
  call void @_va_mul_m3_series_3(ptr noundef nonnull %266, ptr noundef nonnull %4, ptr noundef nonnull %9) #18
  br label %267

267:                                              ; preds = %263, %257
  %268 = load ptr, ptr %194, align 8, !tbaa !372
  %269 = getelementptr inbounds %struct.TransDataExtension, ptr %268, i64 0, i32 16
  %270 = getelementptr inbounds %struct.TransDataExtension, ptr %268, i64 0, i32 15
  %271 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %269, ptr noundef nonnull %270) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #18
  %272 = getelementptr inbounds %struct.TransData, ptr %153, i64 0, i32 9
  %273 = getelementptr inbounds %struct.TransData, ptr %153, i64 0, i32 8
  call void @pseudoinverse_m3_m3(ptr noundef nonnull %272, ptr noundef nonnull %273, float noundef 0x3E45798EE0000000) #18
  %274 = load i32, ptr %0, align 8, !tbaa !188
  switch i32 %274, label %275 [
    i32 1, label %293
    i32 3, label %293
  ]

275:                                              ; preds = %267
  %276 = load ptr, ptr %154, align 8, !tbaa !67
  %277 = getelementptr inbounds %struct.Bone, ptr %276, i64 0, i32 10
  %278 = load i32, ptr %277, align 8, !tbaa !71
  %279 = and i32 %278, 4194304
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %293, label %281

281:                                              ; preds = %275
  %282 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 13
  %283 = load ptr, ptr %282, align 8, !tbaa !83
  %284 = icmp eq ptr %283, null
  %285 = load i32, ptr %172, align 8, !tbaa !49
  br i1 %284, label %291, label %286

286:                                              ; preds = %281
  %287 = or i32 %285, 1048576
  store i32 %287, ptr %172, align 8, !tbaa !49
  %288 = load ptr, ptr %194, align 8, !tbaa !372
  %289 = getelementptr inbounds %struct.TransDataExtension, ptr %288, i64 0, i32 14
  %290 = getelementptr inbounds %struct.Bone, ptr %276, i64 0, i32 9
  call void @mul_m3_m3m3(ptr noundef nonnull %289, ptr noundef nonnull %290, ptr noundef nonnull %272) #18
  br label %293

291:                                              ; preds = %281
  %292 = or i32 %285, 524288
  store i32 %292, ptr %172, align 8, !tbaa !49
  br label %293

293:                                              ; preds = %291, %286, %275, %267, %267
  call void @copy_m3_m4(ptr noundef nonnull %3, ptr noundef nonnull %161) #18
  %294 = getelementptr inbounds %struct.TransData, ptr %153, i64 0, i32 10
  call void @mul_m3_m3m3(ptr noundef nonnull %294, ptr noundef nonnull %4, ptr noundef nonnull %3) #18
  call void @normalize_m3(ptr noundef nonnull %294) #18
  %295 = load i32, ptr %0, align 8, !tbaa !188
  switch i32 %295, label %385 [
    i32 14, label %296
    i32 1, label %318
  ]

296:                                              ; preds = %293
  %297 = load ptr, ptr %119, align 8, !tbaa !89
  %298 = getelementptr inbounds %struct.Object, ptr %297, i64 0, i32 19
  %299 = load ptr, ptr %298, align 8, !tbaa !64
  %300 = getelementptr inbounds %struct.bArmature, ptr %299, i64 0, i32 9
  %301 = load i32, ptr %300, align 4, !tbaa !611
  %302 = icmp eq i32 %301, 3
  br i1 %302, label %303, label %308

303:                                              ; preds = %296
  store ptr null, ptr %184, align 8, !tbaa !209
  %304 = getelementptr inbounds %struct.Bone, ptr %155, i64 0, i32 15
  %305 = getelementptr inbounds %struct.TransData, ptr %153, i64 0, i32 5
  store ptr %304, ptr %305, align 8, !tbaa !441
  %306 = load float, ptr %304, align 8, !tbaa !691
  %307 = getelementptr inbounds %struct.TransData, ptr %153, i64 0, i32 6
  store float %306, ptr %307, align 8, !tbaa !442
  br label %316

308:                                              ; preds = %296
  %309 = getelementptr inbounds %struct.Bone, ptr %155, i64 0, i32 17
  store ptr %309, ptr %184, align 8, !tbaa !209
  %310 = load float, ptr %309, align 4, !tbaa !112
  store float %310, ptr %185, align 4, !tbaa !112
  %311 = getelementptr inbounds %struct.Bone, ptr %155, i64 0, i32 18
  %312 = load float, ptr %311, align 4, !tbaa !112
  store float %312, ptr %189, align 4, !tbaa !112
  %313 = getelementptr inbounds %struct.Bone, ptr %155, i64 0, i32 19
  %314 = load float, ptr %313, align 4, !tbaa !112
  store float %314, ptr %192, align 4, !tbaa !112
  %315 = getelementptr inbounds %struct.TransData, ptr %153, i64 0, i32 5
  store ptr null, ptr %315, align 8, !tbaa !441
  br label %316

316:                                              ; preds = %308, %303
  %317 = icmp eq i32 %295, 1
  br i1 %317, label %318, label %385

318:                                              ; preds = %316, %293
  %319 = load ptr, ptr %254, align 8, !tbaa !63
  %320 = icmp eq ptr %319, null
  br i1 %320, label %352, label %321

321:                                              ; preds = %318, %348
  %322 = phi ptr [ %350, %348 ], [ %319, %318 ]
  %323 = phi ptr [ %349, %348 ], [ undef, %318 ]
  %324 = getelementptr inbounds %struct.bConstraint, ptr %322, i64 0, i32 3
  %325 = load i16, ptr %324, align 8, !tbaa !74
  %326 = icmp eq i16 %325, 3
  br i1 %326, label %327, label %348

327:                                              ; preds = %321
  %328 = getelementptr inbounds %struct.bConstraint, ptr %322, i64 0, i32 9
  %329 = load float, ptr %328, align 8, !tbaa !76
  %330 = fcmp une float %329, 0.000000e+00
  br i1 %330, label %331, label %348

331:                                              ; preds = %327
  %332 = getelementptr inbounds %struct.bConstraint, ptr %322, i64 0, i32 2
  %333 = load ptr, ptr %332, align 8, !tbaa !77
  %334 = load ptr, ptr %333, align 8, !tbaa !78
  %335 = icmp eq ptr %334, null
  br i1 %335, label %345, label %336

336:                                              ; preds = %331
  %337 = getelementptr inbounds %struct.Object, ptr %334, i64 0, i32 3
  %338 = load i16, ptr %337, align 8, !tbaa !80
  %339 = icmp eq i16 %338, 25
  br i1 %339, label %340, label %344

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.bKinematicConstraint, ptr %333, i64 0, i32 5
  %342 = load i8, ptr %341, align 8, !tbaa !81
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %345, label %344

344:                                              ; preds = %340, %336
  br label %345

345:                                              ; preds = %344, %340, %331
  %346 = phi ptr [ %323, %344 ], [ %333, %331 ], [ %333, %340 ]
  %347 = phi i1 [ true, %344 ], [ false, %331 ], [ false, %340 ]
  br i1 %347, label %348, label %352

348:                                              ; preds = %345, %327, %321
  %349 = phi ptr [ %346, %345 ], [ %323, %327 ], [ %323, %321 ]
  %350 = load ptr, ptr %322, align 8, !tbaa !63
  %351 = icmp eq ptr %350, null
  br i1 %351, label %352, label %321, !llvm.loop !82

352:                                              ; preds = %348, %345, %318
  %353 = phi ptr [ null, %318 ], [ null, %348 ], [ %346, %345 ]
  %354 = icmp eq ptr %353, null
  br i1 %354, label %385, label %355

355:                                              ; preds = %352
  %356 = getelementptr inbounds %struct.bKinematicConstraint, ptr %353, i64 0, i32 2
  %357 = load i16, ptr %356, align 2, !tbaa !91
  %358 = and i16 %357, 1
  %359 = icmp eq i16 %358, 0
  %360 = getelementptr inbounds %struct.bKinematicConstraint, ptr %353, i64 0, i32 11
  %361 = getelementptr inbounds %struct.bKinematicConstraint, ptr %353, i64 0, i32 11, i64 1
  %362 = getelementptr inbounds %struct.bKinematicConstraint, ptr %353, i64 0, i32 11, i64 2
  br i1 %359, label %369, label %363

363:                                              ; preds = %355
  %364 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 32
  %365 = load float, ptr %364, align 4, !tbaa !112
  store float %365, ptr %360, align 4, !tbaa !112
  %366 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 32, i64 1
  %367 = load float, ptr %366, align 4, !tbaa !112
  store float %367, ptr %361, align 4, !tbaa !112
  %368 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 32, i64 2
  br label %375

369:                                              ; preds = %355
  %370 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 31
  %371 = load float, ptr %370, align 4, !tbaa !112
  store float %371, ptr %360, align 4, !tbaa !112
  %372 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 31, i64 1
  %373 = load float, ptr %372, align 4, !tbaa !112
  store float %373, ptr %361, align 4, !tbaa !112
  %374 = getelementptr inbounds %struct.bPoseChannel, ptr %152, i64 0, i32 31, i64 2
  br label %375

375:                                              ; preds = %369, %363
  %376 = phi ptr [ %374, %369 ], [ %368, %363 ]
  %377 = load float, ptr %376, align 4, !tbaa !112
  store float %377, ptr %362, align 4, !tbaa !112
  %378 = getelementptr inbounds %struct.bKinematicConstraint, ptr %353, i64 0, i32 11
  store ptr %378, ptr %184, align 8, !tbaa !209
  %379 = load float, ptr %378, align 4, !tbaa !112
  store float %379, ptr %185, align 4, !tbaa !112
  %380 = getelementptr inbounds %struct.bKinematicConstraint, ptr %353, i64 0, i32 11, i64 1
  %381 = load float, ptr %380, align 4, !tbaa !112
  store float %381, ptr %189, align 4, !tbaa !112
  %382 = getelementptr inbounds %struct.bKinematicConstraint, ptr %353, i64 0, i32 11, i64 2
  %383 = load float, ptr %382, align 4, !tbaa !112
  store float %383, ptr %192, align 4, !tbaa !112
  %384 = or i16 %357, 4
  store i16 %384, ptr %356, align 2, !tbaa !91
  call void @copy_m3_m3(ptr noundef nonnull %273, ptr noundef nonnull %4) #18
  call void @pseudoinverse_m3_m3(ptr noundef nonnull %272, ptr noundef nonnull %273, float noundef 0x3E45798EE0000000) #18
  br label %385

385:                                              ; preds = %293, %316, %352, %375
  %386 = load ptr, ptr %254, align 8, !tbaa !357
  %387 = getelementptr inbounds %struct.TransData, ptr %153, i64 0, i32 12
  store ptr %386, ptr %387, align 8, !tbaa !692
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #18
  %388 = getelementptr inbounds %struct.TransData, ptr %153, i64 1
  br label %389

389:                                              ; preds = %151, %385
  %390 = phi ptr [ %388, %385 ], [ %153, %151 ]
  %391 = load ptr, ptr %152, align 8, !tbaa !63
  %392 = icmp eq ptr %391, null
  br i1 %392, label %393, label %151, !llvm.loop !693

393:                                              ; preds = %389, %144
  %394 = phi ptr [ %145, %144 ], [ %390, %389 ]
  %395 = load ptr, ptr %125, align 8, !tbaa !48
  %396 = load i32, ptr %10, align 8, !tbaa !34
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TransData, ptr %395, i64 %397
  %399 = icmp eq ptr %394, %398
  br i1 %399, label %403, label %400

400:                                              ; preds = %393
  %401 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 60
  %402 = load ptr, ptr %401, align 8, !tbaa !423
  call void @BKE_report(ptr noundef %402, i32 noundef 1, ptr noundef nonnull @.str.56) #18
  br label %403

403:                                              ; preds = %400, %393
  br i1 %110, label %463, label %404

404:                                              ; preds = %403
  %405 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 57
  %406 = load ptr, ptr %405, align 8, !tbaa !87
  %407 = getelementptr inbounds %struct.ToolSettings, ptr %406, i64 0, i32 14
  %408 = load ptr, ptr %119, align 8, !tbaa !89
  %409 = icmp eq ptr %408, null
  br i1 %409, label %463, label %410

410:                                              ; preds = %404
  %411 = getelementptr inbounds %struct.Object, ptr %408, i64 0, i32 18
  %412 = load ptr, ptr %411, align 8, !tbaa !58
  %413 = icmp eq ptr %412, null
  br i1 %413, label %463, label %414

414:                                              ; preds = %410
  %415 = load ptr, ptr %412, align 8, !tbaa !63
  %416 = icmp eq ptr %415, null
  br i1 %416, label %463, label %417

417:                                              ; preds = %414, %460
  %418 = phi ptr [ %461, %460 ], [ %415, %414 ]
  %419 = load i16, ptr %407, align 2, !tbaa !88
  %420 = getelementptr inbounds %struct.bPoseChannel, ptr %418, i64 0, i32 9
  %421 = load i8, ptr %420, align 8, !tbaa !90
  %422 = and i8 %421, 9
  %423 = icmp eq i8 %422, 0
  br i1 %423, label %460, label %424

424:                                              ; preds = %417
  %425 = getelementptr inbounds %struct.bPoseChannel, ptr %418, i64 0, i32 3
  %426 = load ptr, ptr %425, align 8, !tbaa !63
  %427 = icmp eq ptr %426, null
  br i1 %427, label %460, label %428

428:                                              ; preds = %424
  %429 = icmp eq i16 %419, 0
  br label %430

430:                                              ; preds = %457, %428
  %431 = phi ptr [ %426, %428 ], [ %458, %457 ]
  %432 = getelementptr inbounds %struct.bConstraint, ptr %431, i64 0, i32 3
  %433 = load i16, ptr %432, align 8, !tbaa !74
  %434 = icmp eq i16 %433, 3
  br i1 %434, label %435, label %457

435:                                              ; preds = %430
  %436 = getelementptr inbounds %struct.bConstraint, ptr %431, i64 0, i32 9
  %437 = load float, ptr %436, align 8, !tbaa !76
  %438 = fcmp une float %437, 0.000000e+00
  br i1 %438, label %439, label %457

439:                                              ; preds = %435
  %440 = getelementptr inbounds %struct.bConstraint, ptr %431, i64 0, i32 2
  %441 = load ptr, ptr %440, align 8, !tbaa !77
  %442 = getelementptr inbounds %struct.bKinematicConstraint, ptr %441, i64 0, i32 2
  %443 = load i16, ptr %442, align 2, !tbaa !91
  %444 = and i16 %443, 8
  %445 = icmp eq i16 %444, 0
  br i1 %445, label %457, label %446

446:                                              ; preds = %439
  br i1 %429, label %451, label %447

447:                                              ; preds = %446
  %448 = getelementptr inbounds %struct.bKinematicConstraint, ptr %441, i64 0, i32 4
  %449 = load i16, ptr %448, align 2, !tbaa !92
  %450 = icmp slt i16 %449, %419
  br i1 %450, label %451, label %454

451:                                              ; preds = %447, %446
  %452 = getelementptr inbounds %struct.bKinematicConstraint, ptr %441, i64 0, i32 4
  %453 = load i16, ptr %452, align 2, !tbaa !92
  br label %454

454:                                              ; preds = %447, %451
  %455 = phi i16 [ %453, %451 ], [ %419, %447 ]
  %456 = getelementptr inbounds %struct.bKinematicConstraint, ptr %441, i64 0, i32 3
  store i16 %455, ptr %456, align 4, !tbaa !93
  br label %457

457:                                              ; preds = %454, %439, %435, %430
  %458 = load ptr, ptr %431, align 8, !tbaa !63
  %459 = icmp eq ptr %458, null
  br i1 %459, label %460, label %430, !llvm.loop !94

460:                                              ; preds = %457, %424, %417
  %461 = load ptr, ptr %418, align 8, !tbaa !63
  %462 = icmp eq ptr %461, null
  br i1 %462, label %463, label %417, !llvm.loop !95

463:                                              ; preds = %460, %414, %410, %404, %403, %109, %2, %13, %24
  ret void
}

declare ptr @modifiers_isDeformedByArmature(ptr noundef) local_unnamed_addr #7

declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @PE_start_edit(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

declare void @BKE_sequence_calc_disp(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @BKE_sequencer_offset_animdata(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

declare void @EDBM_automerge(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

declare ptr @ED_space_clip_get_mask(ptr noundef) local_unnamed_addr #7

declare ptr @ED_space_image_get_mask(ptr noundef) local_unnamed_addr #7

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i8 @ED_mask_layer_shape_auto_key_select(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @nodeFreeNode(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #7

declare ptr @BKE_tracking_get_active_plane_tracks(ptr noundef) local_unnamed_addr #7

declare i32 @ED_space_clip_get_clip_frame_number(ptr noundef) local_unnamed_addr #7

declare void @BKE_tracking_track_plane_from_existing_motion(ptr noundef, i32 noundef) local_unnamed_addr #7

declare zeroext i8 @nodeUpdateID(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @delete_fcurve_key(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #7

declare void @BLI_sortlist_r(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @gpf_cmp_frame(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #12 {
  %4 = getelementptr inbounds %struct.bGPDframe, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !334
  %6 = getelementptr inbounds %struct.bGPDframe, ptr %2, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !334
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %22, label %9

9:                                                ; preds = %3
  %10 = icmp sgt i32 %5, %7
  br i1 %10, label %22, label %11

11:                                               ; preds = %9
  store i8 1, ptr %0, align 1, !tbaa !81
  %12 = getelementptr inbounds %struct.bGPDframe, ptr %1, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !465
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.bGPDframe, ptr %2, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !465
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %11
  br label %22

22:                                               ; preds = %16, %9, %3, %21
  %23 = phi i32 [ 0, %21 ], [ -1, %3 ], [ 1, %9 ], [ 1, %16 ]
  ret i32 %23
}

declare zeroext i8 @gpencil_layer_delframe(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @masklay_shape_cmp_frame(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #12 {
  %4 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !341
  %6 = getelementptr inbounds %struct.MaskLayerShape, ptr %2, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !341
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %22, label %9

9:                                                ; preds = %3
  %10 = icmp sgt i32 %5, %7
  br i1 %10, label %22, label %11

11:                                               ; preds = %9
  store i8 1, ptr %0, align 1, !tbaa !81
  %12 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 5
  %13 = load i8, ptr %12, align 8, !tbaa !467
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.MaskLayerShape, ptr %2, i64 0, i32 5
  %18 = load i8, ptr %17, align 8, !tbaa !467
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %11
  br label %22

22:                                               ; preds = %16, %9, %3, %21
  %23 = phi i32 [ 0, %21 ], [ -1, %3 ], [ 1, %9 ], [ 1, %16 ]
  ret i32 %23
}

declare void @BKE_mask_layer_shape_unlink(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @BKE_armature_mat_pose_to_bone(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @mat3_to_eulO(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #7

declare void @mat3_to_axis_angle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @mat3_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @eulO_to_mat3(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #7

declare void @axis_angle_to_mat3(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #7

declare void @quat_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @mat3_to_size(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @BIK_clear_data(ptr noundef) local_unnamed_addr #7

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #7

declare ptr @BKE_tracking_plane_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i8 @BKE_object_obdata_is_libdata(ptr noundef) local_unnamed_addr #7

declare void @normalize_m3(ptr noundef) local_unnamed_addr #7

declare void @pseudoinverse_m3_m3(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #7

declare i32 @BKE_object_obdata_texspace_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @BM_mesh_cd_flag_ensure(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

declare ptr @BKE_mesh_from_object(ptr noundef) local_unnamed_addr #7

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #7

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #7

declare void @bmiter__edge_of_vert_begin(ptr noundef) #7

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #7

declare void @bmiter__loop_of_vert_begin(ptr noundef) #7

declare ptr @bmiter__loop_of_vert_step(ptr noundef) #7

declare void @bmiter__vert_of_edge_begin(ptr noundef) #7

declare ptr @bmiter__vert_of_edge_step(ptr noundef) #7

declare void @bmiter__vert_of_face_begin(ptr noundef) #7

declare ptr @bmiter__vert_of_face_step(ptr noundef) #7

declare void @bmiter__loop_of_face_begin(ptr noundef) #7

declare ptr @bmiter__loop_of_face_step(ptr noundef) #7

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #13

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #7

declare ptr @CTX_data_edit_mask(ptr noundef) local_unnamed_addr #7

declare i32 @BKE_mask_point_handles_mode_get(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @MaskPointToTransData(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6) unnamed_addr #6 {
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x [3 x float]], align 16
  %10 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %11 = load i8, ptr %10, align 4, !tbaa !661
  %12 = and i8 %11, 1
  %13 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %14 = load i8, ptr %13, align 1, !tbaa !660
  %15 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %16 = load i8, ptr %15, align 1, !tbaa !662
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #18
  %17 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !252
  %19 = sitofp i32 %18 to float
  call void @BKE_mask_point_parent_matrix_get(ptr noundef %1, float noundef %19, ptr noundef nonnull %8) #18
  %20 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %9, ptr noundef nonnull %8) #18
  %21 = icmp ne i32 %5, 0
  %22 = icmp ne i8 %12, 0
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %24, label %100

24:                                               ; preds = %7
  %25 = or i8 %14, %16
  %26 = or i8 %25, %11
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.TransDataMasking, ptr %4, i64 0, i32 4
  store ptr %1, ptr %28, align 8, !tbaa !411
  %29 = getelementptr inbounds %struct.TransDataMasking, ptr %4, i64 0, i32 3
  call void @copy_m3_m3(ptr noundef nonnull %29, ptr noundef %1) #18
  %30 = getelementptr inbounds float, ptr %6, i64 1
  %31 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %32 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 2
  %33 = icmp eq i8 %27, 0
  %34 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  %35 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  br label %36

36:                                               ; preds = %24, %94
  %37 = phi i64 [ 0, %24 ], [ %98, %94 ]
  %38 = phi ptr [ %2, %24 ], [ %95, %94 ]
  %39 = phi ptr [ %3, %24 ], [ %96, %94 ]
  %40 = phi ptr [ %4, %24 ], [ %97, %94 ]
  %41 = getelementptr inbounds %struct.TransDataMasking, ptr %40, i64 0, i32 5
  call void @copy_m3_m3(ptr noundef nonnull %41, ptr noundef nonnull %8) #18
  %42 = getelementptr inbounds %struct.TransDataMasking, ptr %40, i64 0, i32 6
  call void @copy_m3_m3(ptr noundef nonnull %42, ptr noundef nonnull %9) #18
  %43 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 %37
  call void @mul_v2_m3v2(ptr noundef %39, ptr noundef nonnull %8, ptr noundef %43) #18
  %44 = load float, ptr %6, align 4, !tbaa !112
  %45 = load float, ptr %39, align 8, !tbaa !112
  %46 = fmul float %44, %45
  store float %46, ptr %39, align 8, !tbaa !112
  %47 = load float, ptr %30, align 4, !tbaa !112
  %48 = getelementptr inbounds [3 x float], ptr %39, i64 0, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !112
  %50 = fmul float %47, %49
  store float %50, ptr %48, align 4, !tbaa !112
  %51 = getelementptr inbounds [3 x float], ptr %39, i64 0, i64 2
  store float 0.000000e+00, ptr %51, align 8, !tbaa !112
  %52 = getelementptr inbounds %struct.TransData2D, ptr %39, i64 0, i32 1
  store ptr %43, ptr %52, align 8, !tbaa !205
  %53 = getelementptr inbounds %struct.TransData, ptr %38, i64 0, i32 16
  store i32 0, ptr %53, align 8, !tbaa !49
  %54 = getelementptr inbounds %struct.TransData, ptr %38, i64 0, i32 3
  store ptr %39, ptr %54, align 8, !tbaa !209
  %55 = getelementptr inbounds %struct.TransData, ptr %38, i64 0, i32 7
  call void @mul_v2_m3v2(ptr noundef nonnull %55, ptr noundef nonnull %8, ptr noundef nonnull %31) #18
  %56 = load float, ptr %6, align 4, !tbaa !112
  %57 = load float, ptr %55, align 4, !tbaa !112
  %58 = fmul float %56, %57
  store float %58, ptr %55, align 4, !tbaa !112
  %59 = load float, ptr %30, align 4, !tbaa !112
  %60 = getelementptr inbounds %struct.TransData, ptr %38, i64 0, i32 7, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !112
  %62 = fmul float %59, %61
  store float %62, ptr %60, align 4, !tbaa !112
  %63 = getelementptr inbounds %struct.TransData, ptr %38, i64 0, i32 4
  %64 = load ptr, ptr %54, align 8, !tbaa !209
  %65 = load float, ptr %64, align 4, !tbaa !112
  store float %65, ptr %63, align 4, !tbaa !112
  %66 = getelementptr inbounds float, ptr %64, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !112
  %68 = getelementptr inbounds %struct.TransData, ptr %38, i64 0, i32 4, i64 1
  store float %67, ptr %68, align 4, !tbaa !112
  %69 = getelementptr inbounds float, ptr %64, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !112
  %71 = getelementptr inbounds %struct.TransData, ptr %38, i64 0, i32 4, i64 2
  store float %70, ptr %71, align 4, !tbaa !112
  %72 = getelementptr inbounds %struct.TransData, ptr %38, i64 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %72, i8 0, i64 36, i1 false)
  %73 = getelementptr inbounds %struct.TransData, ptr %38, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %73, align 8, !tbaa !112
  %74 = getelementptr inbounds %struct.TransData, ptr %38, i64 0, i32 13
  store ptr null, ptr %74, align 8, !tbaa !372
  %75 = icmp eq i64 %37, 1
  %76 = getelementptr inbounds %struct.TransData, ptr %38, i64 0, i32 5
  br i1 %75, label %77, label %80

77:                                               ; preds = %36
  store ptr %32, ptr %76, align 8, !tbaa !441
  %78 = load float, ptr %32, align 4, !tbaa !112
  %79 = getelementptr inbounds %struct.TransData, ptr %38, i64 0, i32 6
  store float %78, ptr %79, align 8, !tbaa !442
  br label %81

80:                                               ; preds = %36
  store ptr null, ptr %76, align 8, !tbaa !441
  br label %81

81:                                               ; preds = %80, %77
  br i1 %33, label %85, label %82

82:                                               ; preds = %81
  %83 = load i32, ptr %53, align 8, !tbaa !49
  %84 = or i32 %83, 1
  store i32 %84, ptr %53, align 8, !tbaa !49
  br label %85

85:                                               ; preds = %82, %81
  store float 0.000000e+00, ptr %38, align 8, !tbaa !55
  %86 = getelementptr inbounds %struct.TransData, ptr %38, i64 0, i32 8
  call void @unit_m3(ptr noundef nonnull %86) #18
  %87 = getelementptr inbounds %struct.TransData, ptr %38, i64 0, i32 9
  call void @unit_m3(ptr noundef nonnull %87) #18
  %88 = trunc i64 %37 to i32
  switch i32 %88, label %94 [
    i32 0, label %90
    i32 2, label %89
  ]

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %85, %89
  %91 = phi ptr [ %34, %89 ], [ %35, %85 ]
  %92 = load i8, ptr %91, align 1, !tbaa !81
  %93 = getelementptr inbounds %struct.TransDataMasking, ptr %40, i64 0, i32 7
  store i8 %92, ptr %93, align 8, !tbaa !413
  br label %94

94:                                               ; preds = %90, %85
  %95 = getelementptr inbounds %struct.TransData, ptr %38, i64 1
  %96 = getelementptr inbounds %struct.TransData2D, ptr %39, i64 1
  %97 = getelementptr inbounds %struct.TransDataMasking, ptr %40, i64 1
  %98 = add nuw nsw i64 %37, 1
  %99 = icmp eq i64 %98, 3
  br i1 %99, label %131, label %36, !llvm.loop !694

100:                                              ; preds = %7
  %101 = call i32 @BKE_mask_point_handles_mode_get(ptr noundef %1) #18
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  call fastcc void @MaskHandleToTransData(ptr noundef %1, i32 noundef 1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %6, ptr noundef nonnull %8, ptr noundef nonnull %9)
  br label %131

104:                                              ; preds = %100
  %105 = load i8, ptr %13, align 1, !tbaa !380
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %104
  call fastcc void @MaskHandleToTransData(ptr noundef %1, i32 noundef 2, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %6, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %109 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  %110 = load i8, ptr %109, align 1, !tbaa !506
  switch i8 %110, label %114 [
    i8 2, label %111
    i8 1, label %112
  ]

111:                                              ; preds = %108
  store i8 0, ptr %109, align 1, !tbaa !506
  br label %114

112:                                              ; preds = %108
  store i8 5, ptr %109, align 1, !tbaa !506
  %113 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  store i8 5, ptr %113, align 2, !tbaa !508
  br label %114

114:                                              ; preds = %108, %112, %111
  %115 = getelementptr inbounds %struct.TransData, ptr %2, i64 1
  %116 = getelementptr inbounds %struct.TransData2D, ptr %3, i64 1
  %117 = getelementptr inbounds %struct.TransDataMasking, ptr %4, i64 1
  br label %118

118:                                              ; preds = %114, %104
  %119 = phi ptr [ %117, %114 ], [ %4, %104 ]
  %120 = phi ptr [ %116, %114 ], [ %3, %104 ]
  %121 = phi ptr [ %115, %114 ], [ %2, %104 ]
  %122 = load i8, ptr %15, align 1, !tbaa !381
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %118
  call fastcc void @MaskHandleToTransData(ptr noundef %1, i32 noundef 3, ptr noundef %121, ptr noundef %120, ptr noundef %119, ptr noundef %6, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %126 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  %127 = load i8, ptr %126, align 2, !tbaa !508
  switch i8 %127, label %131 [
    i8 2, label %128
    i8 1, label %129
  ]

128:                                              ; preds = %125
  store i8 0, ptr %126, align 2, !tbaa !508
  br label %131

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  store i8 5, ptr %130, align 1, !tbaa !506
  store i8 5, ptr %126, align 2, !tbaa !508
  br label %131

131:                                              ; preds = %94, %128, %129, %125, %103, %118
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #18
  ret void
}

declare void @BKE_mask_point_parent_matrix_get(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #7

declare void @mul_v2_m3v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @unit_m3(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @MaskHandleToTransData(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6, ptr noundef %7) unnamed_addr #6 {
  %9 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 7
  %10 = load i8, ptr %9, align 1, !tbaa !660
  %11 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 8
  %12 = load i8, ptr %11, align 4, !tbaa !661
  %13 = or i8 %12, %10
  %14 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 9
  %15 = load i8, ptr %14, align 1, !tbaa !662
  %16 = or i8 %13, %15
  %17 = and i8 %16, 1
  %18 = getelementptr inbounds %struct.TransDataMasking, ptr %4, i64 0, i32 4
  store ptr %0, ptr %18, align 8, !tbaa !411
  %19 = getelementptr inbounds %struct.TransDataMasking, ptr %4, i64 0, i32 3
  tail call void @copy_m3_m3(ptr noundef nonnull %19, ptr noundef %0) #18
  store i8 1, ptr %4, align 8, !tbaa !409
  %20 = getelementptr inbounds %struct.TransDataMasking, ptr %4, i64 0, i32 5
  tail call void @copy_m3_m3(ptr noundef nonnull %20, ptr noundef %6) #18
  %21 = getelementptr inbounds %struct.TransDataMasking, ptr %4, i64 0, i32 6
  tail call void @copy_m3_m3(ptr noundef nonnull %21, ptr noundef %7) #18
  %22 = getelementptr inbounds %struct.TransDataMasking, ptr %4, i64 0, i32 1
  tail call void @BKE_mask_point_handle(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %22) #18
  %23 = getelementptr inbounds %struct.TransDataMasking, ptr %4, i64 0, i32 8
  store i32 %1, ptr %23, align 4, !tbaa !412
  %24 = getelementptr inbounds %struct.TransDataMasking, ptr %4, i64 0, i32 2
  %25 = load float, ptr %22, align 4, !tbaa !112
  store float %25, ptr %24, align 4, !tbaa !112
  %26 = getelementptr inbounds %struct.TransDataMasking, ptr %4, i64 0, i32 1, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !112
  %28 = getelementptr inbounds %struct.TransDataMasking, ptr %4, i64 0, i32 2, i64 1
  store float %27, ptr %28, align 4, !tbaa !112
  tail call void @mul_v2_m3v2(ptr noundef %3, ptr noundef %6, ptr noundef nonnull %22) #18
  %29 = load float, ptr %5, align 4, !tbaa !112
  %30 = load float, ptr %3, align 8, !tbaa !112
  %31 = fmul float %29, %30
  store float %31, ptr %3, align 8, !tbaa !112
  %32 = getelementptr inbounds float, ptr %5, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !112
  %34 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !112
  %36 = fmul float %33, %35
  store float %36, ptr %34, align 4, !tbaa !112
  %37 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0.000000e+00, ptr %37, align 8, !tbaa !112
  %38 = getelementptr inbounds %struct.TransData2D, ptr %3, i64 0, i32 1
  store ptr %22, ptr %38, align 8, !tbaa !205
  %39 = getelementptr inbounds %struct.TransData, ptr %2, i64 0, i32 16
  store i32 0, ptr %39, align 8, !tbaa !49
  %40 = getelementptr inbounds %struct.TransData, ptr %2, i64 0, i32 3
  store ptr %3, ptr %40, align 8, !tbaa !209
  %41 = getelementptr inbounds %struct.TransData, ptr %2, i64 0, i32 7
  %42 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  tail call void @mul_v2_m3v2(ptr noundef nonnull %41, ptr noundef %6, ptr noundef nonnull %42) #18
  %43 = load float, ptr %5, align 4, !tbaa !112
  %44 = load float, ptr %41, align 4, !tbaa !112
  %45 = fmul float %43, %44
  store float %45, ptr %41, align 4, !tbaa !112
  %46 = load float, ptr %32, align 4, !tbaa !112
  %47 = getelementptr inbounds %struct.TransData, ptr %2, i64 0, i32 7, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !112
  %49 = fmul float %46, %48
  store float %49, ptr %47, align 4, !tbaa !112
  %50 = getelementptr inbounds %struct.TransData, ptr %2, i64 0, i32 4
  %51 = load ptr, ptr %40, align 8, !tbaa !209
  %52 = load float, ptr %51, align 4, !tbaa !112
  store float %52, ptr %50, align 4, !tbaa !112
  %53 = getelementptr inbounds float, ptr %51, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !112
  %55 = getelementptr inbounds %struct.TransData, ptr %2, i64 0, i32 4, i64 1
  store float %54, ptr %55, align 4, !tbaa !112
  %56 = getelementptr inbounds float, ptr %51, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !112
  %58 = getelementptr inbounds %struct.TransData, ptr %2, i64 0, i32 4, i64 2
  store float %57, ptr %58, align 4, !tbaa !112
  %59 = getelementptr inbounds %struct.TransData, ptr %2, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %59, i8 0, i64 36, i1 false)
  %60 = getelementptr inbounds %struct.TransData, ptr %2, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %60, align 8, !tbaa !112
  %61 = getelementptr inbounds %struct.TransData, ptr %2, i64 0, i32 13
  store ptr null, ptr %61, align 8, !tbaa !372
  %62 = getelementptr inbounds %struct.TransData, ptr %2, i64 0, i32 5
  store ptr null, ptr %62, align 8, !tbaa !441
  %63 = icmp eq i8 %17, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %8
  %65 = load i32, ptr %39, align 8, !tbaa !49
  %66 = or i32 %65, 1
  store i32 %66, ptr %39, align 8, !tbaa !49
  br label %67

67:                                               ; preds = %64, %8
  store float 0.000000e+00, ptr %2, align 8, !tbaa !55
  %68 = getelementptr inbounds %struct.TransData, ptr %2, i64 0, i32 8
  tail call void @unit_m3(ptr noundef nonnull %68) #18
  %69 = getelementptr inbounds %struct.TransData, ptr %2, i64 0, i32 9
  tail call void @unit_m3(ptr noundef nonnull %69) #18
  switch i32 %1, label %78 [
    i32 2, label %70
    i32 3, label %72
  ]

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 5
  br label %74

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  br label %74

74:                                               ; preds = %70, %72
  %75 = phi ptr [ %73, %72 ], [ %71, %70 ]
  %76 = load i8, ptr %75, align 1, !tbaa !81
  %77 = getelementptr inbounds %struct.TransDataMasking, ptr %4, i64 0, i32 7
  store i8 %76, ptr %77, align 8, !tbaa !413
  br label %78

78:                                               ; preds = %74, %67
  ret void
}

declare void @BKE_mask_point_handle(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare ptr @BKE_paint_get_active_from_context(ptr noundef) local_unnamed_addr #7

declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #7

declare ptr @CTX_data_edit_image(ptr noundef) local_unnamed_addr #7

declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #7

declare zeroext i8 @ED_space_image_show_uvedit(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @BM_uv_element_map_create(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare zeroext i8 @uvedit_face_visible_test(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i8 @uvedit_uv_select_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare ptr @BM_uv_element_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @BM_uv_element_map_free(ptr noundef) local_unnamed_addr #7

declare void @ED_uvedit_live_unwrap_begin(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @BKE_nlastrips_make_metas(ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @UI_view2d_fromcontext(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @freeSeqData(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %269, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 8, !tbaa !176
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %11 = load i16, ptr %10, align 4, !tbaa !207
  %12 = icmp eq i16 %11, 3
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !34
  %15 = icmp sgt i32 %14, 0
  br i1 %12, label %17, label %16

16:                                               ; preds = %6
  br i1 %15, label %18, label %199

17:                                               ; preds = %6
  br i1 %15, label %242, label %269

18:                                               ; preds = %16, %39
  %19 = phi ptr [ %24, %39 ], [ null, %16 ]
  %20 = phi i32 [ %40, %39 ], [ 0, %16 ]
  %21 = phi ptr [ %41, %39 ], [ %9, %16 ]
  %22 = getelementptr inbounds %struct.TransData, ptr %21, i64 0, i32 15
  %23 = load ptr, ptr %22, align 8, !tbaa !169
  %24 = load ptr, ptr %23, align 8, !tbaa !178
  %25 = icmp eq ptr %24, %19
  br i1 %25, label %39, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 14
  %28 = load i32, ptr %27, align 4, !tbaa !183
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !190
  %33 = and i32 %32, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %37 = load ptr, ptr %7, align 8, !tbaa !63
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %45

39:                                               ; preds = %30, %26, %18
  %40 = add nuw nsw i32 %20, 1
  %41 = getelementptr inbounds %struct.TransData, ptr %21, i64 1
  %42 = icmp eq i32 %40, %14
  br i1 %42, label %199, label %18, !llvm.loop !695

43:                                               ; preds = %45, %35
  %44 = tail call i32 @llvm.smax.i32(i32 %14, i32 1)
  br label %50

45:                                               ; preds = %35, %45
  %46 = phi ptr [ %48, %45 ], [ %37, %35 ]
  %47 = getelementptr inbounds %struct.Sequence, ptr %46, i64 0, i32 2
  store ptr null, ptr %47, align 8, !tbaa !696
  %48 = load ptr, ptr %46, align 8, !tbaa !63
  %49 = icmp eq ptr %48, null
  br i1 %49, label %43, label %45, !llvm.loop !697

50:                                               ; preds = %43, %69
  %51 = phi i8 [ %70, %69 ], [ 0, %43 ]
  %52 = phi i32 [ %71, %69 ], [ 0, %43 ]
  %53 = phi ptr [ %72, %69 ], [ %9, %43 ]
  %54 = getelementptr inbounds %struct.TransData, ptr %53, i64 0, i32 15
  %55 = load ptr, ptr %54, align 8, !tbaa !169
  %56 = load ptr, ptr %55, align 8, !tbaa !178
  %57 = icmp eq ptr %56, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.Sequence, ptr %56, i64 0, i32 6
  %60 = load i32, ptr %59, align 4, !tbaa !189
  %61 = and i32 %60, 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.Sequence, ptr %56, i64 0, i32 33
  %65 = load ptr, ptr %64, align 8, !tbaa !192
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %63, %58
  %68 = getelementptr inbounds %struct.Sequence, ptr %56, i64 0, i32 2
  store ptr inttoptr (i64 1 to ptr), ptr %68, align 8, !tbaa !696
  br label %69

69:                                               ; preds = %63, %50, %67
  %70 = phi i8 [ %51, %67 ], [ %51, %50 ], [ 1, %63 ]
  %71 = add nuw nsw i32 %52, 1
  %72 = getelementptr inbounds %struct.TransData, ptr %53, i64 1
  %73 = icmp eq i32 %71, %44
  br i1 %73, label %74, label %50, !llvm.loop !698

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !54
  %77 = and i32 %76, 16777216
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %135, label %79

79:                                               ; preds = %74
  %80 = tail call i32 @llvm.smax.i32(i32 %14, i32 1)
  br label %84

81:                                               ; preds = %96
  %82 = load ptr, ptr %7, align 8, !tbaa !63
  %83 = icmp eq ptr %82, null
  br i1 %83, label %118, label %101

84:                                               ; preds = %79, %96
  %85 = phi i32 [ %97, %96 ], [ 300000, %79 ]
  %86 = phi i32 [ %98, %96 ], [ 0, %79 ]
  %87 = phi ptr [ %99, %96 ], [ %9, %79 ]
  %88 = getelementptr inbounds %struct.TransData, ptr %87, i64 0, i32 15
  %89 = load ptr, ptr %88, align 8, !tbaa !169
  %90 = load ptr, ptr %89, align 8, !tbaa !178
  %91 = icmp eq ptr %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.Sequence, ptr %90, i64 0, i32 15
  %94 = load i32, ptr %93, align 8, !tbaa !699
  %95 = tail call i32 @llvm.smin.i32(i32 %85, i32 %94)
  br label %96

96:                                               ; preds = %84, %92
  %97 = phi i32 [ %95, %92 ], [ %85, %84 ]
  %98 = add nuw nsw i32 %86, 1
  %99 = getelementptr inbounds %struct.TransData, ptr %87, i64 1
  %100 = icmp eq i32 %98, %80
  br i1 %100, label %81, label %84, !llvm.loop !700

101:                                              ; preds = %81, %115
  %102 = phi ptr [ %116, %115 ], [ %82, %81 ]
  %103 = getelementptr inbounds %struct.Sequence, ptr %102, i64 0, i32 5
  %104 = load i32, ptr %103, align 8, !tbaa !190
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.Sequence, ptr %102, i64 0, i32 15
  %109 = load i32, ptr %108, align 8, !tbaa !699
  %110 = icmp slt i32 %109, %97
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.Sequence, ptr %102, i64 0, i32 13
  %113 = load i32, ptr %112, align 8, !tbaa !185
  %114 = add nsw i32 %113, 64
  store i32 %114, ptr %112, align 8, !tbaa !185
  br label %115

115:                                              ; preds = %101, %111, %107
  %116 = load ptr, ptr %102, align 8, !tbaa !63
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %101, !llvm.loop !701

118:                                              ; preds = %115, %81
  %119 = load ptr, ptr %2, align 8, !tbaa !119
  %120 = tail call zeroext i8 @BKE_sequence_base_shuffle_time(ptr noundef nonnull %7, ptr noundef %119) #18
  %121 = load ptr, ptr %7, align 8, !tbaa !63
  %122 = icmp eq ptr %121, null
  br i1 %122, label %135, label %123

123:                                              ; preds = %118, %130
  %124 = phi ptr [ %133, %130 ], [ %121, %118 ]
  %125 = getelementptr inbounds %struct.Sequence, ptr %124, i64 0, i32 13
  %126 = load i32, ptr %125, align 8, !tbaa !185
  %127 = icmp sgt i32 %126, 63
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = add nsw i32 %126, -64
  store i32 %129, ptr %125, align 8, !tbaa !185
  br label %130

130:                                              ; preds = %123, %128
  %131 = phi ptr [ inttoptr (i64 1 to ptr), %128 ], [ null, %123 ]
  %132 = getelementptr inbounds %struct.Sequence, ptr %124, i64 0, i32 2
  store ptr %131, ptr %132, align 8, !tbaa !696
  %133 = load ptr, ptr %124, align 8, !tbaa !63
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %123, !llvm.loop !702

135:                                              ; preds = %130, %74, %118
  %136 = load ptr, ptr %2, align 8, !tbaa !119
  %137 = tail call zeroext i8 @BKE_sequence_base_shuffle_time(ptr noundef nonnull %7, ptr noundef %136) #18
  %138 = icmp eq i8 %70, 0
  br i1 %138, label %199, label %139

139:                                              ; preds = %135
  %140 = load i32, ptr %36, align 8, !tbaa !34
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %167

142:                                              ; preds = %139
  %143 = load ptr, ptr %8, align 8, !tbaa !48
  br label %144

144:                                              ; preds = %142, %162
  %145 = phi i32 [ %163, %162 ], [ 0, %142 ]
  %146 = phi ptr [ %164, %162 ], [ %143, %142 ]
  %147 = getelementptr inbounds %struct.TransData, ptr %146, i64 0, i32 15
  %148 = load ptr, ptr %147, align 8, !tbaa !169
  %149 = load ptr, ptr %148, align 8, !tbaa !178
  %150 = icmp eq ptr %149, null
  br i1 %150, label %162, label %151

151:                                              ; preds = %144
  %152 = getelementptr inbounds %struct.Sequence, ptr %149, i64 0, i32 6
  %153 = load i32, ptr %152, align 4, !tbaa !189
  %154 = and i32 %153, 8
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.Sequence, ptr %149, i64 0, i32 33
  %158 = load ptr, ptr %157, align 8, !tbaa !192
  %159 = icmp eq ptr %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %156
  %161 = load ptr, ptr %2, align 8, !tbaa !119
  tail call void @BKE_sequence_calc(ptr noundef %161, ptr noundef nonnull %149) #18
  br label %162

162:                                              ; preds = %144, %160, %156, %151
  %163 = add nuw nsw i32 %145, 1
  %164 = getelementptr inbounds %struct.TransData, ptr %146, i64 1
  %165 = load i32, ptr %36, align 8, !tbaa !34
  %166 = icmp slt i32 %163, %165
  br i1 %166, label %144, label %167, !llvm.loop !703

167:                                              ; preds = %162, %139
  %168 = load i32, ptr %36, align 8, !tbaa !34
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %199

170:                                              ; preds = %167
  %171 = load ptr, ptr %8, align 8, !tbaa !48
  br label %172

172:                                              ; preds = %170, %194
  %173 = phi i32 [ %195, %194 ], [ 0, %170 ]
  %174 = phi ptr [ %196, %194 ], [ %171, %170 ]
  %175 = getelementptr inbounds %struct.TransData, ptr %174, i64 0, i32 15
  %176 = load ptr, ptr %175, align 8, !tbaa !169
  %177 = load ptr, ptr %176, align 8, !tbaa !178
  %178 = icmp eq ptr %177, null
  br i1 %178, label %194, label %179

179:                                              ; preds = %172
  %180 = getelementptr inbounds %struct.Sequence, ptr %177, i64 0, i32 6
  %181 = load i32, ptr %180, align 4, !tbaa !189
  %182 = and i32 %181, 8
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %194, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.Sequence, ptr %177, i64 0, i32 33
  %186 = load ptr, ptr %185, align 8, !tbaa !192
  %187 = icmp eq ptr %186, null
  br i1 %187, label %194, label %188

188:                                              ; preds = %184
  %189 = tail call zeroext i8 @BKE_sequence_test_overlap(ptr noundef nonnull %7, ptr noundef nonnull %177) #18
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %188
  %192 = load ptr, ptr %2, align 8, !tbaa !119
  %193 = tail call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef nonnull %7, ptr noundef nonnull %177, ptr noundef %192) #18
  br label %194

194:                                              ; preds = %172, %188, %191, %184, %179
  %195 = add nuw nsw i32 %173, 1
  %196 = getelementptr inbounds %struct.TransData, ptr %174, i64 1
  %197 = load i32, ptr %36, align 8, !tbaa !34
  %198 = icmp slt i32 %195, %197
  br i1 %198, label %172, label %199, !llvm.loop !704

199:                                              ; preds = %39, %194, %16, %167, %135
  %200 = load ptr, ptr %7, align 8, !tbaa !63
  %201 = icmp eq ptr %200, null
  br i1 %201, label %240, label %202

202:                                              ; preds = %199, %237
  %203 = phi ptr [ %238, %237 ], [ %200, %199 ]
  %204 = getelementptr inbounds %struct.Sequence, ptr %203, i64 0, i32 6
  %205 = load i32, ptr %204, align 4, !tbaa !189
  %206 = and i32 %205, 8
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %237, label %208

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.Sequence, ptr %203, i64 0, i32 33
  %210 = load ptr, ptr %209, align 8, !tbaa !192
  %211 = icmp eq ptr %210, null
  br i1 %211, label %217, label %212

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.Sequence, ptr %210, i64 0, i32 5
  %214 = load i32, ptr %213, align 8, !tbaa !190
  %215 = and i32 %214, 1
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %235

217:                                              ; preds = %212, %208
  %218 = getelementptr inbounds %struct.Sequence, ptr %203, i64 0, i32 34
  %219 = load ptr, ptr %218, align 8, !tbaa !193
  %220 = icmp eq ptr %219, null
  br i1 %220, label %226, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.Sequence, ptr %219, i64 0, i32 5
  %223 = load i32, ptr %222, align 8, !tbaa !190
  %224 = and i32 %223, 1
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %221, %217
  %227 = getelementptr inbounds %struct.Sequence, ptr %203, i64 0, i32 35
  %228 = load ptr, ptr %227, align 8, !tbaa !194
  %229 = icmp eq ptr %228, null
  br i1 %229, label %237, label %230

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.Sequence, ptr %228, i64 0, i32 5
  %232 = load i32, ptr %231, align 8, !tbaa !190
  %233 = and i32 %232, 1
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %237, label %235

235:                                              ; preds = %230, %221, %212
  %236 = load ptr, ptr %2, align 8, !tbaa !119
  tail call void @BKE_sequence_calc(ptr noundef %236, ptr noundef nonnull %203) #18
  br label %237

237:                                              ; preds = %235, %202, %230, %226
  %238 = load ptr, ptr %203, align 8, !tbaa !63
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %202, !llvm.loop !705

240:                                              ; preds = %237, %199
  %241 = load ptr, ptr %2, align 8, !tbaa !119
  tail call void @BKE_sequencer_sort(ptr noundef %241) #18
  br label %269

242:                                              ; preds = %17, %264
  %243 = phi ptr [ %248, %264 ], [ null, %17 ]
  %244 = phi i32 [ %265, %264 ], [ 0, %17 ]
  %245 = phi ptr [ %266, %264 ], [ %9, %17 ]
  %246 = getelementptr inbounds %struct.TransData, ptr %245, i64 0, i32 15
  %247 = load ptr, ptr %246, align 8, !tbaa !169
  %248 = load ptr, ptr %247, align 8, !tbaa !178
  %249 = icmp eq ptr %248, %243
  br i1 %249, label %264, label %250

250:                                              ; preds = %242
  %251 = getelementptr inbounds %struct.Sequence, ptr %248, i64 0, i32 14
  %252 = load i32, ptr %251, align 4, !tbaa !183
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %264

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.Sequence, ptr %248, i64 0, i32 5
  %256 = load i32, ptr %255, align 8, !tbaa !190
  %257 = and i32 %256, 8
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %254
  %260 = load ptr, ptr %2, align 8, !tbaa !119
  %261 = tail call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %7, ptr noundef %248, ptr noundef %260) #18
  br label %262

262:                                              ; preds = %259, %254
  %263 = load ptr, ptr %2, align 8, !tbaa !119
  tail call void @BKE_sequence_calc_disp(ptr noundef %263, ptr noundef %248) #18
  br label %264

264:                                              ; preds = %262, %250, %242
  %265 = add nuw nsw i32 %244, 1
  %266 = getelementptr inbounds %struct.TransData, ptr %245, i64 1
  %267 = load i32, ptr %13, align 8, !tbaa !34
  %268 = icmp slt i32 %265, %267
  br i1 %268, label %242, label %269, !llvm.loop !706

269:                                              ; preds = %264, %17, %240, %1
  %270 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %271 = load ptr, ptr %270, align 8, !tbaa !96
  %272 = icmp eq ptr %271, null
  br i1 %272, label %280, label %273

273:                                              ; preds = %269
  %274 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %275 = load i32, ptr %274, align 4, !tbaa !54
  %276 = and i32 %275, 131072
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %280, label %278

278:                                              ; preds = %273
  %279 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  tail call void %279(ptr noundef nonnull %271) #18
  store ptr null, ptr %270, align 8, !tbaa !96
  br label %280

280:                                              ; preds = %278, %273, %269
  %281 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %282 = load ptr, ptr %281, align 8, !tbaa !48
  %283 = icmp eq ptr %282, null
  br i1 %283, label %286, label %284

284:                                              ; preds = %280
  %285 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  tail call void %285(ptr noundef nonnull %282) #18
  store ptr null, ptr %281, align 8, !tbaa !48
  br label %286

286:                                              ; preds = %284, %280
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @SeqTransCount(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #6 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  %8 = load ptr, ptr %2, align 8, !tbaa !63
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %4
  %11 = add nsw i32 %3, 1
  br label %12

12:                                               ; preds = %10, %25
  %13 = phi ptr [ %8, %10 ], [ %27, %25 ]
  %14 = phi i32 [ 0, %10 ], [ %26, %25 ]
  %15 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 14
  store i32 %3, ptr %15, align 4, !tbaa !183
  %16 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 2
  store ptr %1, ptr %16, align 8, !tbaa !696
  call fastcc void @SeqTransInfo(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %17 = load i32, ptr %6, align 4, !tbaa !57
  %18 = add nsw i32 %17, %14
  %19 = load i32, ptr %5, align 4, !tbaa !57
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 36
  %23 = tail call fastcc i32 @SeqTransCount(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %22, i32 noundef %11)
  %24 = add nsw i32 %23, %18
  br label %25

25:                                               ; preds = %12, %21
  %26 = phi i32 [ %24, %21 ], [ %18, %12 ]
  %27 = load ptr, ptr %13, align 8, !tbaa !63
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %12, !llvm.loop !707

29:                                               ; preds = %25, %4
  %30 = phi i32 [ 0, %4 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @SeqToTransData_Recursive(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #6 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  %9 = load ptr, ptr %1, align 8, !tbaa !63
  %10 = icmp eq ptr %9, null
  br i1 %10, label %170, label %11

11:                                               ; preds = %5, %163
  %12 = phi ptr [ %168, %163 ], [ %9, %5 ]
  %13 = phi ptr [ %167, %163 ], [ %2, %5 ]
  %14 = phi i32 [ %166, %163 ], [ 0, %5 ]
  %15 = phi ptr [ %165, %163 ], [ %4, %5 ]
  %16 = phi ptr [ %164, %163 ], [ %3, %5 ]
  call fastcc void @SeqTransInfo(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8)
  %17 = load i32, ptr %6, align 4, !tbaa !57
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 36
  %21 = tail call fastcc i32 @SeqToTransData_Recursive(ptr noundef %0, ptr noundef nonnull %20, ptr noundef %13, ptr noundef %16, ptr noundef %15)
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TransData, ptr %13, i64 %22
  %24 = getelementptr inbounds %struct.TransData2D, ptr %16, i64 %22
  %25 = getelementptr inbounds %struct.TransDataSeq, ptr %15, i64 %22
  %26 = add nsw i32 %21, %14
  br label %27

27:                                               ; preds = %19, %11
  %28 = phi ptr [ %24, %19 ], [ %16, %11 ]
  %29 = phi ptr [ %25, %19 ], [ %15, %11 ]
  %30 = phi i32 [ %26, %19 ], [ %14, %11 ]
  %31 = phi ptr [ %23, %19 ], [ %13, %11 ]
  %32 = load i32, ptr %8, align 4, !tbaa !57
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %163, label %35

35:                                               ; preds = %27
  %36 = and i32 %32, 6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %117, label %38

38:                                               ; preds = %35
  %39 = and i32 %32, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %78, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.TransData, ptr %31, i64 1
  %43 = getelementptr inbounds %struct.TransData2D, ptr %28, i64 1
  %44 = getelementptr inbounds %struct.TransDataSeq, ptr %29, i64 1
  %45 = tail call i32 @BKE_sequence_tx_get_final_left(ptr noundef nonnull %12, i8 noundef zeroext 0) #18
  %46 = sitofp i32 %45 to float
  store float %46, ptr %28, align 8, !tbaa !112
  %47 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 13
  %48 = load i32, ptr %47, align 8, !tbaa !185
  %49 = sitofp i32 %48 to float
  %50 = getelementptr inbounds [3 x float], ptr %28, i64 0, i64 1
  store float %49, ptr %50, align 4, !tbaa !112
  %51 = getelementptr inbounds [3 x float], ptr %28, i64 0, i64 2
  store float 0.000000e+00, ptr %51, align 8, !tbaa !112
  %52 = getelementptr inbounds %struct.TransData2D, ptr %28, i64 0, i32 1
  store ptr null, ptr %52, align 8, !tbaa !205
  store ptr %12, ptr %29, align 8, !tbaa !178
  %53 = getelementptr inbounds %struct.TransDataSeq, ptr %29, i64 0, i32 1
  store i32 %32, ptr %53, align 8, !tbaa !186
  %54 = getelementptr inbounds %struct.TransDataSeq, ptr %29, i64 0, i32 3
  store i16 2, ptr %54, align 8, !tbaa !182
  %55 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 15
  store ptr %29, ptr %55, align 8, !tbaa !169
  %56 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 16
  store i32 0, ptr %56, align 8, !tbaa !49
  %57 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 3
  store ptr %28, ptr %57, align 8, !tbaa !209
  %58 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 7
  store float %46, ptr %58, align 4, !tbaa !112
  %59 = load float, ptr %50, align 4, !tbaa !112
  %60 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 7, i64 1
  store float %59, ptr %60, align 4, !tbaa !112
  %61 = load float, ptr %51, align 4, !tbaa !112
  %62 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 7, i64 2
  store float %61, ptr %62, align 4, !tbaa !112
  %63 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 4
  %64 = load float, ptr %28, align 4, !tbaa !112
  store float %64, ptr %63, align 4, !tbaa !112
  %65 = load float, ptr %50, align 4, !tbaa !112
  %66 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 4, i64 1
  store float %65, ptr %66, align 4, !tbaa !112
  %67 = load float, ptr %51, align 4, !tbaa !112
  %68 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 4, i64 2
  store float %67, ptr %68, align 4, !tbaa !112
  %69 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %69, i8 0, i64 36, i1 false)
  %70 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %70, align 8, !tbaa !112
  %71 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 13
  store ptr null, ptr %71, align 8, !tbaa !372
  %72 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 5
  store ptr null, ptr %72, align 8, !tbaa !441
  store i32 1, ptr %56, align 8, !tbaa !49
  store float 0.000000e+00, ptr %31, align 8, !tbaa !55
  %73 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 8
  tail call void @unit_m3(ptr noundef nonnull %73) #18
  %74 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 9
  tail call void @unit_m3(ptr noundef nonnull %74) #18
  store ptr %28, ptr %72, align 8, !tbaa !441
  %75 = load float, ptr %28, align 8, !tbaa !112
  %76 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 6
  store float %75, ptr %76, align 8, !tbaa !442
  %77 = add nsw i32 %30, 1
  br label %78

78:                                               ; preds = %41, %38
  %79 = phi ptr [ %43, %41 ], [ %28, %38 ]
  %80 = phi ptr [ %44, %41 ], [ %29, %38 ]
  %81 = phi i32 [ %77, %41 ], [ %30, %38 ]
  %82 = phi ptr [ %42, %41 ], [ %31, %38 ]
  %83 = load i32, ptr %8, align 4, !tbaa !57
  %84 = and i32 %83, 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %163, label %86

86:                                               ; preds = %78
  %87 = tail call i32 @BKE_sequence_tx_get_final_right(ptr noundef nonnull %12, i8 noundef zeroext 0) #18
  %88 = sitofp i32 %87 to float
  store float %88, ptr %79, align 8, !tbaa !112
  %89 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 13
  %90 = load i32, ptr %89, align 8, !tbaa !185
  %91 = sitofp i32 %90 to float
  %92 = getelementptr inbounds [3 x float], ptr %79, i64 0, i64 1
  store float %91, ptr %92, align 4, !tbaa !112
  %93 = getelementptr inbounds [3 x float], ptr %79, i64 0, i64 2
  store float 0.000000e+00, ptr %93, align 8, !tbaa !112
  %94 = getelementptr inbounds %struct.TransData2D, ptr %79, i64 0, i32 1
  store ptr null, ptr %94, align 8, !tbaa !205
  store ptr %12, ptr %80, align 8, !tbaa !178
  %95 = getelementptr inbounds %struct.TransDataSeq, ptr %80, i64 0, i32 1
  store i32 %83, ptr %95, align 8, !tbaa !186
  %96 = getelementptr inbounds %struct.TransDataSeq, ptr %80, i64 0, i32 3
  store i16 4, ptr %96, align 8, !tbaa !182
  %97 = getelementptr inbounds %struct.TransData, ptr %82, i64 0, i32 15
  store ptr %80, ptr %97, align 8, !tbaa !169
  %98 = getelementptr inbounds %struct.TransData, ptr %82, i64 0, i32 16
  store i32 0, ptr %98, align 8, !tbaa !49
  %99 = getelementptr inbounds %struct.TransData, ptr %82, i64 0, i32 3
  store ptr %79, ptr %99, align 8, !tbaa !209
  %100 = getelementptr inbounds %struct.TransData, ptr %82, i64 0, i32 7
  store float %88, ptr %100, align 4, !tbaa !112
  %101 = load float, ptr %92, align 4, !tbaa !112
  %102 = getelementptr inbounds %struct.TransData, ptr %82, i64 0, i32 7, i64 1
  store float %101, ptr %102, align 4, !tbaa !112
  %103 = load float, ptr %93, align 4, !tbaa !112
  %104 = getelementptr inbounds %struct.TransData, ptr %82, i64 0, i32 7, i64 2
  store float %103, ptr %104, align 4, !tbaa !112
  %105 = getelementptr inbounds %struct.TransData, ptr %82, i64 0, i32 4
  %106 = load float, ptr %79, align 4, !tbaa !112
  store float %106, ptr %105, align 4, !tbaa !112
  %107 = load float, ptr %92, align 4, !tbaa !112
  %108 = getelementptr inbounds %struct.TransData, ptr %82, i64 0, i32 4, i64 1
  store float %107, ptr %108, align 4, !tbaa !112
  %109 = load float, ptr %93, align 4, !tbaa !112
  %110 = getelementptr inbounds %struct.TransData, ptr %82, i64 0, i32 4, i64 2
  store float %109, ptr %110, align 4, !tbaa !112
  %111 = getelementptr inbounds %struct.TransData, ptr %82, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %111, i8 0, i64 36, i1 false)
  %112 = getelementptr inbounds %struct.TransData, ptr %82, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %112, align 8, !tbaa !112
  %113 = getelementptr inbounds %struct.TransData, ptr %82, i64 0, i32 13
  store ptr null, ptr %113, align 8, !tbaa !372
  %114 = getelementptr inbounds %struct.TransData, ptr %82, i64 0, i32 5
  store ptr null, ptr %114, align 8, !tbaa !441
  store i32 1, ptr %98, align 8, !tbaa !49
  store float 0.000000e+00, ptr %82, align 8, !tbaa !55
  %115 = getelementptr inbounds %struct.TransData, ptr %82, i64 0, i32 8
  tail call void @unit_m3(ptr noundef nonnull %115) #18
  %116 = getelementptr inbounds %struct.TransData, ptr %82, i64 0, i32 9
  tail call void @unit_m3(ptr noundef nonnull %116) #18
  store ptr %79, ptr %114, align 8, !tbaa !441
  br label %152

117:                                              ; preds = %35
  %118 = tail call i32 @BKE_sequence_tx_get_final_left(ptr noundef nonnull %12, i8 noundef zeroext 0) #18
  %119 = sitofp i32 %118 to float
  store float %119, ptr %28, align 8, !tbaa !112
  %120 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 8
  %121 = load i32, ptr %120, align 4, !tbaa !180
  %122 = sub nsw i32 %118, %121
  %123 = getelementptr inbounds %struct.TransDataSeq, ptr %29, i64 0, i32 2
  store i32 %122, ptr %123, align 4, !tbaa !184
  %124 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 13
  %125 = load i32, ptr %124, align 8, !tbaa !185
  %126 = sitofp i32 %125 to float
  %127 = getelementptr inbounds [3 x float], ptr %28, i64 0, i64 1
  store float %126, ptr %127, align 4, !tbaa !112
  %128 = getelementptr inbounds [3 x float], ptr %28, i64 0, i64 2
  store float 0.000000e+00, ptr %128, align 8, !tbaa !112
  %129 = getelementptr inbounds %struct.TransData2D, ptr %28, i64 0, i32 1
  store ptr null, ptr %129, align 8, !tbaa !205
  store ptr %12, ptr %29, align 8, !tbaa !178
  %130 = getelementptr inbounds %struct.TransDataSeq, ptr %29, i64 0, i32 1
  store i32 %32, ptr %130, align 8, !tbaa !186
  %131 = getelementptr inbounds %struct.TransDataSeq, ptr %29, i64 0, i32 3
  store i16 1, ptr %131, align 8, !tbaa !182
  %132 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 15
  store ptr %29, ptr %132, align 8, !tbaa !169
  %133 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 16
  store i32 0, ptr %133, align 8, !tbaa !49
  %134 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 3
  store ptr %28, ptr %134, align 8, !tbaa !209
  %135 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 7
  store float %119, ptr %135, align 4, !tbaa !112
  %136 = load float, ptr %127, align 4, !tbaa !112
  %137 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 7, i64 1
  store float %136, ptr %137, align 4, !tbaa !112
  %138 = load float, ptr %128, align 4, !tbaa !112
  %139 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 7, i64 2
  store float %138, ptr %139, align 4, !tbaa !112
  %140 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 4
  %141 = load float, ptr %28, align 4, !tbaa !112
  store float %141, ptr %140, align 4, !tbaa !112
  %142 = load float, ptr %127, align 4, !tbaa !112
  %143 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 4, i64 1
  store float %142, ptr %143, align 4, !tbaa !112
  %144 = load float, ptr %128, align 4, !tbaa !112
  %145 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 4, i64 2
  store float %144, ptr %145, align 4, !tbaa !112
  %146 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %146, i8 0, i64 36, i1 false)
  %147 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %147, align 8, !tbaa !112
  %148 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 13
  store ptr null, ptr %148, align 8, !tbaa !372
  %149 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 5
  store ptr null, ptr %149, align 8, !tbaa !441
  store i32 1, ptr %133, align 8, !tbaa !49
  store float 0.000000e+00, ptr %31, align 8, !tbaa !55
  %150 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 8
  tail call void @unit_m3(ptr noundef nonnull %150) #18
  %151 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 9
  tail call void @unit_m3(ptr noundef nonnull %151) #18
  store ptr %28, ptr %149, align 8, !tbaa !441
  br label %152

152:                                              ; preds = %117, %86
  %153 = phi ptr [ %79, %86 ], [ %28, %117 ]
  %154 = phi ptr [ %82, %86 ], [ %31, %117 ]
  %155 = phi i32 [ %81, %86 ], [ %30, %117 ]
  %156 = phi ptr [ %80, %86 ], [ %29, %117 ]
  %157 = getelementptr inbounds %struct.TransData, ptr %154, i64 1
  %158 = getelementptr inbounds %struct.TransDataSeq, ptr %156, i64 1
  %159 = getelementptr inbounds %struct.TransData2D, ptr %153, i64 1
  %160 = load float, ptr %153, align 8, !tbaa !112
  %161 = getelementptr inbounds %struct.TransData, ptr %154, i64 0, i32 6
  store float %160, ptr %161, align 8, !tbaa !442
  %162 = add nsw i32 %155, 1
  br label %163

163:                                              ; preds = %152, %27, %78
  %164 = phi ptr [ %79, %78 ], [ %28, %27 ], [ %159, %152 ]
  %165 = phi ptr [ %80, %78 ], [ %29, %27 ], [ %158, %152 ]
  %166 = phi i32 [ %81, %78 ], [ %30, %27 ], [ %162, %152 ]
  %167 = phi ptr [ %82, %78 ], [ %31, %27 ], [ %157, %152 ]
  %168 = load ptr, ptr %12, align 8, !tbaa !63
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %11, !llvm.loop !708

170:                                              ; preds = %163, %5
  %171 = phi i32 [ 0, %5 ], [ %166, %163 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  ret i32 %171
}

declare zeroext i8 @BKE_sequence_base_shuffle_time(ptr noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i8 @BKE_sequence_base_shuffle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @BKE_sequencer_sort(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @SeqTransInfo(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #6 {
  %6 = load i32, ptr %0, align 8, !tbaa !188
  %7 = icmp eq i32 %6, 22
  br i1 %7, label %8, label %65

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %10 = load ptr, ptr %9, align 8, !tbaa !119
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !252
  %13 = tail call i32 @BKE_sequence_tx_get_final_left(ptr noundef %1, i8 noundef zeroext 1) #18
  %14 = tail call i32 @BKE_sequence_tx_get_final_right(ptr noundef %1, i8 noundef zeroext 1) #18
  %15 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 14
  %16 = load i32, ptr %15, align 4, !tbaa !183
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !190
  %21 = and i32 %20, 16385
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, ptr %2, align 4, !tbaa !57
  store i32 0, ptr %3, align 4, !tbaa !57
  store i32 0, ptr %4, align 4, !tbaa !57
  br label %96

24:                                               ; preds = %18, %8
  %25 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !189
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 26
  %30 = load i8, ptr %29, align 8, !tbaa !291
  %31 = icmp ne i8 %30, 82
  %32 = icmp sgt i32 %14, %12
  %33 = select i1 %31, i1 true, i1 %32
  %34 = icmp ne i8 %30, 76
  %35 = icmp slt i32 %13, %12
  %36 = select i1 %34, i1 true, i1 %35
  %37 = select i1 %33, i1 %36, i1 false
  %38 = zext i1 %37 to i32
  store i32 %38, ptr %2, align 4, !tbaa !57
  store i32 1, ptr %3, align 4, !tbaa !57
  %39 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !190
  %41 = and i32 %40, -8
  %42 = or disjoint i32 %41, 1
  store i32 %42, ptr %4, align 4, !tbaa !57
  br label %96

43:                                               ; preds = %24
  store i32 0, ptr %2, align 4, !tbaa !57
  store i32 1, ptr %3, align 4, !tbaa !57
  %44 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %45 = load i32, ptr %44, align 8, !tbaa !190
  %46 = and i32 %45, -8
  %47 = or disjoint i32 %46, 1
  store i32 %47, ptr %4, align 4, !tbaa !57
  %48 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 26
  %49 = load i8, ptr %48, align 8, !tbaa !291
  %50 = icmp eq i8 %49, 82
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = icmp sgt i32 %14, %12
  br i1 %52, label %54, label %53

53:                                               ; preds = %51
  store i32 0, ptr %4, align 4, !tbaa !57
  store i32 0, ptr %3, align 4, !tbaa !57
  br label %96

54:                                               ; preds = %51
  %55 = icmp sgt i32 %13, %12
  br i1 %55, label %96, label %56

56:                                               ; preds = %54
  %57 = or disjoint i32 %46, 5
  store i32 %57, ptr %4, align 4, !tbaa !57
  br label %96

58:                                               ; preds = %43
  %59 = icmp slt i32 %13, %12
  br i1 %59, label %61, label %60

60:                                               ; preds = %58
  store i32 0, ptr %4, align 4, !tbaa !57
  store i32 0, ptr %3, align 4, !tbaa !57
  br label %96

61:                                               ; preds = %58
  %62 = icmp slt i32 %14, %12
  br i1 %62, label %96, label %63

63:                                               ; preds = %61
  %64 = or disjoint i32 %46, 3
  store i32 %64, ptr %4, align 4, !tbaa !57
  br label %96

65:                                               ; preds = %5
  %66 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 26
  store i8 66, ptr %66, align 8, !tbaa !291
  %67 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 14
  %68 = load i32, ptr %67, align 4, !tbaa !183
  %69 = icmp eq i32 %68, 0
  %70 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %71 = load i32, ptr %70, align 8, !tbaa !190
  br i1 %69, label %72, label %89

72:                                               ; preds = %65
  %73 = and i32 %71, 16385
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store i32 0, ptr %2, align 4, !tbaa !57
  store i32 0, ptr %3, align 4, !tbaa !57
  store i32 0, ptr %4, align 4, !tbaa !57
  br label %96

76:                                               ; preds = %72
  %77 = and i32 %71, 6
  %78 = icmp eq i32 %77, 6
  %79 = select i1 %78, i32 2, i32 1
  store i32 %71, ptr %4, align 4, !tbaa !57
  store i32 %79, ptr %3, align 4, !tbaa !57
  %80 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %81 = load i32, ptr %80, align 4, !tbaa !189
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i32, ptr %70, align 8, !tbaa !190
  %85 = and i32 %84, 6
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 1, ptr %2, align 4, !tbaa !57
  br label %96

88:                                               ; preds = %83, %76
  store i32 0, ptr %2, align 4, !tbaa !57
  br label %96

89:                                               ; preds = %65
  %90 = and i32 %71, -8
  %91 = or disjoint i32 %90, 1
  store i32 %91, ptr %4, align 4, !tbaa !57
  store i32 1, ptr %3, align 4, !tbaa !57
  %92 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %93 = load i32, ptr %92, align 4, !tbaa !189
  %94 = icmp eq i32 %93, 1
  %95 = zext i1 %94 to i32
  store i32 %95, ptr %2, align 4, !tbaa !57
  br label %96

96:                                               ; preds = %23, %56, %54, %53, %63, %61, %60, %28, %89, %87, %88, %75
  ret void
}

declare i32 @BKE_sequence_tx_get_final_left(ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

declare i32 @BKE_sequence_tx_get_final_right(ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

declare signext i16 @ANIM_get_normalization_flags(ptr noundef) local_unnamed_addr #7

declare void @UI_view2d_scale_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare float @ANIM_unit_mapping_get_factor(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @bezt_to_transdata(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8, ptr noundef %9, ptr noundef %10, float noundef %11) unnamed_addr #6 {
  %13 = zext nneg i32 %5 to i64
  %14 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 %13
  %15 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1
  %16 = icmp eq ptr %3, null
  %17 = load float, ptr %14, align 4, !tbaa !112
  br i1 %16, label %42, label %18

18:                                               ; preds = %12
  %19 = tail call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %3, float noundef %17, i16 noundef signext 2) #18
  store float %19, ptr %1, align 8, !tbaa !112
  %20 = getelementptr inbounds float, ptr %14, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !112
  %22 = fmul float %21, %11
  %23 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  store float %22, ptr %23, align 4, !tbaa !112
  %24 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  store float 0.000000e+00, ptr %24, align 8, !tbaa !112
  %25 = getelementptr inbounds %struct.TransData2D, ptr %1, i64 0, i32 1
  store ptr %14, ptr %25, align 8, !tbaa !205
  %26 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 3
  store ptr %1, ptr %26, align 8, !tbaa !209
  %27 = load float, ptr %15, align 4, !tbaa !112
  %28 = tail call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %3, float noundef %27, i16 noundef signext 2) #18
  %29 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 7
  store float %28, ptr %29, align 4, !tbaa !112
  %30 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !112
  %32 = fmul float %31, %11
  %33 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 7, i64 1
  store float %32, ptr %33, align 4, !tbaa !112
  %34 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 7, i64 2
  store float 0.000000e+00, ptr %34, align 4, !tbaa !112
  %35 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 4
  %36 = load ptr, ptr %26, align 8, !tbaa !209
  %37 = load float, ptr %36, align 4, !tbaa !112
  store float %37, ptr %35, align 4, !tbaa !112
  %38 = getelementptr inbounds float, ptr %36, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !112
  %40 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 4, i64 1
  store float %39, ptr %40, align 4, !tbaa !112
  %41 = getelementptr inbounds float, ptr %36, i64 2
  br label %63

42:                                               ; preds = %12
  store float %17, ptr %1, align 8, !tbaa !112
  %43 = getelementptr inbounds float, ptr %14, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !112
  %45 = fmul float %44, %11
  %46 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  store float %45, ptr %46, align 4, !tbaa !112
  %47 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  store float 0.000000e+00, ptr %47, align 8, !tbaa !112
  %48 = getelementptr inbounds %struct.TransData2D, ptr %1, i64 0, i32 1
  store ptr %14, ptr %48, align 8, !tbaa !205
  %49 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 3
  store ptr %1, ptr %49, align 8, !tbaa !209
  %50 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 7
  %51 = load float, ptr %15, align 4, !tbaa !112
  store float %51, ptr %50, align 4, !tbaa !112
  %52 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !112
  %54 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 7, i64 1
  store float %53, ptr %54, align 4, !tbaa !112
  %55 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !112
  %57 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 7, i64 2
  store float %56, ptr %57, align 4, !tbaa !112
  %58 = fmul float %53, %11
  store float %58, ptr %54, align 4, !tbaa !112
  %59 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 4
  %60 = load float, ptr %1, align 4, !tbaa !112
  store float %60, ptr %59, align 4, !tbaa !112
  %61 = load float, ptr %46, align 4, !tbaa !112
  %62 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 4, i64 1
  store float %61, ptr %62, align 4, !tbaa !112
  br label %63

63:                                               ; preds = %42, %18
  %64 = phi ptr [ %47, %42 ], [ %41, %18 ]
  %65 = load float, ptr %64, align 4, !tbaa !112
  %66 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 4, i64 2
  store float %65, ptr %66, align 4, !tbaa !112
  %67 = icmp eq i8 %7, 0
  %68 = getelementptr inbounds %struct.TransData2D, ptr %1, i64 0, i32 2
  br i1 %67, label %69, label %82

69:                                               ; preds = %63
  store ptr %4, ptr %68, align 8, !tbaa !237
  %70 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  %71 = getelementptr inbounds %struct.TransData2D, ptr %1, i64 0, i32 3
  store ptr %70, ptr %71, align 8, !tbaa !238
  %72 = getelementptr inbounds %struct.TransData2D, ptr %1, i64 0, i32 4
  %73 = load float, ptr %4, align 4, !tbaa !112
  store float %73, ptr %72, align 4, !tbaa !112
  %74 = getelementptr inbounds float, ptr %4, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !112
  %76 = getelementptr inbounds %struct.TransData2D, ptr %1, i64 0, i32 4, i64 1
  store float %75, ptr %76, align 4, !tbaa !112
  %77 = getelementptr inbounds %struct.TransData2D, ptr %1, i64 0, i32 5
  %78 = load float, ptr %70, align 4, !tbaa !112
  store float %78, ptr %77, align 4, !tbaa !112
  %79 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !112
  %81 = getelementptr inbounds %struct.TransData2D, ptr %1, i64 0, i32 5, i64 1
  store float %80, ptr %81, align 4, !tbaa !112
  br label %83

82:                                               ; preds = %63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %68, i8 0, i64 16, i1 false)
  br label %83

83:                                               ; preds = %82, %69
  %84 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %84, i8 0, i64 36, i1 false)
  %85 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %85, align 8, !tbaa !112
  %86 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 13
  store ptr null, ptr %86, align 8, !tbaa !372
  %87 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 5
  store ptr null, ptr %87, align 8, !tbaa !441
  %88 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 15
  store ptr %3, ptr %88, align 8, !tbaa !169
  %89 = icmp eq i8 %6, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 16
  %92 = load i32, ptr %91, align 8, !tbaa !49
  %93 = or i32 %92, 1
  store i32 %93, ptr %91, align 8, !tbaa !49
  br label %94

94:                                               ; preds = %83, %90
  %95 = phi float [ 0.000000e+00, %90 ], [ 0x47EFFFFFE0000000, %83 ]
  store float %95, ptr %0, align 8, !tbaa !55
  br i1 %67, label %100, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 16
  %98 = load i32, ptr %97, align 8, !tbaa !49
  %99 = or i32 %98, 16384
  store i32 %99, ptr %97, align 8, !tbaa !49
  br label %100

100:                                              ; preds = %96, %94
  %101 = icmp eq i8 %8, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 16
  %104 = load i32, ptr %103, align 8, !tbaa !49
  %105 = or i32 %104, 32768
  store i32 %105, ptr %103, align 8, !tbaa !49
  br label %106

106:                                              ; preds = %102, %100
  %107 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 8
  tail call void @copy_m3_m3(ptr noundef nonnull %107, ptr noundef %9) #18
  %108 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 9
  tail call void @copy_m3_m3(ptr noundef nonnull %108, ptr noundef %10) #18
  store float %11, ptr %2, align 4, !tbaa !248
  ret void
}

declare void @nodeToView(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #7

declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #7

declare void @BKE_movieclip_get_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @BKE_tracking_get_active_tracks(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @transDataTrackingFree(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TransDataTracking, ptr %3, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !399
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  tail call void %10(ptr noundef nonnull %7) #18
  br label %11

11:                                               ; preds = %9, %5
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  tail call void %12(ptr noundef nonnull %3) #18
  store ptr null, ptr %2, align 8, !tbaa !96
  br label %13

13:                                               ; preds = %11, %1
  ret void
}

declare ptr @BKE_tracking_marker_ensure(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @markerToTransDataInit(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef readonly %8, float noundef %9, float noundef %10) unnamed_addr #6 {
  %12 = icmp eq i32 %5, 1
  %13 = icmp ne ptr %8, null
  %14 = and i1 %12, %13
  store i32 0, ptr %2, align 8, !tbaa !385
  %15 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  br i1 %14, label %16, label %23

16:                                               ; preds = %11
  %17 = load float, ptr %7, align 4, !tbaa !112
  %18 = fmul float %17, %9
  store float %18, ptr %1, align 8, !tbaa !112
  %19 = getelementptr inbounds float, ptr %7, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !112
  %21 = fmul float %20, %10
  store float %21, ptr %15, align 4, !tbaa !112
  %22 = getelementptr inbounds %struct.TransDataTracking, ptr %2, i64 0, i32 4
  store ptr %6, ptr %22, align 8, !tbaa !709
  br label %29

23:                                               ; preds = %11
  %24 = load float, ptr %6, align 4, !tbaa !112
  %25 = fmul float %24, %9
  store float %25, ptr %1, align 8, !tbaa !112
  %26 = getelementptr inbounds float, ptr %6, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !112
  %28 = fmul float %27, %10
  store float %28, ptr %15, align 4, !tbaa !112
  br label %29

29:                                               ; preds = %23, %16
  %30 = getelementptr inbounds %struct.TransData2D, ptr %1, i64 0, i32 1
  store ptr %6, ptr %30, align 8, !tbaa !205
  %31 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  store float 0.000000e+00, ptr %31, align 8, !tbaa !112
  %32 = getelementptr inbounds %struct.TransDataTracking, ptr %2, i64 0, i32 3
  store ptr %7, ptr %32, align 8, !tbaa !398
  %33 = getelementptr inbounds %struct.TransDataTracking, ptr %2, i64 0, i32 2
  store i32 %5, ptr %33, align 8, !tbaa !397
  %34 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %3, i64 0, i32 8
  %35 = load i32, ptr %34, align 8, !tbaa !390
  %36 = getelementptr inbounds %struct.TransDataTracking, ptr %2, i64 0, i32 9
  store i32 %35, ptr %36, align 8, !tbaa !400
  %37 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %3, i64 0, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !391
  %39 = getelementptr inbounds %struct.TransDataTracking, ptr %2, i64 0, i32 10
  store ptr %38, ptr %39, align 8, !tbaa !401
  %40 = getelementptr inbounds %struct.TransDataTracking, ptr %2, i64 0, i32 14
  store ptr %3, ptr %40, align 8, !tbaa !387
  %41 = icmp eq ptr %7, null
  br i1 %41, label %58, label %42

42:                                               ; preds = %29
  br i1 %14, label %52, label %43

43:                                               ; preds = %42
  %44 = load float, ptr %7, align 4, !tbaa !112
  %45 = load float, ptr %1, align 8, !tbaa !112
  %46 = tail call float @llvm.fmuladd.f32(float %44, float %9, float %45)
  store float %46, ptr %1, align 8, !tbaa !112
  %47 = getelementptr inbounds float, ptr %7, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !112
  %49 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !112
  %51 = tail call float @llvm.fmuladd.f32(float %48, float %10, float %50)
  store float %51, ptr %49, align 4, !tbaa !112
  br label %52

52:                                               ; preds = %43, %42
  %53 = getelementptr inbounds %struct.TransDataTracking, ptr %2, i64 0, i32 6
  %54 = load float, ptr %7, align 4, !tbaa !112
  store float %54, ptr %53, align 4, !tbaa !112
  %55 = getelementptr inbounds float, ptr %7, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !112
  %57 = getelementptr inbounds %struct.TransDataTracking, ptr %2, i64 0, i32 6, i64 1
  store float %56, ptr %57, align 4, !tbaa !112
  br label %58

58:                                               ; preds = %52, %29
  br i1 %13, label %59, label %65

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.TransDataTracking, ptr %2, i64 0, i32 5
  %61 = load float, ptr %8, align 4, !tbaa !112
  store float %61, ptr %60, align 4, !tbaa !112
  %62 = getelementptr inbounds float, ptr %8, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !112
  %64 = getelementptr inbounds %struct.TransDataTracking, ptr %2, i64 0, i32 5, i64 1
  store float %63, ptr %64, align 4, !tbaa !112
  br label %65

65:                                               ; preds = %59, %58
  %66 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 16
  store i32 0, ptr %66, align 8, !tbaa !49
  %67 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 3
  store ptr %1, ptr %67, align 8, !tbaa !209
  %68 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 4
  %69 = load float, ptr %1, align 4, !tbaa !112
  store float %69, ptr %68, align 4, !tbaa !112
  %70 = getelementptr inbounds float, ptr %1, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !112
  %72 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 4, i64 1
  store float %71, ptr %72, align 4, !tbaa !112
  %73 = load float, ptr %31, align 4, !tbaa !112
  %74 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 4, i64 2
  store float %73, ptr %74, align 4, !tbaa !112
  store i32 256, ptr %66, align 8, !tbaa !49
  %75 = load float, ptr %4, align 4, !tbaa !112
  %76 = fmul float %75, %9
  %77 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 7
  store float %76, ptr %77, align 4, !tbaa !112
  %78 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !112
  %80 = fmul float %79, %10
  %81 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 7, i64 1
  store float %80, ptr %81, align 4, !tbaa !112
  %82 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %82, i8 0, i64 36, i1 false)
  %83 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %83, align 8, !tbaa !112
  %84 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 13
  store ptr null, ptr %84, align 8, !tbaa !372
  %85 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 5
  store ptr null, ptr %85, align 8, !tbaa !441
  store i32 257, ptr %66, align 8, !tbaa !49
  store float 0.000000e+00, ptr %0, align 8, !tbaa !55
  %86 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 8
  tail call void @unit_m3(ptr noundef nonnull %86) #18
  %87 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 9
  tail call void @unit_m3(ptr noundef nonnull %87) #18
  ret void
}

declare ptr @BKE_tracking_plane_marker_ensure(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @EDBM_verts_mirror_cache_begin(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

declare i32 @modifiers_getCageIndex(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

declare zeroext i8 @modifiers_isCorrectableDeformed(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @editbmesh_get_first_deform_matrices(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @BKE_crazyspace_get_mapped_editverts(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @BKE_crazyspace_set_quats_editmesh(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

declare void @_va_mul_m3_series_4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @EDBM_verts_mirror_get(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @EDBM_verts_mirror_cache_end(ptr noundef) local_unnamed_addr #7

declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @BLI_linklist_prepend_pool(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @BLI_linklist_pop_pool(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @BLI_mempool_count(ptr noundef) local_unnamed_addr #7

declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #7

declare i32 @BM_mesh_calc_edge_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

declare i32 @BM_mesh_calc_face_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

declare void @fill_vn_i(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

declare void @BM_editselection_center(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @BM_editselection_normal(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @BM_editselection_plane(ptr noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i8 @createSpaceNormalTangent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @axis_dominant_v3_to_m3(ptr noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i8 @invert_m3(ptr noundef) local_unnamed_addr #7

declare zeroext i8 @createSpaceNormal(ptr noundef, ptr noundef) local_unnamed_addr #7

declare float @BM_vert_calc_shell_factor_ex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

declare ptr @BKE_curve_editNurbs_get(ptr noundef) local_unnamed_addr #7

declare void @BKE_nurb_bezt_calc_normal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @BKE_nurb_bezt_calc_plane(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @calc_distanceCurveVerts(ptr noundef %0, ptr noundef %1) unnamed_addr #14 {
  %3 = icmp ugt ptr %0, %1
  br i1 %3, label %4, label %6

4:                                                ; preds = %42, %2
  %5 = icmp ult ptr %1, %0
  br i1 %5, label %98, label %46

6:                                                ; preds = %2, %42
  %7 = phi ptr [ %44, %42 ], [ %0, %2 ]
  %8 = phi ptr [ %43, %42 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.TransData, ptr %7, i64 0, i32 16
  %10 = load i32, ptr %9, align 8, !tbaa !49
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  store float 0.000000e+00, ptr %7, align 8, !tbaa !55
  br label %42

14:                                               ; preds = %6
  %15 = icmp eq ptr %8, null
  br i1 %15, label %40, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.TransData, ptr %8, i64 0, i32 7
  %18 = getelementptr inbounds %struct.TransData, ptr %7, i64 0, i32 7
  %19 = load float, ptr %18, align 4, !tbaa !112
  %20 = load float, ptr %17, align 4, !tbaa !112
  %21 = fsub float %19, %20
  %22 = getelementptr inbounds %struct.TransData, ptr %7, i64 0, i32 7, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !112
  %24 = getelementptr inbounds %struct.TransData, ptr %8, i64 0, i32 7, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !112
  %26 = fsub float %23, %25
  %27 = getelementptr inbounds %struct.TransData, ptr %7, i64 0, i32 7, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !112
  %29 = getelementptr inbounds %struct.TransData, ptr %8, i64 0, i32 7, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !112
  %31 = fsub float %28, %30
  %32 = fmul float %26, %26
  %33 = tail call float @llvm.fmuladd.f32(float %21, float %21, float %32)
  %34 = tail call float @llvm.fmuladd.f32(float %31, float %31, float %33)
  %35 = tail call float @sqrtf(float noundef %34) #18
  %36 = getelementptr inbounds %struct.TransData, ptr %7, i64 -1
  %37 = load float, ptr %36, align 8, !tbaa !55
  %38 = fcmp olt float %35, %37
  %39 = select i1 %38, float %37, float %35
  store float %39, ptr %7, align 8, !tbaa !55
  br label %42

40:                                               ; preds = %14
  store float 0x47EFFFFFE0000000, ptr %7, align 8, !tbaa !55
  %41 = or i32 %10, 16
  store i32 %41, ptr %9, align 8, !tbaa !49
  br label %42

42:                                               ; preds = %13, %40, %16
  %43 = phi ptr [ %7, %13 ], [ %8, %16 ], [ null, %40 ]
  %44 = getelementptr inbounds %struct.TransData, ptr %7, i64 1
  %45 = icmp ugt ptr %44, %1
  br i1 %45, label %4, label %6, !llvm.loop !710

46:                                               ; preds = %4, %94
  %47 = phi ptr [ %96, %94 ], [ %1, %4 ]
  %48 = phi ptr [ %95, %94 ], [ null, %4 ]
  %49 = getelementptr inbounds %struct.TransData, ptr %47, i64 0, i32 16
  %50 = load i32, ptr %49, align 8, !tbaa !49
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %91

53:                                               ; preds = %46
  %54 = icmp eq ptr %48, null
  br i1 %54, label %94, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.TransData, ptr %48, i64 0, i32 7
  %57 = getelementptr inbounds %struct.TransData, ptr %47, i64 0, i32 7
  %58 = load float, ptr %57, align 4, !tbaa !112
  %59 = load float, ptr %56, align 4, !tbaa !112
  %60 = fsub float %58, %59
  %61 = getelementptr inbounds %struct.TransData, ptr %47, i64 0, i32 7, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !112
  %63 = getelementptr inbounds %struct.TransData, ptr %48, i64 0, i32 7, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !112
  %65 = fsub float %62, %64
  %66 = getelementptr inbounds %struct.TransData, ptr %47, i64 0, i32 7, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !112
  %68 = getelementptr inbounds %struct.TransData, ptr %48, i64 0, i32 7, i64 2
  %69 = load float, ptr %68, align 4, !tbaa !112
  %70 = fsub float %67, %69
  %71 = fmul float %65, %65
  %72 = tail call float @llvm.fmuladd.f32(float %60, float %60, float %71)
  %73 = tail call float @llvm.fmuladd.f32(float %70, float %70, float %72)
  %74 = tail call float @sqrtf(float noundef %73) #18
  %75 = load i32, ptr %49, align 8, !tbaa !49
  %76 = and i32 %75, 16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %55
  %79 = load float, ptr %47, align 8, !tbaa !55
  %80 = fcmp olt float %74, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.TransData, ptr %47, i64 1
  %83 = load float, ptr %82, align 8, !tbaa !55
  %84 = fcmp olt float %83, %79
  br i1 %84, label %85, label %94

85:                                               ; preds = %81, %78, %55
  %86 = and i32 %75, -17
  store i32 %86, ptr %49, align 8, !tbaa !49
  %87 = getelementptr inbounds %struct.TransData, ptr %47, i64 1
  %88 = load float, ptr %87, align 8, !tbaa !55
  %89 = fcmp olt float %74, %88
  %90 = select i1 %89, float %88, float %74
  br label %91

91:                                               ; preds = %85, %46
  %92 = phi float [ 0.000000e+00, %46 ], [ %90, %85 ]
  %93 = phi ptr [ %47, %46 ], [ %48, %85 ]
  store float %92, ptr %47, align 8, !tbaa !55
  br label %94

94:                                               ; preds = %91, %81, %53
  %95 = phi ptr [ null, %53 ], [ %48, %81 ], [ %93, %91 ]
  %96 = getelementptr inbounds %struct.TransData, ptr %47, i64 -1
  %97 = icmp ult ptr %96, %0
  br i1 %97, label %98, label %46, !llvm.loop !711

98:                                               ; preds = %94, %4
  ret void
}

declare void @BKE_nurb_handles_test(ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @ED_armature_bone_get_mirrored(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @ED_armature_ebone_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @BKE_armature_from_object(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc noundef signext i16 @pose_grab_with_ik_add(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = icmp eq ptr %3, null
  br i1 %4, label %77, label %5

5:                                                ; preds = %1, %73
  %6 = phi ptr [ %75, %73 ], [ %3, %1 ]
  %7 = phi ptr [ %74, %73 ], [ null, %1 ]
  %8 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !74
  %10 = icmp eq i16 %9, 3
  br i1 %10, label %11, label %73

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !77
  %14 = load ptr, ptr %13, align 8, !tbaa !78
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 3
  %18 = load i16, ptr %17, align 8, !tbaa !80
  %19 = icmp eq i16 %18, 25
  br i1 %19, label %20, label %63

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bKinematicConstraint, ptr %13, i64 0, i32 5
  %22 = load i8, ptr %21, align 8, !tbaa !81
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %63

24:                                               ; preds = %20, %11
  %25 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 9
  %26 = load float, ptr %25, align 8, !tbaa !76
  %27 = fcmp une float %26, 0.000000e+00
  br i1 %27, label %28, label %63

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bKinematicConstraint, ptr %13, i64 0, i32 2
  %30 = load i16, ptr %29, align 2, !tbaa !91
  %31 = or i16 %30, 4
  store i16 %31, ptr %29, align 2, !tbaa !91
  %32 = getelementptr inbounds %struct.bKinematicConstraint, ptr %13, i64 0, i32 3
  %33 = load i16, ptr %32, align 4, !tbaa !93
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %144

35:                                               ; preds = %28, %59
  %36 = phi ptr [ %61, %59 ], [ %0, %28 ]
  %37 = getelementptr inbounds %struct.bPoseChannel, ptr %36, i64 0, i32 7
  %38 = load i16, ptr %37, align 4, !tbaa !84
  %39 = and i16 %38, 8
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.bPoseChannel, ptr %36, i64 0, i32 6
  %43 = load i16, ptr %42, align 2, !tbaa !356
  %44 = or i16 %43, 1024
  store i16 %44, ptr %42, align 2, !tbaa !356
  br label %45

45:                                               ; preds = %41, %35
  %46 = and i16 %38, 16
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.bPoseChannel, ptr %36, i64 0, i32 6
  %50 = load i16, ptr %49, align 2, !tbaa !356
  %51 = or i16 %50, 2048
  store i16 %51, ptr %49, align 2, !tbaa !356
  br label %52

52:                                               ; preds = %48, %45
  %53 = and i16 %38, 32
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.bPoseChannel, ptr %36, i64 0, i32 6
  %57 = load i16, ptr %56, align 2, !tbaa !356
  %58 = or i16 %57, 4096
  store i16 %58, ptr %56, align 2, !tbaa !356
  br label %59

59:                                               ; preds = %52, %55
  %60 = getelementptr inbounds %struct.bPoseChannel, ptr %36, i64 0, i32 13
  %61 = load ptr, ptr %60, align 8, !tbaa !83
  %62 = icmp eq ptr %61, null
  br i1 %62, label %144, label %35

63:                                               ; preds = %24, %20, %16
  %64 = phi ptr [ %13, %24 ], [ %7, %20 ], [ %7, %16 ]
  %65 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 4
  %66 = load i16, ptr %65, align 2, !tbaa !712
  %67 = and i16 %66, 4
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 9
  %71 = load float, ptr %70, align 8, !tbaa !76
  %72 = fcmp une float %71, 0.000000e+00
  br i1 %72, label %144, label %73

73:                                               ; preds = %5, %69, %63
  %74 = phi ptr [ %64, %69 ], [ %64, %63 ], [ %7, %5 ]
  %75 = load ptr, ptr %6, align 8, !tbaa !63
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %5, !llvm.loop !713

77:                                               ; preds = %73, %1
  %78 = phi ptr [ null, %1 ], [ %74, %73 ]
  %79 = tail call ptr @BKE_constraint_add_for_pose(ptr noundef null, ptr noundef %0, ptr noundef nonnull @.str.57, i16 noundef signext 3) #18
  %80 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 9
  %81 = load i8, ptr %80, align 8, !tbaa !90
  %82 = or i8 %81, 9
  store i8 %82, ptr %80, align 8, !tbaa !90
  %83 = getelementptr inbounds %struct.bConstraint, ptr %79, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !77
  %85 = icmp eq ptr %78, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %77
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %84, ptr noundef nonnull align 8 dereferenceable(184) %78, i64 184, i1 false), !tbaa.struct !714
  br label %89

87:                                               ; preds = %77
  %88 = getelementptr inbounds %struct.bKinematicConstraint, ptr %84, i64 0, i32 2
  store i16 1, ptr %88, align 2, !tbaa !91
  br label %89

89:                                               ; preds = %87, %86
  %90 = getelementptr inbounds %struct.bKinematicConstraint, ptr %84, i64 0, i32 2
  %91 = load i16, ptr %90, align 2, !tbaa !91
  %92 = or i16 %91, 44
  store i16 %92, ptr %90, align 2, !tbaa !91
  %93 = getelementptr inbounds %struct.bKinematicConstraint, ptr %84, i64 0, i32 11
  %94 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 32
  %95 = load float, ptr %94, align 4, !tbaa !112
  store float %95, ptr %93, align 4, !tbaa !112
  %96 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 32, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !112
  %98 = getelementptr inbounds %struct.bKinematicConstraint, ptr %84, i64 0, i32 11, i64 1
  store float %97, ptr %98, align 4, !tbaa !112
  %99 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 32, i64 2
  %100 = load float, ptr %99, align 4, !tbaa !112
  %101 = getelementptr inbounds %struct.bKinematicConstraint, ptr %84, i64 0, i32 11, i64 2
  store float %100, ptr %101, align 4, !tbaa !112
  %102 = getelementptr inbounds %struct.bKinematicConstraint, ptr %84, i64 0, i32 3
  store i16 0, ptr %102, align 4, !tbaa !93
  br label %103

103:                                              ; preds = %139, %89
  %104 = phi i16 [ 0, %89 ], [ %129, %139 ]
  %105 = phi ptr [ %0, %89 ], [ %140, %139 ]
  %106 = getelementptr inbounds %struct.bPoseChannel, ptr %105, i64 0, i32 7
  %107 = load i16, ptr %106, align 4, !tbaa !84
  %108 = and i16 %107, 8
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.bPoseChannel, ptr %105, i64 0, i32 6
  %112 = load i16, ptr %111, align 2, !tbaa !356
  %113 = or i16 %112, 1024
  store i16 %113, ptr %111, align 2, !tbaa !356
  br label %114

114:                                              ; preds = %110, %103
  %115 = and i16 %107, 16
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.bPoseChannel, ptr %105, i64 0, i32 6
  %119 = load i16, ptr %118, align 2, !tbaa !356
  %120 = or i16 %119, 2048
  store i16 %120, ptr %118, align 2, !tbaa !356
  br label %121

121:                                              ; preds = %117, %114
  %122 = and i16 %107, 32
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.bPoseChannel, ptr %105, i64 0, i32 6
  %126 = load i16, ptr %125, align 2, !tbaa !356
  %127 = or i16 %126, 4096
  store i16 %127, ptr %125, align 2, !tbaa !356
  br label %128

128:                                              ; preds = %124, %121
  %129 = add i16 %104, 1
  %130 = getelementptr inbounds %struct.bPoseChannel, ptr %105, i64 0, i32 12
  %131 = load ptr, ptr %130, align 8, !tbaa !67
  %132 = getelementptr inbounds %struct.Bone, ptr %131, i64 0, i32 10
  %133 = load i32, ptr %132, align 8, !tbaa !71
  %134 = and i32 %133, 16
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %128
  %137 = getelementptr inbounds %struct.bPoseChannel, ptr %105, i64 0, i32 13
  %138 = load ptr, ptr %137, align 8, !tbaa !83
  br label %139

139:                                              ; preds = %128, %136
  %140 = phi ptr [ %138, %136 ], [ null, %128 ]
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %103, !llvm.loop !715

142:                                              ; preds = %139
  store i16 %129, ptr %102, align 4, !tbaa !93
  %143 = getelementptr inbounds %struct.bKinematicConstraint, ptr %84, i64 0, i32 4
  store i16 %129, ptr %143, align 2, !tbaa !92
  br label %144

144:                                              ; preds = %69, %59, %28, %142
  %145 = phi i16 [ 1, %142 ], [ 0, %28 ], [ 0, %59 ], [ 0, %69 ]
  ret i16 %145
}

; Function Attrs: nounwind uwtable
define internal fastcc signext i16 @pose_grab_with_ik_children(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2, %17
  %7 = phi ptr [ %20, %17 ], [ %4, %2 ]
  %8 = phi i16 [ %19, %17 ], [ 0, %2 ]
  %9 = phi i16 [ %18, %17 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.Bone, ptr %7, i64 0, i32 10
  %11 = load i32, ptr %10, align 8, !tbaa !71
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %6
  %15 = tail call fastcc signext i16 @pose_grab_with_ik_children(ptr noundef %0, ptr noundef nonnull %7)
  %16 = add i16 %15, %8
  br label %17

17:                                               ; preds = %6, %14
  %18 = phi i16 [ 1, %14 ], [ %9, %6 ]
  %19 = phi i16 [ %16, %14 ], [ %8, %6 ]
  %20 = load ptr, ptr %7, align 8, !tbaa !63
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %6, !llvm.loop !716

22:                                               ; preds = %17
  %23 = icmp eq i16 %18, 0
  br label %24

24:                                               ; preds = %22, %2
  %25 = phi i1 [ true, %2 ], [ %23, %22 ]
  %26 = phi i16 [ 0, %2 ], [ %19, %22 ]
  br i1 %25, label %27, label %34

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 5
  %29 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %0, ptr noundef nonnull %28) #18
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = tail call fastcc signext i16 @pose_grab_with_ik_add(ptr noundef nonnull %29), !range !685
  %33 = add i16 %32, %26
  br label %34

34:                                               ; preds = %27, %31, %24
  %35 = phi i16 [ %26, %24 ], [ %33, %31 ], [ %26, %27 ]
  ret i16 %35
}

declare ptr @BKE_constraint_add_for_pose(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #7

declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @BKE_pchan_to_pose_mat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @constraints_list_needinv(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #15 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %43, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !63
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %4, %40
  %8 = phi ptr [ %41, %40 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.bConstraint, ptr %8, i64 0, i32 4
  %10 = load i16, ptr %9, align 2, !tbaa !712
  %11 = and i16 %10, 4
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.bConstraint, ptr %8, i64 0, i32 9
  %15 = load float, ptr %14, align 8, !tbaa !76
  %16 = fcmp une float %15, 0.000000e+00
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bConstraint, ptr %8, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !74
  switch i16 %19, label %40 [
    i16 4, label %43
    i16 18, label %43
    i16 28, label %43
    i16 26, label %43
    i16 1, label %20
    i16 8, label %27
    i16 19, label %37
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.bConstraint, ptr %8, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !77
  %23 = getelementptr inbounds %struct.bChildOfConstraint, ptr %22, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !717
  %25 = and i32 %24, 7
  %26 = icmp eq i32 %25, 7
  br i1 %26, label %43, label %40

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.bConstraint, ptr %8, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !77
  %30 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %29, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !719
  %32 = and i32 %31, 128
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  %35 = load i32, ptr %0, align 8, !tbaa !188
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %43, label %40

37:                                               ; preds = %17
  %38 = load i32, ptr %0, align 8, !tbaa !188
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %43, label %40

40:                                               ; preds = %27, %34, %20, %17, %7, %13, %37
  %41 = load ptr, ptr %8, align 8, !tbaa !63
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %7, !llvm.loop !721

43:                                               ; preds = %20, %34, %17, %17, %17, %17, %37, %40, %4, %2
  %44 = phi i8 [ 0, %2 ], [ 0, %4 ], [ 0, %40 ], [ 1, %37 ], [ 1, %17 ], [ 1, %17 ], [ 1, %17 ], [ 1, %17 ], [ 1, %34 ], [ 1, %20 ]
  ret i8 %44
}

declare void @_va_mul_m3_series_3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @CTX_data_active_base(ptr noundef) local_unnamed_addr #7

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #7

declare ptr @PE_settings(ptr noundef) local_unnamed_addr #7

declare void @unit_m4(ptr noundef) local_unnamed_addr #7

declare i32 @ctx_data_list_count(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @CTX_data_selected_objects(ptr noundef, ptr noundef) #7

declare i32 @CTX_data_selected_bases(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @ObjectToTransData(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %10 = load ptr, ptr %9, align 8, !tbaa !119
  %11 = load i32, ptr %0, align 8, !tbaa !188
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %69, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 128
  %15 = load ptr, ptr %14, align 8, !tbaa !370
  %16 = icmp eq ptr %15, null
  br i1 %16, label %69, label %17

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  %18 = tail call float @BKE_scene_frame_get(ptr noundef %10) #18
  %19 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 47
  %20 = load ptr, ptr %19, align 8, !tbaa !371
  %21 = tail call zeroext i8 @BKE_rigidbody_check_sim_running(ptr noundef %20, float noundef %18) #18
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %68, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 13
  %25 = load ptr, ptr %24, align 8, !tbaa !372
  %26 = getelementptr inbounds %struct.TransDataExtension, ptr %25, i64 0, i32 18
  %27 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 33
  %28 = load float, ptr %27, align 4, !tbaa !112
  store float %28, ptr %26, align 4, !tbaa !112
  %29 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 33, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !112
  %31 = getelementptr inbounds %struct.TransDataExtension, ptr %25, i64 0, i32 18, i64 1
  store float %30, ptr %31, align 4, !tbaa !112
  %32 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 33, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !112
  %34 = getelementptr inbounds %struct.TransDataExtension, ptr %25, i64 0, i32 18, i64 2
  store float %33, ptr %34, align 4, !tbaa !112
  %35 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 83
  %36 = load i16, ptr %35, align 8, !tbaa !645
  %37 = icmp sgt i16 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.TransDataExtension, ptr %25, i64 0, i32 19
  %40 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 39
  %41 = load float, ptr %40, align 4, !tbaa !112
  store float %41, ptr %39, align 4, !tbaa !112
  %42 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 39, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !112
  %44 = getelementptr inbounds %struct.TransDataExtension, ptr %25, i64 0, i32 19, i64 1
  store float %43, ptr %44, align 4, !tbaa !112
  %45 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 39, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !112
  %47 = getelementptr inbounds %struct.TransDataExtension, ptr %25, i64 0, i32 19, i64 2
  store float %46, ptr %47, align 4, !tbaa !112
  br label %66

48:                                               ; preds = %23
  %49 = icmp eq i16 %36, -1
  br i1 %49, label %50, label %63

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 45
  %52 = load float, ptr %51, align 8, !tbaa !722
  %53 = getelementptr inbounds %struct.TransDataExtension, ptr %25, i64 0, i32 22
  store float %52, ptr %53, align 8, !tbaa !373
  %54 = getelementptr inbounds %struct.TransDataExtension, ptr %25, i64 0, i32 21
  %55 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 43
  %56 = load float, ptr %55, align 4, !tbaa !112
  store float %56, ptr %54, align 4, !tbaa !112
  %57 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 43, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !112
  %59 = getelementptr inbounds %struct.TransDataExtension, ptr %25, i64 0, i32 21, i64 1
  store float %58, ptr %59, align 4, !tbaa !112
  %60 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 43, i64 2
  %61 = load float, ptr %60, align 4, !tbaa !112
  %62 = getelementptr inbounds %struct.TransDataExtension, ptr %25, i64 0, i32 21, i64 2
  store float %61, ptr %62, align 4, !tbaa !112
  br label %66

63:                                               ; preds = %48
  %64 = getelementptr inbounds %struct.TransDataExtension, ptr %25, i64 0, i32 20
  %65 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 41
  tail call void @copy_qt_qt(ptr noundef nonnull %64, ptr noundef nonnull %65) #18
  br label %66

66:                                               ; preds = %50, %63, %38
  %67 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @mat4_to_loc_rot_size(ptr noundef nonnull %27, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %67) #18
  call void @BKE_object_mat3_to_rot(ptr noundef %2, ptr noundef nonnull %4, i8 noundef zeroext 0) #18
  br label %68

68:                                               ; preds = %66, %17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #18
  br label %69

69:                                               ; preds = %68, %13, %3
  %70 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 10
  %71 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %70, ptr noundef nonnull %71) #18
  call void @normalize_m3(ptr noundef nonnull %70) #18
  %72 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 106
  %73 = load ptr, ptr %72, align 8, !tbaa !723
  %74 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 12
  store ptr %73, ptr %74, align 8, !tbaa !692
  %75 = call fastcc zeroext i8 @constraints_list_needinv(ptr noundef nonnull %0, ptr noundef nonnull %72)
  %76 = load i32, ptr %0, align 8, !tbaa !188
  %77 = icmp ne i32 %76, 0
  %78 = icmp eq i8 %75, 0
  %79 = and i1 %78, %77
  br i1 %79, label %80, label %87

80:                                               ; preds = %69
  %81 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 55
  %82 = load i16, ptr %81, align 8, !tbaa !724
  %83 = or i16 %82, 8192
  store i16 %83, ptr %81, align 8, !tbaa !724
  %84 = load ptr, ptr %9, align 8, !tbaa !119
  call void @BKE_object_where_is_calc(ptr noundef %84, ptr noundef %2) #18
  %85 = load i16, ptr %81, align 8, !tbaa !724
  %86 = and i16 %85, -8193
  store i16 %86, ptr %81, align 8, !tbaa !724
  br label %89

87:                                               ; preds = %69
  %88 = load ptr, ptr %9, align 8, !tbaa !119
  call void @BKE_object_where_is_calc(ptr noundef %88, ptr noundef %2) #18
  br label %89

89:                                               ; preds = %80, %87
  %90 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 11
  store ptr %2, ptr %90, align 8, !tbaa !364
  %91 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 33
  %92 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 3
  store ptr %91, ptr %92, align 8, !tbaa !209
  %93 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4
  %94 = load float, ptr %91, align 4, !tbaa !112
  store float %94, ptr %93, align 4, !tbaa !112
  %95 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 33, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !112
  %97 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4, i64 1
  store float %96, ptr %97, align 4, !tbaa !112
  %98 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 33, i64 2
  %99 = load float, ptr %98, align 4, !tbaa !112
  %100 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4, i64 2
  store float %99, ptr %100, align 4, !tbaa !112
  %101 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 83
  %102 = load i16, ptr %101, align 8, !tbaa !645
  %103 = icmp sgt i16 %102, 0
  %104 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 13
  %105 = load ptr, ptr %104, align 8, !tbaa !372
  %106 = getelementptr inbounds %struct.TransDataExtension, ptr %105, i64 0, i32 3
  br i1 %103, label %107, label %128

107:                                              ; preds = %89
  %108 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 39
  store ptr %108, ptr %106, align 8, !tbaa !426
  %109 = getelementptr inbounds %struct.TransDataExtension, ptr %105, i64 0, i32 9
  store ptr null, ptr %109, align 8, !tbaa !688
  %110 = getelementptr inbounds %struct.TransDataExtension, ptr %105, i64 0, i32 7
  store ptr null, ptr %110, align 8, !tbaa !689
  %111 = getelementptr inbounds %struct.TransDataExtension, ptr %105, i64 0, i32 5
  store ptr null, ptr %111, align 8, !tbaa !605
  %112 = getelementptr inbounds %struct.TransDataExtension, ptr %105, i64 0, i32 4
  %113 = load float, ptr %108, align 4, !tbaa !112
  store float %113, ptr %112, align 4, !tbaa !112
  %114 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 39, i64 1
  %115 = load float, ptr %114, align 4, !tbaa !112
  %116 = getelementptr inbounds %struct.TransDataExtension, ptr %105, i64 0, i32 4, i64 1
  store float %115, ptr %116, align 4, !tbaa !112
  %117 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 39, i64 2
  %118 = load float, ptr %117, align 4, !tbaa !112
  %119 = getelementptr inbounds %struct.TransDataExtension, ptr %105, i64 0, i32 4, i64 2
  store float %118, ptr %119, align 4, !tbaa !112
  %120 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 40
  %121 = load float, ptr %120, align 4, !tbaa !112
  store float %121, ptr %105, align 4, !tbaa !112
  %122 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 40, i64 1
  %123 = load float, ptr %122, align 4, !tbaa !112
  %124 = getelementptr inbounds float, ptr %105, i64 1
  store float %123, ptr %124, align 4, !tbaa !112
  %125 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 40, i64 2
  %126 = load float, ptr %125, align 4, !tbaa !112
  %127 = getelementptr inbounds float, ptr %105, i64 2
  store float %126, ptr %127, align 4, !tbaa !112
  br label %155

128:                                              ; preds = %89
  %129 = icmp eq i16 %102, -1
  store ptr null, ptr %106, align 8, !tbaa !426
  br i1 %129, label %130, label %146

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 43
  %132 = getelementptr inbounds %struct.TransDataExtension, ptr %105, i64 0, i32 9
  store ptr %131, ptr %132, align 8, !tbaa !688
  %133 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 45
  %134 = getelementptr inbounds %struct.TransDataExtension, ptr %105, i64 0, i32 7
  store ptr %133, ptr %134, align 8, !tbaa !689
  %135 = getelementptr inbounds %struct.TransDataExtension, ptr %105, i64 0, i32 5
  store ptr null, ptr %135, align 8, !tbaa !605
  %136 = load float, ptr %133, align 8, !tbaa !722
  %137 = getelementptr inbounds %struct.TransDataExtension, ptr %105, i64 0, i32 8
  store float %136, ptr %137, align 8, !tbaa !690
  %138 = getelementptr inbounds %struct.TransDataExtension, ptr %105, i64 0, i32 10
  %139 = load float, ptr %131, align 4, !tbaa !112
  store float %139, ptr %138, align 4, !tbaa !112
  %140 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 43, i64 1
  %141 = load float, ptr %140, align 4, !tbaa !112
  %142 = getelementptr inbounds %struct.TransDataExtension, ptr %105, i64 0, i32 10, i64 1
  store float %141, ptr %142, align 4, !tbaa !112
  %143 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 43, i64 2
  %144 = load float, ptr %143, align 4, !tbaa !112
  %145 = getelementptr inbounds %struct.TransDataExtension, ptr %105, i64 0, i32 10, i64 2
  store float %144, ptr %145, align 4, !tbaa !112
  br label %155

146:                                              ; preds = %128
  %147 = getelementptr inbounds %struct.TransDataExtension, ptr %105, i64 0, i32 9
  store ptr null, ptr %147, align 8, !tbaa !688
  %148 = getelementptr inbounds %struct.TransDataExtension, ptr %105, i64 0, i32 7
  store ptr null, ptr %148, align 8, !tbaa !689
  %149 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 41
  %150 = getelementptr inbounds %struct.TransDataExtension, ptr %105, i64 0, i32 5
  store ptr %149, ptr %150, align 8, !tbaa !605
  %151 = getelementptr inbounds %struct.TransDataExtension, ptr %105, i64 0, i32 6
  call void @copy_qt_qt(ptr noundef nonnull %151, ptr noundef nonnull %149) #18
  %152 = load ptr, ptr %104, align 8, !tbaa !372
  %153 = getelementptr inbounds %struct.TransDataExtension, ptr %152, i64 0, i32 1
  %154 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 42
  call void @copy_qt_qt(ptr noundef nonnull %153, ptr noundef nonnull %154) #18
  br label %155

155:                                              ; preds = %130, %146, %107
  %156 = load i16, ptr %101, align 8, !tbaa !645
  %157 = sext i16 %156 to i32
  %158 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 13
  %159 = load ptr, ptr %158, align 8, !tbaa !372
  %160 = getelementptr inbounds %struct.TransDataExtension, ptr %159, i64 0, i32 17
  store i32 %157, ptr %160, align 8, !tbaa !646
  %161 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 36
  %162 = getelementptr inbounds %struct.TransDataExtension, ptr %159, i64 0, i32 11
  store ptr %161, ptr %162, align 8, !tbaa !427
  %163 = getelementptr inbounds %struct.TransDataExtension, ptr %159, i64 0, i32 12
  %164 = load float, ptr %161, align 4, !tbaa !112
  store float %164, ptr %163, align 4, !tbaa !112
  %165 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 36, i64 1
  %166 = load float, ptr %165, align 4, !tbaa !112
  %167 = getelementptr inbounds %struct.TransDataExtension, ptr %159, i64 0, i32 12, i64 1
  store float %166, ptr %167, align 4, !tbaa !112
  %168 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 36, i64 2
  %169 = load float, ptr %168, align 4, !tbaa !112
  %170 = getelementptr inbounds %struct.TransDataExtension, ptr %159, i64 0, i32 12, i64 2
  store float %169, ptr %170, align 4, !tbaa !112
  %171 = getelementptr inbounds %struct.TransDataExtension, ptr %159, i64 0, i32 2
  %172 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 38
  %173 = load float, ptr %172, align 4, !tbaa !112
  store float %173, ptr %171, align 4, !tbaa !112
  %174 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 38, i64 1
  %175 = load float, ptr %174, align 4, !tbaa !112
  %176 = getelementptr inbounds %struct.TransDataExtension, ptr %159, i64 0, i32 2, i64 1
  store float %175, ptr %176, align 4, !tbaa !112
  %177 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 38, i64 2
  %178 = load float, ptr %177, align 4, !tbaa !112
  %179 = getelementptr inbounds %struct.TransDataExtension, ptr %159, i64 0, i32 2, i64 2
  store float %178, ptr %179, align 4, !tbaa !112
  %180 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7
  %181 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47, i64 3
  %182 = load float, ptr %181, align 4, !tbaa !112
  store float %182, ptr %180, align 4, !tbaa !112
  %183 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47, i64 3, i64 1
  %184 = load float, ptr %183, align 4, !tbaa !112
  %185 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7, i64 1
  store float %184, ptr %185, align 4, !tbaa !112
  %186 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47, i64 3, i64 2
  %187 = load float, ptr %186, align 4, !tbaa !112
  %188 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7, i64 2
  store float %187, ptr %188, align 4, !tbaa !112
  %189 = getelementptr inbounds %struct.TransDataExtension, ptr %159, i64 0, i32 13
  call void @copy_m4_m4(ptr noundef nonnull %189, ptr noundef nonnull %71) #18
  %190 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 9
  %191 = load ptr, ptr %190, align 8, !tbaa !629
  %192 = icmp ne ptr %191, null
  %193 = icmp ne i8 %75, 0
  %194 = or i1 %193, %192
  br i1 %194, label %195, label %200

195:                                              ; preds = %155
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #18
  call void @BKE_object_to_mat3(ptr noundef %2, ptr noundef nonnull %6) #18
  call void @copy_m3_m4(ptr noundef nonnull %7, ptr noundef nonnull %71) #18
  %196 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %8, ptr noundef nonnull %7) #18
  %197 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 9
  call void @mul_m3_m3m3(ptr noundef nonnull %197, ptr noundef nonnull %6, ptr noundef nonnull %8) #18
  %198 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 8
  %199 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %198, ptr noundef nonnull %197) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #18
  br label %203

200:                                              ; preds = %155
  %201 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 9
  call void @unit_m3(ptr noundef nonnull %201) #18
  %202 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 8
  call void @unit_m3(ptr noundef nonnull %202) #18
  br label %203

203:                                              ; preds = %200, %195
  ret void
}

declare void @BKE_scene_base_flag_to_objects(ptr noundef) local_unnamed_addr #7

declare void @DAG_scene_relations_update(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @BKE_object_handle_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @DAG_scene_flush_update(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @mark_children(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 53
  %3 = load i16, ptr %2, align 4, !tbaa !630
  %4 = and i16 %3, 257
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !629
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc zeroext i8 @mark_children(ptr noundef nonnull %8), !range !636
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i16, ptr %2, align 4, !tbaa !630
  %15 = or i16 %14, 256
  store i16 %15, ptr %2, align 4, !tbaa !630
  br label %16

16:                                               ; preds = %6, %10, %1, %13
  %17 = phi i8 [ 1, %13 ], [ 1, %1 ], [ 0, %10 ], [ 0, %6 ]
  ret i8 %17
}

declare void @mat4_to_loc_rot_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @BKE_object_mat3_to_rot(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

declare void @BKE_object_where_is_calc(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @BKE_object_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !36, i64 48}
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
!48 = !{!35, !41, i64 56}
!49 = !{!50, !36, i64 216}
!50 = !{!"TransData", !40, i64 0, !40, i64 4, !40, i64 8, !41, i64 16, !37, i64 24, !41, i64 40, !40, i64 48, !37, i64 52, !37, i64 64, !37, i64 100, !37, i64 136, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !36, i64 216, !39, i64 220}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!35, !36, i64 4}
!55 = !{!50, !40, i64 0}
!56 = !{!50, !40, i64 4}
!57 = !{!36, !36, i64 0}
!58 = !{!59, !41, i64 288}
!59 = !{!"Object", !60, i64 0, !41, i64 120, !41, i64 128, !39, i64 136, !39, i64 138, !36, i64 140, !36, i64 144, !36, i64 148, !37, i64 152, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288, !41, i64 296, !41, i64 304, !61, i64 312, !41, i64 360, !44, i64 368, !44, i64 384, !44, i64 400, !44, i64 416, !36, i64 432, !36, i64 436, !41, i64 440, !41, i64 448, !36, i64 456, !36, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !40, i64 616, !40, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !36, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !36, i64 968, !36, i64 972, !36, i64 976, !36, i64 980, !36, i64 984, !40, i64 988, !40, i64 992, !40, i64 996, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !40, i64 1028, !40, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !40, i64 1048, !40, i64 1052, !44, i64 1056, !44, i64 1072, !44, i64 1088, !44, i64 1104, !40, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !36, i64 1144, !36, i64 1148, !41, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !44, i64 1176, !44, i64 1192, !44, i64 1208, !44, i64 1224, !41, i64 1240, !41, i64 1248, !41, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !40, i64 1268, !41, i64 1272, !41, i64 1280, !41, i64 1288, !41, i64 1296, !62, i64 1304, !62, i64 1312, !36, i64 1320, !36, i64 1324, !44, i64 1328, !44, i64 1344, !41, i64 1360, !41, i64 1368, !41, i64 1376, !37, i64 1384, !41, i64 1392, !44, i64 1400, !41, i64 1416}
!60 = !{!"ID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !39, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !41, i64 112}
!61 = !{!"bAnimVizSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44}
!62 = !{!"long", !37, i64 0}
!63 = !{!41, !41, i64 0}
!64 = !{!59, !41, i64 296}
!65 = !{!66, !36, i64 216}
!66 = !{!"bArmature", !60, i64 0, !41, i64 120, !44, i64 128, !44, i64 144, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !39, i64 208, !39, i64 210, !36, i64 212, !36, i64 216, !36, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !36, i64 248, !36, i64 252}
!67 = !{!68, !41, i64 120}
!68 = !{!"bPoseChannel", !41, i64 0, !41, i64 8, !41, i64 16, !44, i64 24, !37, i64 40, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !41, i64 120, !41, i64 128, !41, i64 136, !44, i64 144, !44, i64 160, !41, i64 176, !41, i64 184, !41, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !40, i64 264, !39, i64 268, !39, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !40, i64 524, !40, i64 528, !40, i64 532, !41, i64 536}
!69 = !{!70, !36, i64 320}
!70 = !{!"Bone", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !44, i64 32, !37, i64 48, !40, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !36, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !37, i64 308, !36, i64 320, !39, i64 324, !37, i64 326}
!71 = !{!70, !36, i64 176}
!72 = distinct !{!72, !52, !53}
!73 = distinct !{!73, !52, !53}
!74 = !{!75, !39, i64 24}
!75 = !{!"bConstraint", !41, i64 0, !41, i64 8, !41, i64 16, !39, i64 24, !39, i64 26, !37, i64 28, !37, i64 29, !37, i64 30, !39, i64 94, !40, i64 96, !40, i64 100, !41, i64 104, !40, i64 112, !40, i64 116}
!76 = !{!75, !40, i64 96}
!77 = !{!75, !41, i64 16}
!78 = !{!79, !41, i64 0}
!79 = !{!"bKinematicConstraint", !41, i64 0, !39, i64 8, !39, i64 10, !39, i64 12, !39, i64 14, !37, i64 16, !41, i64 80, !37, i64 88, !40, i64 152, !40, i64 156, !40, i64 160, !37, i64 164, !39, i64 176, !39, i64 178, !40, i64 180}
!80 = !{!59, !39, i64 136}
!81 = !{!37, !37, i64 0}
!82 = distinct !{!82, !52, !53}
!83 = !{!68, !41, i64 128}
!84 = !{!68, !39, i64 108}
!85 = distinct !{!85, !52, !53}
!86 = distinct !{!86, !52, !53}
!87 = !{!35, !41, i64 1264}
!88 = !{!39, !39, i64 0}
!89 = !{!35, !41, i64 1128}
!90 = !{!68, !37, i64 112}
!91 = !{!79, !39, i64 10}
!92 = !{!79, !39, i64 14}
!93 = !{!79, !39, i64 12}
!94 = distinct !{!94, !52, !53}
!95 = distinct !{!95, !52, !53}
!96 = !{!35, !41, i64 1136}
!97 = !{!98, !41, i64 0}
!98 = !{!"BoneInitData", !41, i64 0, !37, i64 8, !40, i64 20, !40, i64 24, !37, i64 28, !40, i64 40, !40, i64 44, !40, i64 48}
!99 = !{!35, !41, i64 1312}
!100 = !{!66, !36, i64 192}
!101 = !{!98, !40, i64 40}
!102 = !{!103, !40, i64 140}
!103 = !{!"EditBone", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !37, i64 40, !40, i64 104, !37, i64 108, !37, i64 120, !36, i64 132, !36, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !39, i64 180}
!104 = !{!98, !40, i64 20}
!105 = !{!103, !40, i64 172}
!106 = !{!98, !40, i64 24}
!107 = !{!103, !40, i64 104}
!108 = !{!98, !40, i64 44}
!109 = !{!103, !40, i64 148}
!110 = !{!98, !40, i64 48}
!111 = !{!103, !40, i64 156}
!112 = !{!40, !40, i64 0}
!113 = !{!66, !41, i64 160}
!114 = !{!103, !36, i64 132}
!115 = !{!103, !41, i64 24}
!116 = !{!103, !40, i64 168}
!117 = distinct !{!117, !52, !53}
!118 = distinct !{!118, !52, !53}
!119 = !{!35, !41, i64 1256}
!120 = !{!121, !41, i64 168}
!121 = !{!"Scene", !60, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !44, i64 152, !41, i64 168, !41, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !36, i64 232, !36, i64 236, !36, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !122, i64 280, !131, i64 4264, !44, i64 4296, !44, i64 4312, !41, i64 4328, !41, i64 4336, !41, i64 4344, !41, i64 4352, !41, i64 4360, !41, i64 4368, !39, i64 4376, !39, i64 4378, !36, i64 4380, !44, i64 4384, !132, i64 4400, !133, i64 4416, !136, i64 4600, !41, i64 4608, !137, i64 4616, !41, i64 4640, !62, i64 4648, !62, i64 4656, !124, i64 4664, !125, i64 4824, !138, i64 4888, !41, i64 4952}
!122 = !{!"RenderData", !123, i64 0, !41, i64 248, !41, i64 256, !126, i64 264, !127, i64 328, !36, i64 400, !36, i64 404, !36, i64 408, !40, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !39, i64 432, !39, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !36, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !36, i64 484, !36, i64 488, !39, i64 492, !39, i64 494, !36, i64 496, !36, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !36, i64 516, !36, i64 520, !36, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !128, i64 544, !128, i64 560, !129, i64 576, !44, i64 592, !39, i64 608, !39, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !36, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !40, i64 660, !40, i64 664, !39, i64 668, !39, i64 670, !40, i64 672, !40, i64 676, !37, i64 680, !36, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !36, i64 2520, !39, i64 2524, !39, i64 2526, !40, i64 2528, !40, i64 2532, !39, i64 2536, !39, i64 2538, !40, i64 2540, !39, i64 2544, !39, i64 2546, !36, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !40, i64 2560, !40, i64 2564, !41, i64 2568, !36, i64 2576, !40, i64 2580, !37, i64 2584, !130, i64 2616, !36, i64 3976, !36, i64 3980}
!123 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !40, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !124, i64 24, !125, i64 184}
!124 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !40, i64 136, !40, i64 140, !41, i64 144, !41, i64 152}
!125 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!126 = !{!"QuicktimeCodecSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !39, i64 48, !39, i64 50, !36, i64 52, !36, i64 56, !36, i64 60}
!127 = !{!"FFMpegCodecData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !40, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !41, i64 64}
!128 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!129 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!130 = !{!"BakeData", !123, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !40, i64 1280, !40, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!131 = !{!"AudioData", !36, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !36, i64 16, !39, i64 20, !39, i64 22, !40, i64 24, !40, i64 28}
!132 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!133 = !{!"GameData", !132, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !134, i64 40, !39, i64 64, !39, i64 66, !40, i64 68, !135, i64 72, !40, i64 128, !40, i64 132, !36, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180}
!134 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !40, i64 8, !40, i64 12, !41, i64 16}
!135 = !{!"RecastData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !36, i64 40, !40, i64 44, !40, i64 48, !39, i64 52, !39, i64 54}
!136 = !{!"UnitSettings", !40, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!137 = !{!"PhysicsSettings", !37, i64 0, !36, i64 12, !36, i64 16, !36, i64 20}
!138 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!139 = !{!140, !41, i64 32}
!140 = !{!"Base", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !39, i64 28, !39, i64 30, !41, i64 32}
!141 = !{!142, !41, i64 232}
!142 = !{!"PTCacheEdit", !44, i64 0, !41, i64 16, !41, i64 24, !143, i64 32, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !44, i64 280, !36, i64 296, !36, i64 300, !36, i64 304, !36, i64 308, !37, i64 312, !37, i64 315}
!143 = !{!"PTCacheID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192}
!144 = !{!142, !36, i64 296}
!145 = !{!142, !41, i64 24}
!146 = !{!147, !39, i64 12}
!147 = !{!"PTCacheEditPoint", !41, i64 0, !36, i64 8, !39, i64 12}
!148 = !{!149, !36, i64 316}
!149 = !{!"ParticleSystem", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !44, i64 72, !44, i64 88, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !44, i64 152, !37, i64 168, !37, i64 232, !40, i64 296, !40, i64 300, !40, i64 304, !36, i64 308, !36, i64 312, !36, i64 316, !36, i64 320, !36, i64 324, !36, i64 328, !36, i64 332, !36, i64 336, !39, i64 340, !39, i64 342, !39, i64 344, !39, i64 346, !37, i64 348, !37, i64 540, !39, i64 564, !39, i64 566, !41, i64 568, !41, i64 576, !44, i64 584, !41, i64 600, !41, i64 608, !36, i64 616, !36, i64 620, !41, i64 624, !41, i64 632, !41, i64 640, !40, i64 648, !40, i64 652}
!150 = !{!151, !41, i64 120}
!151 = !{!"ParticleSystemModifierData", !152, i64 0, !41, i64 112, !41, i64 120, !36, i64 128, !36, i64 132, !36, i64 136, !39, i64 140, !39, i64 142}
!152 = !{!"ModifierData", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !37, i64 32, !41, i64 96, !41, i64 104}
!153 = !{!149, !41, i64 16}
!154 = !{!155, !39, i64 162}
!155 = !{!"ParticleSettings", !60, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !36, i64 152, !36, i64 156, !39, i64 160, !39, i64 162, !39, i64 164, !39, i64 166, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !36, i64 176, !36, i64 180, !39, i64 184, !39, i64 186, !39, i64 188, !39, i64 190, !39, i64 192, !39, i64 194, !39, i64 196, !39, i64 198, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !40, i64 232, !40, i64 236, !37, i64 240, !37, i64 248, !40, i64 256, !40, i64 260, !40, i64 264, !39, i64 268, !39, i64 270, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !37, i64 320, !36, i64 324, !36, i64 328, !36, i64 332, !36, i64 336, !39, i64 340, !37, i64 342, !40, i64 348, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !40, i64 368, !40, i64 372, !37, i64 376, !40, i64 388, !40, i64 392, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !40, i64 412, !37, i64 416, !40, i64 428, !40, i64 432, !40, i64 436, !40, i64 440, !36, i64 444, !36, i64 448, !40, i64 452, !40, i64 456, !40, i64 460, !40, i64 464, !40, i64 468, !40, i64 472, !40, i64 476, !40, i64 480, !40, i64 484, !40, i64 488, !40, i64 492, !40, i64 496, !40, i64 500, !40, i64 504, !40, i64 508, !40, i64 512, !40, i64 516, !40, i64 520, !40, i64 524, !40, i64 528, !40, i64 532, !40, i64 536, !40, i64 540, !40, i64 544, !40, i64 548, !37, i64 552, !40, i64 560, !40, i64 564, !36, i64 568, !36, i64 572, !37, i64 576, !41, i64 720, !44, i64 728, !41, i64 744, !41, i64 752, !41, i64 760, !41, i64 768, !41, i64 776, !41, i64 784, !39, i64 792, !37, i64 794}
!156 = !{!149, !41, i64 24}
!157 = !{!147, !36, i64 8}
!158 = !{!147, !41, i64 0}
!159 = !{!160, !41, i64 0}
!160 = !{!"PTCacheEditKey", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !40, i64 44, !40, i64 48, !39, i64 52}
!161 = distinct !{!161, !52, !53}
!162 = distinct !{!162, !52, !53}
!163 = !{!164, !40, i64 10908}
!164 = !{!"UserDef", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !36, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !36, i64 8484, !36, i64 8488, !36, i64 8492, !39, i64 8496, !39, i64 8498, !36, i64 8500, !36, i64 8504, !36, i64 8508, !36, i64 8512, !36, i64 8516, !36, i64 8520, !36, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !44, i64 8536, !44, i64 8552, !44, i64 8568, !44, i64 8584, !44, i64 8600, !44, i64 8616, !44, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !36, i64 8912, !36, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !40, i64 8956, !40, i64 8960, !36, i64 8964, !39, i64 8968, !39, i64 8970, !40, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !165, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !36, i64 10896, !36, i64 10900, !40, i64 10904, !40, i64 10908, !36, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !166, i64 10928}
!165 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!166 = !{!"WalkNavigation", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !39, i64 24, !37, i64 26}
!167 = !{!164, !36, i64 8524}
!168 = !{!35, !41, i64 72}
!169 = !{!50, !41, i64 208}
!170 = !{!171, !41, i64 232}
!171 = !{!"bNode", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !37, i64 40, !37, i64 104, !36, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !44, i64 200, !44, i64 216, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !44, i64 264, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !36, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !40, i64 380, !40, i64 384, !39, i64 388, !39, i64 390, !41, i64 392, !128, i64 400, !128, i64 416, !128, i64 432, !39, i64 448, !39, i64 450, !36, i64 452, !41, i64 456}
!172 = !{!171, !40, i64 280}
!173 = !{!171, !40, i64 284}
!174 = distinct !{!174, !52, !53}
!175 = !{!35, !41, i64 1240}
!176 = !{!177, !41, i64 0}
!177 = !{!"Editing", !41, i64 0, !44, i64 8, !44, i64 24, !41, i64 40, !37, i64 48, !37, i64 1072, !36, i64 2096, !36, i64 2100, !36, i64 2104, !36, i64 2108, !128, i64 2112}
!178 = !{!179, !41, i64 0}
!179 = !{!"TransDataSeq", !41, i64 0, !36, i64 8, !36, i64 12, !39, i64 16}
!180 = !{!181, !36, i64 108}
!181 = !{!"Sequence", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108, !36, i64 112, !36, i64 116, !36, i64 120, !36, i64 124, !36, i64 128, !36, i64 132, !36, i64 136, !36, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !39, i64 156, !39, i64 158, !36, i64 160, !36, i64 164, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !41, i64 216, !40, i64 224, !40, i64 228, !41, i64 232, !41, i64 240, !41, i64 248, !44, i64 256, !41, i64 272, !41, i64 280, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !41, i64 304, !36, i64 312, !36, i64 316, !36, i64 320, !40, i64 324, !36, i64 328, !37, i64 332, !37, i64 333, !44, i64 336}
!182 = !{!179, !39, i64 16}
!183 = !{!181, !36, i64 132}
!184 = !{!179, !36, i64 12}
!185 = !{!181, !36, i64 128}
!186 = !{!179, !36, i64 8}
!187 = distinct !{!187, !52, !53}
!188 = !{!35, !36, i64 0}
!189 = !{!181, !36, i64 100}
!190 = !{!181, !36, i64 96}
!191 = distinct !{!191, !52, !53}
!192 = !{!181, !41, i64 232}
!193 = !{!181, !41, i64 240}
!194 = !{!181, !41, i64 248}
!195 = distinct !{!195, !52, !53}
!196 = distinct !{!196, !52, !53}
!197 = !{!198, !41, i64 96}
!198 = !{!"ScrArea", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !129, i64 56, !37, i64 72, !37, i64 73, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !39, i64 84, !37, i64 86, !37, i64 87, !41, i64 88, !44, i64 96, !44, i64 112, !44, i64 128, !44, i64 144}
!199 = !{!200, !36, i64 36}
!200 = !{!"SpaceImage", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !36, i64 36, !41, i64 40, !201, i64 48, !41, i64 88, !202, i64 96, !203, i64 5360, !41, i64 10520, !37, i64 10528, !40, i64 10536, !40, i64 10540, !40, i64 10544, !40, i64 10548, !40, i64 10552, !37, i64 10556, !37, i64 10557, !39, i64 10558, !39, i64 10560, !39, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !204, i64 10568}
!201 = !{!"ImageUser", !41, i64 0, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !36, i64 36}
!202 = !{!"Scopes", !36, i64 0, !36, i64 4, !36, i64 8, !40, i64 12, !36, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !40, i64 32, !36, i64 36, !37, i64 40, !203, i64 64, !41, i64 5224, !41, i64 5232, !41, i64 5240, !41, i64 5248, !36, i64 5256, !36, i64 5260}
!203 = !{!"Histogram", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !40, i64 5128, !40, i64 5132, !39, i64 5136, !39, i64 5138, !36, i64 5140, !37, i64 5144}
!204 = !{!"MaskSpaceInfo", !41, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!205 = !{!206, !41, i64 16}
!206 = !{!"TransData2D", !37, i64 0, !41, i64 16, !41, i64 24, !41, i64 32, !37, i64 40, !37, i64 48}
!207 = !{!35, !39, i64 12}
!208 = distinct !{!208, !52, !53}
!209 = !{!50, !41, i64 16}
!210 = distinct !{!210, !52, !53}
!211 = distinct !{!211, !52, !53}
!212 = !{!213, !40, i64 0}
!213 = !{!"tGPFtransdata", !40, i64 0, !41, i64 8}
!214 = !{!213, !41, i64 8}
!215 = distinct !{!215, !52, !53}
!216 = !{!217, !36, i64 244}
!217 = !{!"SpaceIpo", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !218, i64 56, !41, i64 216, !44, i64 224, !39, i64 240, !39, i64 242, !36, i64 244, !40, i64 248, !36, i64 252}
!218 = !{!"View2D", !128, i64 0, !128, i64 16, !129, i64 32, !129, i64 48, !129, i64 64, !37, i64 80, !37, i64 88, !40, i64 96, !40, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !41, i64 128, !36, i64 136, !36, i64 140, !41, i64 144, !41, i64 152}
!219 = !{!220, !41, i64 40}
!220 = !{!"bAnimListElem", !41, i64 0, !41, i64 8, !41, i64 16, !36, i64 24, !36, i64 28, !36, i64 32, !39, i64 36, !39, i64 38, !41, i64 40, !41, i64 48, !41, i64 56}
!221 = !{!222, !41, i64 48}
!222 = !{!"FCurve", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !44, i64 32, !41, i64 48, !41, i64 56, !36, i64 64, !40, i64 68, !39, i64 72, !39, i64 74, !36, i64 76, !41, i64 80, !36, i64 88, !37, i64 92, !40, i64 104, !40, i64 108}
!223 = !{!222, !36, i64 64}
!224 = !{!225, !41, i64 0}
!225 = !{!"BeztMap", !41, i64 0, !36, i64 8, !36, i64 12, !39, i64 16, !37, i64 18, !37, i64 19}
!226 = !{!225, !36, i64 8}
!227 = !{!225, !36, i64 12}
!228 = !{!229, !37, i64 48}
!229 = !{!"BezTriple", !37, i64 0, !40, i64 36, !40, i64 40, !40, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !40, i64 56, !40, i64 60, !40, i64 64, !37, i64 68}
!230 = !{!225, !37, i64 18}
!231 = !{!225, !37, i64 19}
!232 = distinct !{!232, !52, !53}
!233 = distinct !{!233, !52, !53}
!234 = !{i64 0, i64 8, !63, i64 8, i64 4, !57, i64 12, i64 4, !57, i64 16, i64 2, !88, i64 18, i64 1, !81, i64 19, i64 1, !81}
!235 = !{!225, !39, i64 16}
!236 = distinct !{!236, !52, !53}
!237 = !{!206, !41, i64 24}
!238 = !{!206, !41, i64 32}
!239 = !{!50, !41, i64 200}
!240 = !{!241, !41, i64 8}
!241 = !{!"TransDataCurveHandleFlags", !37, i64 0, !37, i64 1, !41, i64 8, !41, i64 16}
!242 = !{!241, !41, i64 16}
!243 = distinct !{!243, !52, !53}
!244 = distinct !{!244, !52, !53}
!245 = distinct !{!245, !52, !53}
!246 = !{!121, !39, i64 820}
!247 = !{!121, !40, i64 900}
!248 = !{!249, !40, i64 0}
!249 = !{!"TransDataGraph", !40, i64 0}
!250 = !{!217, !39, i64 242}
!251 = distinct !{!251, !52, !53}
!252 = !{!121, !36, i64 680}
!253 = !{!121, !41, i64 264}
!254 = !{!255, !39, i64 346}
!255 = !{!"ToolSettings", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !39, i64 44, !39, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !40, i64 52, !39, i64 56, !37, i64 58, !37, i64 59, !256, i64 64, !258, i64 168, !40, i64 336, !40, i64 340, !39, i64 344, !39, i64 346, !37, i64 348, !37, i64 349, !39, i64 350, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !40, i64 368, !40, i64 372, !40, i64 376, !40, i64 380, !40, i64 384, !40, i64 388, !39, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !41, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !39, i64 434, !39, i64 436, !39, i64 438, !39, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !36, i64 448, !36, i64 452, !36, i64 456, !36, i64 460, !39, i64 464, !39, i64 466, !36, i64 468, !40, i64 472, !40, i64 476, !259, i64 480, !260, i64 608}
!256 = !{!"ImagePaintSettings", !257, i64 0, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !37, i64 48, !36, i64 52, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !37, i64 88, !40, i64 100}
!257 = !{!"Paint", !41, i64 0, !41, i64 8, !41, i64 16, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36}
!258 = !{!"ParticleEditSettings", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !41, i64 120, !40, i64 128, !40, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !41, i64 152, !41, i64 160}
!259 = !{!"UnifiedPaintSettings", !36, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !37, i64 16, !37, i64 28, !36, i64 40, !37, i64 44, !40, i64 52, !36, i64 56, !36, i64 60, !37, i64 64, !37, i64 65, !40, i64 72, !37, i64 76, !36, i64 84, !40, i64 88, !37, i64 92, !37, i64 100, !36, i64 108, !41, i64 112, !40, i64 120, !36, i64 124}
!260 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 21, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36}
!261 = !{!164, !39, i64 8978}
!262 = !{!59, !41, i64 120}
!263 = !{!264, !41, i64 0}
!264 = !{!"AnimData", !41, i64 0, !41, i64 8, !41, i64 16, !44, i64 24, !41, i64 40, !44, i64 48, !44, i64 64, !36, i64 80, !36, i64 84, !39, i64 88, !39, i64 90, !40, i64 92}
!265 = !{!222, !39, i64 72}
!266 = !{!222, !41, i64 16}
!267 = !{!222, !41, i64 80}
!268 = !{!222, !36, i64 76}
!269 = distinct !{!269, !52, !53}
!270 = !{!271, !39, i64 238}
!271 = !{!"View3D", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !37, i64 56, !40, i64 72, !40, i64 76, !37, i64 80, !37, i64 81, !36, i64 84, !36, i64 88, !39, i64 92, !39, i64 94, !41, i64 96, !41, i64 104, !128, i64 112, !44, i64 128, !41, i64 144, !41, i64 152, !37, i64 160, !36, i64 224, !36, i64 228, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !37, i64 260, !37, i64 272, !39, i64 284, !39, i64 286, !39, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !44, i64 296, !44, i64 312, !44, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !41, i64 352, !41, i64 360, !41, i64 368}
!272 = !{!271, !39, i64 240}
!273 = !{!59, !39, i64 342}
!274 = distinct !{!274, !52, !53}
!275 = distinct !{!275, !52, !53}
!276 = !{!277, !39, i64 134}
!277 = !{!"bPose", !44, i64 0, !41, i64 16, !39, i64 24, !39, i64 26, !36, i64 28, !36, i64 32, !40, i64 36, !37, i64 40, !37, i64 52, !44, i64 64, !36, i64 80, !36, i64 84, !41, i64 88, !41, i64 96, !61, i64 104, !37, i64 152}
!278 = distinct !{!278, !52, !53}
!279 = !{!35, !37, i64 976}
!280 = !{!255, !39, i64 44}
!281 = !{!282, !41, i64 0}
!282 = !{!"BMEditMesh", !41, i64 0, !41, i64 8, !36, i64 16, !41, i64 24, !36, i64 32, !41, i64 40, !41, i64 48, !62, i64 56, !41, i64 64, !36, i64 72, !41, i64 80, !36, i64 88, !39, i64 92, !39, i64 94, !41, i64 96, !36, i64 104}
!283 = !{!284, !37, i64 13}
!284 = !{!"BMHeader", !41, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!285 = distinct !{!285, !52, !53}
!286 = !{!287, !40, i64 64}
!287 = !{!"EdgeSlideData", !41, i64 0, !36, i64 8, !41, i64 16, !37, i64 24, !37, i64 32, !41, i64 40, !37, i64 48, !41, i64 56, !40, i64 64, !37, i64 68, !37, i64 69, !36, i64 72}
!288 = !{!289, !36, i64 232}
!289 = !{!"SpaceSeq", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !218, i64 56, !40, i64 216, !40, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !36, i64 232, !40, i64 236, !36, i64 240, !36, i64 244, !41, i64 248, !290, i64 256}
!290 = !{!"SequencerScopes", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40}
!291 = !{!35, !37, i64 712}
!292 = !{!35, !36, i64 16}
!293 = !{!35, !37, i64 1220}
!294 = !{!295, !41, i64 288}
!295 = !{!"SpaceNode", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !218, i64 56, !41, i64 216, !41, i64 224, !39, i64 232, !39, i64 234, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !37, i64 256, !44, i64 264, !41, i64 280, !41, i64 288, !37, i64 296, !36, i64 360, !36, i64 364, !39, i64 368, !39, i64 370, !39, i64 372, !39, i64 374, !44, i64 376, !41, i64 392}
!296 = !{!297, !41, i64 224}
!297 = !{!"bNodeTree", !60, i64 0, !41, i64 120, !41, i64 128, !37, i64 136, !41, i64 200, !41, i64 208, !37, i64 216, !44, i64 224, !44, i64 240, !36, i64 256, !36, i64 260, !36, i64 264, !36, i64 268, !36, i64 272, !39, i64 276, !39, i64 278, !36, i64 280, !36, i64 284, !39, i64 288, !39, i64 290, !36, i64 292, !128, i64 296, !44, i64 312, !44, i64 328, !41, i64 344, !298, i64 352, !36, i64 356, !41, i64 360, !41, i64 368, !41, i64 376, !41, i64 384, !41, i64 392, !41, i64 400, !41, i64 408, !41, i64 416, !41, i64 424}
!298 = !{!"bNodeInstanceKey", !36, i64 0}
!299 = !{!171, !41, i64 0}
!300 = !{!171, !36, i64 168}
!301 = distinct !{!301, !52, !53}
!302 = !{!303, !36, i64 108}
!303 = !{!"MovieTrackingPlaneTrack", !41, i64 0, !41, i64 8, !37, i64 16, !41, i64 80, !36, i64 88, !36, i64 92, !41, i64 96, !36, i64 104, !36, i64 108, !41, i64 112, !40, i64 120, !36, i64 124}
!304 = !{!303, !36, i64 88}
!305 = !{!303, !41, i64 80}
!306 = !{!307, !36, i64 152}
!307 = !{!"MovieTrackingTrack", !41, i64 0, !41, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !36, i64 120, !36, i64 124, !41, i64 128, !37, i64 136, !40, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !37, i64 164, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !36, i64 184, !40, i64 188, !41, i64 192, !40, i64 200, !40, i64 204}
!308 = !{!309, !36, i64 208}
!309 = !{!"SpaceClip", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !310, i64 56, !41, i64 64, !311, i64 72, !36, i64 208, !39, i64 212, !39, i64 214, !36, i64 216, !37, i64 220, !40, i64 228, !40, i64 232, !36, i64 236, !37, i64 240, !37, i64 304, !36, i64 368, !39, i64 372, !39, i64 374, !36, i64 376, !36, i64 380, !37, i64 384, !204, i64 392}
!310 = !{!"MovieClipUser", !36, i64 0, !39, i64 4, !39, i64 6}
!311 = !{!"MovieClipScopes", !39, i64 0, !39, i64 2, !36, i64 4, !36, i64 8, !36, i64 12, !312, i64 16, !41, i64 80, !41, i64 88, !37, i64 96, !39, i64 104, !39, i64 106, !36, i64 108, !41, i64 112, !41, i64 120, !37, i64 128}
!312 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !36, i64 56, !36, i64 60}
!313 = !{!307, !36, i64 156}
!314 = !{!307, !36, i64 160}
!315 = distinct !{!315, !52, !53}
!316 = distinct !{!316, !52, !53}
!317 = !{!121, !41, i64 248}
!318 = !{!319, !41, i64 56}
!319 = !{!"bAnimContext", !41, i64 0, !39, i64 8, !39, i64 10, !39, i64 12, !39, i64 14, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72}
!320 = !{!319, !41, i64 0}
!321 = !{!322, !39, i64 338}
!322 = !{!"SpaceAction", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !218, i64 56, !41, i64 216, !323, i64 224, !37, i64 336, !37, i64 337, !39, i64 338, !40, i64 340}
!323 = !{!"bDopeSheet", !41, i64 0, !44, i64 8, !41, i64 24, !37, i64 32, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108}
!324 = distinct !{!324, !52, !53}
!325 = distinct !{!325, !52, !53}
!326 = !{!327, !41, i64 0}
!327 = !{!"Global", !41, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !44, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !39, i64 2084, !39, i64 2086, !39, i64 2088, !37, i64 2090, !39, i64 2092, !36, i64 2096, !36, i64 2100, !37, i64 2104, !36, i64 2108, !36, i64 2112, !37, i64 2116}
!328 = !{!60, !36, i64 100}
!329 = !{!60, !39, i64 98}
!330 = !{!331, !41, i64 16}
!331 = !{!"bGPDlayer", !41, i64 0, !41, i64 8, !44, i64 16, !41, i64 32, !36, i64 40, !39, i64 44, !39, i64 46, !37, i64 48, !37, i64 64}
!332 = !{!333, !41, i64 0}
!333 = !{!"bGPDframe", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !36, i64 36}
!334 = !{!333, !36, i64 32}
!335 = distinct !{!335, !52, !53}
!336 = distinct !{!336, !52, !53}
!337 = !{!338, !41, i64 96}
!338 = !{!"MaskLayer", !41, i64 0, !41, i64 8, !37, i64 16, !44, i64 80, !44, i64 96, !41, i64 112, !41, i64 120, !40, i64 128, !37, i64 132, !37, i64 133, !37, i64 134, !37, i64 135, !37, i64 142, !37, i64 143}
!339 = !{!340, !41, i64 0}
!340 = !{!"MaskLayerShape", !41, i64 0, !41, i64 8, !41, i64 16, !36, i64 24, !36, i64 28, !37, i64 32, !37, i64 33}
!341 = !{!340, !36, i64 28}
!342 = distinct !{!342, !52, !53}
!343 = distinct !{!343, !52, !53}
!344 = !{!319, !39, i64 8}
!345 = distinct !{!345, !52, !53}
!346 = !{!220, !41, i64 16}
!347 = distinct !{!347, !52, !53}
!348 = !{!35, !39, i64 974}
!349 = distinct !{!349, !52, !53}
!350 = !{!68, !39, i64 268}
!351 = !{!68, !40, i64 264}
!352 = distinct !{!352, !52, !53}
!353 = distinct !{!353, !52, !53}
!354 = distinct !{!354, !52, !53}
!355 = distinct !{!355, !52, !53}
!356 = !{!68, !39, i64 106}
!357 = !{!68, !41, i64 24}
!358 = !{!75, !41, i64 0}
!359 = distinct !{!359, !52, !53}
!360 = !{!35, !41, i64 1224}
!361 = !{!59, !37, i64 1161}
!362 = !{!59, !36, i64 432}
!363 = distinct !{!363, !52, !53}
!364 = !{!50, !41, i64 176}
!365 = !{!143, !36, i64 40}
!366 = !{!143, !41, i64 176}
!367 = !{!368, !36, i64 16}
!368 = !{!"PointCache", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !39, i64 60, !39, i64 62, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !41, i64 1280, !44, i64 1288, !41, i64 1304, !41, i64 1312}
!369 = distinct !{!369, !52, !53}
!370 = !{!59, !41, i64 1368}
!371 = !{!121, !41, i64 4952}
!372 = !{!50, !41, i64 192}
!373 = !{!374, !40, i64 376}
!374 = !{!"TransDataExtension", !37, i64 0, !37, i64 12, !37, i64 28, !41, i64 40, !37, i64 48, !41, i64 64, !37, i64 72, !41, i64 88, !40, i64 96, !41, i64 104, !37, i64 112, !41, i64 128, !37, i64 136, !37, i64 148, !37, i64 212, !37, i64 248, !37, i64 284, !36, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 364, !40, i64 376}
!375 = !{!140, !36, i64 24}
!376 = distinct !{!376, !52, !53}
!377 = !{!255, !39, i64 344}
!378 = !{!164, !39, i64 8976}
!379 = !{!229, !37, i64 52}
!380 = !{!229, !37, i64 51}
!381 = !{!229, !37, i64 53}
!382 = distinct !{!382, !52, !53}
!383 = distinct !{!383, !52, !53}
!384 = distinct !{!384, !52, !53}
!385 = !{!386, !36, i64 0}
!386 = !{!"TransDataTracking", !36, i64 0, !36, i64 4, !36, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !41, i64 56, !36, i64 64, !41, i64 72, !41, i64 80, !40, i64 88, !39, i64 92, !41, i64 96, !41, i64 104}
!387 = !{!386, !41, i64 96}
!388 = !{!386, !36, i64 4}
!389 = !{!312, !36, i64 60}
!390 = !{!307, !36, i64 120}
!391 = !{!307, !41, i64 128}
!392 = distinct !{!392, !52, !53}
!393 = !{!386, !41, i64 104}
!394 = !{!395, !36, i64 36}
!395 = !{!"MovieTrackingPlaneMarker", !37, i64 0, !36, i64 32, !36, i64 36}
!396 = distinct !{!396, !52, !53}
!397 = !{!386, !36, i64 8}
!398 = !{!386, !41, i64 16}
!399 = !{!386, !41, i64 56}
!400 = !{!386, !36, i64 64}
!401 = !{!386, !41, i64 72}
!402 = distinct !{!402, !52, !53}
!403 = distinct !{!403, !52, !53}
!404 = !{!386, !41, i64 80}
!405 = !{!386, !39, i64 92}
!406 = !{!386, !40, i64 88}
!407 = distinct !{!407, !52, !53}
!408 = !{!35, !41, i64 1248}
!409 = !{!410, !37, i64 0}
!410 = !{!"TransDataMasking", !37, i64 0, !37, i64 4, !37, i64 12, !37, i64 20, !41, i64 56, !37, i64 64, !37, i64 100, !37, i64 136, !36, i64 140}
!411 = !{!410, !41, i64 56}
!412 = !{!410, !36, i64 140}
!413 = !{!410, !37, i64 136}
!414 = !{!415, !37, i64 49}
!415 = !{!"MaskSplinePoint", !229, i64 0, !36, i64 72, !36, i64 76, !41, i64 80, !416, i64 88}
!416 = !{!"MaskParent", !36, i64 0, !36, i64 4, !41, i64 8, !37, i64 16, !37, i64 80, !37, i64 144, !37, i64 152}
!417 = !{!415, !37, i64 50}
!418 = distinct !{!418, !52, !53}
!419 = !{!420, !41, i64 0}
!420 = !{!"TransDataPaintCurve", !41, i64 0, !37, i64 8}
!421 = !{!420, !37, i64 8}
!422 = distinct !{!422, !52, !53}
!423 = !{!35, !41, i64 1288}
!424 = !{!35, !41, i64 64}
!425 = !{!59, !39, i64 1044}
!426 = !{!374, !41, i64 40}
!427 = !{!374, !41, i64 128}
!428 = !{!429, !37, i64 60}
!429 = !{!"BMIter", !37, i64 0, !41, i64 40, !41, i64 48, !36, i64 56, !37, i64 60}
!430 = !{!429, !41, i64 40}
!431 = !{!429, !41, i64 48}
!432 = !{!433, !41, i64 40}
!433 = !{!"BMesh", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 29, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !36, i64 88, !36, i64 92, !36, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !36, i64 128, !41, i64 136, !434, i64 144, !434, i64 344, !434, i64 544, !434, i64 744, !39, i64 944, !36, i64 948, !36, i64 952, !36, i64 956, !44, i64 960, !41, i64 976, !44, i64 984, !41, i64 1000}
!434 = !{!"CustomData", !41, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !41, i64 184, !41, i64 192}
!435 = distinct !{!435, !52, !53}
!436 = !{!437, !41, i64 24}
!437 = !{!"BMEdge", !284, i64 0, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !438, i64 48, !438, i64 64}
!438 = !{!"BMDiskLink", !41, i64 0, !41, i64 8}
!439 = !{!437, !41, i64 32}
!440 = !{!437, !41, i64 0}
!441 = !{!50, !41, i64 40}
!442 = !{!50, !40, i64 48}
!443 = distinct !{!443, !52, !53}
!444 = distinct !{!444, !52, !53}
!445 = distinct !{!445, !52, !53}
!446 = !{i64 0, i64 4, !112, i64 4, i64 4, !112, i64 8, i64 4, !112, i64 16, i64 8, !63, i64 24, i64 12, !81, i64 40, i64 8, !63, i64 48, i64 4, !112, i64 52, i64 12, !81, i64 64, i64 36, !81, i64 100, i64 36, !81, i64 136, i64 36, !81, i64 176, i64 8, !63, i64 184, i64 8, !63, i64 192, i64 8, !63, i64 200, i64 8, !63, i64 208, i64 8, !63, i64 216, i64 4, !57, i64 220, i64 2, !88}
!447 = distinct !{!447, !52, !53}
!448 = !{!255, !37, i64 50}
!449 = !{!450, !36, i64 20}
!450 = !{!"UvElementMap", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 20, !41, i64 24}
!451 = !{!433, !41, i64 56}
!452 = !{!453, !41, i64 0}
!453 = !{!"BMFace", !284, i64 0, !41, i64 16, !41, i64 24, !36, i64 32, !37, i64 36, !39, i64 48}
!454 = !{!455, !39, i64 20}
!455 = !{!"UvElement", !41, i64 0, !41, i64 8, !39, i64 16, !37, i64 18, !37, i64 19, !39, i64 20}
!456 = distinct !{!456, !52, !53}
!457 = distinct !{!457, !52, !53}
!458 = !{!459, !41, i64 0}
!459 = !{!"BMLoop", !284, i64 0, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64}
!460 = distinct !{!460, !52, !53}
!461 = distinct !{!461, !52, !53}
!462 = !{!319, !41, i64 32}
!463 = !{!220, !36, i64 24}
!464 = distinct !{!464, !52, !53}
!465 = !{!333, !36, i64 36}
!466 = distinct !{!466, !52, !53}
!467 = !{!340, !37, i64 32}
!468 = distinct !{!468, !52, !53}
!469 = distinct !{!469, !52, !53}
!470 = distinct !{!470, !52, !53}
!471 = distinct !{!471, !52, !53}
!472 = distinct !{!472, !52, !53}
!473 = distinct !{!473, !52, !53}
!474 = distinct !{!474, !52, !53}
!475 = !{!121, !39, i64 712}
!476 = !{!319, !41, i64 24}
!477 = distinct !{!477, !52, !53}
!478 = !{!479, !39, i64 190}
!479 = !{!"NlaStrip", !41, i64 0, !41, i64 8, !44, i64 16, !41, i64 32, !41, i64 40, !44, i64 48, !44, i64 64, !37, i64 80, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !39, i64 184, !39, i64 186, !39, i64 188, !39, i64 190, !41, i64 192, !36, i64 200, !36, i64 204}
!480 = !{!479, !36, i64 200}
!481 = !{!479, !40, i64 152}
!482 = !{!479, !40, i64 156}
!483 = distinct !{!483, !52, !53}
!484 = distinct !{!484, !52, !53}
!485 = !{!220, !41, i64 56}
!486 = !{!220, !41, i64 48}
!487 = !{!488, !41, i64 0}
!488 = !{!"TransDataNla", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !37, i64 44, !36, i64 56, !36, i64 60}
!489 = !{!488, !41, i64 16}
!490 = !{!488, !41, i64 8}
!491 = !{!488, !41, i64 24}
!492 = !{!488, !36, i64 56}
!493 = !{!494, !39, i64 58}
!494 = !{!"SpaceNla", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !39, i64 56, !39, i64 58, !36, i64 60, !41, i64 64, !218, i64 72}
!495 = !{!164, !39, i64 8948}
!496 = !{!488, !36, i64 60}
!497 = distinct !{!497, !52, !53}
!498 = distinct !{!498, !52, !53}
!499 = !{!35, !39, i64 462}
!500 = !{!35, !41, i64 1144}
!501 = distinct !{!501, !52, !53}
!502 = distinct !{!502, !52, !53}
!503 = distinct !{!503, !52, !53}
!504 = distinct !{!504, !52, !53}
!505 = !{!319, !41, i64 48}
!506 = !{!229, !37, i64 49}
!507 = !{!241, !37, i64 0}
!508 = !{!229, !37, i64 50}
!509 = !{!241, !37, i64 1}
!510 = distinct !{!510, !52, !53}
!511 = distinct !{!511, !52, !53}
!512 = distinct !{!512, !52, !53}
!513 = distinct !{!513, !52, !53}
!514 = distinct !{!514, !52, !53}
!515 = !{!516, !39, i64 214}
!516 = !{!"ARegion", !41, i64 0, !41, i64 8, !218, i64 16, !129, i64 176, !129, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !40, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !41, i64 240, !44, i64 248, !44, i64 264, !44, i64 280, !44, i64 296, !44, i64 312, !44, i64 328, !44, i64 344, !41, i64 360, !41, i64 368, !41, i64 376}
!517 = distinct !{!517, !52, !53}
!518 = distinct !{!518, !52, !53}
!519 = !{!312, !36, i64 56}
!520 = distinct !{!520, !52, !53}
!521 = distinct !{!521, !52, !53}
!522 = distinct !{!522, !52, !53}
!523 = distinct !{!523, !52, !53}
!524 = distinct !{!524, !52, !53}
!525 = distinct !{!525, !52, !53}
!526 = distinct !{!526, !52, !53}
!527 = distinct !{!527, !52, !53}
!528 = !{!529, !37, i64 1365}
!529 = !{!"Mesh", !60, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !434, i64 280, !434, i64 480, !434, i64 680, !434, i64 880, !434, i64 1080, !36, i64 1280, !36, i64 1284, !36, i64 1288, !36, i64 1292, !36, i64 1296, !36, i64 1300, !36, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !36, i64 1344, !39, i64 1348, !39, i64 1350, !40, i64 1352, !36, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !39, i64 1366, !41, i64 1368}
!530 = !{!282, !39, i64 92}
!531 = !{!433, !36, i64 16}
!532 = !{!433, !36, i64 20}
!533 = !{!433, !36, i64 24}
!534 = !{!433, !41, i64 32}
!535 = distinct !{!535, !52, !53}
!536 = !{!433, !36, i64 0}
!537 = !{!284, !36, i64 8}
!538 = distinct !{!538, !52, !53}
!539 = !{!433, !37, i64 28}
!540 = !{!541, !41, i64 48}
!541 = !{!"BMVert", !284, i64 0, !41, i64 16, !37, i64 24, !37, i64 36, !41, i64 48}
!542 = !{!437, !41, i64 40}
!543 = distinct !{!543, !52, !53}
!544 = !{!459, !41, i64 32}
!545 = !{!453, !36, i64 32}
!546 = !{!459, !41, i64 56}
!547 = !{!459, !41, i64 16}
!548 = distinct !{!548, !52, !53}
!549 = distinct !{!549, !52, !53}
!550 = !{!551, !41, i64 8}
!551 = !{!"LinkNode", !41, i64 0, !41, i64 8}
!552 = distinct !{!552, !52, !53}
!553 = distinct !{!553, !52, !53}
!554 = !{!555, !37, i64 24}
!555 = !{!"BMEditSelection", !41, i64 0, !41, i64 8, !41, i64 16, !37, i64 24}
!556 = !{!555, !41, i64 16}
!557 = distinct !{!557, !52, !53}
!558 = distinct !{!558, !52, !53}
!559 = distinct !{!559, !52, !53}
!560 = !{!35, !39, i64 1160}
!561 = distinct !{!561, !52, !53}
!562 = !{!541, !41, i64 0}
!563 = distinct !{!563, !52, !53}
!564 = distinct !{!564, !52, !53}
!565 = !{!566, !39, i64 248}
!566 = !{!"Curve", !60, i64 0, !41, i64 120, !41, i64 128, !44, i64 136, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !39, i64 244, !39, i64 246, !39, i64 248, !39, i64 250, !40, i64 252, !40, i64 256, !36, i64 260, !39, i64 264, !39, i64 266, !36, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !39, i64 284, !39, i64 286, !39, i64 288, !39, i64 290, !36, i64 292, !36, i64 296, !37, i64 300, !39, i64 304, !37, i64 306, !37, i64 307, !40, i64 308, !40, i64 312, !40, i64 316, !40, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !40, i64 340, !40, i64 344, !36, i64 348, !36, i64 352, !36, i64 356, !36, i64 360, !36, i64 364, !41, i64 368, !41, i64 376, !37, i64 384, !41, i64 448, !41, i64 456, !41, i64 464, !41, i64 472, !41, i64 480, !36, i64 488, !36, i64 492, !41, i64 496, !567, i64 504, !40, i64 512, !40, i64 516, !40, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!567 = !{!"CharInfo", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !39, i64 6}
!568 = !{!566, !41, i64 152}
!569 = !{!570, !39, i64 16}
!570 = !{!"Nurb", !41, i64 0, !41, i64 8, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !36, i64 24, !36, i64 28, !37, i64 32, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !39, i64 80, !39, i64 82, !36, i64 84}
!571 = !{!570, !36, i64 24}
!572 = !{!570, !41, i64 72}
!573 = !{!229, !37, i64 54}
!574 = distinct !{!574, !52, !53}
!575 = !{!570, !36, i64 28}
!576 = !{!570, !41, i64 64}
!577 = !{!578, !39, i64 26}
!578 = !{!"BPoint", !37, i64 0, !40, i64 16, !40, i64 20, !39, i64 24, !39, i64 26, !40, i64 28, !40, i64 32}
!579 = !{!578, !39, i64 24}
!580 = distinct !{!580, !52, !53}
!581 = distinct !{!581, !52, !53}
!582 = !{!229, !40, i64 44}
!583 = !{!229, !40, i64 36}
!584 = distinct !{!584, !52, !53}
!585 = distinct !{!585, !52, !53}
!586 = distinct !{!586, !52, !53}
!587 = !{!588, !41, i64 272}
!588 = !{!"Lattice", !60, i64 0, !41, i64 120, !39, i64 128, !39, i64 130, !39, i64 132, !39, i64 134, !39, i64 136, !39, i64 138, !39, i64 140, !39, i64 142, !37, i64 144, !37, i64 145, !37, i64 146, !37, i64 147, !36, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !37, i64 208, !41, i64 272}
!589 = !{!590, !41, i64 0}
!590 = !{!"EditLatt", !41, i64 0, !36, i64 8, !37, i64 12}
!591 = !{!588, !39, i64 128}
!592 = !{!588, !39, i64 130}
!593 = !{!588, !39, i64 132}
!594 = !{!588, !41, i64 176}
!595 = distinct !{!595, !52, !53}
!596 = distinct !{!596, !52, !53}
!597 = !{!598, !41, i64 160}
!598 = !{!"MetaBall", !60, i64 0, !41, i64 120, !44, i64 128, !44, i64 144, !41, i64 160, !41, i64 168, !41, i64 176, !37, i64 184, !37, i64 185, !39, i64 186, !39, i64 188, !39, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !40, i64 228, !40, i64 232, !40, i64 236, !41, i64 240}
!599 = !{!600, !39, i64 26}
!600 = !{!"MetaElem", !41, i64 0, !41, i64 8, !41, i64 16, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !37, i64 44, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !41, i64 88, !41, i64 96}
!601 = distinct !{!601, !52, !53}
!602 = !{!600, !40, i64 60}
!603 = !{!600, !40, i64 64}
!604 = !{!600, !40, i64 68}
!605 = !{!374, !41, i64 64}
!606 = distinct !{!606, !52, !53}
!607 = !{!103, !36, i64 136}
!608 = distinct !{!608, !52, !53}
!609 = !{!103, !40, i64 152}
!610 = !{!103, !40, i64 176}
!611 = !{!66, !36, i64 196}
!612 = !{!50, !39, i64 220}
!613 = distinct !{!613, !52, !53}
!614 = !{!140, !36, i64 16}
!615 = !{!271, !36, i64 224}
!616 = !{!59, !37, i64 1160}
!617 = !{!255, !36, i64 304}
!618 = !{!160, !39, i64 52}
!619 = distinct !{!619, !52, !53}
!620 = distinct !{!620, !52, !53}
!621 = !{!258, !39, i64 0}
!622 = !{!160, !41, i64 24}
!623 = distinct !{!623, !52, !53}
!624 = distinct !{!624, !52, !53}
!625 = !{!626, !41, i64 1888}
!626 = !{!"Main", !41, i64 0, !41, i64 8, !37, i64 16, !39, i64 1040, !39, i64 1042, !39, i64 1044, !39, i64 1046, !62, i64 1048, !37, i64 1056, !39, i64 1072, !41, i64 1080, !44, i64 1088, !44, i64 1104, !44, i64 1120, !44, i64 1136, !44, i64 1152, !44, i64 1168, !44, i64 1184, !44, i64 1200, !44, i64 1216, !44, i64 1232, !44, i64 1248, !44, i64 1264, !44, i64 1280, !44, i64 1296, !44, i64 1312, !44, i64 1328, !44, i64 1344, !44, i64 1360, !44, i64 1376, !44, i64 1392, !44, i64 1408, !44, i64 1424, !44, i64 1440, !44, i64 1456, !44, i64 1472, !44, i64 1488, !44, i64 1504, !44, i64 1520, !44, i64 1536, !44, i64 1552, !44, i64 1568, !44, i64 1584, !44, i64 1600, !44, i64 1616, !37, i64 1632, !41, i64 1888, !41, i64 1896}
!627 = distinct !{!627, !52, !53}
!628 = !{!59, !41, i64 24}
!629 = !{!59, !41, i64 216}
!630 = !{!59, !39, i64 948}
!631 = distinct !{!631, !52, !53}
!632 = distinct !{!632, !52, !53}
!633 = distinct !{!633, !52, !53}
!634 = distinct !{!634, !52, !53}
!635 = distinct !{!635, !52, !53}
!636 = !{i8 0, i8 2}
!637 = distinct !{!637, !52, !53}
!638 = distinct !{!638, !52, !53}
!639 = distinct !{!639, !52, !53}
!640 = !{!641, !41, i64 32}
!641 = !{!"CollectionPointerLink", !41, i64 0, !41, i64 8, !642, i64 16}
!642 = !{!"PointerRNA", !643, i64 0, !41, i64 8, !41, i64 16}
!643 = !{!"", !41, i64 0}
!644 = !{!59, !39, i64 954}
!645 = !{!59, !39, i64 1040}
!646 = !{!374, !36, i64 320}
!647 = distinct !{!647, !52, !53}
!648 = distinct !{!648, !52, !53}
!649 = !{!516, !41, i64 376}
!650 = !{!651, !37, i64 809}
!651 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !41, i64 640, !41, i64 648, !41, i64 656, !41, i64 664, !41, i64 672, !41, i64 680, !41, i64 688, !37, i64 696, !37, i64 760, !40, i64 776, !40, i64 780, !40, i64 784, !40, i64 788, !37, i64 792, !40, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !39, i64 824, !39, i64 826, !37, i64 828, !39, i64 844, !39, i64 846, !40, i64 848, !37, i64 852, !40, i64 864, !37, i64 868}
!652 = !{!271, !41, i64 96}
!653 = distinct !{!653, !52, !53}
!654 = distinct !{!654, !52, !53}
!655 = !{!338, !37, i64 143}
!656 = distinct !{!656, !52, !53}
!657 = !{!658, !36, i64 20}
!658 = !{!"MaskSpline", !41, i64 0, !41, i64 8, !39, i64 16, !37, i64 18, !37, i64 19, !36, i64 20, !41, i64 24, !416, i64 32, !41, i64 216}
!659 = !{!658, !41, i64 24}
!660 = !{!415, !37, i64 51}
!661 = !{!415, !37, i64 52}
!662 = !{!415, !37, i64 53}
!663 = distinct !{!663, !52, !53}
!664 = distinct !{!664, !52, !53}
!665 = distinct !{!665, !52, !53}
!666 = distinct !{!666, !52, !53}
!667 = distinct !{!667, !52, !53}
!668 = !{!257, !41, i64 0}
!669 = !{!670, !41, i64 808}
!670 = !{!"Brush", !60, i64 0, !671, i64 120, !41, i64 144, !672, i64 152, !672, i64 464, !41, i64 776, !41, i64 784, !41, i64 792, !41, i64 800, !41, i64 808, !37, i64 816, !40, i64 1840, !39, i64 1844, !39, i64 1846, !40, i64 1848, !36, i64 1852, !36, i64 1856, !36, i64 1860, !40, i64 1864, !36, i64 1868, !36, i64 1872, !36, i64 1876, !36, i64 1880, !40, i64 1884, !40, i64 1888, !37, i64 1892, !40, i64 1904, !37, i64 1908, !36, i64 1920, !40, i64 1924, !40, i64 1928, !36, i64 1932, !36, i64 1936, !36, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !40, i64 1948, !40, i64 1952, !40, i64 1956, !40, i64 1960, !40, i64 1964, !36, i64 1968, !36, i64 1972, !36, i64 1976, !40, i64 1980, !40, i64 1984, !36, i64 1988, !36, i64 1992, !40, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!671 = !{!"BrushClone", !41, i64 0, !37, i64 8, !40, i64 16, !40, i64 20}
!672 = !{!"MTex", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !41, i64 8, !41, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !40, i64 116, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !39, i64 128, !39, i64 130, !37, i64 132, !37, i64 133, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308}
!673 = !{!674, !36, i64 128}
!674 = !{!"PaintCurve", !60, i64 0, !41, i64 120, !36, i64 128, !36, i64 132}
!675 = !{!674, !41, i64 120}
!676 = !{!677, !37, i64 51}
!677 = !{!"PaintCurvePoint", !229, i64 0, !40, i64 72}
!678 = !{!677, !37, i64 52}
!679 = !{!677, !37, i64 53}
!680 = distinct !{!680, !52, !53}
!681 = distinct !{!681, !52, !53}
!682 = distinct !{!682, !52, !53}
!683 = distinct !{!683, !52, !53}
!684 = distinct !{!684, !52, !53}
!685 = !{i16 0, i16 2}
!686 = distinct !{!686, !52, !53}
!687 = distinct !{!687, !52, !53}
!688 = !{!374, !41, i64 104}
!689 = !{!374, !41, i64 88}
!690 = !{!374, !40, i64 96}
!691 = !{!70, !40, i64 272}
!692 = !{!50, !41, i64 184}
!693 = distinct !{!693, !52, !53}
!694 = distinct !{!694, !52, !53}
!695 = distinct !{!695, !52, !53}
!696 = !{!181, !41, i64 16}
!697 = distinct !{!697, !52, !53}
!698 = distinct !{!698, !52, !53}
!699 = !{!181, !36, i64 136}
!700 = distinct !{!700, !52, !53}
!701 = distinct !{!701, !52, !53}
!702 = distinct !{!702, !52, !53}
!703 = distinct !{!703, !52, !53}
!704 = distinct !{!704, !52, !53}
!705 = distinct !{!705, !52, !53}
!706 = distinct !{!706, !52, !53}
!707 = distinct !{!707, !52, !53}
!708 = distinct !{!708, !52, !53}
!709 = !{!386, !41, i64 24}
!710 = distinct !{!710, !52, !53}
!711 = distinct !{!711, !52, !53}
!712 = !{!75, !39, i64 26}
!713 = distinct !{!713, !52, !53}
!714 = !{i64 0, i64 8, !63, i64 8, i64 2, !88, i64 10, i64 2, !88, i64 12, i64 2, !88, i64 14, i64 2, !88, i64 16, i64 64, !81, i64 80, i64 8, !63, i64 88, i64 64, !81, i64 152, i64 4, !112, i64 156, i64 4, !112, i64 160, i64 4, !112, i64 164, i64 12, !81, i64 176, i64 2, !88, i64 178, i64 2, !88, i64 180, i64 4, !112}
!715 = distinct !{!715, !52, !53}
!716 = distinct !{!716, !52, !53}
!717 = !{!718, !36, i64 8}
!718 = !{!"bChildOfConstraint", !41, i64 0, !36, i64 8, !36, i64 12, !37, i64 16, !37, i64 80}
!719 = !{!720, !36, i64 8}
!720 = !{!"bRotateLikeConstraint", !41, i64 0, !36, i64 8, !36, i64 12, !37, i64 16}
!721 = distinct !{!721, !52, !53}
!722 = !{!59, !40, i64 616}
!723 = !{!59, !41, i64 1176}
!724 = !{!59, !39, i64 952}
