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
%struct.SpaceIpo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.ListBase, i16, i16, i32, float, i32 }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.BeztMap = type { ptr, i32, i32, i16, i8, i8 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.TransDataCurveHandleFlags = type { i8, i8, ptr, ptr }
%struct.TransDataGraph = type { float }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.EdgeSlideData = type { ptr, i32, ptr, [2 x i32], [2 x i32], ptr, i8, ptr, float, i8, i8, i32 }
%struct.SpaceSeq = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, float, float, i16, i16, i16, i16, i32, float, i32, i32, ptr, %struct.SequencerScopes }
%struct.SequencerScopes = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SpaceNode = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, ptr, i16, i16, float, float, float, float, float, [2 x float], %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, %struct.ListBase, ptr }
%struct.SpaceAction = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.bDopeSheet, i8, i8, i16, float }
%struct.bDopeSheet = type { ptr, %struct.ListBase, ptr, [64 x i8], i32, i32, i32, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }
%struct.PointCache = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [64 x i8], [64 x i8], [64 x i8], [1024 x i8], ptr, %struct.ListBase, ptr, ptr }
%struct.TransDataExtension = type { [3 x float], [4 x float], [3 x float], ptr, [3 x float], ptr, [4 x float], ptr, float, ptr, [4 x float], ptr, [3 x float], [4 x [4 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x float], [3 x float], float }
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
%struct.bGPdata = type { %struct.ID, %struct.ListBase, i32, i16, i16, ptr }
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }
%struct.bGPDframe = type { ptr, ptr, %struct.ListBase, i32, i32 }
%struct.Mask = type { %struct.ID, ptr, %struct.ListBase, i32, i32, i32, i32, i32, i32 }
%struct.MaskLayer = type { ptr, ptr, [64 x i8], %struct.ListBase, %struct.ListBase, ptr, ptr, float, i8, i8, i8, [7 x i8], i8, i8 }
%struct.MaskLayerShape = type { ptr, ptr, ptr, i32, i32, i8, [7 x i8] }
%struct.TransDataTracking = type { i32, i32, i32, ptr, ptr, [2 x float], [2 x float], [2 x float], ptr, i32, ptr, ptr, float, i16, ptr, ptr }
%struct.MovieTrackingPlaneMarker = type { [4 x [2 x float]], i32, i32 }
%struct.TransDataMasking = type { i8, [2 x float], [2 x float], [3 x [3 x float]], ptr, [3 x [3 x float]], [3 x [3 x float]], i8, i32 }
%struct.TransDataPaintCurve = type { ptr, i8 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.MaskSpline = type { ptr, ptr, i16, i8, i8, i32, ptr, %struct.MaskParent, ptr }
%struct.MaskParent = type { i32, i32, ptr, [64 x i8], [64 x i8], [2 x float], [4 x [2 x float]] }
%struct.MaskSplinePoint = type { %struct.BezTriple, i32, i32, ptr, %struct.MaskParent }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.PaintCurve = type { %struct.ID, ptr, i32, i32 }
%struct.PaintCurvePoint = type { %struct.BezTriple, float }
%struct.UvElementMap = type { ptr, ptr, i32, i32, ptr }
%struct.UvElement = type { ptr, ptr, i16, i8, i8, i16 }
%struct.NlaStrip = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, ptr, i32, i32 }
%struct.SpaceNla = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i16, i16, i32, ptr, %struct.View2D }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.TransDataNla = type { ptr, ptr, ptr, ptr, [3 x float], [3 x float], i32, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
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
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.LinkNode = type { ptr, ptr }
%struct.BMEditSelection = type { ptr, ptr, ptr, i8 }
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

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @sort_trans_data_dist(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %27

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  br label %8

8:                                                ; preds = %5, %15
  %9 = phi i32 [ %17, %15 ], [ 0, %5 ]
  %10 = phi ptr [ %16, %15 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.TransData, ptr %10, i64 0, i32 16
  %12 = load i32, ptr %11, align 8, !tbaa !49
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.TransData, ptr %10, i64 1
  %17 = add nuw nsw i32 %9, 1
  %18 = icmp eq i32 %17, %3
  br i1 %18, label %27, label %8, !llvm.loop !51

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !53
  %22 = and i32 %21, 4096
  %23 = icmp eq i32 %22, 0
  %24 = sub nsw i32 %3, %9
  %25 = sext i32 %24 to i64
  %26 = select i1 %23, ptr @trans_data_compare_rdist, ptr @trans_data_compare_dist
  tail call void @qsort(ptr noundef nonnull %10, i64 noundef %25, i64 noundef 224, ptr noundef nonnull %26) #22
  br label %27

27:                                               ; preds = %15, %19, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @trans_data_compare_dist(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !PGOFuncName !54 {
  %3 = load float, ptr %0, align 8, !tbaa !55
  %4 = load float, ptr %1, align 8, !tbaa !55
  %5 = fcmp olt float %3, %4
  %6 = fcmp ogt float %3, %4
  %7 = zext i1 %6 to i32
  %8 = select i1 %5, i32 -1, i32 %7
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @trans_data_compare_rdist(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !PGOFuncName !56 {
  %3 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 4, !tbaa !57
  %5 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !57
  %7 = fcmp olt float %4, %6
  %8 = fcmp ogt float %4, %6
  %9 = zext i1 %8 to i32
  %10 = select i1 %7, i32 -1, i32 %9
  ret i32 %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @count_set_pose_transflags(ptr nocapture noundef %0, i16 noundef signext %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = load i32, ptr %0, align 4, !tbaa !58
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %103, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = getelementptr inbounds %struct.bArmature, ptr %11, i64 0, i32 15
  %13 = load i32, ptr %12, align 8, !tbaa !66
  br label %14

14:                                               ; preds = %9, %37
  %15 = phi ptr [ %7, %9 ], [ %38, %37 ]
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %15, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !68
  %18 = getelementptr inbounds %struct.Bone, ptr %17, i64 0, i32 25
  %19 = load i32, ptr %18, align 8, !tbaa !70
  %20 = and i32 %13, %19
  %21 = icmp ne i32 %20, 0
  %22 = getelementptr inbounds %struct.Bone, ptr %17, i64 0, i32 10
  %23 = load i32, ptr %22, align 8, !tbaa !72
  %24 = and i32 %23, 64
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %21, i1 %25, i1 false
  br i1 %26, label %27, label %34

27:                                               ; preds = %14
  %28 = and i32 %23, 1
  %29 = icmp eq i32 %28, 0
  %30 = and i32 %23, -1065034
  %31 = or i32 %23, 8
  %32 = select i1 %29, i32 %30, i32 %31
  %33 = and i32 %32, -1065025
  store i32 %33, ptr %22, align 8, !tbaa !72
  br label %37

34:                                               ; preds = %14
  %35 = getelementptr inbounds %struct.Bone, ptr %17, i64 0, i32 10
  %36 = and i32 %23, -9
  store i32 %36, ptr %35, align 8, !tbaa !72
  br label %37

37:                                               ; preds = %27, %34
  %38 = load ptr, ptr %15, align 8, !tbaa !64
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %14, !llvm.loop !73

40:                                               ; preds = %37
  %41 = icmp eq i32 %4, 14
  br i1 %41, label %59, label %42

42:                                               ; preds = %40
  br i1 %8, label %103, label %43

43:                                               ; preds = %42, %53
  %44 = phi ptr [ %54, %53 ], [ %7, %42 ]
  %45 = getelementptr inbounds %struct.bPoseChannel, ptr %44, i64 0, i32 12
  %46 = load ptr, ptr %45, align 8, !tbaa !68
  %47 = getelementptr inbounds %struct.Bone, ptr %46, i64 0, i32 10
  %48 = load i32, ptr %47, align 8, !tbaa !72
  %49 = and i32 %48, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.Bone, ptr %46, i64 0, i32 4
  tail call fastcc void @bone_children_clear_transflag(i32 noundef %4, i16 noundef signext %1, ptr noundef nonnull %52) #23
  br label %53

53:                                               ; preds = %43, %51
  %54 = load ptr, ptr %44, align 8, !tbaa !64
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %43, !llvm.loop !74

56:                                               ; preds = %53
  %57 = load ptr, ptr %5, align 8, !tbaa !59
  %58 = load ptr, ptr %57, align 8, !tbaa !64
  br label %59

59:                                               ; preds = %56, %40
  %60 = phi ptr [ %58, %56 ], [ %7, %40 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %103, label %62

62:                                               ; preds = %59
  %63 = icmp eq i32 %4, 1
  br label %64

64:                                               ; preds = %62, %96
  %65 = phi ptr [ %60, %62 ], [ %99, %96 ]
  %66 = phi i32 [ 0, %62 ], [ %98, %96 ]
  %67 = phi i32 [ 0, %62 ], [ %97, %96 ]
  %68 = getelementptr inbounds %struct.bPoseChannel, ptr %65, i64 0, i32 12
  %69 = load ptr, ptr %68, align 8, !tbaa !68
  %70 = getelementptr inbounds %struct.Bone, ptr %69, i64 0, i32 10
  %71 = load i32, ptr %70, align 8, !tbaa !72
  %72 = and i32 %71, 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %96, label %74

74:                                               ; preds = %64
  %75 = add nsw i32 %66, 1
  br i1 %63, label %76, label %96

76:                                               ; preds = %74
  %77 = tail call fastcc ptr @has_targetless_ik(ptr noundef nonnull %65) #23
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %96

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.bPoseChannel, ptr %65, i64 0, i32 13
  %81 = load ptr, ptr %80, align 8, !tbaa !75
  %82 = icmp eq ptr %81, null
  %83 = and i32 %71, 16
  %84 = icmp eq i32 %83, 0
  %85 = or i1 %84, %82
  br i1 %85, label %90, label %86

86:                                               ; preds = %79
  %87 = and i32 %71, 16384
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, i32 %67, i32 1
  br label %96

90:                                               ; preds = %79
  %91 = getelementptr inbounds %struct.bPoseChannel, ptr %65, i64 0, i32 7
  %92 = load i16, ptr %91, align 4, !tbaa !76
  %93 = and i16 %92, 7
  %94 = icmp eq i16 %93, 7
  %95 = select i1 %94, i32 %67, i32 1
  br label %96

96:                                               ; preds = %90, %86, %76, %64, %74
  %97 = phi i32 [ %67, %74 ], [ %67, %64 ], [ %89, %86 ], [ %95, %90 ], [ 1, %76 ]
  %98 = phi i32 [ %75, %74 ], [ %66, %64 ], [ %75, %86 ], [ %75, %90 ], [ %75, %76 ]
  %99 = load ptr, ptr %65, align 8, !tbaa !64
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %64, !llvm.loop !77

101:                                              ; preds = %96
  %102 = icmp ne i32 %97, 0
  br label %103

103:                                              ; preds = %3, %42, %101, %59
  %104 = phi i1 [ false, %59 ], [ %102, %101 ], [ false, %42 ], [ false, %3 ]
  %105 = phi i32 [ 0, %59 ], [ %98, %101 ], [ 0, %42 ], [ 0, %3 ]
  %106 = icmp ne i32 %4, 1
  %107 = select i1 %106, i1 true, i1 %104
  br i1 %107, label %109, label %108

108:                                              ; preds = %103
  store i32 2, ptr %0, align 4, !tbaa !58
  br label %109

109:                                              ; preds = %108, %103
  ret i32 %105
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bone_children_clear_transflag(i32 noundef %0, i16 noundef signext %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !78 {
  %4 = load ptr, ptr %2, align 8, !tbaa !64
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
  %14 = load i32, ptr %13, align 8, !tbaa !72
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
  store i32 %28, ptr %13, align 8, !tbaa !72
  %29 = getelementptr inbounds %struct.Bone, ptr %12, i64 0, i32 4
  tail call fastcc void @bone_children_clear_transflag(i32 noundef %0, i16 noundef signext %1, ptr noundef nonnull %29) #23
  %30 = load ptr, ptr %12, align 8, !tbaa !64
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %11, !llvm.loop !79

32:                                               ; preds = %27, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @has_targetless_ik(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !80 {
  %2 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %1, %27
  %6 = phi ptr [ %28, %27 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !81
  %9 = icmp eq i16 %8, 3
  br i1 %9, label %10, label %27

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 9
  %12 = load float, ptr %11, align 8, !tbaa !83
  %13 = fcmp une float %12, 0.000000e+00
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !84
  %17 = load ptr, ptr %16, align 8, !tbaa !85
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !87
  %22 = icmp eq i16 %21, 25
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.bKinematicConstraint, ptr %16, i64 0, i32 5
  %25 = load i8, ptr %24, align 8, !tbaa !88
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %19, %5, %10
  %28 = load ptr, ptr %6, align 8, !tbaa !64
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %5, !llvm.loop !89

30:                                               ; preds = %27, %14, %23, %1
  %31 = phi ptr [ null, %1 ], [ %16, %23 ], [ %16, %14 ], [ null, %27 ]
  ret ptr %31
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @transform_autoik_update(ptr nocapture noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 57
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 14
  switch i16 %1, label %16 [
    i16 1, label %6
    i16 -1, label %9
  ]

6:                                                ; preds = %2
  %7 = load i16, ptr %5, align 2, !tbaa !91
  %8 = add i16 %7, 1
  br label %14

9:                                                ; preds = %2
  %10 = load i16, ptr %5, align 2, !tbaa !91
  %11 = icmp sgt i16 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = add nsw i16 %10, -1
  br label %14

14:                                               ; preds = %6, %12
  %15 = phi i16 [ %13, %12 ], [ %8, %6 ]
  store i16 %15, ptr %5, align 2, !tbaa !91
  br label %16

16:                                               ; preds = %14, %2, %9
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %18 = load ptr, ptr %17, align 8, !tbaa !92
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %22, align 8, !tbaa !64
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %24, %27
  %28 = phi ptr [ %30, %27 ], [ %25, %24 ]
  %29 = load i16, ptr %5, align 2, !tbaa !91
  tail call fastcc void @pchan_autoik_adjust(ptr noundef nonnull %28, i16 noundef signext %29) #23
  %30 = load ptr, ptr %28, align 8, !tbaa !64
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %27, !llvm.loop !93

32:                                               ; preds = %27, %24, %16, %20
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @pchan_autoik_adjust(ptr nocapture noundef readonly %0, i16 noundef signext %1) unnamed_addr #6 !PGOFuncName !94 {
  %3 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 9
  %4 = load i8, ptr %3, align 8, !tbaa !95
  %5 = and i8 %4, 9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %38, label %11

11:                                               ; preds = %7
  %12 = icmp eq i16 %1, 0
  br label %13

13:                                               ; preds = %11, %35
  %14 = phi ptr [ %9, %11 ], [ %36, %35 ]
  %15 = getelementptr inbounds %struct.bConstraint, ptr %14, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !81
  %17 = icmp eq i16 %16, 3
  br i1 %17, label %18, label %35

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.bConstraint, ptr %14, i64 0, i32 9
  %20 = load float, ptr %19, align 8, !tbaa !83
  %21 = fcmp une float %20, 0.000000e+00
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bConstraint, ptr %14, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !84
  %25 = getelementptr inbounds %struct.bKinematicConstraint, ptr %24, i64 0, i32 2
  %26 = load i16, ptr %25, align 2, !tbaa !96
  %27 = and i16 %26, 8
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.bKinematicConstraint, ptr %24, i64 0, i32 4
  %31 = load i16, ptr %30, align 2, !tbaa !97
  %32 = tail call i16 @llvm.smin.i16(i16 %31, i16 %1)
  %33 = select i1 %12, i16 %31, i16 %32
  %34 = getelementptr inbounds %struct.bKinematicConstraint, ptr %24, i64 0, i32 3
  store i16 %33, ptr %34, align 4, !tbaa !98
  br label %35

35:                                               ; preds = %29, %22, %13, %18
  %36 = load ptr, ptr %14, align 8, !tbaa !64
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %13, !llvm.loop !99

38:                                               ; preds = %35, %7, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @restoreBones(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = load ptr, ptr %3, align 8, !tbaa !101
  %5 = icmp eq ptr %4, null
  br i1 %5, label %77, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %8 = load ptr, ptr %7, align 8, !tbaa !103
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 8
  %12 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 4
  br label %13

13:                                               ; preds = %6, %73
  %14 = phi ptr [ %4, %6 ], [ %75, %73 ]
  %15 = phi ptr [ %3, %6 ], [ %74, %73 ]
  %16 = getelementptr inbounds %struct.BoneInitData, ptr %15, i64 0, i32 5
  %17 = load float, ptr %16, align 8, !tbaa !104
  %18 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 11
  store float %17, ptr %18, align 4, !tbaa !105
  %19 = getelementptr inbounds %struct.BoneInitData, ptr %15, i64 0, i32 2
  %20 = load float, ptr %19, align 4, !tbaa !107
  %21 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 19
  store float %20, ptr %21, align 4, !tbaa !108
  %22 = getelementptr inbounds %struct.BoneInitData, ptr %15, i64 0, i32 3
  %23 = load float, ptr %22, align 8, !tbaa !109
  %24 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 6
  store float %23, ptr %24, align 8, !tbaa !110
  %25 = getelementptr inbounds %struct.BoneInitData, ptr %15, i64 0, i32 6
  %26 = load float, ptr %25, align 4, !tbaa !111
  %27 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 13
  store float %26, ptr %27, align 4, !tbaa !112
  %28 = getelementptr inbounds %struct.BoneInitData, ptr %15, i64 0, i32 7
  %29 = load float, ptr %28, align 8, !tbaa !113
  %30 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 15
  store float %29, ptr %30, align 4, !tbaa !114
  %31 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 7
  %32 = getelementptr inbounds %struct.BoneInitData, ptr %15, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %31, ptr noundef nonnull %32) #23
  %33 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 8
  %34 = getelementptr inbounds %struct.BoneInitData, ptr %15, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %33, ptr noundef nonnull %34) #23
  %35 = load i32, ptr %11, align 8, !tbaa !115
  %36 = and i32 %35, 256
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %73, label %38

38:                                               ; preds = %13
  %39 = load ptr, ptr %12, align 8, !tbaa !116
  %40 = load ptr, ptr %39, align 8, !tbaa !64
  %41 = icmp eq ptr %40, null
  br i1 %41, label %59, label %42

42:                                               ; preds = %38, %56
  %43 = phi ptr [ %57, %56 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.EditBone, ptr %43, i64 0, i32 9
  %45 = load i32, ptr %44, align 4, !tbaa !117
  %46 = and i32 %45, 16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.EditBone, ptr %43, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !118
  %51 = icmp eq ptr %50, %14
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.EditBone, ptr %43, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %53, ptr noundef nonnull %33) #23
  %54 = load float, ptr %21, align 4, !tbaa !108
  %55 = getelementptr inbounds %struct.EditBone, ptr %43, i64 0, i32 18
  store float %54, ptr %55, align 8, !tbaa !119
  br label %56

56:                                               ; preds = %42, %48, %52
  %57 = load ptr, ptr %43, align 8, !tbaa !64
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %42, !llvm.loop !120

59:                                               ; preds = %56, %38
  %60 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 9
  %61 = load i32, ptr %60, align 4, !tbaa !117
  %62 = and i32 %61, 16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !118
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.EditBone, ptr %66, i64 0, i32 8
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %69, ptr noundef nonnull %31) #23
  %70 = getelementptr inbounds %struct.EditBone, ptr %14, i64 0, i32 18
  %71 = load float, ptr %70, align 8, !tbaa !119
  %72 = getelementptr inbounds %struct.EditBone, ptr %66, i64 0, i32 19
  store float %71, ptr %72, align 4, !tbaa !108
  br label %73

73:                                               ; preds = %59, %64, %68, %13
  %74 = getelementptr inbounds %struct.BoneInitData, ptr %15, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !101
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %13, !llvm.loop !121

77:                                               ; preds = %73, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !122 {
  %3 = load float, ptr %1, align 4, !tbaa !123
  store float %3, ptr %0, align 4, !tbaa !123
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !123
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !123
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !123
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !123
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @flushTransParticles(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = alloca [4 x [4 x float]], align 16
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !125
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !144
  br label %13

13:                                               ; preds = %1, %10
  %14 = phi ptr [ %12, %10 ], [ null, %1 ]
  %15 = tail call ptr @PE_get_current(ptr noundef nonnull %6, ptr noundef %14) #22
  %16 = getelementptr inbounds %struct.PTCacheEdit, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #24
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !53
  %20 = and i32 %19, 2048
  %21 = icmp eq ptr %17, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %13
  %23 = tail call ptr @psys_get_modifier(ptr noundef %14, ptr noundef nonnull %17) #22
  br label %24

24:                                               ; preds = %22, %13
  %25 = phi ptr [ %23, %22 ], [ null, %13 ]
  %26 = getelementptr inbounds %struct.PTCacheEdit, ptr %15, i64 0, i32 11
  %27 = load i32, ptr %26, align 8, !tbaa !149
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %86

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.PTCacheEdit, ptr %15, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !150
  %32 = getelementptr inbounds %struct.ParticleSystem, ptr %17, i64 0, i32 25
  %33 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %25, i64 0, i32 2
  %34 = getelementptr inbounds %struct.ParticleSystem, ptr %17, i64 0, i32 2
  %35 = getelementptr inbounds %struct.ParticleSystem, ptr %17, i64 0, i32 3
  %36 = icmp eq i32 %20, 0
  br label %37

37:                                               ; preds = %29, %80
  %38 = phi i64 [ 0, %29 ], [ %81, %80 ]
  %39 = phi ptr [ %31, %29 ], [ %82, %80 ]
  %40 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %39, i64 0, i32 2
  %41 = load i16, ptr %40, align 4, !tbaa !151
  %42 = and i16 %41, 4
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %80, label %44

44:                                               ; preds = %37
  br i1 %21, label %78, label %45

45:                                               ; preds = %44
  %46 = load i32, ptr %32, align 4, !tbaa !153
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %78

49:                                               ; preds = %45
  %50 = load ptr, ptr %33, align 8, !tbaa !155
  %51 = load ptr, ptr %34, align 8, !tbaa !158
  %52 = getelementptr inbounds %struct.ParticleSettings, ptr %51, i64 0, i32 8
  %53 = load i16, ptr %52, align 2, !tbaa !159
  %54 = load ptr, ptr %35, align 8, !tbaa !161
  %55 = getelementptr inbounds %struct.ParticleData, ptr %54, i64 %38
  call void @psys_mat_hair_to_global(ptr noundef %14, ptr noundef %50, i16 noundef signext %53, ptr noundef %55, ptr noundef nonnull %2) #22
  %56 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %2) #22
  %57 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %39, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !162
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %49
  %61 = load ptr, ptr %39, align 8, !tbaa !163
  br label %62

62:                                               ; preds = %60, %73
  %63 = phi i32 [ %74, %73 ], [ 0, %60 ]
  %64 = phi ptr [ %75, %73 ], [ %61, %60 ]
  %65 = getelementptr inbounds %struct.PTCacheEditKey, ptr %64, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %65) #23
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #22
  %66 = load ptr, ptr %64, align 8, !tbaa !164
  br i1 %36, label %70, label %67

67:                                               ; preds = %62
  %68 = call fastcc zeroext i8 @compare_v3v3(ptr noundef %66, ptr noundef nonnull %4) #23
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67, %62
  call fastcc void @copy_v3_v3(ptr noundef %66, ptr noundef nonnull %4) #23
  %71 = load i16, ptr %40, align 4, !tbaa !151
  %72 = or i16 %71, 2
  store i16 %72, ptr %40, align 4, !tbaa !151
  br label %73

73:                                               ; preds = %67, %70
  %74 = add nuw nsw i32 %63, 1
  %75 = getelementptr inbounds %struct.PTCacheEditKey, ptr %64, i64 1
  %76 = load i32, ptr %57, align 8, !tbaa !162
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %62, label %80, !llvm.loop !166

78:                                               ; preds = %45, %44
  %79 = or i16 %41, 2
  store i16 %79, ptr %40, align 4, !tbaa !151
  br label %80

80:                                               ; preds = %73, %49, %78, %37
  %81 = add nuw nsw i64 %38, 1
  %82 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %39, i64 1
  %83 = load i32, ptr %26, align 8, !tbaa !149
  %84 = sext i32 %83 to i64
  %85 = icmp slt i64 %81, %84
  br i1 %85, label %37, label %86, !llvm.loop !167

86:                                               ; preds = %80, %24
  %87 = load ptr, ptr %7, align 8, !tbaa !125
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.Base, ptr %87, i64 0, i32 7
  %91 = load ptr, ptr %90, align 8, !tbaa !144
  br label %92

92:                                               ; preds = %86, %89
  %93 = phi ptr [ %91, %89 ], [ null, %86 ]
  call void @PE_update_object(ptr noundef nonnull %6, ptr noundef %93, i32 noundef 1) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #24
  ret void
}

; Function Attrs: optsize
declare ptr @PE_get_current(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @psys_get_modifier(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @psys_mat_hair_to_global(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @compare_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !168 {
  %3 = load float, ptr %0, align 4, !tbaa !123
  %4 = load float, ptr %1, align 4, !tbaa !123
  %5 = fsub float %3, %4
  %6 = tail call float @llvm.fabs.f32(float %5)
  %7 = fcmp ugt float %6, 0x3F1A36E2E0000000
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !123
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !123
  %13 = fsub float %10, %12
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = fcmp ugt float %14, 0x3F1A36E2E0000000
  br i1 %15, label %24, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds float, ptr %0, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !123
  %19 = getelementptr inbounds float, ptr %1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !123
  %21 = fsub float %18, %20
  %22 = tail call float @llvm.fabs.f32(float %21)
  %23 = fcmp ugt float %22, 0x3F1A36E2E0000000
  br i1 %23, label %24, label %25

24:                                               ; preds = %8, %16, %2
  br label %25

25:                                               ; preds = %16, %24
  %26 = phi i8 [ 0, %24 ], [ 1, %16 ]
  ret i8 %26
}

; Function Attrs: optsize
declare void @PE_update_object(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @flushTransNodes(ptr noundef %0) local_unnamed_addr #8 {
  %2 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !169
  %3 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !173
  tail call void @applyGridAbsolute(ptr noundef %0) #22
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %47

7:                                                ; preds = %1
  %8 = sitofp i32 %3 to float
  %9 = fmul float %2, %8
  %10 = fdiv float %9, 7.200000e+01
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !174
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = insertelement <2 x float> poison, float %10, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  br label %17

17:                                               ; preds = %7, %36
  %18 = phi i32 [ %37, %36 ], [ %5, %7 ]
  %19 = phi i32 [ %38, %36 ], [ 0, %7 ]
  %20 = phi ptr [ %39, %36 ], [ %14, %7 ]
  %21 = phi ptr [ %40, %36 ], [ %12, %7 ]
  %22 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 15
  %23 = load ptr, ptr %22, align 8, !tbaa !175
  %24 = load <2 x float>, ptr %21, align 8, !tbaa !123
  %25 = fdiv <2 x float> %24, %16
  %26 = getelementptr inbounds %struct.bNode, ptr %23, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !176
  %28 = icmp eq ptr %27, null
  %29 = getelementptr inbounds %struct.bNode, ptr %23, i64 0, i32 24
  br i1 %28, label %35, label %30

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.bNode, ptr %23, i64 0, i32 25
  %32 = extractelement <2 x float> %25, i64 0
  %33 = extractelement <2 x float> %25, i64 1
  tail call void @nodeFromView(ptr noundef nonnull %27, float noundef %32, float noundef %33, ptr noundef nonnull %29, ptr noundef nonnull %31) #22
  %34 = load i32, ptr %4, align 8, !tbaa !34
  br label %36

35:                                               ; preds = %17
  store <2 x float> %25, ptr %29, align 8, !tbaa !123
  br label %36

36:                                               ; preds = %35, %30
  %37 = phi i32 [ %18, %35 ], [ %34, %30 ]
  %38 = add nuw nsw i32 %19, 1
  %39 = getelementptr inbounds %struct.TransData, ptr %20, i64 1
  %40 = getelementptr inbounds %struct.TransData2D, ptr %21, i64 1
  %41 = icmp slt i32 %38, %37
  br i1 %41, label %17, label %42, !llvm.loop !178

42:                                               ; preds = %36
  %43 = icmp eq i32 %37, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %46 = load ptr, ptr %45, align 8, !tbaa !179
  tail call void @ED_node_link_intersect_test(ptr noundef %46, i32 noundef 1) #22
  br label %47

47:                                               ; preds = %1, %44, %42
  ret void
}

; Function Attrs: optsize
declare void @applyGridAbsolute(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @nodeFromView(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @ED_node_link_intersect_test(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @flushTransSeq(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #22
  %5 = load ptr, ptr %4, align 8, !tbaa !180
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %90

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !174
  %13 = load ptr, ptr %6, align 8, !tbaa !48
  br label %14

14:                                               ; preds = %10, %77
  %15 = phi i32 [ %81, %77 ], [ 0, %10 ]
  %16 = phi i32 [ %80, %77 ], [ 0, %10 ]
  %17 = phi i32 [ %79, %77 ], [ 0, %10 ]
  %18 = phi ptr [ %78, %77 ], [ null, %10 ]
  %19 = phi ptr [ %83, %77 ], [ %12, %10 ]
  %20 = phi ptr [ %82, %77 ], [ %13, %10 ]
  %21 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 15
  %22 = load ptr, ptr %21, align 8, !tbaa !175
  %23 = load ptr, ptr %22, align 8, !tbaa !182
  %24 = getelementptr inbounds %struct.Sequence, ptr %23, i64 0, i32 8
  %25 = load i32, ptr %24, align 4, !tbaa !184
  %26 = load float, ptr %19, align 8, !tbaa !123
  %27 = tail call fastcc i32 @iroundf(float noundef %26) #23
  %28 = getelementptr inbounds %struct.TransDataSeq, ptr %22, i64 0, i32 3
  %29 = load i16, ptr %28, align 8, !tbaa !186
  switch i16 %29, label %64 [
    i16 1, label %30
    i16 2, label %54
    i16 4, label %59
  ]

30:                                               ; preds = %14
  %31 = getelementptr inbounds %struct.Sequence, ptr %23, i64 0, i32 14
  %32 = load i32, ptr %31, align 4, !tbaa !187
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = tail call zeroext i8 @BKE_sequence_tx_test(ptr noundef nonnull %23) #22
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34, %30
  %38 = getelementptr inbounds %struct.TransDataSeq, ptr %22, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !188
  %40 = sub nsw i32 %27, %39
  store i32 %40, ptr %24, align 4, !tbaa !184
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i32, ptr %31, align 4, !tbaa !187
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %41
  %45 = getelementptr inbounds [3 x float], ptr %19, i64 0, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !123
  %47 = tail call fastcc i32 @iroundf(float noundef %46) #23
  %48 = getelementptr inbounds %struct.Sequence, ptr %23, i64 0, i32 13
  store i32 %47, ptr %48, align 8, !tbaa !189
  %49 = icmp slt i32 %47, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 1, ptr %48, align 8, !tbaa !189
  br label %64

51:                                               ; preds = %44
  %52 = icmp ugt i32 %47, 32
  br i1 %52, label %53, label %64

53:                                               ; preds = %51
  store i32 32, ptr %48, align 8, !tbaa !189
  br label %64

54:                                               ; preds = %14
  tail call void @BKE_sequence_tx_set_final_left(ptr noundef nonnull %23, i32 noundef %27) #22
  %55 = getelementptr inbounds %struct.TransDataSeq, ptr %22, i64 0, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !190
  %57 = and i32 %56, 2
  %58 = and i32 %56, 4
  tail call void @BKE_sequence_tx_handle_xlimits(ptr noundef nonnull %23, i32 noundef %57, i32 noundef %58) #22
  tail call void @BKE_sequence_single_fix(ptr noundef nonnull %23) #22
  br label %64

59:                                               ; preds = %14
  tail call void @BKE_sequence_tx_set_final_right(ptr noundef nonnull %23, i32 noundef %27) #22
  %60 = getelementptr inbounds %struct.TransDataSeq, ptr %22, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !190
  %62 = and i32 %61, 2
  %63 = and i32 %61, 4
  tail call void @BKE_sequence_tx_handle_xlimits(ptr noundef nonnull %23, i32 noundef %62, i32 noundef %63) #22
  tail call void @BKE_sequence_single_fix(ptr noundef nonnull %23) #22
  br label %64

64:                                               ; preds = %41, %51, %53, %50, %14, %59, %54
  %65 = icmp eq ptr %23, %18
  br i1 %65, label %73, label %66

66:                                               ; preds = %64
  %67 = icmp eq ptr %18, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %66
  %69 = load ptr, ptr %2, align 8, !tbaa !124
  tail call fastcc void @trans_update_seq(ptr noundef %69, ptr noundef nonnull %18, i32 noundef %17, i32 noundef %16) #23
  br label %70

70:                                               ; preds = %68, %66
  %71 = load i16, ptr %28, align 8, !tbaa !186
  %72 = sext i16 %71 to i32
  br label %77

73:                                               ; preds = %64
  %74 = load i16, ptr %28, align 8, !tbaa !186
  %75 = sext i16 %74 to i32
  %76 = or i32 %16, %75
  br label %77

77:                                               ; preds = %73, %70
  %78 = phi ptr [ %23, %70 ], [ %18, %73 ]
  %79 = phi i32 [ %25, %70 ], [ %17, %73 ]
  %80 = phi i32 [ %72, %70 ], [ %76, %73 ]
  %81 = add nuw nsw i32 %15, 1
  %82 = getelementptr inbounds %struct.TransData, ptr %20, i64 1
  %83 = getelementptr inbounds %struct.TransData2D, ptr %19, i64 1
  %84 = load i32, ptr %7, align 8, !tbaa !34
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %14, label %86, !llvm.loop !191

86:                                               ; preds = %77
  %87 = icmp eq ptr %78, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %86
  %89 = load ptr, ptr %2, align 8, !tbaa !124
  tail call fastcc void @trans_update_seq(ptr noundef %89, ptr noundef nonnull %78, i32 noundef %79, i32 noundef %80) #23
  br label %90

90:                                               ; preds = %1, %88, %86
  %91 = load i32, ptr %0, align 8, !tbaa !192
  switch i32 %91, label %131 [
    i32 30, label %92
    i32 19, label %92
  ]

92:                                               ; preds = %90, %90
  %93 = load ptr, ptr %5, align 8, !tbaa !64
  %94 = icmp eq ptr %93, null
  br i1 %94, label %131, label %98

95:                                               ; preds = %110
  %96 = load ptr, ptr %5, align 8, !tbaa !64
  %97 = icmp eq ptr %96, null
  br i1 %97, label %131, label %113

98:                                               ; preds = %92, %110
  %99 = phi ptr [ %111, %110 ], [ %93, %92 ]
  %100 = getelementptr inbounds %struct.Sequence, ptr %99, i64 0, i32 6
  %101 = load i32, ptr %100, align 4, !tbaa !193
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.Sequence, ptr %99, i64 0, i32 5
  %105 = load i32, ptr %104, align 8, !tbaa !194
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %103
  %109 = load ptr, ptr %2, align 8, !tbaa !124
  tail call void @BKE_sequence_calc(ptr noundef %109, ptr noundef nonnull %99) #22
  br label %110

110:                                              ; preds = %98, %103, %108
  %111 = load ptr, ptr %99, align 8, !tbaa !64
  %112 = icmp eq ptr %111, null
  br i1 %112, label %95, label %98, !llvm.loop !195

113:                                              ; preds = %95, %128
  %114 = phi ptr [ %129, %128 ], [ %96, %95 ]
  %115 = getelementptr inbounds %struct.Sequence, ptr %114, i64 0, i32 33
  %116 = load ptr, ptr %115, align 8, !tbaa !196
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %126

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.Sequence, ptr %114, i64 0, i32 34
  %120 = load ptr, ptr %119, align 8, !tbaa !197
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.Sequence, ptr %114, i64 0, i32 35
  %124 = load ptr, ptr %123, align 8, !tbaa !198
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %122, %118, %113
  %127 = load ptr, ptr %2, align 8, !tbaa !124
  tail call void @BKE_sequence_calc(ptr noundef %127, ptr noundef nonnull %114) #22
  br label %128

128:                                              ; preds = %122, %126
  %129 = load ptr, ptr %114, align 8, !tbaa !64
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %113, !llvm.loop !199

131:                                              ; preds = %128, %92, %95, %90
  %132 = load i32, ptr %7, align 8, !tbaa !34
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %162

134:                                              ; preds = %131
  %135 = load ptr, ptr %6, align 8, !tbaa !48
  br label %136

136:                                              ; preds = %134, %157
  %137 = phi i32 [ %158, %157 ], [ 0, %134 ]
  %138 = phi ptr [ %142, %157 ], [ null, %134 ]
  %139 = phi ptr [ %159, %157 ], [ %135, %134 ]
  %140 = getelementptr inbounds %struct.TransData, ptr %139, i64 0, i32 15
  %141 = load ptr, ptr %140, align 8, !tbaa !175
  %142 = load ptr, ptr %141, align 8, !tbaa !182
  %143 = icmp eq ptr %142, %138
  br i1 %143, label %157, label %144

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.Sequence, ptr %142, i64 0, i32 14
  %146 = load i32, ptr %145, align 4, !tbaa !187
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.Sequence, ptr %142, i64 0, i32 5
  %150 = load i32, ptr %149, align 8, !tbaa !194
  %151 = and i32 %150, -9
  store i32 %151, ptr %149, align 8, !tbaa !194
  %152 = tail call zeroext i8 @BKE_sequence_test_overlap(ptr noundef %5, ptr noundef nonnull %142) #22
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %148
  %155 = load i32, ptr %149, align 8, !tbaa !194
  %156 = or i32 %155, 8
  store i32 %156, ptr %149, align 8, !tbaa !194
  br label %157

157:                                              ; preds = %144, %154, %148, %136
  %158 = add nuw nsw i32 %137, 1
  %159 = getelementptr inbounds %struct.TransData, ptr %139, i64 1
  %160 = load i32, ptr %7, align 8, !tbaa !34
  %161 = icmp slt i32 %158, %160
  br i1 %161, label %136, label %162, !llvm.loop !200

162:                                              ; preds = %157, %131
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_sequencer_editing_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iroundf(float noundef %0) unnamed_addr #10 !PGOFuncName !201 {
  %2 = fadd float %0, 5.000000e-01
  %3 = tail call float @llvm.floor.f32(float %2)
  %4 = fptosi float %3 to i32
  ret i32 %4
}

; Function Attrs: optsize
declare zeroext i8 @BKE_sequence_tx_test(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BKE_sequence_tx_set_final_left(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BKE_sequence_tx_handle_xlimits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BKE_sequence_single_fix(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BKE_sequence_tx_set_final_right(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @trans_update_seq(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 !PGOFuncName !202 {
  %5 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 14
  %6 = load i32, ptr %5, align 4, !tbaa !187
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @BKE_sequence_calc(ptr noundef %0, ptr noundef nonnull %1) #22
  br label %10

9:                                                ; preds = %4
  tail call void @BKE_sequence_calc_disp(ptr noundef %0, ptr noundef nonnull %1) #22
  br label %10

10:                                               ; preds = %9, %8
  %11 = icmp eq i32 %3, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 8
  %14 = load i32, ptr %13, align 4, !tbaa !184
  %15 = sub nsw i32 %14, %2
  tail call void @BKE_sequencer_offset_animdata(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %15) #22
  br label %16

16:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: optsize
declare void @BKE_sequence_calc(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare zeroext i8 @BKE_sequence_test_overlap(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @flushTransUVs(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %7 = load ptr, ptr %6, align 8, !tbaa !179
  %8 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  call void @ED_space_image_get_uv_aspect(ptr noundef %9, ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  call void @ED_space_image_get_size(ptr noundef %9, ptr noundef nonnull %2, ptr noundef nonnull %3) #22
  %10 = load float, ptr %4, align 4, !tbaa !123
  %11 = fdiv float 1.000000e+00, %10
  %12 = load float, ptr %5, align 4, !tbaa !123
  %13 = fdiv float 1.000000e+00, %12
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !34
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !174
  %20 = getelementptr inbounds %struct.SpaceImage, ptr %9, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !205
  %22 = and i32 %21, 1024
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %25 = load i32, ptr %2, align 4
  %26 = load i32, ptr %3, align 4
  %27 = insertelement <2 x i32> poison, i32 %25, i64 0
  %28 = insertelement <2 x i32> %27, i32 %26, i64 1
  %29 = sitofp <2 x i32> %28 to <2 x float>
  br label %30

30:                                               ; preds = %17, %50
  %31 = phi ptr [ %19, %17 ], [ %52, %50 ]
  %32 = phi i32 [ 0, %17 ], [ %51, %50 ]
  %33 = load float, ptr %31, align 8, !tbaa !123
  %34 = getelementptr inbounds %struct.TransData2D, ptr %31, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !211
  %36 = getelementptr inbounds [3 x float], ptr %31, i64 0, i64 1
  %37 = fmul float %11, %33
  store float %37, ptr %35, align 4, !tbaa !123
  %38 = load float, ptr %36, align 4, !tbaa !123
  %39 = fmul float %13, %38
  %40 = getelementptr inbounds float, ptr %35, i64 1
  store float %39, ptr %40, align 4, !tbaa !123
  br i1 %23, label %50, label %41

41:                                               ; preds = %30
  %42 = load i16, ptr %24, align 4, !tbaa !213
  %43 = icmp eq i16 %42, 3
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = insertelement <2 x float> poison, float %37, i64 0
  %46 = insertelement <2 x float> %45, float %39, i64 1
  %47 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %29, <2 x float> %46, <2 x float> <float 5.000000e-01, float 5.000000e-01>)
  %48 = call <2 x float> @llvm.floor.v2f32(<2 x float> %47)
  %49 = fdiv <2 x float> %48, %29
  store <2 x float> %49, ptr %35, align 4, !tbaa !123
  br label %50

50:                                               ; preds = %30, %41, %44
  %51 = add nuw nsw i32 %32, 1
  %52 = getelementptr inbounds %struct.TransData2D, ptr %31, i64 1
  %53 = icmp eq i32 %51, %15
  br i1 %53, label %54, label %30, !llvm.loop !214

54:                                               ; preds = %50, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: optsize
declare void @ED_space_image_get_uv_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @ED_space_image_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @clipUVTransform(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i8 noundef zeroext %2) local_unnamed_addr #8 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca [2 x float], align 8
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %9 = load ptr, ptr %8, align 8, !tbaa !179
  %10 = getelementptr inbounds %struct.ScrArea, ptr %9, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !203
  call void @ED_space_image_get_uv_aspect(ptr noundef %11, ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %12 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !123
  %13 = load float, ptr %4, align 4, !tbaa !123
  store float %13, ptr %7, align 4, !tbaa !123
  %14 = load float, ptr %5, align 4, !tbaa !123
  %15 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  store float %14, ptr %15, align 4, !tbaa !123
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
  %26 = load ptr, ptr %25, align 8, !tbaa !215
  call void @minmax_v2v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %26) #22
  %27 = add nuw nsw i32 %23, 1
  %28 = getelementptr inbounds %struct.TransData, ptr %24, i64 1
  %29 = load i32, ptr %16, align 8, !tbaa !34
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %22, label %31, !llvm.loop !216

31:                                               ; preds = %22, %3
  %32 = icmp eq i8 %2, 0
  %33 = load float, ptr %6, align 8, !tbaa !123
  %34 = fcmp olt float %33, 0.000000e+00
  br i1 %32, label %100, label %35

35:                                               ; preds = %31
  br i1 %34, label %38, label %36

36:                                               ; preds = %35
  %37 = load float, ptr %4, align 4, !tbaa !123
  br label %49

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %40 = load float, ptr %39, align 4, !tbaa !123
  %41 = fcmp ogt float %40, 0.000000e+00
  %42 = load float, ptr %4, align 4, !tbaa !123
  %43 = fmul float %42, 5.000000e-01
  %44 = fcmp olt float %40, %43
  %45 = select i1 %41, i1 %44, i1 false
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = fsub float %40, %33
  %48 = fdiv float %40, %47
  br label %61

49:                                               ; preds = %36, %38
  %50 = phi float [ %37, %36 ], [ %42, %38 ]
  %51 = load float, ptr %7, align 4, !tbaa !123
  %52 = fcmp ogt float %51, %50
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %55 = load float, ptr %54, align 4, !tbaa !123
  %56 = fcmp olt float %55, %50
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = fsub float %55, %50
  %59 = fsub float %55, %51
  %60 = fdiv float %58, %59
  br label %61

61:                                               ; preds = %46, %57
  %62 = phi float [ %60, %57 ], [ %48, %46 ]
  %63 = load float, ptr %1, align 4, !tbaa !123
  %64 = fmul float %62, %63
  store float %64, ptr %1, align 4, !tbaa !123
  br label %65

65:                                               ; preds = %61, %49, %53
  %66 = phi i32 [ 0, %53 ], [ 0, %49 ], [ 1, %61 ]
  %67 = load float, ptr %12, align 4, !tbaa !123
  %68 = fcmp olt float %67, 0.000000e+00
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = load float, ptr %5, align 4, !tbaa !123
  br label %85

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !123
  %74 = fcmp ogt float %73, 0.000000e+00
  %75 = load float, ptr %5, align 4, !tbaa !123
  %76 = fmul float %75, 5.000000e-01
  %77 = fcmp olt float %73, %76
  %78 = select i1 %74, i1 %77, i1 false
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = fsub float %73, %67
  %81 = fdiv float %73, %80
  %82 = getelementptr inbounds float, ptr %1, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !123
  %84 = fmul float %81, %83
  store float %84, ptr %82, align 4, !tbaa !123
  br label %128

85:                                               ; preds = %69, %71
  %86 = phi float [ %70, %69 ], [ %75, %71 ]
  %87 = load float, ptr %15, align 4, !tbaa !123
  %88 = fcmp ogt float %87, %86
  br i1 %88, label %89, label %128

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !123
  %92 = fcmp olt float %91, %86
  br i1 %92, label %93, label %128

93:                                               ; preds = %89
  %94 = fsub float %91, %86
  %95 = fsub float %91, %87
  %96 = fdiv float %94, %95
  %97 = getelementptr inbounds float, ptr %1, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !123
  %99 = fmul float %96, %98
  store float %99, ptr %97, align 4, !tbaa !123
  br label %128

100:                                              ; preds = %31
  br i1 %34, label %107, label %101

101:                                              ; preds = %100
  %102 = load float, ptr %7, align 4, !tbaa !123
  %103 = load float, ptr %4, align 4, !tbaa !123
  %104 = fcmp ogt float %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = fsub float %102, %103
  br label %107

107:                                              ; preds = %100, %105
  %108 = phi float [ %106, %105 ], [ %33, %100 ]
  %109 = load float, ptr %1, align 4, !tbaa !123
  %110 = fsub float %109, %108
  store float %110, ptr %1, align 4, !tbaa !123
  br label %111

111:                                              ; preds = %107, %101
  %112 = phi i32 [ 0, %101 ], [ 1, %107 ]
  %113 = load float, ptr %12, align 4, !tbaa !123
  %114 = fcmp olt float %113, 0.000000e+00
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = getelementptr inbounds float, ptr %1, i64 1
  %117 = load float, ptr %116, align 4, !tbaa !123
  %118 = fsub float %117, %113
  store float %118, ptr %116, align 4, !tbaa !123
  br label %128

119:                                              ; preds = %111
  %120 = load float, ptr %15, align 4, !tbaa !123
  %121 = load float, ptr %5, align 4, !tbaa !123
  %122 = fcmp ogt float %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = fsub float %120, %121
  %125 = getelementptr inbounds float, ptr %1, i64 1
  %126 = load float, ptr %125, align 4, !tbaa !123
  %127 = fsub float %126, %124
  store float %127, ptr %125, align 4, !tbaa !123
  br label %128

128:                                              ; preds = %119, %85, %89, %115, %123, %79, %93
  %129 = phi i32 [ %66, %79 ], [ %66, %93 ], [ %112, %115 ], [ %112, %123 ], [ %66, %89 ], [ %66, %85 ], [ %112, %119 ]
  %130 = phi i1 [ true, %79 ], [ true, %93 ], [ true, %115 ], [ true, %123 ], [ false, %89 ], [ false, %85 ], [ false, %119 ]
  %131 = icmp ne i32 %129, 0
  %132 = or i1 %131, %130
  %133 = zext i1 %132 to i8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  ret i8 %133
}

; Function Attrs: optsize
declare void @minmax_v2v2_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @clipUVData(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %5 = load ptr, ptr %4, align 8, !tbaa !179
  %6 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !203
  call void @ED_space_image_get_uv_aspect(ptr noundef %7, ptr noundef nonnull %2, ptr noundef nonnull %3) #22
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  br label %14

14:                                               ; preds = %11, %38
  %15 = phi i32 [ %39, %38 ], [ 0, %11 ]
  %16 = phi ptr [ %40, %38 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.TransData, ptr %16, i64 0, i32 16
  %18 = load i32, ptr %17, align 8, !tbaa !49
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %14
  %22 = and i32 %18, 2048
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.TransData, ptr %16, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !215
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = load float, ptr %26, align 4, !tbaa !123
  %30 = call fastcc float @max_ff(float noundef %29) #23
  %31 = load float, ptr %2, align 4, !tbaa !123
  %32 = call fastcc float @min_ff(float noundef %30, float noundef %31) #23
  store float %32, ptr %26, align 4, !tbaa !123
  %33 = getelementptr inbounds float, ptr %26, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !123
  %35 = call fastcc float @max_ff(float noundef %34) #23
  %36 = load float, ptr %3, align 4, !tbaa !123
  %37 = call fastcc float @min_ff(float noundef %35, float noundef %36) #23
  store float %37, ptr %33, align 4, !tbaa !123
  br label %38

38:                                               ; preds = %21, %24, %28
  %39 = add nuw nsw i32 %15, 1
  %40 = getelementptr inbounds %struct.TransData, ptr %16, i64 1
  %41 = icmp eq i32 %39, %9
  br i1 %41, label %42, label %14, !llvm.loop !217

42:                                               ; preds = %38, %14, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #10 !PGOFuncName !218 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0) unnamed_addr #10 !PGOFuncName !219 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = select i1 %2, float 0.000000e+00, float %0
  ret float %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @flushTransIntFrameActionData(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %7 = load ptr, ptr %6, align 8, !tbaa !100
  %8 = load i32, ptr %0, align 8, !tbaa !192
  %9 = icmp eq i32 %8, 20
  %10 = select i1 %9, i64 2, i64 0
  %11 = getelementptr inbounds float, ptr %7, i64 %10
  br label %12

12:                                               ; preds = %5, %12
  %13 = phi i32 [ %19, %12 ], [ 0, %5 ]
  %14 = phi ptr [ %20, %12 ], [ %11, %5 ]
  %15 = load float, ptr %14, align 8, !tbaa !220
  %16 = tail call fastcc i32 @iroundf(float noundef %15) #23
  %17 = getelementptr inbounds %struct.tGPFtransdata, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !222
  store i32 %16, ptr %18, align 4, !tbaa !58
  %19 = add nuw nsw i32 %13, 1
  %20 = getelementptr inbounds %struct.tGPFtransdata, ptr %14, i64 1
  %21 = load i32, ptr %2, align 8, !tbaa !34
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %12, label %23, !llvm.loop !223

23:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remake_graph_transdata(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = load ptr, ptr %1, align 8, !tbaa !64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %7 = load ptr, ptr %6, align 8, !tbaa !179
  %8 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !203
  %10 = getelementptr inbounds %struct.SpaceIpo, ptr %9, i64 0, i32 11
  %11 = load i32, ptr %10, align 4, !tbaa !224
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %5, %29
  %16 = phi ptr [ %3, %5 ], [ %30, %29 ]
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !227
  %19 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !229
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !231
  %25 = tail call fastcc ptr @bezt_to_beztmaps(ptr noundef nonnull %20, i32 noundef %24) #23
  %26 = load i32, ptr %23, align 8, !tbaa !231
  tail call fastcc void @sort_time_beztmaps(ptr noundef %25, i32 noundef %26) #23
  %27 = load i32, ptr %23, align 8, !tbaa !231
  tail call fastcc void @beztmap_to_data(ptr noundef %0, ptr noundef nonnull %18, ptr noundef %25, i32 noundef %27) #23
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %28(ptr noundef %25) #22
  tail call void @sort_time_fcurve(ptr noundef nonnull %18) #22
  tail call void @testhandles_fcurve(ptr noundef nonnull %18, i8 noundef zeroext %14) #22
  br label %29

29:                                               ; preds = %22, %15
  %30 = load ptr, ptr %16, align 8, !tbaa !64
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %15, !llvm.loop !232

32:                                               ; preds = %29, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bezt_to_beztmaps(ptr noundef %0, i32 noundef %1) unnamed_addr #8 !PGOFuncName !233 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %29, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %6 = sext i32 %1 to i64
  %7 = mul nsw i64 %6, 24
  %8 = tail call ptr %5(i64 noundef %7, ptr noundef nonnull @.str.8) #22
  %9 = icmp sgt i32 %1, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %4, %10
  %11 = phi i32 [ %25, %10 ], [ 0, %4 ]
  %12 = phi ptr [ %26, %10 ], [ %8, %4 ]
  %13 = phi ptr [ %14, %10 ], [ null, %4 ]
  %14 = phi ptr [ %27, %10 ], [ %0, %4 ]
  store ptr %14, ptr %12, align 8, !tbaa !234
  %15 = getelementptr inbounds %struct.BeztMap, ptr %12, i64 0, i32 1
  store i32 %11, ptr %15, align 8, !tbaa !236
  %16 = getelementptr inbounds %struct.BeztMap, ptr %12, i64 0, i32 2
  store i32 %11, ptr %16, align 4, !tbaa !237
  %17 = icmp eq ptr %13, null
  %18 = select i1 %17, ptr %14, ptr %13
  %19 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 4
  %20 = load i8, ptr %19, align 4, !tbaa !238
  %21 = getelementptr inbounds %struct.BeztMap, ptr %12, i64 0, i32 4
  store i8 %20, ptr %21, align 2, !tbaa !240
  %22 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 0, i32 4
  %23 = load i8, ptr %22, align 4, !tbaa !238
  %24 = getelementptr inbounds %struct.BeztMap, ptr %12, i64 0, i32 5
  store i8 %23, ptr %24, align 1, !tbaa !241
  %25 = add nuw nsw i32 %11, 1
  %26 = getelementptr inbounds %struct.BeztMap, ptr %12, i64 1
  %27 = getelementptr inbounds %struct.BezTriple, ptr %14, i64 1
  %28 = icmp eq i32 %25, %1
  br i1 %28, label %29, label %10, !llvm.loop !242

29:                                               ; preds = %10, %4, %2
  %30 = phi ptr [ null, %2 ], [ %8, %4 ], [ %8, %10 ]
  ret ptr %30
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sort_time_beztmaps(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !243 {
  %3 = alloca %struct.BeztMap, align 8
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %55, label %8

5:                                                ; preds = %48
  %6 = icmp eq i32 %31, 0
  %7 = or i1 %6, %4
  br i1 %7, label %55, label %51

8:                                                ; preds = %2, %51
  %9 = phi i32 [ %52, %51 ], [ 0, %2 ]
  %10 = phi i32 [ %53, %51 ], [ %1, %2 ]
  %11 = phi ptr [ %54, %51 ], [ %0, %2 ]
  %12 = add nsw i32 %10, -1
  %13 = icmp sgt i32 %10, 1
  br i1 %13, label %14, label %30

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !234
  %16 = getelementptr inbounds [3 x [3 x float]], ptr %15, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !123
  %18 = getelementptr inbounds %struct.BeztMap, ptr %11, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !234
  %20 = getelementptr inbounds [3 x [3 x float]], ptr %19, i64 0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !123
  %22 = fcmp ogt float %17, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.BeztMap, ptr %11, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !237
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4, !tbaa !237
  %27 = getelementptr inbounds %struct.BeztMap, ptr %11, i64 1, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !237
  %29 = add i32 %28, -1
  store i32 %29, ptr %27, align 4, !tbaa !237
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !244
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %18, i64 24, i1 false), !tbaa.struct !244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !244
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3)
  br label %30

30:                                               ; preds = %14, %23, %8
  %31 = phi i32 [ 1, %23 ], [ %9, %14 ], [ %9, %8 ]
  %32 = getelementptr inbounds %struct.BeztMap, ptr %11, i64 0, i32 3
  %33 = load i16, ptr %32, align 8, !tbaa !245
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load ptr, ptr %11, align 8, !tbaa !234
  %37 = load float, ptr %36, align 4, !tbaa !123
  %38 = getelementptr inbounds [3 x [3 x float]], ptr %36, i64 0, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !123
  %40 = fcmp ogt float %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = getelementptr inbounds [3 x [3 x float]], ptr %36, i64 0, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !123
  %44 = fcmp olt float %43, %39
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %35
  br label %46

46:                                               ; preds = %41, %45
  %47 = phi i16 [ -1, %45 ], [ 1, %41 ]
  store i16 %47, ptr %32, align 8, !tbaa !245
  br label %48

48:                                               ; preds = %46, %30
  %49 = getelementptr inbounds %struct.BeztMap, ptr %11, i64 1
  %50 = icmp eq i32 %12, 0
  br i1 %50, label %5, label %51

51:                                               ; preds = %48, %5
  %52 = phi i32 [ %31, %48 ], [ 0, %5 ]
  %53 = phi i32 [ %12, %48 ], [ %1, %5 ]
  %54 = phi ptr [ %49, %48 ], [ %0, %5 ]
  br label %8, !llvm.loop !246

55:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @beztmap_to_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #8 !PGOFuncName !247 {
  %5 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !229
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = sext i32 %9 to i64
  %11 = tail call ptr %7(i64 noundef %10, ptr noundef nonnull @.str.9) #22
  %12 = icmp sgt i32 %3, 0
  br i1 %12, label %13, label %112

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 12
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %16 = load i32, ptr %8, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %13, %107
  %18 = phi i32 [ %16, %13 ], [ %108, %107 ]
  %19 = phi ptr [ %2, %13 ], [ %110, %107 ]
  %20 = phi i32 [ 0, %13 ], [ %109, %107 ]
  %21 = icmp sgt i32 %18, 0
  br i1 %21, label %22, label %107

22:                                               ; preds = %17
  %23 = load ptr, ptr %15, align 8, !tbaa !48
  %24 = load ptr, ptr %14, align 8, !tbaa !174
  %25 = getelementptr inbounds %struct.BeztMap, ptr %19, i64 0, i32 2
  %26 = getelementptr inbounds %struct.BeztMap, ptr %19, i64 0, i32 3
  br label %27

27:                                               ; preds = %22, %100
  %28 = phi i64 [ 0, %22 ], [ %101, %100 ]
  %29 = phi ptr [ %23, %22 ], [ %103, %100 ]
  %30 = phi ptr [ %24, %22 ], [ %102, %100 ]
  %31 = getelementptr inbounds i8, ptr %11, i64 %28
  %32 = load i8, ptr %31, align 1, !tbaa !88
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %100

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.TransData2D, ptr %30, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !211
  %37 = load ptr, ptr %19, align 8, !tbaa !234
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i16, ptr %26, align 8, !tbaa !245
  %41 = icmp eq i16 %40, 1
  %42 = load i32, ptr %25, align 4, !tbaa !237
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.BezTriple, ptr %6, i64 %43
  %45 = getelementptr inbounds %struct.BezTriple, ptr %6, i64 %43, i32 0, i64 2
  %46 = select i1 %41, ptr %45, ptr %44
  store ptr %46, ptr %35, align 8, !tbaa !211
  br label %76

47:                                               ; preds = %34
  %48 = getelementptr inbounds [3 x [3 x float]], ptr %37, i64 0, i64 2
  %49 = icmp eq ptr %36, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i16, ptr %26, align 8, !tbaa !245
  %52 = icmp eq i16 %51, 1
  %53 = load i32, ptr %25, align 4, !tbaa !237
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.BezTriple, ptr %6, i64 %54, i32 0, i64 2
  %56 = getelementptr inbounds %struct.BezTriple, ptr %6, i64 %54
  %57 = select i1 %52, ptr %56, ptr %55
  store ptr %57, ptr %35, align 8, !tbaa !211
  br label %76

58:                                               ; preds = %47
  %59 = getelementptr inbounds [3 x [3 x float]], ptr %37, i64 0, i64 1
  %60 = icmp eq ptr %36, %59
  br i1 %60, label %61, label %100

61:                                               ; preds = %58
  %62 = load i32, ptr %25, align 4, !tbaa !237
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.BezTriple, ptr %6, i64 %63, i32 0, i64 1
  store ptr %64, ptr %35, align 8, !tbaa !211
  %65 = getelementptr inbounds %struct.TransData2D, ptr %30, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !248
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.BezTriple, ptr %6, i64 %63
  store ptr %69, ptr %65, align 8, !tbaa !248
  br label %70

70:                                               ; preds = %68, %61
  %71 = getelementptr inbounds %struct.TransData2D, ptr %30, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !249
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.BezTriple, ptr %6, i64 %63, i32 0, i64 2
  store ptr %75, ptr %71, align 8, !tbaa !249
  br label %76

76:                                               ; preds = %70, %74, %39, %50
  store i8 1, ptr %31, align 1, !tbaa !88
  %77 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 16
  %78 = load i32, ptr %77, align 8, !tbaa !49
  %79 = and i32 %78, 4096
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %100, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 14
  %83 = load ptr, ptr %82, align 8, !tbaa !250
  %84 = icmp eq ptr %83, null
  br i1 %84, label %100, label %85

85:                                               ; preds = %81
  %86 = load i16, ptr %26, align 8, !tbaa !245
  %87 = icmp eq i16 %86, 1
  %88 = load i32, ptr %25, align 4, !tbaa !237
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %83, i64 0, i32 2
  %91 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %83, i64 0, i32 3
  br i1 %87, label %92, label %95

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.BezTriple, ptr %6, i64 %89, i32 6
  store ptr %93, ptr %90, align 8, !tbaa !251
  %94 = getelementptr inbounds %struct.BezTriple, ptr %6, i64 %89, i32 5
  br label %98

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.BezTriple, ptr %6, i64 %89, i32 5
  store ptr %96, ptr %90, align 8, !tbaa !251
  %97 = getelementptr inbounds %struct.BezTriple, ptr %6, i64 %89, i32 6
  br label %98

98:                                               ; preds = %92, %95
  %99 = phi ptr [ %97, %95 ], [ %94, %92 ]
  store ptr %99, ptr %91, align 8, !tbaa !253
  br label %100

100:                                              ; preds = %98, %58, %76, %81, %27
  %101 = add nuw nsw i64 %28, 1
  %102 = getelementptr inbounds %struct.TransData2D, ptr %30, i64 1
  %103 = getelementptr inbounds %struct.TransData, ptr %29, i64 1
  %104 = load i32, ptr %8, align 8, !tbaa !34
  %105 = sext i32 %104 to i64
  %106 = icmp slt i64 %101, %105
  br i1 %106, label %27, label %107, !llvm.loop !254

107:                                              ; preds = %100, %17
  %108 = phi i32 [ %18, %17 ], [ %104, %100 ]
  %109 = add nuw nsw i32 %20, 1
  %110 = getelementptr inbounds %struct.BeztMap, ptr %19, i64 1
  %111 = icmp eq i32 %109, %3
  br i1 %111, label %112, label %17, !llvm.loop !255

112:                                              ; preds = %107, %4
  %113 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %113(ptr noundef %11) #22
  ret void
}

; Function Attrs: optsize
declare void @sort_time_fcurve(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @testhandles_fcurve(ptr noundef, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @flushTransGraphData(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 55
  %5 = load i16, ptr %4, align 4, !tbaa !256
  %6 = sitofp i16 %5 to double
  %7 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 65
  %8 = load float, ptr %7, align 4, !tbaa !257
  %9 = fpext float %8 to double
  %10 = fdiv double %6, %9
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !34
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %192

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !174
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %22 = load ptr, ptr %21, align 8, !tbaa !179
  %23 = getelementptr inbounds %struct.ScrArea, ptr %22, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !203
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %26 = getelementptr inbounds %struct.SpaceIpo, ptr %24, i64 0, i32 10
  %27 = load i16, ptr %25, align 4, !tbaa !213
  br label %28

28:                                               ; preds = %14, %185
  %29 = phi i16 [ %27, %14 ], [ %80, %185 ]
  %30 = phi ptr [ %20, %14 ], [ %187, %185 ]
  %31 = phi ptr [ %18, %14 ], [ %188, %185 ]
  %32 = phi i32 [ 0, %14 ], [ %186, %185 ]
  %33 = phi ptr [ %16, %14 ], [ %189, %185 ]
  %34 = getelementptr inbounds %struct.TransData, ptr %30, i64 0, i32 15
  %35 = load ptr, ptr %34, align 8, !tbaa !175
  %36 = load float, ptr %33, align 4, !tbaa !258
  %37 = fdiv float 1.000000e+00, %36
  %38 = icmp eq i16 %29, 3
  br i1 %38, label %68, label %39

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.TransData, ptr %30, i64 0, i32 16
  %41 = load i32, ptr %40, align 8, !tbaa !49
  %42 = and i32 %41, 16384
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %39
  %45 = load i16, ptr %26, align 2, !tbaa !260
  switch i16 %45, label %68 [
    i16 2, label %46
    i16 4, label %52
    i16 3, label %60
  ]

46:                                               ; preds = %44
  %47 = load float, ptr %31, align 8, !tbaa !123
  %48 = fpext float %47 to double
  %49 = fadd double %48, 5.000000e-01
  %50 = tail call double @llvm.floor.f64(double %49)
  %51 = fptrunc double %50 to float
  br label %66

52:                                               ; preds = %44
  %53 = load float, ptr %31, align 8, !tbaa !123
  %54 = fpext float %53 to double
  %55 = fdiv double %54, %10
  %56 = fadd double %55, 5.000000e-01
  %57 = tail call double @llvm.floor.f64(double %56)
  %58 = fmul double %10, %57
  %59 = fptrunc double %58 to float
  br label %66

60:                                               ; preds = %44
  %61 = load ptr, ptr %2, align 8, !tbaa !124
  %62 = getelementptr inbounds %struct.Scene, ptr %61, i64 0, i32 24
  %63 = load float, ptr %31, align 8, !tbaa !123
  %64 = tail call i32 @ED_markers_find_nearest_marker_time(ptr noundef nonnull %62, float noundef %63) #22
  %65 = sitofp i32 %64 to float
  br label %66

66:                                               ; preds = %60, %52, %46
  %67 = phi float [ %51, %46 ], [ %59, %52 ], [ %65, %60 ]
  store float %67, ptr %31, align 8, !tbaa !123
  br label %68

68:                                               ; preds = %66, %44, %39, %28
  %69 = icmp eq ptr %35, null
  %70 = load float, ptr %31, align 8, !tbaa !123
  br i1 %69, label %75, label %71

71:                                               ; preds = %68
  %72 = tail call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %35, float noundef %70, i16 noundef signext 1) #22
  %73 = getelementptr inbounds %struct.TransData2D, ptr %31, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !211
  store float %72, ptr %74, align 4, !tbaa !123
  br label %78

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.TransData2D, ptr %31, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !211
  store float %70, ptr %77, align 4, !tbaa !123
  br label %78

78:                                               ; preds = %75, %71
  %79 = phi ptr [ %77, %75 ], [ %74, %71 ]
  %80 = load i16, ptr %25, align 4, !tbaa !213
  %81 = icmp ne i16 %80, 3
  %82 = getelementptr inbounds %struct.TransData, ptr %30, i64 0, i32 16
  %83 = load i32, ptr %82, align 8, !tbaa !49
  %84 = and i32 %83, 16384
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %81, i1 %85, i1 false
  br i1 %86, label %87, label %121

87:                                               ; preds = %78
  %88 = load i16, ptr %26, align 2, !tbaa !260
  switch i16 %88, label %121 [
    i16 1, label %89
    i16 5, label %101
  ]

89:                                               ; preds = %87
  %90 = load float, ptr %31, align 8, !tbaa !123
  %91 = fpext float %90 to double
  %92 = fadd double %91, 5.000000e-01
  %93 = tail call double @llvm.floor.f64(double %92)
  %94 = fptrunc double %93 to float
  store float %94, ptr %79, align 4, !tbaa !123
  %95 = getelementptr inbounds %struct.TransData, ptr %30, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !215
  %97 = load float, ptr %96, align 4, !tbaa !123
  %98 = fpext float %97 to double
  %99 = fadd double %98, 5.000000e-01
  %100 = tail call double @llvm.floor.f64(double %99)
  br label %117

101:                                              ; preds = %87
  %102 = load float, ptr %31, align 8, !tbaa !123
  %103 = fpext float %102 to double
  %104 = fdiv double %103, %10
  %105 = fadd double %104, 5.000000e-01
  %106 = tail call double @llvm.floor.f64(double %105)
  %107 = fmul double %10, %106
  %108 = fptrunc double %107 to float
  store float %108, ptr %31, align 8, !tbaa !123
  %109 = getelementptr inbounds %struct.TransData, ptr %30, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !215
  %111 = load float, ptr %110, align 4, !tbaa !123
  %112 = fpext float %111 to double
  %113 = fdiv double %112, %10
  %114 = fadd double %113, 5.000000e-01
  %115 = tail call double @llvm.floor.f64(double %114)
  %116 = fmul double %10, %115
  br label %117

117:                                              ; preds = %101, %89
  %118 = phi double [ %100, %89 ], [ %116, %101 ]
  %119 = phi ptr [ %96, %89 ], [ %110, %101 ]
  %120 = fptrunc double %118 to float
  store float %120, ptr %119, align 4, !tbaa !123
  br label %121

121:                                              ; preds = %117, %78, %87
  %122 = and i32 %83, 32768
  %123 = icmp eq i32 %122, 0
  %124 = getelementptr inbounds [3 x float], ptr %31, i64 0, i64 1
  %125 = load float, ptr %124, align 4, !tbaa !123
  br i1 %123, label %129, label %126

126:                                              ; preds = %121
  %127 = fadd float %125, 5.000000e-01
  %128 = tail call float @llvm.floor.f32(float %127)
  br label %131

129:                                              ; preds = %121
  %130 = fmul float %37, %125
  br label %131

131:                                              ; preds = %129, %126
  %132 = phi float [ %130, %129 ], [ %128, %126 ]
  %133 = getelementptr inbounds float, ptr %79, i64 1
  store float %132, ptr %133, align 4, !tbaa !123
  %134 = and i32 %83, 131072
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %159, label %136

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.TransData2D, ptr %31, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !248
  %139 = icmp eq ptr %138, null
  br i1 %139, label %159, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.TransData2D, ptr %31, i64 0, i32 4
  %142 = load float, ptr %141, align 8, !tbaa !123
  %143 = getelementptr inbounds %struct.TransData, ptr %30, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !215
  %145 = load float, ptr %144, align 4, !tbaa !123
  %146 = fadd float %142, %145
  %147 = getelementptr inbounds %struct.TransData, ptr %30, i64 0, i32 4
  %148 = load float, ptr %147, align 8, !tbaa !123
  %149 = fsub float %146, %148
  store float %149, ptr %138, align 4, !tbaa !123
  %150 = getelementptr inbounds %struct.TransData2D, ptr %31, i64 0, i32 4, i64 1
  %151 = load float, ptr %150, align 4, !tbaa !123
  %152 = getelementptr inbounds float, ptr %144, i64 1
  %153 = load float, ptr %152, align 4, !tbaa !123
  %154 = getelementptr inbounds %struct.TransData, ptr %30, i64 0, i32 4, i64 1
  %155 = load float, ptr %154, align 4, !tbaa !123
  %156 = fsub float %153, %155
  %157 = tail call float @llvm.fmuladd.f32(float %156, float %37, float %151)
  %158 = getelementptr inbounds float, ptr %138, i64 1
  store float %157, ptr %158, align 4, !tbaa !123
  br label %159

159:                                              ; preds = %140, %136, %131
  %160 = and i32 %83, 262144
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %185, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.TransData2D, ptr %31, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !249
  %165 = icmp eq ptr %164, null
  br i1 %165, label %185, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.TransData2D, ptr %31, i64 0, i32 5
  %168 = load float, ptr %167, align 8, !tbaa !123
  %169 = getelementptr inbounds %struct.TransData, ptr %30, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !215
  %171 = load float, ptr %170, align 4, !tbaa !123
  %172 = fadd float %168, %171
  %173 = getelementptr inbounds %struct.TransData, ptr %30, i64 0, i32 4
  %174 = load float, ptr %173, align 8, !tbaa !123
  %175 = fsub float %172, %174
  store float %175, ptr %164, align 4, !tbaa !123
  %176 = getelementptr inbounds %struct.TransData2D, ptr %31, i64 0, i32 5, i64 1
  %177 = load float, ptr %176, align 4, !tbaa !123
  %178 = getelementptr inbounds float, ptr %170, i64 1
  %179 = load float, ptr %178, align 4, !tbaa !123
  %180 = getelementptr inbounds %struct.TransData, ptr %30, i64 0, i32 4, i64 1
  %181 = load float, ptr %180, align 4, !tbaa !123
  %182 = fsub float %179, %181
  %183 = tail call float @llvm.fmuladd.f32(float %182, float %37, float %177)
  %184 = getelementptr inbounds float, ptr %164, i64 1
  store float %183, ptr %184, align 4, !tbaa !123
  br label %185

185:                                              ; preds = %166, %162, %159
  %186 = add nuw nsw i32 %32, 1
  %187 = getelementptr inbounds %struct.TransData, ptr %30, i64 1
  %188 = getelementptr inbounds %struct.TransData2D, ptr %31, i64 1
  %189 = getelementptr inbounds %struct.TransDataGraph, ptr %33, i64 1
  %190 = load i32, ptr %11, align 8, !tbaa !34
  %191 = icmp slt i32 %186, %190
  br i1 %191, label %28, label %192, !llvm.loop !261

192:                                              ; preds = %185, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #11

; Function Attrs: optsize
declare i32 @ED_markers_find_nearest_marker_time(ptr noundef, float noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare float @BKE_nla_tweakedit_remap(ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @autokeyframe_ob_cb_func(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #8 {
  %6 = alloca %struct.ListBase, align 8
  %7 = tail call i32 @autokeyframe_cfra_can_key(ptr noundef %1, ptr noundef %3) #22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %156, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @CTX_wm_reports(ptr noundef %0) #22
  %11 = tail call ptr @ANIM_scene_get_active_keyingset(ptr noundef %1) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %12 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !262
  %14 = sitofp i32 %13 to float
  %15 = tail call signext i16 @ANIM_get_keyframing_flags(ptr noundef %1, i16 noundef signext 1) #22
  call void @ANIM_relative_keyingset_add_source(ptr noundef nonnull %6, ptr noundef %3, ptr noundef null, ptr noundef null) #22
  %16 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !263
  %18 = getelementptr inbounds %struct.ToolSettings, ptr %17, i64 0, i32 22
  %19 = load i16, ptr %18, align 2, !tbaa !264
  %20 = and i16 %19, 64
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %9
  %23 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !271
  %24 = and i16 %23, 64
  %25 = icmp eq i16 %24, 0
  %26 = icmp eq ptr %11, null
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %32, label %30

28:                                               ; preds = %9
  %29 = icmp eq ptr %11, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %22, %28
  %31 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull %11, i16 noundef signext 0, float noundef %14) #22
  br label %147

32:                                               ; preds = %22, %28
  %33 = and i16 %19, 1
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !271
  %37 = and i16 %36, 1
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %68, label %39

39:                                               ; preds = %35, %32
  %40 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !272
  %42 = icmp eq ptr %41, null
  br i1 %42, label %147, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %41, align 8, !tbaa !273
  %45 = icmp eq ptr %44, null
  br i1 %45, label %147, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bAction, ptr %44, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !64
  %49 = icmp eq ptr %48, null
  br i1 %49, label %147, label %50

50:                                               ; preds = %46, %50
  %51 = phi ptr [ %66, %50 ], [ %48, %46 ]
  %52 = getelementptr inbounds %struct.FCurve, ptr %51, i64 0, i32 9
  %53 = load i16, ptr %52, align 8, !tbaa !275
  %54 = and i16 %53, -3
  store i16 %54, ptr %52, align 8, !tbaa !275
  %55 = load ptr, ptr %41, align 8, !tbaa !273
  %56 = getelementptr inbounds %struct.FCurve, ptr %51, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !276
  %58 = icmp eq ptr %57, null
  %59 = getelementptr inbounds %struct.bActionGroup, ptr %57, i64 0, i32 5
  %60 = select i1 %58, ptr null, ptr %59
  %61 = getelementptr inbounds %struct.FCurve, ptr %51, i64 0, i32 12
  %62 = load ptr, ptr %61, align 8, !tbaa !277
  %63 = getelementptr inbounds %struct.FCurve, ptr %51, i64 0, i32 11
  %64 = load i32, ptr %63, align 4, !tbaa !278
  %65 = call signext i16 @insert_keyframe(ptr noundef %10, ptr noundef %3, ptr noundef %55, ptr noundef %60, ptr noundef %62, i32 noundef %64, float noundef %14, i16 noundef signext %15) #22
  %66 = load ptr, ptr %51, align 8, !tbaa !64
  %67 = icmp eq ptr %66, null
  br i1 %67, label %147, label %50, !llvm.loop !279

68:                                               ; preds = %35
  %69 = or i16 %19, %36
  %70 = and i16 %69, 2
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %141, label %72

72:                                               ; preds = %68
  switch i32 %4, label %147 [
    i32 1, label %128
    i32 2, label %73
    i32 3, label %93
  ]

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 27
  %75 = load i16, ptr %74, align 2, !tbaa !280
  switch i16 %75, label %76 [
    i16 4, label %81
    i16 1, label %88
  ]

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  %78 = load i16, ptr %77, align 8, !tbaa !282
  %79 = and i16 %78, 1024
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %144, label %147

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !125
  %84 = icmp eq ptr %83, null
  br i1 %84, label %113, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.Base, ptr %83, i64 0, i32 7
  %87 = load ptr, ptr %86, align 8, !tbaa !144
  br label %113

88:                                               ; preds = %73
  %89 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  %90 = load i16, ptr %89, align 8, !tbaa !282
  %91 = and i16 %90, 1024
  %92 = icmp ne i16 %91, 0
  br label %128

93:                                               ; preds = %72
  %94 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 27
  %95 = load i16, ptr %94, align 2, !tbaa !280
  switch i16 %95, label %96 [
    i16 4, label %101
    i16 1, label %108
  ]

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  %98 = load i16, ptr %97, align 8, !tbaa !282
  %99 = and i16 %98, 1024
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %138, label %147

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %103 = load ptr, ptr %102, align 8, !tbaa !125
  %104 = icmp eq ptr %103, null
  br i1 %104, label %120, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.Base, ptr %103, i64 0, i32 7
  %107 = load ptr, ptr %106, align 8, !tbaa !144
  br label %120

108:                                              ; preds = %93
  %109 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  %110 = load i16, ptr %109, align 8, !tbaa !282
  %111 = and i16 %110, 1024
  %112 = icmp ne i16 %111, 0
  br label %128

113:                                              ; preds = %85, %81
  %114 = phi ptr [ %87, %85 ], [ null, %81 ]
  %115 = icmp eq ptr %114, %3
  %116 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  %117 = load i16, ptr %116, align 8, !tbaa !282
  %118 = and i16 %117, 1024
  %119 = icmp ne i16 %118, 0
  br i1 %115, label %133, label %128

120:                                              ; preds = %105, %101
  %121 = phi ptr [ %107, %105 ], [ null, %101 ]
  %122 = icmp eq ptr %121, %3
  %123 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  %124 = load i16, ptr %123, align 8, !tbaa !282
  %125 = and i16 %124, 1024
  %126 = icmp ne i16 %125, 0
  br i1 %122, label %127, label %128

127:                                              ; preds = %120
  br i1 %126, label %147, label %138

128:                                              ; preds = %108, %88, %120, %72, %113
  %129 = phi i1 [ %119, %113 ], [ true, %72 ], [ true, %120 ], [ %92, %88 ], [ true, %108 ]
  %130 = phi i1 [ true, %113 ], [ true, %72 ], [ %126, %120 ], [ true, %88 ], [ %112, %108 ]
  %131 = call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str) #22
  %132 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null, ptr noundef %131, i16 noundef signext 0, float noundef %14) #22
  br i1 %129, label %137, label %134

133:                                              ; preds = %113
  br i1 %119, label %147, label %144

134:                                              ; preds = %128
  %135 = call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str.1) #22
  %136 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null, ptr noundef %135, i16 noundef signext 0, float noundef %14) #22
  br i1 %130, label %147, label %138

137:                                              ; preds = %128
  br i1 %130, label %147, label %138

138:                                              ; preds = %96, %127, %134, %137
  %139 = call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str.2) #22
  %140 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null, ptr noundef %139, i16 noundef signext 0, float noundef %14) #22
  br label %147

141:                                              ; preds = %68
  %142 = call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str.3) #22
  %143 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null, ptr noundef %142, i16 noundef signext 0, float noundef %14) #22
  br label %147

144:                                              ; preds = %76, %133
  %145 = call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str.1) #22
  %146 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null, ptr noundef %145, i16 noundef signext 0, float noundef %14) #22
  br label %147

147:                                              ; preds = %50, %144, %133, %76, %96, %127, %46, %72, %134, %137, %138, %39, %43, %141, %30
  %148 = icmp eq ptr %0, null
  br i1 %148, label %155, label %149

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 21, i32 11
  %151 = load i16, ptr %150, align 2, !tbaa !283
  %152 = and i16 %151, 4
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %149
  call void @ED_objects_recalculate_paths(ptr noundef nonnull %0, ptr noundef %1) #22
  br label %155

155:                                              ; preds = %154, %149, %147
  call void @BLI_freelistN(ptr noundef nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #24
  br label %156

156:                                              ; preds = %155, %5
  ret void
}

; Function Attrs: optsize
declare i32 @autokeyframe_cfra_can_key(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @ANIM_scene_get_active_keyingset(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: optsize
declare signext i16 @ANIM_get_keyframing_flags(ptr noundef, i16 noundef signext) local_unnamed_addr #9

; Function Attrs: optsize
declare void @ANIM_relative_keyingset_add_source(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @ANIM_apply_keyingset(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, float noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare signext i16 @insert_keyframe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, i16 noundef signext) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @ANIM_builtin_keyingset_get_named(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @ED_objects_recalculate_paths(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @autokeyframe_pose_cb_func(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, i16 noundef signext %5) local_unnamed_addr #8 {
  %7 = alloca %struct.ListBase, align 8
  %8 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !272
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %9, align 8, !tbaa !273
  br label %13

13:                                               ; preds = %6, %11
  %14 = phi ptr [ %12, %11 ], [ null, %6 ]
  %15 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  %17 = tail call i32 @autokeyframe_cfra_can_key(ptr noundef %1, ptr noundef nonnull %3) #22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load ptr, ptr %16, align 8, !tbaa !64
  %21 = icmp eq ptr %20, null
  br i1 %21, label %166, label %153

22:                                               ; preds = %13
  %23 = tail call ptr @CTX_wm_reports(ptr noundef %0) #22
  %24 = tail call ptr @ANIM_scene_get_active_keyingset(ptr noundef %1) #22
  %25 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !262
  %27 = sitofp i32 %26 to float
  %28 = tail call signext i16 @ANIM_get_keyframing_flags(ptr noundef %1, i16 noundef signext 1) #22
  %29 = icmp eq i16 %5, 0
  %30 = or i16 %28, 2
  %31 = select i1 %29, i16 %28, i16 %30
  %32 = load ptr, ptr %16, align 8, !tbaa !64
  %33 = icmp eq ptr %32, null
  br i1 %33, label %144, label %34

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %36 = icmp eq ptr %24, null
  %37 = icmp eq ptr %14, null
  %38 = getelementptr inbounds %struct.bAction, ptr %14, i64 0, i32 1
  %39 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 27
  %40 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  br label %41

41:                                               ; preds = %34, %141
  %42 = phi ptr [ %32, %34 ], [ %142, %141 ]
  %43 = getelementptr inbounds %struct.bPoseChannel, ptr %42, i64 0, i32 12
  %44 = load ptr, ptr %43, align 8, !tbaa !68
  %45 = getelementptr inbounds %struct.Bone, ptr %44, i64 0, i32 10
  %46 = load i32, ptr %45, align 8, !tbaa !72
  %47 = and i32 %46, 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %141, label %49

49:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %50 = and i32 %46, -8193
  store i32 %50, ptr %45, align 8, !tbaa !72
  call void @ANIM_relative_keyingset_add_source(ptr noundef nonnull %7, ptr noundef %3, ptr noundef nonnull @RNA_PoseBone, ptr noundef nonnull %42) #22
  %51 = load ptr, ptr %35, align 8, !tbaa !263
  %52 = getelementptr inbounds %struct.ToolSettings, ptr %51, i64 0, i32 22
  %53 = load i16, ptr %52, align 2, !tbaa !264
  %54 = and i16 %53, 64
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !271
  %58 = and i16 %57, 64
  %59 = icmp eq i16 %58, 0
  %60 = select i1 %59, i1 true, i1 %36
  br i1 %60, label %64, label %62

61:                                               ; preds = %49
  br i1 %36, label %64, label %62

62:                                               ; preds = %56, %61
  %63 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull %24, i16 noundef signext 0, float noundef %27) #22
  br label %140

64:                                               ; preds = %61, %56
  %65 = and i16 %53, 1
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !271
  %69 = and i16 %68, 1
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %104, label %71

71:                                               ; preds = %67, %64
  br i1 %37, label %140, label %72

72:                                               ; preds = %71
  %73 = load ptr, ptr %38, align 8, !tbaa !64
  %74 = icmp eq ptr %73, null
  br i1 %74, label %140, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.bPoseChannel, ptr %42, i64 0, i32 4
  br label %77

77:                                               ; preds = %75, %101
  %78 = phi ptr [ %73, %75 ], [ %102, %101 ]
  %79 = getelementptr inbounds %struct.FCurve, ptr %78, i64 0, i32 12
  %80 = load ptr, ptr %79, align 8, !tbaa !277
  %81 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %80, ptr noundef nonnull dereferenceable(1) @.str.4) #25
  %82 = icmp eq ptr %81, null
  br i1 %82, label %101, label %83

83:                                               ; preds = %77
  %84 = call ptr @BLI_str_quoted_substrN(ptr noundef %80, ptr noundef nonnull @.str.5) #22
  %85 = icmp eq ptr %84, null
  br i1 %85, label %101, label %86

86:                                               ; preds = %83
  %87 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(1) %76) #25
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.FCurve, ptr %78, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !276
  %92 = icmp eq ptr %91, null
  %93 = getelementptr inbounds %struct.bActionGroup, ptr %91, i64 0, i32 5
  %94 = select i1 %92, ptr null, ptr %93
  %95 = load ptr, ptr %79, align 8, !tbaa !277
  %96 = getelementptr inbounds %struct.FCurve, ptr %78, i64 0, i32 11
  %97 = load i32, ptr %96, align 4, !tbaa !278
  %98 = call signext i16 @insert_keyframe(ptr noundef %23, ptr noundef %3, ptr noundef nonnull %14, ptr noundef %94, ptr noundef %95, i32 noundef %97, float noundef %27, i16 noundef signext %31) #22
  br label %99

99:                                               ; preds = %86, %89
  %100 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  call void %100(ptr noundef nonnull %84) #22
  br label %101

101:                                              ; preds = %99, %83, %77
  %102 = load ptr, ptr %78, align 8, !tbaa !64
  %103 = icmp eq ptr %102, null
  br i1 %103, label %140, label %77, !llvm.loop !284

104:                                              ; preds = %67
  %105 = or i16 %53, %68
  %106 = and i16 %105, 2
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %134, label %108

108:                                              ; preds = %104
  switch i32 %4, label %140 [
    i32 1, label %109
    i32 2, label %110
    i32 3, label %115
  ]

109:                                              ; preds = %108
  br i1 %29, label %122, label %137

110:                                              ; preds = %108
  %111 = load i16, ptr %39, align 2, !tbaa !280
  %112 = load i16, ptr %40, align 8, !tbaa !282
  %113 = and i16 %112, 1024
  %114 = icmp ne i16 %113, 0
  switch i16 %111, label %121 [
    i16 4, label %122
    i16 1, label %122
  ]

115:                                              ; preds = %108
  %116 = load i16, ptr %39, align 2, !tbaa !280
  %117 = load i16, ptr %40, align 8, !tbaa !282
  %118 = and i16 %117, 1024
  %119 = icmp ne i16 %118, 0
  switch i16 %116, label %120 [
    i16 4, label %122
    i16 1, label %122
  ]

120:                                              ; preds = %115
  br i1 %119, label %140, label %131

121:                                              ; preds = %110
  br i1 %114, label %140, label %137

122:                                              ; preds = %115, %115, %110, %110, %109
  %123 = phi i1 [ true, %109 ], [ %114, %110 ], [ true, %115 ], [ %114, %110 ], [ true, %115 ]
  %124 = phi i1 [ true, %109 ], [ true, %110 ], [ %119, %115 ], [ true, %110 ], [ %119, %115 ]
  %125 = call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str) #22
  %126 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null, ptr noundef %125, i16 noundef signext 0, float noundef %27) #22
  br i1 %123, label %130, label %127

127:                                              ; preds = %122
  %128 = call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str.1) #22
  %129 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null, ptr noundef %128, i16 noundef signext 0, float noundef %27) #22
  br i1 %124, label %140, label %131

130:                                              ; preds = %122
  br i1 %124, label %140, label %131

131:                                              ; preds = %120, %127, %130
  %132 = call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str.2) #22
  %133 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null, ptr noundef %132, i16 noundef signext 0, float noundef %27) #22
  br label %140

134:                                              ; preds = %104
  %135 = call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str.3) #22
  %136 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null, ptr noundef %135, i16 noundef signext 0, float noundef %27) #22
  br label %140

137:                                              ; preds = %109, %121
  %138 = call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str.1) #22
  %139 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null, ptr noundef %138, i16 noundef signext 0, float noundef %27) #22
  br label %140

140:                                              ; preds = %101, %72, %137, %108, %121, %120, %127, %130, %131, %71, %134, %62
  call void @BLI_freelistN(ptr noundef nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #24
  br label %141

141:                                              ; preds = %41, %140
  %142 = load ptr, ptr %42, align 8, !tbaa !64
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %41, !llvm.loop !285

144:                                              ; preds = %141, %22
  %145 = icmp eq ptr %0, null
  br i1 %145, label %166, label %146

146:                                              ; preds = %144
  %147 = load ptr, ptr %15, align 8, !tbaa !59
  %148 = getelementptr inbounds %struct.bPose, ptr %147, i64 0, i32 14, i32 11
  %149 = load i16, ptr %148, align 2, !tbaa !286
  %150 = and i16 %149, 4
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %166, label %152

152:                                              ; preds = %146
  call void @ED_pose_recalculate_paths(ptr noundef %1, ptr noundef nonnull %3) #22
  br label %166

153:                                              ; preds = %19, %163
  %154 = phi ptr [ %164, %163 ], [ %20, %19 ]
  %155 = getelementptr inbounds %struct.bPoseChannel, ptr %154, i64 0, i32 12
  %156 = load ptr, ptr %155, align 8, !tbaa !68
  %157 = getelementptr inbounds %struct.Bone, ptr %156, i64 0, i32 10
  %158 = load i32, ptr %157, align 8, !tbaa !72
  %159 = and i32 %158, 8
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %153
  %162 = or i32 %158, 8192
  store i32 %162, ptr %157, align 8, !tbaa !72
  br label %163

163:                                              ; preds = %153, %161
  %164 = load ptr, ptr %154, align 8, !tbaa !64
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %153, !llvm.loop !288

166:                                              ; preds = %163, %19, %144, %146, %152
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @BLI_str_quoted_substrN(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare void @ED_pose_recalculate_paths(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @special_aftertrans_update(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.bAnimContext, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.bAnimContext, align 8
  %8 = alloca %struct.ListBase, align 8
  %9 = alloca %struct.ListBase, align 8
  %10 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 3
  %11 = load i16, ptr %10, align 4, !tbaa !213
  %12 = icmp eq i16 %11, 3
  %13 = load i32, ptr %1, align 8, !tbaa !192
  %14 = icmp eq i32 %13, 23
  %15 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !34
  %17 = icmp eq i32 %16, 0
  %18 = icmp eq i32 %13, 0
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %498, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  %22 = load i8, ptr %21, align 8, !tbaa !289
  %23 = icmp eq i8 %22, 1
  br i1 %23, label %24, label %48

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  %26 = load ptr, ptr %25, align 8, !tbaa !103
  %27 = icmp eq ptr %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %24
  %29 = icmp eq i32 %13, 28
  br i1 %12, label %41, label %30

30:                                               ; preds = %28
  br i1 %29, label %31, label %35

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  %33 = load ptr, ptr %32, align 8, !tbaa !100
  tail call void @projectEdgeSlideData(ptr noundef nonnull %1, i8 noundef zeroext 1) #22
  tail call void @freeEdgeSlideTempFaces(ptr noundef %33) #22
  %34 = load ptr, ptr %25, align 8, !tbaa !103
  br label %35

35:                                               ; preds = %31, %30
  %36 = phi ptr [ %34, %31 ], [ %26, %30 ]
  %37 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 3
  %38 = load i16, ptr %37, align 8, !tbaa !87
  %39 = icmp eq i16 %38, 1
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  tail call fastcc void @special_aftertrans_update__mesh(ptr noundef nonnull %1) #23
  br label %46

41:                                               ; preds = %28
  br i1 %29, label %42, label %46

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  %44 = load ptr, ptr %43, align 8, !tbaa !100
  %45 = getelementptr inbounds %struct.EdgeSlideData, ptr %44, i64 0, i32 8
  store float 0.000000e+00, ptr %45, align 8, !tbaa !290
  tail call void @projectEdgeSlideData(ptr noundef nonnull %1, i8 noundef zeroext 0) #22
  br label %46

46:                                               ; preds = %40, %35, %42, %41, %24
  %47 = load i8, ptr %21, align 8, !tbaa !289
  br label %48

48:                                               ; preds = %46, %20
  %49 = phi i8 [ %47, %46 ], [ %22, %20 ]
  switch i8 %49, label %315 [
    i8 8, label %50
    i8 6, label %82
    i8 16, label %88
    i8 20, label %99
    i8 12, label %109
    i8 2, label %248
    i8 13, label %293
  ]

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %52 = load ptr, ptr %51, align 8, !tbaa !179
  %53 = getelementptr inbounds %struct.ScrArea, ptr %52, i64 0, i32 19
  %54 = load ptr, ptr %53, align 8, !tbaa !203
  %55 = getelementptr inbounds %struct.SpaceSeq, ptr %54, i64 0, i32 13
  %56 = load i32, ptr %55, align 8, !tbaa !292
  %57 = and i32 %56, 2
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i1 true, i1 %12
  br i1 %59, label %494, label %60

60:                                               ; preds = %50
  %61 = load i32, ptr %1, align 8, !tbaa !192
  %62 = icmp eq i32 %61, 30
  %63 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 26
  %64 = load i8, ptr %63, align 8, !tbaa !295
  br i1 %62, label %65, label %74

65:                                               ; preds = %60
  %66 = icmp eq i8 %64, 66
  br i1 %66, label %67, label %494

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %69 = load ptr, ptr %68, align 8, !tbaa !124
  %70 = getelementptr inbounds %struct.Scene, ptr %69, i64 0, i32 24
  %71 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 47
  %72 = load float, ptr %71, align 4, !tbaa !123
  %73 = tail call i32 @ED_markers_post_apply_transform(ptr noundef nonnull %70, ptr noundef %69, i32 noundef 19, float noundef %72, i8 noundef zeroext 66) #22
  br label %494

74:                                               ; preds = %60
  switch i8 %64, label %494 [
    i8 76, label %75
    i8 82, label %75
  ]

75:                                               ; preds = %74, %74
  %76 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %77 = load ptr, ptr %76, align 8, !tbaa !124
  %78 = getelementptr inbounds %struct.Scene, ptr %77, i64 0, i32 24
  %79 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 47
  %80 = load float, ptr %79, align 4, !tbaa !123
  %81 = tail call i32 @ED_markers_post_apply_transform(ptr noundef nonnull %78, ptr noundef %77, i32 noundef 22, float noundef %80, i8 noundef zeroext %64) #22
  br label %494

82:                                               ; preds = %48
  %83 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %84 = load i32, ptr %83, align 8, !tbaa !296
  %85 = and i32 %84, 128
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %494, label %87

87:                                               ; preds = %82
  tail call fastcc void @special_aftertrans_update__mask(ptr noundef %0, ptr noundef nonnull %1) #23
  br label %494

88:                                               ; preds = %48
  %89 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %90 = load ptr, ptr %89, align 8, !tbaa !179
  %91 = getelementptr inbounds %struct.ScrArea, ptr %90, i64 0, i32 19
  %92 = load ptr, ptr %91, align 8, !tbaa !203
  tail call fastcc void @special_aftertrans_update__node(ptr noundef nonnull %1) #23
  br i1 %12, label %97, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.SpaceNode, ptr %92, i64 0, i32 19
  %95 = load ptr, ptr %94, align 8, !tbaa !297
  tail call void @ED_node_post_apply_transform(ptr noundef %0, ptr noundef %95) #22
  %96 = load ptr, ptr %89, align 8, !tbaa !179
  tail call void @ED_node_link_insert(ptr noundef %96) #22
  br label %97

97:                                               ; preds = %93, %88
  %98 = load ptr, ptr %89, align 8, !tbaa !179
  tail call void @ED_node_link_intersect_test(ptr noundef %98, i32 noundef 0) #22
  br label %494

99:                                               ; preds = %48
  %100 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %101 = load i32, ptr %100, align 8, !tbaa !296
  %102 = and i32 %101, 64
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  tail call fastcc void @special_aftertrans_update__movieclip(ptr noundef %0, ptr noundef nonnull %1) #23
  br label %494

105:                                              ; preds = %99
  %106 = and i32 %101, 128
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %494, label %108

108:                                              ; preds = %105
  tail call fastcc void @special_aftertrans_update__mask(ptr noundef %0, ptr noundef nonnull %1) #23
  br label %494

109:                                              ; preds = %48
  %110 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %111 = load ptr, ptr %110, align 8, !tbaa !179
  %112 = getelementptr inbounds %struct.ScrArea, ptr %111, i64 0, i32 19
  %113 = load ptr, ptr %112, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #24
  %114 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #22
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %495, label %116

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 10
  %118 = load ptr, ptr %117, align 8, !tbaa !299
  %119 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %120 = load i16, ptr %119, align 8
  switch i16 %120, label %224 [
    i16 4, label %121
    i16 2, label %121
    i16 1, label %148
    i16 3, label %170
    i16 9, label %197
  ]

121:                                              ; preds = %116, %116
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %122 = load ptr, ptr %3, align 8, !tbaa !301
  %123 = zext nneg i16 %120 to i32
  %124 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 257, ptr noundef %122, i32 noundef %123) #22
  %125 = load ptr, ptr %4, align 8, !tbaa !64
  %126 = icmp eq ptr %125, null
  br i1 %126, label %147, label %127

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.SpaceAction, ptr %113, i64 0, i32 11
  %129 = xor i1 %12, true
  %130 = select i1 %129, i1 true, i1 %14
  br label %131

131:                                              ; preds = %127, %144
  %132 = phi ptr [ %125, %127 ], [ %145, %144 ]
  %133 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %3, ptr noundef nonnull %132) #22
  %134 = getelementptr inbounds %struct.bAnimListElem, ptr %132, i64 0, i32 8
  %135 = load ptr, ptr %134, align 8, !tbaa !227
  %136 = load i16, ptr %128, align 2, !tbaa !302
  %137 = and i16 %136, 16
  %138 = icmp eq i16 %137, 0
  %139 = select i1 %138, i1 %130, i1 false
  br i1 %139, label %140, label %144

140:                                              ; preds = %131
  %141 = icmp eq ptr %133, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %140
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %133, ptr noundef %135, i8 noundef zeroext 0, i8 noundef zeroext 1) #22
  call fastcc void @posttrans_fcurve_clean(ptr noundef %135, i16 noundef signext 0) #23
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %133, ptr noundef %135, i8 noundef zeroext 1, i8 noundef zeroext 1) #22
  br label %144

143:                                              ; preds = %140
  call fastcc void @posttrans_fcurve_clean(ptr noundef %135, i16 noundef signext 0) #23
  br label %144

144:                                              ; preds = %142, %143, %131
  %145 = load ptr, ptr %132, align 8, !tbaa !64
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %131, !llvm.loop !305

147:                                              ; preds = %144, %121
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #24
  br label %224

148:                                              ; preds = %116
  %149 = icmp eq ptr %118, null
  br i1 %149, label %160, label %150

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.Object, ptr %118, i64 0, i32 18
  %152 = load ptr, ptr %151, align 8, !tbaa !59
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = call ptr @BKE_key_from_object(ptr noundef nonnull %118) #22
  %156 = icmp eq ptr %155, null
  %157 = select i1 %156, i16 1, i16 7
  br label %158

158:                                              ; preds = %154, %150
  %159 = phi i16 [ 7, %150 ], [ %157, %154 ]
  call void @DAG_id_tag_update(ptr noundef nonnull %118, i16 noundef signext %159) #22
  br label %160

160:                                              ; preds = %158, %148
  %161 = getelementptr inbounds %struct.SpaceAction, ptr %113, i64 0, i32 11
  %162 = load i16, ptr %161, align 2, !tbaa !302
  %163 = and i16 %162, 16
  %164 = icmp eq i16 %163, 0
  %165 = xor i1 %12, true
  %166 = select i1 %165, i1 true, i1 %14
  %167 = select i1 %164, i1 %166, i1 false
  br i1 %167, label %168, label %224

168:                                              ; preds = %160
  %169 = load ptr, ptr %3, align 8, !tbaa !301
  call fastcc void @posttrans_action_clean(ptr noundef nonnull %3, ptr noundef %169) #23
  br label %224

170:                                              ; preds = %116
  %171 = getelementptr inbounds %struct.SpaceAction, ptr %113, i64 0, i32 11
  %172 = load i16, ptr %171, align 2, !tbaa !302
  %173 = and i16 %172, 16
  %174 = icmp eq i16 %173, 0
  %175 = xor i1 %12, true
  %176 = select i1 %175, i1 true, i1 %14
  %177 = select i1 %174, i1 %176, i1 false
  br i1 %177, label %178, label %224

178:                                              ; preds = %170
  %179 = load ptr, ptr @G, align 8, !tbaa !306
  %180 = getelementptr inbounds %struct.Main, ptr %179, i64 0, i32 41
  %181 = load ptr, ptr %180, align 8, !tbaa !64
  %182 = icmp eq ptr %181, null
  br i1 %182, label %224, label %183

183:                                              ; preds = %178, %194
  %184 = phi ptr [ %195, %194 ], [ %181, %178 ]
  %185 = getelementptr inbounds %struct.ID, ptr %184, i64 0, i32 6
  %186 = load i32, ptr %185, align 4, !tbaa !308
  %187 = getelementptr inbounds %struct.ID, ptr %184, i64 0, i32 5
  %188 = load i16, ptr %187, align 2, !tbaa !309
  %189 = lshr i16 %188, 9
  %190 = and i16 %189, 1
  %191 = zext nneg i16 %190 to i32
  %192 = icmp eq i32 %186, %191
  br i1 %192, label %194, label %193

193:                                              ; preds = %183
  call fastcc void @posttrans_gpd_clean(ptr noundef nonnull %184) #23
  br label %194

194:                                              ; preds = %183, %193
  %195 = load ptr, ptr %184, align 8, !tbaa !64
  %196 = icmp eq ptr %195, null
  br i1 %196, label %224, label %183, !llvm.loop !310

197:                                              ; preds = %116
  %198 = getelementptr inbounds %struct.SpaceAction, ptr %113, i64 0, i32 11
  %199 = load i16, ptr %198, align 2, !tbaa !302
  %200 = and i16 %199, 16
  %201 = icmp eq i16 %200, 0
  %202 = xor i1 %12, true
  %203 = select i1 %202, i1 true, i1 %14
  %204 = select i1 %201, i1 %203, i1 false
  br i1 %204, label %205, label %224

205:                                              ; preds = %197
  %206 = load ptr, ptr @G, align 8, !tbaa !306
  %207 = getelementptr inbounds %struct.Main, ptr %206, i64 0, i32 43
  %208 = load ptr, ptr %207, align 8, !tbaa !64
  %209 = icmp eq ptr %208, null
  br i1 %209, label %224, label %210

210:                                              ; preds = %205, %221
  %211 = phi ptr [ %222, %221 ], [ %208, %205 ]
  %212 = getelementptr inbounds %struct.ID, ptr %211, i64 0, i32 6
  %213 = load i32, ptr %212, align 4, !tbaa !308
  %214 = getelementptr inbounds %struct.ID, ptr %211, i64 0, i32 5
  %215 = load i16, ptr %214, align 2, !tbaa !309
  %216 = lshr i16 %215, 9
  %217 = and i16 %216, 1
  %218 = zext nneg i16 %217 to i32
  %219 = icmp eq i32 %213, %218
  br i1 %219, label %221, label %220

220:                                              ; preds = %210
  call fastcc void @posttrans_mask_clean(ptr noundef nonnull %211) #23
  br label %221

221:                                              ; preds = %210, %220
  %222 = load ptr, ptr %211, align 8, !tbaa !64
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %210, !llvm.loop !311

224:                                              ; preds = %221, %194, %205, %178, %116, %168, %160, %197, %170, %147
  %225 = getelementptr inbounds %struct.SpaceAction, ptr %113, i64 0, i32 11
  %226 = load i16, ptr %225, align 2, !tbaa !302
  %227 = and i16 %226, 2048
  %228 = icmp eq i16 %227, 0
  %229 = select i1 %228, i1 true, i1 %12
  br i1 %229, label %242, label %230

230:                                              ; preds = %224
  %231 = load i32, ptr %1, align 8, !tbaa !192
  switch i32 %231, label %242 [
    i32 19, label %232
    i32 21, label %232
  ]

232:                                              ; preds = %230, %230
  %233 = call ptr @ED_context_get_markers(ptr noundef %0) #22
  %234 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %235 = load ptr, ptr %234, align 8, !tbaa !124
  %236 = load i32, ptr %1, align 8, !tbaa !192
  %237 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 47
  %238 = load float, ptr %237, align 4, !tbaa !123
  %239 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 26
  %240 = load i8, ptr %239, align 8, !tbaa !295
  %241 = call i32 @ED_markers_post_apply_transform(ptr noundef %233, ptr noundef %235, i32 noundef %236, float noundef %238, i8 noundef zeroext %240) #22
  br label %242

242:                                              ; preds = %232, %230, %224
  %243 = load i16, ptr %119, align 8
  switch i16 %243, label %244 [
    i16 9, label %245
    i16 3, label %245
  ]

244:                                              ; preds = %242
  call void @ANIM_editkeyframes_refresh(ptr noundef nonnull %3) #22
  br label %245

245:                                              ; preds = %242, %242, %244
  %246 = load i16, ptr %225, align 2, !tbaa !302
  %247 = and i16 %246, -2
  store i16 %247, ptr %225, align 2, !tbaa !302
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #24
  br label %494

248:                                              ; preds = %48
  %249 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %250 = load ptr, ptr %249, align 8, !tbaa !179
  %251 = getelementptr inbounds %struct.ScrArea, ptr %250, i64 0, i32 19
  %252 = load ptr, ptr %251, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #24
  %253 = getelementptr inbounds %struct.SpaceIpo, ptr %252, i64 0, i32 11
  %254 = load i32, ptr %253, align 4, !tbaa !224
  %255 = and i32 %254, 4
  %256 = icmp eq i32 %255, 0
  %257 = zext i1 %256 to i16
  %258 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %5) #22
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %496, label %260

260:                                              ; preds = %248
  %261 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 1
  %262 = load i16, ptr %261, align 8, !tbaa !312
  %263 = icmp eq i16 %262, 0
  br i1 %263, label %290, label %264

264:                                              ; preds = %260
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %265 = load ptr, ptr %5, align 8, !tbaa !301
  %266 = sext i16 %262 to i32
  %267 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 261, ptr noundef %265, i32 noundef %266) #22
  %268 = load ptr, ptr %6, align 8, !tbaa !64
  %269 = icmp eq ptr %268, null
  br i1 %269, label %289, label %270

270:                                              ; preds = %264
  %271 = xor i1 %12, true
  %272 = select i1 %271, i1 true, i1 %14
  br label %273

273:                                              ; preds = %270, %286
  %274 = phi ptr [ %268, %270 ], [ %287, %286 ]
  %275 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %5, ptr noundef nonnull %274) #22
  %276 = getelementptr inbounds %struct.bAnimListElem, ptr %274, i64 0, i32 8
  %277 = load ptr, ptr %276, align 8, !tbaa !227
  %278 = load i32, ptr %253, align 4, !tbaa !224
  %279 = and i32 %278, 2
  %280 = icmp eq i32 %279, 0
  %281 = select i1 %280, i1 %272, i1 false
  br i1 %281, label %282, label %286

282:                                              ; preds = %273
  %283 = icmp eq ptr %275, null
  br i1 %283, label %285, label %284

284:                                              ; preds = %282
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %275, ptr noundef %277, i8 noundef zeroext 0, i8 noundef zeroext 0) #22
  call fastcc void @posttrans_fcurve_clean(ptr noundef %277, i16 noundef signext %257) #23
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %275, ptr noundef %277, i8 noundef zeroext 1, i8 noundef zeroext 0) #22
  br label %286

285:                                              ; preds = %282
  call fastcc void @posttrans_fcurve_clean(ptr noundef %277, i16 noundef signext %257) #23
  br label %286

286:                                              ; preds = %284, %285, %273
  %287 = load ptr, ptr %274, align 8, !tbaa !64
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %273, !llvm.loop !313

289:                                              ; preds = %286, %264
  call void @ANIM_animdata_freelist(ptr noundef nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #24
  br label %290

290:                                              ; preds = %289, %260
  br i1 %12, label %292, label %291

291:                                              ; preds = %290
  call void @ANIM_editkeyframes_refresh(ptr noundef nonnull %5) #22
  br label %292

292:                                              ; preds = %290, %291
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #24
  br label %494

293:                                              ; preds = %48
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %7) #24
  %294 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %7) #22
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %497, label %296

296:                                              ; preds = %293
  %297 = getelementptr inbounds %struct.bAnimContext, ptr %7, i64 0, i32 1
  %298 = load i16, ptr %297, align 8, !tbaa !312
  %299 = icmp eq i16 %298, 0
  br i1 %299, label %314, label %300

300:                                              ; preds = %296
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %301 = load ptr, ptr %7, align 8, !tbaa !301
  %302 = sext i16 %298 to i32
  %303 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 257, ptr noundef %301, i32 noundef %302) #22
  %304 = load ptr, ptr %8, align 8, !tbaa !64
  %305 = icmp eq ptr %304, null
  br i1 %305, label %313, label %306

306:                                              ; preds = %300, %306
  %307 = phi ptr [ %311, %306 ], [ %304, %300 ]
  %308 = getelementptr inbounds %struct.bAnimListElem, ptr %307, i64 0, i32 2
  %309 = load ptr, ptr %308, align 8, !tbaa !314
  call void @BKE_nlatrack_sort_strips(ptr noundef %309) #22
  %310 = getelementptr inbounds %struct.NlaTrack, ptr %309, i64 0, i32 2
  call void @BKE_nlastrips_clear_metas(ptr noundef nonnull %310, i8 noundef zeroext 0, i8 noundef zeroext 1) #22
  %311 = load ptr, ptr %307, align 8, !tbaa !64
  %312 = icmp eq ptr %311, null
  br i1 %312, label %313, label %306, !llvm.loop !315

313:                                              ; preds = %306, %300
  call void @ANIM_animdata_freelist(ptr noundef nonnull %8) #22
  call void @ED_nla_postop_refresh(ptr noundef nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #24
  br label %314

314:                                              ; preds = %296, %313
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %7) #24
  br label %494

315:                                              ; preds = %48
  %316 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  %317 = load ptr, ptr %316, align 8, !tbaa !103
  %318 = icmp eq ptr %317, null
  br i1 %318, label %327, label %319

319:                                              ; preds = %315
  %320 = getelementptr inbounds %struct.Object, ptr %317, i64 0, i32 3
  %321 = load i16, ptr %320, align 8, !tbaa !87
  %322 = icmp eq i16 %321, 1
  br i1 %322, label %323, label %494

323:                                              ; preds = %319
  %324 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %317) #22
  %325 = load ptr, ptr %316, align 8, !tbaa !103
  %326 = tail call i32 @ED_mesh_mirror_spatial_table(ptr noundef %325, ptr noundef %324, ptr noundef null, i8 noundef zeroext 101) #22
  br label %494

327:                                              ; preds = %315
  %328 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %329 = load i32, ptr %328, align 4, !tbaa !53
  %330 = and i32 %329, 4
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %398, label %332

332:                                              ; preds = %327
  %333 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 39
  %334 = load ptr, ptr %333, align 8, !tbaa !92
  %335 = icmp eq ptr %334, null
  br i1 %335, label %398, label %336

336:                                              ; preds = %332
  %337 = getelementptr inbounds %struct.Object, ptr %334, i64 0, i32 19
  %338 = load ptr, ptr %337, align 8, !tbaa !65
  %339 = and i32 %329, 262144
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %349, label %341

341:                                              ; preds = %336
  %342 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %343 = load i32, ptr %342, align 8, !tbaa !296
  %344 = and i32 %343, 16
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %349, label %346

346:                                              ; preds = %341
  %347 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %348 = load ptr, ptr %347, align 8, !tbaa !124
  tail call void @BKE_pose_where_is(ptr noundef %348, ptr noundef nonnull %334) #22
  br label %349

349:                                              ; preds = %346, %341, %336
  br i1 %12, label %361, label %350

350:                                              ; preds = %349
  %351 = load i32, ptr %1, align 8, !tbaa !192
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %361, label %353

353:                                              ; preds = %350
  %354 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 32
  %355 = load i16, ptr %354, align 2, !tbaa !316
  %356 = tail call i32 @count_set_pose_transflags(ptr noundef nonnull %1, i16 noundef signext %355, ptr noundef nonnull %334) #23
  %357 = load i32, ptr %1, align 8, !tbaa !192
  %358 = icmp eq i32 %357, 1
  br i1 %358, label %359, label %361

359:                                              ; preds = %353
  %360 = tail call fastcc signext i16 @apply_targetless_ik(ptr noundef nonnull %334) #23, !range !317
  br label %377

361:                                              ; preds = %350, %349, %353
  %362 = getelementptr inbounds %struct.Object, ptr %334, i64 0, i32 18
  %363 = load ptr, ptr %362, align 8, !tbaa !59
  %364 = load ptr, ptr %363, align 8, !tbaa !64
  %365 = icmp eq ptr %364, null
  br i1 %365, label %377, label %366

366:                                              ; preds = %361, %374
  %367 = phi ptr [ %375, %374 ], [ %364, %361 ]
  %368 = tail call fastcc ptr @has_targetless_ik(ptr noundef nonnull %367) #23
  %369 = icmp eq ptr %368, null
  br i1 %369, label %374, label %370

370:                                              ; preds = %366
  %371 = getelementptr inbounds %struct.bKinematicConstraint, ptr %368, i64 0, i32 2
  %372 = load i16, ptr %371, align 2, !tbaa !96
  %373 = and i16 %372, -5
  store i16 %373, ptr %371, align 2, !tbaa !96
  br label %374

374:                                              ; preds = %370, %366
  %375 = load ptr, ptr %367, align 8, !tbaa !64
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %366, !llvm.loop !318

377:                                              ; preds = %374, %361, %359
  %378 = phi i16 [ %360, %359 ], [ 0, %361 ], [ 0, %374 ]
  %379 = load i32, ptr %1, align 8, !tbaa !192
  %380 = icmp eq i32 %379, 1
  br i1 %380, label %381, label %382

381:                                              ; preds = %377
  tail call fastcc void @pose_grab_with_ik_clear(ptr noundef nonnull %334) #23
  br label %382

382:                                              ; preds = %381, %377
  br i1 %12, label %391, label %383

383:                                              ; preds = %382
  %384 = load i32, ptr %1, align 8, !tbaa !192
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %391, label %386

386:                                              ; preds = %383
  %387 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %388 = load ptr, ptr %387, align 8, !tbaa !124
  %389 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 52
  %390 = load ptr, ptr %389, align 8, !tbaa !319
  tail call void @autokeyframe_pose_cb_func(ptr noundef %0, ptr noundef %388, ptr noundef %390, ptr noundef nonnull %334, i32 noundef %384, i16 noundef signext %378) #23
  tail call void @DAG_id_tag_update(ptr noundef nonnull %334, i16 noundef signext 2) #22
  br label %494

391:                                              ; preds = %383, %382
  %392 = getelementptr inbounds %struct.bArmature, ptr %338, i64 0, i32 8
  %393 = load i32, ptr %392, align 8, !tbaa !115
  %394 = and i32 %393, 64
  %395 = icmp eq i32 %394, 0
  tail call void @DAG_id_tag_update(ptr noundef nonnull %334, i16 noundef signext 2) #22
  br i1 %395, label %494, label %396

396:                                              ; preds = %391
  %397 = getelementptr inbounds %struct.Object, ptr %334, i64 0, i32 103
  store i8 0, ptr %397, align 1, !tbaa !320
  br label %494

398:                                              ; preds = %332, %327
  %399 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %400 = load i32, ptr %399, align 8, !tbaa !296
  %401 = and i32 %400, 256
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %494

403:                                              ; preds = %398
  %404 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %405 = load ptr, ptr %404, align 8, !tbaa !124
  %406 = getelementptr inbounds %struct.Scene, ptr %405, i64 0, i32 6
  %407 = load ptr, ptr %406, align 8, !tbaa !125
  %408 = icmp eq ptr %407, null
  br i1 %408, label %421, label %409

409:                                              ; preds = %403
  %410 = getelementptr inbounds %struct.Base, ptr %407, i64 0, i32 7
  %411 = load ptr, ptr %410, align 8, !tbaa !144
  %412 = icmp eq ptr %411, null
  br i1 %412, label %421, label %413

413:                                              ; preds = %409
  %414 = getelementptr inbounds %struct.Object, ptr %411, i64 0, i32 27
  %415 = load i32, ptr %414, align 8, !tbaa !321
  %416 = and i32 %415, 32
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %421, label %418

418:                                              ; preds = %413
  %419 = tail call ptr @PE_get_current(ptr noundef nonnull %405, ptr noundef nonnull %411) #22
  %420 = icmp eq ptr %419, null
  br i1 %420, label %421, label %494

421:                                              ; preds = %418, %413, %409, %403
  %422 = load i32, ptr %15, align 8, !tbaa !34
  %423 = icmp sgt i32 %422, 0
  br i1 %423, label %424, label %494

424:                                              ; preds = %421
  %425 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  %426 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 52
  br label %427

427:                                              ; preds = %424, %489
  %428 = phi i64 [ 0, %424 ], [ %490, %489 ]
  %429 = load ptr, ptr %425, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #24
  %430 = getelementptr inbounds %struct.TransData, ptr %429, i64 %428, i32 11
  %431 = load ptr, ptr %430, align 8, !tbaa !322
  %432 = getelementptr inbounds %struct.TransData, ptr %429, i64 %428, i32 16
  %433 = load i32, ptr %432, align 8, !tbaa !49
  %434 = and i32 %433, 4
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %488

436:                                              ; preds = %427
  %437 = and i32 %433, 2048
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %489

439:                                              ; preds = %436
  %440 = load ptr, ptr %404, align 8, !tbaa !124
  call void @BKE_ptcache_ids_from_object(ptr noundef nonnull %9, ptr noundef %431, ptr noundef %440, i32 noundef 8) #22
  %441 = load ptr, ptr %9, align 8, !tbaa !64
  %442 = icmp eq ptr %441, null
  br i1 %442, label %457, label %443

443:                                              ; preds = %439, %454
  %444 = phi ptr [ %455, %454 ], [ %441, %439 ]
  %445 = getelementptr inbounds %struct.PTCacheID, ptr %444, i64 0, i32 5
  %446 = load i32, ptr %445, align 8, !tbaa !323
  %447 = icmp eq i32 %446, 1
  br i1 %447, label %454, label %448

448:                                              ; preds = %443
  %449 = getelementptr inbounds %struct.PTCacheID, ptr %444, i64 0, i32 25
  %450 = load ptr, ptr %449, align 8, !tbaa !324
  %451 = getelementptr inbounds %struct.PointCache, ptr %450, i64 0, i32 2
  %452 = load i32, ptr %451, align 8, !tbaa !325
  %453 = or i32 %452, 2
  store i32 %453, ptr %451, align 8, !tbaa !325
  br label %454

454:                                              ; preds = %443, %448
  %455 = load ptr, ptr %444, align 8, !tbaa !64
  %456 = icmp eq ptr %455, null
  br i1 %456, label %457, label %443, !llvm.loop !327

457:                                              ; preds = %454, %439
  call void @BLI_freelistN(ptr noundef nonnull %9) #22
  %458 = load ptr, ptr %404, align 8, !tbaa !124
  %459 = call i32 @BKE_ptcache_object_reset(ptr noundef %458, ptr noundef %431, i32 noundef 2) #22
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %462, label %461

461:                                              ; preds = %457
  call void @DAG_id_tag_update(ptr noundef %431, i16 noundef signext 2) #22
  br label %462

462:                                              ; preds = %461, %457
  call void @DAG_id_tag_update(ptr noundef %431, i16 noundef signext 1) #22
  br i1 %12, label %467, label %463

463:                                              ; preds = %462
  %464 = load ptr, ptr %404, align 8, !tbaa !124
  %465 = load ptr, ptr %426, align 8, !tbaa !319
  %466 = load i32, ptr %1, align 8, !tbaa !192
  call void @autokeyframe_ob_cb_func(ptr noundef %0, ptr noundef %464, ptr noundef %465, ptr noundef %431, i32 noundef %466) #23
  br label %489

467:                                              ; preds = %462
  %468 = getelementptr inbounds %struct.Object, ptr %431, i64 0, i32 128
  %469 = load ptr, ptr %468, align 8, !tbaa !328
  %470 = icmp eq ptr %469, null
  br i1 %470, label %489, label %471

471:                                              ; preds = %467
  %472 = load ptr, ptr %404, align 8, !tbaa !124
  %473 = call float @BKE_scene_frame_get(ptr noundef %472) #22
  %474 = load ptr, ptr %404, align 8, !tbaa !124
  %475 = getelementptr inbounds %struct.Scene, ptr %474, i64 0, i32 47
  %476 = load ptr, ptr %475, align 8, !tbaa !329
  %477 = call zeroext i8 @BKE_rigidbody_check_sim_running(ptr noundef %476, float noundef %473) #22
  %478 = icmp eq i8 %477, 0
  br i1 %478, label %489, label %479

479:                                              ; preds = %471
  %480 = getelementptr inbounds %struct.TransData, ptr %429, i64 %428, i32 13
  %481 = load ptr, ptr %480, align 8, !tbaa !330
  %482 = getelementptr inbounds %struct.TransDataExtension, ptr %481, i64 0, i32 18
  %483 = getelementptr inbounds %struct.TransDataExtension, ptr %481, i64 0, i32 19
  %484 = getelementptr inbounds %struct.TransDataExtension, ptr %481, i64 0, i32 20
  %485 = getelementptr inbounds %struct.TransDataExtension, ptr %481, i64 0, i32 21
  %486 = getelementptr inbounds %struct.TransDataExtension, ptr %481, i64 0, i32 22
  %487 = load float, ptr %486, align 8, !tbaa !331
  call void @BKE_rigidbody_aftertrans_update(ptr noundef nonnull %431, ptr noundef nonnull %482, ptr noundef nonnull %483, ptr noundef nonnull %484, ptr noundef nonnull %485, float noundef %487) #22
  br label %489

488:                                              ; preds = %427
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #24
  br label %494

489:                                              ; preds = %436, %471, %479, %467, %463
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #24
  %490 = add nuw nsw i64 %428, 1
  %491 = load i32, ptr %15, align 8, !tbaa !34
  %492 = sext i32 %491 to i64
  %493 = icmp slt i64 %490, %492
  br i1 %493, label %427, label %494, !llvm.loop !333

494:                                              ; preds = %489, %391, %421, %488, %314, %292, %245, %386, %396, %50, %75, %65, %67, %74, %87, %82, %105, %108, %104, %323, %319, %398, %418, %97
  call fastcc void @clear_trans_object_base_flags(ptr noundef nonnull %1) #23
  br label %498

495:                                              ; preds = %109
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #24
  br label %498

496:                                              ; preds = %248
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #24
  br label %498

497:                                              ; preds = %293
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %7) #24
  br label %498

498:                                              ; preds = %497, %496, %495, %2, %494
  ret void
}

; Function Attrs: optsize
declare void @projectEdgeSlideData(ptr noundef, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: optsize
declare void @freeEdgeSlideTempFaces(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @special_aftertrans_update__mesh(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !334 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !263
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 7
  %7 = load i16, ptr %6, align 4, !tbaa !335
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %49, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %11 = load ptr, ptr %10, align 8, !tbaa !103
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 3
  %15 = load i16, ptr %14, align 8, !tbaa !87
  %16 = icmp eq i16 %15, 1
  br i1 %16, label %17, label %49

17:                                               ; preds = %13
  %18 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %11) #22
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !53
  %21 = and i32 %20, 524288
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %18, align 8, !tbaa !336
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %24, i8 noundef zeroext 1, i8 noundef zeroext 16, i8 noundef zeroext 0) #22
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !34
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  br label %31

31:                                               ; preds = %28, %40
  %32 = phi i32 [ %41, %40 ], [ %26, %28 ]
  %33 = phi i32 [ %42, %40 ], [ 0, %28 ]
  %34 = phi ptr [ %43, %40 ], [ %30, %28 ]
  %35 = getelementptr inbounds %struct.TransData, ptr %34, i64 0, i32 15
  %36 = load ptr, ptr %35, align 8, !tbaa !175
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %36) #23
  %39 = load i32, ptr %25, align 8, !tbaa !34
  br label %40

40:                                               ; preds = %31, %38
  %41 = phi i32 [ %32, %31 ], [ %39, %38 ]
  %42 = add nuw nsw i32 %33, 1
  %43 = getelementptr inbounds %struct.TransData, ptr %34, i64 1
  %44 = icmp slt i32 %42, %41
  br i1 %44, label %31, label %45, !llvm.loop !338

45:                                               ; preds = %40, %23, %17
  %46 = phi i8 [ 1, %17 ], [ 17, %23 ], [ 17, %40 ]
  %47 = load ptr, ptr %2, align 8, !tbaa !124
  %48 = load ptr, ptr %10, align 8, !tbaa !103
  tail call void @EDBM_automerge(ptr noundef %47, ptr noundef %48, i8 noundef zeroext 1, i8 noundef zeroext %46) #22
  br label %49

49:                                               ; preds = %45, %13, %9, %1
  ret void
}

; Function Attrs: optsize
declare i32 @ED_markers_post_apply_transform(ptr noundef, ptr noundef, i32 noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @special_aftertrans_update__mask(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !339 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  %4 = load i8, ptr %3, align 8, !tbaa !289
  switch i8 %4, label %17 [
    i8 20, label %5
    i8 6, label %11
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %7 = load ptr, ptr %6, align 8, !tbaa !179
  %8 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !203
  %10 = tail call ptr @ED_space_clip_get_mask(ptr noundef %9) #22
  br label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %13 = load ptr, ptr %12, align 8, !tbaa !179
  %14 = getelementptr inbounds %struct.ScrArea, ptr %13, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !203
  %16 = tail call ptr @ED_space_image_get_mask(ptr noundef %15) #22
  br label %17

17:                                               ; preds = %2, %11, %5
  %18 = phi ptr [ %10, %5 ], [ %16, %11 ], [ null, %2 ]
  %19 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %20 = load ptr, ptr %19, align 8, !tbaa !124
  %21 = getelementptr inbounds %struct.Scene, ptr %20, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !340
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358285312, ptr noundef %18) #22
  %25 = load ptr, ptr %19, align 8, !tbaa !124
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %17, %24
  %28 = phi ptr [ %25, %24 ], [ %20, %17 ]
  %29 = getelementptr inbounds %struct.Scene, ptr %28, i64 0, i32 20
  %30 = load ptr, ptr %29, align 8, !tbaa !263
  %31 = getelementptr inbounds %struct.ToolSettings, ptr %30, i64 0, i32 21
  %32 = load i16, ptr %31, align 8, !tbaa !341
  %33 = and i16 %32, 1
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %43, label %39

35:                                               ; preds = %24
  %36 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !342
  %37 = and i16 %36, 1
  %38 = icmp eq i16 %37, 0
  tail call void @llvm.assume(i1 %38)
  br label %43

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.Scene, ptr %28, i64 0, i32 22, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !262
  %42 = tail call zeroext i8 @ED_mask_layer_shape_auto_key_select(ptr noundef %18, i32 noundef %41) #22
  br label %43

43:                                               ; preds = %35, %39, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @special_aftertrans_update__node(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !343 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 4, !tbaa !213
  %4 = icmp eq i16 %3, 3
  br i1 %4, label %5, label %31

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 51
  %7 = load i8, ptr %6, align 4, !tbaa !344
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %11 = load ptr, ptr %10, align 8, !tbaa !179
  %12 = getelementptr inbounds %struct.ScrArea, ptr %11, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !203
  %14 = getelementptr inbounds %struct.SpaceNode, ptr %13, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !297
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.bNodeTree, ptr %15, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !345
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %17, %29
  %22 = phi ptr [ %23, %29 ], [ %19, %17 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !348
  %24 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !349
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  tail call void @nodeFreeNode(ptr noundef nonnull %15, ptr noundef nonnull %22) #22
  br label %29

29:                                               ; preds = %21, %28
  %30 = icmp eq ptr %23, null
  br i1 %30, label %31, label %21, !llvm.loop !350

31:                                               ; preds = %29, %17, %9, %5, %1
  ret void
}

; Function Attrs: optsize
declare void @ED_node_post_apply_transform(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @ED_node_link_insert(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @special_aftertrans_update__movieclip(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !351 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %4 = load ptr, ptr %3, align 8, !tbaa !179
  %5 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !203
  %7 = tail call ptr @ED_space_clip_get_clip(ptr noundef %6) #22
  %8 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11
  %9 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %8) #22
  %10 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %6) #22
  %11 = load ptr, ptr %9, align 8, !tbaa !64
  %12 = icmp eq ptr %11, null
  br i1 %12, label %70, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.SpaceClip, ptr %6, i64 0, i32 12
  br label %15

15:                                               ; preds = %13, %67
  %16 = phi ptr [ %11, %13 ], [ %68, %67 ]
  %17 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %16, i64 0, i32 8
  %18 = load i32, ptr %17, align 4, !tbaa !352
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %67

21:                                               ; preds = %15
  %22 = and i32 %18, 9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %63

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %16, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !354
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %16, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !355
  %31 = zext nneg i32 %26 to i64
  br label %32

32:                                               ; preds = %28, %60
  %33 = phi i64 [ 0, %28 ], [ %61, %60 ]
  %34 = getelementptr inbounds ptr, ptr %30, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !64
  %36 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %35, i64 0, i32 13
  %37 = load i32, ptr %36, align 8, !tbaa !356
  %38 = and i32 %37, 32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %32
  %41 = and i32 %37, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %40
  %44 = load i32, ptr %14, align 8, !tbaa !358
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %35, i64 0, i32 14
  %49 = load i32, ptr %48, align 4, !tbaa !363
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %47, %43
  %53 = and i32 %44, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %35, i64 0, i32 15
  %57 = load i32, ptr %56, align 8, !tbaa !364
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55, %52, %32
  %61 = add nuw nsw i64 %33, 1
  %62 = icmp eq i64 %61, %31
  br i1 %62, label %63, label %32, !llvm.loop !365

63:                                               ; preds = %60, %24, %21
  %64 = and i32 %18, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %55, %47, %40, %63
  tail call void @BKE_tracking_track_plane_from_existing_motion(ptr noundef nonnull %16, i32 noundef %10) #22
  br label %67

67:                                               ; preds = %63, %66, %15
  %68 = load ptr, ptr %16, align 8, !tbaa !64
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %15, !llvm.loop !366

70:                                               ; preds = %67, %2
  %71 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %72 = load ptr, ptr %71, align 8, !tbaa !124
  %73 = getelementptr inbounds %struct.Scene, ptr %72, i64 0, i32 18
  %74 = load ptr, ptr %73, align 8, !tbaa !340
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %70
  %77 = tail call zeroext i8 @nodeUpdateID(ptr noundef nonnull %74, ptr noundef %7) #22
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67436544, ptr noundef null) #22
  br label %78

78:                                               ; preds = %76, %70
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @ANIM_nla_mapping_get(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @ANIM_nla_mapping_apply_fcurve(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @posttrans_fcurve_clean(ptr noundef %0, i16 noundef signext %1) unnamed_addr #8 !PGOFuncName !367 {
  %3 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !231
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %103, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !229
  %9 = icmp eq ptr %8, null
  br i1 %9, label %103, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %12 = zext i32 %4 to i64
  %13 = shl nuw nsw i64 %12, 2
  %14 = tail call ptr %11(i64 noundef %13, ptr noundef nonnull @.str.10) #22
  %15 = load i32, ptr %3, align 8, !tbaa !231
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %101, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %7, align 8, !tbaa !229
  %19 = zext i32 %15 to i64
  br label %20

20:                                               ; preds = %17, %45
  %21 = phi i64 [ 0, %17 ], [ %48, %45 ]
  %22 = phi i32 [ 0, %17 ], [ %47, %45 ]
  %23 = phi i32 [ 0, %17 ], [ %46, %45 ]
  %24 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 %21, i32 8
  %25 = load i8, ptr %24, align 4, !tbaa !368
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 %21, i32 7
  %30 = load i8, ptr %29, align 1, !tbaa !369
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 %21, i32 9
  %35 = load i8, ptr %34, align 1, !tbaa !370
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %33, %28, %20
  %39 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 %21, i32 0, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !123
  %41 = sext i32 %23 to i64
  %42 = getelementptr inbounds float, ptr %14, i64 %41
  store float %40, ptr %42, align 4, !tbaa !123
  %43 = add nsw i32 %23, 1
  %44 = add nsw i32 %22, 1
  br label %45

45:                                               ; preds = %38, %33
  %46 = phi i32 [ %43, %38 ], [ %23, %33 ]
  %47 = phi i32 [ %44, %38 ], [ %22, %33 ]
  %48 = add nuw nsw i64 %21, 1
  %49 = icmp eq i64 %48, %19
  br i1 %49, label %50, label %20, !llvm.loop !371

50:                                               ; preds = %45
  %51 = icmp eq i32 %47, 0
  %52 = icmp eq i32 %47, %15
  %53 = or i1 %51, %52
  br i1 %53, label %101, label %54

54:                                               ; preds = %50
  %55 = add i32 %15, -1
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %57, label %99

57:                                               ; preds = %54
  %58 = icmp slt i32 %47, 1
  %59 = sext i32 %47 to i64
  %60 = zext nneg i32 %55 to i64
  br label %61

61:                                               ; preds = %57, %96
  %62 = phi i64 [ %60, %57 ], [ %97, %96 ]
  %63 = load ptr, ptr %7, align 8, !tbaa !229
  %64 = getelementptr inbounds %struct.BezTriple, ptr %63, i64 %62, i32 8
  %65 = load i8, ptr %64, align 4, !tbaa !368
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %96

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.BezTriple, ptr %63, i64 %62, i32 7
  %70 = load i8, ptr %69, align 1, !tbaa !369
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %96

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.BezTriple, ptr %63, i64 %62, i32 9
  %75 = load i8, ptr %74, align 1, !tbaa !370
  %76 = and i8 %75, 1
  %77 = icmp ne i8 %76, 0
  %78 = or i1 %77, %58
  br i1 %78, label %96, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.BezTriple, ptr %63, i64 %62, i32 0, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !123
  br label %82

82:                                               ; preds = %91, %79
  %83 = phi i64 [ %93, %91 ], [ 0, %79 ]
  %84 = getelementptr inbounds float, ptr %14, i64 %83
  %85 = load float, ptr %84, align 4, !tbaa !123
  %86 = fsub float %81, %85
  %87 = tail call float @llvm.fabs.f32(float %86)
  %88 = fcmp ult float %87, 0x3E80000000000000
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = trunc i64 %62 to i32
  tail call void @delete_fcurve_key(ptr noundef %0, i32 noundef %90, i8 noundef zeroext 0) #22
  br label %96

91:                                               ; preds = %82
  %92 = fcmp uge float %81, %85
  %93 = add nuw nsw i64 %83, 1
  %94 = icmp slt i64 %93, %59
  %95 = select i1 %92, i1 %94, i1 false
  br i1 %95, label %82, label %96, !llvm.loop !372

96:                                               ; preds = %91, %73, %68, %61, %89
  %97 = add nsw i64 %62, -1
  %98 = icmp sgt i64 %62, 0
  br i1 %98, label %61, label %99, !llvm.loop !373

99:                                               ; preds = %96, %54
  %100 = trunc i16 %1 to i8
  tail call void @testhandles_fcurve(ptr noundef %0, i8 noundef zeroext %100) #22
  br label %101

101:                                              ; preds = %10, %99, %50
  %102 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %102(ptr noundef %14) #22
  br label %103

103:                                              ; preds = %2, %6, %101
  ret void
}

; Function Attrs: optsize
declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @posttrans_action_clean(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !PGOFuncName !374 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = call i64 @ANIM_animdata_filter(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 257, ptr noundef %1, i32 noundef 1) #22
  %5 = load ptr, ptr %3, align 8, !tbaa !64
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2, %17
  %8 = phi ptr [ %18, %17 ], [ %5, %2 ]
  %9 = call ptr @ANIM_nla_mapping_get(ptr noundef %0, ptr noundef nonnull %8) #22
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.bAnimListElem, ptr %8, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !227
  br i1 %10, label %16, label %13

13:                                               ; preds = %7
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %9, ptr noundef %12, i8 noundef zeroext 0, i8 noundef zeroext 1) #22
  %14 = load ptr, ptr %11, align 8, !tbaa !227
  call fastcc void @posttrans_fcurve_clean(ptr noundef %14, i16 noundef signext 0) #23
  %15 = load ptr, ptr %11, align 8, !tbaa !227
  call void @ANIM_nla_mapping_apply_fcurve(ptr noundef nonnull %9, ptr noundef %15, i8 noundef zeroext 1, i8 noundef zeroext 1) #22
  br label %17

16:                                               ; preds = %7
  call fastcc void @posttrans_fcurve_clean(ptr noundef %12, i16 noundef signext 0) #23
  br label %17

17:                                               ; preds = %16, %13
  %18 = load ptr, ptr %8, align 8, !tbaa !64
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !llvm.loop !375

20:                                               ; preds = %17, %2
  call void @ANIM_animdata_freelist(ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @posttrans_gpd_clean(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !376 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.bGPdata, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %1, %30
  %7 = phi ptr [ %31, %30 ], [ %4, %1 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #24
  store i8 0, ptr %2, align 1, !tbaa !88
  %8 = getelementptr inbounds %struct.bGPDlayer, ptr %7, i64 0, i32 2
  call void @BLI_sortlist_r(ptr noundef nonnull %8, ptr noundef nonnull %2, ptr noundef nonnull @gpf_cmp_frame) #22
  %9 = load i8, ptr %2, align 1, !tbaa !88
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %8, align 8, !tbaa !377
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %12, align 8, !tbaa !379
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %14, %27
  %18 = phi ptr [ %28, %27 ], [ %15, %14 ]
  %19 = phi ptr [ %18, %27 ], [ %12, %14 ]
  %20 = getelementptr inbounds %struct.bGPDframe, ptr %19, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !381
  %22 = getelementptr inbounds %struct.bGPDframe, ptr %18, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !381
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = call zeroext i8 @gpencil_layer_delframe(ptr noundef nonnull %7, ptr noundef nonnull %19) #22
  br label %27

27:                                               ; preds = %17, %25
  %28 = load ptr, ptr %18, align 8, !tbaa !379
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17

30:                                               ; preds = %27, %14, %11, %6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #24
  %31 = load ptr, ptr %7, align 8, !tbaa !64
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %6, !llvm.loop !382

33:                                               ; preds = %30, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @posttrans_mask_clean(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !383 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %1, %29
  %7 = phi ptr [ %30, %29 ], [ %4, %1 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #24
  store i8 0, ptr %2, align 1, !tbaa !88
  %8 = getelementptr inbounds %struct.MaskLayer, ptr %7, i64 0, i32 4
  call void @BLI_sortlist_r(ptr noundef nonnull %8, ptr noundef nonnull %2, ptr noundef nonnull @masklay_shape_cmp_frame) #22
  %9 = load i8, ptr %2, align 1, !tbaa !88
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %8, align 8, !tbaa !384
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %12, align 8, !tbaa !386
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %14, %26
  %18 = phi ptr [ %27, %26 ], [ %15, %14 ]
  %19 = phi ptr [ %18, %26 ], [ %12, %14 ]
  %20 = getelementptr inbounds %struct.MaskLayerShape, ptr %19, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !388
  %22 = getelementptr inbounds %struct.MaskLayerShape, ptr %18, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !388
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  call void @BKE_mask_layer_shape_unlink(ptr noundef nonnull %7, ptr noundef nonnull %19) #22
  br label %26

26:                                               ; preds = %17, %25
  %27 = load ptr, ptr %18, align 8, !tbaa !386
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %17

29:                                               ; preds = %26, %14, %11, %6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #24
  %30 = load ptr, ptr %7, align 8, !tbaa !64
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %6, !llvm.loop !389

32:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: optsize
declare ptr @ED_context_get_markers(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @ANIM_editkeyframes_refresh(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BKE_nlatrack_sort_strips(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BKE_nlastrips_clear_metas(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: optsize
declare void @ED_nla_postop_refresh(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @ED_mesh_mirror_spatial_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BKE_pose_where_is(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc signext i16 @apply_targetless_ik(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !390 {
  %2 = alloca [256 x ptr], align 16
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %2) #24
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = icmp eq ptr %10, null
  br i1 %11, label %109, label %12

12:                                               ; preds = %1, %105
  %13 = phi ptr [ %107, %105 ], [ %10, %1 ]
  %14 = phi i16 [ %106, %105 ], [ 0, %1 ]
  %15 = call fastcc ptr @has_targetless_ik(ptr noundef nonnull %13) #23
  %16 = icmp eq ptr %15, null
  br i1 %16, label %105, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.bKinematicConstraint, ptr %15, i64 0, i32 2
  %19 = load i16, ptr %18, align 2, !tbaa !96
  %20 = zext i16 %19 to i32
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %105, label %23

23:                                               ; preds = %17
  %24 = and i32 %20, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.bPoseChannel, ptr %13, i64 0, i32 13
  %28 = load ptr, ptr %27, align 8, !tbaa !75
  %29 = icmp eq ptr %28, null
  br i1 %29, label %102, label %30

30:                                               ; preds = %23, %26
  %31 = phi ptr [ %28, %26 ], [ %13, %23 ]
  %32 = getelementptr inbounds %struct.bKinematicConstraint, ptr %15, i64 0, i32 3
  %33 = load i16, ptr %32, align 4, !tbaa !98
  %34 = sext i16 %33 to i32
  %35 = add nsw i32 %34, -1
  %36 = call i32 @llvm.umin.i32(i32 %35, i32 255)
  %37 = add nuw nsw i32 %36, 1
  %38 = zext nneg i32 %36 to i64
  br label %39

39:                                               ; preds = %30, %44
  %40 = phi i64 [ 0, %30 ], [ %45, %44 ]
  %41 = phi ptr [ %31, %30 ], [ %47, %44 ]
  %42 = getelementptr inbounds [256 x ptr], ptr %2, i64 0, i64 %40
  store ptr %41, ptr %42, align 8, !tbaa !64
  %43 = icmp eq i64 %40, %38
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = add nuw nsw i64 %40, 1
  %46 = getelementptr inbounds %struct.bPoseChannel, ptr %41, i64 0, i32 13
  %47 = load ptr, ptr %46, align 8, !tbaa !75
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %39, !llvm.loop !391

49:                                               ; preds = %44
  %50 = trunc i64 %45 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %102, label %52

52:                                               ; preds = %39, %49
  %53 = phi i32 [ %50, %49 ], [ %37, %39 ]
  %54 = zext nneg i32 %53 to i64
  br label %55

55:                                               ; preds = %52, %98
  %56 = phi i64 [ %54, %52 ], [ %57, %98 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #24
  %57 = add nsw i64 %56, -1
  %58 = getelementptr inbounds [256 x ptr], ptr %2, i64 0, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !64
  %60 = getelementptr inbounds %struct.bPoseChannel, ptr %59, i64 0, i32 12
  %61 = load ptr, ptr %60, align 8, !tbaa !68
  %62 = getelementptr inbounds %struct.Bone, ptr %61, i64 0, i32 10
  %63 = load i32, ptr %62, align 8, !tbaa !72
  %64 = or i32 %63, 8
  store i32 %64, ptr %62, align 8, !tbaa !72
  %65 = getelementptr inbounds %struct.bPoseChannel, ptr %59, i64 0, i32 29
  call void @BKE_armature_mat_pose_to_bone(ptr noundef %59, ptr noundef nonnull %65, ptr noundef nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #24
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef nonnull %3) #22
  %66 = getelementptr inbounds %struct.bPoseChannel, ptr %59, i64 0, i32 26
  %67 = load i16, ptr %66, align 4, !tbaa !392
  %68 = icmp sgt i16 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %55
  %70 = getelementptr inbounds %struct.bPoseChannel, ptr %59, i64 0, i32 22
  call void @mat3_to_eulO(ptr noundef nonnull %70, i16 noundef signext %67, ptr noundef nonnull %4) #22
  br label %78

71:                                               ; preds = %55
  %72 = icmp eq i16 %67, -1
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.bPoseChannel, ptr %59, i64 0, i32 24
  %75 = getelementptr inbounds %struct.bPoseChannel, ptr %59, i64 0, i32 25
  call void @mat3_to_axis_angle(ptr noundef nonnull %74, ptr noundef nonnull %75, ptr noundef nonnull %4) #22
  br label %78

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.bPoseChannel, ptr %59, i64 0, i32 23
  call void @mat3_to_quat(ptr noundef nonnull %77, ptr noundef nonnull %4) #22
  br label %78

78:                                               ; preds = %73, %76, %69
  %79 = load i16, ptr %18, align 2, !tbaa !96
  %80 = and i16 %79, 16
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %98, label %82

82:                                               ; preds = %78
  %83 = load i16, ptr %66, align 4, !tbaa !392
  %84 = icmp sgt i16 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.bPoseChannel, ptr %59, i64 0, i32 22
  call void @eulO_to_mat3(ptr noundef nonnull %5, ptr noundef nonnull %86, i16 noundef signext %83) #22
  br label %95

87:                                               ; preds = %82
  %88 = icmp eq i16 %83, -1
  br i1 %88, label %89, label %93

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.bPoseChannel, ptr %59, i64 0, i32 24
  %91 = getelementptr inbounds %struct.bPoseChannel, ptr %59, i64 0, i32 25
  %92 = load float, ptr %91, align 8, !tbaa !393
  call void @axis_angle_to_mat3(ptr noundef nonnull %5, ptr noundef nonnull %90, float noundef %92) #22
  br label %95

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.bPoseChannel, ptr %59, i64 0, i32 23
  call void @quat_to_mat3(ptr noundef nonnull %5, ptr noundef nonnull %94) #22
  br label %95

95:                                               ; preds = %89, %93, %85
  %96 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %6, ptr noundef nonnull %5) #22
  call void @mul_m3_m3m3(ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %6) #22
  %97 = getelementptr inbounds %struct.bPoseChannel, ptr %59, i64 0, i32 21
  call void @mat3_to_size(ptr noundef nonnull %97, ptr noundef nonnull %7) #22
  br label %98

98:                                               ; preds = %95, %78
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #24
  %99 = icmp eq i64 %57, 0
  br i1 %99, label %100, label %55, !llvm.loop !394

100:                                              ; preds = %98
  %101 = load i16, ptr %18, align 2, !tbaa !96
  br label %102

102:                                              ; preds = %26, %100, %49
  %103 = phi i16 [ %101, %100 ], [ %19, %49 ], [ %19, %26 ]
  %104 = and i16 %103, -5
  store i16 %104, ptr %18, align 2, !tbaa !96
  br label %105

105:                                              ; preds = %12, %17, %102
  %106 = phi i16 [ 1, %102 ], [ %14, %17 ], [ %14, %12 ]
  %107 = load ptr, ptr %13, align 8, !tbaa !64
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %12, !llvm.loop !395

109:                                              ; preds = %105, %1
  %110 = phi i16 [ 0, %1 ], [ %106, %105 ]
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %2) #24
  ret i16 %110
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pose_grab_with_ik_clear(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !396 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq ptr %4, null
  br i1 %5, label %55, label %9

6:                                                ; preds = %53, %9
  %7 = load ptr, ptr %10, align 8, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %55, label %9, !llvm.loop !397

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %7, %6 ], [ %4, %1 ]
  %11 = getelementptr inbounds %struct.bPoseChannel, ptr %10, i64 0, i32 6
  %12 = load i16, ptr %11, align 2, !tbaa !398
  %13 = and i16 %12, -7169
  store i16 %13, ptr %11, align 2, !tbaa !398
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %10, i64 0, i32 9
  %15 = load i8, ptr %14, align 8, !tbaa !95
  %16 = and i8 %15, -10
  store i8 %16, ptr %14, align 8, !tbaa !95
  %17 = getelementptr inbounds %struct.bPoseChannel, ptr %10, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !399
  %19 = icmp eq ptr %18, null
  br i1 %19, label %6, label %20

20:                                               ; preds = %9, %53
  %21 = phi ptr [ %22, %53 ], [ %18, %9 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !400
  %23 = getelementptr inbounds %struct.bConstraint, ptr %21, i64 0, i32 3
  %24 = load i16, ptr %23, align 8, !tbaa !81
  %25 = icmp eq i16 %24, 3
  br i1 %25, label %26, label %53

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.bConstraint, ptr %21, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !84
  %29 = getelementptr inbounds %struct.bKinematicConstraint, ptr %28, i64 0, i32 2
  %30 = load i16, ptr %29, align 2, !tbaa !96
  %31 = and i16 %30, 8
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %2, align 8, !tbaa !59
  tail call void @BIK_clear_data(ptr noundef %34) #22
  tail call void @BLI_remlink(ptr noundef nonnull %17, ptr noundef nonnull %21) #22
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  %36 = load ptr, ptr %27, align 8, !tbaa !84
  tail call void %35(ptr noundef %36) #22
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %37(ptr noundef nonnull %21) #22
  br label %53

38:                                               ; preds = %26
  %39 = load i8, ptr %14, align 8, !tbaa !95
  %40 = or i8 %39, 1
  store i8 %40, ptr %14, align 8, !tbaa !95
  %41 = load ptr, ptr %28, align 8, !tbaa !85
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 3
  %45 = load i16, ptr %44, align 8, !tbaa !87
  %46 = icmp eq i16 %45, 25
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.bKinematicConstraint, ptr %28, i64 0, i32 5
  %49 = load i8, ptr %48, align 8, !tbaa !88
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %38
  %52 = or i8 %39, 9
  store i8 %52, ptr %14, align 8, !tbaa !95
  br label %53

53:                                               ; preds = %20, %51, %47, %43, %33
  %54 = icmp eq ptr %22, null
  br i1 %54, label %6, label %20, !llvm.loop !401

55:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_ptcache_ids_from_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @BKE_ptcache_object_reset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare zeroext i8 @BKE_rigidbody_check_sim_running(ptr noundef, float noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BKE_rigidbody_aftertrans_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @clear_trans_object_base_flags(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !402 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %15, %7 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !403
  %11 = lshr i32 %10, 1
  %12 = and i32 %11, 1
  %13 = and i32 %10, -8495
  %14 = or i32 %13, %12
  store i32 %14, ptr %9, align 8, !tbaa !403
  %15 = load ptr, ptr %8, align 8, !tbaa !64
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %7, !llvm.loop !404

17:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @special_transform_moving(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %3 = load i8, ptr %2, align 8, !tbaa !289
  switch i8 %3, label %5 [
    i8 8, label %22
    i8 2, label %4
  ]

4:                                                ; preds = %1
  br label %22

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %7 = load ptr, ptr %6, align 8, !tbaa !103
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !53
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %16 = load ptr, ptr %15, align 8, !tbaa !92
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @flushTransTracking(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca [2 x float], align 8
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %8 = load ptr, ptr %7, align 8, !tbaa !179
  %9 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @ED_space_clip_get_aspect_dimension_aware(ptr noundef %10, ptr noundef nonnull %2, ptr noundef nonnull %3) #22
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %12 = load i16, ptr %11, align 4, !tbaa !213
  %13 = icmp eq i16 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  call fastcc void @cancelTransTracking(ptr noundef nonnull %0) #23
  br label %15

15:                                               ; preds = %14, %1
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !34
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %164

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %21 = load ptr, ptr %20, align 8, !tbaa !100
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !174
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  br label %25

25:                                               ; preds = %19, %157
  %26 = phi i32 [ %17, %19 ], [ %158, %157 ]
  %27 = phi i32 [ 0, %19 ], [ %160, %157 ]
  %28 = phi ptr [ %21, %19 ], [ %162, %157 ]
  %29 = phi ptr [ %23, %19 ], [ %161, %157 ]
  %30 = load i32, ptr %28, align 8, !tbaa !405
  switch i32 %30, label %157 [
    i32 0, label %31
    i32 1, label %130
    i32 2, label %146
  ]

31:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %32 = load i32, ptr %0, align 8, !tbaa !192
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.TransDataTracking, ptr %28, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !407
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %127, label %38

38:                                               ; preds = %34, %31
  %39 = load float, ptr %2, align 4, !tbaa !123
  %40 = load float, ptr %3, align 4, !tbaa !123
  %41 = load <2 x float>, ptr %29, align 8, !tbaa !123
  %42 = insertelement <2 x float> poison, float %39, i64 0
  %43 = insertelement <2 x float> %42, float %40, i64 1
  %44 = fdiv <2 x float> %41, %43
  store <2 x float> %44, ptr %4, align 8, !tbaa !123
  %45 = load i32, ptr %24, align 4, !tbaa !53
  %46 = and i32 %45, 16777216
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %110, label %48

48:                                               ; preds = %38
  switch i32 %32, label %110 [
    i32 3, label %49
    i32 1, label %53
  ]

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.TransDataTracking, ptr %28, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !407
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %110, label %127

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.TransDataTracking, ptr %28, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !407
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %110

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.TransDataTracking, ptr %28, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !408
  %60 = icmp eq ptr %59, null
  br i1 %60, label %110, label %61

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  %62 = getelementptr inbounds %struct.TransDataTracking, ptr %28, i64 0, i32 8
  %63 = load ptr, ptr %62, align 8, !tbaa !409
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %86

65:                                               ; preds = %61
  %66 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %67 = getelementptr inbounds %struct.TransDataTracking, ptr %28, i64 0, i32 9
  %68 = load i32, ptr %67, align 8, !tbaa !410
  %69 = sext i32 %68 to i64
  %70 = shl nsw i64 %69, 3
  %71 = call ptr %66(i64 noundef %70, ptr noundef nonnull @.str.6) #22
  store ptr %71, ptr %62, align 8, !tbaa !409
  %72 = load i32, ptr %67, align 8, !tbaa !410
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.TransDataTracking, ptr %28, i64 0, i32 10
  br label %76

76:                                               ; preds = %74, %76
  %77 = phi i64 [ 0, %74 ], [ %82, %76 ]
  %78 = load ptr, ptr %62, align 8, !tbaa !409
  %79 = getelementptr inbounds [2 x float], ptr %78, i64 %77
  %80 = load ptr, ptr %75, align 8, !tbaa !411
  %81 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %80, i64 %77
  call fastcc void @copy_v2_v2(ptr noundef %79, ptr noundef %81) #23
  %82 = add nuw nsw i64 %77, 1
  %83 = load i32, ptr %67, align 8, !tbaa !410
  %84 = sext i32 %83 to i64
  %85 = icmp slt i64 %82, %84
  br i1 %85, label %76, label %86, !llvm.loop !412

86:                                               ; preds = %76, %65, %61
  %87 = getelementptr inbounds %struct.TransDataTracking, ptr %28, i64 0, i32 5
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %87) #23
  %88 = getelementptr inbounds %struct.TransDataTracking, ptr %28, i64 0, i32 6
  call fastcc void @sub_v2_v2(ptr noundef nonnull %5, ptr noundef nonnull %88) #23
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %88) #23
  %89 = getelementptr inbounds %struct.TransDataTracking, ptr %28, i64 0, i32 9
  %90 = load i32, ptr %89, align 8, !tbaa !410
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.TransDataTracking, ptr %28, i64 0, i32 10
  br label %94

94:                                               ; preds = %92, %94
  %95 = phi i64 [ 0, %92 ], [ %100, %94 ]
  %96 = load ptr, ptr %93, align 8, !tbaa !411
  %97 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %96, i64 %95
  %98 = load ptr, ptr %62, align 8, !tbaa !409
  %99 = getelementptr inbounds [2 x float], ptr %98, i64 %95
  call fastcc void @add_v2_v2v2(ptr noundef %97, ptr noundef %99, ptr noundef nonnull %6) #23
  %100 = add nuw nsw i64 %95, 1
  %101 = load i32, ptr %89, align 8, !tbaa !410
  %102 = sext i32 %101 to i64
  %103 = icmp slt i64 %100, %102
  br i1 %103, label %94, label %104, !llvm.loop !413

104:                                              ; preds = %94
  %105 = trunc i64 %100 to i32
  br label %106

106:                                              ; preds = %104, %86
  %107 = phi i32 [ 0, %86 ], [ %105, %104 ]
  %108 = getelementptr inbounds %struct.TransData2D, ptr %29, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !211
  call fastcc void @negate_v2_v2(ptr noundef %109, ptr noundef nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  br label %110

110:                                              ; preds = %48, %49, %53, %57, %106, %38
  %111 = phi i32 [ %27, %49 ], [ %107, %106 ], [ %27, %57 ], [ %27, %53 ], [ %27, %38 ], [ %27, %48 ]
  %112 = getelementptr inbounds %struct.TransDataTracking, ptr %28, i64 0, i32 2
  %113 = load i32, ptr %112, align 8, !tbaa !407
  %114 = icmp eq i32 %113, 1
  %115 = getelementptr inbounds %struct.TransDataTracking, ptr %28, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !408
  br i1 %114, label %117, label %122

117:                                              ; preds = %110
  %118 = icmp eq ptr %116, null
  br i1 %118, label %119, label %127

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.TransData2D, ptr %29, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !211
  store <2 x float> %44, ptr %121, align 4, !tbaa !123
  br label %127

122:                                              ; preds = %110
  %123 = getelementptr inbounds %struct.TransData2D, ptr %29, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !211
  store <2 x float> %44, ptr %124, align 4, !tbaa !123
  %125 = icmp eq ptr %116, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  call fastcc void @sub_v2_v2(ptr noundef nonnull %124, ptr noundef nonnull %116) #23
  br label %127

127:                                              ; preds = %119, %117, %126, %122, %49, %34
  %128 = phi i32 [ %27, %34 ], [ %27, %49 ], [ %111, %122 ], [ %111, %126 ], [ %111, %117 ], [ %111, %119 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  %129 = load i32, ptr %16, align 8, !tbaa !34
  br label %157

130:                                              ; preds = %25
  %131 = getelementptr inbounds %struct.TransDataTracking, ptr %28, i64 0, i32 11
  %132 = load ptr, ptr %131, align 8, !tbaa !414
  %133 = getelementptr inbounds %struct.TransDataTracking, ptr %28, i64 0, i32 13
  %134 = load i16, ptr %133, align 4, !tbaa !415
  %135 = sext i16 %134 to i64
  %136 = getelementptr inbounds float, ptr %132, i64 %135
  %137 = load float, ptr %136, align 4, !tbaa !123
  %138 = getelementptr inbounds [3 x float], ptr %29, i64 0, i64 1
  %139 = load float, ptr %138, align 4, !tbaa !123
  %140 = getelementptr inbounds %struct.TransDataTracking, ptr %28, i64 0, i32 12
  %141 = load float, ptr %140, align 8, !tbaa !416
  %142 = call float @llvm.fmuladd.f32(float %139, float %141, float %137)
  %143 = getelementptr inbounds %struct.TransData2D, ptr %29, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !211
  %145 = getelementptr inbounds float, ptr %144, i64 %135
  store float %142, ptr %145, align 4, !tbaa !123
  br label %157

146:                                              ; preds = %25
  %147 = load float, ptr %29, align 8, !tbaa !123
  %148 = load float, ptr %2, align 4, !tbaa !123
  %149 = fdiv float %147, %148
  %150 = getelementptr inbounds %struct.TransData2D, ptr %29, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !211
  store float %149, ptr %151, align 4, !tbaa !123
  %152 = getelementptr inbounds [3 x float], ptr %29, i64 0, i64 1
  %153 = load float, ptr %152, align 4, !tbaa !123
  %154 = load float, ptr %3, align 4, !tbaa !123
  %155 = fdiv float %153, %154
  %156 = getelementptr inbounds float, ptr %151, i64 1
  store float %155, ptr %156, align 4, !tbaa !123
  br label %157

157:                                              ; preds = %25, %127, %146, %130
  %158 = phi i32 [ %129, %127 ], [ %26, %130 ], [ %26, %146 ], [ %26, %25 ]
  %159 = phi i32 [ %128, %127 ], [ %27, %130 ], [ %27, %146 ], [ %27, %25 ]
  %160 = add nsw i32 %159, 1
  %161 = getelementptr inbounds %struct.TransData2D, ptr %29, i64 1
  %162 = getelementptr inbounds %struct.TransDataTracking, ptr %28, i64 1
  %163 = icmp slt i32 %160, %158
  br i1 %163, label %25, label %164, !llvm.loop !417

164:                                              ; preds = %157, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: optsize
declare void @ED_space_clip_get_aspect_dimension_aware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cancelTransTracking(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !418 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %3 = load ptr, ptr %2, align 8, !tbaa !179
  %4 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !203
  %6 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %5) #22
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %83

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  br label %12

12:                                               ; preds = %10, %78
  %13 = phi i32 [ 0, %10 ], [ %80, %78 ]
  %14 = load ptr, ptr %11, align 8, !tbaa !100
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds %struct.TransDataTracking, ptr %14, i64 %15
  %17 = load i32, ptr %16, align 8, !tbaa !405
  switch i32 %17, label %78 [
    i32 0, label %18
    i32 1, label %39
    i32 2, label %70
  ]

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.TransDataTracking, ptr %14, i64 %15, i32 14
  %20 = load ptr, ptr %19, align 8, !tbaa !419
  %21 = tail call ptr @BKE_tracking_marker_get(ptr noundef %20, i32 noundef %6) #22
  %22 = getelementptr inbounds %struct.TransDataTracking, ptr %14, i64 %15, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !420
  %24 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %21, i64 0, i32 5
  store i32 %23, ptr %24, align 4, !tbaa !421
  %25 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %20, i64 0, i32 13
  %26 = load i32, ptr %25, align 8, !tbaa !356
  %27 = and i32 %26, 1
  %28 = add nsw i32 %27, %13
  %29 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %20, i64 0, i32 14
  %30 = load i32, ptr %29, align 4, !tbaa !363
  %31 = shl i32 %30, 2
  %32 = and i32 %31, 4
  %33 = add i32 %28, %32
  %34 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %20, i64 0, i32 15
  %35 = load i32, ptr %34, align 8, !tbaa !364
  %36 = shl i32 %35, 1
  %37 = and i32 %36, 2
  %38 = add i32 %33, %37
  br label %78

39:                                               ; preds = %12
  %40 = getelementptr inbounds %struct.TransDataTracking, ptr %14, i64 %15, i32 14
  %41 = load ptr, ptr %40, align 8, !tbaa !419
  %42 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %41, i64 0, i32 8
  %43 = load i32, ptr %42, align 8, !tbaa !422
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %78

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %41, i64 0, i32 10
  %47 = load ptr, ptr %46, align 8, !tbaa !423
  %48 = getelementptr %struct.MovieTrackingMarker, ptr %47, i64 -1, i32 5
  %49 = getelementptr inbounds %struct.TransDataTracking, ptr %14, i64 %15, i32 1
  %50 = zext nneg i32 %43 to i64
  br label %51

51:                                               ; preds = %45, %67
  %52 = phi i64 [ 1, %45 ], [ %68, %67 ]
  %53 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %47, i64 %52, i32 5
  %54 = load i32, ptr %53, align 4, !tbaa !421
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = getelementptr %struct.MovieTrackingMarker, ptr %48, i64 %52
  %59 = load i32, ptr %58, align 4, !tbaa !421
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  %62 = and i32 %54, 12
  %63 = icmp eq i32 %62, 0
  %64 = or i1 %63, %61
  br i1 %64, label %67, label %65

65:                                               ; preds = %57
  %66 = load i32, ptr %49, align 4, !tbaa !420
  store i32 %66, ptr %53, align 4, !tbaa !421
  br label %67

67:                                               ; preds = %65, %51, %57
  %68 = add nuw nsw i64 %52, 1
  %69 = icmp eq i64 %68, %50
  br i1 %69, label %78, label %51, !llvm.loop !424

70:                                               ; preds = %12
  %71 = getelementptr inbounds %struct.TransDataTracking, ptr %14, i64 %15, i32 15
  %72 = load ptr, ptr %71, align 8, !tbaa !425
  %73 = tail call ptr @BKE_tracking_plane_marker_get(ptr noundef %72, i32 noundef %6) #22
  %74 = getelementptr inbounds %struct.TransDataTracking, ptr %14, i64 %15, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !420
  %76 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %73, i64 0, i32 2
  store i32 %75, ptr %76, align 4, !tbaa !426
  %77 = add nsw i32 %13, 3
  br label %78

78:                                               ; preds = %67, %39, %12, %70, %18
  %79 = phi i32 [ %38, %18 ], [ %77, %70 ], [ %13, %12 ], [ %13, %39 ], [ %13, %67 ]
  %80 = add nsw i32 %79, 1
  %81 = load i32, ptr %7, align 8, !tbaa !34
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %12, label %83, !llvm.loop !428

83:                                               ; preds = %78, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !429 {
  %3 = load float, ptr %1, align 4, !tbaa !123
  store float %3, ptr %0, align 4, !tbaa !123
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !123
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !PGOFuncName !430 {
  %4 = load float, ptr %1, align 4, !tbaa !123
  %5 = load float, ptr %2, align 4, !tbaa !123
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !123
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !123
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !123
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !431 {
  %3 = load float, ptr %1, align 4, !tbaa !123
  %4 = load float, ptr %0, align 4, !tbaa !123
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !123
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !123
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !123
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !PGOFuncName !432 {
  %4 = load float, ptr %1, align 4, !tbaa !123
  %5 = load float, ptr %2, align 4, !tbaa !123
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !123
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !123
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !123
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !433 {
  %3 = load float, ptr %1, align 4, !tbaa !123
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !123
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !123
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !123
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @flushTransMasking(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %4 = load ptr, ptr %3, align 8, !tbaa !179
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %6 = load ptr, ptr %5, align 8, !tbaa !434
  %7 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  call void @ED_mask_get_aspect(ptr noundef %4, ptr noundef %6, ptr noundef nonnull %2, ptr noundef nonnull %7) #22
  %8 = load float, ptr %2, align 4, !tbaa !123
  %9 = fdiv float 1.000000e+00, %8
  %10 = load float, ptr %7, align 4, !tbaa !123
  %11 = fdiv float 1.000000e+00, %10
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !34
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %73

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %17 = load ptr, ptr %16, align 8, !tbaa !100
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !174
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  br label %22

22:                                               ; preds = %15, %67
  %23 = phi ptr [ %19, %15 ], [ %69, %67 ]
  %24 = phi ptr [ %17, %15 ], [ %70, %67 ]
  %25 = phi i32 [ 0, %15 ], [ %68, %67 ]
  %26 = load float, ptr %23, align 8, !tbaa !123
  %27 = fmul float %9, %26
  %28 = getelementptr inbounds %struct.TransData2D, ptr %23, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !211
  store float %27, ptr %29, align 4, !tbaa !123
  %30 = getelementptr inbounds [3 x float], ptr %23, i64 0, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !123
  %32 = fmul float %11, %31
  %33 = getelementptr inbounds float, ptr %29, i64 1
  store float %32, ptr %33, align 4, !tbaa !123
  %34 = getelementptr inbounds %struct.TransDataMasking, ptr %24, i64 0, i32 6
  call void @mul_m3_v2(ptr noundef nonnull %34, ptr noundef nonnull %29) #22
  %35 = load i8, ptr %24, align 8, !tbaa !435
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %22
  %38 = getelementptr inbounds %struct.TransDataMasking, ptr %24, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !437
  %40 = getelementptr inbounds %struct.TransDataMasking, ptr %24, i64 0, i32 8
  %41 = load i32, ptr %40, align 4, !tbaa !438
  %42 = load ptr, ptr %28, align 8, !tbaa !211
  %43 = load i32, ptr %20, align 4, !tbaa !53
  %44 = lshr i32 %43, 24
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, 1
  %47 = getelementptr inbounds %struct.TransDataMasking, ptr %24, i64 0, i32 2
  %48 = getelementptr inbounds %struct.TransDataMasking, ptr %24, i64 0, i32 3
  call void @BKE_mask_point_set_handle(ptr noundef %39, i32 noundef %41, ptr noundef %42, i8 noundef zeroext %46, ptr noundef nonnull %47, ptr noundef nonnull %48) #22
  br label %49

49:                                               ; preds = %37, %22
  %50 = load i16, ptr %21, align 4, !tbaa !213
  %51 = icmp eq i16 %50, 3
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.TransDataMasking, ptr %24, i64 0, i32 8
  %54 = load i32, ptr %53, align 4, !tbaa !438
  switch i32 %54, label %67 [
    i32 2, label %55
    i32 3, label %61
  ]

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.TransDataMasking, ptr %24, i64 0, i32 7
  %57 = load i8, ptr %56, align 8, !tbaa !439
  %58 = getelementptr inbounds %struct.TransDataMasking, ptr %24, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !437
  %60 = getelementptr inbounds %struct.BezTriple, ptr %59, i64 0, i32 5
  store i8 %57, ptr %60, align 1, !tbaa !440
  br label %67

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.TransDataMasking, ptr %24, i64 0, i32 7
  %63 = load i8, ptr %62, align 8, !tbaa !439
  %64 = getelementptr inbounds %struct.TransDataMasking, ptr %24, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !437
  %66 = getelementptr inbounds %struct.BezTriple, ptr %65, i64 0, i32 6
  store i8 %63, ptr %66, align 2, !tbaa !443
  br label %67

67:                                               ; preds = %52, %49, %61, %55
  %68 = add nuw nsw i32 %25, 1
  %69 = getelementptr inbounds %struct.TransData2D, ptr %23, i64 1
  %70 = getelementptr inbounds %struct.TransDataMasking, ptr %24, i64 1
  %71 = load i32, ptr %12, align 8, !tbaa !34
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %22, label %73, !llvm.loop !444

73:                                               ; preds = %67, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret void
}

; Function Attrs: optsize
declare void @ED_mask_get_aspect(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @mul_m3_v2(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BKE_mask_point_set_handle(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @flushTransPaintCurve(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %7 = load ptr, ptr %6, align 8, !tbaa !100
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !174
  br label %10

10:                                               ; preds = %5, %10
  %11 = phi i32 [ %19, %10 ], [ 0, %5 ]
  %12 = phi ptr [ %20, %10 ], [ %7, %5 ]
  %13 = phi ptr [ %21, %10 ], [ %9, %5 ]
  %14 = load ptr, ptr %12, align 8, !tbaa !445
  %15 = getelementptr inbounds %struct.TransDataPaintCurve, ptr %12, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !447
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds [3 x [3 x float]], ptr %14, i64 0, i64 %17
  tail call fastcc void @copy_v2_v2(ptr noundef %18, ptr noundef %13) #23
  %19 = add nuw nsw i32 %11, 1
  %20 = getelementptr inbounds %struct.TransDataPaintCurve, ptr %12, i64 1
  %21 = getelementptr inbounds %struct.TransData2D, ptr %13, i64 1
  %22 = load i32, ptr %2, align 8, !tbaa !34
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %10, label %24, !llvm.loop !448

24:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @createTransData(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !125
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !144
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi ptr [ %10, %8 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !296
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !53
  %20 = or i32 %19, 8
  store i32 %20, ptr %18, align 4, !tbaa !53
  tail call fastcc void @createTransTexspace(ptr noundef nonnull %1) #23
  br label %283

21:                                               ; preds = %11
  %22 = and i32 %14, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 11
  store ptr null, ptr %25, align 8, !tbaa !449
  %26 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !53
  %28 = or i32 %27, 2
  store i32 %28, ptr %26, align 4, !tbaa !53
  tail call fastcc void @createTransEdge(ptr noundef nonnull %1) #23
  %29 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  %31 = icmp eq ptr %30, null
  br i1 %31, label %283, label %32

32:                                               ; preds = %24
  %33 = load i32, ptr %26, align 4, !tbaa !53
  %34 = and i32 %33, 2048
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %283, label %36

36:                                               ; preds = %32
  tail call fastcc void @sort_trans_data(ptr noundef nonnull %1) #23
  tail call fastcc void @set_prop_dist(ptr noundef nonnull %1, i8 noundef zeroext 1) #23
  tail call void @sort_trans_data_dist(ptr noundef nonnull %1) #23
  br label %283

37:                                               ; preds = %21
  %38 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  %39 = load i8, ptr %38, align 8, !tbaa !289
  switch i8 %39, label %124 [
    i8 6, label %40
    i8 12, label %74
    i8 13, label %78
    i8 8, label %82
    i8 2, label %89
    i8 16, label %93
    i8 20, label %105
  ]

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !53
  %43 = or i32 %42, 32832
  store i32 %43, ptr %41, align 4, !tbaa !53
  %44 = and i32 %14, 128
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %40
  tail call fastcc void @createTransMaskingData(ptr noundef %0, ptr noundef nonnull %1) #23
  %47 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  %48 = load ptr, ptr %47, align 8, !tbaa !48
  %49 = icmp eq ptr %48, null
  br i1 %49, label %283, label %50

50:                                               ; preds = %46
  %51 = load i32, ptr %41, align 4, !tbaa !53
  %52 = and i32 %51, 2048
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %283, label %54

54:                                               ; preds = %50
  tail call fastcc void @sort_trans_data(ptr noundef nonnull %1) #23
  tail call fastcc void @set_prop_dist(ptr noundef nonnull %1, i8 noundef zeroext 1) #23
  tail call void @sort_trans_data_dist(ptr noundef nonnull %1) #23
  br label %283

55:                                               ; preds = %40
  %56 = and i32 %14, 256
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, ptr %1, align 8, !tbaa !192
  switch i32 %59, label %60 [
    i32 6, label %283
    i32 8, label %283
  ]

60:                                               ; preds = %58
  tail call fastcc void @createTransPaintCurveVerts(ptr noundef %0, ptr noundef nonnull %1) #23
  br label %283

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  %63 = load ptr, ptr %62, align 8, !tbaa !103
  %64 = icmp eq ptr %63, null
  br i1 %64, label %283, label %65

65:                                               ; preds = %61
  tail call fastcc void @createTransUVs(ptr noundef %0, ptr noundef nonnull %1) #23
  %66 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  %67 = load ptr, ptr %66, align 8, !tbaa !48
  %68 = icmp eq ptr %67, null
  br i1 %68, label %283, label %69

69:                                               ; preds = %65
  %70 = load i32, ptr %41, align 4, !tbaa !53
  %71 = and i32 %70, 2048
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %283, label %73

73:                                               ; preds = %69
  tail call fastcc void @sort_trans_data(ptr noundef nonnull %1) #23
  tail call fastcc void @set_prop_dist(ptr noundef nonnull %1, i8 noundef zeroext 1) #23
  tail call void @sort_trans_data_dist(ptr noundef nonnull %1) #23
  br label %283

74:                                               ; preds = %37
  %75 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !53
  %77 = or i32 %76, 32832
  store i32 %77, ptr %75, align 4, !tbaa !53
  tail call fastcc void @createTransActionData(ptr noundef %0, ptr noundef nonnull %1) #23
  br label %283

78:                                               ; preds = %37
  %79 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %80 = load i32, ptr %79, align 4, !tbaa !53
  %81 = or i32 %80, 32832
  store i32 %81, ptr %79, align 4, !tbaa !53
  tail call fastcc void @createTransNlaData(ptr noundef %0, ptr noundef nonnull %1) #23
  br label %283

82:                                               ; preds = %37
  %83 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !53
  %85 = or i32 %84, 32832
  store i32 %85, ptr %83, align 4, !tbaa !53
  %86 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 4
  %87 = load i16, ptr %86, align 2, !tbaa !450
  %88 = or i16 %87, 8
  store i16 %88, ptr %86, align 2, !tbaa !450
  tail call fastcc void @createTransSeqData(ptr noundef %0, ptr noundef nonnull %1) #23
  br label %283

89:                                               ; preds = %37
  %90 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %91 = load i32, ptr %90, align 4, !tbaa !53
  %92 = or i32 %91, 32832
  store i32 %92, ptr %90, align 4, !tbaa !53
  tail call fastcc void @createTransGraphEditData(ptr noundef %0, ptr noundef nonnull %1) #23
  br label %283

93:                                               ; preds = %37
  %94 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %95 = load i32, ptr %94, align 4, !tbaa !53
  %96 = or i32 %95, 32832
  store i32 %96, ptr %94, align 4, !tbaa !53
  tail call fastcc void @createTransNodeData(ptr noundef nonnull %1) #23
  %97 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  %98 = load ptr, ptr %97, align 8, !tbaa !48
  %99 = icmp eq ptr %98, null
  br i1 %99, label %283, label %100

100:                                              ; preds = %93
  %101 = load i32, ptr %94, align 4, !tbaa !53
  %102 = and i32 %101, 2048
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %283, label %104

104:                                              ; preds = %100
  tail call fastcc void @sort_trans_data(ptr noundef nonnull %1) #23
  tail call fastcc void @set_prop_dist(ptr noundef nonnull %1, i8 noundef zeroext 1) #23
  tail call void @sort_trans_data_dist(ptr noundef nonnull %1) #23
  br label %283

105:                                              ; preds = %37
  %106 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %107 = load i32, ptr %106, align 4, !tbaa !53
  %108 = or i32 %107, 32832
  store i32 %108, ptr %106, align 4, !tbaa !53
  %109 = and i32 %14, 64
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %105
  tail call fastcc void @createTransTrackingData(ptr noundef %0, ptr noundef nonnull %1) #23
  br label %283

112:                                              ; preds = %105
  %113 = and i32 %14, 128
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %283, label %115

115:                                              ; preds = %112
  tail call fastcc void @createTransMaskingData(ptr noundef %0, ptr noundef nonnull %1) #23
  %116 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  %117 = load ptr, ptr %116, align 8, !tbaa !48
  %118 = icmp eq ptr %117, null
  br i1 %118, label %283, label %119

119:                                              ; preds = %115
  %120 = load i32, ptr %106, align 4, !tbaa !53
  %121 = and i32 %120, 2048
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %283, label %123

123:                                              ; preds = %119
  tail call fastcc void @sort_trans_data(ptr noundef nonnull %1) #23
  tail call fastcc void @set_prop_dist(ptr noundef nonnull %1, i8 noundef zeroext 1) #23
  tail call void @sort_trans_data_dist(ptr noundef nonnull %1) #23
  br label %283

124:                                              ; preds = %37
  %125 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  %126 = load ptr, ptr %125, align 8, !tbaa !103
  %127 = icmp eq ptr %126, null
  br i1 %127, label %167, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 11
  store ptr null, ptr %129, align 8, !tbaa !449
  %130 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 3
  %131 = load i16, ptr %130, align 8, !tbaa !87
  switch i16 %131, label %140 [
    i16 1, label %132
    i16 2, label %133
    i16 3, label %133
    i16 22, label %134
    i16 5, label %135
    i16 25, label %136
  ]

132:                                              ; preds = %128
  tail call fastcc void @createTransEditVerts(ptr noundef nonnull %1) #23
  br label %142

133:                                              ; preds = %128, %128
  tail call fastcc void @createTransCurveVerts(ptr noundef nonnull %1) #23
  br label %142

134:                                              ; preds = %128
  tail call fastcc void @createTransLatticeVerts(ptr noundef nonnull %1) #23
  br label %142

135:                                              ; preds = %128
  tail call fastcc void @createTransMBallVerts(ptr noundef nonnull %1) #23
  br label %142

136:                                              ; preds = %128
  %137 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %138 = load i32, ptr %137, align 4, !tbaa !53
  %139 = and i32 %138, -2049
  store i32 %139, ptr %137, align 4, !tbaa !53
  tail call fastcc void @createTransArmatureVerts(ptr noundef nonnull %1) #23
  br label %142

140:                                              ; preds = %128
  %141 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %142

142:                                              ; preds = %133, %135, %140, %136, %134, %132
  %143 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %144 = load i32, ptr %143, align 4, !tbaa !53
  %145 = or i32 %144, 66
  store i32 %145, ptr %143, align 4, !tbaa !53
  %146 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  %147 = load ptr, ptr %146, align 8, !tbaa !48
  %148 = icmp eq ptr %147, null
  %149 = and i32 %144, 2048
  %150 = icmp eq i32 %149, 0
  %151 = select i1 %148, i1 true, i1 %150
  br i1 %151, label %159, label %152

152:                                              ; preds = %142
  %153 = load ptr, ptr %125, align 8, !tbaa !103
  %154 = getelementptr inbounds %struct.Object, ptr %153, i64 0, i32 3
  %155 = load i16, ptr %154, align 8, !tbaa !87
  %156 = add i16 %155, -3
  %157 = icmp ult i16 %156, -2
  tail call fastcc void @sort_trans_data(ptr noundef nonnull %1) #23
  %158 = zext i1 %157 to i8
  tail call fastcc void @set_prop_dist(ptr noundef nonnull %1, i8 noundef zeroext %158) #23
  tail call void @sort_trans_data_dist(ptr noundef nonnull %1) #23
  br label %159

159:                                              ; preds = %152, %142
  %160 = load i32, ptr %1, align 8, !tbaa !192
  %161 = icmp eq i32 %160, 14
  br i1 %161, label %162, label %283

162:                                              ; preds = %159
  %163 = load i32, ptr %143, align 4, !tbaa !53
  %164 = and i32 %163, -71
  %165 = or disjoint i32 %164, 4
  store i32 %165, ptr %143, align 4, !tbaa !53
  %166 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 39
  store ptr %12, ptr %166, align 8, !tbaa !92
  br label %283

167:                                              ; preds = %124
  %168 = icmp eq ptr %12, null
  br i1 %168, label %244, label %169

169:                                              ; preds = %167
  %170 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 27
  %171 = load i32, ptr %170, align 8, !tbaa !321
  %172 = and i32 %171, 64
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %169
  tail call fastcc void @createTransPose(ptr noundef nonnull %1, ptr noundef nonnull %12) #23
  br label %283

175:                                              ; preds = %169
  %176 = and i32 %171, 8
  %177 = icmp ne i32 %176, 0
  %178 = and i32 %14, 256
  %179 = icmp eq i32 %178, 0
  %180 = and i1 %179, %177
  br i1 %180, label %181, label %210

181:                                              ; preds = %175
  %182 = tail call ptr @modifiers_isDeformedByArmature(ptr noundef nonnull %12) #22
  %183 = icmp eq ptr %182, null
  br i1 %183, label %283, label %184

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.Object, ptr %182, i64 0, i32 27
  %186 = load i32, ptr %185, align 8, !tbaa !321
  %187 = and i32 %186, 64
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %283, label %189

189:                                              ; preds = %184
  %190 = load ptr, ptr %3, align 8, !tbaa !124
  %191 = tail call ptr @BKE_scene_base_find(ptr noundef %190, ptr noundef nonnull %182) #22
  %192 = icmp eq ptr %191, null
  br i1 %192, label %283, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 52
  %195 = load ptr, ptr %194, align 8, !tbaa !319
  %196 = getelementptr inbounds %struct.Base, ptr %191, i64 0, i32 2
  %197 = load i32, ptr %196, align 8, !tbaa !451
  %198 = getelementptr inbounds %struct.View3D, ptr %195, i64 0, i32 22
  %199 = load i32, ptr %198, align 8, !tbaa !452
  %200 = and i32 %199, %197
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %283, label %202

202:                                              ; preds = %193
  %203 = getelementptr inbounds %struct.Base, ptr %191, i64 0, i32 7
  %204 = load ptr, ptr %203, align 8, !tbaa !144
  %205 = getelementptr inbounds %struct.Object, ptr %204, i64 0, i32 102
  %206 = load i8, ptr %205, align 8, !tbaa !453
  %207 = and i8 %206, 1
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %283

209:                                              ; preds = %202
  tail call fastcc void @createTransPose(ptr noundef nonnull %1, ptr noundef nonnull %182) #23
  br label %283

210:                                              ; preds = %175
  %211 = and i32 %171, 32
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %230, label %213

213:                                              ; preds = %210
  %214 = tail call ptr @PE_get_current(ptr noundef nonnull %4, ptr noundef nonnull %12) #22
  %215 = tail call i32 @PE_start_edit(ptr noundef %214) #22
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %213
  %218 = load i32, ptr %170, align 8, !tbaa !321
  br label %230

219:                                              ; preds = %213
  tail call fastcc void @createTransParticleVerts(ptr noundef %0, ptr noundef nonnull %1) #23
  %220 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %221 = load i32, ptr %220, align 4, !tbaa !53
  %222 = or i32 %221, 64
  store i32 %222, ptr %220, align 4, !tbaa !53
  %223 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  %224 = load ptr, ptr %223, align 8, !tbaa !48
  %225 = icmp eq ptr %224, null
  %226 = and i32 %221, 2048
  %227 = icmp eq i32 %226, 0
  %228 = select i1 %225, i1 true, i1 %227
  br i1 %228, label %283, label %229

229:                                              ; preds = %219
  tail call fastcc void @sort_trans_data(ptr noundef nonnull %1) #23
  tail call fastcc void @set_prop_dist(ptr noundef nonnull %1, i8 noundef zeroext 1) #23
  tail call void @sort_trans_data_dist(ptr noundef nonnull %1) #23
  br label %283

230:                                              ; preds = %217, %210
  %231 = phi i32 [ %218, %217 ], [ %171, %210 ]
  %232 = and i32 %231, 30
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %244, label %234

234:                                              ; preds = %230
  %235 = load i32, ptr %13, align 8, !tbaa !296
  %236 = and i32 %235, 256
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %283, label %238

238:                                              ; preds = %234
  %239 = load i32, ptr %1, align 8, !tbaa !192
  switch i32 %239, label %240 [
    i32 6, label %283
    i32 8, label %283
  ]

240:                                              ; preds = %238
  %241 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %242 = load i32, ptr %241, align 4, !tbaa !53
  %243 = or i32 %242, 32832
  store i32 %243, ptr %241, align 4, !tbaa !53
  tail call fastcc void @createTransPaintCurveVerts(ptr noundef %0, ptr noundef nonnull %1) #23
  br label %283

244:                                              ; preds = %167, %230
  tail call fastcc void @createTransObject(ptr noundef %0, ptr noundef nonnull %1) #23
  %245 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %246 = load i32, ptr %245, align 4, !tbaa !53
  %247 = or i32 %246, 1
  store i32 %247, ptr %245, align 4, !tbaa !53
  %248 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  %249 = load ptr, ptr %248, align 8, !tbaa !48
  %250 = icmp eq ptr %249, null
  %251 = and i32 %246, 2048
  %252 = icmp eq i32 %251, 0
  %253 = select i1 %250, i1 true, i1 %252
  br i1 %253, label %255, label %254

254:                                              ; preds = %244
  tail call fastcc void @set_prop_dist(ptr noundef nonnull %1, i8 noundef zeroext 1) #23
  tail call void @sort_trans_data_dist(ptr noundef nonnull %1) #23
  br label %255

255:                                              ; preds = %254, %244
  %256 = load i8, ptr %38, align 8, !tbaa !289
  %257 = icmp eq i8 %256, 1
  br i1 %257, label %258, label %283

258:                                              ; preds = %255
  %259 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %260 = load ptr, ptr %259, align 8, !tbaa !434
  %261 = getelementptr inbounds %struct.ARegion, ptr %260, i64 0, i32 8
  %262 = load i16, ptr %261, align 2, !tbaa !454
  %263 = icmp eq i16 %262, 0
  br i1 %263, label %264, label %283

264:                                              ; preds = %258
  %265 = getelementptr inbounds %struct.ARegion, ptr %260, i64 0, i32 30
  %266 = load ptr, ptr %265, align 8, !tbaa !456
  %267 = getelementptr inbounds %struct.RegionView3D, ptr %266, i64 0, i32 25
  %268 = load i8, ptr %267, align 1, !tbaa !457
  %269 = icmp eq i8 %268, 2
  br i1 %269, label %270, label %283

270:                                              ; preds = %264
  %271 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 52
  %272 = load ptr, ptr %271, align 8, !tbaa !319
  %273 = getelementptr inbounds %struct.View3D, ptr %272, i64 0, i32 15
  %274 = load ptr, ptr %273, align 8, !tbaa !459
  %275 = icmp eq ptr %274, null
  br i1 %275, label %283, label %276

276:                                              ; preds = %270
  %277 = getelementptr inbounds %struct.Object, ptr %274, i64 0, i32 103
  %278 = load i8, ptr %277, align 1, !tbaa !320
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %283, label %280

280:                                              ; preds = %276
  %281 = load i32, ptr %245, align 4, !tbaa !53
  %282 = or i32 %281, 16
  store i32 %282, ptr %245, align 4, !tbaa !53
  br label %283

283:                                              ; preds = %264, %270, %280, %276, %238, %238, %181, %184, %193, %202, %209, %189, %58, %58, %36, %32, %24, %74, %82, %104, %100, %93, %162, %159, %240, %234, %258, %255, %219, %229, %174, %111, %115, %119, %123, %112, %89, %78, %54, %50, %46, %61, %73, %69, %65, %60, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @createTransTexspace(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !460 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !125
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !144
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1, %8
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  store i32 0, ptr %13, align 8, !tbaa !34
  br label %73

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !65
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 4
  %20 = load i16, ptr %19, align 8, !tbaa !91
  switch i16 %20, label %21 [
    i16 17741, label %25
    i16 21827, label %25
    i16 16973, label %25
  ]

21:                                               ; preds = %18, %14
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 60
  %23 = load ptr, ptr %22, align 8, !tbaa !461
  tail call void @BKE_report(ptr noundef %23, i32 noundef 32, ptr noundef nonnull @.str.11) #22
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  store i32 0, ptr %24, align 8, !tbaa !34
  br label %73

25:                                               ; preds = %18, %18, %18
  %26 = tail call zeroext i8 @BKE_object_obdata_is_libdata(ptr noundef nonnull %10) #22
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 60
  %30 = load ptr, ptr %29, align 8, !tbaa !461
  tail call void @BKE_report(ptr noundef %30, i32 noundef 32, ptr noundef nonnull @.str.12) #22
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  store i32 0, ptr %31, align 8, !tbaa !34
  br label %73

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  store i32 1, ptr %33, align 8, !tbaa !34
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %35 = tail call ptr %34(i64 noundef 224, ptr noundef nonnull @.str.13) #22
  %36 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  store ptr %35, ptr %36, align 8, !tbaa !48
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %38 = tail call ptr %37(i64 noundef 384, ptr noundef nonnull @.str.13) #22
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 11
  store ptr %38, ptr %39, align 8, !tbaa !449
  %40 = getelementptr inbounds %struct.TransData, ptr %35, i64 0, i32 13
  store ptr %38, ptr %40, align 8, !tbaa !330
  %41 = getelementptr inbounds %struct.TransData, ptr %35, i64 0, i32 16
  store i32 1, ptr %41, align 8, !tbaa !49
  %42 = getelementptr inbounds %struct.TransData, ptr %35, i64 0, i32 7
  %43 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47
  %44 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47, i64 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %42, ptr noundef nonnull %44) #23
  %45 = getelementptr inbounds %struct.TransData, ptr %35, i64 0, i32 11
  store ptr %10, ptr %45, align 8, !tbaa !322
  %46 = getelementptr inbounds %struct.TransData, ptr %35, i64 0, i32 8
  tail call void @copy_m3_m4(ptr noundef nonnull %46, ptr noundef nonnull %43) #22
  %47 = getelementptr inbounds %struct.TransData, ptr %35, i64 0, i32 10
  tail call void @copy_m3_m4(ptr noundef nonnull %47, ptr noundef nonnull %43) #22
  tail call void @normalize_m3(ptr noundef nonnull %47) #22
  %48 = getelementptr inbounds %struct.TransData, ptr %35, i64 0, i32 9
  tail call void @pseudoinverse_m3_m3(ptr noundef nonnull %48, ptr noundef nonnull %46, float noundef 0x3E45798EE0000000) #22
  %49 = getelementptr inbounds %struct.TransData, ptr %35, i64 0, i32 3
  %50 = load ptr, ptr %40, align 8, !tbaa !330
  %51 = getelementptr inbounds %struct.TransDataExtension, ptr %50, i64 0, i32 11
  %52 = getelementptr inbounds %struct.TransDataExtension, ptr %50, i64 0, i32 3
  %53 = call i32 @BKE_object_obdata_texspace_get(ptr noundef nonnull %10, ptr noundef nonnull %2, ptr noundef nonnull %49, ptr noundef nonnull %51, ptr noundef nonnull %52) #22
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %32
  %56 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 86
  %57 = load i16, ptr %56, align 4, !tbaa !462
  %58 = or i16 %57, 4
  store i16 %58, ptr %56, align 4, !tbaa !462
  %59 = load ptr, ptr %2, align 8, !tbaa !64
  %60 = load i16, ptr %59, align 2, !tbaa !91
  %61 = and i16 %60, -2
  store i16 %61, ptr %59, align 2, !tbaa !91
  br label %62

62:                                               ; preds = %55, %32
  %63 = getelementptr inbounds %struct.TransData, ptr %35, i64 0, i32 4
  %64 = load ptr, ptr %49, align 8, !tbaa !215
  call fastcc void @copy_v3_v3(ptr noundef nonnull %63, ptr noundef %64) #23
  %65 = load ptr, ptr %40, align 8, !tbaa !330
  %66 = getelementptr inbounds %struct.TransDataExtension, ptr %65, i64 0, i32 4
  %67 = getelementptr inbounds %struct.TransDataExtension, ptr %65, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !463
  call fastcc void @copy_v3_v3(ptr noundef nonnull %66, ptr noundef %68) #23
  %69 = load ptr, ptr %40, align 8, !tbaa !330
  %70 = getelementptr inbounds %struct.TransDataExtension, ptr %69, i64 0, i32 12
  %71 = getelementptr inbounds %struct.TransDataExtension, ptr %69, i64 0, i32 11
  %72 = load ptr, ptr %71, align 8, !tbaa !464
  call fastcc void @copy_v3_v3(ptr noundef nonnull %70, ptr noundef %72) #23
  br label %73

73:                                               ; preds = %62, %28, %21, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @createTransEdge(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !465 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  %7 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #24
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !53
  %10 = and i32 %9, 2048
  %11 = load ptr, ptr %7, align 8, !tbaa !336
  %12 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %11, i8 noundef zeroext 2, ptr noundef null) #23
  %13 = icmp eq ptr %12, null
  br i1 %13, label %96, label %14

14:                                               ; preds = %1
  %15 = lshr exact i32 %10, 11
  br label %16

16:                                               ; preds = %14, %28
  %17 = phi ptr [ %12, %14 ], [ %31, %28 ]
  %18 = phi i32 [ 0, %14 ], [ %30, %28 ]
  %19 = phi i32 [ 0, %14 ], [ %29, %28 ]
  %20 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %17, i8 noundef zeroext 2) #23, !range !466
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %17, i8 noundef zeroext 1) #23, !range !466
  %24 = icmp ne i8 %23, 0
  %25 = zext i1 %24 to i32
  %26 = add nsw i32 %18, %25
  %27 = add i32 %19, %15
  br label %28

28:                                               ; preds = %22, %16
  %29 = phi i32 [ %19, %16 ], [ %27, %22 ]
  %30 = phi i32 [ %18, %16 ], [ %26, %22 ]
  %31 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #23
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %16, !llvm.loop !467

33:                                               ; preds = %28
  %34 = icmp eq i32 %30, 0
  br i1 %34, label %96, label %35

35:                                               ; preds = %33
  %36 = icmp ne i32 %10, 0
  %37 = select i1 %36, i32 %29, i32 %30
  %38 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  store i32 %37, ptr %38, align 8
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %40 = sext i32 %37 to i64
  %41 = mul nsw i64 %40, 224
  %42 = call ptr %39(i64 noundef %41, ptr noundef nonnull @.str.14) #22
  %43 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  store ptr %42, ptr %43, align 8, !tbaa !48
  %44 = load ptr, ptr %5, align 8, !tbaa !103
  %45 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %3, ptr noundef nonnull %45) #22
  call void @pseudoinverse_m3_m3(ptr noundef nonnull %4, ptr noundef nonnull %3, float noundef 0x3E45798EE0000000) #22
  %46 = load i32, ptr %0, align 8, !tbaa !192
  %47 = icmp eq i32 %46, 26
  %48 = select i1 %47, i8 2, i8 4
  %49 = select i1 %47, i32 29, i32 30
  %50 = load ptr, ptr %7, align 8, !tbaa !336
  %51 = load ptr, ptr %5, align 8, !tbaa !103
  %52 = call ptr @BKE_mesh_from_object(ptr noundef %51) #22
  call void @BM_mesh_cd_flag_ensure(ptr noundef %50, ptr noundef %52, i8 noundef zeroext %48) #22
  %53 = load ptr, ptr %7, align 8, !tbaa !336
  %54 = getelementptr inbounds %struct.BMesh, ptr %53, i64 0, i32 25
  %55 = call i32 @CustomData_get_offset(ptr noundef nonnull %54, i32 noundef %49) #22
  %56 = load ptr, ptr %7, align 8, !tbaa !336
  %57 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %56, i8 noundef zeroext 2, ptr noundef null) #23
  %58 = icmp eq ptr %57, null
  br i1 %58, label %96, label %59

59:                                               ; preds = %35
  %60 = sext i32 %55 to i64
  br label %61

61:                                               ; preds = %59, %92
  %62 = phi ptr [ %42, %59 ], [ %93, %92 ]
  %63 = phi ptr [ %57, %59 ], [ %94, %92 ]
  %64 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %63, i8 noundef zeroext 2) #23, !range !466
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %92

66:                                               ; preds = %61
  %67 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %63, i8 noundef zeroext 1) #23, !range !466
  %68 = icmp ne i8 %67, 0
  %69 = or i1 %36, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.TransData, ptr %62, i64 0, i32 7
  %72 = getelementptr inbounds %struct.BMEdge, ptr %63, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !468
  %74 = getelementptr inbounds %struct.BMVert, ptr %73, i64 0, i32 2
  %75 = getelementptr inbounds %struct.BMEdge, ptr %63, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !472
  %77 = getelementptr inbounds %struct.BMVert, ptr %76, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %71, ptr noundef nonnull %74, ptr noundef nonnull %77) #22
  %78 = getelementptr inbounds %struct.TransData, ptr %62, i64 0, i32 3
  store ptr null, ptr %78, align 8, !tbaa !215
  %79 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %63, i8 noundef zeroext 1) #23, !range !466
  %80 = icmp ne i8 %79, 0
  %81 = zext i1 %80 to i32
  %82 = getelementptr inbounds %struct.TransData, ptr %62, i64 0, i32 16
  store i32 %81, ptr %82, align 8
  %83 = getelementptr inbounds %struct.TransData, ptr %62, i64 0, i32 9
  call void @copy_m3_m3(ptr noundef nonnull %83, ptr noundef nonnull %4) #22
  %84 = getelementptr inbounds %struct.TransData, ptr %62, i64 0, i32 8
  call void @copy_m3_m3(ptr noundef nonnull %84, ptr noundef nonnull %3) #22
  %85 = getelementptr inbounds %struct.TransData, ptr %62, i64 0, i32 13
  store ptr null, ptr %85, align 8, !tbaa !330
  %86 = load ptr, ptr %63, align 8, !tbaa !473
  %87 = getelementptr inbounds i8, ptr %86, i64 %60
  %88 = getelementptr inbounds %struct.TransData, ptr %62, i64 0, i32 5
  store ptr %87, ptr %88, align 8, !tbaa !474
  %89 = load float, ptr %87, align 4, !tbaa !123
  %90 = getelementptr inbounds %struct.TransData, ptr %62, i64 0, i32 6
  store float %89, ptr %90, align 8, !tbaa !475
  %91 = getelementptr inbounds %struct.TransData, ptr %62, i64 1
  br label %92

92:                                               ; preds = %61, %70, %66
  %93 = phi ptr [ %62, %61 ], [ %91, %70 ], [ %62, %66 ]
  %94 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #23
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %61, !llvm.loop !476

96:                                               ; preds = %92, %1, %35, %33
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #24
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sort_trans_data(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !477 {
  %2 = alloca %struct.TransData, align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %2)
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = sext i32 %6 to i64
  %8 = getelementptr %struct.TransData, ptr %4, i64 %7
  %9 = getelementptr inbounds %struct.TransData, ptr %8, i64 -1
  %10 = icmp ugt ptr %9, %4
  br i1 %10, label %11, label %36

11:                                               ; preds = %1, %32
  %12 = phi ptr [ %34, %32 ], [ %9, %1 ]
  %13 = phi ptr [ %33, %32 ], [ %4, %1 ]
  br label %14

14:                                               ; preds = %11, %20
  %15 = phi ptr [ %21, %20 ], [ %13, %11 ]
  %16 = getelementptr inbounds %struct.TransData, ptr %15, i64 0, i32 16
  %17 = load i32, ptr %16, align 8, !tbaa !49
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.TransData, ptr %15, i64 1
  %22 = icmp eq ptr %21, %12
  br i1 %22, label %36, label %14, !llvm.loop !478

23:                                               ; preds = %14, %29
  %24 = phi ptr [ %30, %29 ], [ %12, %14 ]
  %25 = getelementptr inbounds %struct.TransData, ptr %24, i64 0, i32 16
  %26 = load i32, ptr %25, align 8, !tbaa !49
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.TransData, ptr %24, i64 -1
  %31 = icmp eq ptr %15, %30
  br i1 %31, label %36, label %23, !llvm.loop !479

32:                                               ; preds = %23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %2, ptr noundef nonnull align 8 dereferenceable(224) %15, i64 224, i1 false), !tbaa.struct !480
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %15, ptr noundef nonnull align 8 dereferenceable(224) %24, i64 224, i1 false), !tbaa.struct !480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %24, ptr noundef nonnull align 8 dereferenceable(224) %2, i64 224, i1 false), !tbaa.struct !480
  %33 = getelementptr inbounds %struct.TransData, ptr %15, i64 1
  %34 = getelementptr inbounds %struct.TransData, ptr %24, i64 -1
  %35 = icmp ugt ptr %34, %33
  br i1 %35, label %11, label %36, !llvm.loop !481

36:                                               ; preds = %32, %20, %29, %1
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %2)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_prop_dist(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #8 !PGOFuncName !482 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #24
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, 33554432
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %12 = load i8, ptr %11, align 8, !tbaa !289
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %16 = load ptr, ptr %15, align 8, !tbaa !434
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ARegion, ptr %16, i64 0, i32 8
  %20 = load i16, ptr %19, align 2, !tbaa !454
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ARegion, ptr %16, i64 0, i32 30
  %24 = load ptr, ptr %23, align 8, !tbaa !456
  %25 = getelementptr inbounds %struct.RegionView3D, ptr %24, i64 0, i32 2, i64 2
  %26 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %25) #23
  br label %27

27:                                               ; preds = %10, %14, %18, %22, %2
  %28 = phi ptr [ %3, %22 ], [ null, %18 ], [ null, %14 ], [ null, %10 ], [ null, %2 ]
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %30 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !34
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %91

33:                                               ; preds = %27
  %34 = load ptr, ptr %29, align 8, !tbaa !48
  %35 = icmp eq ptr %28, null
  %36 = icmp eq i8 %1, 0
  br label %37

37:                                               ; preds = %33, %86
  %38 = phi i32 [ %31, %33 ], [ %87, %86 ]
  %39 = phi ptr [ %34, %33 ], [ %89, %86 ]
  %40 = phi i32 [ 0, %33 ], [ %88, %86 ]
  %41 = getelementptr inbounds %struct.TransData, ptr %39, i64 0, i32 1
  store float 0.000000e+00, ptr %41, align 4, !tbaa !57
  %42 = getelementptr inbounds %struct.TransData, ptr %39, i64 0, i32 16
  %43 = load i32, ptr %42, align 8, !tbaa !49
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %86

46:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #24
  store float -1.000000e+00, ptr %41, align 4, !tbaa !57
  %47 = icmp sgt i32 %38, 0
  br i1 %47, label %48, label %81

48:                                               ; preds = %46
  %49 = load ptr, ptr %29, align 8, !tbaa !48
  %50 = getelementptr inbounds %struct.TransData, ptr %39, i64 0, i32 7
  %51 = getelementptr inbounds %struct.TransData, ptr %39, i64 0, i32 8
  %52 = getelementptr inbounds %struct.TransData, ptr %49, i64 0, i32 16
  %53 = load i32, ptr %52, align 8, !tbaa !49
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %81, label %62

56:                                               ; preds = %76
  %57 = getelementptr inbounds %struct.TransData, ptr %63, i64 1
  %58 = getelementptr inbounds %struct.TransData, ptr %63, i64 1, i32 16
  %59 = load i32, ptr %58, align 8, !tbaa !49
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %81, label %62, !llvm.loop !483

62:                                               ; preds = %48, %56
  %63 = phi ptr [ %57, %56 ], [ %49, %48 ]
  %64 = phi i32 [ %78, %56 ], [ 0, %48 ]
  %65 = getelementptr inbounds %struct.TransData, ptr %63, i64 0, i32 7
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %50, ptr noundef nonnull %65) #23
  call void @mul_m3_v3(ptr noundef nonnull %51, ptr noundef nonnull %4) #22
  br i1 %35, label %67, label %66

66:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #24
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %28) #22
  call fastcc void @sub_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #24
  br label %67

67:                                               ; preds = %66, %62
  %68 = call fastcc float @len_squared_v3(ptr noundef nonnull %4) #23
  %69 = load float, ptr %41, align 4, !tbaa !57
  %70 = fcmp oeq float %69, -1.000000e+00
  %71 = fmul float %69, %69
  %72 = fcmp olt float %68, %71
  %73 = select i1 %70, i1 true, i1 %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = call float @sqrtf(float noundef %68) #22
  store float %75, ptr %41, align 4, !tbaa !57
  br label %76

76:                                               ; preds = %67, %74
  %77 = phi float [ %69, %67 ], [ %75, %74 ]
  %78 = add nuw nsw i32 %64, 1
  %79 = load i32, ptr %30, align 8, !tbaa !34
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %56, label %81, !llvm.loop !483

81:                                               ; preds = %56, %76, %48, %46
  %82 = phi i32 [ %38, %46 ], [ %38, %48 ], [ %79, %76 ], [ %79, %56 ]
  %83 = phi float [ -1.000000e+00, %46 ], [ -1.000000e+00, %48 ], [ %77, %76 ], [ %77, %56 ]
  br i1 %36, label %85, label %84

84:                                               ; preds = %81
  store float %83, ptr %39, align 8, !tbaa !55
  br label %85

85:                                               ; preds = %84, %81
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #24
  br label %86

86:                                               ; preds = %37, %85
  %87 = phi i32 [ %38, %37 ], [ %82, %85 ]
  %88 = add nuw nsw i32 %40, 1
  %89 = getelementptr inbounds %struct.TransData, ptr %39, i64 1
  %90 = icmp slt i32 %88, %87
  br i1 %90, label %37, label %91, !llvm.loop !484

91:                                               ; preds = %86, %27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @createTransMaskingData(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !PGOFuncName !485 {
  %3 = alloca [2 x float], align 4
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #22
  %5 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #22
  %6 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = and i32 %7, 2048
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %9 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 0, ptr %9, align 8, !tbaa !34
  %10 = icmp eq ptr %5, null
  br i1 %10, label %223, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  %13 = load i8, ptr %12, align 8, !tbaa !289
  %14 = icmp eq i8 %13, 20
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %17 = load ptr, ptr %16, align 8, !tbaa !179
  %18 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !203
  %20 = tail call ptr @ED_space_clip_get_clip(ptr noundef %19) #22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %223, label %22

22:                                               ; preds = %15, %11
  %23 = getelementptr inbounds %struct.Mask, ptr %5, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !64
  %25 = icmp eq ptr %24, null
  br i1 %25, label %223, label %26

26:                                               ; preds = %22
  %27 = icmp eq i32 %8, 0
  br label %28

28:                                               ; preds = %26, %97
  %29 = phi ptr [ %24, %26 ], [ %100, %97 ]
  %30 = phi i32 [ 0, %26 ], [ %99, %97 ]
  %31 = phi i32 [ 0, %26 ], [ %98, %97 ]
  %32 = getelementptr inbounds %struct.MaskLayer, ptr %29, i64 0, i32 13
  %33 = load i8, ptr %32, align 1, !tbaa !486
  %34 = and i8 %33, 3
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %97

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.MaskLayer, ptr %29, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !64
  %39 = icmp eq ptr %38, null
  br i1 %39, label %97, label %45

40:                                               ; preds = %89, %45
  %41 = phi i32 [ %48, %45 ], [ %90, %89 ]
  %42 = phi i32 [ %47, %45 ], [ %92, %89 ]
  %43 = load ptr, ptr %46, align 8, !tbaa !64
  %44 = icmp eq ptr %43, null
  br i1 %44, label %97, label %45, !llvm.loop !487

45:                                               ; preds = %36, %40
  %46 = phi ptr [ %43, %40 ], [ %38, %36 ]
  %47 = phi i32 [ %42, %40 ], [ %30, %36 ]
  %48 = phi i32 [ %41, %40 ], [ %31, %36 ]
  %49 = getelementptr inbounds %struct.MaskSpline, ptr %46, i64 0, i32 5
  %50 = load i32, ptr %49, align 4, !tbaa !488
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %40

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.MaskSpline, ptr %46, i64 0, i32 6
  br label %54

54:                                               ; preds = %52, %89
  %55 = phi i64 [ 0, %52 ], [ %93, %89 ]
  %56 = phi i32 [ %47, %52 ], [ %92, %89 ]
  %57 = phi i32 [ %48, %52 ], [ %90, %89 ]
  %58 = load ptr, ptr %53, align 8, !tbaa !490
  %59 = getelementptr inbounds %struct.MaskSplinePoint, ptr %58, i64 %55
  %60 = getelementptr inbounds %struct.BezTriple, ptr %59, i64 0, i32 7
  %61 = load i8, ptr %60, align 1, !tbaa !491
  %62 = getelementptr inbounds %struct.BezTriple, ptr %59, i64 0, i32 8
  %63 = load i8, ptr %62, align 4, !tbaa !492
  %64 = getelementptr inbounds %struct.BezTriple, ptr %59, i64 0, i32 9
  %65 = load i8, ptr %64, align 1, !tbaa !493
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
  %76 = tail call i32 @BKE_mask_point_handles_mode_get(ptr noundef nonnull %59) #22
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = add nsw i32 %57, 1
  br label %89

80:                                               ; preds = %75
  %81 = load i8, ptr %60, align 1, !tbaa !369
  %82 = and i8 %81, 1
  %83 = zext nneg i8 %82 to i32
  %84 = add i32 %57, %83
  %85 = load i8, ptr %64, align 1, !tbaa !370
  %86 = and i8 %85, 1
  %87 = zext nneg i8 %86 to i32
  %88 = add i32 %84, %87
  br label %89

89:                                               ; preds = %73, %80, %78, %54
  %90 = phi i32 [ %74, %73 ], [ %79, %78 ], [ %88, %80 ], [ %57, %54 ]
  %91 = add nsw i32 %56, 3
  %92 = select i1 %27, i32 %56, i32 %91
  %93 = add nuw nsw i64 %55, 1
  %94 = load i32, ptr %49, align 4, !tbaa !488
  %95 = sext i32 %94 to i64
  %96 = icmp slt i64 %93, %95
  br i1 %96, label %54, label %40, !llvm.loop !494

97:                                               ; preds = %40, %36, %28
  %98 = phi i32 [ %31, %28 ], [ %31, %36 ], [ %41, %40 ]
  %99 = phi i32 [ %30, %28 ], [ %30, %36 ], [ %42, %40 ]
  %100 = load ptr, ptr %29, align 8, !tbaa !64
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %28, !llvm.loop !495

102:                                              ; preds = %97
  %103 = icmp eq i32 %98, 0
  br i1 %103, label %223, label %104

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %106 = load ptr, ptr %105, align 8, !tbaa !179
  %107 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %108 = load ptr, ptr %107, align 8, !tbaa !434
  %109 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  call void @ED_mask_get_aspect(ptr noundef %106, ptr noundef %108, ptr noundef nonnull %3, ptr noundef nonnull %109) #22
  %110 = icmp eq i32 %8, 0
  %111 = select i1 %110, i32 %98, i32 %99
  store i32 %111, ptr %9, align 8, !tbaa !34
  %112 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %113 = sext i32 %111 to i64
  %114 = mul nsw i64 %113, 224
  %115 = call ptr %112(i64 noundef %114, ptr noundef nonnull @.str.15) #22
  %116 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %115, ptr %116, align 8, !tbaa !48
  %117 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %118 = load i32, ptr %9, align 8, !tbaa !34
  %119 = sext i32 %118 to i64
  %120 = mul nsw i64 %119, 56
  %121 = call ptr %117(i64 noundef %120, ptr noundef nonnull @.str.16) #22
  %122 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 12
  store ptr %121, ptr %122, align 8, !tbaa !174
  %123 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %124 = load i32, ptr %9, align 8, !tbaa !34
  %125 = sext i32 %124 to i64
  %126 = mul nsw i64 %125, 144
  %127 = call ptr %123(i64 noundef %126, ptr noundef nonnull @.str.17) #22
  %128 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  store ptr %127, ptr %128, align 8, !tbaa !100
  %129 = load i32, ptr %6, align 4, !tbaa !53
  %130 = or i32 %129, 131072
  store i32 %130, ptr %6, align 4, !tbaa !53
  %131 = load ptr, ptr %23, align 8, !tbaa !64
  %132 = icmp eq ptr %131, null
  br i1 %132, label %223, label %133

133:                                              ; preds = %104, %217
  %134 = phi ptr [ %221, %217 ], [ %131, %104 ]
  %135 = phi ptr [ %220, %217 ], [ %115, %104 ]
  %136 = phi ptr [ %219, %217 ], [ %121, %104 ]
  %137 = phi ptr [ %218, %217 ], [ %127, %104 ]
  %138 = getelementptr inbounds %struct.MaskLayer, ptr %134, i64 0, i32 13
  %139 = load i8, ptr %138, align 1, !tbaa !486
  %140 = and i8 %139, 3
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %217

142:                                              ; preds = %133
  %143 = getelementptr inbounds %struct.MaskLayer, ptr %134, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !64
  %145 = icmp eq ptr %144, null
  br i1 %145, label %217, label %152

146:                                              ; preds = %209, %152
  %147 = phi ptr [ %156, %152 ], [ %210, %209 ]
  %148 = phi ptr [ %155, %152 ], [ %211, %209 ]
  %149 = phi ptr [ %154, %152 ], [ %212, %209 ]
  %150 = load ptr, ptr %153, align 8, !tbaa !64
  %151 = icmp eq ptr %150, null
  br i1 %151, label %217, label %152, !llvm.loop !496

152:                                              ; preds = %142, %146
  %153 = phi ptr [ %150, %146 ], [ %144, %142 ]
  %154 = phi ptr [ %149, %146 ], [ %135, %142 ]
  %155 = phi ptr [ %148, %146 ], [ %136, %142 ]
  %156 = phi ptr [ %147, %146 ], [ %137, %142 ]
  %157 = getelementptr inbounds %struct.MaskSpline, ptr %153, i64 0, i32 5
  %158 = load i32, ptr %157, align 4, !tbaa !488
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %146

160:                                              ; preds = %152
  %161 = getelementptr inbounds %struct.MaskSpline, ptr %153, i64 0, i32 6
  br label %162

162:                                              ; preds = %160, %209
  %163 = phi i64 [ 0, %160 ], [ %213, %209 ]
  %164 = phi ptr [ %154, %160 ], [ %212, %209 ]
  %165 = phi ptr [ %155, %160 ], [ %211, %209 ]
  %166 = phi ptr [ %156, %160 ], [ %210, %209 ]
  %167 = load ptr, ptr %161, align 8, !tbaa !490
  %168 = getelementptr inbounds %struct.MaskSplinePoint, ptr %167, i64 %163
  br i1 %110, label %169, label %184

169:                                              ; preds = %162
  %170 = getelementptr inbounds %struct.BezTriple, ptr %168, i64 0, i32 7
  %171 = load i8, ptr %170, align 1, !tbaa !491
  %172 = getelementptr inbounds %struct.BezTriple, ptr %168, i64 0, i32 8
  %173 = load i8, ptr %172, align 4, !tbaa !492
  %174 = or i8 %173, %171
  %175 = getelementptr inbounds %struct.BezTriple, ptr %168, i64 0, i32 9
  %176 = load i8, ptr %175, align 1, !tbaa !493
  %177 = or i8 %174, %176
  %178 = and i8 %177, 1
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %209, label %180

180:                                              ; preds = %169
  call fastcc void @MaskPointToTransData(ptr noundef %4, ptr noundef nonnull %168, ptr noundef %164, ptr noundef %165, ptr noundef %166, i32 noundef 0, ptr noundef nonnull %3) #23
  %181 = load i8, ptr %172, align 4, !tbaa !492
  %182 = and i8 %181, 1
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %189, label %185

184:                                              ; preds = %162
  call fastcc void @MaskPointToTransData(ptr noundef %4, ptr noundef %168, ptr noundef %164, ptr noundef %165, ptr noundef %166, i32 noundef %8, ptr noundef nonnull %3) #23
  br label %185

185:                                              ; preds = %184, %180
  %186 = getelementptr inbounds %struct.TransData, ptr %164, i64 3
  %187 = getelementptr inbounds %struct.TransData2D, ptr %165, i64 3
  %188 = getelementptr inbounds %struct.TransDataMasking, ptr %166, i64 3
  br label %209

189:                                              ; preds = %180
  %190 = call i32 @BKE_mask_point_handles_mode_get(ptr noundef nonnull %168) #22
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = getelementptr inbounds %struct.TransData, ptr %164, i64 1
  %194 = getelementptr inbounds %struct.TransData2D, ptr %165, i64 1
  %195 = getelementptr inbounds %struct.TransDataMasking, ptr %166, i64 1
  br label %209

196:                                              ; preds = %189
  %197 = load i8, ptr %170, align 1, !tbaa !369
  %198 = and i8 %197, 1
  %199 = zext nneg i8 %198 to i64
  %200 = getelementptr inbounds %struct.TransDataMasking, ptr %166, i64 %199
  %201 = getelementptr inbounds %struct.TransData2D, ptr %165, i64 %199
  %202 = getelementptr inbounds %struct.TransData, ptr %164, i64 %199
  %203 = load i8, ptr %175, align 1, !tbaa !370
  %204 = and i8 %203, 1
  %205 = zext nneg i8 %204 to i64
  %206 = getelementptr inbounds %struct.TransDataMasking, ptr %200, i64 %205
  %207 = getelementptr inbounds %struct.TransData2D, ptr %201, i64 %205
  %208 = getelementptr inbounds %struct.TransData, ptr %202, i64 %205
  br label %209

209:                                              ; preds = %185, %196, %192, %169
  %210 = phi ptr [ %188, %185 ], [ %195, %192 ], [ %206, %196 ], [ %166, %169 ]
  %211 = phi ptr [ %187, %185 ], [ %194, %192 ], [ %207, %196 ], [ %165, %169 ]
  %212 = phi ptr [ %186, %185 ], [ %193, %192 ], [ %208, %196 ], [ %164, %169 ]
  %213 = add nuw nsw i64 %163, 1
  %214 = load i32, ptr %157, align 4, !tbaa !488
  %215 = sext i32 %214 to i64
  %216 = icmp slt i64 %213, %215
  br i1 %216, label %162, label %146, !llvm.loop !497

217:                                              ; preds = %146, %142, %133
  %218 = phi ptr [ %137, %133 ], [ %137, %142 ], [ %147, %146 ]
  %219 = phi ptr [ %136, %133 ], [ %136, %142 ], [ %148, %146 ]
  %220 = phi ptr [ %135, %133 ], [ %135, %142 ], [ %149, %146 ]
  %221 = load ptr, ptr %134, align 8, !tbaa !64
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %133, !llvm.loop !498

223:                                              ; preds = %217, %22, %104, %102, %2, %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @createTransPaintCurveVerts(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !PGOFuncName !499 {
  %3 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #22
  %4 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 0, ptr %4, align 8, !tbaa !34
  %5 = icmp eq ptr %3, null
  br i1 %5, label %124, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !500
  %8 = icmp eq ptr %7, null
  br i1 %8, label %124, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Brush, ptr %7, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !501
  %12 = icmp eq ptr %11, null
  br i1 %12, label %124, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.PaintCurve, ptr %11, i64 0, i32 1
  %15 = getelementptr inbounds %struct.PaintCurve, ptr %11, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !505
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %124

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 8, !tbaa !507
  br label %20

20:                                               ; preds = %18, %46
  %21 = phi i32 [ %47, %46 ], [ 0, %18 ]
  %22 = phi i32 [ %48, %46 ], [ 0, %18 ]
  %23 = phi ptr [ %49, %46 ], [ %19, %18 ]
  %24 = getelementptr inbounds %struct.BezTriple, ptr %23, i64 0, i32 7
  %25 = load i8, ptr %24, align 1, !tbaa !508
  %26 = getelementptr inbounds %struct.BezTriple, ptr %23, i64 0, i32 8
  %27 = load i8, ptr %26, align 4, !tbaa !510
  %28 = getelementptr inbounds %struct.BezTriple, ptr %23, i64 0, i32 9
  %29 = load i8, ptr %28, align 1, !tbaa !511
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
  br i1 %50, label %51, label %20, !llvm.loop !512

51:                                               ; preds = %46
  %52 = icmp eq i32 %47, 0
  br i1 %52, label %124, label %53

53:                                               ; preds = %51
  store i32 %47, ptr %4, align 8, !tbaa !34
  %54 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %55 = sext i32 %47 to i64
  %56 = mul nsw i64 %55, 56
  %57 = tail call ptr %54(i64 noundef %56, ptr noundef nonnull @.str.18) #22
  %58 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 12
  store ptr %57, ptr %58, align 8, !tbaa !174
  %59 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %60 = load i32, ptr %4, align 8, !tbaa !34
  %61 = sext i32 %60 to i64
  %62 = mul nsw i64 %61, 224
  %63 = tail call ptr %59(i64 noundef %62, ptr noundef nonnull @.str.19) #22
  %64 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %63, ptr %64, align 8, !tbaa !48
  %65 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %66 = load i32, ptr %4, align 8, !tbaa !34
  %67 = sext i32 %66 to i64
  %68 = shl nsw i64 %67, 4
  %69 = tail call ptr %65(i64 noundef %68, ptr noundef nonnull @.str.20) #22
  %70 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  store ptr %69, ptr %70, align 8, !tbaa !100
  %71 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %72 = load i32, ptr %71, align 4, !tbaa !53
  %73 = or i32 %72, 131072
  store i32 %73, ptr %71, align 4, !tbaa !53
  %74 = load i32, ptr %15, align 8, !tbaa !505
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %124

76:                                               ; preds = %53
  %77 = load ptr, ptr %14, align 8, !tbaa !507
  br label %78

78:                                               ; preds = %76, %116
  %79 = phi i32 [ %120, %116 ], [ 0, %76 ]
  %80 = phi ptr [ %119, %116 ], [ %69, %76 ]
  %81 = phi ptr [ %118, %116 ], [ %57, %76 ]
  %82 = phi ptr [ %117, %116 ], [ %63, %76 ]
  %83 = phi ptr [ %121, %116 ], [ %77, %76 ]
  %84 = getelementptr inbounds %struct.BezTriple, ptr %83, i64 0, i32 7
  %85 = load i8, ptr %84, align 1, !tbaa !508
  %86 = getelementptr inbounds %struct.BezTriple, ptr %83, i64 0, i32 8
  %87 = load i8, ptr %86, align 4, !tbaa !510
  %88 = or i8 %87, %85
  %89 = getelementptr inbounds %struct.BezTriple, ptr %83, i64 0, i32 9
  %90 = load i8, ptr %89, align 1, !tbaa !511
  %91 = or i8 %88, %90
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %116, label %94

94:                                               ; preds = %78
  tail call fastcc void @PaintCurvePointToTransData(ptr noundef nonnull %83, ptr noundef %82, ptr noundef %81, ptr noundef %80) #23
  %95 = load i8, ptr %86, align 4, !tbaa !510
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.TransData, ptr %82, i64 3
  %100 = getelementptr inbounds %struct.TransData2D, ptr %81, i64 3
  %101 = getelementptr inbounds %struct.TransDataPaintCurve, ptr %80, i64 3
  br label %116

102:                                              ; preds = %94
  %103 = load i8, ptr %84, align 1, !tbaa !508
  %104 = and i8 %103, 1
  %105 = zext nneg i8 %104 to i64
  %106 = getelementptr inbounds %struct.TransData, ptr %82, i64 %105
  %107 = getelementptr inbounds %struct.TransData2D, ptr %81, i64 %105
  %108 = getelementptr inbounds %struct.TransDataPaintCurve, ptr %80, i64 %105
  %109 = load i8, ptr %89, align 1, !tbaa !511
  %110 = and i8 %109, 1
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %102
  %113 = getelementptr inbounds %struct.TransData, ptr %106, i64 1
  %114 = getelementptr inbounds %struct.TransData2D, ptr %107, i64 1
  %115 = getelementptr inbounds %struct.TransDataPaintCurve, ptr %108, i64 1
  br label %116

116:                                              ; preds = %78, %102, %112, %98
  %117 = phi ptr [ %99, %98 ], [ %113, %112 ], [ %106, %102 ], [ %82, %78 ]
  %118 = phi ptr [ %100, %98 ], [ %114, %112 ], [ %107, %102 ], [ %81, %78 ]
  %119 = phi ptr [ %101, %98 ], [ %115, %112 ], [ %108, %102 ], [ %80, %78 ]
  %120 = add nuw nsw i32 %79, 1
  %121 = getelementptr inbounds %struct.PaintCurvePoint, ptr %83, i64 1
  %122 = load i32, ptr %15, align 8, !tbaa !505
  %123 = icmp slt i32 %120, %122
  br i1 %123, label %78, label %124, !llvm.loop !513

124:                                              ; preds = %116, %13, %53, %51, %2, %6, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @createTransUVs(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !PGOFuncName !514 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = tail call ptr @CTX_wm_space_image(ptr noundef %0) #22
  %6 = tail call ptr @CTX_data_edit_image(ptr noundef %0) #22
  %7 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %8 = load ptr, ptr %7, align 8, !tbaa !124
  %9 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #22
  %10 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  %11 = load ptr, ptr %10, align 8, !tbaa !103
  %12 = tail call ptr @BKE_editmesh_from_object(ptr noundef %11) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #24
  %13 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !53
  %15 = lshr i32 %14, 11
  %16 = load ptr, ptr %12, align 8, !tbaa !336
  %17 = getelementptr inbounds %struct.BMesh, ptr %16, i64 0, i32 26
  %18 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %17, i32 noundef 16) #22
  %19 = load ptr, ptr %10, align 8, !tbaa !103
  %20 = tail call zeroext i8 @ED_space_image_show_uvedit(ptr noundef %5, ptr noundef %19) #22
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %192, label %22

22:                                               ; preds = %2
  %23 = and i32 %14, 4096
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 11
  %27 = load i8, ptr %26, align 2, !tbaa !515
  %28 = and i8 %27, 1
  %29 = load ptr, ptr %12, align 8, !tbaa !336
  %30 = xor i8 %28, 1
  %31 = tail call ptr @BM_uv_element_map_create(ptr noundef %29, i8 noundef zeroext %30, i8 noundef zeroext 1) #22
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %33 = getelementptr inbounds %struct.UvElementMap, ptr %31, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !516
  %35 = ashr i32 %34, 5
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 2
  %39 = tail call ptr %32(i64 noundef %38, ptr noundef nonnull @.str.21) #22
  br label %40

40:                                               ; preds = %25, %22
  %41 = phi ptr [ %39, %25 ], [ null, %22 ]
  %42 = phi ptr [ %31, %25 ], [ null, %22 ]
  %43 = load ptr, ptr %12, align 8, !tbaa !336
  %44 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %43, i8 noundef zeroext 3, ptr noundef null) #23
  %45 = icmp eq ptr %44, null
  br i1 %45, label %94, label %46

46:                                               ; preds = %40
  %47 = and i32 %15, 1
  br label %48

48:                                               ; preds = %46, %87
  %49 = phi ptr [ %44, %46 ], [ %90, %87 ]
  %50 = phi i32 [ 0, %46 ], [ %89, %87 ]
  %51 = phi i32 [ 0, %46 ], [ %88, %87 ]
  %52 = load ptr, ptr %12, align 8, !tbaa !336
  %53 = getelementptr inbounds %struct.BMesh, ptr %52, i64 0, i32 27
  %54 = load ptr, ptr %49, align 8, !tbaa !518
  %55 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %53, ptr noundef %54, i32 noundef 15) #22
  %56 = call zeroext i8 @uvedit_face_visible_test(ptr noundef %8, ptr noundef %6, ptr noundef nonnull %49, ptr noundef %55) #22
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %49) #23
  br label %87

59:                                               ; preds = %48
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %49) #23
  %60 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %49) #23
  %61 = icmp eq ptr %60, null
  br i1 %61, label %87, label %62

62:                                               ; preds = %59, %82
  %63 = phi ptr [ %85, %82 ], [ %60, %59 ]
  %64 = phi i32 [ %83, %82 ], [ %50, %59 ]
  %65 = phi i32 [ %84, %82 ], [ %51, %59 ]
  %66 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %8, ptr noundef nonnull %63, i32 noundef %18) #22
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %62
  %69 = add nsw i32 %64, 1
  br i1 %24, label %82, label %70

70:                                               ; preds = %68
  %71 = call ptr @BM_uv_element_get(ptr noundef %42, ptr noundef nonnull %49, ptr noundef nonnull %63) #22
  %72 = getelementptr inbounds %struct.UvElement, ptr %71, i64 0, i32 5
  %73 = load i16, ptr %72, align 4, !tbaa !520
  %74 = zext i16 %73 to i32
  %75 = and i32 %74, 31
  %76 = shl nuw i32 1, %75
  %77 = lshr i32 %74, 5
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds i32, ptr %41, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !58
  %81 = or i32 %76, %80
  store i32 %81, ptr %79, align 4, !tbaa !58
  br label %82

82:                                               ; preds = %68, %70, %62
  %83 = phi i32 [ %69, %70 ], [ %69, %68 ], [ %64, %62 ]
  %84 = add i32 %65, %47
  %85 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #23
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %62, !llvm.loop !522

87:                                               ; preds = %82, %59, %58
  %88 = phi i32 [ %51, %58 ], [ %51, %59 ], [ %84, %82 ]
  %89 = phi i32 [ %50, %58 ], [ %50, %59 ], [ %83, %82 ]
  %90 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #23
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %48, !llvm.loop !523

92:                                               ; preds = %87
  %93 = icmp eq i32 %89, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %40, %92
  br i1 %24, label %192, label %95

95:                                               ; preds = %94
  %96 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  call void %96(ptr noundef %41) #22
  br label %192

97:                                               ; preds = %92
  %98 = and i32 %14, 2048
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %99, i32 %89, i32 %88
  %101 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 %100, ptr %101, align 8, !tbaa !34
  %102 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %103 = sext i32 %100 to i64
  %104 = mul nsw i64 %103, 224
  %105 = call ptr %102(i64 noundef %104, ptr noundef nonnull @.str.22) #22
  %106 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %105, ptr %106, align 8, !tbaa !48
  %107 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %108 = load i32, ptr %101, align 8, !tbaa !34
  %109 = sext i32 %108 to i64
  %110 = mul nsw i64 %109, 56
  %111 = call ptr %107(i64 noundef %110, ptr noundef nonnull @.str.23) #22
  %112 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 12
  store ptr %111, ptr %112, align 8, !tbaa !174
  %113 = getelementptr inbounds %struct.SpaceImage, ptr %5, i64 0, i32 4
  %114 = load i32, ptr %113, align 4, !tbaa !205
  %115 = and i32 %114, 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %97
  %118 = load i32, ptr %13, align 4, !tbaa !53
  %119 = or i32 %118, 65536
  store i32 %119, ptr %13, align 4, !tbaa !53
  br label %120

120:                                              ; preds = %117, %97
  %121 = load ptr, ptr %106, align 8, !tbaa !48
  %122 = load ptr, ptr %12, align 8, !tbaa !336
  %123 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %122, i8 noundef zeroext 3, ptr noundef null) #23
  %124 = icmp eq ptr %123, null
  br i1 %124, label %179, label %125

125:                                              ; preds = %120
  %126 = sext i32 %18 to i64
  br label %127

127:                                              ; preds = %125, %173
  %128 = phi ptr [ %121, %125 ], [ %176, %173 ]
  %129 = phi ptr [ %111, %125 ], [ %175, %173 ]
  %130 = phi ptr [ %123, %125 ], [ %177, %173 ]
  %131 = phi i32 [ 0, %125 ], [ %174, %173 ]
  %132 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %130, i8 noundef zeroext 16) #23, !range !466
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %173, label %134

134:                                              ; preds = %127
  %135 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %130) #23
  %136 = icmp eq ptr %135, null
  br i1 %136, label %173, label %137

137:                                              ; preds = %134, %167
  %138 = phi ptr [ %170, %167 ], [ %128, %134 ]
  %139 = phi ptr [ %169, %167 ], [ %129, %134 ]
  %140 = phi ptr [ %171, %167 ], [ %135, %134 ]
  %141 = phi i32 [ %168, %167 ], [ %131, %134 ]
  br i1 %99, label %142, label %145

142:                                              ; preds = %137
  %143 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %8, ptr noundef nonnull %140, i32 noundef %18) #22
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %167, label %145

145:                                              ; preds = %142, %137
  br i1 %24, label %160, label %146

146:                                              ; preds = %145
  %147 = call ptr @BM_uv_element_get(ptr noundef %42, ptr noundef nonnull %130, ptr noundef nonnull %140) #22
  %148 = getelementptr inbounds %struct.UvElement, ptr %147, i64 0, i32 5
  %149 = load i16, ptr %148, align 4, !tbaa !520
  %150 = zext i16 %149 to i32
  %151 = lshr i32 %150, 5
  %152 = zext nneg i32 %151 to i64
  %153 = getelementptr inbounds i32, ptr %41, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !58
  %155 = and i32 %150, 31
  %156 = shl nuw i32 1, %155
  %157 = and i32 %156, %154
  %158 = icmp eq i32 %157, 0
  %159 = add nsw i32 %141, 1
  br i1 %158, label %167, label %160

160:                                              ; preds = %146, %145
  %161 = load ptr, ptr %140, align 8, !tbaa !524
  %162 = getelementptr inbounds i8, ptr %161, i64 %126
  %163 = getelementptr inbounds %struct.TransData, ptr %138, i64 1
  %164 = getelementptr inbounds %struct.TransData2D, ptr %139, i64 1
  %165 = call zeroext i8 @uvedit_uv_select_test(ptr noundef %8, ptr noundef nonnull %140, i32 noundef %18) #22
  %166 = zext i8 %165 to i32
  call fastcc void @UVsToTransData(ptr noundef %5, ptr noundef %138, ptr noundef %139, ptr noundef %162, i32 noundef %166) #23
  br label %167

167:                                              ; preds = %146, %142, %160
  %168 = phi i32 [ %159, %146 ], [ %141, %160 ], [ %141, %142 ]
  %169 = phi ptr [ %139, %146 ], [ %164, %160 ], [ %139, %142 ]
  %170 = phi ptr [ %138, %146 ], [ %163, %160 ], [ %138, %142 ]
  %171 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #23
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %137, !llvm.loop !526

173:                                              ; preds = %167, %134, %127
  %174 = phi i32 [ %131, %127 ], [ %131, %134 ], [ %168, %167 ]
  %175 = phi ptr [ %129, %127 ], [ %129, %134 ], [ %169, %167 ]
  %176 = phi ptr [ %128, %127 ], [ %128, %134 ], [ %170, %167 ]
  %177 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #23
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %127, !llvm.loop !527

179:                                              ; preds = %173, %120
  %180 = phi i32 [ 0, %120 ], [ %174, %173 ]
  br i1 %24, label %185, label %181

181:                                              ; preds = %179
  %182 = load i32, ptr %101, align 8, !tbaa !34
  %183 = sub nsw i32 %182, %180
  store i32 %183, ptr %101, align 8, !tbaa !34
  call void @BM_uv_element_map_free(ptr noundef %42) #22
  %184 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  call void %184(ptr noundef %41) #22
  br label %185

185:                                              ; preds = %181, %179
  %186 = load i32, ptr %113, align 4, !tbaa !205
  %187 = and i32 %186, 2048
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %185
  %190 = load ptr, ptr %7, align 8, !tbaa !124
  %191 = load ptr, ptr %10, align 8, !tbaa !103
  call void @ED_uvedit_live_unwrap_begin(ptr noundef %190, ptr noundef %191) #22
  br label %192

192:                                              ; preds = %185, %189, %94, %95, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @createTransActionData(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !PGOFuncName !528 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.bAnimContext, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %9 = load ptr, ptr %8, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %10 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %4) #22
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %218, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 1
  %14 = load ptr, ptr %4, align 8, !tbaa !301
  %15 = load i16, ptr %13, align 8, !tbaa !312
  %16 = sext i16 %15 to i32
  %17 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 257, ptr noundef %14, i32 noundef %16) #22
  %18 = load i32, ptr %1, align 8, !tbaa !192
  %19 = icmp eq i32 %18, 22
  br i1 %19, label %20, label %36

20:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #24
  %21 = getelementptr inbounds %struct.bAnimContext, ptr %4, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !529
  %23 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 2
  %24 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22
  %25 = load i32, ptr %24, align 8, !tbaa !58
  %26 = sitofp i32 %25 to float
  %27 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !58
  %29 = sitofp i32 %28 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %23, float noundef %26, float noundef %29, ptr noundef nonnull %6, ptr noundef nonnull %7) #22
  %30 = load float, ptr %6, align 4, !tbaa !123
  %31 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !262
  %33 = sitofp i32 %32 to float
  %34 = fcmp ogt float %30, %33
  %35 = select i1 %34, i8 82, i8 76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  br label %36

36:                                               ; preds = %12, %20
  %37 = phi i8 [ %35, %20 ], [ 66, %12 ]
  %38 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 26
  store i8 %37, ptr %38, align 8
  %39 = load ptr, ptr %5, align 8, !tbaa !64
  %40 = icmp eq ptr %39, null
  br i1 %40, label %217, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  br label %43

43:                                               ; preds = %41, %74
  %44 = phi ptr [ %39, %41 ], [ %76, %74 ]
  %45 = phi i32 [ 0, %41 ], [ %75, %74 ]
  %46 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %4, ptr noundef nonnull %44) #22
  %47 = icmp eq ptr %46, null
  %48 = load i32, ptr %42, align 8, !tbaa !262
  %49 = sitofp i32 %48 to float
  br i1 %47, label %52, label %50

50:                                               ; preds = %43
  %51 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %46, float noundef %49, i16 noundef signext 1) #22
  br label %52

52:                                               ; preds = %43, %50
  %53 = phi float [ %51, %50 ], [ %49, %43 ]
  %54 = getelementptr inbounds %struct.bAnimListElem, ptr %44, i64 0, i32 3
  %55 = load i32, ptr %54, align 8, !tbaa !530
  switch i32 %55, label %74 [
    i32 7, label %56
    i32 27, label %62
    i32 29, label %68
  ]

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.bAnimListElem, ptr %44, i64 0, i32 8
  %58 = load ptr, ptr %57, align 8, !tbaa !227
  %59 = load i8, ptr %38, align 8, !tbaa !295
  %60 = call fastcc i32 @count_fcurve_keys(ptr noundef %58, i8 noundef zeroext %59, float noundef %53) #23
  %61 = add nsw i32 %60, %45
  br label %74

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.bAnimListElem, ptr %44, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !314
  %65 = load i8, ptr %38, align 8, !tbaa !295
  %66 = call fastcc i32 @count_gplayer_frames(ptr noundef %64, i8 noundef zeroext %65, float noundef %53) #23
  %67 = add nsw i32 %66, %45
  br label %74

68:                                               ; preds = %52
  %69 = getelementptr inbounds %struct.bAnimListElem, ptr %44, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !314
  %71 = load i8, ptr %38, align 8, !tbaa !295
  %72 = call fastcc i32 @count_masklayer_frames(ptr noundef %70, i8 noundef zeroext %71, float noundef %53) #23
  %73 = add nsw i32 %72, %45
  br label %74

74:                                               ; preds = %52, %62, %68, %56
  %75 = phi i32 [ %61, %56 ], [ %67, %62 ], [ %73, %68 ], [ %45, %52 ]
  %76 = load ptr, ptr %44, align 8, !tbaa !64
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %43, !llvm.loop !531

78:                                               ; preds = %74
  %79 = icmp eq i32 %75, 0
  br i1 %79, label %217, label %80

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 %75, ptr %81, align 8, !tbaa !34
  %82 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %83 = sext i32 %75 to i64
  %84 = mul nsw i64 %83, 224
  %85 = call ptr %82(i64 noundef %84, ptr noundef nonnull @.str.24) #22
  %86 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %85, ptr %86, align 8, !tbaa !48
  %87 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %88 = load i32, ptr %81, align 8, !tbaa !34
  %89 = sext i32 %88 to i64
  %90 = mul nsw i64 %89, 56
  %91 = call ptr %87(i64 noundef %90, ptr noundef nonnull @.str.25) #22
  %92 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 12
  store ptr %91, ptr %92, align 8, !tbaa !174
  %93 = load ptr, ptr %86, align 8, !tbaa !48
  store ptr %91, ptr %3, align 8, !tbaa !64
  %94 = load i16, ptr %13, align 8
  switch i16 %94, label %114 [
    i16 9, label %95
    i16 3, label %95
  ]

95:                                               ; preds = %80, %80
  %96 = load i32, ptr %1, align 8, !tbaa !192
  %97 = icmp eq i32 %96, 20
  %98 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %99 = shl nsw i64 %83, 4
  br i1 %97, label %100, label %108

100:                                              ; preds = %95
  %101 = or disjoint i64 %99, 8
  %102 = call ptr %98(i64 noundef %101, ptr noundef nonnull @.str.26) #22
  %103 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  store ptr %102, ptr %103, align 8, !tbaa !100
  %104 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %105 = load i32, ptr %104, align 4, !tbaa !53
  %106 = or i32 %105, 131072
  store i32 %106, ptr %104, align 4, !tbaa !53
  %107 = getelementptr inbounds float, ptr %102, i64 2
  br label %124

108:                                              ; preds = %95
  %109 = call ptr %98(i64 noundef %99, ptr noundef nonnull @.str.27) #22
  %110 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  store ptr %109, ptr %110, align 8, !tbaa !100
  %111 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %112 = load i32, ptr %111, align 4, !tbaa !53
  %113 = or i32 %112, 131072
  store i32 %113, ptr %111, align 4, !tbaa !53
  br label %124

114:                                              ; preds = %80
  %115 = load i32, ptr %1, align 8, !tbaa !192
  %116 = icmp eq i32 %115, 20
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %119 = call ptr %118(i64 noundef 8, ptr noundef nonnull @.str.28) #22
  %120 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  store ptr %119, ptr %120, align 8, !tbaa !100
  %121 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %122 = load i32, ptr %121, align 4, !tbaa !53
  %123 = or i32 %122, 131072
  store i32 %123, ptr %121, align 4, !tbaa !53
  br label %124

124:                                              ; preds = %114, %117, %100, %108
  %125 = phi ptr [ %107, %100 ], [ %109, %108 ], [ null, %117 ], [ null, %114 ]
  %126 = load ptr, ptr %5, align 8, !tbaa !64
  %127 = icmp eq ptr %126, null
  br i1 %127, label %172, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  br label %130

130:                                              ; preds = %128, %166
  %131 = phi ptr [ %126, %128 ], [ %170, %166 ]
  %132 = phi ptr [ %93, %128 ], [ %169, %166 ]
  %133 = phi ptr [ %125, %128 ], [ %168, %166 ]
  %134 = phi float [ %53, %128 ], [ %167, %166 ]
  %135 = getelementptr inbounds %struct.bAnimListElem, ptr %131, i64 0, i32 3
  %136 = load i32, ptr %135, align 8, !tbaa !530
  switch i32 %136, label %153 [
    i32 27, label %137
    i32 29, label %145
  ]

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.bAnimListElem, ptr %131, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !314
  %140 = load i8, ptr %38, align 8, !tbaa !295
  %141 = call fastcc i32 @GPLayerToTransData(ptr noundef %132, ptr noundef %133, ptr noundef %139, i8 noundef zeroext %140, float noundef %134) #23
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TransData, ptr %132, i64 %142
  %144 = getelementptr inbounds %struct.tGPFtransdata, ptr %133, i64 %142
  br label %166

145:                                              ; preds = %130
  %146 = getelementptr inbounds %struct.bAnimListElem, ptr %131, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !314
  %148 = load i8, ptr %38, align 8, !tbaa !295
  %149 = call fastcc i32 @MaskLayerToTransData(ptr noundef %132, ptr noundef %133, ptr noundef %147, i8 noundef zeroext %148, float noundef %134) #23
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TransData, ptr %132, i64 %150
  %152 = getelementptr inbounds %struct.tGPFtransdata, ptr %133, i64 %150
  br label %166

153:                                              ; preds = %130
  %154 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %4, ptr noundef nonnull %131) #22
  %155 = getelementptr inbounds %struct.bAnimListElem, ptr %131, i64 0, i32 8
  %156 = load ptr, ptr %155, align 8, !tbaa !227
  %157 = icmp eq ptr %154, null
  %158 = load i32, ptr %129, align 8, !tbaa !262
  %159 = sitofp i32 %158 to float
  br i1 %157, label %162, label %160

160:                                              ; preds = %153
  %161 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %154, float noundef %159, i16 noundef signext 1) #22
  br label %162

162:                                              ; preds = %153, %160
  %163 = phi float [ %161, %160 ], [ %159, %153 ]
  %164 = load i8, ptr %38, align 8, !tbaa !295
  %165 = call fastcc ptr @ActionFCurveToTransData(ptr noundef %132, ptr noundef nonnull %3, ptr noundef %156, ptr noundef %154, i8 noundef zeroext %164, float noundef %163) #23
  br label %166

166:                                              ; preds = %137, %162, %145
  %167 = phi float [ %134, %137 ], [ %134, %145 ], [ %163, %162 ]
  %168 = phi ptr [ %144, %137 ], [ %152, %145 ], [ %133, %162 ]
  %169 = phi ptr [ %143, %137 ], [ %151, %145 ], [ %165, %162 ]
  %170 = load ptr, ptr %131, align 8, !tbaa !64
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %130, !llvm.loop !532

172:                                              ; preds = %166, %124
  %173 = load i32, ptr %1, align 8, !tbaa !192
  %174 = icmp eq i32 %173, 20
  br i1 %174, label %175, label %217

175:                                              ; preds = %172
  %176 = icmp sgt i32 %75, 0
  br i1 %176, label %177, label %211

177:                                              ; preds = %175
  %178 = load ptr, ptr %86, align 8, !tbaa !48
  br label %179

179:                                              ; preds = %177, %179
  %180 = phi i32 [ %191, %179 ], [ 0, %177 ]
  %181 = phi float [ %190, %179 ], [ -1.000000e+09, %177 ]
  %182 = phi float [ %188, %179 ], [ 1.000000e+09, %177 ]
  %183 = phi ptr [ %192, %179 ], [ %178, %177 ]
  %184 = getelementptr inbounds %struct.TransData, ptr %183, i64 0, i32 5
  %185 = load ptr, ptr %184, align 8, !tbaa !474
  %186 = load float, ptr %185, align 4, !tbaa !123
  %187 = fcmp ogt float %182, %186
  %188 = select i1 %187, float %186, float %182
  %189 = fcmp olt float %181, %186
  %190 = select i1 %189, float %186, float %181
  %191 = add nuw nsw i32 %180, 1
  %192 = getelementptr inbounds %struct.TransData, ptr %183, i64 1
  %193 = icmp eq i32 %191, %75
  br i1 %193, label %194, label %179, !llvm.loop !533

194:                                              ; preds = %179
  %195 = fcmp oeq float %188, %190
  br i1 %195, label %196, label %211

196:                                              ; preds = %194
  %197 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 13
  %198 = load i16, ptr %197, align 8, !tbaa !534
  %199 = and i16 %198, 1
  %200 = icmp eq i16 %199, 0
  %201 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 9
  %202 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 6
  %203 = select i1 %200, ptr %202, ptr %201
  %204 = load i32, ptr %203, align 4, !tbaa !58
  %205 = sitofp i32 %204 to float
  %206 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 10
  %207 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 7
  %208 = select i1 %200, ptr %207, ptr %206
  %209 = load i32, ptr %208, align 4, !tbaa !58
  %210 = sitofp i32 %209 to float
  br label %211

211:                                              ; preds = %175, %196, %194
  %212 = phi float [ %205, %196 ], [ %188, %194 ], [ 1.000000e+09, %175 ]
  %213 = phi float [ %210, %196 ], [ %190, %194 ], [ -1.000000e+09, %175 ]
  %214 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  %215 = load ptr, ptr %214, align 8, !tbaa !100
  store float %212, ptr %215, align 4, !tbaa !123
  %216 = getelementptr inbounds float, ptr %215, i64 1
  store float %213, ptr %216, align 4, !tbaa !123
  br label %217

217:                                              ; preds = %172, %211, %78, %36
  call void @ANIM_animdata_freelist(ptr noundef nonnull %5) #22
  br label %218

218:                                              ; preds = %217, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @createTransNlaData(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !PGOFuncName !535 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %9 = load ptr, ptr %8, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %10 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #22
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %269, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !536
  %15 = load ptr, ptr %3, align 8, !tbaa !301
  %16 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %17 = load i16, ptr %16, align 8, !tbaa !312
  %18 = sext i16 %17 to i32
  %19 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 259, ptr noundef %15, i32 noundef %18) #22
  %20 = load i32, ptr %1, align 8, !tbaa !192
  %21 = icmp eq i32 %20, 22
  br i1 %21, label %22, label %38

22:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #24
  %23 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !529
  %25 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 2
  %26 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22
  %27 = load i32, ptr %26, align 8, !tbaa !58
  %28 = sitofp i32 %27 to float
  %29 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22, i64 1
  %30 = load i32, ptr %29, align 4, !tbaa !58
  %31 = sitofp i32 %30 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %25, float noundef %28, float noundef %31, ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %32 = load float, ptr %5, align 4, !tbaa !123
  %33 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !262
  %35 = sitofp i32 %34 to float
  %36 = fcmp ogt float %32, %35
  %37 = select i1 %36, i8 82, i8 76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  br label %38

38:                                               ; preds = %12, %22
  %39 = phi i8 [ %37, %22 ], [ 66, %12 ]
  %40 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 26
  store i8 %39, ptr %40, align 8
  %41 = load ptr, ptr %4, align 8, !tbaa !64
  %42 = icmp eq ptr %41, null
  br i1 %42, label %268, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  br label %49

45:                                               ; preds = %82, %49
  %46 = phi i32 [ %51, %49 ], [ %83, %82 ]
  %47 = load ptr, ptr %50, align 8, !tbaa !64
  %48 = icmp eq ptr %47, null
  br i1 %48, label %86, label %49, !llvm.loop !537

49:                                               ; preds = %43, %45
  %50 = phi ptr [ %41, %43 ], [ %47, %45 ]
  %51 = phi i32 [ 0, %43 ], [ %46, %45 ]
  %52 = getelementptr inbounds %struct.bAnimListElem, ptr %50, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !314
  %54 = getelementptr inbounds %struct.NlaTrack, ptr %53, i64 0, i32 2
  call void @BKE_nlastrips_make_metas(ptr noundef nonnull %54, i8 noundef zeroext 1) #22
  %55 = load ptr, ptr %54, align 8, !tbaa !64
  %56 = icmp eq ptr %55, null
  br i1 %56, label %45, label %57

57:                                               ; preds = %49, %82
  %58 = phi ptr [ %84, %82 ], [ %55, %49 ]
  %59 = phi i32 [ %83, %82 ], [ %51, %49 ]
  %60 = getelementptr inbounds %struct.NlaStrip, ptr %58, i64 0, i32 21
  %61 = load i16, ptr %60, align 2, !tbaa !538
  %62 = icmp eq i16 %61, 1
  br i1 %62, label %82, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.NlaStrip, ptr %58, i64 0, i32 23
  %65 = load i32, ptr %64, align 8, !tbaa !540
  %66 = and i32 %65, 2
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %63
  %69 = load i8, ptr %40, align 8, !tbaa !295
  %70 = getelementptr inbounds %struct.NlaStrip, ptr %58, i64 0, i32 10
  %71 = load float, ptr %70, align 8, !tbaa !541
  %72 = load i32, ptr %44, align 8, !tbaa !262
  %73 = sitofp i32 %72 to float
  %74 = call fastcc zeroext i8 @FrameOnMouseSide(i8 noundef zeroext %69, float noundef %71, float noundef %73) #23, !range !542
  %75 = zext nneg i8 %74 to i32
  %76 = add nsw i32 %59, %75
  %77 = getelementptr inbounds %struct.NlaStrip, ptr %58, i64 0, i32 11
  %78 = load float, ptr %77, align 4, !tbaa !543
  %79 = call fastcc zeroext i8 @FrameOnMouseSide(i8 noundef zeroext %69, float noundef %78, float noundef %73) #23, !range !542
  %80 = zext nneg i8 %79 to i32
  %81 = add nsw i32 %76, %80
  br label %82

82:                                               ; preds = %68, %57, %63
  %83 = phi i32 [ %59, %63 ], [ %59, %57 ], [ %81, %68 ]
  %84 = load ptr, ptr %58, align 8, !tbaa !64
  %85 = icmp eq ptr %84, null
  br i1 %85, label %45, label %57, !llvm.loop !544

86:                                               ; preds = %45
  %87 = icmp eq i32 %46, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %86
  %89 = load ptr, ptr %4, align 8, !tbaa !64
  %90 = icmp eq ptr %89, null
  br i1 %90, label %268, label %91

91:                                               ; preds = %88, %91
  %92 = phi ptr [ %96, %91 ], [ %89, %88 ]
  %93 = getelementptr inbounds %struct.bAnimListElem, ptr %92, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !314
  %95 = getelementptr inbounds %struct.NlaTrack, ptr %94, i64 0, i32 2
  call void @BKE_nlastrips_clear_metas(ptr noundef nonnull %95, i8 noundef zeroext 0, i8 noundef zeroext 1) #22
  %96 = load ptr, ptr %92, align 8, !tbaa !64
  %97 = icmp eq ptr %96, null
  br i1 %97, label %268, label %91, !llvm.loop !545

98:                                               ; preds = %86
  %99 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 %46, ptr %99, align 8, !tbaa !34
  %100 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %101 = sext i32 %46 to i64
  %102 = mul nsw i64 %101, 224
  %103 = call ptr %100(i64 noundef %102, ptr noundef nonnull @.str.29) #22
  %104 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %103, ptr %104, align 8, !tbaa !48
  %105 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %106 = load i32, ptr %99, align 8, !tbaa !34
  %107 = sext i32 %106 to i64
  %108 = shl nsw i64 %107, 6
  %109 = call ptr %105(i64 noundef %108, ptr noundef nonnull @.str.30) #22
  %110 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  store ptr %109, ptr %110, align 8, !tbaa !100
  %111 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %112 = load i32, ptr %111, align 4, !tbaa !53
  %113 = or i32 %112, 131072
  store i32 %113, ptr %111, align 4, !tbaa !53
  %114 = load ptr, ptr %4, align 8, !tbaa !64
  %115 = icmp eq ptr %114, null
  br i1 %115, label %268, label %116

116:                                              ; preds = %98
  %117 = icmp eq ptr %14, null
  %118 = getelementptr inbounds %struct.SpaceNla, ptr %14, i64 0, i32 7
  %119 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  %120 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %121 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  br label %122

122:                                              ; preds = %116, %263
  %123 = phi ptr [ %114, %116 ], [ %266, %263 ]
  %124 = phi ptr [ %103, %116 ], [ %265, %263 ]
  %125 = phi ptr [ %109, %116 ], [ %264, %263 ]
  %126 = getelementptr inbounds %struct.bAnimListElem, ptr %123, i64 0, i32 3
  %127 = load i32, ptr %126, align 8, !tbaa !530
  %128 = icmp eq i32 %127, 30
  br i1 %128, label %129, label %263

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.bAnimListElem, ptr %123, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !314
  %132 = getelementptr inbounds %struct.NlaTrack, ptr %131, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !64
  %134 = icmp eq ptr %133, null
  br i1 %134, label %263, label %135

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.bAnimListElem, ptr %123, i64 0, i32 10
  %137 = load ptr, ptr %136, align 8, !tbaa !546
  %138 = getelementptr inbounds %struct.bAnimListElem, ptr %123, i64 0, i32 9
  %139 = getelementptr inbounds %struct.AnimData, ptr %137, i64 0, i32 3
  br label %140

140:                                              ; preds = %135, %258
  %141 = phi ptr [ %133, %135 ], [ %261, %258 ]
  %142 = phi ptr [ %124, %135 ], [ %260, %258 ]
  %143 = phi ptr [ %125, %135 ], [ %259, %258 ]
  %144 = getelementptr inbounds %struct.NlaStrip, ptr %141, i64 0, i32 21
  %145 = load i16, ptr %144, align 2, !tbaa !538
  %146 = icmp eq i16 %145, 1
  br i1 %146, label %258, label %147

147:                                              ; preds = %140
  %148 = getelementptr inbounds %struct.NlaStrip, ptr %141, i64 0, i32 23
  %149 = load i32, ptr %148, align 8, !tbaa !540
  %150 = and i32 %149, 2
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %258, label %152

152:                                              ; preds = %147
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #24
  %153 = load ptr, ptr %138, align 8, !tbaa !547
  store ptr %153, ptr %143, align 8, !tbaa !548
  %154 = getelementptr inbounds %struct.TransDataNla, ptr %143, i64 0, i32 2
  store ptr %131, ptr %154, align 8, !tbaa !550
  %155 = getelementptr inbounds %struct.TransDataNla, ptr %143, i64 0, i32 1
  store ptr %131, ptr %155, align 8, !tbaa !551
  %156 = getelementptr inbounds %struct.TransDataNla, ptr %143, i64 0, i32 3
  store ptr %141, ptr %156, align 8, !tbaa !552
  %157 = call i32 @BLI_findindex(ptr noundef nonnull %139, ptr noundef %131) #22
  %158 = getelementptr inbounds %struct.TransDataNla, ptr %143, i64 0, i32 6
  store i32 %157, ptr %158, align 8, !tbaa !553
  %159 = sitofp i32 %157 to float
  br i1 %117, label %168, label %160

160:                                              ; preds = %152
  %161 = load i16, ptr %118, align 2, !tbaa !554
  %162 = and i16 %161, 32
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !556
  %166 = sitofp i16 %165 to float
  %167 = fmul float %166, 0x3FE99999A0000000
  br label %172

168:                                              ; preds = %160, %152
  %169 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !556
  %170 = sitofp i16 %169 to float
  %171 = fmul float %170, 0x3FF3333340000000
  br label %172

172:                                              ; preds = %168, %164
  %173 = phi float [ %170, %168 ], [ %166, %164 ]
  %174 = phi float [ %171, %168 ], [ %167, %164 ]
  %175 = call float @llvm.fmuladd.f32(float %173, float 0x3FB99999A0000000, float %174)
  %176 = fmul float %175, %159
  %177 = getelementptr inbounds %struct.NlaStrip, ptr %141, i64 0, i32 10
  %178 = load float, ptr %177, align 8, !tbaa !541
  %179 = getelementptr inbounds %struct.TransDataNla, ptr %143, i64 0, i32 4
  store float %178, ptr %179, align 8, !tbaa !123
  %180 = getelementptr inbounds %struct.TransDataNla, ptr %143, i64 0, i32 4, i64 1
  store float %176, ptr %180, align 4, !tbaa !123
  %181 = getelementptr inbounds %struct.NlaStrip, ptr %141, i64 0, i32 11
  %182 = load float, ptr %181, align 4, !tbaa !543
  %183 = getelementptr inbounds %struct.TransDataNla, ptr %143, i64 0, i32 5
  store float %182, ptr %183, align 4, !tbaa !123
  %184 = getelementptr inbounds %struct.TransDataNla, ptr %143, i64 0, i32 5, i64 1
  store float %176, ptr %184, align 4, !tbaa !123
  %185 = load i32, ptr %119, align 8, !tbaa !262
  %186 = sitofp i32 %185 to float
  store float %186, ptr %7, align 4, !tbaa !123
  store float %176, ptr %120, align 4, !tbaa !123
  store float 0.000000e+00, ptr %121, align 4, !tbaa !123
  %187 = load i8, ptr %40, align 8, !tbaa !295
  %188 = load float, ptr %177, align 8, !tbaa !541
  %189 = call fastcc zeroext i8 @FrameOnMouseSide(i8 noundef zeroext %187, float noundef %188, float noundef %186) #23, !range !542
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %218, label %191

191:                                              ; preds = %172
  %192 = getelementptr inbounds %struct.TransDataNla, ptr %143, i64 0, i32 7
  store i32 -1, ptr %192, align 4, !tbaa !557
  %193 = load i32, ptr %1, align 8, !tbaa !192
  switch i32 %193, label %210 [
    i32 1, label %194
    i32 22, label %194
  ]

194:                                              ; preds = %191, %191
  %195 = getelementptr inbounds %struct.TransData, ptr %142, i64 0, i32 3
  store ptr %179, ptr %195, align 8, !tbaa !215
  %196 = getelementptr inbounds %struct.TransData, ptr %142, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %196, ptr noundef nonnull %179) #23
  %197 = getelementptr inbounds %struct.TransData, ptr %142, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %197, ptr noundef nonnull %7) #23
  %198 = getelementptr inbounds %struct.TransData, ptr %142, i64 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %198, i8 0, i64 32, i1 false)
  %199 = getelementptr inbounds %struct.TransData, ptr %142, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %199, align 8, !tbaa !123
  %200 = getelementptr inbounds %struct.TransData, ptr %142, i64 0, i32 13
  store ptr null, ptr %200, align 8, !tbaa !330
  %201 = getelementptr inbounds %struct.TransData, ptr %142, i64 0, i32 5
  store ptr null, ptr %201, align 8, !tbaa !474
  %202 = getelementptr inbounds %struct.TransData, ptr %142, i64 0, i32 16
  %203 = load i32, ptr %202, align 8, !tbaa !49
  %204 = or i32 %203, 1
  store i32 %204, ptr %202, align 8, !tbaa !49
  store float 0.000000e+00, ptr %142, align 8, !tbaa !55
  %205 = getelementptr inbounds %struct.TransData, ptr %142, i64 0, i32 8
  call void @unit_m3(ptr noundef nonnull %205) #22
  %206 = getelementptr inbounds %struct.TransData, ptr %142, i64 0, i32 9
  call void @unit_m3(ptr noundef nonnull %206) #22
  %207 = load i8, ptr %40, align 8, !tbaa !295
  %208 = load i32, ptr %119, align 8, !tbaa !262
  %209 = sitofp i32 %208 to float
  br label %213

210:                                              ; preds = %191
  %211 = getelementptr inbounds %struct.TransData, ptr %142, i64 0, i32 5
  store ptr %179, ptr %211, align 8, !tbaa !474
  %212 = getelementptr inbounds %struct.TransData, ptr %142, i64 0, i32 6
  store float %178, ptr %212, align 8, !tbaa !475
  br label %213

213:                                              ; preds = %210, %194
  %214 = phi float [ %186, %210 ], [ %209, %194 ]
  %215 = phi i8 [ %187, %210 ], [ %207, %194 ]
  %216 = getelementptr inbounds %struct.TransData, ptr %142, i64 0, i32 15
  store ptr %143, ptr %216, align 8, !tbaa !175
  %217 = getelementptr inbounds %struct.TransData, ptr %142, i64 1
  br label %218

218:                                              ; preds = %213, %172
  %219 = phi float [ %214, %213 ], [ %186, %172 ]
  %220 = phi i8 [ %215, %213 ], [ %187, %172 ]
  %221 = phi ptr [ %217, %213 ], [ %142, %172 ]
  %222 = load float, ptr %181, align 4, !tbaa !543
  %223 = call fastcc zeroext i8 @FrameOnMouseSide(i8 noundef zeroext %220, float noundef %222, float noundef %219) #23, !range !542
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %251, label %225

225:                                              ; preds = %218
  %226 = getelementptr inbounds %struct.TransDataNla, ptr %143, i64 0, i32 7
  %227 = load i32, ptr %226, align 4, !tbaa !557
  %228 = icmp eq i32 %227, 0
  %229 = select i1 %228, i32 1, i32 2
  store i32 %229, ptr %226, align 4, !tbaa !557
  %230 = load i32, ptr %1, align 8, !tbaa !192
  switch i32 %230, label %244 [
    i32 1, label %231
    i32 22, label %231
  ]

231:                                              ; preds = %225, %225
  %232 = getelementptr inbounds %struct.TransData, ptr %221, i64 0, i32 3
  store ptr %183, ptr %232, align 8, !tbaa !215
  %233 = getelementptr inbounds %struct.TransData, ptr %221, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %233, ptr noundef nonnull %183) #23
  %234 = getelementptr inbounds %struct.TransData, ptr %221, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %234, ptr noundef nonnull %7) #23
  %235 = getelementptr inbounds %struct.TransData, ptr %221, i64 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %235, i8 0, i64 32, i1 false)
  %236 = getelementptr inbounds %struct.TransData, ptr %221, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %236, align 8, !tbaa !123
  %237 = getelementptr inbounds %struct.TransData, ptr %221, i64 0, i32 13
  store ptr null, ptr %237, align 8, !tbaa !330
  %238 = getelementptr inbounds %struct.TransData, ptr %221, i64 0, i32 5
  store ptr null, ptr %238, align 8, !tbaa !474
  %239 = getelementptr inbounds %struct.TransData, ptr %221, i64 0, i32 16
  %240 = load i32, ptr %239, align 8, !tbaa !49
  %241 = or i32 %240, 1
  store i32 %241, ptr %239, align 8, !tbaa !49
  store float 0.000000e+00, ptr %221, align 8, !tbaa !55
  %242 = getelementptr inbounds %struct.TransData, ptr %221, i64 0, i32 8
  call void @unit_m3(ptr noundef nonnull %242) #22
  %243 = getelementptr inbounds %struct.TransData, ptr %221, i64 0, i32 9
  call void @unit_m3(ptr noundef nonnull %243) #22
  br label %248

244:                                              ; preds = %225
  %245 = getelementptr inbounds %struct.TransData, ptr %221, i64 0, i32 5
  store ptr %183, ptr %245, align 8, !tbaa !474
  %246 = load float, ptr %183, align 4, !tbaa !123
  %247 = getelementptr inbounds %struct.TransData, ptr %221, i64 0, i32 6
  store float %246, ptr %247, align 8, !tbaa !475
  br label %248

248:                                              ; preds = %244, %231
  %249 = getelementptr inbounds %struct.TransData, ptr %221, i64 0, i32 15
  store ptr %143, ptr %249, align 8, !tbaa !175
  %250 = getelementptr inbounds %struct.TransData, ptr %221, i64 1
  br label %251

251:                                              ; preds = %248, %218
  %252 = phi ptr [ %250, %248 ], [ %221, %218 ]
  %253 = getelementptr inbounds %struct.TransDataNla, ptr %143, i64 0, i32 7
  %254 = load i32, ptr %253, align 4, !tbaa !557
  %255 = icmp eq i32 %254, 2
  %256 = select i1 %255, i64 2, i64 1
  %257 = getelementptr inbounds %struct.TransDataNla, ptr %143, i64 %256
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #24
  br label %258

258:                                              ; preds = %140, %251, %147
  %259 = phi ptr [ %257, %251 ], [ %143, %147 ], [ %143, %140 ]
  %260 = phi ptr [ %252, %251 ], [ %142, %147 ], [ %142, %140 ]
  %261 = load ptr, ptr %141, align 8, !tbaa !64
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %140, !llvm.loop !558

263:                                              ; preds = %258, %129, %122
  %264 = phi ptr [ %125, %122 ], [ %125, %129 ], [ %259, %258 ]
  %265 = phi ptr [ %124, %122 ], [ %124, %129 ], [ %260, %258 ]
  %266 = load ptr, ptr %123, align 8, !tbaa !64
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %122, !llvm.loop !559

268:                                              ; preds = %263, %91, %98, %88, %38
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #22
  br label %269

269:                                              ; preds = %268, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @createTransSeqData(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !PGOFuncName !560 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = tail call ptr @UI_view2d_fromcontext(ptr noundef %0) #22
  %6 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %7 = load ptr, ptr %6, align 8, !tbaa !124
  %8 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %7, i8 noundef zeroext 0) #22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 0, ptr %11, align 8, !tbaa !34
  br label %95

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 41
  store ptr @freeSeqData, ptr %13, align 8, !tbaa !561
  %14 = load i32, ptr %1, align 8, !tbaa !192
  %15 = icmp eq i32 %14, 22
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  %17 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22
  %18 = load i32, ptr %17, align 8, !tbaa !58
  %19 = sitofp i32 %18 to float
  %20 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22, i64 1
  %21 = load i32, ptr %20, align 4, !tbaa !58
  %22 = sitofp i32 %21 to float
  call void @UI_view2d_region_to_view(ptr noundef %5, float noundef %19, float noundef %22, ptr noundef nonnull %3, ptr noundef nonnull %4) #22
  %23 = load float, ptr %3, align 4, !tbaa !123
  %24 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !262
  %26 = sitofp i32 %25 to float
  %27 = fcmp ogt float %23, %26
  %28 = select i1 %27, i8 82, i8 76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  br label %29

29:                                               ; preds = %12, %16
  %30 = phi i8 [ %28, %16 ], [ 66, %12 ]
  %31 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 26
  store i8 %30, ptr %31, align 8
  %32 = load ptr, ptr %8, align 8, !tbaa !180
  %33 = load ptr, ptr %32, align 8, !tbaa !64
  %34 = icmp eq ptr %33, null
  br i1 %34, label %68, label %35

35:                                               ; preds = %29, %65
  %36 = phi ptr [ %66, %65 ], [ %33, %29 ]
  %37 = getelementptr inbounds %struct.Sequence, ptr %36, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !194
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.Sequence, ptr %36, i64 0, i32 6
  %43 = load i32, ptr %42, align 4, !tbaa !193
  %44 = and i32 %43, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.Sequence, ptr %36, i64 0, i32 33
  br label %48

48:                                               ; preds = %46, %61
  %49 = phi i32 [ %38, %46 ], [ %62, %61 ]
  %50 = phi i64 [ 0, %46 ], [ %63, %61 ]
  %51 = getelementptr inbounds ptr, ptr %47, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !64
  %53 = icmp eq ptr %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.Sequence, ptr %52, i64 0, i32 5
  %56 = load i32, ptr %55, align 8, !tbaa !194
  %57 = and i32 %56, 16391
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = or i32 %49, 1
  store i32 %60, ptr %37, align 8, !tbaa !194
  br label %61

61:                                               ; preds = %48, %54, %59
  %62 = phi i32 [ %49, %48 ], [ %49, %54 ], [ %60, %59 ]
  %63 = add nuw nsw i64 %50, 1
  %64 = icmp eq i64 %63, 3
  br i1 %64, label %65, label %48, !llvm.loop !562

65:                                               ; preds = %61, %35, %41
  %66 = load ptr, ptr %36, align 8, !tbaa !64
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %35, !llvm.loop !563

68:                                               ; preds = %65, %29
  %69 = call fastcc i32 @SeqTransCount(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %32, i32 noundef 0) #23
  %70 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 %69, ptr %70, align 8, !tbaa !34
  %71 = icmp eq i32 %69, 0
  br i1 %71, label %95, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %74 = sext i32 %69 to i64
  %75 = mul nsw i64 %74, 224
  %76 = call ptr %73(i64 noundef %75, ptr noundef nonnull @.str.31) #22
  %77 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %76, ptr %77, align 8, !tbaa !48
  %78 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %79 = load i32, ptr %70, align 8, !tbaa !34
  %80 = sext i32 %79 to i64
  %81 = mul nsw i64 %80, 56
  %82 = call ptr %78(i64 noundef %81, ptr noundef nonnull @.str.32) #22
  %83 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 12
  store ptr %82, ptr %83, align 8, !tbaa !174
  %84 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %85 = load i32, ptr %70, align 8, !tbaa !34
  %86 = sext i32 %85 to i64
  %87 = mul nsw i64 %86, 24
  %88 = call ptr %84(i64 noundef %87, ptr noundef nonnull @.str.33) #22
  %89 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  store ptr %88, ptr %89, align 8, !tbaa !100
  %90 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %91 = load i32, ptr %90, align 4, !tbaa !53
  %92 = or i32 %91, 131072
  store i32 %92, ptr %90, align 4, !tbaa !53
  %93 = load ptr, ptr %8, align 8, !tbaa !180
  %94 = call fastcc i32 @SeqToTransData_Recursive(ptr noundef nonnull %1, ptr noundef %93, ptr noundef %76, ptr noundef %82, ptr noundef %88) #23
  br label %95

95:                                               ; preds = %68, %72, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @createTransGraphEditData(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !PGOFuncName !564 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %12 = load ptr, ptr %11, align 8, !tbaa !179
  %13 = getelementptr inbounds %struct.ScrArea, ptr %12, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !203
  %15 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %16 = load ptr, ptr %15, align 8, !tbaa !124
  %17 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %18 = load ptr, ptr %17, align 8, !tbaa !434
  %19 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #24
  %20 = tail call fastcc zeroext i8 @graph_edit_is_translation_mode(ptr noundef %1) #23, !range !542
  %21 = getelementptr inbounds %struct.SpaceIpo, ptr %14, i64 0, i32 11
  %22 = load i32, ptr %21, align 4, !tbaa !224
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i8
  %26 = tail call fastcc zeroext i8 @graph_edit_use_local_center(ptr noundef %1) #23, !range !542
  %27 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #22
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %351, label %29

29:                                               ; preds = %2
  %30 = call signext i16 @ANIM_get_normalization_flags(ptr noundef nonnull %3) #22
  %31 = or i16 %30, 12
  %32 = load ptr, ptr %3, align 8, !tbaa !301
  %33 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %34 = load i16, ptr %33, align 8, !tbaa !312
  %35 = sext i16 %34 to i32
  %36 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 261, ptr noundef %32, i32 noundef %35) #22
  %37 = load i32, ptr %1, align 8, !tbaa !192
  %38 = icmp eq i32 %37, 22
  br i1 %38, label %39, label %52

39:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #24
  %40 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22
  %41 = load i32, ptr %40, align 8, !tbaa !58
  %42 = sitofp i32 %41 to float
  %43 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22, i64 1
  %44 = load i32, ptr %43, align 4, !tbaa !58
  %45 = sitofp i32 %44 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %19, float noundef %42, float noundef %45, ptr noundef nonnull %7, ptr noundef nonnull %8) #22
  %46 = load float, ptr %7, align 4, !tbaa !123
  %47 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 22, i32 5
  %48 = load i32, ptr %47, align 8, !tbaa !262
  %49 = sitofp i32 %48 to float
  %50 = fcmp ogt float %46, %49
  %51 = select i1 %50, i8 82, i8 76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #24
  br label %52

52:                                               ; preds = %29, %39
  %53 = phi i8 [ %51, %39 ], [ 66, %29 ]
  %54 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 26
  store i8 %53, ptr %54, align 8
  %55 = load ptr, ptr %4, align 8, !tbaa !64
  %56 = icmp eq ptr %55, null
  br i1 %56, label %350, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 22, i32 5
  %59 = icmp eq i8 %20, 0
  %60 = icmp eq i8 %26, 0
  br label %61

61:                                               ; preds = %57, %136
  %62 = phi ptr [ %55, %57 ], [ %138, %136 ]
  %63 = phi i32 [ 0, %57 ], [ %137, %136 ]
  %64 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %3, ptr noundef nonnull %62) #22
  %65 = getelementptr inbounds %struct.bAnimListElem, ptr %62, i64 0, i32 8
  %66 = load ptr, ptr %65, align 8, !tbaa !227
  %67 = icmp eq ptr %64, null
  %68 = load i32, ptr %58, align 8, !tbaa !262
  %69 = sitofp i32 %68 to float
  br i1 %67, label %72, label %70

70:                                               ; preds = %61
  %71 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %64, float noundef %69, i16 noundef signext 1) #22
  br label %72

72:                                               ; preds = %61, %70
  %73 = phi float [ %71, %70 ], [ %69, %61 ]
  %74 = getelementptr inbounds %struct.FCurve, ptr %66, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !229
  %76 = icmp eq ptr %75, null
  br i1 %76, label %136, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.FCurve, ptr %66, i64 0, i32 7
  %79 = load i32, ptr %78, align 8, !tbaa !231
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %136, label %81

81:                                               ; preds = %77
  %82 = load i8, ptr %54, align 8, !tbaa !295
  br label %83

83:                                               ; preds = %81, %131
  %84 = phi ptr [ %75, %81 ], [ %134, %131 ]
  %85 = phi i32 [ %63, %81 ], [ %132, %131 ]
  %86 = phi i32 [ 0, %81 ], [ %133, %131 ]
  %87 = getelementptr inbounds [3 x [3 x float]], ptr %84, i64 0, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !123
  %89 = call fastcc zeroext i8 @FrameOnMouseSide(i8 noundef zeroext %82, float noundef %88, float noundef %73) #23, !range !542
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %131, label %91

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.BezTriple, ptr %84, i64 0, i32 8
  %93 = load i8, ptr %92, align 4, !tbaa !368
  %94 = and i8 %93, 1
  br i1 %24, label %95, label %102

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.BezTriple, ptr %84, i64 0, i32 7
  %97 = load i8, ptr %96, align 1, !tbaa !369
  %98 = and i8 %97, 1
  %99 = getelementptr inbounds %struct.BezTriple, ptr %84, i64 0, i32 9
  %100 = load i8, ptr %99, align 1, !tbaa !370
  %101 = and i8 %100, 1
  br label %102

102:                                              ; preds = %91, %95
  %103 = phi i8 [ %98, %95 ], [ %94, %91 ]
  %104 = phi i8 [ %101, %95 ], [ %94, %91 ]
  br i1 %59, label %114, label %105

105:                                              ; preds = %102
  %106 = icmp eq i8 %94, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %105
  %108 = add nsw i32 %85, 1
  br label %131

109:                                              ; preds = %105
  %110 = zext nneg i8 %103 to i32
  %111 = add nsw i32 %85, %110
  %112 = zext nneg i8 %104 to i32
  %113 = add nsw i32 %111, %112
  br label %131

114:                                              ; preds = %102
  br i1 %60, label %124, label %115

115:                                              ; preds = %114
  %116 = getelementptr inbounds %struct.BezTriple, ptr %84, i64 0, i32 4
  %117 = load i8, ptr %116, align 4, !tbaa !238
  %118 = icmp eq i8 %117, 2
  br i1 %118, label %119, label %131

119:                                              ; preds = %115
  %120 = zext nneg i8 %103 to i32
  %121 = add nsw i32 %85, %120
  %122 = zext nneg i8 %104 to i32
  %123 = add nsw i32 %121, %122
  br label %131

124:                                              ; preds = %114
  %125 = zext nneg i8 %103 to i32
  %126 = zext nneg i8 %94 to i32
  %127 = zext nneg i8 %104 to i32
  %128 = add i32 %85, %126
  %129 = add i32 %128, %125
  %130 = add nsw i32 %129, %127
  br label %131

131:                                              ; preds = %124, %119, %109, %107, %115, %83
  %132 = phi i32 [ %85, %83 ], [ %108, %107 ], [ %85, %115 ], [ %113, %109 ], [ %123, %119 ], [ %130, %124 ]
  %133 = add nuw nsw i32 %86, 1
  %134 = getelementptr inbounds %struct.BezTriple, ptr %84, i64 1
  %135 = icmp eq i32 %133, %79
  br i1 %135, label %136, label %83, !llvm.loop !565

136:                                              ; preds = %131, %77, %72
  %137 = phi i32 [ %63, %72 ], [ %63, %77 ], [ %132, %131 ]
  %138 = load ptr, ptr %62, align 8, !tbaa !64
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %61, !llvm.loop !566

140:                                              ; preds = %136
  %141 = icmp eq i32 %137, 0
  br i1 %141, label %350, label %142

142:                                              ; preds = %140
  %143 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 %137, ptr %143, align 8, !tbaa !34
  %144 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %145 = sext i32 %137 to i64
  %146 = mul nsw i64 %145, 224
  %147 = call ptr %144(i64 noundef %146, ptr noundef nonnull @.str.34) #22
  %148 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %147, ptr %148, align 8, !tbaa !48
  %149 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %150 = load i32, ptr %143, align 8, !tbaa !34
  %151 = sext i32 %150 to i64
  %152 = mul nsw i64 %151, 56
  %153 = call ptr %149(i64 noundef %152, ptr noundef nonnull @.str.35) #22
  %154 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 12
  store ptr %153, ptr %154, align 8, !tbaa !174
  %155 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %156 = load i32, ptr %143, align 8, !tbaa !34
  %157 = sext i32 %156 to i64
  %158 = shl nsw i64 %157, 2
  %159 = call ptr %155(i64 noundef %158, ptr noundef nonnull @.str.36) #22
  %160 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  store ptr %159, ptr %160, align 8, !tbaa !100
  %161 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %162 = load i32, ptr %161, align 4, !tbaa !53
  %163 = or i32 %162, 131072
  store i32 %163, ptr %161, align 4, !tbaa !53
  %164 = load ptr, ptr %148, align 8, !tbaa !48
  %165 = load ptr, ptr %154, align 8, !tbaa !174
  call void @unit_m3(ptr noundef nonnull %5) #22
  call void @unit_m3(ptr noundef nonnull %6) #22
  %166 = load i32, ptr %1, align 8, !tbaa !192
  %167 = and i32 %166, -2
  %168 = icmp eq i32 %167, 2
  br i1 %168, label %169, label %184

169:                                              ; preds = %142
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #24
  call void @UI_view2d_scale_get(ptr noundef nonnull %19, ptr noundef nonnull %9, ptr noundef nonnull %10) #22
  %170 = load float, ptr %9, align 4, !tbaa !123
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %170) #23
  %171 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1
  %172 = load float, ptr %10, align 4, !tbaa !123
  call fastcc void @mul_v3_fl(ptr noundef nonnull %171, float noundef %172) #23
  %173 = call float @llvm.fabs.f32(float %170)
  %174 = fcmp ult float %173, 0x3E80000000000000
  br i1 %174, label %177, label %175

175:                                              ; preds = %169
  %176 = fdiv float 1.000000e+00, %170
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef %176) #23
  br label %177

177:                                              ; preds = %175, %169
  %178 = call float @llvm.fabs.f32(float %172)
  %179 = fcmp ult float %178, 0x3E80000000000000
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %182 = fdiv float 1.000000e+00, %172
  call fastcc void @mul_v3_fl(ptr noundef nonnull %181, float noundef %182) #23
  br label %183

183:                                              ; preds = %180, %177
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #24
  br label %184

184:                                              ; preds = %142, %183
  %185 = load ptr, ptr %4, align 8, !tbaa !64
  %186 = icmp eq ptr %185, null
  br i1 %186, label %350, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 22, i32 5
  %189 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 9
  %190 = icmp ne i8 %20, 0
  %191 = icmp ne i8 %26, 0
  br label %192

192:                                              ; preds = %187, %344
  %193 = phi ptr [ %185, %187 ], [ %348, %344 ]
  %194 = phi ptr [ %164, %187 ], [ %347, %344 ]
  %195 = phi ptr [ %165, %187 ], [ %346, %344 ]
  %196 = phi ptr [ %159, %187 ], [ %345, %344 ]
  %197 = call ptr @ANIM_nla_mapping_get(ptr noundef nonnull %3, ptr noundef nonnull %193) #22
  %198 = getelementptr inbounds %struct.bAnimListElem, ptr %193, i64 0, i32 8
  %199 = load ptr, ptr %198, align 8, !tbaa !227
  %200 = getelementptr inbounds %struct.FCurve, ptr %199, i64 0, i32 9
  %201 = load i16, ptr %200, align 8, !tbaa !275
  %202 = lshr i16 %201, 11
  %203 = trunc i16 %202 to i8
  %204 = and i8 %203, 1
  %205 = icmp eq ptr %197, null
  %206 = load i32, ptr %188, align 8, !tbaa !262
  %207 = sitofp i32 %206 to float
  br i1 %205, label %210, label %208

208:                                              ; preds = %192
  %209 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %197, float noundef %207, i16 noundef signext 1) #22
  br label %210

210:                                              ; preds = %192, %208
  %211 = phi float [ %209, %208 ], [ %207, %192 ]
  %212 = getelementptr inbounds %struct.FCurve, ptr %199, i64 0, i32 5
  %213 = load ptr, ptr %212, align 8, !tbaa !229
  %214 = icmp eq ptr %213, null
  br i1 %214, label %344, label %215

215:                                              ; preds = %210
  %216 = load ptr, ptr %189, align 8, !tbaa !567
  %217 = getelementptr inbounds %struct.bAnimListElem, ptr %193, i64 0, i32 9
  %218 = load ptr, ptr %217, align 8, !tbaa !547
  %219 = load ptr, ptr %198, align 8, !tbaa !227
  %220 = call float @ANIM_unit_mapping_get_factor(ptr noundef %216, ptr noundef %218, ptr noundef %219, i16 noundef signext %31) #22
  %221 = getelementptr inbounds %struct.FCurve, ptr %199, i64 0, i32 7
  %222 = load i32, ptr %221, align 8, !tbaa !231
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %340, label %224

224:                                              ; preds = %215
  %225 = load ptr, ptr %212, align 8, !tbaa !229
  br label %226

226:                                              ; preds = %224, %332
  %227 = phi ptr [ %335, %332 ], [ %194, %224 ]
  %228 = phi ptr [ %334, %332 ], [ %195, %224 ]
  %229 = phi ptr [ %333, %332 ], [ %196, %224 ]
  %230 = phi ptr [ %337, %332 ], [ %225, %224 ]
  %231 = phi i32 [ %336, %332 ], [ 0, %224 ]
  %232 = load i8, ptr %54, align 8, !tbaa !295
  %233 = getelementptr inbounds [3 x [3 x float]], ptr %230, i64 0, i64 1
  %234 = load float, ptr %233, align 4, !tbaa !123
  %235 = call fastcc zeroext i8 @FrameOnMouseSide(i8 noundef zeroext %232, float noundef %234, float noundef %211) #23, !range !542
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %332, label %237

237:                                              ; preds = %226
  %238 = getelementptr inbounds %struct.BezTriple, ptr %230, i64 0, i32 8
  %239 = load i8, ptr %238, align 4, !tbaa !368
  %240 = and i8 %239, 1
  br i1 %24, label %241, label %248

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.BezTriple, ptr %230, i64 0, i32 7
  %243 = load i8, ptr %242, align 1, !tbaa !369
  %244 = and i8 %243, 1
  %245 = getelementptr inbounds %struct.BezTriple, ptr %230, i64 0, i32 9
  %246 = load i8, ptr %245, align 1, !tbaa !370
  %247 = and i8 %246, 1
  br label %248

248:                                              ; preds = %237, %241
  %249 = phi i8 [ %244, %241 ], [ %240, %237 ]
  %250 = phi i8 [ %247, %241 ], [ %240, %237 ]
  %251 = icmp ne i8 %240, 0
  %252 = select i1 %190, i1 %251, i1 false
  br i1 %252, label %278, label %253

253:                                              ; preds = %248
  %254 = icmp eq i8 %249, 0
  br i1 %254, label %261, label %255

255:                                              ; preds = %253
  %256 = call fastcc ptr @initTransDataCurveHandles(ptr noundef %227, ptr noundef nonnull %230) #23
  %257 = getelementptr inbounds %struct.TransData, ptr %227, i64 1
  %258 = getelementptr inbounds %struct.TransData2D, ptr %228, i64 1
  %259 = getelementptr inbounds %struct.TransDataGraph, ptr %229, i64 1
  call fastcc void @bezt_to_transdata(ptr noundef %227, ptr noundef %228, ptr noundef %229, ptr noundef %197, ptr noundef nonnull %230, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext %204, ptr noundef nonnull %5, ptr noundef nonnull %6, float noundef %220) #23
  %260 = icmp eq i8 %250, 0
  br i1 %260, label %278, label %263

261:                                              ; preds = %253
  %262 = icmp eq i8 %250, 0
  br i1 %262, label %278, label %265

263:                                              ; preds = %255
  %264 = icmp eq ptr %256, null
  br i1 %264, label %265, label %270

265:                                              ; preds = %261, %263
  %266 = phi ptr [ %259, %263 ], [ %229, %261 ]
  %267 = phi ptr [ %258, %263 ], [ %228, %261 ]
  %268 = phi ptr [ %257, %263 ], [ %227, %261 ]
  %269 = call fastcc ptr @initTransDataCurveHandles(ptr noundef %268, ptr noundef nonnull %230) #23
  br label %270

270:                                              ; preds = %265, %263
  %271 = phi ptr [ %266, %265 ], [ %259, %263 ]
  %272 = phi ptr [ %267, %265 ], [ %258, %263 ]
  %273 = phi ptr [ %268, %265 ], [ %257, %263 ]
  %274 = phi ptr [ %269, %265 ], [ %256, %263 ]
  %275 = getelementptr inbounds %struct.TransData, ptr %273, i64 1
  %276 = getelementptr inbounds %struct.TransData2D, ptr %272, i64 1
  %277 = getelementptr inbounds %struct.TransDataGraph, ptr %271, i64 1
  call fastcc void @bezt_to_transdata(ptr noundef %273, ptr noundef %272, ptr noundef %271, ptr noundef %197, ptr noundef nonnull %230, i32 noundef 2, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext %204, ptr noundef nonnull %5, ptr noundef nonnull %6, float noundef %220) #23
  br label %278

278:                                              ; preds = %261, %270, %255, %248
  %279 = phi ptr [ %229, %248 ], [ %277, %270 ], [ %259, %255 ], [ %229, %261 ]
  %280 = phi ptr [ %228, %248 ], [ %276, %270 ], [ %258, %255 ], [ %228, %261 ]
  %281 = phi ptr [ %227, %248 ], [ %275, %270 ], [ %257, %255 ], [ %227, %261 ]
  %282 = phi ptr [ null, %248 ], [ %274, %270 ], [ %256, %255 ], [ null, %261 ]
  %283 = icmp eq i8 %240, 0
  %284 = or i1 %191, %283
  br i1 %284, label %311, label %285

285:                                              ; preds = %278
  br i1 %190, label %286, label %298

286:                                              ; preds = %285
  %287 = icmp eq i8 %249, 0
  br i1 %287, label %292, label %288

288:                                              ; preds = %286
  %289 = getelementptr inbounds %struct.TransData, ptr %281, i64 0, i32 16
  %290 = load i32, ptr %289, align 8, !tbaa !49
  %291 = or i32 %290, 131072
  store i32 %291, ptr %289, align 8, !tbaa !49
  br label %292

292:                                              ; preds = %288, %286
  %293 = icmp eq i8 %250, 0
  br i1 %293, label %298, label %294

294:                                              ; preds = %292
  %295 = getelementptr inbounds %struct.TransData, ptr %281, i64 0, i32 16
  %296 = load i32, ptr %295, align 8, !tbaa !49
  %297 = or i32 %296, 262144
  store i32 %297, ptr %295, align 8, !tbaa !49
  br label %298

298:                                              ; preds = %292, %294, %285
  %299 = icmp eq i8 %249, 0
  %300 = icmp eq i8 %250, 0
  %301 = select i1 %299, i1 true, i1 %300
  %302 = icmp eq ptr %282, null
  %303 = and i1 %301, %302
  br i1 %303, label %304, label %306

304:                                              ; preds = %298
  %305 = call fastcc ptr @initTransDataCurveHandles(ptr noundef %281, ptr noundef nonnull %230) #23
  br label %306

306:                                              ; preds = %304, %298
  %307 = phi ptr [ %305, %304 ], [ %282, %298 ]
  %308 = getelementptr inbounds %struct.TransData, ptr %281, i64 1
  %309 = getelementptr inbounds %struct.TransData2D, ptr %280, i64 1
  %310 = getelementptr inbounds %struct.TransDataGraph, ptr %279, i64 1
  call fastcc void @bezt_to_transdata(ptr noundef %281, ptr noundef %280, ptr noundef %279, ptr noundef %197, ptr noundef nonnull %230, i32 noundef 1, i8 noundef zeroext %240, i8 noundef zeroext 0, i8 noundef zeroext %204, ptr noundef nonnull %5, ptr noundef nonnull %6, float noundef %220) #23
  br label %311

311:                                              ; preds = %306, %278
  %312 = phi ptr [ %279, %278 ], [ %310, %306 ]
  %313 = phi ptr [ %280, %278 ], [ %309, %306 ]
  %314 = phi ptr [ %281, %278 ], [ %308, %306 ]
  %315 = phi ptr [ %282, %278 ], [ %307, %306 ]
  %316 = getelementptr inbounds %struct.BezTriple, ptr %230, i64 0, i32 5
  %317 = load i8, ptr %316, align 1, !tbaa !568
  switch i8 %317, label %332 [
    i8 1, label %318
    i8 4, label %318
  ]

318:                                              ; preds = %311, %311
  %319 = getelementptr inbounds %struct.BezTriple, ptr %230, i64 0, i32 6
  %320 = load i8, ptr %319, align 2, !tbaa !569
  switch i8 %320, label %332 [
    i8 1, label %321
    i8 4, label %321
  ]

321:                                              ; preds = %318, %318
  %322 = load i32, ptr %1, align 8, !tbaa !192
  %323 = and i32 %322, -2
  %324 = icmp eq i32 %323, 2
  br i1 %324, label %325, label %332

325:                                              ; preds = %321
  %326 = icmp ne ptr %315, null
  %327 = icmp ne i8 %249, 0
  %328 = select i1 %326, i1 %327, i1 false
  %329 = icmp ne i8 %250, 0
  %330 = select i1 %328, i1 %329, i1 false
  br i1 %330, label %331, label %332

331:                                              ; preds = %325
  store i8 3, ptr %316, align 1, !tbaa !568
  store i8 3, ptr %319, align 2, !tbaa !569
  br label %332

332:                                              ; preds = %321, %331, %325, %311, %318, %226
  %333 = phi ptr [ %229, %226 ], [ %312, %321 ], [ %312, %318 ], [ %312, %311 ], [ %312, %325 ], [ %312, %331 ]
  %334 = phi ptr [ %228, %226 ], [ %313, %321 ], [ %313, %318 ], [ %313, %311 ], [ %313, %325 ], [ %313, %331 ]
  %335 = phi ptr [ %227, %226 ], [ %314, %321 ], [ %314, %318 ], [ %314, %311 ], [ %314, %325 ], [ %314, %331 ]
  %336 = add nuw nsw i32 %231, 1
  %337 = getelementptr inbounds %struct.BezTriple, ptr %230, i64 1
  %338 = load i32, ptr %221, align 8, !tbaa !231
  %339 = icmp ult i32 %336, %338
  br i1 %339, label %226, label %340, !llvm.loop !570

340:                                              ; preds = %332, %215
  %341 = phi ptr [ %196, %215 ], [ %333, %332 ]
  %342 = phi ptr [ %195, %215 ], [ %334, %332 ]
  %343 = phi ptr [ %194, %215 ], [ %335, %332 ]
  call void @testhandles_fcurve(ptr noundef nonnull %199, i8 noundef zeroext %25) #22
  br label %344

344:                                              ; preds = %210, %340
  %345 = phi ptr [ %341, %340 ], [ %196, %210 ]
  %346 = phi ptr [ %342, %340 ], [ %195, %210 ]
  %347 = phi ptr [ %343, %340 ], [ %194, %210 ]
  %348 = load ptr, ptr %193, align 8, !tbaa !64
  %349 = icmp eq ptr %348, null
  br i1 %349, label %350, label %192, !llvm.loop !571

350:                                              ; preds = %344, %184, %140, %52
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #22
  br label %351

351:                                              ; preds = %350, %2
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @createTransNodeData(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !572 {
  %2 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !169
  %3 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !173
  %4 = sitofp i32 %3 to float
  %5 = fmul float %2, %4
  %6 = fdiv float %5, 7.200000e+01
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %8 = load ptr, ptr %7, align 8, !tbaa !179
  %9 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !203
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  store i32 0, ptr %11, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.SpaceNode, ptr %10, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !297
  %14 = icmp eq ptr %13, null
  br i1 %14, label %75, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !53
  %18 = and i32 %17, -33560577
  store i32 %18, ptr %16, align 4, !tbaa !53
  %19 = getelementptr inbounds %struct.bNodeTree, ptr %13, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  %21 = icmp eq ptr %20, null
  br i1 %21, label %44, label %22

22:                                               ; preds = %15, %37
  %23 = phi i32 [ %38, %37 ], [ 0, %15 ]
  %24 = phi ptr [ %39, %37 ], [ %20, %15 ]
  %25 = getelementptr inbounds %struct.bNode, ptr %24, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !349
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %22
  %30 = tail call fastcc zeroext i8 @is_node_parent_select(ptr noundef nonnull %24) #23, !range !542
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = or i32 %26, 8192
  store i32 %33, ptr %25, align 8, !tbaa !349
  %34 = add nsw i32 %23, 1
  store i32 %34, ptr %11, align 8, !tbaa !34
  br label %37

35:                                               ; preds = %29, %22
  %36 = and i32 %26, -8193
  store i32 %36, ptr %25, align 8, !tbaa !349
  br label %37

37:                                               ; preds = %32, %35
  %38 = phi i32 [ %34, %32 ], [ %23, %35 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !64
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %22, !llvm.loop !573

41:                                               ; preds = %37
  %42 = sext i32 %38 to i64
  %43 = mul nsw i64 %42, 224
  br label %44

44:                                               ; preds = %41, %15
  %45 = phi i64 [ %43, %41 ], [ 0, %15 ]
  %46 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %47 = tail call ptr %46(i64 noundef %45, ptr noundef nonnull @.str.38) #22
  %48 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  store ptr %47, ptr %48, align 8, !tbaa !48
  %49 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %50 = load i32, ptr %11, align 8, !tbaa !34
  %51 = sext i32 %50 to i64
  %52 = mul nsw i64 %51, 56
  %53 = tail call ptr %49(i64 noundef %52, ptr noundef nonnull @.str.39) #22
  %54 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 12
  store ptr %53, ptr %54, align 8, !tbaa !174
  %55 = load ptr, ptr %12, align 8, !tbaa !297
  %56 = getelementptr inbounds %struct.bNodeTree, ptr %55, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !64
  %58 = icmp eq ptr %57, null
  br i1 %58, label %75, label %59

59:                                               ; preds = %44, %70
  %60 = phi ptr [ %73, %70 ], [ %57, %44 ]
  %61 = phi ptr [ %72, %70 ], [ %47, %44 ]
  %62 = phi ptr [ %71, %70 ], [ %53, %44 ]
  %63 = getelementptr inbounds %struct.bNode, ptr %60, i64 0, i32 7
  %64 = load i32, ptr %63, align 8, !tbaa !349
  %65 = and i32 %64, 8192
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.TransData, ptr %61, i64 1
  %69 = getelementptr inbounds %struct.TransData2D, ptr %62, i64 1
  tail call fastcc void @NodeToTransData(ptr noundef %61, ptr noundef %62, ptr noundef nonnull %60, float noundef %6) #23
  br label %70

70:                                               ; preds = %59, %67
  %71 = phi ptr [ %69, %67 ], [ %62, %59 ]
  %72 = phi ptr [ %68, %67 ], [ %61, %59 ]
  %73 = load ptr, ptr %60, align 8, !tbaa !64
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %59, !llvm.loop !574

75:                                               ; preds = %70, %44, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @createTransTrackingData(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !PGOFuncName !575 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #22
  %6 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #22
  %7 = tail call ptr @ED_space_clip_get_clip(ptr noundef %6) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  %8 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 0, ptr %8, align 8, !tbaa !34
  %9 = icmp eq ptr %7, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.SpaceClip, ptr %6, i64 0, i32 9
  call void @BKE_movieclip_get_size(ptr noundef nonnull %7, ptr noundef nonnull %11, ptr noundef nonnull %3, ptr noundef nonnull %4) #22
  %12 = load i32, ptr %3, align 4, !tbaa !58
  %13 = icmp eq i32 %12, 0
  %14 = load i32, ptr %4, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 8
  %19 = load i16, ptr %18, align 2, !tbaa !454
  %20 = icmp eq i16 %19, 7
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  call fastcc void @createTransTrackingCurvesData(ptr noundef %0, ptr noundef nonnull %1) #23
  br label %23

22:                                               ; preds = %17
  call fastcc void @createTransTrackingTracksData(ptr noundef %0, ptr noundef nonnull %1) #23
  br label %23

23:                                               ; preds = %21, %22, %10, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @createTransEditVerts(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !576 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %13 = load ptr, ptr %12, align 8, !tbaa !103
  %14 = tail call ptr @BKE_editmesh_from_object(ptr noundef %13) #22
  %15 = load ptr, ptr %12, align 8, !tbaa !103
  %16 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !65
  %18 = load ptr, ptr %14, align 8, !tbaa !336
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  store ptr null, ptr %6, align 8, !tbaa !64
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !53
  %21 = and i32 %20, 2048
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %20, 33560576
  %24 = select i1 %22, i32 0, i32 %23
  %25 = getelementptr inbounds %struct.Mesh, ptr %17, i64 0, i32 46
  %26 = load i8, ptr %25, align 1, !tbaa !577
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #24
  store ptr null, ptr %8, align 8, !tbaa !64
  %27 = and i32 %20, 524288
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %1
  %30 = lshr i8 %26, 4
  %31 = and i8 %30, 1
  %32 = zext i1 %22 to i8
  tail call void @EDBM_verts_mirror_cache_begin(ptr noundef nonnull %14, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext %32, i8 noundef zeroext %31) #22
  br label %33

33:                                               ; preds = %29, %1
  %34 = getelementptr inbounds %struct.BMEditMesh, ptr %14, i64 0, i32 12
  %35 = load i16, ptr %34, align 4, !tbaa !580
  %36 = zext i16 %35 to i32
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.BMesh, ptr %18, i64 0, i32 4
  %41 = load i32, ptr %40, align 8, !tbaa !581
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %340, label %65

43:                                               ; preds = %33
  %44 = and i32 %36, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.BMesh, ptr %18, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !581
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %340, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.BMesh, ptr %18, i64 0, i32 5
  %52 = load i32, ptr %51, align 4, !tbaa !583
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %340, label %65

54:                                               ; preds = %43
  %55 = and i32 %36, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.BMesh, ptr %18, i64 0, i32 4
  %59 = load i32, ptr %58, align 8, !tbaa !581
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %340, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.BMesh, ptr %18, i64 0, i32 6
  %63 = load i32, ptr %62, align 8, !tbaa !584
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %340, label %65

65:                                               ; preds = %50, %54, %61, %39
  %66 = load i32, ptr %0, align 8, !tbaa !192
  %67 = icmp eq i32 %66, 26
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load ptr, ptr %12, align 8, !tbaa !103
  %70 = tail call ptr @BKE_mesh_from_object(ptr noundef %69) #22
  tail call void @BM_mesh_cd_flag_ensure(ptr noundef %18, ptr noundef %70, i8 noundef zeroext 1) #22
  %71 = getelementptr inbounds %struct.BMesh, ptr %18, i64 0, i32 24
  %72 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %71, i32 noundef 29) #22
  br label %73

73:                                               ; preds = %68, %65
  %74 = phi i32 [ %72, %68 ], [ -1, %65 ]
  %75 = icmp eq i32 %24, 0
  br i1 %75, label %101, label %76

76:                                               ; preds = %73
  %77 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %18, i8 noundef zeroext 1, ptr noundef null) #23
  %78 = icmp eq ptr %77, null
  br i1 %78, label %88, label %79

79:                                               ; preds = %76, %79
  %80 = phi ptr [ %86, %79 ], [ %77, %76 ]
  %81 = phi i32 [ %85, %79 ], [ 0, %76 ]
  %82 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %80, i8 noundef zeroext 2) #23, !range !466
  %83 = icmp eq i8 %82, 0
  %84 = zext i1 %83 to i32
  %85 = add i32 %81, %84
  %86 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #23
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %79, !llvm.loop !585

88:                                               ; preds = %79, %76
  %89 = phi i32 [ 0, %76 ], [ %85, %79 ]
  %90 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  store i32 %89, ptr %90, align 8, !tbaa !34
  %91 = and i32 %24, 4096
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %88
  %94 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !64
  %95 = load ptr, ptr %14, align 8, !tbaa !336
  %96 = load i32, ptr %95, align 8, !tbaa !586
  %97 = sext i32 %96 to i64
  %98 = shl nsw i64 %97, 2
  %99 = call ptr %94(i64 noundef %98, ptr noundef nonnull @.str.43) #22
  %100 = load i32, ptr %90, align 8, !tbaa !34
  br label %105

101:                                              ; preds = %73
  %102 = getelementptr inbounds %struct.BMesh, ptr %18, i64 0, i32 4
  %103 = load i32, ptr %102, align 8, !tbaa !581
  %104 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  store i32 %103, ptr %104, align 8, !tbaa !34
  br label %105

105:                                              ; preds = %88, %93, %101
  %106 = phi i32 [ %103, %101 ], [ %100, %93 ], [ %89, %88 ]
  %107 = phi ptr [ null, %101 ], [ %99, %93 ], [ null, %88 ]
  %108 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %109 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %110 = sext i32 %106 to i64
  %111 = mul nsw i64 %110, 224
  %112 = call ptr %108(i64 noundef %111, ptr noundef nonnull @.str.44) #22
  %113 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  store ptr %112, ptr %113, align 8, !tbaa !48
  %114 = load i32, ptr %0, align 8, !tbaa !192
  switch i32 %114, label %122 [
    i32 4, label %115
    i32 8, label %115
  ]

115:                                              ; preds = %105, %105
  %116 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %117 = load i32, ptr %109, align 8, !tbaa !34
  %118 = sext i32 %117 to i64
  %119 = mul nsw i64 %118, 384
  %120 = call ptr %116(i64 noundef %119, ptr noundef nonnull @.str.45) #22
  %121 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 11
  store ptr %120, ptr %121, align 8, !tbaa !449
  br label %122

122:                                              ; preds = %105, %115
  %123 = phi ptr [ %120, %115 ], [ null, %105 ]
  %124 = load ptr, ptr %12, align 8, !tbaa !103
  %125 = getelementptr inbounds %struct.Object, ptr %124, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %3, ptr noundef nonnull %125) #22
  call void @pseudoinverse_m3_m3(ptr noundef nonnull %4, ptr noundef nonnull %3, float noundef 0x3E45798EE0000000) #22
  %126 = and i32 %24, 4096
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %122
  %129 = load ptr, ptr %14, align 8, !tbaa !336
  call fastcc void @editmesh_set_connectivity_distance(ptr noundef %129, ptr noundef nonnull %3, ptr noundef %107) #23
  br label %130

130:                                              ; preds = %128, %122
  %131 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 32
  %132 = load i16, ptr %131, align 2, !tbaa !316
  %133 = icmp eq i16 %132, 2
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = call fastcc ptr @editmesh_islands_info_calc(ptr noundef nonnull %14, ptr noundef nonnull %7, ptr noundef nonnull %8) #23
  br label %136

136:                                              ; preds = %134, %130
  %137 = phi ptr [ %135, %134 ], [ null, %130 ]
  %138 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %139 = load ptr, ptr %138, align 8, !tbaa !124
  %140 = load ptr, ptr %12, align 8, !tbaa !103
  %141 = call i32 @modifiers_getCageIndex(ptr noundef %139, ptr noundef %140, ptr noundef null, i8 noundef zeroext 1) #22
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %174, label %143

143:                                              ; preds = %136
  %144 = load ptr, ptr %138, align 8, !tbaa !124
  %145 = load ptr, ptr %12, align 8, !tbaa !103
  %146 = call zeroext i8 @modifiers_isCorrectableDeformed(ptr noundef %144, ptr noundef %145) #22
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %168, label %148

148:                                              ; preds = %143
  %149 = load ptr, ptr %138, align 8, !tbaa !124
  %150 = load ptr, ptr %12, align 8, !tbaa !103
  %151 = call i32 @editbmesh_get_first_deform_matrices(ptr noundef %149, ptr noundef %150, ptr noundef nonnull %14, ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %168

153:                                              ; preds = %148
  %154 = load ptr, ptr %138, align 8, !tbaa !124
  %155 = load ptr, ptr %12, align 8, !tbaa !103
  %156 = call ptr @BKE_crazyspace_get_mapped_editverts(ptr noundef %154, ptr noundef %155) #22
  %157 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !64
  %158 = load ptr, ptr %14, align 8, !tbaa !336
  %159 = load i32, ptr %158, align 8, !tbaa !586
  %160 = sext i32 %159 to i64
  %161 = shl nsw i64 %160, 4
  %162 = call ptr %157(i64 noundef %161, ptr noundef nonnull @.str.46) #22
  %163 = load ptr, ptr %6, align 8, !tbaa !64
  %164 = zext i1 %75 to i8
  call void @BKE_crazyspace_set_quats_editmesh(ptr noundef nonnull %14, ptr noundef %163, ptr noundef %156, ptr noundef %162, i8 noundef zeroext %164) #22
  %165 = icmp eq ptr %156, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %153
  %167 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  call void %167(ptr noundef nonnull %156) #22
  br label %168

168:                                              ; preds = %143, %153, %166, %148
  %169 = phi ptr [ %162, %166 ], [ %162, %153 ], [ null, %148 ], [ null, %143 ]
  %170 = load ptr, ptr %6, align 8, !tbaa !64
  %171 = icmp eq ptr %170, null
  br i1 %171, label %174, label %172

172:                                              ; preds = %168
  %173 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  call void %173(ptr noundef nonnull %170) #22
  br label %174

174:                                              ; preds = %168, %172, %136
  %175 = phi ptr [ null, %136 ], [ %169, %172 ], [ %169, %168 ]
  br i1 %28, label %194, label %176

176:                                              ; preds = %174
  %177 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %18, i8 noundef zeroext 1, ptr noundef null) #23
  %178 = icmp eq ptr %177, null
  br i1 %178, label %194, label %179

179:                                              ; preds = %176, %191
  %180 = phi ptr [ %192, %191 ], [ %177, %176 ]
  %181 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %180, i8 noundef zeroext 1) #23, !range !466
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %191, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.BMVert, ptr %180, i64 0, i32 2
  %185 = load float, ptr %184, align 8, !tbaa !123
  %186 = fcmp une float %185, 0.000000e+00
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = fcmp olt float %185, 0.000000e+00
  br i1 %188, label %189, label %194

189:                                              ; preds = %187
  %190 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 46
  store i16 -1, ptr %190, align 8, !tbaa !587
  br label %194

191:                                              ; preds = %179, %183
  %192 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #23
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %179, !llvm.loop !588

194:                                              ; preds = %191, %176, %189, %187, %174
  %195 = phi i1 [ false, %189 ], [ true, %187 ], [ false, %174 ], [ true, %176 ], [ true, %191 ]
  %196 = phi i1 [ true, %189 ], [ false, %187 ], [ false, %174 ], [ false, %176 ], [ false, %191 ]
  %197 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %18, i8 noundef zeroext 1, ptr noundef null) #23
  %198 = icmp eq ptr %197, null
  br i1 %198, label %306, label %199

199:                                              ; preds = %194
  %200 = icmp eq ptr %137, null
  %201 = icmp eq i32 %74, -1
  %202 = sext i32 %74 to i64
  %203 = icmp eq ptr %175, null
  br label %204

204:                                              ; preds = %199, %300
  %205 = phi i64 [ 0, %199 ], [ %304, %300 ]
  %206 = phi ptr [ %112, %199 ], [ %302, %300 ]
  %207 = phi ptr [ %123, %199 ], [ %301, %300 ]
  %208 = phi ptr [ %197, %199 ], [ %303, %300 ]
  %209 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %208, i8 noundef zeroext 2) #23, !range !466
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %211, label %300

211:                                              ; preds = %204
  br i1 %75, label %212, label %215

212:                                              ; preds = %211
  %213 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %208, i8 noundef zeroext 1) #23, !range !466
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %300, label %215

215:                                              ; preds = %212, %211
  br i1 %200, label %224, label %216

216:                                              ; preds = %215
  %217 = load ptr, ptr %8, align 8, !tbaa !64
  %218 = getelementptr inbounds i32, ptr %217, i64 %205
  %219 = load i32, ptr %218, align 4, !tbaa !58
  %220 = icmp eq i32 %219, -1
  br i1 %220, label %224, label %221

221:                                              ; preds = %216
  %222 = sext i32 %219 to i64
  %223 = getelementptr inbounds %struct.TransIslandData, ptr %137, i64 %222
  br label %224

224:                                              ; preds = %215, %216, %221
  %225 = phi ptr [ %223, %221 ], [ null, %216 ], [ null, %215 ]
  br i1 %201, label %229, label %226

226:                                              ; preds = %224
  %227 = load ptr, ptr %208, align 8, !tbaa !589
  %228 = getelementptr inbounds i8, ptr %227, i64 %202
  br label %229

229:                                              ; preds = %224, %226
  %230 = phi ptr [ %228, %226 ], [ null, %224 ]
  call fastcc void @VertsToTransData(ptr noundef nonnull %0, ptr noundef %206, ptr noundef %207, ptr noundef nonnull %14, ptr noundef nonnull %208, ptr noundef %230, ptr noundef %225) #23
  %231 = icmp eq ptr %207, null
  %232 = getelementptr inbounds %struct.TransDataExtension, ptr %207, i64 1
  %233 = select i1 %231, ptr null, ptr %232
  %234 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %208, i8 noundef zeroext 1) #23, !range !466
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %240, label %236

236:                                              ; preds = %229
  %237 = getelementptr inbounds %struct.TransData, ptr %206, i64 0, i32 16
  %238 = load i32, ptr %237, align 8, !tbaa !49
  %239 = or i32 %238, 1
  store i32 %239, ptr %237, align 8, !tbaa !49
  br label %240

240:                                              ; preds = %236, %229
  br i1 %75, label %251, label %241

241:                                              ; preds = %240
  br i1 %127, label %245, label %242

242:                                              ; preds = %241
  %243 = getelementptr inbounds float, ptr %107, i64 %205
  %244 = load float, ptr %243, align 4, !tbaa !123
  br label %249

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.TransData, ptr %206, i64 0, i32 16
  %247 = load i32, ptr %246, align 8, !tbaa !49
  %248 = or i32 %247, 16
  store i32 %248, ptr %246, align 8, !tbaa !49
  br label %249

249:                                              ; preds = %245, %242
  %250 = phi float [ %244, %242 ], [ 0x47EFFFFFE0000000, %245 ]
  store float %250, ptr %206, align 8, !tbaa !55
  br label %251

251:                                              ; preds = %249, %240
  %252 = load ptr, ptr %5, align 8, !tbaa !64
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %259

254:                                              ; preds = %251
  br i1 %203, label %278, label %255

255:                                              ; preds = %254
  %256 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %208, i8 noundef zeroext 16) #23, !range !466
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %278, label %258

258:                                              ; preds = %255
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #24
  br label %260

259:                                              ; preds = %251
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #24
  br i1 %203, label %272, label %260

260:                                              ; preds = %258, %259
  %261 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %208, i8 noundef zeroext 16) #23, !range !466
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %272, label %263

263:                                              ; preds = %260
  %264 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %208) #23
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [4 x float], ptr %175, i64 %265
  call void @quat_to_mat3(ptr noundef nonnull %10, ptr noundef nonnull %266) #22
  %267 = load ptr, ptr %5, align 8, !tbaa !64
  %268 = icmp eq ptr %267, null
  br i1 %268, label %271, label %269

269:                                              ; preds = %263
  %270 = getelementptr inbounds [3 x [3 x float]], ptr %267, i64 %205
  call void @_va_mul_m3_series_4(ptr noundef nonnull %9, ptr noundef nonnull %270, ptr noundef nonnull %10, ptr noundef nonnull %3) #22
  br label %274

271:                                              ; preds = %263
  call void @mul_m3_m3m3(ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef nonnull %10) #22
  br label %274

272:                                              ; preds = %260, %259
  %273 = getelementptr inbounds [3 x [3 x float]], ptr %252, i64 %205
  call void @mul_m3_m3m3(ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef %273) #22
  br label %274

274:                                              ; preds = %269, %271, %272
  %275 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %11, ptr noundef nonnull %9) #22
  %276 = getelementptr inbounds %struct.TransData, ptr %206, i64 0, i32 9
  call void @copy_m3_m3(ptr noundef nonnull %276, ptr noundef nonnull %11) #22
  %277 = getelementptr inbounds %struct.TransData, ptr %206, i64 0, i32 8
  call void @copy_m3_m3(ptr noundef nonnull %277, ptr noundef nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #24
  br label %281

278:                                              ; preds = %255, %254
  %279 = getelementptr inbounds %struct.TransData, ptr %206, i64 0, i32 9
  call void @copy_m3_m3(ptr noundef nonnull %279, ptr noundef nonnull %4) #22
  %280 = getelementptr inbounds %struct.TransData, ptr %206, i64 0, i32 8
  call void @copy_m3_m3(ptr noundef nonnull %280, ptr noundef nonnull %3) #22
  br label %281

281:                                              ; preds = %278, %274
  br i1 %195, label %282, label %286

282:                                              ; preds = %281
  %283 = getelementptr inbounds %struct.TransData, ptr %206, i64 0, i32 4
  %284 = load float, ptr %283, align 8, !tbaa !123
  %285 = fcmp ogt float %284, 0.000000e+00
  br i1 %285, label %291, label %286

286:                                              ; preds = %282, %281
  br i1 %196, label %287, label %298

287:                                              ; preds = %286
  %288 = getelementptr inbounds %struct.TransData, ptr %206, i64 0, i32 4
  %289 = load float, ptr %288, align 8, !tbaa !123
  %290 = fcmp olt float %289, 0.000000e+00
  br i1 %290, label %291, label %298

291:                                              ; preds = %287, %282
  %292 = call ptr @EDBM_verts_mirror_get(ptr noundef nonnull %14, ptr noundef nonnull %208) #22
  %293 = icmp eq ptr %292, null
  %294 = icmp eq ptr %292, %208
  %295 = or i1 %293, %294
  br i1 %295, label %298, label %296

296:                                              ; preds = %291
  %297 = getelementptr inbounds %struct.TransData, ptr %206, i64 0, i32 15
  store ptr %292, ptr %297, align 8, !tbaa !175
  br label %298

298:                                              ; preds = %291, %296, %287, %286
  %299 = getelementptr inbounds %struct.TransData, ptr %206, i64 1
  br label %300

300:                                              ; preds = %204, %298, %212
  %301 = phi ptr [ %207, %204 ], [ %233, %298 ], [ %207, %212 ]
  %302 = phi ptr [ %206, %204 ], [ %299, %298 ], [ %206, %212 ]
  %303 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #23
  %304 = add nuw i64 %205, 1
  %305 = icmp eq ptr %303, null
  br i1 %305, label %306, label %204, !llvm.loop !591

306:                                              ; preds = %300, %194
  %307 = icmp eq ptr %137, null
  br i1 %307, label %312, label %308

308:                                              ; preds = %306
  %309 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  call void %309(ptr noundef nonnull %137) #22
  %310 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  %311 = load ptr, ptr %8, align 8, !tbaa !64
  call void %310(ptr noundef %311) #22
  br label %312

312:                                              ; preds = %308, %306
  br i1 %28, label %336, label %313

313:                                              ; preds = %312
  %314 = load i32, ptr %109, align 8, !tbaa !34
  %315 = icmp sgt i32 %314, 0
  br i1 %315, label %316, label %336

316:                                              ; preds = %313
  %317 = load ptr, ptr %113, align 8, !tbaa !48
  br label %318

318:                                              ; preds = %316, %332
  %319 = phi ptr [ %334, %332 ], [ %317, %316 ]
  %320 = phi i32 [ %333, %332 ], [ 0, %316 ]
  %321 = getelementptr inbounds %struct.TransData, ptr %319, i64 0, i32 3
  %322 = load ptr, ptr %321, align 8, !tbaa !215
  %323 = load float, ptr %322, align 4, !tbaa !123
  %324 = fcmp olt float %323, 0.000000e+00
  %325 = fneg float %323
  %326 = select i1 %324, float %325, float %323
  %327 = fcmp ugt float %326, 0x3EE4F8B580000000
  br i1 %327, label %332, label %328

328:                                              ; preds = %318
  %329 = getelementptr inbounds %struct.TransData, ptr %319, i64 0, i32 16
  %330 = load i32, ptr %329, align 8, !tbaa !49
  %331 = or i32 %330, 65536
  store i32 %331, ptr %329, align 8, !tbaa !49
  br label %332

332:                                              ; preds = %318, %328
  %333 = add nuw nsw i32 %320, 1
  %334 = getelementptr inbounds %struct.TransData, ptr %319, i64 1
  %335 = icmp eq i32 %333, %314
  br i1 %335, label %336, label %318, !llvm.loop !592

336:                                              ; preds = %332, %313, %312
  %337 = icmp eq ptr %175, null
  br i1 %337, label %340, label %338

338:                                              ; preds = %336
  %339 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  call void %339(ptr noundef nonnull %175) #22
  br label %340

340:                                              ; preds = %61, %57, %50, %46, %39, %338, %336
  %341 = phi ptr [ %107, %338 ], [ %107, %336 ], [ null, %39 ], [ null, %46 ], [ null, %50 ], [ null, %57 ], [ null, %61 ]
  %342 = load ptr, ptr %5, align 8, !tbaa !64
  %343 = icmp eq ptr %342, null
  br i1 %343, label %346, label %344

344:                                              ; preds = %340
  %345 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  call void %345(ptr noundef nonnull %342) #22
  br label %346

346:                                              ; preds = %344, %340
  %347 = icmp eq ptr %341, null
  br i1 %347, label %350, label %348

348:                                              ; preds = %346
  %349 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  call void %349(ptr noundef nonnull %341) #22
  br label %350

350:                                              ; preds = %348, %346
  %351 = load i32, ptr %19, align 4, !tbaa !53
  %352 = and i32 %351, 524288
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %355, label %354

354:                                              ; preds = %350
  call void @EDBM_verts_mirror_cache_end(ptr noundef nonnull %14) #22
  br label %355

355:                                              ; preds = %354, %350
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @createTransCurveVerts(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !593 {
  %2 = alloca [3 x [3 x float]], align 16
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %8 = load ptr, ptr %7, align 8, !tbaa !103
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #24
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !53
  %13 = and i32 %12, 2048
  %14 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 16
  %15 = load i16, ptr %14, align 8, !tbaa !594
  %16 = and i16 %15, 1
  %17 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !597
  %19 = icmp eq ptr %18, null
  br i1 %19, label %477, label %20

20:                                               ; preds = %1
  %21 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef nonnull %10) #22
  %22 = load ptr, ptr %21, align 8, !tbaa !64
  %23 = icmp eq ptr %22, null
  br i1 %23, label %477, label %24

24:                                               ; preds = %20
  %25 = lshr exact i32 %13, 11
  %26 = icmp eq i16 %16, 0
  %27 = icmp eq i32 %13, 0
  br label %28

28:                                               ; preds = %24, %113
  %29 = phi ptr [ %22, %24 ], [ %116, %113 ]
  %30 = phi i32 [ 0, %24 ], [ %115, %113 ]
  %31 = phi i32 [ 0, %24 ], [ %114, %113 ]
  %32 = getelementptr inbounds %struct.Nurb, ptr %29, i64 0, i32 2
  %33 = load i16, ptr %32, align 8, !tbaa !598
  %34 = icmp eq i16 %33, 1
  %35 = getelementptr inbounds %struct.Nurb, ptr %29, i64 0, i32 6
  %36 = load i32, ptr %35, align 8, !tbaa !600
  br i1 %34, label %37, label %84

37:                                               ; preds = %28
  %38 = icmp sgt i32 %36, 0
  br i1 %38, label %39, label %113

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.Nurb, ptr %29, i64 0, i32 18
  %41 = load ptr, ptr %40, align 8, !tbaa !601
  br label %42

42:                                               ; preds = %39, %78
  %43 = phi ptr [ %82, %78 ], [ %41, %39 ]
  %44 = phi i32 [ %80, %78 ], [ %30, %39 ]
  %45 = phi i32 [ %79, %78 ], [ %31, %39 ]
  %46 = phi i32 [ %81, %78 ], [ 0, %39 ]
  %47 = getelementptr inbounds %struct.BezTriple, ptr %43, i64 0, i32 10
  %48 = load i8, ptr %47, align 2, !tbaa !602
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %42
  br i1 %26, label %60, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.BezTriple, ptr %43, i64 0, i32 8
  %53 = load i8, ptr %52, align 4, !tbaa !368
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  %56 = add nsw i32 %44, 3
  %57 = select i1 %55, i32 %44, i32 %56
  %58 = add nsw i32 %45, 3
  %59 = select i1 %27, i32 %45, i32 %58
  br label %78

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.BezTriple, ptr %43, i64 0, i32 7
  %62 = load i8, ptr %61, align 1, !tbaa !369
  %63 = and i8 %62, 1
  %64 = zext nneg i8 %63 to i32
  %65 = add i32 %44, %64
  %66 = getelementptr inbounds %struct.BezTriple, ptr %43, i64 0, i32 8
  %67 = load i8, ptr %66, align 4, !tbaa !368
  %68 = and i8 %67, 1
  %69 = zext nneg i8 %68 to i32
  %70 = add i32 %65, %69
  %71 = getelementptr inbounds %struct.BezTriple, ptr %43, i64 0, i32 9
  %72 = load i8, ptr %71, align 1, !tbaa !370
  %73 = and i8 %72, 1
  %74 = zext nneg i8 %73 to i32
  %75 = add i32 %70, %74
  %76 = add nsw i32 %45, 3
  %77 = select i1 %27, i32 %45, i32 %76
  br label %78

78:                                               ; preds = %60, %51, %42
  %79 = phi i32 [ %45, %42 ], [ %59, %51 ], [ %77, %60 ]
  %80 = phi i32 [ %44, %42 ], [ %57, %51 ], [ %75, %60 ]
  %81 = add nuw nsw i32 %46, 1
  %82 = getelementptr inbounds %struct.BezTriple, ptr %43, i64 1
  %83 = icmp eq i32 %81, %36
  br i1 %83, label %113, label %42, !llvm.loop !603

84:                                               ; preds = %28
  %85 = getelementptr inbounds %struct.Nurb, ptr %29, i64 0, i32 7
  %86 = load i32, ptr %85, align 4, !tbaa !604
  %87 = mul nsw i32 %86, %36
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %113

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.Nurb, ptr %29, i64 0, i32 17
  %91 = load ptr, ptr %90, align 8, !tbaa !605
  br label %92

92:                                               ; preds = %89, %107
  %93 = phi i32 [ %109, %107 ], [ %30, %89 ]
  %94 = phi i32 [ %108, %107 ], [ %31, %89 ]
  %95 = phi i32 [ %110, %107 ], [ %87, %89 ]
  %96 = phi ptr [ %111, %107 ], [ %91, %89 ]
  %97 = getelementptr inbounds %struct.BPoint, ptr %96, i64 0, i32 4
  %98 = load i16, ptr %97, align 2, !tbaa !606
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %92
  %101 = add i32 %94, %25
  %102 = getelementptr inbounds %struct.BPoint, ptr %96, i64 0, i32 3
  %103 = load i16, ptr %102, align 4, !tbaa !608
  %104 = and i16 %103, 1
  %105 = zext nneg i16 %104 to i32
  %106 = add i32 %93, %105
  br label %107

107:                                              ; preds = %100, %92
  %108 = phi i32 [ %94, %92 ], [ %101, %100 ]
  %109 = phi i32 [ %93, %92 ], [ %106, %100 ]
  %110 = add nsw i32 %95, -1
  %111 = getelementptr inbounds %struct.BPoint, ptr %96, i64 1
  %112 = icmp sgt i32 %95, 1
  br i1 %112, label %92, label %113, !llvm.loop !609

113:                                              ; preds = %107, %78, %84, %37
  %114 = phi i32 [ %31, %37 ], [ %31, %84 ], [ %79, %78 ], [ %108, %107 ]
  %115 = phi i32 [ %30, %37 ], [ %30, %84 ], [ %80, %78 ], [ %109, %107 ]
  %116 = load ptr, ptr %29, align 8, !tbaa !64
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %28, !llvm.loop !610

118:                                              ; preds = %113
  %119 = icmp eq i32 %115, 0
  br i1 %119, label %477, label %120

120:                                              ; preds = %118
  %121 = icmp eq i32 %13, 0
  %122 = select i1 %121, i32 %115, i32 %114
  %123 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  store i32 %122, ptr %123, align 8
  %124 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %125 = sext i32 %122 to i64
  %126 = mul nsw i64 %125, 224
  %127 = tail call ptr %124(i64 noundef %126, ptr noundef nonnull @.str.47) #22
  %128 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  store ptr %127, ptr %128, align 8, !tbaa !48
  tail call fastcc void @transform_around_single_fallback(ptr noundef nonnull %0) #23
  %129 = load ptr, ptr %7, align 8, !tbaa !103
  %130 = getelementptr inbounds %struct.Object, ptr %129, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %2, ptr noundef nonnull %130) #22
  call void @pseudoinverse_m3_m3(ptr noundef nonnull %3, ptr noundef nonnull %2, float noundef 0x3E45798EE0000000) #22
  %131 = load ptr, ptr %21, align 8, !tbaa !64
  %132 = icmp eq ptr %131, null
  br i1 %132, label %477, label %133

133:                                              ; preds = %120
  %134 = load ptr, ptr %128, align 8, !tbaa !48
  %135 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 32
  %136 = icmp eq i16 %16, 0
  %137 = icmp ne i16 %16, 0
  %138 = trunc i16 %16 to i8
  %139 = xor i8 %138, 1
  br label %140

140:                                              ; preds = %133, %473
  %141 = phi ptr [ %131, %133 ], [ %475, %473 ]
  %142 = phi ptr [ %134, %133 ], [ %474, %473 ]
  %143 = getelementptr inbounds %struct.Nurb, ptr %141, i64 0, i32 2
  %144 = load i16, ptr %143, align 8, !tbaa !598
  %145 = icmp eq i16 %144, 1
  %146 = getelementptr inbounds %struct.Nurb, ptr %141, i64 0, i32 6
  %147 = load i32, ptr %146, align 8, !tbaa !600
  br i1 %145, label %148, label %409

148:                                              ; preds = %140
  %149 = icmp sgt i32 %147, 0
  br i1 %149, label %150, label %405

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.Nurb, ptr %141, i64 0, i32 18
  %152 = load ptr, ptr %151, align 8, !tbaa !601
  br label %153

153:                                              ; preds = %150, %392
  %154 = phi ptr [ %395, %392 ], [ %142, %150 ]
  %155 = phi ptr [ %394, %392 ], [ %142, %150 ]
  %156 = phi ptr [ %393, %392 ], [ %142, %150 ]
  %157 = phi ptr [ %397, %392 ], [ %152, %150 ]
  %158 = phi i32 [ %396, %392 ], [ 0, %150 ]
  %159 = getelementptr inbounds %struct.BezTriple, ptr %157, i64 0, i32 10
  %160 = load i8, ptr %159, align 2, !tbaa !602
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %387

162:                                              ; preds = %153
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #24
  %163 = load i16, ptr %135, align 2, !tbaa !316
  %164 = icmp eq i16 %163, 2
  br i1 %164, label %165, label %172

165:                                              ; preds = %162
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #24
  call void @BKE_nurb_bezt_calc_normal(ptr noundef nonnull %141, ptr noundef nonnull %157, ptr noundef nonnull %5) #22
  call void @BKE_nurb_bezt_calc_plane(ptr noundef nonnull %141, ptr noundef nonnull %157, ptr noundef nonnull %6) #22
  %166 = call zeroext i8 @createSpaceNormalTangent(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #23
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %170 = call zeroext i8 @invert_m3(ptr noundef nonnull %4) #22
  br label %171

171:                                              ; preds = %165, %168
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #24
  br label %172

172:                                              ; preds = %171, %162
  br i1 %121, label %173, label %193

173:                                              ; preds = %172
  %174 = getelementptr inbounds %struct.BezTriple, ptr %157, i64 0, i32 8
  %175 = load i8, ptr %174, align 4, !tbaa !368
  %176 = and i8 %175, 1
  %177 = icmp ne i8 %176, 0
  %178 = select i1 %177, i1 %137, i1 false
  br i1 %178, label %179, label %183

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct.TransData, ptr %156, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %180, ptr noundef nonnull %157) #23
  %181 = getelementptr inbounds %struct.TransData, ptr %156, i64 0, i32 3
  store ptr %157, ptr %181, align 8, !tbaa !215
  %182 = getelementptr inbounds %struct.TransData, ptr %156, i64 0, i32 7
  br label %206

183:                                              ; preds = %173
  %184 = getelementptr inbounds %struct.BezTriple, ptr %157, i64 0, i32 7
  %185 = load i8, ptr %184, align 1, !tbaa !369
  %186 = and i8 %185, 1
  %187 = icmp ne i8 %186, 0
  %188 = select i1 %187, i1 %136, i1 false
  br i1 %188, label %189, label %244

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.TransData, ptr %156, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %190, ptr noundef nonnull %157) #23
  %191 = getelementptr inbounds %struct.TransData, ptr %156, i64 0, i32 3
  store ptr %157, ptr %191, align 8, !tbaa !215
  %192 = getelementptr inbounds %struct.TransData, ptr %156, i64 0, i32 7
  br label %197

193:                                              ; preds = %172
  %194 = getelementptr inbounds %struct.TransData, ptr %156, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %194, ptr noundef nonnull %157) #23
  %195 = getelementptr inbounds %struct.TransData, ptr %156, i64 0, i32 3
  store ptr %157, ptr %195, align 8, !tbaa !215
  %196 = getelementptr inbounds %struct.TransData, ptr %156, i64 0, i32 7
  br i1 %136, label %197, label %206

197:                                              ; preds = %189, %193
  %198 = phi ptr [ %192, %189 ], [ %196, %193 ]
  %199 = load i16, ptr %135, align 2, !tbaa !316
  %200 = icmp eq i16 %199, 2
  br i1 %200, label %216, label %201

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.BezTriple, ptr %157, i64 0, i32 8
  %203 = load i8, ptr %202, align 4, !tbaa !368
  %204 = and i8 %203, 1
  %205 = icmp ne i8 %204, 0
  br label %216

206:                                              ; preds = %193, %179
  %207 = phi ptr [ %196, %193 ], [ %182, %179 ]
  %208 = getelementptr inbounds [3 x [3 x float]], ptr %157, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %207, ptr noundef nonnull %208) #23
  %209 = getelementptr inbounds %struct.BezTriple, ptr %157, i64 0, i32 8
  %210 = load i8, ptr %209, align 4, !tbaa !368
  %211 = and i8 %210, 1
  %212 = icmp eq i8 %211, 0
  %213 = getelementptr inbounds %struct.TransData, ptr %156, i64 0, i32 16
  br i1 %212, label %215, label %214

214:                                              ; preds = %206
  store i32 1, ptr %213, align 8, !tbaa !49
  br label %227

215:                                              ; preds = %206
  store i32 0, ptr %213, align 8, !tbaa !49
  br label %227

216:                                              ; preds = %197, %201
  %217 = phi i1 [ %205, %201 ], [ true, %197 ]
  %218 = zext i1 %217 to i64
  %219 = getelementptr inbounds [3 x [3 x float]], ptr %157, i64 0, i64 %218
  call fastcc void @copy_v3_v3(ptr noundef nonnull %198, ptr noundef %219) #23
  %220 = getelementptr inbounds %struct.BezTriple, ptr %157, i64 0, i32 7
  %221 = load i8, ptr %220, align 1, !tbaa !369
  %222 = and i8 %221, 1
  %223 = icmp eq i8 %222, 0
  %224 = getelementptr inbounds %struct.TransData, ptr %156, i64 0, i32 16
  br i1 %223, label %226, label %225

225:                                              ; preds = %216
  store i32 1, ptr %224, align 8, !tbaa !49
  br label %227

226:                                              ; preds = %216
  store i32 0, ptr %224, align 8, !tbaa !49
  br label %227

227:                                              ; preds = %225, %226, %214, %215
  %228 = getelementptr inbounds %struct.TransData, ptr %156, i64 0, i32 13
  store ptr null, ptr %228, align 8, !tbaa !330
  %229 = getelementptr inbounds %struct.TransData, ptr %156, i64 0, i32 5
  store ptr null, ptr %229, align 8, !tbaa !474
  %230 = call fastcc ptr @initTransDataCurveHandles(ptr noundef nonnull %156, ptr noundef nonnull %157) #23
  %231 = getelementptr inbounds %struct.TransData, ptr %156, i64 0, i32 9
  call void @copy_m3_m3(ptr noundef nonnull %231, ptr noundef nonnull %3) #22
  %232 = getelementptr inbounds %struct.TransData, ptr %156, i64 0, i32 8
  call void @copy_m3_m3(ptr noundef nonnull %232, ptr noundef nonnull %2) #22
  %233 = load i16, ptr %135, align 2, !tbaa !316
  %234 = icmp eq i16 %233, 2
  br i1 %234, label %235, label %237

235:                                              ; preds = %227
  %236 = getelementptr inbounds %struct.TransData, ptr %156, i64 0, i32 10
  call void @copy_m3_m3(ptr noundef nonnull %236, ptr noundef nonnull %4) #22
  br label %237

237:                                              ; preds = %227, %235
  %238 = getelementptr inbounds %struct.TransData, ptr %156, i64 1
  %239 = getelementptr inbounds %struct.TransData, ptr %154, i64 1
  br i1 %121, label %240, label %250

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.BezTriple, ptr %157, i64 0, i32 8
  %242 = load i8, ptr %241, align 4, !tbaa !368
  %243 = and i8 %242, 1
  br label %244

244:                                              ; preds = %240, %183
  %245 = phi i8 [ %243, %240 ], [ %176, %183 ]
  %246 = phi ptr [ %230, %240 ], [ null, %183 ]
  %247 = phi ptr [ %239, %240 ], [ %154, %183 ]
  %248 = phi ptr [ %238, %240 ], [ %156, %183 ]
  %249 = icmp eq i8 %245, 0
  br i1 %249, label %312, label %250

250:                                              ; preds = %244, %237
  %251 = phi ptr [ %246, %244 ], [ %230, %237 ]
  %252 = phi ptr [ %247, %244 ], [ %239, %237 ]
  %253 = phi ptr [ %248, %244 ], [ %238, %237 ]
  %254 = getelementptr inbounds %struct.TransData, ptr %253, i64 0, i32 4
  %255 = getelementptr inbounds [3 x [3 x float]], ptr %157, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %254, ptr noundef nonnull %255) #23
  %256 = getelementptr inbounds %struct.TransData, ptr %253, i64 0, i32 3
  store ptr %255, ptr %256, align 8, !tbaa !215
  %257 = getelementptr inbounds %struct.TransData, ptr %253, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %257, ptr noundef nonnull %255) #23
  %258 = getelementptr inbounds %struct.BezTriple, ptr %157, i64 0, i32 8
  %259 = load i8, ptr %258, align 4, !tbaa !368
  %260 = and i8 %259, 1
  %261 = zext nneg i8 %260 to i32
  %262 = getelementptr inbounds %struct.TransData, ptr %253, i64 0, i32 16
  store i32 %261, ptr %262, align 8
  %263 = getelementptr inbounds %struct.TransData, ptr %253, i64 0, i32 13
  store ptr null, ptr %263, align 8, !tbaa !330
  %264 = load i32, ptr %0, align 8, !tbaa !192
  switch i32 %264, label %275 [
    i32 16, label %265
    i32 9, label %270
  ]

265:                                              ; preds = %250
  %266 = getelementptr inbounds %struct.BezTriple, ptr %157, i64 0, i32 3
  %267 = getelementptr inbounds %struct.TransData, ptr %253, i64 0, i32 5
  store ptr %266, ptr %267, align 8, !tbaa !474
  %268 = load float, ptr %266, align 4, !tbaa !611
  %269 = getelementptr inbounds %struct.TransData, ptr %253, i64 0, i32 6
  store float %268, ptr %269, align 8, !tbaa !475
  br label %277

270:                                              ; preds = %250
  %271 = getelementptr inbounds %struct.BezTriple, ptr %157, i64 0, i32 1
  %272 = getelementptr inbounds %struct.TransData, ptr %253, i64 0, i32 5
  store ptr %271, ptr %272, align 8, !tbaa !474
  %273 = load float, ptr %271, align 4, !tbaa !612
  %274 = getelementptr inbounds %struct.TransData, ptr %253, i64 0, i32 6
  store float %273, ptr %274, align 8, !tbaa !475
  br label %277

275:                                              ; preds = %250
  %276 = getelementptr inbounds %struct.TransData, ptr %253, i64 0, i32 5
  store ptr null, ptr %276, align 8, !tbaa !474
  br label %277

277:                                              ; preds = %270, %275, %265
  %278 = getelementptr inbounds %struct.TransData, ptr %253, i64 0, i32 9
  call void @copy_m3_m3(ptr noundef nonnull %278, ptr noundef nonnull %3) #22
  %279 = getelementptr inbounds %struct.TransData, ptr %253, i64 0, i32 8
  call void @copy_m3_m3(ptr noundef nonnull %279, ptr noundef nonnull %2) #22
  %280 = load i16, ptr %135, align 2, !tbaa !316
  %281 = icmp eq i16 %280, 2
  br i1 %281, label %282, label %284

282:                                              ; preds = %277
  %283 = getelementptr inbounds %struct.TransData, ptr %253, i64 0, i32 10
  call void @copy_m3_m3(ptr noundef nonnull %283, ptr noundef nonnull %4) #22
  br label %284

284:                                              ; preds = %282, %277
  %285 = getelementptr inbounds %struct.BezTriple, ptr %157, i64 0, i32 7
  %286 = load i8, ptr %285, align 1, !tbaa !369
  %287 = and i8 %286, 1
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %289, label %298

289:                                              ; preds = %284
  %290 = getelementptr inbounds %struct.BezTriple, ptr %157, i64 0, i32 9
  %291 = load i8, ptr %290, align 1, !tbaa !370
  %292 = and i8 %291, 1
  %293 = icmp eq i8 %292, 0
  %294 = icmp eq ptr %251, null
  %295 = and i1 %294, %293
  br i1 %295, label %296, label %298

296:                                              ; preds = %289
  %297 = call fastcc ptr @initTransDataCurveHandles(ptr noundef nonnull %253, ptr noundef nonnull %157) #23
  br label %298

298:                                              ; preds = %284, %289, %296
  %299 = phi ptr [ %297, %296 ], [ %251, %289 ], [ %251, %284 ]
  %300 = getelementptr inbounds %struct.TransData, ptr %253, i64 1
  %301 = getelementptr inbounds %struct.TransData, ptr %252, i64 1
  br i1 %121, label %302, label %326

302:                                              ; preds = %298
  %303 = load i8, ptr %258, align 4, !tbaa !368
  %304 = and i8 %303, 1
  %305 = icmp ne i8 %304, 0
  %306 = select i1 %305, i1 %137, i1 false
  br i1 %306, label %307, label %312

307:                                              ; preds = %302
  %308 = getelementptr inbounds %struct.TransData, ptr %253, i64 1, i32 4
  %309 = getelementptr inbounds [3 x [3 x float]], ptr %157, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %308, ptr noundef nonnull %309) #23
  %310 = getelementptr inbounds %struct.TransData, ptr %253, i64 1, i32 3
  store ptr %309, ptr %310, align 8, !tbaa !215
  %311 = getelementptr inbounds %struct.TransData, ptr %253, i64 1, i32 7
  br label %345

312:                                              ; preds = %244, %302
  %313 = phi ptr [ %300, %302 ], [ %248, %244 ]
  %314 = phi ptr [ %301, %302 ], [ %247, %244 ]
  %315 = phi ptr [ %299, %302 ], [ %246, %244 ]
  %316 = getelementptr inbounds %struct.BezTriple, ptr %157, i64 0, i32 9
  %317 = load i8, ptr %316, align 1, !tbaa !370
  %318 = and i8 %317, 1
  %319 = icmp ne i8 %318, 0
  %320 = select i1 %319, i1 %136, i1 false
  br i1 %320, label %321, label %384

321:                                              ; preds = %312
  %322 = getelementptr inbounds %struct.TransData, ptr %313, i64 0, i32 4
  %323 = getelementptr inbounds [3 x [3 x float]], ptr %157, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %322, ptr noundef nonnull %323) #23
  %324 = getelementptr inbounds %struct.TransData, ptr %313, i64 0, i32 3
  store ptr %323, ptr %324, align 8, !tbaa !215
  %325 = getelementptr inbounds %struct.TransData, ptr %313, i64 0, i32 7
  br label %331

326:                                              ; preds = %298
  %327 = getelementptr inbounds %struct.TransData, ptr %253, i64 1, i32 4
  %328 = getelementptr inbounds [3 x [3 x float]], ptr %157, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %327, ptr noundef nonnull %328) #23
  %329 = getelementptr inbounds %struct.TransData, ptr %253, i64 1, i32 3
  store ptr %328, ptr %329, align 8, !tbaa !215
  %330 = getelementptr inbounds %struct.TransData, ptr %253, i64 1, i32 7
  br i1 %136, label %331, label %345

331:                                              ; preds = %321, %326
  %332 = phi ptr [ %325, %321 ], [ %330, %326 ]
  %333 = phi ptr [ %313, %321 ], [ %300, %326 ]
  %334 = phi ptr [ %314, %321 ], [ %301, %326 ]
  %335 = phi ptr [ %315, %321 ], [ %299, %326 ]
  %336 = load i16, ptr %135, align 2, !tbaa !316
  %337 = icmp eq i16 %336, 2
  br i1 %337, label %355, label %338

338:                                              ; preds = %331
  %339 = getelementptr inbounds %struct.BezTriple, ptr %157, i64 0, i32 8
  %340 = load i8, ptr %339, align 4, !tbaa !368
  %341 = freeze i8 %340
  %342 = and i8 %341, 1
  %343 = icmp eq i8 %342, 0
  %344 = select i1 %343, i64 2, i64 1
  br label %355

345:                                              ; preds = %307, %326
  %346 = phi ptr [ %330, %326 ], [ %311, %307 ]
  %347 = getelementptr inbounds [3 x [3 x float]], ptr %157, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %346, ptr noundef nonnull %347) #23
  %348 = getelementptr inbounds %struct.BezTriple, ptr %157, i64 0, i32 8
  %349 = load i8, ptr %348, align 4, !tbaa !368
  %350 = and i8 %349, 1
  %351 = icmp eq i8 %350, 0
  %352 = getelementptr inbounds %struct.TransData, ptr %253, i64 1, i32 16
  br i1 %351, label %354, label %353

353:                                              ; preds = %345
  store i32 1, ptr %352, align 8, !tbaa !49
  br label %365

354:                                              ; preds = %345
  store i32 0, ptr %352, align 8, !tbaa !49
  br label %365

355:                                              ; preds = %331, %338
  %356 = phi i64 [ %344, %338 ], [ 1, %331 ]
  %357 = getelementptr inbounds [3 x [3 x float]], ptr %157, i64 0, i64 %356
  call fastcc void @copy_v3_v3(ptr noundef nonnull %332, ptr noundef nonnull %357) #23
  %358 = getelementptr inbounds %struct.BezTriple, ptr %157, i64 0, i32 9
  %359 = load i8, ptr %358, align 1, !tbaa !370
  %360 = and i8 %359, 1
  %361 = icmp eq i8 %360, 0
  %362 = getelementptr inbounds %struct.TransData, ptr %333, i64 0, i32 16
  br i1 %361, label %364, label %363

363:                                              ; preds = %355
  store i32 1, ptr %362, align 8, !tbaa !49
  br label %365

364:                                              ; preds = %355
  store i32 0, ptr %362, align 8, !tbaa !49
  br label %365

365:                                              ; preds = %363, %364, %353, %354
  %366 = phi ptr [ %333, %363 ], [ %333, %364 ], [ %300, %353 ], [ %300, %354 ]
  %367 = phi ptr [ %334, %363 ], [ %334, %364 ], [ %301, %353 ], [ %301, %354 ]
  %368 = phi ptr [ %335, %363 ], [ %335, %364 ], [ %299, %353 ], [ %299, %354 ]
  %369 = getelementptr inbounds %struct.TransData, ptr %366, i64 0, i32 13
  store ptr null, ptr %369, align 8, !tbaa !330
  %370 = getelementptr inbounds %struct.TransData, ptr %366, i64 0, i32 5
  store ptr null, ptr %370, align 8, !tbaa !474
  %371 = icmp eq ptr %368, null
  br i1 %371, label %372, label %374

372:                                              ; preds = %365
  %373 = call fastcc ptr @initTransDataCurveHandles(ptr noundef nonnull %366, ptr noundef nonnull %157) #23
  br label %374

374:                                              ; preds = %372, %365
  %375 = getelementptr inbounds %struct.TransData, ptr %366, i64 0, i32 9
  call void @copy_m3_m3(ptr noundef nonnull %375, ptr noundef nonnull %3) #22
  %376 = getelementptr inbounds %struct.TransData, ptr %366, i64 0, i32 8
  call void @copy_m3_m3(ptr noundef nonnull %376, ptr noundef nonnull %2) #22
  %377 = load i16, ptr %135, align 2, !tbaa !316
  %378 = icmp eq i16 %377, 2
  br i1 %378, label %379, label %381

379:                                              ; preds = %374
  %380 = getelementptr inbounds %struct.TransData, ptr %366, i64 0, i32 10
  call void @copy_m3_m3(ptr noundef nonnull %380, ptr noundef nonnull %4) #22
  br label %381

381:                                              ; preds = %379, %374
  %382 = getelementptr inbounds %struct.TransData, ptr %366, i64 1
  %383 = getelementptr inbounds %struct.TransData, ptr %367, i64 1
  br label %384

384:                                              ; preds = %381, %312
  %385 = phi ptr [ %382, %381 ], [ %313, %312 ]
  %386 = phi ptr [ %383, %381 ], [ %314, %312 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #24
  br label %392

387:                                              ; preds = %153
  %388 = icmp eq ptr %155, %154
  %389 = select i1 %121, i1 true, i1 %388
  br i1 %389, label %392, label %390

390:                                              ; preds = %387
  %391 = getelementptr inbounds %struct.TransData, ptr %154, i64 -1
  call fastcc void @calc_distanceCurveVerts(ptr noundef %155, ptr noundef nonnull %391) #23
  br label %392

392:                                              ; preds = %384, %390, %387
  %393 = phi ptr [ %385, %384 ], [ %156, %390 ], [ %156, %387 ]
  %394 = phi ptr [ %155, %384 ], [ %154, %390 ], [ %155, %387 ]
  %395 = phi ptr [ %386, %384 ], [ %154, %390 ], [ %154, %387 ]
  %396 = add nuw nsw i32 %158, 1
  %397 = getelementptr inbounds %struct.BezTriple, ptr %157, i64 1
  %398 = load i32, ptr %146, align 8, !tbaa !600
  %399 = icmp slt i32 %396, %398
  br i1 %399, label %153, label %400, !llvm.loop !613

400:                                              ; preds = %392
  %401 = icmp eq ptr %394, %395
  %402 = select i1 %121, i1 true, i1 %401
  br i1 %402, label %405, label %403

403:                                              ; preds = %400
  %404 = getelementptr inbounds %struct.TransData, ptr %395, i64 -1
  call fastcc void @calc_distanceCurveVerts(ptr noundef %394, ptr noundef nonnull %404) #23
  br label %405

405:                                              ; preds = %148, %403, %400
  %406 = phi ptr [ %393, %403 ], [ %393, %400 ], [ %142, %148 ]
  %407 = load i32, ptr %0, align 8, !tbaa !192
  switch i32 %407, label %408 [
    i32 16, label %473
    i32 9, label %473
  ]

408:                                              ; preds = %405
  call void @BKE_nurb_handles_test(ptr noundef nonnull %141, i8 noundef zeroext %139) #22
  br label %473

409:                                              ; preds = %140
  %410 = getelementptr inbounds %struct.Nurb, ptr %141, i64 0, i32 7
  %411 = load i32, ptr %410, align 4, !tbaa !604
  %412 = mul nsw i32 %411, %147
  %413 = icmp sgt i32 %412, 0
  br i1 %413, label %414, label %473

414:                                              ; preds = %409
  %415 = getelementptr inbounds %struct.Nurb, ptr %141, i64 0, i32 17
  %416 = load ptr, ptr %415, align 8, !tbaa !605
  br label %417

417:                                              ; preds = %414, %461
  %418 = phi ptr [ %464, %461 ], [ %142, %414 ]
  %419 = phi ptr [ %463, %461 ], [ %142, %414 ]
  %420 = phi ptr [ %462, %461 ], [ %142, %414 ]
  %421 = phi i32 [ %465, %461 ], [ %412, %414 ]
  %422 = phi ptr [ %466, %461 ], [ %416, %414 ]
  %423 = getelementptr inbounds %struct.BPoint, ptr %422, i64 0, i32 4
  %424 = load i16, ptr %423, align 2, !tbaa !606
  %425 = icmp eq i16 %424, 0
  br i1 %425, label %426, label %456

426:                                              ; preds = %417
  br i1 %121, label %427, label %432

427:                                              ; preds = %426
  %428 = getelementptr inbounds %struct.BPoint, ptr %422, i64 0, i32 3
  %429 = load i16, ptr %428, align 4, !tbaa !608
  %430 = and i16 %429, 1
  %431 = icmp eq i16 %430, 0
  br i1 %431, label %461, label %432

432:                                              ; preds = %427, %426
  %433 = getelementptr inbounds %struct.TransData, ptr %420, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %433, ptr noundef nonnull %422) #23
  %434 = getelementptr inbounds %struct.TransData, ptr %420, i64 0, i32 3
  store ptr %422, ptr %434, align 8, !tbaa !215
  %435 = getelementptr inbounds %struct.TransData, ptr %420, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %435, ptr noundef nonnull %422) #23
  %436 = getelementptr inbounds %struct.BPoint, ptr %422, i64 0, i32 3
  %437 = load i16, ptr %436, align 4, !tbaa !608
  %438 = and i16 %437, 1
  %439 = zext nneg i16 %438 to i32
  %440 = getelementptr inbounds %struct.TransData, ptr %420, i64 0, i32 16
  store i32 %439, ptr %440, align 8
  %441 = getelementptr inbounds %struct.TransData, ptr %420, i64 0, i32 13
  store ptr null, ptr %441, align 8, !tbaa !330
  %442 = load i32, ptr %0, align 8, !tbaa !192
  switch i32 %442, label %445 [
    i32 16, label %443
    i32 3, label %443
  ]

443:                                              ; preds = %432, %432
  %444 = getelementptr inbounds %struct.BPoint, ptr %422, i64 0, i32 5
  br label %447

445:                                              ; preds = %432
  %446 = getelementptr inbounds %struct.BPoint, ptr %422, i64 0, i32 1
  br label %447

447:                                              ; preds = %445, %443
  %448 = phi ptr [ %446, %445 ], [ %444, %443 ]
  %449 = getelementptr inbounds %struct.TransData, ptr %420, i64 0, i32 5
  store ptr %448, ptr %449, align 8, !tbaa !474
  %450 = load float, ptr %448, align 4, !tbaa !123
  %451 = getelementptr inbounds %struct.TransData, ptr %420, i64 0, i32 6
  store float %450, ptr %451, align 8, !tbaa !475
  %452 = getelementptr inbounds %struct.TransData, ptr %420, i64 0, i32 9
  call void @copy_m3_m3(ptr noundef nonnull %452, ptr noundef nonnull %3) #22
  %453 = getelementptr inbounds %struct.TransData, ptr %420, i64 0, i32 8
  call void @copy_m3_m3(ptr noundef nonnull %453, ptr noundef nonnull %2) #22
  %454 = getelementptr inbounds %struct.TransData, ptr %420, i64 1
  %455 = getelementptr inbounds %struct.TransData, ptr %418, i64 1
  br label %461

456:                                              ; preds = %417
  %457 = icmp eq ptr %419, %418
  %458 = select i1 %121, i1 true, i1 %457
  br i1 %458, label %461, label %459

459:                                              ; preds = %456
  %460 = getelementptr inbounds %struct.TransData, ptr %418, i64 -1
  call fastcc void @calc_distanceCurveVerts(ptr noundef %419, ptr noundef nonnull %460) #23
  br label %461

461:                                              ; preds = %447, %427, %459, %456
  %462 = phi ptr [ %454, %447 ], [ %420, %427 ], [ %420, %459 ], [ %420, %456 ]
  %463 = phi ptr [ %419, %447 ], [ %419, %427 ], [ %418, %459 ], [ %419, %456 ]
  %464 = phi ptr [ %455, %447 ], [ %418, %427 ], [ %418, %459 ], [ %418, %456 ]
  %465 = add nsw i32 %421, -1
  %466 = getelementptr inbounds %struct.BPoint, ptr %422, i64 1
  %467 = icmp sgt i32 %421, 1
  br i1 %467, label %417, label %468, !llvm.loop !614

468:                                              ; preds = %461
  %469 = icmp eq ptr %463, %464
  %470 = select i1 %121, i1 true, i1 %469
  br i1 %470, label %473, label %471

471:                                              ; preds = %468
  %472 = getelementptr inbounds %struct.TransData, ptr %464, i64 -1
  call fastcc void @calc_distanceCurveVerts(ptr noundef %463, ptr noundef nonnull %472) #23
  br label %473

473:                                              ; preds = %409, %405, %405, %468, %471, %408
  %474 = phi ptr [ %406, %408 ], [ %406, %405 ], [ %462, %471 ], [ %462, %468 ], [ %406, %405 ], [ %142, %409 ]
  %475 = load ptr, ptr %141, align 8, !tbaa !64
  %476 = icmp eq ptr %475, null
  br i1 %476, label %477, label %140, !llvm.loop !615

477:                                              ; preds = %473, %20, %120, %118, %1
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @createTransLatticeVerts(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !616 {
  %2 = alloca [3 x [3 x float]], align 16
  %3 = alloca [3 x [3 x float]], align 16
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %5 = load ptr, ptr %4, align 8, !tbaa !103
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.Lattice, ptr %7, i64 0, i32 26
  %9 = load ptr, ptr %8, align 8, !tbaa !617
  %10 = load ptr, ptr %9, align 8, !tbaa !619
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #24
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !53
  %13 = and i32 %12, 2048
  %14 = getelementptr inbounds %struct.Lattice, ptr %10, i64 0, i32 21
  %15 = getelementptr inbounds %struct.Lattice, ptr %10, i64 0, i32 2
  %16 = load i16, ptr %15, align 8, !tbaa !621
  %17 = sext i16 %16 to i32
  %18 = getelementptr inbounds %struct.Lattice, ptr %10, i64 0, i32 3
  %19 = load i16, ptr %18, align 2, !tbaa !622
  %20 = sext i16 %19 to i32
  %21 = mul nsw i32 %20, %17
  %22 = getelementptr inbounds %struct.Lattice, ptr %10, i64 0, i32 4
  %23 = load i16, ptr %22, align 4, !tbaa !623
  %24 = sext i16 %23 to i32
  %25 = mul nsw i32 %21, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %108, label %27

27:                                               ; preds = %1
  %28 = load ptr, ptr %14, align 8, !tbaa !624
  %29 = lshr exact i32 %13, 11
  br label %30

30:                                               ; preds = %27, %46
  %31 = phi i32 [ %25, %27 ], [ %35, %46 ]
  %32 = phi i32 [ 0, %27 ], [ %48, %46 ]
  %33 = phi i32 [ 0, %27 ], [ %47, %46 ]
  %34 = phi ptr [ %28, %27 ], [ %49, %46 ]
  %35 = add nsw i32 %31, -1
  %36 = getelementptr inbounds %struct.BPoint, ptr %34, i64 0, i32 4
  %37 = load i16, ptr %36, align 2, !tbaa !606
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.BPoint, ptr %34, i64 0, i32 3
  %41 = load i16, ptr %40, align 4, !tbaa !608
  %42 = and i16 %41, 1
  %43 = zext nneg i16 %42 to i32
  %44 = add i32 %32, %43
  %45 = add i32 %33, %29
  br label %46

46:                                               ; preds = %39, %30
  %47 = phi i32 [ %33, %30 ], [ %45, %39 ]
  %48 = phi i32 [ %32, %30 ], [ %44, %39 ]
  %49 = getelementptr inbounds %struct.BPoint, ptr %34, i64 1
  %50 = icmp eq i32 %35, 0
  br i1 %50, label %51, label %30, !llvm.loop !625

51:                                               ; preds = %46
  %52 = icmp eq i32 %48, 0
  br i1 %52, label %108, label %53

53:                                               ; preds = %51
  %54 = icmp eq i32 %13, 0
  %55 = select i1 %54, i32 %48, i32 %47
  %56 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  store i32 %55, ptr %56, align 8
  %57 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %58 = sext i32 %55 to i64
  %59 = mul nsw i64 %58, 224
  %60 = tail call ptr %57(i64 noundef %59, ptr noundef nonnull @.str.48) #22
  %61 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  store ptr %60, ptr %61, align 8, !tbaa !48
  %62 = load ptr, ptr %4, align 8, !tbaa !103
  %63 = getelementptr inbounds %struct.Object, ptr %62, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %2, ptr noundef nonnull %63) #22
  call void @pseudoinverse_m3_m3(ptr noundef nonnull %3, ptr noundef nonnull %2, float noundef 0x3E45798EE0000000) #22
  %64 = load i16, ptr %15, align 8, !tbaa !621
  %65 = sext i16 %64 to i32
  %66 = load i16, ptr %18, align 2, !tbaa !622
  %67 = sext i16 %66 to i32
  %68 = mul nsw i32 %67, %65
  %69 = load i16, ptr %22, align 4, !tbaa !623
  %70 = sext i16 %69 to i32
  %71 = mul nsw i32 %68, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %108, label %73

73:                                               ; preds = %53
  %74 = load ptr, ptr %14, align 8, !tbaa !624
  %75 = load ptr, ptr %61, align 8, !tbaa !48
  br label %76

76:                                               ; preds = %73, %104
  %77 = phi i32 [ %80, %104 ], [ %71, %73 ]
  %78 = phi ptr [ %105, %104 ], [ %75, %73 ]
  %79 = phi ptr [ %106, %104 ], [ %74, %73 ]
  %80 = add nsw i32 %77, -1
  br i1 %54, label %81, label %86

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.BPoint, ptr %79, i64 0, i32 3
  %83 = load i16, ptr %82, align 4, !tbaa !608
  %84 = and i16 %83, 1
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %104, label %86

86:                                               ; preds = %81, %76
  %87 = getelementptr inbounds %struct.BPoint, ptr %79, i64 0, i32 4
  %88 = load i16, ptr %87, align 2, !tbaa !606
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.TransData, ptr %78, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %91, ptr noundef nonnull %79) #23
  %92 = getelementptr inbounds %struct.TransData, ptr %78, i64 0, i32 3
  store ptr %79, ptr %92, align 8, !tbaa !215
  %93 = getelementptr inbounds %struct.TransData, ptr %78, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %93, ptr noundef nonnull %79) #23
  %94 = getelementptr inbounds %struct.BPoint, ptr %79, i64 0, i32 3
  %95 = load i16, ptr %94, align 4, !tbaa !608
  %96 = and i16 %95, 1
  %97 = zext nneg i16 %96 to i32
  %98 = getelementptr inbounds %struct.TransData, ptr %78, i64 0, i32 16
  store i32 %97, ptr %98, align 8
  %99 = getelementptr inbounds %struct.TransData, ptr %78, i64 0, i32 9
  call void @copy_m3_m3(ptr noundef nonnull %99, ptr noundef nonnull %3) #22
  %100 = getelementptr inbounds %struct.TransData, ptr %78, i64 0, i32 8
  call void @copy_m3_m3(ptr noundef nonnull %100, ptr noundef nonnull %2) #22
  %101 = getelementptr inbounds %struct.TransData, ptr %78, i64 0, i32 13
  store ptr null, ptr %101, align 8, !tbaa !330
  %102 = getelementptr inbounds %struct.TransData, ptr %78, i64 0, i32 5
  store ptr null, ptr %102, align 8, !tbaa !474
  %103 = getelementptr inbounds %struct.TransData, ptr %78, i64 1
  br label %104

104:                                              ; preds = %86, %90, %81
  %105 = phi ptr [ %103, %90 ], [ %78, %86 ], [ %78, %81 ]
  %106 = getelementptr inbounds %struct.BPoint, ptr %79, i64 1
  %107 = icmp eq i32 %80, 0
  br i1 %107, label %108, label %76, !llvm.loop !626

108:                                              ; preds = %104, %1, %53, %51
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @createTransMBallVerts(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !627 {
  %2 = alloca [3 x [3 x float]], align 16
  %3 = alloca [3 x [3 x float]], align 16
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %5 = load ptr, ptr %4, align 8, !tbaa !103
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #24
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !53
  %10 = and i32 %9, 2048
  %11 = getelementptr inbounds %struct.MetaBall, ptr %7, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !628
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  %14 = icmp eq ptr %13, null
  br i1 %14, label %106, label %15

15:                                               ; preds = %1
  %16 = lshr exact i32 %10, 11
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi ptr [ %13, %15 ], [ %27, %17 ]
  %19 = phi i32 [ 0, %15 ], [ %25, %17 ]
  %20 = phi i32 [ 0, %15 ], [ %26, %17 ]
  %21 = getelementptr inbounds %struct.MetaElem, ptr %18, i64 0, i32 4
  %22 = load i16, ptr %21, align 2, !tbaa !630
  %23 = and i16 %22, 1
  %24 = zext nneg i16 %23 to i32
  %25 = add i32 %19, %24
  %26 = add i32 %20, %16
  %27 = load ptr, ptr %18, align 8, !tbaa !64
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %17, !llvm.loop !632

29:                                               ; preds = %17
  %30 = icmp eq i32 %25, 0
  br i1 %30, label %106, label %31

31:                                               ; preds = %29
  %32 = icmp eq i32 %10, 0
  %33 = select i1 %32, i32 %25, i32 %26
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  store i32 %33, ptr %34, align 8
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %36 = sext i32 %33 to i64
  %37 = mul nsw i64 %36, 224
  %38 = tail call ptr %35(i64 noundef %37, ptr noundef nonnull @.str.49) #22
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  store ptr %38, ptr %39, align 8, !tbaa !48
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %41 = load i32, ptr %34, align 8, !tbaa !34
  %42 = sext i32 %41 to i64
  %43 = mul nsw i64 %42, 384
  %44 = tail call ptr %40(i64 noundef %43, ptr noundef nonnull @.str.50) #22
  %45 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 11
  store ptr %44, ptr %45, align 8, !tbaa !449
  %46 = load ptr, ptr %4, align 8, !tbaa !103
  %47 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %2, ptr noundef nonnull %47) #22
  call void @pseudoinverse_m3_m3(ptr noundef nonnull %3, ptr noundef nonnull %2, float noundef 0x3E45798EE0000000) #22
  %48 = load ptr, ptr %11, align 8, !tbaa !628
  %49 = load ptr, ptr %48, align 8, !tbaa !64
  %50 = icmp eq ptr %49, null
  br i1 %50, label %106, label %51

51:                                               ; preds = %31, %101
  %52 = phi ptr [ %104, %101 ], [ %49, %31 ]
  %53 = phi ptr [ %103, %101 ], [ %44, %31 ]
  %54 = phi ptr [ %102, %101 ], [ %38, %31 ]
  br i1 %32, label %55, label %60

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.MetaElem, ptr %52, i64 0, i32 4
  %57 = load i16, ptr %56, align 2, !tbaa !630
  %58 = and i16 %57, 1
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %101, label %60

60:                                               ; preds = %55, %51
  %61 = getelementptr inbounds %struct.MetaElem, ptr %52, i64 0, i32 7
  %62 = getelementptr inbounds %struct.TransData, ptr %54, i64 0, i32 3
  store ptr %61, ptr %62, align 8, !tbaa !215
  %63 = getelementptr inbounds %struct.TransData, ptr %54, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %63, ptr noundef nonnull %61) #23
  %64 = getelementptr inbounds %struct.TransData, ptr %54, i64 0, i32 7
  %65 = load ptr, ptr %62, align 8, !tbaa !215
  call fastcc void @copy_v3_v3(ptr noundef nonnull %64, ptr noundef %65) #23
  %66 = getelementptr inbounds %struct.TransData, ptr %54, i64 0, i32 10
  %67 = getelementptr inbounds %struct.MetaElem, ptr %52, i64 0, i32 10
  call void @quat_to_mat3(ptr noundef nonnull %66, ptr noundef nonnull %67) #22
  %68 = getelementptr inbounds %struct.MetaElem, ptr %52, i64 0, i32 4
  %69 = load i16, ptr %68, align 2, !tbaa !630
  %70 = and i16 %69, 1
  %71 = icmp eq i16 %70, 0
  %72 = select i1 %71, i32 8, i32 41
  %73 = getelementptr inbounds %struct.TransData, ptr %54, i64 0, i32 16
  store i32 %72, ptr %73, align 8
  %74 = getelementptr inbounds %struct.TransData, ptr %54, i64 0, i32 9
  call void @copy_m3_m3(ptr noundef nonnull %74, ptr noundef nonnull %3) #22
  %75 = getelementptr inbounds %struct.TransData, ptr %54, i64 0, i32 8
  call void @copy_m3_m3(ptr noundef nonnull %75, ptr noundef nonnull %2) #22
  %76 = getelementptr inbounds %struct.TransData, ptr %54, i64 0, i32 13
  store ptr %53, ptr %76, align 8, !tbaa !330
  %77 = load i16, ptr %68, align 2, !tbaa !630
  %78 = and i16 %77, 16
  %79 = icmp eq i16 %78, 0
  %80 = getelementptr inbounds %struct.MetaElem, ptr %52, i64 0, i32 16
  %81 = getelementptr inbounds %struct.MetaElem, ptr %52, i64 0, i32 14
  %82 = select i1 %79, ptr %80, ptr %81
  %83 = load float, ptr %82, align 8, !tbaa !123
  %84 = getelementptr inbounds %struct.TransData, ptr %54, i64 0, i32 5
  store ptr %82, ptr %84, align 8
  %85 = getelementptr inbounds %struct.TransData, ptr %54, i64 0, i32 6
  store float %83, ptr %85, align 8
  %86 = getelementptr inbounds %struct.MetaElem, ptr %52, i64 0, i32 11
  %87 = getelementptr inbounds %struct.TransDataExtension, ptr %53, i64 0, i32 11
  store ptr %86, ptr %87, align 8, !tbaa !464
  %88 = load float, ptr %86, align 4, !tbaa !633
  %89 = getelementptr inbounds %struct.TransDataExtension, ptr %53, i64 0, i32 12
  store float %88, ptr %89, align 8, !tbaa !123
  %90 = getelementptr inbounds %struct.MetaElem, ptr %52, i64 0, i32 12
  %91 = load float, ptr %90, align 8, !tbaa !634
  %92 = getelementptr inbounds %struct.TransDataExtension, ptr %53, i64 0, i32 12, i64 1
  store float %91, ptr %92, align 4, !tbaa !123
  %93 = getelementptr inbounds %struct.MetaElem, ptr %52, i64 0, i32 13
  %94 = load float, ptr %93, align 4, !tbaa !635
  %95 = getelementptr inbounds %struct.TransDataExtension, ptr %53, i64 0, i32 12, i64 2
  store float %94, ptr %95, align 8, !tbaa !123
  %96 = getelementptr inbounds %struct.TransDataExtension, ptr %53, i64 0, i32 5
  store ptr %67, ptr %96, align 8, !tbaa !636
  %97 = getelementptr inbounds %struct.TransDataExtension, ptr %53, i64 0, i32 6
  call void @copy_qt_qt(ptr noundef nonnull %97, ptr noundef nonnull %67) #22
  %98 = getelementptr inbounds %struct.TransDataExtension, ptr %53, i64 0, i32 3
  store ptr null, ptr %98, align 8, !tbaa !463
  %99 = getelementptr inbounds %struct.TransData, ptr %54, i64 1
  %100 = getelementptr inbounds %struct.TransDataExtension, ptr %53, i64 1
  br label %101

101:                                              ; preds = %55, %60
  %102 = phi ptr [ %99, %60 ], [ %54, %55 ]
  %103 = phi ptr [ %100, %60 ], [ %53, %55 ]
  %104 = load ptr, ptr %52, align 8, !tbaa !64
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %51, !llvm.loop !637

106:                                              ; preds = %101, %1, %31, %29
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @createTransArmatureVerts(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !638 {
  %2 = alloca [3 x [3 x float]], align 16
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = getelementptr inbounds %struct.bArmature, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #24
  %11 = getelementptr inbounds %struct.bArmature, ptr %8, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !115
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  store i32 0, ptr %13, align 8, !tbaa !34
  %14 = load ptr, ptr %10, align 8, !tbaa !64
  %15 = icmp eq ptr %14, null
  br i1 %15, label %305, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.bArmature, ptr %8, i64 0, i32 15
  %18 = and i32 %12, 256
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %16, %67
  %21 = phi ptr [ %14, %16 ], [ %69, %67 ]
  %22 = phi i32 [ 0, %16 ], [ %68, %67 ]
  %23 = load i32, ptr %13, align 8, !tbaa !34
  %24 = load i32, ptr %17, align 8, !tbaa !66
  %25 = getelementptr inbounds %struct.EditBone, ptr %21, i64 0, i32 10
  %26 = load i32, ptr %25, align 8, !tbaa !639
  %27 = and i32 %26, %24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %57, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.EditBone, ptr %21, i64 0, i32 9
  %31 = load i32, ptr %30, align 4, !tbaa !117
  %32 = and i32 %31, 525312
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %29
  %35 = load i32, ptr %0, align 8, !tbaa !192
  switch i32 %35, label %46 [
    i32 14, label %36
    i32 18, label %41
  ]

36:                                               ; preds = %34
  %37 = and i32 %31, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %36
  %40 = add nsw i32 %23, 1
  br label %55

41:                                               ; preds = %34
  %42 = and i32 %31, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %41
  %45 = add nsw i32 %23, 1
  br label %55

46:                                               ; preds = %34
  %47 = lshr i32 %31, 2
  %48 = and i32 %47, 1
  %49 = add i32 %23, %48
  %50 = lshr i32 %31, 1
  %51 = and i32 %50, 1
  %52 = add i32 %49, %51
  %53 = and i32 %31, 6
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %46, %44, %39
  %56 = phi i32 [ %40, %39 ], [ %45, %44 ], [ %52, %46 ]
  store i32 %56, ptr %13, align 8, !tbaa !34
  br label %57

57:                                               ; preds = %55, %46, %20, %36, %41, %29
  %58 = phi i32 [ %23, %20 ], [ %23, %36 ], [ %23, %41 ], [ %23, %29 ], [ %52, %46 ], [ %56, %55 ]
  %59 = icmp slt i32 %23, %58
  %60 = select i1 %19, i1 %59, i1 false
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load ptr, ptr %9, align 8, !tbaa !116
  %63 = tail call ptr @ED_armature_bone_get_mirrored(ptr noundef %62, ptr noundef nonnull %21) #22
  %64 = icmp ne ptr %63, null
  %65 = zext i1 %64 to i32
  %66 = add nsw i32 %22, %65
  br label %67

67:                                               ; preds = %61, %57
  %68 = phi i32 [ %22, %57 ], [ %66, %61 ]
  %69 = load ptr, ptr %21, align 8, !tbaa !64
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %20, !llvm.loop !640

71:                                               ; preds = %67
  %72 = load i32, ptr %13, align 8, !tbaa !34
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %305, label %74

74:                                               ; preds = %71
  tail call fastcc void @transform_around_single_fallback(ptr noundef nonnull %0) #23
  %75 = load ptr, ptr %5, align 8, !tbaa !103
  %76 = getelementptr inbounds %struct.Object, ptr %75, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %2, ptr noundef nonnull %76) #22
  call void @pseudoinverse_m3_m3(ptr noundef nonnull %3, ptr noundef nonnull %2, float noundef 0x3E45798EE0000000) #22
  %77 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %78 = load i32, ptr %13, align 8, !tbaa !34
  %79 = sext i32 %78 to i64
  %80 = mul nsw i64 %79, 224
  %81 = call ptr %77(i64 noundef %80, ptr noundef nonnull @.str.51) #22
  %82 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  store ptr %81, ptr %82, align 8, !tbaa !48
  %83 = and i32 %12, 256
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %74
  %86 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !64
  %87 = add nsw i32 %68, 1
  %88 = sext i32 %87 to i64
  %89 = mul nsw i64 %88, 56
  %90 = call ptr %86(i64 noundef %89, ptr noundef nonnull @.str.52) #22
  %91 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  store ptr %90, ptr %91, align 8, !tbaa !100
  %92 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %93 = load i32, ptr %92, align 4, !tbaa !53
  %94 = or i32 %93, 131072
  store i32 %94, ptr %92, align 4, !tbaa !53
  br label %95

95:                                               ; preds = %85, %74
  %96 = phi ptr [ %90, %85 ], [ undef, %74 ]
  %97 = load ptr, ptr %10, align 8, !tbaa !64
  %98 = icmp eq ptr %97, null
  br i1 %98, label %301, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.bArmature, ptr %8, i64 0, i32 15
  %101 = getelementptr inbounds %struct.bArmature, ptr %8, i64 0, i32 9
  %102 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 32
  br label %103

103:                                              ; preds = %99, %297
  %104 = phi ptr [ %97, %99 ], [ %299, %297 ]
  %105 = phi i32 [ 0, %99 ], [ %298, %297 ]
  %106 = phi ptr [ %81, %99 ], [ %267, %297 ]
  %107 = getelementptr inbounds %struct.EditBone, ptr %104, i64 0, i32 14
  %108 = load float, ptr %107, align 8, !tbaa !641
  %109 = getelementptr inbounds %struct.EditBone, ptr %104, i64 0, i32 20
  store float %108, ptr %109, align 8, !tbaa !642
  %110 = load i32, ptr %100, align 8, !tbaa !66
  %111 = getelementptr inbounds %struct.EditBone, ptr %104, i64 0, i32 10
  %112 = load i32, ptr %111, align 8, !tbaa !639
  %113 = and i32 %112, %110
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %266, label %115

115:                                              ; preds = %103
  %116 = getelementptr inbounds %struct.EditBone, ptr %104, i64 0, i32 9
  %117 = load i32, ptr %116, align 4, !tbaa !117
  %118 = and i32 %117, 525312
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %266

120:                                              ; preds = %115
  %121 = load i32, ptr %0, align 8, !tbaa !192
  switch i32 %121, label %197 [
    i32 15, label %122
    i32 14, label %158
    i32 18, label %184
  ]

122:                                              ; preds = %120
  %123 = and i32 %117, 2
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %141, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.EditBone, ptr %104, i64 0, i32 18
  %127 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 5
  store ptr %126, ptr %127, align 8, !tbaa !474
  %128 = load float, ptr %126, align 4, !tbaa !123
  %129 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 6
  store float %128, ptr %129, align 8, !tbaa !475
  %130 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 7
  %131 = getelementptr inbounds %struct.EditBone, ptr %104, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %130, ptr noundef nonnull %131) #23
  %132 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 16
  store i32 1, ptr %132, align 8, !tbaa !49
  %133 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 9
  call void @copy_m3_m3(ptr noundef nonnull %133, ptr noundef nonnull %3) #22
  %134 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 8
  call void @copy_m3_m3(ptr noundef nonnull %134, ptr noundef nonnull %2) #22
  %135 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 3
  store ptr null, ptr %135, align 8, !tbaa !215
  %136 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 13
  store ptr null, ptr %136, align 8, !tbaa !330
  %137 = load ptr, ptr %5, align 8, !tbaa !103
  %138 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 11
  store ptr %137, ptr %138, align 8, !tbaa !322
  %139 = getelementptr inbounds %struct.TransData, ptr %106, i64 1
  %140 = load i32, ptr %116, align 4, !tbaa !117
  br label %141

141:                                              ; preds = %125, %122
  %142 = phi i32 [ %140, %125 ], [ %117, %122 ]
  %143 = phi ptr [ %139, %125 ], [ %106, %122 ]
  %144 = and i32 %142, 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %266, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.EditBone, ptr %104, i64 0, i32 19
  %148 = getelementptr inbounds %struct.TransData, ptr %143, i64 0, i32 5
  store ptr %147, ptr %148, align 8, !tbaa !474
  %149 = load float, ptr %147, align 4, !tbaa !123
  %150 = getelementptr inbounds %struct.TransData, ptr %143, i64 0, i32 6
  store float %149, ptr %150, align 8, !tbaa !475
  %151 = getelementptr inbounds %struct.TransData, ptr %143, i64 0, i32 7
  %152 = getelementptr inbounds %struct.EditBone, ptr %104, i64 0, i32 8
  call fastcc void @copy_v3_v3(ptr noundef nonnull %151, ptr noundef nonnull %152) #23
  %153 = getelementptr inbounds %struct.TransData, ptr %143, i64 0, i32 16
  store i32 1, ptr %153, align 8, !tbaa !49
  %154 = getelementptr inbounds %struct.TransData, ptr %143, i64 0, i32 9
  call void @copy_m3_m3(ptr noundef nonnull %154, ptr noundef nonnull %3) #22
  %155 = getelementptr inbounds %struct.TransData, ptr %143, i64 0, i32 8
  call void @copy_m3_m3(ptr noundef nonnull %155, ptr noundef nonnull %2) #22
  %156 = getelementptr inbounds %struct.TransData, ptr %143, i64 0, i32 3
  store ptr null, ptr %156, align 8, !tbaa !215
  %157 = getelementptr inbounds %struct.TransData, ptr %143, i64 0, i32 13
  br label %260

158:                                              ; preds = %120
  %159 = and i32 %117, 1
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %266, label %161

161:                                              ; preds = %158
  %162 = load i32, ptr %101, align 4, !tbaa !643
  %163 = icmp eq i32 %162, 3
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 3
  store ptr null, ptr %165, align 8, !tbaa !215
  %166 = getelementptr inbounds %struct.EditBone, ptr %104, i64 0, i32 11
  %167 = load float, ptr %166, align 4, !tbaa !105
  %168 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 6
  store float %167, ptr %168, align 8, !tbaa !475
  br label %173

169:                                              ; preds = %161
  %170 = getelementptr inbounds %struct.EditBone, ptr %104, i64 0, i32 13
  %171 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 3
  store ptr %170, ptr %171, align 8, !tbaa !215
  %172 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %172, ptr noundef nonnull %170) #23
  br label %173

173:                                              ; preds = %169, %164
  %174 = phi ptr [ %166, %164 ], [ null, %169 ]
  %175 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 5
  store ptr %174, ptr %175, align 8
  %176 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 7
  %177 = getelementptr inbounds %struct.EditBone, ptr %104, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %176, ptr noundef nonnull %177) #23
  %178 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 16
  store i32 1, ptr %178, align 8, !tbaa !49
  call void @ED_armature_ebone_to_mat3(ptr noundef nonnull %104, ptr noundef nonnull %4) #22
  %179 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 8
  call void @mul_m3_m3m3(ptr noundef nonnull %179, ptr noundef nonnull %2, ptr noundef nonnull %4) #22
  %180 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 9
  %181 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %180, ptr noundef nonnull %179) #22
  %182 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 10
  call void @copy_m3_m3(ptr noundef nonnull %182, ptr noundef nonnull %179) #22
  call void @normalize_m3(ptr noundef nonnull %182) #22
  %183 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 13
  br label %260

184:                                              ; preds = %120
  %185 = and i32 %117, 1
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %266, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 3
  store ptr null, ptr %188, align 8, !tbaa !215
  %189 = getelementptr inbounds %struct.EditBone, ptr %104, i64 0, i32 6
  %190 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 5
  store ptr %189, ptr %190, align 8, !tbaa !474
  %191 = load float, ptr %189, align 8, !tbaa !110
  %192 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 6
  store float %191, ptr %192, align 8, !tbaa !475
  %193 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 7
  %194 = getelementptr inbounds %struct.EditBone, ptr %104, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %193, ptr noundef nonnull %194) #23
  %195 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 16
  store i32 1, ptr %195, align 8, !tbaa !49
  %196 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 13
  br label %260

197:                                              ; preds = %120
  %198 = and i32 %117, 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %197
  %201 = and i32 %117, 2
  br label %235

202:                                              ; preds = %197
  %203 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 4
  %204 = getelementptr inbounds %struct.EditBone, ptr %104, i64 0, i32 8
  call fastcc void @copy_v3_v3(ptr noundef nonnull %203, ptr noundef nonnull %204) #23
  %205 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 7
  %206 = load i16, ptr %102, align 2, !tbaa !316
  %207 = icmp eq i16 %206, 2
  %208 = getelementptr inbounds %struct.EditBone, ptr %104, i64 0, i32 7
  %209 = select i1 %207, ptr %208, ptr %203
  call fastcc void @copy_v3_v3(ptr noundef nonnull %205, ptr noundef nonnull %209) #23
  %210 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 3
  store ptr %204, ptr %210, align 8, !tbaa !215
  %211 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 16
  store i32 1, ptr %211, align 8, !tbaa !49
  %212 = load i32, ptr %116, align 4, !tbaa !117
  %213 = and i32 %212, 524288
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %202
  %216 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 17
  store i16 511, ptr %216, align 4, !tbaa !644
  br label %217

217:                                              ; preds = %215, %202
  %218 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 9
  call void @copy_m3_m3(ptr noundef nonnull %218, ptr noundef nonnull %3) #22
  %219 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 8
  call void @copy_m3_m3(ptr noundef nonnull %219, ptr noundef nonnull %2) #22
  %220 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 10
  call void @ED_armature_ebone_to_mat3(ptr noundef nonnull %104, ptr noundef nonnull %220) #22
  %221 = load i32, ptr %116, align 4, !tbaa !117
  %222 = and i32 %221, 2
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %217
  %225 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 15
  store ptr %104, ptr %225, align 8, !tbaa !175
  %226 = getelementptr inbounds %struct.EditBone, ptr %104, i64 0, i32 6
  %227 = load float, ptr %226, align 8, !tbaa !110
  %228 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 6
  store float %227, ptr %228, align 8, !tbaa !475
  br label %229

229:                                              ; preds = %224, %217
  %230 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 13
  store ptr null, ptr %230, align 8, !tbaa !330
  %231 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 5
  store ptr null, ptr %231, align 8, !tbaa !474
  %232 = load ptr, ptr %5, align 8, !tbaa !103
  %233 = getelementptr inbounds %struct.TransData, ptr %106, i64 0, i32 11
  store ptr %232, ptr %233, align 8, !tbaa !322
  %234 = getelementptr inbounds %struct.TransData, ptr %106, i64 1
  br label %235

235:                                              ; preds = %200, %229
  %236 = phi i32 [ %201, %200 ], [ %222, %229 ]
  %237 = phi ptr [ %106, %200 ], [ %234, %229 ]
  %238 = icmp eq i32 %236, 0
  br i1 %238, label %266, label %239

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.TransData, ptr %237, i64 0, i32 4
  %241 = getelementptr inbounds %struct.EditBone, ptr %104, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %240, ptr noundef nonnull %241) #23
  %242 = getelementptr inbounds %struct.TransData, ptr %237, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %242, ptr noundef nonnull %240) #23
  %243 = getelementptr inbounds %struct.TransData, ptr %237, i64 0, i32 3
  store ptr %241, ptr %243, align 8, !tbaa !215
  %244 = getelementptr inbounds %struct.TransData, ptr %237, i64 0, i32 16
  store i32 1, ptr %244, align 8, !tbaa !49
  %245 = load i32, ptr %116, align 4, !tbaa !117
  %246 = and i32 %245, 524288
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %239
  %249 = getelementptr inbounds %struct.TransData, ptr %237, i64 0, i32 17
  store i16 511, ptr %249, align 4, !tbaa !644
  br label %250

250:                                              ; preds = %248, %239
  %251 = getelementptr inbounds %struct.TransData, ptr %237, i64 0, i32 9
  call void @copy_m3_m3(ptr noundef nonnull %251, ptr noundef nonnull %3) #22
  %252 = getelementptr inbounds %struct.TransData, ptr %237, i64 0, i32 8
  call void @copy_m3_m3(ptr noundef nonnull %252, ptr noundef nonnull %2) #22
  %253 = getelementptr inbounds %struct.TransData, ptr %237, i64 0, i32 10
  call void @ED_armature_ebone_to_mat3(ptr noundef nonnull %104, ptr noundef nonnull %253) #22
  %254 = getelementptr inbounds %struct.TransData, ptr %237, i64 0, i32 15
  store ptr %104, ptr %254, align 8, !tbaa !175
  %255 = getelementptr inbounds %struct.EditBone, ptr %104, i64 0, i32 6
  %256 = load float, ptr %255, align 8, !tbaa !110
  %257 = getelementptr inbounds %struct.TransData, ptr %237, i64 0, i32 6
  store float %256, ptr %257, align 8, !tbaa !475
  %258 = getelementptr inbounds %struct.TransData, ptr %237, i64 0, i32 13
  store ptr null, ptr %258, align 8, !tbaa !330
  %259 = getelementptr inbounds %struct.TransData, ptr %237, i64 0, i32 5
  br label %260

260:                                              ; preds = %173, %250, %187, %146
  %261 = phi ptr [ %157, %146 ], [ %196, %187 ], [ %259, %250 ], [ %183, %173 ]
  %262 = phi ptr [ %143, %146 ], [ %106, %187 ], [ %237, %250 ], [ %106, %173 ]
  store ptr null, ptr %261, align 8, !tbaa !64
  %263 = load ptr, ptr %5, align 8, !tbaa !103
  %264 = getelementptr inbounds %struct.TransData, ptr %262, i64 0, i32 11
  store ptr %263, ptr %264, align 8, !tbaa !322
  %265 = getelementptr inbounds %struct.TransData, ptr %262, i64 1
  br label %266

266:                                              ; preds = %260, %103, %141, %184, %235, %158, %115
  %267 = phi ptr [ %143, %141 ], [ %106, %158 ], [ %106, %184 ], [ %237, %235 ], [ %106, %115 ], [ %106, %103 ], [ %265, %260 ]
  %268 = icmp eq ptr %106, %267
  %269 = select i1 %84, i1 true, i1 %268
  br i1 %269, label %297, label %270

270:                                              ; preds = %266
  %271 = load ptr, ptr %9, align 8, !tbaa !116
  %272 = call ptr @ED_armature_bone_get_mirrored(ptr noundef %271, ptr noundef nonnull %104) #22
  %273 = icmp eq ptr %272, null
  br i1 %273, label %297, label %274

274:                                              ; preds = %270
  %275 = sext i32 %105 to i64
  %276 = getelementptr inbounds %struct.BoneInitData, ptr %96, i64 %275
  store ptr %272, ptr %276, align 8, !tbaa !101
  %277 = getelementptr inbounds %struct.EditBone, ptr %272, i64 0, i32 11
  %278 = load float, ptr %277, align 4, !tbaa !105
  %279 = getelementptr inbounds %struct.BoneInitData, ptr %96, i64 %275, i32 5
  store float %278, ptr %279, align 8, !tbaa !104
  %280 = getelementptr inbounds %struct.EditBone, ptr %272, i64 0, i32 19
  %281 = load float, ptr %280, align 4, !tbaa !108
  %282 = getelementptr inbounds %struct.BoneInitData, ptr %96, i64 %275, i32 2
  store float %281, ptr %282, align 4, !tbaa !107
  %283 = getelementptr inbounds %struct.EditBone, ptr %272, i64 0, i32 6
  %284 = load float, ptr %283, align 8, !tbaa !110
  %285 = getelementptr inbounds %struct.BoneInitData, ptr %96, i64 %275, i32 3
  store float %284, ptr %285, align 8, !tbaa !109
  %286 = getelementptr inbounds %struct.EditBone, ptr %272, i64 0, i32 13
  %287 = load float, ptr %286, align 4, !tbaa !112
  %288 = getelementptr inbounds %struct.BoneInitData, ptr %96, i64 %275, i32 6
  store float %287, ptr %288, align 4, !tbaa !111
  %289 = getelementptr inbounds %struct.EditBone, ptr %272, i64 0, i32 15
  %290 = load float, ptr %289, align 4, !tbaa !114
  %291 = getelementptr inbounds %struct.BoneInitData, ptr %96, i64 %275, i32 7
  store float %290, ptr %291, align 8, !tbaa !113
  %292 = getelementptr inbounds %struct.BoneInitData, ptr %96, i64 %275, i32 4
  %293 = getelementptr inbounds %struct.EditBone, ptr %272, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %292, ptr noundef nonnull %293) #23
  %294 = getelementptr inbounds %struct.BoneInitData, ptr %96, i64 %275, i32 1
  %295 = getelementptr inbounds %struct.EditBone, ptr %272, i64 0, i32 8
  call fastcc void @copy_v3_v3(ptr noundef nonnull %294, ptr noundef nonnull %295) #23
  %296 = add nsw i32 %105, 1
  br label %297

297:                                              ; preds = %266, %274, %270
  %298 = phi i32 [ %296, %274 ], [ %105, %270 ], [ %105, %266 ]
  %299 = load ptr, ptr %104, align 8, !tbaa !64
  %300 = icmp eq ptr %299, null
  br i1 %300, label %301, label %103, !llvm.loop !645

301:                                              ; preds = %297, %95
  br i1 %84, label %305, label %302

302:                                              ; preds = %301
  %303 = sext i32 %68 to i64
  %304 = getelementptr inbounds %struct.BoneInitData, ptr %96, i64 %303
  store ptr null, ptr %304, align 8, !tbaa !101
  br label %305

305:                                              ; preds = %1, %301, %302, %71
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @createTransPose(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #8 !PGOFuncName !646 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  store i32 0, ptr %3, align 8, !tbaa !34
  %4 = tail call ptr @BKE_armature_from_object(ptr noundef %1) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %103, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = icmp eq ptr %8, null
  br i1 %9, label %103, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !115
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load i32, ptr %0, align 8, !tbaa !192
  switch i32 %16, label %17 [
    i32 14, label %20
    i32 0, label %20
  ]

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 60
  %19 = load ptr, ptr %18, align 8, !tbaa !461
  tail call void @BKE_report(ptr noundef %19, i32 noundef 32, ptr noundef nonnull @.str.53) #22
  br label %103

20:                                               ; preds = %15, %15, %10
  %21 = and i32 %12, 512
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %0, align 8, !tbaa !192
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = tail call fastcc signext i16 @pose_grab_with_ik(ptr noundef nonnull %1) #23, !range !317
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !53
  %32 = or i32 %31, 262144
  store i32 %32, ptr %30, align 4, !tbaa !53
  br label %33

33:                                               ; preds = %26, %29, %23, %20
  %34 = phi i1 [ false, %29 ], [ true, %26 ], [ true, %23 ], [ true, %20 ]
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 32
  %36 = load i16, ptr %35, align 2, !tbaa !316
  %37 = tail call i32 @count_set_pose_transflags(ptr noundef nonnull %0, i16 noundef signext %36, ptr noundef nonnull %1) #23
  store i32 %37, ptr %3, align 8, !tbaa !34
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %103, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !53
  %42 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  store ptr %1, ptr %42, align 8, !tbaa !92
  %43 = and i32 %41, -33560581
  %44 = or disjoint i32 %43, 4
  store i32 %44, ptr %40, align 4, !tbaa !53
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %46 = sext i32 %37 to i64
  %47 = mul nsw i64 %46, 224
  %48 = tail call ptr %45(i64 noundef %47, ptr noundef nonnull @.str.54) #22
  %49 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  store ptr %48, ptr %49, align 8, !tbaa !48
  %50 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %51 = load i32, ptr %3, align 8, !tbaa !34
  %52 = sext i32 %51 to i64
  %53 = mul nsw i64 %52, 384
  %54 = tail call ptr %50(i64 noundef %53, ptr noundef nonnull @.str.55) #22
  %55 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 11
  store ptr %54, ptr %55, align 8, !tbaa !449
  %56 = load i32, ptr %3, align 8, !tbaa !34
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %39, %58
  %59 = phi i32 [ %64, %58 ], [ 0, %39 ]
  %60 = phi ptr [ %66, %58 ], [ %54, %39 ]
  %61 = phi ptr [ %65, %58 ], [ %48, %39 ]
  %62 = getelementptr inbounds %struct.TransData, ptr %61, i64 0, i32 13
  store ptr %60, ptr %62, align 8, !tbaa !330
  %63 = getelementptr inbounds %struct.TransData, ptr %61, i64 0, i32 5
  store ptr null, ptr %63, align 8, !tbaa !474
  %64 = add nuw nsw i32 %59, 1
  %65 = getelementptr inbounds %struct.TransData, ptr %61, i64 1
  %66 = getelementptr inbounds %struct.TransDataExtension, ptr %60, i64 1
  %67 = icmp eq i32 %64, %56
  br i1 %67, label %68, label %58, !llvm.loop !647

68:                                               ; preds = %58, %39
  %69 = load ptr, ptr %49, align 8, !tbaa !48
  %70 = load ptr, ptr %7, align 8, !tbaa !59
  %71 = load ptr, ptr %70, align 8, !tbaa !64
  %72 = icmp eq ptr %71, null
  br i1 %72, label %91, label %73

73:                                               ; preds = %68, %84
  %74 = phi ptr [ %86, %84 ], [ %71, %68 ]
  %75 = phi ptr [ %85, %84 ], [ %69, %68 ]
  %76 = getelementptr inbounds %struct.bPoseChannel, ptr %74, i64 0, i32 12
  %77 = load ptr, ptr %76, align 8, !tbaa !68
  %78 = getelementptr inbounds %struct.Bone, ptr %77, i64 0, i32 10
  %79 = load i32, ptr %78, align 8, !tbaa !72
  %80 = and i32 %79, 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %73
  tail call fastcc void @add_pose_transdata(ptr noundef %0, ptr noundef nonnull %74, ptr noundef %1, ptr noundef %75) #23
  %83 = getelementptr inbounds %struct.TransData, ptr %75, i64 1
  br label %84

84:                                               ; preds = %73, %82
  %85 = phi ptr [ %83, %82 ], [ %75, %73 ]
  %86 = load ptr, ptr %74, align 8, !tbaa !64
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %73, !llvm.loop !648

88:                                               ; preds = %84
  %89 = load ptr, ptr %49, align 8, !tbaa !48
  %90 = load i32, ptr %3, align 8, !tbaa !34
  br label %91

91:                                               ; preds = %88, %68
  %92 = phi i32 [ %56, %68 ], [ %90, %88 ]
  %93 = phi ptr [ %69, %68 ], [ %89, %88 ]
  %94 = phi ptr [ %69, %68 ], [ %85, %88 ]
  %95 = sext i32 %92 to i64
  %96 = getelementptr inbounds %struct.TransData, ptr %93, i64 %95
  %97 = icmp eq ptr %94, %96
  br i1 %97, label %101, label %98

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 60
  %100 = load ptr, ptr %99, align 8, !tbaa !461
  tail call void @BKE_report(ptr noundef %100, i32 noundef 1, ptr noundef nonnull @.str.56) #22
  br label %101

101:                                              ; preds = %98, %91
  br i1 %34, label %103, label %102

102:                                              ; preds = %101
  tail call void @transform_autoik_update(ptr noundef nonnull %0, i16 noundef signext 0) #23
  br label %103

103:                                              ; preds = %101, %102, %33, %2, %6, %17
  ret void
}

; Function Attrs: optsize
declare ptr @modifiers_isDeformedByArmature(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @PE_start_edit(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @createTransParticleVerts(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !PGOFuncName !649 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = tail call ptr @CTX_data_active_base(ptr noundef %0) #22
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #22
  %6 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %7 = load ptr, ptr %6, align 8, !tbaa !124
  %8 = tail call ptr @PE_settings(ptr noundef %7) #22
  %9 = load ptr, ptr %6, align 8, !tbaa !124
  %10 = tail call ptr @PE_get_current(ptr noundef %9, ptr noundef %5) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #24
  %11 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !53
  %13 = and i32 %12, 2048
  %14 = icmp eq ptr %10, null
  br i1 %14, label %248, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 57
  %17 = load ptr, ptr %16, align 8, !tbaa !90
  %18 = getelementptr inbounds %struct.ToolSettings, ptr %17, i64 0, i32 18, i32 8
  %19 = load i32, ptr %18, align 8, !tbaa !650
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %248, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.PTCacheEdit, ptr %10, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !146
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call ptr @psys_get_modifier(ptr noundef %5, ptr noundef nonnull %23) #22
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi ptr [ %26, %25 ], [ null, %21 ]
  %29 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !403
  %31 = or i32 %30, 8
  store i32 %31, ptr %29, align 8, !tbaa !403
  %32 = getelementptr inbounds %struct.PTCacheEdit, ptr %10, i64 0, i32 2
  %33 = getelementptr inbounds %struct.PTCacheEdit, ptr %10, i64 0, i32 11
  %34 = load i32, ptr %33, align 8, !tbaa !149
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %248

36:                                               ; preds = %27
  %37 = load ptr, ptr %32, align 8, !tbaa !150
  %38 = icmp eq i32 %13, 0
  br label %39

39:                                               ; preds = %36, %82
  %40 = phi i32 [ 0, %36 ], [ %83, %82 ]
  %41 = phi i32 [ 0, %36 ], [ %84, %82 ]
  %42 = phi i32 [ 0, %36 ], [ %85, %82 ]
  %43 = phi ptr [ %37, %36 ], [ %86, %82 ]
  %44 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %43, i64 0, i32 2
  %45 = load i16, ptr %44, align 4, !tbaa !151
  %46 = and i16 %45, -5
  store i16 %46, ptr %44, align 4, !tbaa !151
  %47 = and i16 %45, 8
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %82

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %43, i64 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !162
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %49
  %54 = load ptr, ptr %43, align 8, !tbaa !163
  br label %55

55:                                               ; preds = %53, %71
  %56 = phi i32 [ %73, %71 ], [ %40, %53 ]
  %57 = phi i32 [ %72, %71 ], [ 0, %53 ]
  %58 = phi i32 [ %74, %71 ], [ 0, %53 ]
  %59 = phi ptr [ %75, %71 ], [ %54, %53 ]
  %60 = getelementptr inbounds %struct.PTCacheEditKey, ptr %59, i64 0, i32 7
  %61 = load i16, ptr %60, align 4, !tbaa !651
  %62 = zext i16 %61 to i32
  %63 = and i32 %62, 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %55
  %66 = and i32 %62, 1
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i1 %38, i1 false
  %69 = select i1 %68, i32 %57, i32 1
  %70 = select i1 %67, i32 %56, i32 1
  br label %71

71:                                               ; preds = %65, %55
  %72 = phi i32 [ %57, %55 ], [ %69, %65 ]
  %73 = phi i32 [ %56, %55 ], [ %70, %65 ]
  %74 = add nuw nsw i32 %58, 1
  %75 = getelementptr inbounds %struct.PTCacheEditKey, ptr %59, i64 1
  %76 = icmp eq i32 %74, %51
  br i1 %76, label %77, label %55, !llvm.loop !652

77:                                               ; preds = %71
  %78 = icmp eq i32 %72, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %77
  %80 = add nsw i32 %51, %41
  %81 = or i16 %45, 4
  store i16 %81, ptr %44, align 4, !tbaa !151
  br label %82

82:                                               ; preds = %49, %39, %77, %79
  %83 = phi i32 [ %73, %79 ], [ %73, %77 ], [ %40, %39 ], [ %40, %49 ]
  %84 = phi i32 [ %80, %79 ], [ %41, %77 ], [ %41, %39 ], [ %41, %49 ]
  %85 = add nuw nsw i32 %42, 1
  %86 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %43, i64 1
  %87 = icmp eq i32 %85, %34
  br i1 %87, label %88, label %39, !llvm.loop !653

88:                                               ; preds = %82
  %89 = icmp eq i32 %83, 0
  br i1 %89, label %248, label %90

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 %84, ptr %91, align 8, !tbaa !34
  %92 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %93 = sext i32 %84 to i64
  %94 = mul nsw i64 %93, 224
  %95 = tail call ptr %92(i64 noundef %94, ptr noundef nonnull @.str.58) #22
  %96 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %95, ptr %96, align 8, !tbaa !48
  %97 = load i32, ptr %1, align 8, !tbaa !192
  %98 = icmp eq i32 %97, 24
  br i1 %98, label %99, label %105

99:                                               ; preds = %90
  %100 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %101 = load i32, ptr %91, align 8, !tbaa !34
  %102 = sext i32 %101 to i64
  %103 = mul nsw i64 %102, 384
  %104 = tail call ptr %100(i64 noundef %103, ptr noundef nonnull @.str.59) #22
  br label %105

105:                                              ; preds = %90, %99
  %106 = phi ptr [ %104, %99 ], [ null, %90 ]
  %107 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 11
  store ptr %106, ptr %107, align 8
  call void @unit_m4(ptr noundef nonnull %3) #22
  %108 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 50
  %109 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 47
  %110 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %108, ptr noundef nonnull %109) #22
  %111 = load i32, ptr %33, align 8, !tbaa !149
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %248

113:                                              ; preds = %105
  %114 = load ptr, ptr %32, align 8, !tbaa !150
  %115 = getelementptr inbounds %struct.ParticleSystem, ptr %23, i64 0, i32 25
  %116 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %28, i64 0, i32 2
  %117 = getelementptr inbounds %struct.ParticleSystem, ptr %23, i64 0, i32 2
  %118 = getelementptr inbounds %struct.ParticleSystem, ptr %23, i64 0, i32 3
  %119 = icmp eq i32 %13, 0
  br label %120

120:                                              ; preds = %113, %240
  %121 = phi i64 [ 0, %113 ], [ %243, %240 ]
  %122 = phi ptr [ %95, %113 ], [ %242, %240 ]
  %123 = phi ptr [ %106, %113 ], [ %241, %240 ]
  %124 = phi ptr [ %114, %113 ], [ %244, %240 ]
  %125 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %124, i64 0, i32 2
  %126 = load i16, ptr %125, align 4, !tbaa !151
  %127 = and i16 %126, 4
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %240, label %129

129:                                              ; preds = %120
  br i1 %24, label %141, label %130

130:                                              ; preds = %129
  %131 = load i32, ptr %115, align 4, !tbaa !153
  %132 = and i32 %131, 2
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  %135 = load ptr, ptr %116, align 8, !tbaa !155
  %136 = load ptr, ptr %117, align 8, !tbaa !158
  %137 = getelementptr inbounds %struct.ParticleSettings, ptr %136, i64 0, i32 8
  %138 = load i16, ptr %137, align 2, !tbaa !159
  %139 = load ptr, ptr %118, align 8, !tbaa !161
  %140 = getelementptr inbounds %struct.ParticleData, ptr %139, i64 %121
  call void @psys_mat_hair_to_global(ptr noundef %5, ptr noundef %135, i16 noundef signext %138, ptr noundef %140, ptr noundef nonnull %3) #22
  br label %141

141:                                              ; preds = %134, %130, %129
  %142 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %124, i64 0, i32 1
  %143 = load i32, ptr %142, align 8, !tbaa !162
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %233

145:                                              ; preds = %141
  %146 = load ptr, ptr %124, align 8, !tbaa !163
  br label %147

147:                                              ; preds = %145, %224
  %148 = phi ptr [ %226, %224 ], [ %122, %145 ]
  %149 = phi ptr [ %229, %224 ], [ %123, %145 ]
  %150 = phi i32 [ %230, %224 ], [ 0, %145 ]
  %151 = phi ptr [ %231, %224 ], [ %146, %145 ]
  %152 = getelementptr inbounds %struct.PTCacheEditKey, ptr %151, i64 0, i32 7
  %153 = load i16, ptr %152, align 4, !tbaa !651
  %154 = and i16 %153, 8
  %155 = icmp eq i16 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %147
  %157 = getelementptr inbounds %struct.PTCacheEditKey, ptr %151, i64 0, i32 4
  %158 = load ptr, ptr %151, align 8, !tbaa !164
  call fastcc void @copy_v3_v3(ptr noundef nonnull %157, ptr noundef %158) #23
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %157) #22
  br label %161

159:                                              ; preds = %147
  %160 = load ptr, ptr %151, align 8, !tbaa !164
  br label %161

161:                                              ; preds = %159, %156
  %162 = phi ptr [ %160, %159 ], [ %157, %156 ]
  %163 = getelementptr inbounds %struct.TransData, ptr %148, i64 0, i32 3
  store ptr %162, ptr %163, align 8
  %164 = getelementptr inbounds %struct.TransData, ptr %148, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %164, ptr noundef %162) #23
  %165 = getelementptr inbounds %struct.TransData, ptr %148, i64 0, i32 7
  %166 = load ptr, ptr %163, align 8, !tbaa !215
  call fastcc void @copy_v3_v3(ptr noundef nonnull %165, ptr noundef %166) #23
  %167 = load i16, ptr %152, align 4, !tbaa !651
  %168 = and i16 %167, 1
  %169 = icmp ne i16 %168, 0
  %170 = select i1 %169, i1 true, i1 %119
  br i1 %170, label %171, label %176

171:                                              ; preds = %161
  %172 = select i1 %169, i32 1, i32 2048
  %173 = getelementptr inbounds %struct.TransData, ptr %148, i64 0, i32 16
  %174 = load i32, ptr %173, align 8, !tbaa !49
  %175 = or i32 %174, %172
  store i32 %175, ptr %173, align 8, !tbaa !49
  br label %176

176:                                              ; preds = %161, %171
  %177 = getelementptr inbounds %struct.TransData, ptr %148, i64 0, i32 8
  call void @unit_m3(ptr noundef nonnull %177) #22
  %178 = getelementptr inbounds %struct.TransData, ptr %148, i64 0, i32 9
  call void @unit_m3(ptr noundef nonnull %178) #22
  %179 = icmp eq i32 %150, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %176
  %181 = load i16, ptr %8, align 8, !tbaa !654
  %182 = and i16 %181, 2
  %183 = icmp eq i16 %182, 0
  br i1 %183, label %193, label %184

184:                                              ; preds = %180
  br i1 %24, label %189, label %185

185:                                              ; preds = %184
  %186 = load i32, ptr %115, align 4, !tbaa !153
  %187 = and i32 %186, 2
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %185, %184
  %190 = getelementptr inbounds %struct.TransData, ptr %148, i64 0, i32 17
  %191 = load i16, ptr %190, align 4, !tbaa !644
  %192 = or i16 %191, 7
  store i16 %192, ptr %190, align 4, !tbaa !644
  br label %193

193:                                              ; preds = %189, %185, %180, %176
  %194 = getelementptr inbounds %struct.TransData, ptr %148, i64 0, i32 11
  store ptr %5, ptr %194, align 8, !tbaa !322
  %195 = getelementptr inbounds %struct.TransData, ptr %148, i64 0, i32 13
  store ptr %149, ptr %195, align 8, !tbaa !330
  %196 = load i32, ptr %1, align 8, !tbaa !192
  %197 = icmp eq i32 %196, 24
  br i1 %197, label %200, label %198

198:                                              ; preds = %193
  %199 = load i32, ptr %142, align 8, !tbaa !162
  br label %224

200:                                              ; preds = %193
  %201 = getelementptr inbounds %struct.PTCacheEditKey, ptr %151, i64 0, i32 3
  %202 = load ptr, ptr %201, align 8, !tbaa !655
  %203 = getelementptr inbounds %struct.TransData, ptr %148, i64 0, i32 5
  store ptr %202, ptr %203, align 8, !tbaa !474
  %204 = load float, ptr %202, align 4, !tbaa !123
  %205 = getelementptr inbounds %struct.TransData, ptr %148, i64 0, i32 6
  store float %204, ptr %205, align 8, !tbaa !475
  %206 = getelementptr inbounds %struct.TransData, ptr %148, i64 0, i32 16
  %207 = load i32, ptr %206, align 8, !tbaa !49
  %208 = or i32 %207, 1024
  store i32 %208, ptr %206, align 8, !tbaa !49
  br i1 %179, label %212, label %209

209:                                              ; preds = %200
  %210 = getelementptr %struct.PTCacheEditKey, ptr %151, i64 -1, i32 3
  %211 = load ptr, ptr %210, align 8, !tbaa !655
  br label %212

212:                                              ; preds = %200, %209
  %213 = phi ptr [ %211, %209 ], [ null, %200 ]
  %214 = getelementptr inbounds %struct.TransDataExtension, ptr %149, i64 0, i32 11
  store ptr %213, ptr %214, align 8
  %215 = load i32, ptr %142, align 8, !tbaa !162
  %216 = add nsw i32 %215, -1
  %217 = icmp eq i32 %150, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %212
  %219 = getelementptr inbounds %struct.TransDataExtension, ptr %149, i64 0, i32 5
  store ptr null, ptr %219, align 8, !tbaa !636
  br label %224

220:                                              ; preds = %212
  %221 = getelementptr inbounds %struct.PTCacheEditKey, ptr %151, i64 1, i32 3
  %222 = load ptr, ptr %221, align 8, !tbaa !655
  %223 = getelementptr inbounds %struct.TransDataExtension, ptr %149, i64 0, i32 5
  store ptr %222, ptr %223, align 8, !tbaa !636
  br label %224

224:                                              ; preds = %198, %218, %220
  %225 = phi i32 [ %199, %198 ], [ %215, %218 ], [ %215, %220 ]
  %226 = getelementptr %struct.TransData, ptr %148, i64 1
  %227 = icmp eq ptr %149, null
  %228 = getelementptr inbounds %struct.TransDataExtension, ptr %149, i64 1
  %229 = select i1 %227, ptr null, ptr %228
  %230 = add nuw nsw i32 %150, 1
  %231 = getelementptr inbounds %struct.PTCacheEditKey, ptr %151, i64 1
  %232 = icmp slt i32 %230, %225
  br i1 %232, label %147, label %233, !llvm.loop !656

233:                                              ; preds = %224, %141
  %234 = phi ptr [ %123, %141 ], [ %229, %224 ]
  %235 = phi ptr [ %122, %141 ], [ %226, %224 ]
  %236 = icmp eq ptr %122, %235
  %237 = select i1 %119, i1 true, i1 %236
  br i1 %237, label %240, label %238

238:                                              ; preds = %233
  %239 = getelementptr inbounds %struct.TransData, ptr %235, i64 -1
  call fastcc void @calc_distanceCurveVerts(ptr noundef %122, ptr noundef nonnull %239) #23
  br label %240

240:                                              ; preds = %233, %238, %120
  %241 = phi ptr [ %123, %120 ], [ %234, %238 ], [ %234, %233 ]
  %242 = phi ptr [ %122, %120 ], [ %235, %238 ], [ %235, %233 ]
  %243 = add nuw nsw i64 %121, 1
  %244 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %124, i64 1
  %245 = load i32, ptr %33, align 8, !tbaa !149
  %246 = sext i32 %245 to i64
  %247 = icmp slt i64 %243, %246
  br i1 %247, label %120, label %248, !llvm.loop !657

248:                                              ; preds = %240, %27, %105, %88, %2, %15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @createTransObject(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !PGOFuncName !658 {
  %3 = alloca %struct.ListBase, align 8
  %4 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !53
  tail call fastcc void @set_trans_object_base_flags(ptr noundef %1) #23
  %8 = tail call i32 @ctx_data_list_count(ptr noundef %0, ptr noundef nonnull @CTX_data_selected_objects) #22
  %9 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 %8, ptr %9, align 8, !tbaa !34
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call fastcc void @clear_trans_object_base_flags(ptr noundef nonnull %1) #23
  br label %125

12:                                               ; preds = %2
  %13 = and i32 %7, 2048
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = tail call fastcc i32 @count_proportional_objects(ptr noundef nonnull %1) #23
  %17 = load i32, ptr %9, align 8, !tbaa !34
  %18 = add nsw i32 %17, %16
  store i32 %18, ptr %9, align 8, !tbaa !34
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i32 [ %18, %15 ], [ %8, %12 ]
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %22 = sext i32 %20 to i64
  %23 = mul nsw i64 %22, 224
  %24 = tail call ptr %21(i64 noundef %23, ptr noundef nonnull @.str.60) #22
  %25 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %24, ptr %25, align 8, !tbaa !48
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %27 = load i32, ptr %9, align 8, !tbaa !34
  %28 = sext i32 %27 to i64
  %29 = mul nsw i64 %28, 384
  %30 = tail call ptr %26(i64 noundef %29, ptr noundef nonnull @.str.61) #22
  %31 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 11
  store ptr %30, ptr %31, align 8, !tbaa !449
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %32 = call i32 @CTX_data_selected_bases(ptr noundef %0, ptr noundef nonnull %3) #22
  %33 = load ptr, ptr %3, align 8, !tbaa !64
  %34 = icmp eq ptr %33, null
  br i1 %34, label %69, label %35

35:                                               ; preds = %19, %63
  %36 = phi ptr [ %67, %63 ], [ %33, %19 ]
  %37 = phi ptr [ %65, %63 ], [ %24, %19 ]
  %38 = phi ptr [ %66, %63 ], [ %30, %19 ]
  %39 = getelementptr inbounds %struct.CollectionPointerLink, ptr %36, i64 0, i32 2, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !659
  %41 = getelementptr inbounds %struct.Base, ptr %40, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !144
  %43 = getelementptr inbounds %struct.TransData, ptr %37, i64 0, i32 16
  store i32 1, ptr %43, align 8, !tbaa !49
  %44 = getelementptr inbounds %struct.Object, ptr %42, i64 0, i32 56
  %45 = load i16, ptr %44, align 2, !tbaa !663
  %46 = getelementptr inbounds %struct.TransData, ptr %37, i64 0, i32 17
  store i16 %45, ptr %46, align 4, !tbaa !644
  %47 = getelementptr inbounds %struct.TransData, ptr %37, i64 0, i32 13
  store ptr %38, ptr %47, align 8, !tbaa !330
  %48 = getelementptr inbounds %struct.Object, ptr %42, i64 0, i32 83
  %49 = load i16, ptr %48, align 8, !tbaa !664
  %50 = sext i16 %49 to i32
  %51 = getelementptr inbounds %struct.TransDataExtension, ptr %38, i64 0, i32 17
  store i32 %50, ptr %51, align 8, !tbaa !665
  %52 = getelementptr inbounds %struct.Base, ptr %40, i64 0, i32 4
  %53 = load i32, ptr %52, align 8, !tbaa !403
  %54 = and i32 %53, 256
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %35
  store i32 8705, ptr %43, align 8, !tbaa !49
  br label %57

57:                                               ; preds = %56, %35
  %58 = phi i32 [ 10753, %56 ], [ 2049, %35 ]
  %59 = getelementptr inbounds %struct.ID, ptr %42, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !666
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  store i32 %58, ptr %43, align 8, !tbaa !49
  br label %63

63:                                               ; preds = %62, %57
  call fastcc void @ObjectToTransData(ptr noundef %1, ptr noundef nonnull %37, ptr noundef nonnull %42) #23
  %64 = getelementptr inbounds %struct.TransData, ptr %37, i64 0, i32 5
  store ptr null, ptr %64, align 8, !tbaa !474
  %65 = getelementptr inbounds %struct.TransData, ptr %37, i64 1
  %66 = getelementptr inbounds %struct.TransDataExtension, ptr %38, i64 1
  %67 = load ptr, ptr %36, align 8, !tbaa !64
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %35, !llvm.loop !667

69:                                               ; preds = %63, %19
  %70 = phi ptr [ %30, %19 ], [ %66, %63 ]
  %71 = phi ptr [ %24, %19 ], [ %65, %63 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  br i1 %14, label %125, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 5
  %74 = load ptr, ptr %73, align 8, !tbaa !64
  %75 = icmp eq ptr %74, null
  br i1 %75, label %125, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 52
  %78 = load ptr, ptr %77, align 8, !tbaa !319
  %79 = icmp eq ptr %78, null
  %80 = getelementptr inbounds %struct.View3D, ptr %78, i64 0, i32 22
  %81 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 12
  %82 = select i1 %79, ptr %81, ptr %80
  br label %83

83:                                               ; preds = %76, %120
  %84 = phi ptr [ %74, %76 ], [ %123, %120 ]
  %85 = phi ptr [ %71, %76 ], [ %122, %120 ]
  %86 = phi ptr [ %70, %76 ], [ %121, %120 ]
  %87 = getelementptr inbounds %struct.Base, ptr %84, i64 0, i32 7
  %88 = load ptr, ptr %87, align 8, !tbaa !144
  %89 = getelementptr inbounds %struct.Object, ptr %88, i64 0, i32 53
  %90 = load i16, ptr %89, align 4, !tbaa !668
  %91 = and i16 %90, 8449
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %120

93:                                               ; preds = %83
  %94 = getelementptr inbounds %struct.Base, ptr %84, i64 0, i32 2
  %95 = load i32, ptr %94, align 8, !tbaa !451
  %96 = load i32, ptr %82, align 8, !tbaa !58
  %97 = and i32 %96, %95
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %120, label %99

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.ID, ptr %88, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !666
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %120

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.Object, ptr %88, i64 0, i32 102
  %105 = load i8, ptr %104, align 8, !tbaa !453
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.Object, ptr %88, i64 0, i32 56
  %110 = load i16, ptr %109, align 2, !tbaa !663
  %111 = getelementptr inbounds %struct.TransData, ptr %85, i64 0, i32 17
  store i16 %110, ptr %111, align 4, !tbaa !644
  %112 = getelementptr inbounds %struct.TransData, ptr %85, i64 0, i32 13
  store ptr %86, ptr %112, align 8, !tbaa !330
  %113 = getelementptr inbounds %struct.Object, ptr %88, i64 0, i32 83
  %114 = load i16, ptr %113, align 8, !tbaa !664
  %115 = sext i16 %114 to i32
  %116 = getelementptr inbounds %struct.TransDataExtension, ptr %86, i64 0, i32 17
  store i32 %115, ptr %116, align 8, !tbaa !665
  call fastcc void @ObjectToTransData(ptr noundef %1, ptr noundef %85, ptr noundef nonnull %88) #23
  %117 = getelementptr inbounds %struct.TransData, ptr %85, i64 0, i32 5
  store ptr null, ptr %117, align 8, !tbaa !474
  %118 = getelementptr inbounds %struct.TransData, ptr %85, i64 1
  %119 = getelementptr inbounds %struct.TransDataExtension, ptr %86, i64 1
  br label %120

120:                                              ; preds = %108, %103, %99, %93, %83
  %121 = phi ptr [ %119, %108 ], [ %86, %103 ], [ %86, %99 ], [ %86, %93 ], [ %86, %83 ]
  %122 = phi ptr [ %118, %108 ], [ %85, %103 ], [ %85, %99 ], [ %85, %93 ], [ %85, %83 ]
  %123 = load ptr, ptr %84, align 8, !tbaa !64
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %83, !llvm.loop !669

125:                                              ; preds = %120, %72, %69, %11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: optsize
declare void @BKE_sequence_calc_disp(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BKE_sequencer_offset_animdata(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !670 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !671
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !671
  ret void
}

; Function Attrs: optsize
declare void @EDBM_automerge(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @ED_space_clip_get_mask(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @ED_space_image_get_mask(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare zeroext i8 @ED_mask_layer_shape_auto_key_select(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @nodeFreeNode(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @BKE_tracking_get_active_plane_tracks(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @ED_space_clip_get_clip_frame_number(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BKE_tracking_track_plane_from_existing_motion(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare zeroext i8 @nodeUpdateID(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @delete_fcurve_key(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BLI_sortlist_r(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @gpf_cmp_frame(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #7 !PGOFuncName !672 {
  %4 = getelementptr inbounds %struct.bGPDframe, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !381
  %6 = getelementptr inbounds %struct.bGPDframe, ptr %2, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !381
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %22, label %9

9:                                                ; preds = %3
  %10 = icmp sgt i32 %5, %7
  br i1 %10, label %22, label %11

11:                                               ; preds = %9
  store i8 1, ptr %0, align 1, !tbaa !88
  %12 = getelementptr inbounds %struct.bGPDframe, ptr %1, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !673
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.bGPDframe, ptr %2, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !673
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %11
  br label %22

22:                                               ; preds = %16, %9, %3, %21
  %23 = phi i32 [ 0, %21 ], [ -1, %3 ], [ 1, %9 ], [ 1, %16 ]
  ret i32 %23
}

; Function Attrs: optsize
declare zeroext i8 @gpencil_layer_delframe(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @masklay_shape_cmp_frame(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #7 !PGOFuncName !674 {
  %4 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !388
  %6 = getelementptr inbounds %struct.MaskLayerShape, ptr %2, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !388
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %22, label %9

9:                                                ; preds = %3
  %10 = icmp sgt i32 %5, %7
  br i1 %10, label %22, label %11

11:                                               ; preds = %9
  store i8 1, ptr %0, align 1, !tbaa !88
  %12 = getelementptr inbounds %struct.MaskLayerShape, ptr %1, i64 0, i32 5
  %13 = load i8, ptr %12, align 8, !tbaa !675
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.MaskLayerShape, ptr %2, i64 0, i32 5
  %18 = load i8, ptr %17, align 8, !tbaa !675
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %11
  br label %22

22:                                               ; preds = %16, %9, %3, %21
  %23 = phi i32 [ 0, %21 ], [ -1, %3 ], [ 1, %9 ], [ 1, %16 ]
  ret i32 %23
}

; Function Attrs: optsize
declare void @BKE_mask_layer_shape_unlink(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BKE_armature_mat_pose_to_bone(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @mat3_to_eulO(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @mat3_to_axis_angle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @mat3_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @eulO_to_mat3(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #9

; Function Attrs: optsize
declare void @axis_angle_to_mat3(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @quat_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @mat3_to_size(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BIK_clear_data(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @BKE_tracking_plane_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare zeroext i8 @BKE_object_obdata_is_libdata(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @normalize_m3(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @pseudoinverse_m3_m3(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @BKE_object_obdata_texspace_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #8 !PGOFuncName !676 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #23
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #23
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #3 !PGOFuncName !677 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !671
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #8 !PGOFuncName !678 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !679
  %4 = tail call ptr %3(ptr noundef %0) #22
  ret ptr %4
}

; Function Attrs: optsize
declare void @BM_mesh_cd_flag_ensure(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @BKE_mesh_from_object(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #8 !PGOFuncName !681 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !682
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
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !683
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !679
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !684
  br label %26

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !683
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !679
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !685
  br label %26

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !683
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !679
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !686
  br label %26

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !683
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !679
  br label %26

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !683
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !679
  br label %26

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !683
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !679
  br label %26

20:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !683
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !679
  br label %26

21:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !683
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !679
  br label %26

22:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !683
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !679
  br label %26

23:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !683
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !679
  br label %26

24:                                               ; preds = %4
  store ptr @bmiter__loop_of_face_begin, ptr %6, align 8, !tbaa !683
  store ptr @bmiter__loop_of_face_step, ptr %7, align 8, !tbaa !679
  br label %26

25:                                               ; preds = %4
  unreachable

26:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %14, %11, %8
  %27 = phi ptr [ %3, %24 ], [ %3, %23 ], [ %3, %22 ], [ %3, %21 ], [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %28 = phi ptr [ @bmiter__loop_of_face_begin, %24 ], [ @bmiter__edge_of_face_begin, %23 ], [ @bmiter__vert_of_face_begin, %22 ], [ @bmiter__face_of_edge_begin, %21 ], [ @bmiter__vert_of_edge_begin, %20 ], [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %27, ptr %0, align 8, !tbaa !88
  tail call void %28(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #9

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #9

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #9

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #9

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #9

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #9

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #9

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #9

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #9

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #9

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #9

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #9

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #9

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #9

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #9

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #9

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #9

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #9

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !PGOFuncName !687 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #23
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #22
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #23
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #23
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !PGOFuncName !688 {
  %4 = load float, ptr %1, align 4, !tbaa !123
  %5 = load float, ptr %2, align 4, !tbaa !123
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !123
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !123
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !123
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !123
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !123
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !123
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !123
  ret void
}

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !689 {
  %3 = load float, ptr %1, align 4, !tbaa !123
  %4 = load float, ptr %0, align 4, !tbaa !123
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !123
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !123
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !123
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !123
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !123
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !123
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v3(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !690 {
  %2 = load float, ptr %0, align 4, !tbaa !123
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !123
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !123
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %6)
  ret float %9
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !691 {
  %3 = load float, ptr %0, align 4, !tbaa !123
  %4 = load float, ptr %1, align 4, !tbaa !123
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !123
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !123
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !123
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !123
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #7 !PGOFuncName !692 {
  %4 = load float, ptr %1, align 4, !tbaa !123
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !123
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !123
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !123
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !123
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #17 !PGOFuncName !693 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !123
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !123
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @CTX_data_edit_mask(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @BKE_mask_point_handles_mode_get(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @MaskPointToTransData(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6) unnamed_addr #8 !PGOFuncName !694 {
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x [3 x float]], align 16
  %10 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 8
  %11 = load i8, ptr %10, align 4, !tbaa !492
  %12 = and i8 %11, 1
  %13 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 7
  %14 = load i8, ptr %13, align 1, !tbaa !491
  %15 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 9
  %16 = load i8, ptr %15, align 1, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #24
  %17 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !262
  %19 = sitofp i32 %18 to float
  call void @BKE_mask_point_parent_matrix_get(ptr noundef %1, float noundef %19, ptr noundef nonnull %8) #22
  %20 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %9, ptr noundef nonnull %8) #22
  %21 = icmp ne i32 %5, 0
  %22 = icmp ne i8 %12, 0
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %24, label %93

24:                                               ; preds = %7
  %25 = or i8 %14, %16
  %26 = or i8 %25, %11
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.TransDataMasking, ptr %4, i64 0, i32 4
  store ptr %1, ptr %28, align 8, !tbaa !437
  %29 = getelementptr inbounds %struct.TransDataMasking, ptr %4, i64 0, i32 3
  call void @copy_m3_m3(ptr noundef nonnull %29, ptr noundef nonnull %1) #22
  %30 = getelementptr inbounds float, ptr %6, i64 1
  %31 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 1
  %32 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 2
  %33 = icmp eq i8 %27, 0
  %34 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  %35 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  br label %36

36:                                               ; preds = %24, %87
  %37 = phi i64 [ 0, %24 ], [ %91, %87 ]
  %38 = phi ptr [ %2, %24 ], [ %88, %87 ]
  %39 = phi ptr [ %3, %24 ], [ %89, %87 ]
  %40 = phi ptr [ %4, %24 ], [ %90, %87 ]
  %41 = getelementptr inbounds %struct.TransDataMasking, ptr %40, i64 0, i32 5
  call void @copy_m3_m3(ptr noundef nonnull %41, ptr noundef nonnull %8) #22
  %42 = getelementptr inbounds %struct.TransDataMasking, ptr %40, i64 0, i32 6
  call void @copy_m3_m3(ptr noundef nonnull %42, ptr noundef nonnull %9) #22
  %43 = getelementptr inbounds [3 x [3 x float]], ptr %1, i64 0, i64 %37
  call void @mul_v2_m3v2(ptr noundef %39, ptr noundef nonnull %8, ptr noundef %43) #22
  %44 = load float, ptr %6, align 4, !tbaa !123
  %45 = load float, ptr %39, align 8, !tbaa !123
  %46 = fmul float %44, %45
  store float %46, ptr %39, align 8, !tbaa !123
  %47 = load float, ptr %30, align 4, !tbaa !123
  %48 = getelementptr inbounds [3 x float], ptr %39, i64 0, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !123
  %50 = fmul float %47, %49
  store float %50, ptr %48, align 4, !tbaa !123
  %51 = getelementptr inbounds [3 x float], ptr %39, i64 0, i64 2
  store float 0.000000e+00, ptr %51, align 8, !tbaa !123
  %52 = getelementptr inbounds %struct.TransData2D, ptr %39, i64 0, i32 1
  store ptr %43, ptr %52, align 8, !tbaa !211
  %53 = getelementptr inbounds %struct.TransData, ptr %38, i64 0, i32 16
  store i32 0, ptr %53, align 8, !tbaa !49
  %54 = getelementptr inbounds %struct.TransData, ptr %38, i64 0, i32 3
  store ptr %39, ptr %54, align 8, !tbaa !215
  %55 = getelementptr inbounds %struct.TransData, ptr %38, i64 0, i32 7
  call void @mul_v2_m3v2(ptr noundef nonnull %55, ptr noundef nonnull %8, ptr noundef nonnull %31) #22
  %56 = load float, ptr %6, align 4, !tbaa !123
  %57 = load float, ptr %55, align 4, !tbaa !123
  %58 = fmul float %56, %57
  store float %58, ptr %55, align 4, !tbaa !123
  %59 = load float, ptr %30, align 4, !tbaa !123
  %60 = getelementptr inbounds %struct.TransData, ptr %38, i64 0, i32 7, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !123
  %62 = fmul float %59, %61
  store float %62, ptr %60, align 4, !tbaa !123
  %63 = getelementptr inbounds %struct.TransData, ptr %38, i64 0, i32 4
  %64 = load ptr, ptr %54, align 8, !tbaa !215
  call fastcc void @copy_v3_v3(ptr noundef nonnull %63, ptr noundef %64) #23
  %65 = getelementptr inbounds %struct.TransData, ptr %38, i64 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %65, i8 0, i64 32, i1 false)
  %66 = getelementptr inbounds %struct.TransData, ptr %38, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %66, align 8, !tbaa !123
  %67 = getelementptr inbounds %struct.TransData, ptr %38, i64 0, i32 13
  store ptr null, ptr %67, align 8, !tbaa !330
  %68 = icmp eq i64 %37, 1
  br i1 %68, label %69, label %72

69:                                               ; preds = %36
  %70 = load float, ptr %32, align 4, !tbaa !123
  %71 = getelementptr inbounds %struct.TransData, ptr %38, i64 0, i32 6
  store float %70, ptr %71, align 8, !tbaa !475
  br label %72

72:                                               ; preds = %36, %69
  %73 = phi ptr [ %32, %69 ], [ null, %36 ]
  %74 = getelementptr inbounds %struct.TransData, ptr %38, i64 0, i32 5
  store ptr %73, ptr %74, align 8
  br i1 %33, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, ptr %53, align 8, !tbaa !49
  %77 = or i32 %76, 1
  store i32 %77, ptr %53, align 8, !tbaa !49
  br label %78

78:                                               ; preds = %75, %72
  store float 0.000000e+00, ptr %38, align 8, !tbaa !55
  %79 = getelementptr inbounds %struct.TransData, ptr %38, i64 0, i32 8
  call void @unit_m3(ptr noundef nonnull %79) #22
  %80 = getelementptr inbounds %struct.TransData, ptr %38, i64 0, i32 9
  call void @unit_m3(ptr noundef nonnull %80) #22
  %81 = trunc i64 %37 to i32
  switch i32 %81, label %87 [
    i32 0, label %83
    i32 2, label %82
  ]

82:                                               ; preds = %78
  br label %83

83:                                               ; preds = %78, %82
  %84 = phi ptr [ %34, %82 ], [ %35, %78 ]
  %85 = load i8, ptr %84, align 1, !tbaa !88
  %86 = getelementptr inbounds %struct.TransDataMasking, ptr %40, i64 0, i32 7
  store i8 %85, ptr %86, align 8, !tbaa !439
  br label %87

87:                                               ; preds = %83, %78
  %88 = getelementptr inbounds %struct.TransData, ptr %38, i64 1
  %89 = getelementptr inbounds %struct.TransData2D, ptr %39, i64 1
  %90 = getelementptr inbounds %struct.TransDataMasking, ptr %40, i64 1
  %91 = add nuw nsw i64 %37, 1
  %92 = icmp eq i64 %91, 3
  br i1 %92, label %124, label %36, !llvm.loop !695

93:                                               ; preds = %7
  %94 = call i32 @BKE_mask_point_handles_mode_get(ptr noundef nonnull %1) #22
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  call fastcc void @MaskHandleToTransData(ptr noundef nonnull %1, i32 noundef 1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %6, ptr noundef nonnull %8, ptr noundef nonnull %9) #23
  br label %124

97:                                               ; preds = %93
  %98 = load i8, ptr %13, align 1, !tbaa !369
  %99 = and i8 %98, 1
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %97
  call fastcc void @MaskHandleToTransData(ptr noundef nonnull %1, i32 noundef 2, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %6, ptr noundef nonnull %8, ptr noundef nonnull %9) #23
  %102 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  %103 = load i8, ptr %102, align 1, !tbaa !568
  switch i8 %103, label %107 [
    i8 2, label %104
    i8 1, label %105
  ]

104:                                              ; preds = %101
  store i8 0, ptr %102, align 1, !tbaa !568
  br label %107

105:                                              ; preds = %101
  store i8 5, ptr %102, align 1, !tbaa !568
  %106 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  store i8 5, ptr %106, align 2, !tbaa !569
  br label %107

107:                                              ; preds = %101, %105, %104
  %108 = getelementptr inbounds %struct.TransData, ptr %2, i64 1
  %109 = getelementptr inbounds %struct.TransData2D, ptr %3, i64 1
  %110 = getelementptr inbounds %struct.TransDataMasking, ptr %4, i64 1
  br label %111

111:                                              ; preds = %107, %97
  %112 = phi ptr [ %110, %107 ], [ %4, %97 ]
  %113 = phi ptr [ %109, %107 ], [ %3, %97 ]
  %114 = phi ptr [ %108, %107 ], [ %2, %97 ]
  %115 = load i8, ptr %15, align 1, !tbaa !370
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %111
  call fastcc void @MaskHandleToTransData(ptr noundef nonnull %1, i32 noundef 3, ptr noundef %114, ptr noundef %113, ptr noundef %112, ptr noundef %6, ptr noundef nonnull %8, ptr noundef nonnull %9) #23
  %119 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  %120 = load i8, ptr %119, align 2, !tbaa !569
  switch i8 %120, label %124 [
    i8 2, label %121
    i8 1, label %122
  ]

121:                                              ; preds = %118
  store i8 0, ptr %119, align 2, !tbaa !569
  br label %124

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  store i8 5, ptr %123, align 1, !tbaa !568
  store i8 5, ptr %119, align 2, !tbaa !569
  br label %124

124:                                              ; preds = %87, %121, %122, %118, %96, %111
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #24
  ret void
}

; Function Attrs: optsize
declare void @BKE_mask_point_parent_matrix_get(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @mul_v2_m3v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @unit_m3(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @MaskHandleToTransData(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6, ptr noundef %7) unnamed_addr #8 !PGOFuncName !696 {
  %9 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 7
  %10 = load i8, ptr %9, align 1, !tbaa !491
  %11 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 8
  %12 = load i8, ptr %11, align 4, !tbaa !492
  %13 = or i8 %12, %10
  %14 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 9
  %15 = load i8, ptr %14, align 1, !tbaa !493
  %16 = or i8 %13, %15
  %17 = and i8 %16, 1
  %18 = getelementptr inbounds %struct.TransDataMasking, ptr %4, i64 0, i32 4
  store ptr %0, ptr %18, align 8, !tbaa !437
  %19 = getelementptr inbounds %struct.TransDataMasking, ptr %4, i64 0, i32 3
  tail call void @copy_m3_m3(ptr noundef nonnull %19, ptr noundef %0) #22
  store i8 1, ptr %4, align 8, !tbaa !435
  %20 = getelementptr inbounds %struct.TransDataMasking, ptr %4, i64 0, i32 5
  tail call void @copy_m3_m3(ptr noundef nonnull %20, ptr noundef %6) #22
  %21 = getelementptr inbounds %struct.TransDataMasking, ptr %4, i64 0, i32 6
  tail call void @copy_m3_m3(ptr noundef nonnull %21, ptr noundef %7) #22
  %22 = getelementptr inbounds %struct.TransDataMasking, ptr %4, i64 0, i32 1
  tail call void @BKE_mask_point_handle(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %22) #22
  %23 = getelementptr inbounds %struct.TransDataMasking, ptr %4, i64 0, i32 8
  store i32 %1, ptr %23, align 4, !tbaa !438
  %24 = getelementptr inbounds %struct.TransDataMasking, ptr %4, i64 0, i32 2
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %24, ptr noundef nonnull %22) #23
  tail call void @mul_v2_m3v2(ptr noundef %3, ptr noundef %6, ptr noundef nonnull %22) #22
  %25 = load float, ptr %5, align 4, !tbaa !123
  %26 = load float, ptr %3, align 8, !tbaa !123
  %27 = fmul float %25, %26
  store float %27, ptr %3, align 8, !tbaa !123
  %28 = getelementptr inbounds float, ptr %5, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !123
  %30 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !123
  %32 = fmul float %29, %31
  store float %32, ptr %30, align 4, !tbaa !123
  %33 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0.000000e+00, ptr %33, align 8, !tbaa !123
  %34 = getelementptr inbounds %struct.TransData2D, ptr %3, i64 0, i32 1
  store ptr %22, ptr %34, align 8, !tbaa !211
  %35 = getelementptr inbounds %struct.TransData, ptr %2, i64 0, i32 16
  store i32 0, ptr %35, align 8, !tbaa !49
  %36 = getelementptr inbounds %struct.TransData, ptr %2, i64 0, i32 3
  store ptr %3, ptr %36, align 8, !tbaa !215
  %37 = getelementptr inbounds %struct.TransData, ptr %2, i64 0, i32 7
  %38 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  tail call void @mul_v2_m3v2(ptr noundef nonnull %37, ptr noundef %6, ptr noundef nonnull %38) #22
  %39 = load float, ptr %5, align 4, !tbaa !123
  %40 = load float, ptr %37, align 4, !tbaa !123
  %41 = fmul float %39, %40
  store float %41, ptr %37, align 4, !tbaa !123
  %42 = load float, ptr %28, align 4, !tbaa !123
  %43 = getelementptr inbounds %struct.TransData, ptr %2, i64 0, i32 7, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !123
  %45 = fmul float %42, %44
  store float %45, ptr %43, align 4, !tbaa !123
  %46 = getelementptr inbounds %struct.TransData, ptr %2, i64 0, i32 4
  %47 = load ptr, ptr %36, align 8, !tbaa !215
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %46, ptr noundef %47) #23
  %48 = getelementptr inbounds %struct.TransData, ptr %2, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %48, i8 0, i64 32, i1 false)
  %49 = getelementptr inbounds %struct.TransData, ptr %2, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %49, align 8, !tbaa !123
  %50 = getelementptr inbounds %struct.TransData, ptr %2, i64 0, i32 13
  store ptr null, ptr %50, align 8, !tbaa !330
  %51 = getelementptr inbounds %struct.TransData, ptr %2, i64 0, i32 5
  store ptr null, ptr %51, align 8, !tbaa !474
  %52 = icmp eq i8 %17, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %8
  %54 = load i32, ptr %35, align 8, !tbaa !49
  %55 = or i32 %54, 1
  store i32 %55, ptr %35, align 8, !tbaa !49
  br label %56

56:                                               ; preds = %53, %8
  store float 0.000000e+00, ptr %2, align 8, !tbaa !55
  %57 = getelementptr inbounds %struct.TransData, ptr %2, i64 0, i32 8
  tail call void @unit_m3(ptr noundef nonnull %57) #22
  %58 = getelementptr inbounds %struct.TransData, ptr %2, i64 0, i32 9
  tail call void @unit_m3(ptr noundef nonnull %58) #22
  switch i32 %1, label %67 [
    i32 2, label %59
    i32 3, label %61
  ]

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 5
  br label %63

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 6
  br label %63

63:                                               ; preds = %59, %61
  %64 = phi ptr [ %62, %61 ], [ %60, %59 ]
  %65 = load i8, ptr %64, align 1, !tbaa !88
  %66 = getelementptr inbounds %struct.TransDataMasking, ptr %4, i64 0, i32 7
  store i8 %65, ptr %66, align 8, !tbaa !439
  br label %67

67:                                               ; preds = %63, %56
  ret void
}

; Function Attrs: optsize
declare void @BKE_mask_point_handle(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @BKE_paint_get_active_from_context(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @PaintCurvePointToTransData(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #8 !PGOFuncName !697 {
  %5 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 8
  %6 = load i8, ptr %5, align 4, !tbaa !510
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %8, label %38

8:                                                ; preds = %4
  %9 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %36, %10 ]
  %12 = phi ptr [ %1, %8 ], [ %33, %10 ]
  %13 = phi ptr [ %3, %8 ], [ %35, %10 ]
  %14 = phi ptr [ %2, %8 ], [ %34, %10 ]
  %15 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 %11
  tail call fastcc void @copy_v2_v2(ptr noundef %14, ptr noundef %15) #23
  %16 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  store float 0.000000e+00, ptr %16, align 8, !tbaa !123
  %17 = getelementptr inbounds %struct.TransData2D, ptr %14, i64 0, i32 1
  store ptr %15, ptr %17, align 8, !tbaa !211
  %18 = getelementptr inbounds %struct.TransData, ptr %12, i64 0, i32 16
  store i32 0, ptr %18, align 8, !tbaa !49
  %19 = getelementptr inbounds %struct.TransData, ptr %12, i64 0, i32 3
  store ptr %14, ptr %19, align 8, !tbaa !215
  %20 = getelementptr inbounds %struct.TransData, ptr %12, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef nonnull %9) #23
  %21 = getelementptr inbounds %struct.TransData, ptr %12, i64 0, i32 4
  %22 = load ptr, ptr %19, align 8, !tbaa !215
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %21, ptr noundef %22) #23
  %23 = getelementptr inbounds %struct.TransData, ptr %12, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %23, i8 0, i64 32, i1 false)
  %24 = getelementptr inbounds %struct.TransData, ptr %12, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %24, align 8, !tbaa !123
  %25 = getelementptr inbounds %struct.TransData, ptr %12, i64 0, i32 13
  store ptr null, ptr %25, align 8, !tbaa !330
  %26 = getelementptr inbounds %struct.TransData, ptr %12, i64 0, i32 5
  store ptr null, ptr %26, align 8, !tbaa !474
  %27 = load i32, ptr %18, align 8, !tbaa !49
  %28 = or i32 %27, 1
  store i32 %28, ptr %18, align 8, !tbaa !49
  store float 0.000000e+00, ptr %12, align 8, !tbaa !55
  %29 = getelementptr inbounds %struct.TransData, ptr %12, i64 0, i32 8
  tail call void @unit_m3(ptr noundef nonnull %29) #22
  %30 = getelementptr inbounds %struct.TransData, ptr %12, i64 0, i32 9
  tail call void @unit_m3(ptr noundef nonnull %30) #22
  %31 = trunc i64 %11 to i8
  %32 = getelementptr inbounds %struct.TransDataPaintCurve, ptr %13, i64 0, i32 1
  store i8 %31, ptr %32, align 8, !tbaa !447
  store ptr %0, ptr %13, align 8, !tbaa !445
  %33 = getelementptr inbounds %struct.TransData, ptr %12, i64 1
  %34 = getelementptr inbounds %struct.TransData2D, ptr %14, i64 1
  %35 = getelementptr inbounds %struct.TransDataPaintCurve, ptr %13, i64 1
  %36 = add nuw nsw i64 %11, 1
  %37 = icmp eq i64 %36, 3
  br i1 %37, label %56, label %10, !llvm.loop !698

38:                                               ; preds = %4
  %39 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 9
  %40 = load i8, ptr %39, align 1, !tbaa !370
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  tail call fastcc void @PaintCurveConvertHandle(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %2, ptr noundef %3, ptr noundef %1) #23
  %44 = getelementptr inbounds %struct.TransData2D, ptr %2, i64 1
  %45 = getelementptr inbounds %struct.TransDataPaintCurve, ptr %3, i64 1
  %46 = getelementptr inbounds %struct.TransData, ptr %1, i64 1
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi ptr [ %44, %43 ], [ %2, %38 ]
  %49 = phi ptr [ %45, %43 ], [ %3, %38 ]
  %50 = phi ptr [ %46, %43 ], [ %1, %38 ]
  %51 = getelementptr inbounds %struct.BezTriple, ptr %0, i64 0, i32 7
  %52 = load i8, ptr %51, align 1, !tbaa !369
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %47
  tail call fastcc void @PaintCurveConvertHandle(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %48, ptr noundef %49, ptr noundef %50) #23
  br label %56

56:                                               ; preds = %10, %47, %55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @PaintCurveConvertHandle(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4) unnamed_addr #8 !PGOFuncName !699 {
  %6 = zext nneg i32 %1 to i64
  %7 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 %6
  tail call fastcc void @copy_v2_v2(ptr noundef %2, ptr noundef %7) #23
  %8 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  store float 0.000000e+00, ptr %8, align 8, !tbaa !123
  %9 = getelementptr inbounds %struct.TransData2D, ptr %2, i64 0, i32 1
  store ptr %7, ptr %9, align 8, !tbaa !211
  %10 = getelementptr inbounds %struct.TransData, ptr %4, i64 0, i32 16
  store i32 0, ptr %10, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.TransData, ptr %4, i64 0, i32 3
  store ptr %2, ptr %11, align 8, !tbaa !215
  %12 = getelementptr inbounds %struct.TransData, ptr %4, i64 0, i32 7
  %13 = getelementptr inbounds [3 x [3 x float]], ptr %0, i64 0, i64 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %13) #23
  %14 = getelementptr inbounds %struct.TransData, ptr %4, i64 0, i32 4
  %15 = load ptr, ptr %11, align 8, !tbaa !215
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef %15) #23
  %16 = getelementptr inbounds %struct.TransData, ptr %4, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %16, i8 0, i64 32, i1 false)
  %17 = getelementptr inbounds %struct.TransData, ptr %4, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %17, align 8, !tbaa !123
  %18 = getelementptr inbounds %struct.TransData, ptr %4, i64 0, i32 13
  store ptr null, ptr %18, align 8, !tbaa !330
  %19 = getelementptr inbounds %struct.TransData, ptr %4, i64 0, i32 5
  store ptr null, ptr %19, align 8, !tbaa !474
  %20 = load i32, ptr %10, align 8, !tbaa !49
  %21 = or i32 %20, 1
  store i32 %21, ptr %10, align 8, !tbaa !49
  store float 0.000000e+00, ptr %4, align 8, !tbaa !55
  %22 = getelementptr inbounds %struct.TransData, ptr %4, i64 0, i32 8
  tail call void @unit_m3(ptr noundef nonnull %22) #22
  %23 = getelementptr inbounds %struct.TransData, ptr %4, i64 0, i32 9
  tail call void @unit_m3(ptr noundef nonnull %23) #22
  %24 = trunc i32 %1 to i8
  %25 = getelementptr inbounds %struct.TransDataPaintCurve, ptr %3, i64 0, i32 1
  store i8 %24, ptr %25, align 8, !tbaa !447
  store ptr %0, ptr %3, align 8, !tbaa !445
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_space_image(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @CTX_data_edit_image(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare zeroext i8 @ED_space_image_show_uvedit(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @BM_uv_element_map_create(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare zeroext i8 @uvedit_face_visible_test(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !700 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !671
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !671
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @uvedit_uv_select_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @BM_uv_element_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @UVsToTransData(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #8 !PGOFuncName !701 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #24
  call void @ED_space_image_get_uv_aspect(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #22
  %8 = load float, ptr %3, align 4, !tbaa !123
  %9 = load float, ptr %6, align 4, !tbaa !123
  %10 = fmul float %8, %9
  store float %10, ptr %2, align 8, !tbaa !123
  %11 = getelementptr inbounds float, ptr %3, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !123
  %13 = load float, ptr %7, align 4, !tbaa !123
  %14 = fmul float %12, %13
  %15 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  store float %14, ptr %15, align 4, !tbaa !123
  %16 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  store float 0.000000e+00, ptr %16, align 8, !tbaa !123
  %17 = getelementptr inbounds %struct.TransData2D, ptr %2, i64 0, i32 1
  store ptr %3, ptr %17, align 8, !tbaa !211
  %18 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 16
  store i32 0, ptr %18, align 8, !tbaa !49
  %19 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 3
  store ptr %2, ptr %19, align 8, !tbaa !215
  %20 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef nonnull %2) #23
  %21 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4
  %22 = load ptr, ptr %19, align 8, !tbaa !215
  call fastcc void @copy_v3_v3(ptr noundef nonnull %21, ptr noundef %22) #23
  %23 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %23, i8 0, i64 32, i1 false)
  %24 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %24, align 8, !tbaa !123
  %25 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 13
  store ptr null, ptr %25, align 8, !tbaa !330
  %26 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 5
  store ptr null, ptr %26, align 8, !tbaa !474
  %27 = icmp eq i32 %4, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %5
  %29 = load i32, ptr %18, align 8, !tbaa !49
  %30 = or i32 %29, 1
  store i32 %30, ptr %18, align 8, !tbaa !49
  br label %31

31:                                               ; preds = %5, %28
  %32 = phi float [ 0.000000e+00, %28 ], [ 0x47EFFFFFE0000000, %5 ]
  store float %32, ptr %1, align 8, !tbaa !55
  %33 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 8
  call void @unit_m3(ptr noundef nonnull %33) #22
  %34 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 9
  call void @unit_m3(ptr noundef nonnull %34) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  ret void
}

; Function Attrs: optsize
declare void @BM_uv_element_map_free(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @ED_uvedit_live_unwrap_begin(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @count_fcurve_keys(ptr noundef readonly %0, i8 noundef zeroext %1, float noundef %2) unnamed_addr #5 !PGOFuncName !702 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !229
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !231
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %9, %27
  %14 = phi i32 [ %28, %27 ], [ 0, %9 ]
  %15 = phi i32 [ %29, %27 ], [ 0, %9 ]
  %16 = phi ptr [ %30, %27 ], [ %7, %9 ]
  %17 = getelementptr inbounds %struct.BezTriple, ptr %16, i64 0, i32 8
  %18 = load i8, ptr %17, align 4, !tbaa !368
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds [3 x [3 x float]], ptr %16, i64 0, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !123
  %24 = tail call fastcc zeroext i8 @FrameOnMouseSide(i8 noundef zeroext %1, float noundef %23, float noundef %2) #23, !range !542
  %25 = zext nneg i8 %24 to i32
  %26 = add nsw i32 %14, %25
  br label %27

27:                                               ; preds = %21, %13
  %28 = phi i32 [ %14, %13 ], [ %26, %21 ]
  %29 = add nuw nsw i32 %15, 1
  %30 = getelementptr inbounds %struct.BezTriple, ptr %16, i64 1
  %31 = icmp eq i32 %29, %11
  br i1 %31, label %32, label %13, !llvm.loop !703

32:                                               ; preds = %27, %9, %3, %5
  %33 = phi i32 [ 0, %5 ], [ 0, %3 ], [ 0, %9 ], [ %28, %27 ]
  ret i32 %33
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @count_gplayer_frames(ptr noundef readonly %0, i8 noundef zeroext %1, float noundef %2) unnamed_addr #5 !PGOFuncName !704 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %5, %23
  %10 = phi ptr [ %25, %23 ], [ %7, %5 ]
  %11 = phi i32 [ %24, %23 ], [ 0, %5 ]
  %12 = getelementptr inbounds %struct.bGPDframe, ptr %10, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !673
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.bGPDframe, ptr %10, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !381
  %19 = sitofp i32 %18 to float
  %20 = tail call fastcc zeroext i8 @FrameOnMouseSide(i8 noundef zeroext %1, float noundef %19, float noundef %2) #23, !range !542
  %21 = zext nneg i8 %20 to i32
  %22 = add nsw i32 %11, %21
  br label %23

23:                                               ; preds = %16, %9
  %24 = phi i32 [ %11, %9 ], [ %22, %16 ]
  %25 = load ptr, ptr %10, align 8, !tbaa !64
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %9, !llvm.loop !705

27:                                               ; preds = %23, %5, %3
  %28 = phi i32 [ 0, %3 ], [ 0, %5 ], [ %24, %23 ]
  ret i32 %28
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @count_masklayer_frames(ptr noundef readonly %0, i8 noundef zeroext %1, float noundef %2) unnamed_addr #5 !PGOFuncName !706 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %5, %23
  %10 = phi ptr [ %25, %23 ], [ %7, %5 ]
  %11 = phi i32 [ %24, %23 ], [ 0, %5 ]
  %12 = getelementptr inbounds %struct.MaskLayerShape, ptr %10, i64 0, i32 5
  %13 = load i8, ptr %12, align 8, !tbaa !675
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.MaskLayerShape, ptr %10, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !388
  %19 = sitofp i32 %18 to float
  %20 = tail call fastcc zeroext i8 @FrameOnMouseSide(i8 noundef zeroext %1, float noundef %19, float noundef %2) #23, !range !542
  %21 = zext nneg i8 %20 to i32
  %22 = add nsw i32 %11, %21
  br label %23

23:                                               ; preds = %16, %9
  %24 = phi i32 [ %11, %9 ], [ %22, %16 ]
  %25 = load ptr, ptr %10, align 8, !tbaa !64
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %9, !llvm.loop !707

27:                                               ; preds = %23, %5, %3
  %28 = phi i32 [ 0, %3 ], [ 0, %5 ], [ %24, %23 ]
  ret i32 %28
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @GPLayerToTransData(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, float noundef %4) unnamed_addr #6 !PGOFuncName !708 {
  %6 = getelementptr inbounds %struct.bGPDlayer, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %5, %31
  %10 = phi ptr [ %35, %31 ], [ %7, %5 ]
  %11 = phi i32 [ %34, %31 ], [ 0, %5 ]
  %12 = phi ptr [ %33, %31 ], [ %0, %5 ]
  %13 = phi ptr [ %32, %31 ], [ %1, %5 ]
  %14 = getelementptr inbounds %struct.bGPDframe, ptr %10, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !673
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.bGPDframe, ptr %10, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !381
  %21 = sitofp i32 %20 to float
  %22 = tail call fastcc zeroext i8 @FrameOnMouseSide(i8 noundef zeroext %3, float noundef %21, float noundef %4) #23, !range !542
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.TransData, ptr %12, i64 0, i32 5
  store ptr %13, ptr %25, align 8, !tbaa !474
  %26 = getelementptr inbounds %struct.TransData, ptr %12, i64 0, i32 6
  store float %21, ptr %26, align 8, !tbaa !475
  store float %21, ptr %13, align 8, !tbaa !220
  %27 = getelementptr inbounds %struct.tGPFtransdata, ptr %13, i64 0, i32 1
  store ptr %19, ptr %27, align 8, !tbaa !222
  %28 = getelementptr inbounds %struct.TransData, ptr %12, i64 1
  %29 = getelementptr inbounds %struct.tGPFtransdata, ptr %13, i64 1
  %30 = add nsw i32 %11, 1
  br label %31

31:                                               ; preds = %9, %24, %18
  %32 = phi ptr [ %29, %24 ], [ %13, %18 ], [ %13, %9 ]
  %33 = phi ptr [ %28, %24 ], [ %12, %18 ], [ %12, %9 ]
  %34 = phi i32 [ %30, %24 ], [ %11, %18 ], [ %11, %9 ]
  %35 = load ptr, ptr %10, align 8, !tbaa !64
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %9, !llvm.loop !709

37:                                               ; preds = %31, %5
  %38 = phi i32 [ 0, %5 ], [ %34, %31 ]
  ret i32 %38
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @MaskLayerToTransData(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, float noundef %4) unnamed_addr #6 !PGOFuncName !710 {
  %6 = getelementptr inbounds %struct.MaskLayer, ptr %2, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %5, %31
  %10 = phi ptr [ %35, %31 ], [ %7, %5 ]
  %11 = phi i32 [ %34, %31 ], [ 0, %5 ]
  %12 = phi ptr [ %33, %31 ], [ %0, %5 ]
  %13 = phi ptr [ %32, %31 ], [ %1, %5 ]
  %14 = getelementptr inbounds %struct.MaskLayerShape, ptr %10, i64 0, i32 5
  %15 = load i8, ptr %14, align 8, !tbaa !675
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.MaskLayerShape, ptr %10, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !388
  %21 = sitofp i32 %20 to float
  %22 = tail call fastcc zeroext i8 @FrameOnMouseSide(i8 noundef zeroext %3, float noundef %21, float noundef %4) #23, !range !542
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.TransData, ptr %12, i64 0, i32 5
  store ptr %13, ptr %25, align 8, !tbaa !474
  %26 = getelementptr inbounds %struct.TransData, ptr %12, i64 0, i32 6
  store float %21, ptr %26, align 8, !tbaa !475
  store float %21, ptr %13, align 8, !tbaa !220
  %27 = getelementptr inbounds %struct.tGPFtransdata, ptr %13, i64 0, i32 1
  store ptr %19, ptr %27, align 8, !tbaa !222
  %28 = getelementptr inbounds %struct.TransData, ptr %12, i64 1
  %29 = getelementptr inbounds %struct.tGPFtransdata, ptr %13, i64 1
  %30 = add nsw i32 %11, 1
  br label %31

31:                                               ; preds = %9, %24, %18
  %32 = phi ptr [ %29, %24 ], [ %13, %18 ], [ %13, %9 ]
  %33 = phi ptr [ %28, %24 ], [ %12, %18 ], [ %12, %9 ]
  %34 = phi i32 [ %30, %24 ], [ %11, %18 ], [ %11, %9 ]
  %35 = load ptr, ptr %10, align 8, !tbaa !64
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %9, !llvm.loop !711

37:                                               ; preds = %31, %5
  %38 = phi i32 [ 0, %5 ], [ %34, %31 ]
  ret i32 %38
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @ActionFCurveToTransData(ptr noundef %0, ptr nocapture noundef %1, ptr noundef readonly %2, ptr noundef %3, i8 noundef zeroext %4, float noundef %5) unnamed_addr #6 !PGOFuncName !712 {
  %7 = icmp eq ptr %2, null
  br i1 %7, label %55, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !229
  %11 = icmp eq ptr %10, null
  br i1 %11, label %55, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %1, align 8, !tbaa !64
  %14 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !231
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %52, label %17

17:                                               ; preds = %12, %45
  %18 = phi i32 [ %46, %45 ], [ %15, %12 ]
  %19 = phi i32 [ %49, %45 ], [ 0, %12 ]
  %20 = phi ptr [ %48, %45 ], [ %13, %12 ]
  %21 = phi ptr [ %50, %45 ], [ %10, %12 ]
  %22 = phi ptr [ %47, %45 ], [ %0, %12 ]
  %23 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 0, i32 8
  %24 = load i8, ptr %23, align 4, !tbaa !368
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %17
  %28 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !123
  %30 = tail call fastcc zeroext i8 @FrameOnMouseSide(i8 noundef zeroext %4, float noundef %29, float noundef %5) #23, !range !542
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %27
  tail call fastcc void @TimeToTransData(ptr noundef %22, ptr noundef nonnull %28, ptr noundef %3) #23
  %33 = getelementptr inbounds %struct.TransData, ptr %22, i64 0, i32 16
  %34 = load i32, ptr %33, align 8, !tbaa !49
  %35 = or i32 %34, 393216
  store i32 %35, ptr %33, align 8, !tbaa !49
  %36 = getelementptr inbounds %struct.TransData2D, ptr %20, i64 0, i32 2
  store ptr %21, ptr %36, align 8, !tbaa !248
  %37 = getelementptr inbounds [3 x [3 x float]], ptr %21, i64 0, i64 2
  %38 = getelementptr inbounds %struct.TransData2D, ptr %20, i64 0, i32 3
  store ptr %37, ptr %38, align 8, !tbaa !249
  %39 = getelementptr inbounds %struct.TransData2D, ptr %20, i64 0, i32 4
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %39, ptr noundef nonnull %21) #23
  %40 = getelementptr inbounds %struct.TransData2D, ptr %20, i64 0, i32 5
  %41 = load ptr, ptr %38, align 8, !tbaa !249
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %40, ptr noundef %41) #23
  %42 = getelementptr inbounds %struct.TransData, ptr %22, i64 1
  %43 = getelementptr inbounds %struct.TransData2D, ptr %20, i64 1
  %44 = load i32, ptr %14, align 8, !tbaa !231
  br label %45

45:                                               ; preds = %17, %32, %27
  %46 = phi i32 [ %44, %32 ], [ %18, %27 ], [ %18, %17 ]
  %47 = phi ptr [ %42, %32 ], [ %22, %27 ], [ %22, %17 ]
  %48 = phi ptr [ %43, %32 ], [ %20, %27 ], [ %20, %17 ]
  %49 = add nuw nsw i32 %19, 1
  %50 = getelementptr inbounds %struct.BezTriple, ptr %21, i64 1
  %51 = icmp ult i32 %49, %46
  br i1 %51, label %17, label %52, !llvm.loop !713

52:                                               ; preds = %45, %12
  %53 = phi ptr [ %0, %12 ], [ %47, %45 ]
  %54 = phi ptr [ %13, %12 ], [ %48, %45 ]
  store ptr %54, ptr %1, align 8, !tbaa !64
  br label %55

55:                                               ; preds = %6, %8, %52
  %56 = phi ptr [ %53, %52 ], [ %0, %8 ], [ %0, %6 ]
  ret ptr %56
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @FrameOnMouseSide(i8 noundef zeroext %0, float noundef %1, float noundef %2) unnamed_addr #10 !PGOFuncName !714 {
  switch i8 %0, label %6 [
    i8 66, label %8
    i8 82, label %4
  ]

4:                                                ; preds = %3
  %5 = fcmp oge float %1, %2
  br label %8

6:                                                ; preds = %3
  %7 = fcmp ole float %1, %2
  br label %8

8:                                                ; preds = %3, %6, %4
  %9 = phi i1 [ %5, %4 ], [ %7, %6 ], [ true, %3 ]
  %10 = zext i1 %9 to i8
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @TimeToTransData(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #7 !PGOFuncName !715 {
  %4 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 5
  store ptr %1, ptr %4, align 8, !tbaa !474
  %5 = load float, ptr %1, align 4, !tbaa !123
  %6 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 6
  store float %5, ptr %6, align 8, !tbaa !475
  %7 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 15
  store ptr %2, ptr %7, align 8, !tbaa !175
  ret void
}

; Function Attrs: optsize
declare void @BKE_nlastrips_make_metas(ptr noundef, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @UI_view2d_fromcontext(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal void @freeSeqData(ptr nocapture noundef %0) #8 !PGOFuncName !716 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  %4 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %271, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 8, !tbaa !180
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %11 = load i16, ptr %10, align 4, !tbaa !213
  %12 = icmp eq i16 %11, 3
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !34
  %15 = icmp sgt i32 %14, 0
  br i1 %12, label %17, label %16

16:                                               ; preds = %6
  br i1 %15, label %18, label %199

17:                                               ; preds = %6
  br i1 %15, label %242, label %271

18:                                               ; preds = %16, %38
  %19 = phi ptr [ %24, %38 ], [ null, %16 ]
  %20 = phi i32 [ %39, %38 ], [ 0, %16 ]
  %21 = phi ptr [ %40, %38 ], [ %9, %16 ]
  %22 = getelementptr inbounds %struct.TransData, ptr %21, i64 0, i32 15
  %23 = load ptr, ptr %22, align 8, !tbaa !175
  %24 = load ptr, ptr %23, align 8, !tbaa !182
  %25 = icmp eq ptr %24, %19
  br i1 %25, label %38, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 14
  %28 = load i32, ptr %27, align 4, !tbaa !187
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.Sequence, ptr %24, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !194
  %33 = and i32 %32, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %7, align 8, !tbaa !64
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %44

38:                                               ; preds = %30, %26, %18
  %39 = add nuw nsw i32 %20, 1
  %40 = getelementptr inbounds %struct.TransData, ptr %21, i64 1
  %41 = icmp eq i32 %39, %14
  br i1 %41, label %199, label %18, !llvm.loop !717

42:                                               ; preds = %44, %35
  %43 = tail call i32 @llvm.smax.i32(i32 %14, i32 1)
  br label %49

44:                                               ; preds = %35, %44
  %45 = phi ptr [ %47, %44 ], [ %36, %35 ]
  %46 = getelementptr inbounds %struct.Sequence, ptr %45, i64 0, i32 2
  store ptr null, ptr %46, align 8, !tbaa !718
  %47 = load ptr, ptr %45, align 8, !tbaa !64
  %48 = icmp eq ptr %47, null
  br i1 %48, label %42, label %44, !llvm.loop !719

49:                                               ; preds = %42, %68
  %50 = phi i8 [ %69, %68 ], [ 0, %42 ]
  %51 = phi i32 [ %70, %68 ], [ 0, %42 ]
  %52 = phi ptr [ %71, %68 ], [ %9, %42 ]
  %53 = getelementptr inbounds %struct.TransData, ptr %52, i64 0, i32 15
  %54 = load ptr, ptr %53, align 8, !tbaa !175
  %55 = load ptr, ptr %54, align 8, !tbaa !182
  %56 = icmp eq ptr %55, null
  br i1 %56, label %68, label %57

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.Sequence, ptr %55, i64 0, i32 6
  %59 = load i32, ptr %58, align 4, !tbaa !193
  %60 = and i32 %59, 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.Sequence, ptr %55, i64 0, i32 33
  %64 = load ptr, ptr %63, align 8, !tbaa !196
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %62, %57
  %67 = getelementptr inbounds %struct.Sequence, ptr %55, i64 0, i32 2
  store ptr inttoptr (i64 1 to ptr), ptr %67, align 8, !tbaa !718
  br label %68

68:                                               ; preds = %62, %49, %66
  %69 = phi i8 [ %50, %66 ], [ %50, %49 ], [ 1, %62 ]
  %70 = add nuw nsw i32 %51, 1
  %71 = getelementptr inbounds %struct.TransData, ptr %52, i64 1
  %72 = icmp eq i32 %70, %43
  br i1 %72, label %73, label %49, !llvm.loop !720

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !53
  %76 = and i32 %75, 16777216
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %134, label %78

78:                                               ; preds = %73
  %79 = tail call i32 @llvm.smax.i32(i32 %14, i32 1)
  br label %83

80:                                               ; preds = %95
  %81 = load ptr, ptr %7, align 8, !tbaa !64
  %82 = icmp eq ptr %81, null
  br i1 %82, label %117, label %100

83:                                               ; preds = %78, %95
  %84 = phi i32 [ %96, %95 ], [ 300000, %78 ]
  %85 = phi i32 [ %97, %95 ], [ 0, %78 ]
  %86 = phi ptr [ %98, %95 ], [ %9, %78 ]
  %87 = getelementptr inbounds %struct.TransData, ptr %86, i64 0, i32 15
  %88 = load ptr, ptr %87, align 8, !tbaa !175
  %89 = load ptr, ptr %88, align 8, !tbaa !182
  %90 = icmp eq ptr %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.Sequence, ptr %89, i64 0, i32 15
  %93 = load i32, ptr %92, align 8, !tbaa !721
  %94 = tail call fastcc i32 @min_ii(i32 noundef %84, i32 noundef %93) #23
  br label %95

95:                                               ; preds = %83, %91
  %96 = phi i32 [ %94, %91 ], [ %84, %83 ]
  %97 = add nuw nsw i32 %85, 1
  %98 = getelementptr inbounds %struct.TransData, ptr %86, i64 1
  %99 = icmp eq i32 %97, %79
  br i1 %99, label %80, label %83, !llvm.loop !722

100:                                              ; preds = %80, %114
  %101 = phi ptr [ %115, %114 ], [ %81, %80 ]
  %102 = getelementptr inbounds %struct.Sequence, ptr %101, i64 0, i32 5
  %103 = load i32, ptr %102, align 8, !tbaa !194
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.Sequence, ptr %101, i64 0, i32 15
  %108 = load i32, ptr %107, align 8, !tbaa !721
  %109 = icmp slt i32 %108, %96
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.Sequence, ptr %101, i64 0, i32 13
  %112 = load i32, ptr %111, align 8, !tbaa !189
  %113 = add nsw i32 %112, 64
  store i32 %113, ptr %111, align 8, !tbaa !189
  br label %114

114:                                              ; preds = %100, %110, %106
  %115 = load ptr, ptr %101, align 8, !tbaa !64
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %100, !llvm.loop !723

117:                                              ; preds = %114, %80
  %118 = load ptr, ptr %2, align 8, !tbaa !124
  %119 = tail call zeroext i8 @BKE_sequence_base_shuffle_time(ptr noundef nonnull %7, ptr noundef %118) #22
  %120 = load ptr, ptr %7, align 8, !tbaa !64
  %121 = icmp eq ptr %120, null
  br i1 %121, label %134, label %122

122:                                              ; preds = %117, %129
  %123 = phi ptr [ %132, %129 ], [ %120, %117 ]
  %124 = getelementptr inbounds %struct.Sequence, ptr %123, i64 0, i32 13
  %125 = load i32, ptr %124, align 8, !tbaa !189
  %126 = icmp sgt i32 %125, 63
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = add nsw i32 %125, -64
  store i32 %128, ptr %124, align 8, !tbaa !189
  br label %129

129:                                              ; preds = %122, %127
  %130 = phi ptr [ inttoptr (i64 1 to ptr), %127 ], [ null, %122 ]
  %131 = getelementptr inbounds %struct.Sequence, ptr %123, i64 0, i32 2
  store ptr %130, ptr %131, align 8
  %132 = load ptr, ptr %123, align 8, !tbaa !64
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %122, !llvm.loop !724

134:                                              ; preds = %129, %73, %117
  %135 = load ptr, ptr %2, align 8, !tbaa !124
  %136 = tail call zeroext i8 @BKE_sequence_base_shuffle_time(ptr noundef nonnull %7, ptr noundef %135) #22
  %137 = icmp eq i8 %69, 0
  br i1 %137, label %199, label %138

138:                                              ; preds = %134
  %139 = load i32, ptr %13, align 8, !tbaa !34
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %199

141:                                              ; preds = %138
  %142 = load ptr, ptr %8, align 8, !tbaa !48
  br label %143

143:                                              ; preds = %141, %163
  %144 = phi i32 [ %164, %163 ], [ %139, %141 ]
  %145 = phi i32 [ %165, %163 ], [ 0, %141 ]
  %146 = phi ptr [ %166, %163 ], [ %142, %141 ]
  %147 = getelementptr inbounds %struct.TransData, ptr %146, i64 0, i32 15
  %148 = load ptr, ptr %147, align 8, !tbaa !175
  %149 = load ptr, ptr %148, align 8, !tbaa !182
  %150 = icmp eq ptr %149, null
  br i1 %150, label %163, label %151

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.Sequence, ptr %149, i64 0, i32 6
  %153 = load i32, ptr %152, align 4, !tbaa !193
  %154 = and i32 %153, 8
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.Sequence, ptr %149, i64 0, i32 33
  %158 = load ptr, ptr %157, align 8, !tbaa !196
  %159 = icmp eq ptr %158, null
  br i1 %159, label %163, label %160

160:                                              ; preds = %156
  %161 = load ptr, ptr %2, align 8, !tbaa !124
  tail call void @BKE_sequence_calc(ptr noundef %161, ptr noundef nonnull %149) #22
  %162 = load i32, ptr %13, align 8, !tbaa !34
  br label %163

163:                                              ; preds = %143, %160, %156, %151
  %164 = phi i32 [ %144, %143 ], [ %162, %160 ], [ %144, %156 ], [ %144, %151 ]
  %165 = add nuw nsw i32 %145, 1
  %166 = getelementptr inbounds %struct.TransData, ptr %146, i64 1
  %167 = icmp slt i32 %165, %164
  br i1 %167, label %143, label %168, !llvm.loop !725

168:                                              ; preds = %163
  %169 = icmp sgt i32 %164, 0
  br i1 %169, label %170, label %199

170:                                              ; preds = %168
  %171 = load ptr, ptr %8, align 8, !tbaa !48
  br label %172

172:                                              ; preds = %170, %194
  %173 = phi i32 [ %195, %194 ], [ 0, %170 ]
  %174 = phi ptr [ %196, %194 ], [ %171, %170 ]
  %175 = getelementptr inbounds %struct.TransData, ptr %174, i64 0, i32 15
  %176 = load ptr, ptr %175, align 8, !tbaa !175
  %177 = load ptr, ptr %176, align 8, !tbaa !182
  %178 = icmp eq ptr %177, null
  br i1 %178, label %194, label %179

179:                                              ; preds = %172
  %180 = getelementptr inbounds %struct.Sequence, ptr %177, i64 0, i32 6
  %181 = load i32, ptr %180, align 4, !tbaa !193
  %182 = and i32 %181, 8
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %194, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.Sequence, ptr %177, i64 0, i32 33
  %186 = load ptr, ptr %185, align 8, !tbaa !196
  %187 = icmp eq ptr %186, null
  br i1 %187, label %194, label %188

188:                                              ; preds = %184
  %189 = tail call zeroext i8 @BKE_sequence_test_overlap(ptr noundef nonnull %7, ptr noundef nonnull %177) #22
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %188
  %192 = load ptr, ptr %2, align 8, !tbaa !124
  %193 = tail call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef nonnull %7, ptr noundef nonnull %177, ptr noundef %192) #22
  br label %194

194:                                              ; preds = %172, %188, %191, %184, %179
  %195 = add nuw nsw i32 %173, 1
  %196 = getelementptr inbounds %struct.TransData, ptr %174, i64 1
  %197 = load i32, ptr %13, align 8, !tbaa !34
  %198 = icmp slt i32 %195, %197
  br i1 %198, label %172, label %199, !llvm.loop !726

199:                                              ; preds = %38, %194, %138, %16, %168, %134
  %200 = load ptr, ptr %7, align 8, !tbaa !64
  %201 = icmp eq ptr %200, null
  br i1 %201, label %240, label %202

202:                                              ; preds = %199, %237
  %203 = phi ptr [ %238, %237 ], [ %200, %199 ]
  %204 = getelementptr inbounds %struct.Sequence, ptr %203, i64 0, i32 6
  %205 = load i32, ptr %204, align 4, !tbaa !193
  %206 = and i32 %205, 8
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %237, label %208

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.Sequence, ptr %203, i64 0, i32 33
  %210 = load ptr, ptr %209, align 8, !tbaa !196
  %211 = icmp eq ptr %210, null
  br i1 %211, label %217, label %212

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.Sequence, ptr %210, i64 0, i32 5
  %214 = load i32, ptr %213, align 8, !tbaa !194
  %215 = and i32 %214, 1
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %235

217:                                              ; preds = %212, %208
  %218 = getelementptr inbounds %struct.Sequence, ptr %203, i64 0, i32 34
  %219 = load ptr, ptr %218, align 8, !tbaa !197
  %220 = icmp eq ptr %219, null
  br i1 %220, label %226, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.Sequence, ptr %219, i64 0, i32 5
  %223 = load i32, ptr %222, align 8, !tbaa !194
  %224 = and i32 %223, 1
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %221, %217
  %227 = getelementptr inbounds %struct.Sequence, ptr %203, i64 0, i32 35
  %228 = load ptr, ptr %227, align 8, !tbaa !198
  %229 = icmp eq ptr %228, null
  br i1 %229, label %237, label %230

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.Sequence, ptr %228, i64 0, i32 5
  %232 = load i32, ptr %231, align 8, !tbaa !194
  %233 = and i32 %232, 1
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %237, label %235

235:                                              ; preds = %230, %221, %212
  %236 = load ptr, ptr %2, align 8, !tbaa !124
  tail call void @BKE_sequence_calc(ptr noundef %236, ptr noundef nonnull %203) #22
  br label %237

237:                                              ; preds = %235, %202, %230, %226
  %238 = load ptr, ptr %203, align 8, !tbaa !64
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %202, !llvm.loop !727

240:                                              ; preds = %237, %199
  %241 = load ptr, ptr %2, align 8, !tbaa !124
  tail call void @BKE_sequencer_sort(ptr noundef %241) #22
  br label %271

242:                                              ; preds = %17, %266
  %243 = phi i32 [ %267, %266 ], [ %14, %17 ]
  %244 = phi ptr [ %249, %266 ], [ null, %17 ]
  %245 = phi i32 [ %268, %266 ], [ 0, %17 ]
  %246 = phi ptr [ %269, %266 ], [ %9, %17 ]
  %247 = getelementptr inbounds %struct.TransData, ptr %246, i64 0, i32 15
  %248 = load ptr, ptr %247, align 8, !tbaa !175
  %249 = load ptr, ptr %248, align 8, !tbaa !182
  %250 = icmp eq ptr %249, %244
  br i1 %250, label %266, label %251

251:                                              ; preds = %242
  %252 = getelementptr inbounds %struct.Sequence, ptr %249, i64 0, i32 14
  %253 = load i32, ptr %252, align 4, !tbaa !187
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %266

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.Sequence, ptr %249, i64 0, i32 5
  %257 = load i32, ptr %256, align 8, !tbaa !194
  %258 = and i32 %257, 8
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %263, label %260

260:                                              ; preds = %255
  %261 = load ptr, ptr %2, align 8, !tbaa !124
  %262 = tail call zeroext i8 @BKE_sequence_base_shuffle(ptr noundef %7, ptr noundef nonnull %249, ptr noundef %261) #22
  br label %263

263:                                              ; preds = %260, %255
  %264 = load ptr, ptr %2, align 8, !tbaa !124
  tail call void @BKE_sequence_calc_disp(ptr noundef %264, ptr noundef nonnull %249) #22
  %265 = load i32, ptr %13, align 8, !tbaa !34
  br label %266

266:                                              ; preds = %263, %251, %242
  %267 = phi i32 [ %265, %263 ], [ %243, %251 ], [ %243, %242 ]
  %268 = add nuw nsw i32 %245, 1
  %269 = getelementptr inbounds %struct.TransData, ptr %246, i64 1
  %270 = icmp slt i32 %268, %267
  br i1 %270, label %242, label %271, !llvm.loop !728

271:                                              ; preds = %266, %17, %240, %1
  %272 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %273 = load ptr, ptr %272, align 8, !tbaa !100
  %274 = icmp eq ptr %273, null
  br i1 %274, label %282, label %275

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %277 = load i32, ptr %276, align 4, !tbaa !53
  %278 = and i32 %277, 131072
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %282, label %280

280:                                              ; preds = %275
  %281 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %281(ptr noundef nonnull %273) #22
  store ptr null, ptr %272, align 8, !tbaa !100
  br label %282

282:                                              ; preds = %280, %275, %271
  %283 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %284 = load ptr, ptr %283, align 8, !tbaa !48
  %285 = icmp eq ptr %284, null
  br i1 %285, label %288, label %286

286:                                              ; preds = %282
  %287 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %287(ptr noundef nonnull %284) #22
  store ptr null, ptr %283, align 8, !tbaa !48
  br label %288

288:                                              ; preds = %286, %282
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SeqTransCount(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #8 !PGOFuncName !729 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #24
  %8 = load ptr, ptr %2, align 8, !tbaa !64
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %4
  %11 = add nsw i32 %3, 1
  br label %12

12:                                               ; preds = %10, %25
  %13 = phi ptr [ %8, %10 ], [ %27, %25 ]
  %14 = phi i32 [ 0, %10 ], [ %26, %25 ]
  %15 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 14
  store i32 %3, ptr %15, align 4, !tbaa !187
  %16 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 2
  store ptr %1, ptr %16, align 8, !tbaa !718
  call fastcc void @SeqTransInfo(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #23
  %17 = load i32, ptr %6, align 4, !tbaa !58
  %18 = add nsw i32 %17, %14
  %19 = load i32, ptr %5, align 4, !tbaa !58
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 36
  %23 = tail call fastcc i32 @SeqTransCount(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %22, i32 noundef %11) #23
  %24 = add nsw i32 %23, %18
  br label %25

25:                                               ; preds = %12, %21
  %26 = phi i32 [ %24, %21 ], [ %18, %12 ]
  %27 = load ptr, ptr %13, align 8, !tbaa !64
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %12, !llvm.loop !730

29:                                               ; preds = %25, %4
  %30 = phi i32 [ 0, %4 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SeqToTransData_Recursive(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #8 !PGOFuncName !731 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #24
  %9 = load ptr, ptr %1, align 8, !tbaa !64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %73, label %11

11:                                               ; preds = %5, %66
  %12 = phi ptr [ %71, %66 ], [ %9, %5 ]
  %13 = phi ptr [ %70, %66 ], [ %2, %5 ]
  %14 = phi i32 [ %69, %66 ], [ 0, %5 ]
  %15 = phi ptr [ %68, %66 ], [ %4, %5 ]
  %16 = phi ptr [ %67, %66 ], [ %3, %5 ]
  call fastcc void @SeqTransInfo(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #23
  %17 = load i32, ptr %6, align 4, !tbaa !58
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.Sequence, ptr %12, i64 0, i32 36
  %21 = tail call fastcc i32 @SeqToTransData_Recursive(ptr noundef %0, ptr noundef nonnull %20, ptr noundef %13, ptr noundef %16, ptr noundef %15) #23
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
  %32 = load i32, ptr %8, align 4, !tbaa !58
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %66, label %35

35:                                               ; preds = %27
  %36 = and i32 %32, 6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %35
  %39 = and i32 %32, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.TransData, ptr %31, i64 1
  %43 = getelementptr inbounds %struct.TransData2D, ptr %28, i64 1
  %44 = getelementptr inbounds %struct.TransDataSeq, ptr %29, i64 1
  %45 = tail call fastcc ptr @SeqToTransData(ptr noundef %31, ptr noundef %28, ptr noundef %29, ptr noundef nonnull %12, i32 noundef %32, i32 noundef 2) #23
  %46 = add nsw i32 %30, 1
  br label %47

47:                                               ; preds = %41, %38
  %48 = phi ptr [ %43, %41 ], [ %28, %38 ]
  %49 = phi ptr [ %44, %41 ], [ %29, %38 ]
  %50 = phi i32 [ %46, %41 ], [ %30, %38 ]
  %51 = phi ptr [ %42, %41 ], [ %31, %38 ]
  %52 = and i32 %32, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.TransData, ptr %51, i64 1
  %56 = getelementptr inbounds %struct.TransData2D, ptr %48, i64 1
  %57 = getelementptr inbounds %struct.TransDataSeq, ptr %49, i64 1
  %58 = tail call fastcc ptr @SeqToTransData(ptr noundef %51, ptr noundef %48, ptr noundef %49, ptr noundef nonnull %12, i32 noundef %32, i32 noundef 4) #23
  %59 = add nsw i32 %50, 1
  br label %66

60:                                               ; preds = %35
  %61 = getelementptr inbounds %struct.TransData, ptr %31, i64 1
  %62 = getelementptr inbounds %struct.TransData2D, ptr %28, i64 1
  %63 = getelementptr inbounds %struct.TransDataSeq, ptr %29, i64 1
  %64 = tail call fastcc ptr @SeqToTransData(ptr noundef %31, ptr noundef %28, ptr noundef %29, ptr noundef nonnull %12, i32 noundef %32, i32 noundef 1) #23
  %65 = add nsw i32 %30, 1
  br label %66

66:                                               ; preds = %27, %47, %54, %60
  %67 = phi ptr [ %56, %54 ], [ %48, %47 ], [ %62, %60 ], [ %28, %27 ]
  %68 = phi ptr [ %57, %54 ], [ %49, %47 ], [ %63, %60 ], [ %29, %27 ]
  %69 = phi i32 [ %59, %54 ], [ %50, %47 ], [ %65, %60 ], [ %30, %27 ]
  %70 = phi ptr [ %55, %54 ], [ %51, %47 ], [ %61, %60 ], [ %31, %27 ]
  %71 = load ptr, ptr %12, align 8, !tbaa !64
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %11, !llvm.loop !732

73:                                               ; preds = %66, %5
  %74 = phi i32 [ 0, %5 ], [ %69, %66 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  ret i32 %74
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #10 !PGOFuncName !733 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @BKE_sequence_base_shuffle_time(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare zeroext i8 @BKE_sequence_base_shuffle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BKE_sequencer_sort(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @SeqTransInfo(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #8 !PGOFuncName !734 {
  %6 = load i32, ptr %0, align 8, !tbaa !192
  %7 = icmp eq i32 %6, 22
  br i1 %7, label %8, label %65

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %10 = load ptr, ptr %9, align 8, !tbaa !124
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !262
  %13 = tail call i32 @BKE_sequence_tx_get_final_left(ptr noundef %1, i8 noundef zeroext 1) #22
  %14 = tail call i32 @BKE_sequence_tx_get_final_right(ptr noundef %1, i8 noundef zeroext 1) #22
  %15 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 14
  %16 = load i32, ptr %15, align 4, !tbaa !187
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !194
  %21 = and i32 %20, 16385
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, ptr %2, align 4, !tbaa !58
  store i32 0, ptr %3, align 4, !tbaa !58
  store i32 0, ptr %4, align 4, !tbaa !58
  br label %96

24:                                               ; preds = %18, %8
  %25 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !193
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 26
  %30 = load i8, ptr %29, align 8, !tbaa !295
  %31 = icmp ne i8 %30, 82
  %32 = icmp sgt i32 %14, %12
  %33 = select i1 %31, i1 true, i1 %32
  %34 = icmp ne i8 %30, 76
  %35 = icmp slt i32 %13, %12
  %36 = select i1 %34, i1 true, i1 %35
  %37 = select i1 %33, i1 %36, i1 false
  %38 = zext i1 %37 to i32
  store i32 %38, ptr %2, align 4, !tbaa !58
  store i32 1, ptr %3, align 4, !tbaa !58
  %39 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !194
  %41 = and i32 %40, -8
  %42 = or disjoint i32 %41, 1
  store i32 %42, ptr %4, align 4, !tbaa !58
  br label %96

43:                                               ; preds = %24
  store i32 0, ptr %2, align 4, !tbaa !58
  store i32 1, ptr %3, align 4, !tbaa !58
  %44 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %45 = load i32, ptr %44, align 8, !tbaa !194
  %46 = and i32 %45, -8
  %47 = or disjoint i32 %46, 1
  store i32 %47, ptr %4, align 4, !tbaa !58
  %48 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 26
  %49 = load i8, ptr %48, align 8, !tbaa !295
  %50 = icmp eq i8 %49, 82
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = icmp sgt i32 %14, %12
  br i1 %52, label %54, label %53

53:                                               ; preds = %51
  store i32 0, ptr %4, align 4, !tbaa !58
  store i32 0, ptr %3, align 4, !tbaa !58
  br label %96

54:                                               ; preds = %51
  %55 = icmp sgt i32 %13, %12
  br i1 %55, label %96, label %56

56:                                               ; preds = %54
  %57 = or disjoint i32 %46, 5
  store i32 %57, ptr %4, align 4, !tbaa !58
  br label %96

58:                                               ; preds = %43
  %59 = icmp slt i32 %13, %12
  br i1 %59, label %61, label %60

60:                                               ; preds = %58
  store i32 0, ptr %4, align 4, !tbaa !58
  store i32 0, ptr %3, align 4, !tbaa !58
  br label %96

61:                                               ; preds = %58
  %62 = icmp slt i32 %14, %12
  br i1 %62, label %96, label %63

63:                                               ; preds = %61
  %64 = or disjoint i32 %46, 3
  store i32 %64, ptr %4, align 4, !tbaa !58
  br label %96

65:                                               ; preds = %5
  %66 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 26
  store i8 66, ptr %66, align 8, !tbaa !295
  %67 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 14
  %68 = load i32, ptr %67, align 4, !tbaa !187
  %69 = icmp eq i32 %68, 0
  %70 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 5
  %71 = load i32, ptr %70, align 8, !tbaa !194
  br i1 %69, label %72, label %89

72:                                               ; preds = %65
  %73 = and i32 %71, 16385
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store i32 0, ptr %2, align 4, !tbaa !58
  store i32 0, ptr %3, align 4, !tbaa !58
  store i32 0, ptr %4, align 4, !tbaa !58
  br label %96

76:                                               ; preds = %72
  %77 = and i32 %71, 6
  %78 = icmp eq i32 %77, 6
  %79 = select i1 %78, i32 2, i32 1
  store i32 %71, ptr %4, align 4, !tbaa !58
  store i32 %79, ptr %3, align 4, !tbaa !58
  %80 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %81 = load i32, ptr %80, align 4, !tbaa !193
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i32, ptr %70, align 8, !tbaa !194
  %85 = and i32 %84, 6
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 1, ptr %2, align 4, !tbaa !58
  br label %96

88:                                               ; preds = %83, %76
  store i32 0, ptr %2, align 4, !tbaa !58
  br label %96

89:                                               ; preds = %65
  %90 = and i32 %71, -8
  %91 = or disjoint i32 %90, 1
  store i32 %91, ptr %4, align 4, !tbaa !58
  store i32 1, ptr %3, align 4, !tbaa !58
  %92 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 6
  %93 = load i32, ptr %92, align 4, !tbaa !193
  %94 = icmp eq i32 %93, 1
  %95 = zext i1 %94 to i32
  store i32 %95, ptr %2, align 4, !tbaa !58
  br label %96

96:                                               ; preds = %23, %56, %54, %53, %63, %61, %60, %28, %89, %87, %88, %75
  ret void
}

; Function Attrs: optsize
declare i32 @BKE_sequence_tx_get_final_left(ptr noundef, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @BKE_sequence_tx_get_final_right(ptr noundef, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @SeqToTransData(ptr noundef returned %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #8 !PGOFuncName !735 {
  switch i32 %5, label %20 [
    i32 1, label %7
    i32 2, label %14
    i32 4, label %17
  ]

7:                                                ; preds = %6
  %8 = tail call i32 @BKE_sequence_tx_get_final_left(ptr noundef %3, i8 noundef zeroext 0) #22
  %9 = sitofp i32 %8 to float
  store float %9, ptr %1, align 8, !tbaa !123
  %10 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 8
  %11 = load i32, ptr %10, align 4, !tbaa !184
  %12 = sub nsw i32 %8, %11
  %13 = getelementptr inbounds %struct.TransDataSeq, ptr %2, i64 0, i32 2
  store i32 %12, ptr %13, align 4, !tbaa !188
  br label %20

14:                                               ; preds = %6
  %15 = tail call i32 @BKE_sequence_tx_get_final_left(ptr noundef %3, i8 noundef zeroext 0) #22
  %16 = sitofp i32 %15 to float
  store float %16, ptr %1, align 8, !tbaa !123
  br label %20

17:                                               ; preds = %6
  %18 = tail call i32 @BKE_sequence_tx_get_final_right(ptr noundef %3, i8 noundef zeroext 0) #22
  %19 = sitofp i32 %18 to float
  store float %19, ptr %1, align 8, !tbaa !123
  br label %20

20:                                               ; preds = %6, %17, %14, %7
  %21 = getelementptr inbounds %struct.Sequence, ptr %3, i64 0, i32 13
  %22 = load i32, ptr %21, align 8, !tbaa !189
  %23 = sitofp i32 %22 to float
  %24 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  store float %23, ptr %24, align 4, !tbaa !123
  %25 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  store float 0.000000e+00, ptr %25, align 8, !tbaa !123
  %26 = getelementptr inbounds %struct.TransData2D, ptr %1, i64 0, i32 1
  store ptr null, ptr %26, align 8, !tbaa !211
  store ptr %3, ptr %2, align 8, !tbaa !182
  %27 = getelementptr inbounds %struct.TransDataSeq, ptr %2, i64 0, i32 1
  store i32 %4, ptr %27, align 8, !tbaa !190
  %28 = trunc i32 %5 to i16
  %29 = getelementptr inbounds %struct.TransDataSeq, ptr %2, i64 0, i32 3
  store i16 %28, ptr %29, align 8, !tbaa !186
  %30 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 15
  store ptr %2, ptr %30, align 8, !tbaa !175
  %31 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 16
  store i32 0, ptr %31, align 8, !tbaa !49
  %32 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 3
  store ptr %1, ptr %32, align 8, !tbaa !215
  %33 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %33, ptr noundef %1) #23
  %34 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 4
  %35 = load ptr, ptr %32, align 8, !tbaa !215
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %34, ptr noundef %35) #23
  %36 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %36, i8 0, i64 32, i1 false)
  %37 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %37, align 8, !tbaa !123
  %38 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 13
  store ptr null, ptr %38, align 8, !tbaa !330
  %39 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 5
  store ptr null, ptr %39, align 8, !tbaa !474
  %40 = load i32, ptr %31, align 8, !tbaa !49
  %41 = or i32 %40, 1
  store i32 %41, ptr %31, align 8, !tbaa !49
  store float 0.000000e+00, ptr %0, align 8, !tbaa !55
  %42 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 8
  tail call void @unit_m3(ptr noundef nonnull %42) #22
  %43 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 9
  tail call void @unit_m3(ptr noundef nonnull %43) #22
  store ptr %1, ptr %39, align 8, !tbaa !474
  %44 = load float, ptr %1, align 8, !tbaa !123
  %45 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 6
  store float %44, ptr %45, align 8, !tbaa !475
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @graph_edit_is_translation_mode(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !736 {
  %2 = load i32, ptr %0, align 8, !tbaa !192
  switch i32 %2, label %3 [
    i32 1, label %6
    i32 19, label %6
    i32 20, label %6
  ]

3:                                                ; preds = %1
  %4 = icmp eq i32 %2, 23
  %5 = zext i1 %4 to i8
  br label %6

6:                                                ; preds = %1, %1, %1, %3
  %7 = phi i8 [ 1, %1 ], [ %5, %3 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @graph_edit_use_local_center(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !737 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 32
  %3 = load i16, ptr %2, align 2, !tbaa !316
  %4 = icmp eq i16 %3, 2
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call fastcc zeroext i8 @graph_edit_is_translation_mode(ptr noundef nonnull %0) #23, !range !542
  %7 = xor i8 %6, 1
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i8 [ 0, %1 ], [ %7, %5 ]
  ret i8 %9
}

; Function Attrs: optsize
declare signext i16 @ANIM_get_normalization_flags(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @UI_view2d_scale_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #7 !PGOFuncName !738 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !123
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !123
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !123
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !123
  ret void
}

; Function Attrs: optsize
declare float @ANIM_unit_mapping_get_factor(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @initTransDataCurveHandles(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #8 !PGOFuncName !739 {
  %3 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 16
  %4 = load i32, ptr %3, align 8, !tbaa !49
  %5 = or i32 %4, 4096
  store i32 %5, ptr %3, align 8, !tbaa !49
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !64
  %7 = tail call ptr %6(i64 noundef 24, ptr noundef nonnull @.str.37) #22
  %8 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 14
  store ptr %7, ptr %8, align 8, !tbaa !250
  %9 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 5
  %10 = load i8, ptr %9, align 1, !tbaa !568
  store i8 %10, ptr %7, align 8, !tbaa !740
  %11 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %7, i64 0, i32 2
  store ptr %9, ptr %11, align 8, !tbaa !251
  %12 = getelementptr inbounds %struct.BezTriple, ptr %1, i64 0, i32 6
  %13 = load i8, ptr %12, align 2, !tbaa !569
  %14 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %7, i64 0, i32 1
  store i8 %13, ptr %14, align 1, !tbaa !741
  %15 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %7, i64 0, i32 3
  store ptr %12, ptr %15, align 8, !tbaa !253
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bezt_to_transdata(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8, ptr noundef %9, ptr noundef %10, float noundef %11) unnamed_addr #8 !PGOFuncName !742 {
  %13 = zext nneg i32 %5 to i64
  %14 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 %13
  %15 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1
  %16 = icmp eq ptr %3, null
  %17 = load float, ptr %14, align 4, !tbaa !123
  br i1 %16, label %35, label %18

18:                                               ; preds = %12
  %19 = tail call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %3, float noundef %17, i16 noundef signext 2) #22
  store float %19, ptr %1, align 8, !tbaa !123
  %20 = getelementptr inbounds float, ptr %14, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !123
  %22 = fmul float %21, %11
  %23 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  store float %22, ptr %23, align 4, !tbaa !123
  %24 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  store float 0.000000e+00, ptr %24, align 8, !tbaa !123
  %25 = getelementptr inbounds %struct.TransData2D, ptr %1, i64 0, i32 1
  store ptr %14, ptr %25, align 8, !tbaa !211
  %26 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 3
  store ptr %1, ptr %26, align 8, !tbaa !215
  %27 = load float, ptr %15, align 4, !tbaa !123
  %28 = tail call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %3, float noundef %27, i16 noundef signext 2) #22
  %29 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 7
  store float %28, ptr %29, align 4, !tbaa !123
  %30 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !123
  %32 = fmul float %31, %11
  %33 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 7, i64 1
  store float %32, ptr %33, align 4, !tbaa !123
  %34 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 7, i64 2
  store float 0.000000e+00, ptr %34, align 4, !tbaa !123
  br label %47

35:                                               ; preds = %12
  store float %17, ptr %1, align 8, !tbaa !123
  %36 = getelementptr inbounds float, ptr %14, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !123
  %38 = fmul float %37, %11
  %39 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  store float %38, ptr %39, align 4, !tbaa !123
  %40 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  store float 0.000000e+00, ptr %40, align 8, !tbaa !123
  %41 = getelementptr inbounds %struct.TransData2D, ptr %1, i64 0, i32 1
  store ptr %14, ptr %41, align 8, !tbaa !211
  %42 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 3
  store ptr %1, ptr %42, align 8, !tbaa !215
  %43 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %43, ptr noundef nonnull %15) #23
  %44 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 7, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !123
  %46 = fmul float %45, %11
  store float %46, ptr %44, align 4, !tbaa !123
  br label %47

47:                                               ; preds = %35, %18
  %48 = phi ptr [ %42, %35 ], [ %26, %18 ]
  %49 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 4
  %50 = load ptr, ptr %48, align 8, !tbaa !215
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %49, ptr noundef %50) #23
  %51 = icmp eq i8 %7, 0
  %52 = getelementptr inbounds %struct.TransData2D, ptr %1, i64 0, i32 2
  br i1 %51, label %53, label %59

53:                                               ; preds = %47
  store ptr %4, ptr %52, align 8, !tbaa !248
  %54 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  %55 = getelementptr inbounds %struct.TransData2D, ptr %1, i64 0, i32 3
  store ptr %54, ptr %55, align 8, !tbaa !249
  %56 = getelementptr inbounds %struct.TransData2D, ptr %1, i64 0, i32 4
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %56, ptr noundef nonnull %4) #23
  %57 = getelementptr inbounds %struct.TransData2D, ptr %1, i64 0, i32 5
  %58 = load ptr, ptr %55, align 8, !tbaa !249
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %57, ptr noundef %58) #23
  br label %60

59:                                               ; preds = %47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %52, i8 0, i64 16, i1 false)
  br label %60

60:                                               ; preds = %59, %53
  %61 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %61, i8 0, i64 32, i1 false)
  %62 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %62, align 8, !tbaa !123
  %63 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 13
  store ptr null, ptr %63, align 8, !tbaa !330
  %64 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 5
  store ptr null, ptr %64, align 8, !tbaa !474
  %65 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 15
  store ptr %3, ptr %65, align 8, !tbaa !175
  %66 = icmp eq i8 %6, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 16
  %69 = load i32, ptr %68, align 8, !tbaa !49
  %70 = or i32 %69, 1
  store i32 %70, ptr %68, align 8, !tbaa !49
  br label %71

71:                                               ; preds = %60, %67
  %72 = phi float [ 0.000000e+00, %67 ], [ 0x47EFFFFFE0000000, %60 ]
  store float %72, ptr %0, align 8, !tbaa !55
  br i1 %51, label %77, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 16
  %75 = load i32, ptr %74, align 8, !tbaa !49
  %76 = or i32 %75, 16384
  store i32 %76, ptr %74, align 8, !tbaa !49
  br label %77

77:                                               ; preds = %73, %71
  %78 = icmp eq i8 %8, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 16
  %81 = load i32, ptr %80, align 8, !tbaa !49
  %82 = or i32 %81, 32768
  store i32 %82, ptr %80, align 8, !tbaa !49
  br label %83

83:                                               ; preds = %79, %77
  %84 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 8
  tail call void @copy_m3_m3(ptr noundef nonnull %84, ptr noundef %9) #22
  %85 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 9
  tail call void @copy_m3_m3(ptr noundef nonnull %85, ptr noundef %10) #22
  store float %11, ptr %2, align 4, !tbaa !258
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @is_node_parent_select(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !743 {
  br label %2

2:                                                ; preds = %7, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %7 ]
  %4 = getelementptr inbounds %struct.bNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !176
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !349
  %10 = and i32 %9, 8192
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %2, label %12, !llvm.loop !744

12:                                               ; preds = %2, %7
  %13 = phi i8 [ 1, %7 ], [ 0, %2 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @NodeToTransData(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) unnamed_addr #8 !PGOFuncName !745 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #24
  %7 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !176
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 24
  %11 = load float, ptr %10, align 8, !tbaa !746
  br i1 %9, label %17, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 25
  %14 = load float, ptr %13, align 4, !tbaa !747
  call void @nodeToView(ptr noundef nonnull %8, float noundef %11, float noundef %14, ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %15 = load float, ptr %5, align 4, !tbaa !123
  %16 = load float, ptr %6, align 4, !tbaa !123
  br label %20

17:                                               ; preds = %4
  store float %11, ptr %5, align 4, !tbaa !123
  %18 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 25
  %19 = load float, ptr %18, align 4, !tbaa !747
  store float %19, ptr %6, align 4, !tbaa !123
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi float [ %19, %17 ], [ %16, %12 ]
  %22 = phi float [ %11, %17 ], [ %15, %12 ]
  %23 = fmul float %22, %3
  store float %23, ptr %1, align 8, !tbaa !123
  %24 = fmul float %21, %3
  %25 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  store float %24, ptr %25, align 4, !tbaa !123
  %26 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  store float 0.000000e+00, ptr %26, align 8, !tbaa !123
  %27 = getelementptr inbounds %struct.TransData2D, ptr %1, i64 0, i32 1
  store ptr %1, ptr %27, align 8, !tbaa !211
  %28 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 16
  store i32 0, ptr %28, align 8, !tbaa !49
  %29 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 3
  store ptr %1, ptr %29, align 8, !tbaa !215
  %30 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %30, ptr noundef nonnull %1) #23
  %31 = load float, ptr %1, align 8, !tbaa !123
  %32 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 7
  store float %31, ptr %32, align 4, !tbaa !123
  %33 = load float, ptr %25, align 4, !tbaa !123
  %34 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 7, i64 1
  store float %33, ptr %34, align 4, !tbaa !123
  %35 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 7, i64 2
  store float 0.000000e+00, ptr %35, align 4, !tbaa !123
  %36 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %36, i8 0, i64 32, i1 false)
  %37 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %37, align 8, !tbaa !123
  %38 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 13
  store ptr null, ptr %38, align 8, !tbaa !330
  %39 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 5
  store ptr null, ptr %39, align 8, !tbaa !474
  %40 = load i32, ptr %28, align 8, !tbaa !49
  %41 = or i32 %40, 1
  store i32 %41, ptr %28, align 8, !tbaa !49
  store float 0.000000e+00, ptr %0, align 8, !tbaa !55
  %42 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 8
  call void @unit_m3(ptr noundef nonnull %42) #22
  %43 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 9
  call void @unit_m3(ptr noundef nonnull %43) #22
  %44 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 15
  store ptr %2, ptr %44, align 8, !tbaa !175
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  ret void
}

; Function Attrs: optsize
declare void @nodeToView(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BKE_movieclip_get_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @createTransTrackingCurvesData(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !PGOFuncName !748 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #22
  %6 = tail call ptr @ED_space_clip_get_clip(ptr noundef %5) #22
  %7 = getelementptr inbounds %struct.MovieClip, ptr %6, i64 0, i32 11
  %8 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  %9 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 9
  call void @BKE_movieclip_get_size(ptr noundef %6, ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef nonnull %4) #22
  %10 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 0, ptr %10, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 12
  %12 = load i32, ptr %11, align 8, !tbaa !358
  %13 = and i32 %12, 32768
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %211, label %15

15:                                               ; preds = %2
  %16 = load ptr, ptr %8, align 8, !tbaa !64
  %17 = icmp eq ptr %16, null
  br i1 %17, label %211, label %18

18:                                               ; preds = %15
  %19 = and i32 %12, 1
  %20 = icmp eq i32 %19, 0
  %21 = and i32 %12, 2
  %22 = icmp eq i32 %21, 0
  br label %23

23:                                               ; preds = %18, %86
  %24 = phi i32 [ 0, %18 ], [ %87, %86 ]
  %25 = phi ptr [ %16, %18 ], [ %88, %86 ]
  %26 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %25, i64 0, i32 13
  %27 = load i32, ptr %26, align 8, !tbaa !356
  %28 = and i32 %27, 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %86

30:                                               ; preds = %23
  %31 = and i32 %27, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  br i1 %20, label %39, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %25, i64 0, i32 14
  %36 = load i32, ptr %35, align 4, !tbaa !363
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34, %33
  br i1 %22, label %86, label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %25, i64 0, i32 15
  %42 = load i32, ptr %41, align 8, !tbaa !364
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  %45 = and i32 %27, 64
  %46 = icmp eq i32 %45, 0
  %47 = and i1 %46, %44
  br i1 %47, label %51, label %86

48:                                               ; preds = %34, %30
  %49 = and i32 %27, 64
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %86

51:                                               ; preds = %48, %40
  %52 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %25, i64 0, i32 8
  %53 = load i32, ptr %52, align 8, !tbaa !422
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %86

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %25, i64 0, i32 10
  %57 = load ptr, ptr %56, align 8, !tbaa !423
  %58 = getelementptr %struct.MovieTrackingMarker, ptr %57, i64 -1, i32 5
  %59 = zext nneg i32 %53 to i64
  br label %60

60:                                               ; preds = %55, %82
  %61 = phi i32 [ %24, %55 ], [ %83, %82 ]
  %62 = phi i64 [ 1, %55 ], [ %84, %82 ]
  %63 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %57, i64 %62, i32 5
  %64 = load i32, ptr %63, align 4, !tbaa !421
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %60
  %68 = getelementptr %struct.MovieTrackingMarker, ptr %58, i64 %62
  %69 = load i32, ptr %68, align 4, !tbaa !421
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = lshr i32 %64, 2
  %74 = and i32 %73, 1
  %75 = add i32 %61, %74
  %76 = lshr i32 %64, 3
  %77 = and i32 %76, 1
  %78 = add i32 %75, %77
  %79 = and i32 %64, 12
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %72
  store i32 %78, ptr %10, align 8, !tbaa !34
  br label %82

82:                                               ; preds = %81, %72, %60, %67
  %83 = phi i32 [ %61, %60 ], [ %61, %67 ], [ %78, %72 ], [ %78, %81 ]
  %84 = add nuw nsw i64 %62, 1
  %85 = icmp eq i64 %84, %59
  br i1 %85, label %86, label %60, !llvm.loop !749

86:                                               ; preds = %82, %51, %48, %40, %39, %23
  %87 = phi i32 [ %24, %51 ], [ %24, %48 ], [ %24, %40 ], [ %24, %39 ], [ %24, %23 ], [ %83, %82 ]
  %88 = load ptr, ptr %25, align 8, !tbaa !64
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %23, !llvm.loop !750

90:                                               ; preds = %86
  %91 = icmp eq i32 %87, 0
  br i1 %91, label %211, label %92

92:                                               ; preds = %90
  %93 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %94 = sext i32 %87 to i64
  %95 = mul nsw i64 %94, 224
  %96 = call ptr %93(i64 noundef %95, ptr noundef nonnull @.str.40) #22
  %97 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %96, ptr %97, align 8, !tbaa !48
  %98 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %99 = load i32, ptr %10, align 8, !tbaa !34
  %100 = sext i32 %99 to i64
  %101 = mul nsw i64 %100, 56
  %102 = call ptr %98(i64 noundef %101, ptr noundef nonnull @.str.41) #22
  %103 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 12
  store ptr %102, ptr %103, align 8, !tbaa !174
  %104 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %105 = load i32, ptr %10, align 8, !tbaa !34
  %106 = sext i32 %105 to i64
  %107 = mul nsw i64 %106, 112
  %108 = call ptr %104(i64 noundef %107, ptr noundef nonnull @.str.42) #22
  %109 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  store ptr %108, ptr %109, align 8, !tbaa !100
  %110 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 41
  store ptr @transDataTrackingFree, ptr %110, align 8, !tbaa !561
  %111 = load ptr, ptr %8, align 8, !tbaa !64
  %112 = icmp eq ptr %111, null
  br i1 %112, label %211, label %113

113:                                              ; preds = %92, %205
  %114 = phi ptr [ %209, %205 ], [ %111, %92 ]
  %115 = phi ptr [ %208, %205 ], [ %108, %92 ]
  %116 = phi ptr [ %207, %205 ], [ %96, %92 ]
  %117 = phi ptr [ %206, %205 ], [ %102, %92 ]
  %118 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %114, i64 0, i32 13
  %119 = load i32, ptr %118, align 8, !tbaa !356
  %120 = and i32 %119, 32
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %205

122:                                              ; preds = %113
  %123 = and i32 %119, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %145

125:                                              ; preds = %122
  %126 = load i32, ptr %11, align 8, !tbaa !358
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %114, i64 0, i32 14
  %131 = load i32, ptr %130, align 4, !tbaa !363
  %132 = and i32 %131, 1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %129, %125
  %135 = and i32 %126, 2
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %205, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %114, i64 0, i32 15
  %139 = load i32, ptr %138, align 8, !tbaa !364
  %140 = and i32 %139, 1
  %141 = icmp ne i32 %140, 0
  %142 = and i32 %119, 64
  %143 = icmp eq i32 %142, 0
  %144 = and i1 %143, %141
  br i1 %144, label %148, label %205

145:                                              ; preds = %129, %122
  %146 = and i32 %119, 64
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %205

148:                                              ; preds = %145, %137
  %149 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %114, i64 0, i32 8
  %150 = load i32, ptr %149, align 8, !tbaa !422
  %151 = icmp sgt i32 %150, 1
  br i1 %151, label %152, label %205

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %114, i64 0, i32 10
  br label %154

154:                                              ; preds = %152, %197
  %155 = phi i64 [ 1, %152 ], [ %201, %197 ]
  %156 = phi ptr [ %115, %152 ], [ %200, %197 ]
  %157 = phi ptr [ %116, %152 ], [ %199, %197 ]
  %158 = phi ptr [ %117, %152 ], [ %198, %197 ]
  %159 = load ptr, ptr %153, align 8, !tbaa !423
  %160 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %159, i64 %155
  %161 = add nsw i64 %155, -1
  %162 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %159, i64 %161
  %163 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %159, i64 %155, i32 5
  %164 = load i32, ptr %163, align 4, !tbaa !421
  %165 = and i32 %164, 1
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %197

167:                                              ; preds = %154
  %168 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %159, i64 %161, i32 5
  %169 = load i32, ptr %168, align 4, !tbaa !421
  %170 = and i32 %169, 1
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %197

172:                                              ; preds = %167
  %173 = and i32 %164, 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %182, label %175

175:                                              ; preds = %172
  %176 = load i32, ptr %3, align 4, !tbaa !58
  %177 = sitofp i32 %176 to float
  call fastcc void @markerToTransCurveDataInit(ptr noundef %157, ptr noundef %158, ptr noundef %156, ptr noundef nonnull %114, ptr noundef nonnull %160, ptr noundef nonnull %162, i16 noundef signext 0, float noundef %177) #23
  %178 = getelementptr inbounds %struct.TransData, ptr %157, i64 1
  %179 = getelementptr inbounds %struct.TransData2D, ptr %158, i64 1
  %180 = getelementptr inbounds %struct.TransDataTracking, ptr %156, i64 1
  %181 = load i32, ptr %163, align 4, !tbaa !421
  br label %182

182:                                              ; preds = %175, %172
  %183 = phi i32 [ %181, %175 ], [ %164, %172 ]
  %184 = phi ptr [ %179, %175 ], [ %158, %172 ]
  %185 = phi ptr [ %178, %175 ], [ %157, %172 ]
  %186 = phi ptr [ %180, %175 ], [ %156, %172 ]
  %187 = and i32 %183, 8
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %197, label %189

189:                                              ; preds = %182
  %190 = load ptr, ptr %153, align 8, !tbaa !423
  %191 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %190, i64 %161
  %192 = load i32, ptr %4, align 4, !tbaa !58
  %193 = sitofp i32 %192 to float
  call fastcc void @markerToTransCurveDataInit(ptr noundef %185, ptr noundef %184, ptr noundef %186, ptr noundef nonnull %114, ptr noundef nonnull %160, ptr noundef %191, i16 noundef signext 1, float noundef %193) #23
  %194 = getelementptr inbounds %struct.TransData, ptr %185, i64 1
  %195 = getelementptr inbounds %struct.TransData2D, ptr %184, i64 1
  %196 = getelementptr inbounds %struct.TransDataTracking, ptr %186, i64 1
  br label %197

197:                                              ; preds = %182, %189, %154, %167
  %198 = phi ptr [ %158, %154 ], [ %158, %167 ], [ %195, %189 ], [ %184, %182 ]
  %199 = phi ptr [ %157, %154 ], [ %157, %167 ], [ %194, %189 ], [ %185, %182 ]
  %200 = phi ptr [ %156, %154 ], [ %156, %167 ], [ %196, %189 ], [ %186, %182 ]
  %201 = add nuw nsw i64 %155, 1
  %202 = load i32, ptr %149, align 8, !tbaa !422
  %203 = sext i32 %202 to i64
  %204 = icmp slt i64 %201, %203
  br i1 %204, label %154, label %205, !llvm.loop !751

205:                                              ; preds = %197, %148, %145, %137, %134, %113
  %206 = phi ptr [ %117, %145 ], [ %117, %137 ], [ %117, %134 ], [ %117, %113 ], [ %117, %148 ], [ %198, %197 ]
  %207 = phi ptr [ %116, %145 ], [ %116, %137 ], [ %116, %134 ], [ %116, %113 ], [ %116, %148 ], [ %199, %197 ]
  %208 = phi ptr [ %115, %145 ], [ %115, %137 ], [ %115, %134 ], [ %115, %113 ], [ %115, %148 ], [ %200, %197 ]
  %209 = load ptr, ptr %114, align 8, !tbaa !64
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %113, !llvm.loop !752

211:                                              ; preds = %205, %15, %92, %90, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @createTransTrackingTracksData(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !PGOFuncName !753 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #22
  %6 = tail call ptr @ED_space_clip_get_clip(ptr noundef %5) #22
  %7 = getelementptr inbounds %struct.MovieClip, ptr %6, i64 0, i32 11
  %8 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %7) #22
  %9 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %7) #22
  %10 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %5) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  %11 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  store i32 0, ptr %11, align 8, !tbaa !34
  %12 = load ptr, ptr %8, align 8, !tbaa !64
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 12
  br label %20

16:                                               ; preds = %73, %2
  %17 = phi i32 [ 0, %2 ], [ %74, %73 ]
  %18 = load ptr, ptr %9, align 8, !tbaa !64
  %19 = icmp eq ptr %18, null
  br i1 %19, label %90, label %77

20:                                               ; preds = %14, %73
  %21 = phi i32 [ 0, %14 ], [ %74, %73 ]
  %22 = phi ptr [ %12, %14 ], [ %75, %73 ]
  %23 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %22, i64 0, i32 13
  %24 = load i32, ptr %23, align 8, !tbaa !356
  %25 = and i32 %24, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %73

27:                                               ; preds = %20
  %28 = and i32 %24, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %27
  %31 = load i32, ptr %15, align 8, !tbaa !358
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %22, i64 0, i32 14
  %36 = load i32, ptr %35, align 4, !tbaa !363
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34, %30
  %40 = and i32 %31, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %73, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %22, i64 0, i32 15
  %44 = load i32, ptr %43, align 8, !tbaa !364
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  %47 = and i32 %24, 64
  %48 = icmp eq i32 %47, 0
  %49 = and i1 %48, %46
  br i1 %49, label %56, label %73

50:                                               ; preds = %34
  %51 = and i32 %24, 64
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %73

53:                                               ; preds = %27
  %54 = and i32 %24, 64
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %50, %42, %53
  %57 = phi i32 [ 2, %53 ], [ 1, %42 ], [ 1, %50 ]
  %58 = add nsw i32 %21, %57
  store i32 %58, ptr %11, align 8, !tbaa !34
  %59 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %22, i64 0, i32 14
  %60 = load i32, ptr %59, align 4, !tbaa !363
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %56
  %64 = add nsw i32 %58, 4
  store i32 %64, ptr %11, align 8, !tbaa !34
  br label %65

65:                                               ; preds = %63, %56
  %66 = phi i32 [ %64, %63 ], [ %58, %56 ]
  %67 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %22, i64 0, i32 15
  %68 = load i32, ptr %67, align 8, !tbaa !364
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %65
  %72 = add nsw i32 %66, 2
  store i32 %72, ptr %11, align 8, !tbaa !34
  br label %73

73:                                               ; preds = %53, %65, %71, %50, %42, %39, %20
  %74 = phi i32 [ %21, %53 ], [ %66, %65 ], [ %72, %71 ], [ %21, %50 ], [ %21, %42 ], [ %21, %39 ], [ %21, %20 ]
  %75 = load ptr, ptr %22, align 8, !tbaa !64
  %76 = icmp eq ptr %75, null
  br i1 %76, label %16, label %20, !llvm.loop !754

77:                                               ; preds = %16, %86
  %78 = phi i32 [ %87, %86 ], [ %17, %16 ]
  %79 = phi ptr [ %88, %86 ], [ %18, %16 ]
  %80 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %79, i64 0, i32 8
  %81 = load i32, ptr %80, align 4, !tbaa !352
  %82 = and i32 %81, 3
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = add nsw i32 %78, 4
  store i32 %85, ptr %11, align 8, !tbaa !34
  br label %86

86:                                               ; preds = %77, %84
  %87 = phi i32 [ %78, %77 ], [ %85, %84 ]
  %88 = load ptr, ptr %79, align 8, !tbaa !64
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %77, !llvm.loop !755

90:                                               ; preds = %86, %16
  %91 = phi i32 [ %17, %16 ], [ %87, %86 ]
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %211, label %93

93:                                               ; preds = %90
  call void @ED_space_clip_get_aspect_dimension_aware(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #22
  %94 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %95 = load i32, ptr %11, align 8, !tbaa !34
  %96 = sext i32 %95 to i64
  %97 = mul nsw i64 %96, 224
  %98 = call ptr %94(i64 noundef %97, ptr noundef nonnull @.str.40) #22
  %99 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  store ptr %98, ptr %99, align 8, !tbaa !48
  %100 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %101 = load i32, ptr %11, align 8, !tbaa !34
  %102 = sext i32 %101 to i64
  %103 = mul nsw i64 %102, 56
  %104 = call ptr %100(i64 noundef %103, ptr noundef nonnull @.str.41) #22
  %105 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 12
  store ptr %104, ptr %105, align 8, !tbaa !174
  %106 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %107 = load i32, ptr %11, align 8, !tbaa !34
  %108 = sext i32 %107 to i64
  %109 = mul nsw i64 %108, 112
  %110 = call ptr %106(i64 noundef %109, ptr noundef nonnull @.str.42) #22
  %111 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  store ptr %110, ptr %111, align 8, !tbaa !100
  %112 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 41
  store ptr @transDataTrackingFree, ptr %112, align 8, !tbaa !561
  %113 = load ptr, ptr %8, align 8, !tbaa !64
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %93
  %116 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 12
  br label %123

117:                                              ; preds = %184, %93
  %118 = phi ptr [ %104, %93 ], [ %185, %184 ]
  %119 = phi ptr [ %110, %93 ], [ %186, %184 ]
  %120 = phi ptr [ %98, %93 ], [ %187, %184 ]
  %121 = load ptr, ptr %9, align 8, !tbaa !64
  %122 = icmp eq ptr %121, null
  br i1 %122, label %211, label %190

123:                                              ; preds = %115, %184
  %124 = phi ptr [ %113, %115 ], [ %188, %184 ]
  %125 = phi ptr [ %98, %115 ], [ %187, %184 ]
  %126 = phi ptr [ %110, %115 ], [ %186, %184 ]
  %127 = phi ptr [ %104, %115 ], [ %185, %184 ]
  %128 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %124, i64 0, i32 13
  %129 = load i32, ptr %128, align 8, !tbaa !356
  %130 = and i32 %129, 32
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %184

132:                                              ; preds = %123
  %133 = and i32 %129, 1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %155

135:                                              ; preds = %132
  %136 = load i32, ptr %116, align 8, !tbaa !358
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %124, i64 0, i32 14
  %141 = load i32, ptr %140, align 4, !tbaa !363
  %142 = and i32 %141, 1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %139, %135
  %145 = and i32 %136, 2
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %184, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %124, i64 0, i32 15
  %149 = load i32, ptr %148, align 8, !tbaa !364
  %150 = and i32 %149, 1
  %151 = icmp ne i32 %150, 0
  %152 = and i32 %129, 64
  %153 = icmp eq i32 %152, 0
  %154 = and i1 %153, %151
  br i1 %154, label %158, label %184

155:                                              ; preds = %139, %132
  %156 = and i32 %129, 64
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %184

158:                                              ; preds = %147, %155
  %159 = load float, ptr %3, align 4, !tbaa !123
  %160 = load float, ptr %4, align 4, !tbaa !123
  call fastcc void @trackToTransData(i32 noundef %10, ptr noundef %125, ptr noundef %127, ptr noundef %126, ptr noundef nonnull %124, float noundef %159, float noundef %160) #23
  %161 = load i32, ptr %128, align 8, !tbaa !356
  %162 = and i32 %161, 1
  %163 = icmp eq i32 %162, 0
  %164 = select i1 %163, i64 1, i64 2
  %165 = getelementptr inbounds %struct.TransData2D, ptr %127, i64 %164
  %166 = getelementptr inbounds %struct.TransDataTracking, ptr %126, i64 %164
  %167 = getelementptr inbounds %struct.TransData, ptr %125, i64 %164
  %168 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %124, i64 0, i32 14
  %169 = load i32, ptr %168, align 4, !tbaa !363
  %170 = shl i32 %169, 2
  %171 = and i32 %170, 4
  %172 = zext nneg i32 %171 to i64
  %173 = getelementptr inbounds %struct.TransData2D, ptr %165, i64 %172
  %174 = getelementptr inbounds %struct.TransDataTracking, ptr %166, i64 %172
  %175 = getelementptr inbounds %struct.TransData, ptr %167, i64 %172
  %176 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %124, i64 0, i32 15
  %177 = load i32, ptr %176, align 8, !tbaa !364
  %178 = and i32 %177, 1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %158
  %181 = getelementptr inbounds %struct.TransData, ptr %175, i64 2
  %182 = getelementptr inbounds %struct.TransData2D, ptr %173, i64 2
  %183 = getelementptr inbounds %struct.TransDataTracking, ptr %174, i64 2
  br label %184

184:                                              ; preds = %158, %180, %155, %147, %144, %123
  %185 = phi ptr [ %182, %180 ], [ %173, %158 ], [ %127, %155 ], [ %127, %147 ], [ %127, %144 ], [ %127, %123 ]
  %186 = phi ptr [ %183, %180 ], [ %174, %158 ], [ %126, %155 ], [ %126, %147 ], [ %126, %144 ], [ %126, %123 ]
  %187 = phi ptr [ %181, %180 ], [ %175, %158 ], [ %125, %155 ], [ %125, %147 ], [ %125, %144 ], [ %125, %123 ]
  %188 = load ptr, ptr %124, align 8, !tbaa !64
  %189 = icmp eq ptr %188, null
  br i1 %189, label %117, label %123, !llvm.loop !756

190:                                              ; preds = %117, %205
  %191 = phi ptr [ %209, %205 ], [ %121, %117 ]
  %192 = phi ptr [ %208, %205 ], [ %120, %117 ]
  %193 = phi ptr [ %207, %205 ], [ %119, %117 ]
  %194 = phi ptr [ %206, %205 ], [ %118, %117 ]
  %195 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %191, i64 0, i32 8
  %196 = load i32, ptr %195, align 4, !tbaa !352
  %197 = and i32 %196, 3
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %199, label %205

199:                                              ; preds = %190
  %200 = load float, ptr %3, align 4, !tbaa !123
  %201 = load float, ptr %4, align 4, !tbaa !123
  call fastcc void @planeTrackToTransData(i32 noundef %10, ptr noundef %192, ptr noundef %194, ptr noundef %193, ptr noundef nonnull %191, float noundef %200, float noundef %201) #23
  %202 = getelementptr inbounds %struct.TransData, ptr %192, i64 4
  %203 = getelementptr inbounds %struct.TransData2D, ptr %194, i64 4
  %204 = getelementptr inbounds %struct.TransDataTracking, ptr %193, i64 4
  br label %205

205:                                              ; preds = %190, %199
  %206 = phi ptr [ %203, %199 ], [ %194, %190 ]
  %207 = phi ptr [ %204, %199 ], [ %193, %190 ]
  %208 = phi ptr [ %202, %199 ], [ %192, %190 ]
  %209 = load ptr, ptr %191, align 8, !tbaa !64
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %190, !llvm.loop !757

211:                                              ; preds = %205, %117, %90
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_tracking_get_active_tracks(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal void @transDataTrackingFree(ptr nocapture noundef %0) #8 !PGOFuncName !758 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TransDataTracking, ptr %3, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !409
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %10(ptr noundef nonnull %7) #22
  br label %11

11:                                               ; preds = %9, %5
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  tail call void %12(ptr noundef nonnull %3) #22
  store ptr null, ptr %2, align 8, !tbaa !100
  br label %13

13:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @markerToTransCurveDataInit(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i16 noundef signext %6, float noundef %7) unnamed_addr #8 !PGOFuncName !759 {
  %9 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %4, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !760
  %11 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %5, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !760
  %13 = sub nsw i32 %10, %12
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %4, i64 0, i32 5
  %16 = load i32, ptr %15, align 4, !tbaa !421
  %17 = getelementptr inbounds %struct.TransDataTracking, ptr %2, i64 0, i32 1
  store i32 %16, ptr %17, align 4, !tbaa !420
  %18 = and i32 %16, -3
  store i32 %18, ptr %15, align 4, !tbaa !421
  store i32 1, ptr %2, align 8, !tbaa !405
  %19 = getelementptr inbounds %struct.TransDataTracking, ptr %2, i64 0, i32 13
  store i16 %6, ptr %19, align 4, !tbaa !415
  %20 = fdiv float 1.000000e+00, %7
  %21 = fmul float %20, %14
  %22 = getelementptr inbounds %struct.TransDataTracking, ptr %2, i64 0, i32 12
  store float %21, ptr %22, align 8, !tbaa !416
  %23 = getelementptr inbounds %struct.TransDataTracking, ptr %2, i64 0, i32 11
  store ptr %5, ptr %23, align 8, !tbaa !414
  %24 = getelementptr inbounds %struct.TransDataTracking, ptr %2, i64 0, i32 14
  store ptr %3, ptr %24, align 8, !tbaa !419
  %25 = sitofp i32 %10 to float
  store float %25, ptr %1, align 8, !tbaa !123
  %26 = zext nneg i16 %6 to i64
  %27 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 %26
  %28 = load float, ptr %27, align 4, !tbaa !123
  %29 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 %26
  %30 = load float, ptr %29, align 4, !tbaa !123
  %31 = fsub float %28, %30
  %32 = fmul float %31, %7
  %33 = fdiv float %32, %14
  %34 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  store float %33, ptr %34, align 4, !tbaa !123
  %35 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  store float 0.000000e+00, ptr %35, align 8, !tbaa !123
  %36 = getelementptr inbounds %struct.TransData2D, ptr %1, i64 0, i32 1
  store ptr %4, ptr %36, align 8, !tbaa !211
  %37 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 16
  store i32 0, ptr %37, align 8, !tbaa !49
  %38 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 3
  store ptr %1, ptr %38, align 8, !tbaa !215
  %39 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %39, ptr noundef nonnull %1) #23
  %40 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 4
  %41 = load ptr, ptr %38, align 8, !tbaa !215
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %40, ptr noundef %41) #23
  %42 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %42, i8 0, i64 32, i1 false)
  %43 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %43, align 8, !tbaa !123
  %44 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 13
  store ptr null, ptr %44, align 8, !tbaa !330
  %45 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 5
  store ptr null, ptr %45, align 8, !tbaa !474
  %46 = load i32, ptr %37, align 8, !tbaa !49
  %47 = or i32 %46, 1
  store i32 %47, ptr %37, align 8, !tbaa !49
  store float 0.000000e+00, ptr %0, align 8, !tbaa !55
  %48 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 8
  tail call void @unit_m3(ptr noundef nonnull %48) #22
  %49 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 9
  tail call void @unit_m3(ptr noundef nonnull %49) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @trackToTransData(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4, float noundef %5, float noundef %6) unnamed_addr #8 !PGOFuncName !761 {
  %8 = tail call ptr @BKE_tracking_marker_ensure(ptr noundef %4, i32 noundef %0) #22
  %9 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !421
  %11 = getelementptr inbounds %struct.TransDataTracking, ptr %3, i64 0, i32 1
  store i32 %10, ptr %11, align 4, !tbaa !420
  %12 = and i32 %10, -4
  store i32 %12, ptr %9, align 4, !tbaa !421
  %13 = getelementptr inbounds %struct.TransData, ptr %1, i64 1
  %14 = getelementptr inbounds %struct.TransData2D, ptr %2, i64 1
  %15 = getelementptr inbounds %struct.TransDataTracking, ptr %3, i64 1
  %16 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %4, i64 0, i32 7
  tail call fastcc void @markerToTransDataInit(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %8, i32 noundef 1, ptr noundef nonnull %16, ptr noundef %8, ptr noundef nonnull %16, float noundef %5, float noundef %6) #23
  %17 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %4, i64 0, i32 13
  %18 = load i32, ptr %17, align 8, !tbaa !356
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.TransData, ptr %1, i64 2
  %23 = getelementptr inbounds %struct.TransData2D, ptr %2, i64 2
  %24 = getelementptr inbounds %struct.TransDataTracking, ptr %3, i64 2
  tail call fastcc void @markerToTransDataInit(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %4, ptr noundef nonnull %8, i32 noundef 1, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, float noundef %5, float noundef %6) #23
  br label %25

25:                                               ; preds = %21, %7
  %26 = phi ptr [ %24, %21 ], [ %15, %7 ]
  %27 = phi ptr [ %23, %21 ], [ %14, %7 ]
  %28 = phi ptr [ %22, %21 ], [ %13, %7 ]
  %29 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %4, i64 0, i32 14
  %30 = load i32, ptr %29, align 4, !tbaa !363
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %25, %33
  %34 = phi i64 [ %42, %33 ], [ 0, %25 ]
  %35 = phi ptr [ %38, %33 ], [ %28, %25 ]
  %36 = phi ptr [ %39, %33 ], [ %27, %25 ]
  %37 = phi ptr [ %40, %33 ], [ %26, %25 ]
  %38 = getelementptr inbounds %struct.TransData, ptr %35, i64 1
  %39 = getelementptr inbounds %struct.TransData2D, ptr %36, i64 1
  %40 = getelementptr inbounds %struct.TransDataTracking, ptr %37, i64 1
  %41 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 1, i64 %34
  tail call fastcc void @markerToTransDataInit(ptr noundef nonnull %35, ptr noundef nonnull %36, ptr noundef nonnull %37, ptr noundef %4, ptr noundef %8, i32 noundef 2, ptr noundef nonnull %41, ptr noundef %8, ptr noundef null, float noundef %5, float noundef %6) #23
  %42 = add nuw nsw i64 %34, 1
  %43 = icmp eq i64 %42, 4
  br i1 %43, label %44, label %33, !llvm.loop !762

44:                                               ; preds = %33, %25
  %45 = phi ptr [ %26, %25 ], [ %40, %33 ]
  %46 = phi ptr [ %27, %25 ], [ %39, %33 ]
  %47 = phi ptr [ %28, %25 ], [ %38, %33 ]
  %48 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %4, i64 0, i32 15
  %49 = load i32, ptr %48, align 8, !tbaa !364
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.TransData, ptr %47, i64 1
  %54 = getelementptr inbounds %struct.TransData2D, ptr %46, i64 1
  %55 = getelementptr inbounds %struct.TransDataTracking, ptr %45, i64 1
  %56 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 2
  tail call fastcc void @markerToTransDataInit(ptr noundef nonnull %47, ptr noundef nonnull %46, ptr noundef nonnull %45, ptr noundef nonnull %4, ptr noundef %8, i32 noundef 4, ptr noundef nonnull %56, ptr noundef %8, ptr noundef null, float noundef %5, float noundef %6) #23
  %57 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %8, i64 0, i32 3
  tail call fastcc void @markerToTransDataInit(ptr noundef nonnull %53, ptr noundef nonnull %54, ptr noundef nonnull %55, ptr noundef nonnull %4, ptr noundef %8, i32 noundef 4, ptr noundef nonnull %57, ptr noundef %8, ptr noundef null, float noundef %5, float noundef %6) #23
  br label %58

58:                                               ; preds = %52, %44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @planeTrackToTransData(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4, float noundef %5, float noundef %6) unnamed_addr #8 !PGOFuncName !763 {
  %8 = tail call ptr @BKE_tracking_plane_marker_ensure(ptr noundef %4, i32 noundef %0) #22
  %9 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !426
  %11 = getelementptr inbounds %struct.TransDataTracking, ptr %3, i64 0, i32 1
  store i32 %10, ptr %11, align 4, !tbaa !420
  %12 = and i32 %10, -3
  store i32 %12, ptr %9, align 4, !tbaa !426
  br label %13

13:                                               ; preds = %7, %13
  %14 = phi i64 [ 0, %7 ], [ %22, %13 ]
  %15 = phi ptr [ %1, %7 ], [ %18, %13 ]
  %16 = phi ptr [ %2, %7 ], [ %19, %13 ]
  %17 = phi ptr [ %3, %7 ], [ %20, %13 ]
  %18 = getelementptr inbounds %struct.TransData, ptr %15, i64 1
  %19 = getelementptr inbounds %struct.TransData2D, ptr %16, i64 1
  %20 = getelementptr inbounds %struct.TransDataTracking, ptr %17, i64 1
  %21 = getelementptr inbounds [4 x [2 x float]], ptr %8, i64 0, i64 %14
  tail call fastcc void @planeMarkerToTransDataInit(ptr noundef %15, ptr noundef %16, ptr noundef nonnull %17, ptr noundef %4, ptr noundef %21, float noundef %5, float noundef %6) #23
  %22 = add nuw nsw i64 %14, 1
  %23 = icmp eq i64 %22, 4
  br i1 %23, label %24, label %13, !llvm.loop !764

24:                                               ; preds = %13
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_tracking_marker_ensure(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @markerToTransDataInit(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef readonly %8, float noundef %9, float noundef %10) unnamed_addr #8 !PGOFuncName !765 {
  %12 = icmp eq i32 %5, 1
  %13 = icmp ne ptr %8, null
  %14 = and i1 %12, %13
  store i32 0, ptr %2, align 8, !tbaa !405
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load float, ptr %7, align 4, !tbaa !123
  %17 = fmul float %16, %9
  store float %17, ptr %1, align 8, !tbaa !123
  %18 = getelementptr inbounds float, ptr %7, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !123
  %20 = getelementptr inbounds %struct.TransDataTracking, ptr %2, i64 0, i32 4
  store ptr %6, ptr %20, align 8, !tbaa !766
  br label %26

21:                                               ; preds = %11
  %22 = load float, ptr %6, align 4, !tbaa !123
  %23 = fmul float %22, %9
  store float %23, ptr %1, align 8, !tbaa !123
  %24 = getelementptr inbounds float, ptr %6, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !123
  br label %26

26:                                               ; preds = %21, %15
  %27 = phi float [ %17, %15 ], [ %23, %21 ]
  %28 = phi float [ %19, %15 ], [ %25, %21 ]
  %29 = fmul float %28, %10
  %30 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  store float %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.TransData2D, ptr %1, i64 0, i32 1
  store ptr %6, ptr %31, align 8
  %32 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  store float 0.000000e+00, ptr %32, align 8, !tbaa !123
  %33 = getelementptr inbounds %struct.TransDataTracking, ptr %2, i64 0, i32 3
  store ptr %7, ptr %33, align 8, !tbaa !408
  %34 = getelementptr inbounds %struct.TransDataTracking, ptr %2, i64 0, i32 2
  store i32 %5, ptr %34, align 8, !tbaa !407
  %35 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %3, i64 0, i32 8
  %36 = load i32, ptr %35, align 8, !tbaa !422
  %37 = getelementptr inbounds %struct.TransDataTracking, ptr %2, i64 0, i32 9
  store i32 %36, ptr %37, align 8, !tbaa !410
  %38 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %3, i64 0, i32 10
  %39 = load ptr, ptr %38, align 8, !tbaa !423
  %40 = getelementptr inbounds %struct.TransDataTracking, ptr %2, i64 0, i32 10
  store ptr %39, ptr %40, align 8, !tbaa !411
  %41 = getelementptr inbounds %struct.TransDataTracking, ptr %2, i64 0, i32 14
  store ptr %3, ptr %41, align 8, !tbaa !419
  %42 = icmp eq ptr %7, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %26
  br i1 %14, label %50, label %44

44:                                               ; preds = %43
  %45 = load float, ptr %7, align 4, !tbaa !123
  %46 = tail call float @llvm.fmuladd.f32(float %45, float %9, float %27)
  store float %46, ptr %1, align 8, !tbaa !123
  %47 = getelementptr inbounds float, ptr %7, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !123
  %49 = tail call float @llvm.fmuladd.f32(float %48, float %10, float %29)
  store float %49, ptr %30, align 4, !tbaa !123
  br label %50

50:                                               ; preds = %44, %43
  %51 = getelementptr inbounds %struct.TransDataTracking, ptr %2, i64 0, i32 6
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %51, ptr noundef nonnull %7) #23
  br label %52

52:                                               ; preds = %50, %26
  br i1 %13, label %53, label %55

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.TransDataTracking, ptr %2, i64 0, i32 5
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %54, ptr noundef nonnull %8) #23
  br label %55

55:                                               ; preds = %53, %52
  %56 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 16
  store i32 0, ptr %56, align 8, !tbaa !49
  %57 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 3
  store ptr %1, ptr %57, align 8, !tbaa !215
  %58 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %58, ptr noundef nonnull %1) #23
  %59 = load i32, ptr %56, align 8, !tbaa !49
  %60 = load float, ptr %4, align 4, !tbaa !123
  %61 = fmul float %60, %9
  %62 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 7
  store float %61, ptr %62, align 4, !tbaa !123
  %63 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !123
  %65 = fmul float %64, %10
  %66 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 7, i64 1
  store float %65, ptr %66, align 4, !tbaa !123
  %67 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %67, i8 0, i64 32, i1 false)
  %68 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %68, align 8, !tbaa !123
  %69 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 13
  store ptr null, ptr %69, align 8, !tbaa !330
  %70 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 5
  store ptr null, ptr %70, align 8, !tbaa !474
  %71 = or i32 %59, 257
  store i32 %71, ptr %56, align 8, !tbaa !49
  store float 0.000000e+00, ptr %0, align 8, !tbaa !55
  %72 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 8
  tail call void @unit_m3(ptr noundef nonnull %72) #22
  %73 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 9
  tail call void @unit_m3(ptr noundef nonnull %73) #22
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_tracking_plane_marker_ensure(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @planeMarkerToTransDataInit(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3, ptr noundef %4, float noundef %5, float noundef %6) unnamed_addr #8 !PGOFuncName !767 {
  store i32 2, ptr %2, align 8, !tbaa !405
  %8 = getelementptr inbounds %struct.TransDataTracking, ptr %2, i64 0, i32 15
  store ptr %3, ptr %8, align 8, !tbaa !425
  %9 = load float, ptr %4, align 4, !tbaa !123
  %10 = fmul float %9, %5
  store float %10, ptr %1, align 8, !tbaa !123
  %11 = getelementptr inbounds float, ptr %4, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !123
  %13 = fmul float %12, %6
  %14 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  store float %13, ptr %14, align 4, !tbaa !123
  %15 = getelementptr inbounds %struct.TransData2D, ptr %1, i64 0, i32 1
  store ptr %4, ptr %15, align 8, !tbaa !211
  %16 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  store float 0.000000e+00, ptr %16, align 8, !tbaa !123
  %17 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 16
  store i32 0, ptr %17, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 3
  store ptr %1, ptr %18, align 8, !tbaa !215
  %19 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %19, ptr noundef nonnull %1) #23
  %20 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 7
  %21 = load ptr, ptr %18, align 8, !tbaa !215
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef %21) #23
  %22 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %22, i8 0, i64 32, i1 false)
  %23 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 10, i64 2, i64 2
  store float 1.000000e+00, ptr %23, align 8, !tbaa !123
  %24 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 13
  store ptr null, ptr %24, align 8, !tbaa !330
  %25 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 5
  store ptr null, ptr %25, align 8, !tbaa !474
  %26 = load i32, ptr %17, align 8, !tbaa !49
  %27 = or i32 %26, 1
  store i32 %27, ptr %17, align 8, !tbaa !49
  store float 0.000000e+00, ptr %0, align 8, !tbaa !55
  %28 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 8
  tail call void @unit_m3(ptr noundef nonnull %28) #22
  %29 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 9
  tail call void @unit_m3(ptr noundef nonnull %29) #22
  ret void
}

; Function Attrs: optsize
declare void @EDBM_verts_mirror_cache_begin(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @editmesh_set_connectivity_distance(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #8 !PGOFuncName !768 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !64
  %10 = load i32, ptr %0, align 8, !tbaa !586
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 2
  %13 = tail call ptr %9(i64 noundef %12, ptr noundef nonnull @__func__.editmesh_set_connectivity_distance) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  store ptr null, ptr %4, align 8, !tbaa !64
  %14 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 64, i32 noundef 0) #22
  store ptr null, ptr %5, align 8, !tbaa !64
  %15 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 64, i32 noundef 0) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #24
  %16 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef null) #23
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %3, %28
  %19 = phi i64 [ %32, %28 ], [ 0, %3 ]
  %20 = phi ptr [ %31, %28 ], [ %16, %3 ]
  %21 = trunc i64 %19 to i32
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %20, i32 noundef %21) #23
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %20) #23
  %22 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %20, i8 noundef zeroext 1) #23, !range !466
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %20, i8 noundef zeroext 2) #23, !range !466
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %4, ptr noundef nonnull %20, ptr noundef %14) #22
  br label %28

28:                                               ; preds = %18, %24, %27
  %29 = phi float [ 0.000000e+00, %27 ], [ 0x47EFFFFFE0000000, %24 ], [ 0x47EFFFFFE0000000, %18 ]
  %30 = getelementptr inbounds float, ptr %2, i64 %19
  store float %29, ptr %30, align 4, !tbaa !123
  %31 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #23
  %32 = add nuw i64 %19, 1
  %33 = icmp eq ptr %31, null
  br i1 %33, label %34, label %18, !llvm.loop !769

34:                                               ; preds = %28, %3
  %35 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %36 = load i8, ptr %35, align 4, !tbaa !770
  %37 = and i8 %36, -2
  store i8 %37, ptr %35, align 4, !tbaa !770
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #24
  br label %38

38:                                               ; preds = %122, %34
  %39 = phi ptr [ %15, %34 ], [ %40, %122 ]
  %40 = phi ptr [ %14, %34 ], [ %39, %122 ]
  %41 = load i32, ptr %0, align 8, !tbaa !586
  %42 = sext i32 %41 to i64
  %43 = shl nsw i64 %42, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %13, ptr align 4 %2, i64 %43, i1 false)
  %44 = load ptr, ptr %4, align 8, !tbaa !64
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %38, %111
  %47 = call ptr @BLI_linklist_pop_pool(ptr noundef nonnull %4, ptr noundef %40) #22
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46, %111, %38
  %50 = load ptr, ptr %5, align 8, !tbaa !64
  %51 = icmp eq ptr %50, null
  br i1 %51, label %122, label %114

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.BMVert, ptr %47, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !771
  %55 = icmp eq ptr %54, null
  br i1 %55, label %111, label %56

56:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #24
  %57 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %47) #23
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #24
  br label %111

60:                                               ; preds = %56, %76
  %61 = phi ptr [ %77, %76 ], [ %57, %56 ]
  %62 = phi i8 [ %65, %76 ], [ 0, %56 ]
  %63 = call fastcc zeroext i8 @BM_edge_is_wire(ptr noundef nonnull %61) #23, !range !542
  %64 = xor i8 %63, 1
  %65 = or i8 %64, %62
  %66 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %61, i8 noundef zeroext 2) #23, !range !466
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %60
  %69 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %61, ptr noundef nonnull %47) #23
  %70 = call fastcc zeroext i8 @bmesh_test_dist_add(ptr noundef nonnull %47, ptr noundef %69, ptr noundef %2, ptr noundef %13, ptr noundef %1) #23, !range !542
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %69, i8 noundef zeroext 16) #23, !range !466
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  call fastcc void @_bm_elem_flag_enable(ptr noundef %69) #23
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %5, ptr noundef %69, ptr noundef %39) #22
  br label %76

76:                                               ; preds = %68, %75, %72, %60
  %77 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #23
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %60, !llvm.loop !772

79:                                               ; preds = %76
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #24
  %80 = icmp eq i8 %65, 0
  br i1 %80, label %111, label %81

81:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #24
  %82 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext 6, ptr noundef nonnull %47) #23
  %83 = icmp eq ptr %82, null
  br i1 %83, label %110, label %84

84:                                               ; preds = %81, %107
  %85 = phi ptr [ %108, %107 ], [ %82, %81 ]
  %86 = getelementptr inbounds %struct.BMLoop, ptr %85, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !773
  %88 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %87, i8 noundef zeroext 2) #23, !range !466
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.BMFace, ptr %87, i64 0, i32 3
  %92 = load i32, ptr %91, align 8, !tbaa !774
  %93 = icmp eq i32 %92, 4
  br i1 %93, label %94, label %107

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.BMLoop, ptr %85, i64 0, i32 6
  %96 = load ptr, ptr %95, align 8, !tbaa !775
  %97 = getelementptr inbounds %struct.BMLoop, ptr %96, i64 0, i32 6
  %98 = load ptr, ptr %97, align 8, !tbaa !775
  %99 = getelementptr inbounds %struct.BMLoop, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !776
  %101 = call fastcc zeroext i8 @bmesh_test_dist_add(ptr noundef nonnull %47, ptr noundef %100, ptr noundef %2, ptr noundef %13, ptr noundef %1) #23, !range !542
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %94
  %104 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %100, i8 noundef zeroext 16) #23, !range !466
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  call fastcc void @_bm_elem_flag_enable(ptr noundef %100) #23
  call void @BLI_linklist_prepend_pool(ptr noundef nonnull %5, ptr noundef %100, ptr noundef %39) #22
  br label %107

107:                                              ; preds = %94, %106, %103, %84, %90
  %108 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #23
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %84, !llvm.loop !777

110:                                              ; preds = %107, %81
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #24
  br label %111

111:                                              ; preds = %59, %52, %110, %79
  %112 = load ptr, ptr %4, align 8, !tbaa !64
  %113 = icmp eq ptr %112, null
  br i1 %113, label %49, label %46, !llvm.loop !778

114:                                              ; preds = %49, %114
  %115 = phi ptr [ %118, %114 ], [ %50, %49 ]
  %116 = getelementptr inbounds %struct.LinkNode, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !779
  call fastcc void @_bm_elem_flag_disable(ptr noundef %117) #23
  %118 = load ptr, ptr %115, align 8, !tbaa !64
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %114, !llvm.loop !781

120:                                              ; preds = %114
  %121 = load ptr, ptr %5, align 8, !tbaa !64
  br label %122

122:                                              ; preds = %120, %49
  %123 = phi ptr [ %121, %120 ], [ null, %49 ]
  %124 = load ptr, ptr %4, align 8, !tbaa !64
  store ptr %123, ptr %4, align 8, !tbaa !64
  store ptr %124, ptr %5, align 8, !tbaa !64
  %125 = call i32 @BLI_mempool_count(ptr noundef %39) #22
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %38, !llvm.loop !782

127:                                              ; preds = %122
  call void @BLI_mempool_destroy(ptr noundef %39) #22
  store ptr null, ptr %4, align 8, !tbaa !64
  call void @BLI_mempool_destroy(ptr noundef %40) #22
  store ptr null, ptr %5, align 8, !tbaa !64
  %128 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  call void %128(ptr noundef %13) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @editmesh_islands_info_calc(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !PGOFuncName !783 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.BMEditSelection, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca %struct.BMIter, align 8
  %13 = load ptr, ptr %0, align 8, !tbaa !336
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %14 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %15 = load i16, ptr %14, align 4, !tbaa !580
  %16 = and i16 %15, 3
  %17 = icmp eq i16 %16, 0
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !64
  br i1 %17, label %26, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 5
  %21 = load i32, ptr %20, align 4, !tbaa !583
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 2
  %24 = tail call ptr %18(i64 noundef %23, ptr noundef nonnull @__func__.editmesh_islands_info_calc) #22
  %25 = call i32 @BM_mesh_calc_edge_groups(ptr noundef %13, ptr noundef %24, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, i8 noundef zeroext 1) #22
  br label %33

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !584
  %29 = sext i32 %28 to i64
  %30 = shl nsw i64 %29, 2
  %31 = tail call ptr %18(i64 noundef %30, ptr noundef nonnull @__func__.editmesh_islands_info_calc) #22
  %32 = call i32 @BM_mesh_calc_face_groups(ptr noundef %13, ptr noundef %31, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, i8 noundef zeroext 1, i8 noundef zeroext 1) #22
  br label %33

33:                                               ; preds = %26, %19
  %34 = phi i32 [ %25, %19 ], [ %32, %26 ]
  %35 = phi ptr [ %24, %19 ], [ %31, %26 ]
  %36 = phi i8 [ 7, %19 ], [ 9, %26 ]
  %37 = phi i8 [ 2, %19 ], [ 8, %26 ]
  %38 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !64
  %39 = sext i32 %34 to i64
  %40 = mul nsw i64 %39, 48
  %41 = call ptr %38(i64 noundef %40, ptr noundef nonnull @__func__.editmesh_islands_info_calc) #22
  %42 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !64
  %43 = load i32, ptr %13, align 8, !tbaa !586
  %44 = sext i32 %43 to i64
  %45 = shl nsw i64 %44, 2
  %46 = call ptr %42(i64 noundef %45, ptr noundef nonnull @__func__.editmesh_islands_info_calc) #22
  %47 = load i32, ptr %13, align 8, !tbaa !586
  call void @fill_vn_i(ptr noundef %46, i32 noundef %47, i32 noundef -1) #22
  call void @BM_mesh_elem_table_ensure(ptr noundef nonnull %13, i8 noundef zeroext %37) #22
  %48 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 15
  %49 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 14
  %50 = select i1 %17, ptr %48, ptr %49
  %51 = load ptr, ptr %50, align 8, !tbaa !64
  call void @BM_mesh_elem_index_ensure(ptr noundef nonnull %13, i8 noundef zeroext 1) #22
  %52 = icmp sgt i32 %34, 0
  br i1 %52, label %53, label %106

53:                                               ; preds = %33
  %54 = getelementptr inbounds %struct.BMEditSelection, ptr %5, i64 0, i32 3
  %55 = getelementptr inbounds %struct.BMEditSelection, ptr %5, i64 0, i32 2
  %56 = zext nneg i32 %34 to i64
  br label %57

57:                                               ; preds = %53, %103
  %58 = phi i64 [ 0, %53 ], [ %104, %103 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %59 = load ptr, ptr %4, align 8, !tbaa !64
  %60 = getelementptr inbounds [2 x i32], ptr %59, i64 %58
  %61 = load i32, ptr %60, align 4, !tbaa !58
  %62 = getelementptr inbounds [2 x i32], ptr %59, i64 %58, i64 1
  %63 = load i32, ptr %62, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #24
  call fastcc void @zero_v3(ptr noundef nonnull %6) #23
  call fastcc void @zero_v3(ptr noundef nonnull %7) #23
  call fastcc void @zero_v3(ptr noundef nonnull %8) #23
  store i8 %37, ptr %54, align 8, !tbaa !784
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %57
  %66 = sext i32 %61 to i64
  %67 = zext nneg i32 %63 to i64
  %68 = trunc i64 %58 to i32
  br label %69

69:                                               ; preds = %65, %87
  %70 = phi i64 [ 0, %65 ], [ %88, %87 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #24
  %71 = add nsw i64 %70, %66
  %72 = getelementptr inbounds i32, ptr %35, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !58
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %51, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !64
  store ptr %76, ptr %55, align 8, !tbaa !786
  call void @BM_editselection_center(ptr noundef nonnull %5, ptr noundef nonnull %9) #22
  call void @BM_editselection_normal(ptr noundef nonnull %5, ptr noundef nonnull %10) #22
  call void @BM_editselection_plane(ptr noundef nonnull %5, ptr noundef nonnull %11) #22
  call fastcc void @add_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %9) #23
  call fastcc void @add_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %10) #23
  call fastcc void @add_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %11) #23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #24
  %77 = load ptr, ptr %55, align 8, !tbaa !786
  %78 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %12, ptr noundef null, i8 noundef zeroext %36, ptr noundef %77) #23
  %79 = icmp eq ptr %78, null
  br i1 %79, label %87, label %80

80:                                               ; preds = %69, %80
  %81 = phi ptr [ %85, %80 ], [ %78, %69 ]
  %82 = call fastcc i32 @_bm_elem_index_get(ptr noundef nonnull %81) #23
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, ptr %46, i64 %83
  store i32 %68, ptr %84, align 4, !tbaa !58
  %85 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %12) #23
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %80, !llvm.loop !787

87:                                               ; preds = %80, %69
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #24
  %88 = add nuw nsw i64 %70, 1
  %89 = icmp eq i64 %88, %67
  br i1 %89, label %90, label %69, !llvm.loop !788

90:                                               ; preds = %87, %57
  %91 = getelementptr inbounds %struct.TransIslandData, ptr %41, i64 %58
  %92 = sitofp i32 %63 to float
  %93 = fdiv float 1.000000e+00, %92
  call fastcc void @mul_v3_v3fl(ptr noundef %91, ptr noundef nonnull %6, float noundef %93) #23
  %94 = getelementptr inbounds %struct.TransIslandData, ptr %41, i64 %58, i32 1
  %95 = call zeroext i8 @createSpaceNormalTangent(ptr noundef nonnull %94, ptr noundef nonnull %7, ptr noundef nonnull %8) #22
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #23
  %99 = fcmp une float %98, 0.000000e+00
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  call void @axis_dominant_v3_to_m3(ptr noundef nonnull %94, ptr noundef nonnull %7) #22
  %101 = call zeroext i8 @invert_m3(ptr noundef nonnull %94) #22
  br label %103

102:                                              ; preds = %97
  call void @unit_m3(ptr noundef nonnull %94) #22
  br label %103

103:                                              ; preds = %100, %102, %90
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  %104 = add nuw nsw i64 %58, 1
  %105 = icmp eq i64 %104, %56
  br i1 %105, label %106, label %57, !llvm.loop !789

106:                                              ; preds = %103, %33
  %107 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  call void %107(ptr noundef %35) #22
  %108 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  %109 = load ptr, ptr %4, align 8, !tbaa !64
  call void %108(ptr noundef %109) #22
  store i32 %34, ptr %1, align 4, !tbaa !58
  store ptr %46, ptr %2, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  ret ptr %41
}

; Function Attrs: optsize
declare i32 @modifiers_getCageIndex(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: optsize
declare zeroext i8 @modifiers_isCorrectableDeformed(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @editbmesh_get_first_deform_matrices(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @BKE_crazyspace_get_mapped_editverts(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BKE_crazyspace_set_quats_editmesh(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VertsToTransData(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #8 !PGOFuncName !790 {
  %8 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 16
  store i32 0, ptr %8, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 3
  store ptr %9, ptr %10, align 8, !tbaa !215
  %11 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %9) #23
  %12 = icmp eq ptr %6, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %6) #23
  %15 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 10
  %16 = getelementptr inbounds %struct.TransIslandData, ptr %6, i64 0, i32 1
  tail call void @copy_m3_m3(ptr noundef nonnull %15, ptr noundef nonnull %16) #22
  br label %30

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 32
  %19 = load i16, ptr %18, align 2, !tbaa !316
  %20 = icmp eq i16 %19, 2
  %21 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7
  %22 = load ptr, ptr %10, align 8, !tbaa !215
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %21, ptr noundef %22) #23
  %23 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 10
  br i1 %20, label %24, label %27

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 3
  %26 = tail call zeroext i8 @createSpaceNormal(ptr noundef nonnull %23, ptr noundef nonnull %25) #22
  br label %30

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 10, i64 2
  %29 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %28, ptr noundef nonnull %29) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  br label %30

30:                                               ; preds = %24, %27, %13
  %31 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 13
  store ptr null, ptr %31, align 8, !tbaa !330
  %32 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 5
  store ptr null, ptr %32, align 8, !tbaa !474
  %33 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 15
  store ptr null, ptr %33, align 8, !tbaa !175
  %34 = load i32, ptr %0, align 8, !tbaa !192
  switch i32 %34, label %48 [
    i32 26, label %35
    i32 4, label %38
    i32 8, label %45
  ]

35:                                               ; preds = %30
  store ptr %5, ptr %32, align 8, !tbaa !474
  %36 = load float, ptr %5, align 4, !tbaa !123
  %37 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 6
  store float %36, ptr %37, align 8, !tbaa !475
  br label %48

38:                                               ; preds = %30
  %39 = load ptr, ptr %3, align 8, !tbaa !336
  %40 = getelementptr inbounds %struct.BMesh, ptr %39, i64 0, i32 24
  %41 = load ptr, ptr %4, align 8, !tbaa !589
  %42 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %40, ptr noundef %41, i32 noundef 36) #22
  store ptr %2, ptr %31, align 8, !tbaa !330
  %43 = getelementptr inbounds %struct.TransDataExtension, ptr %2, i64 0, i32 12
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %43, ptr noundef %42) #23
  %44 = getelementptr inbounds %struct.TransDataExtension, ptr %2, i64 0, i32 11
  store ptr %42, ptr %44, align 8, !tbaa !464
  store ptr %42, ptr %32, align 8, !tbaa !474
  br label %48

45:                                               ; preds = %30
  store ptr %2, ptr %31, align 8, !tbaa !330
  %46 = tail call float @BM_vert_calc_shell_factor_ex(ptr noundef %4, i8 noundef zeroext 1) #22
  %47 = getelementptr inbounds %struct.TransDataExtension, ptr %2, i64 0, i32 12
  store float %46, ptr %47, align 8, !tbaa !123
  br label %48

48:                                               ; preds = %30, %38, %45, %35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !791 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !792
  ret i32 %3
}

; Function Attrs: optsize
declare void @_va_mul_m3_series_4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @EDBM_verts_mirror_get(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @EDBM_verts_mirror_cache_end(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #17 !PGOFuncName !793 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !792
  ret void
}

; Function Attrs: optsize
declare void @BLI_linklist_prepend_pool(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @BLI_linklist_pop_pool(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_edge_is_wire(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !794 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !795
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 !PGOFuncName !796 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !468
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !472
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bmesh_test_dist_add(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) unnamed_addr #8 !PGOFuncName !797 {
  %6 = alloca [3 x float], align 4
  %7 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %1, i8 noundef zeroext 1) #23, !range !466
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %1, i8 noundef zeroext 2) #23, !range !466
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %0) #23
  %14 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %1) #23
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #24
  %15 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %15, ptr noundef nonnull %16) #23
  call void @mul_m3_v3(ptr noundef %4, ptr noundef nonnull %6) #22
  %17 = sext i32 %13 to i64
  %18 = getelementptr inbounds float, ptr %3, i64 %17
  %19 = load float, ptr %18, align 4, !tbaa !123
  %20 = call fastcc float @len_v3(ptr noundef nonnull %6) #23
  %21 = fadd float %19, %20
  %22 = sext i32 %14 to i64
  %23 = getelementptr inbounds float, ptr %2, i64 %22
  %24 = load float, ptr %23, align 4, !tbaa !123
  %25 = fcmp olt float %21, %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #24
  br label %28

27:                                               ; preds = %12
  store float %21, ptr %23, align 4, !tbaa !123
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #24
  br label %28

28:                                               ; preds = %5, %9, %26, %27
  %29 = phi i8 [ 1, %27 ], [ 0, %26 ], [ 0, %9 ], [ 0, %5 ]
  ret i8 %29
}

; Function Attrs: optsize
declare i32 @BLI_mempool_count(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #15 !PGOFuncName !798 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #23
  %3 = tail call float @sqrtf(float noundef %2) #22
  ret float %3
}

; Function Attrs: optsize
declare i32 @BM_mesh_calc_edge_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @BM_mesh_calc_face_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: optsize
declare void @fill_vn_i(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BM_editselection_center(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BM_editselection_normal(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BM_editselection_plane(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !799 {
  %3 = load float, ptr %1, align 4, !tbaa !123
  %4 = load float, ptr %0, align 4, !tbaa !123
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !123
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !123
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !123
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !123
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !123
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !123
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !123
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @createSpaceNormalTangent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #15 !PGOFuncName !800 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #23
  ret float %2
}

; Function Attrs: optsize
declare void @axis_dominant_v3_to_m3(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare zeroext i8 @invert_m3(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare zeroext i8 @createSpaceNormal(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare float @BM_vert_calc_shell_factor_ex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @BKE_curve_editNurbs_get(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @transform_around_single_fallback(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !801 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 32
  %7 = load i16, ptr %6, align 2, !tbaa !316
  switch i16 %7, label %11 [
    i16 0, label %8
    i16 3, label %8
    i16 4, label %8
  ]

8:                                                ; preds = %5, %5, %5
  %9 = load i32, ptr %0, align 8, !tbaa !192
  switch i32 %9, label %11 [
    i32 3, label %10
    i32 2, label %10
    i32 10, label %10
  ]

10:                                               ; preds = %8, %8, %8
  store i16 2, ptr %6, align 2, !tbaa !316
  br label %11

11:                                               ; preds = %8, %5, %10, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_nurb_bezt_calc_normal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BKE_nurb_bezt_calc_plane(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @calc_distanceCurveVerts(ptr noundef %0, ptr noundef %1) unnamed_addr #18 !PGOFuncName !802 {
  %3 = icmp ugt ptr %0, %1
  br i1 %3, label %65, label %5

4:                                                ; preds = %25
  br i1 %3, label %65, label %29

5:                                                ; preds = %2, %25
  %6 = phi ptr [ %27, %25 ], [ %0, %2 ]
  %7 = phi ptr [ %26, %25 ], [ null, %2 ]
  %8 = getelementptr inbounds %struct.TransData, ptr %6, i64 0, i32 16
  %9 = load i32, ptr %8, align 8, !tbaa !49
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  store float 0.000000e+00, ptr %6, align 8, !tbaa !55
  br label %25

13:                                               ; preds = %5
  %14 = icmp eq ptr %7, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.TransData, ptr %7, i64 0, i32 7
  %17 = getelementptr inbounds %struct.TransData, ptr %6, i64 0, i32 7
  %18 = tail call fastcc float @len_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %17) #23
  %19 = getelementptr inbounds %struct.TransData, ptr %6, i64 -1
  %20 = load float, ptr %19, align 8, !tbaa !55
  %21 = fcmp olt float %18, %20
  %22 = select i1 %21, float %20, float %18
  store float %22, ptr %6, align 8, !tbaa !55
  br label %25

23:                                               ; preds = %13
  store float 0x47EFFFFFE0000000, ptr %6, align 8, !tbaa !55
  %24 = or i32 %9, 16
  store i32 %24, ptr %8, align 8, !tbaa !49
  br label %25

25:                                               ; preds = %12, %23, %15
  %26 = phi ptr [ %6, %12 ], [ %7, %15 ], [ null, %23 ]
  %27 = getelementptr inbounds %struct.TransData, ptr %6, i64 1
  %28 = icmp ugt ptr %27, %1
  br i1 %28, label %4, label %5, !llvm.loop !803

29:                                               ; preds = %4, %61
  %30 = phi ptr [ %63, %61 ], [ %1, %4 ]
  %31 = phi ptr [ %62, %61 ], [ null, %4 ]
  %32 = getelementptr inbounds %struct.TransData, ptr %30, i64 0, i32 16
  %33 = load i32, ptr %32, align 8, !tbaa !49
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %29
  %37 = icmp eq ptr %31, null
  br i1 %37, label %61, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.TransData, ptr %31, i64 0, i32 7
  %40 = getelementptr inbounds %struct.TransData, ptr %30, i64 0, i32 7
  %41 = tail call fastcc float @len_v3v3(ptr noundef nonnull %39, ptr noundef nonnull %40) #23
  %42 = load i32, ptr %32, align 8, !tbaa !49
  %43 = and i32 %42, 16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load float, ptr %30, align 8, !tbaa !55
  %47 = fcmp olt float %41, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.TransData, ptr %30, i64 1
  %50 = load float, ptr %49, align 8, !tbaa !55
  %51 = fcmp olt float %50, %46
  br i1 %51, label %52, label %61

52:                                               ; preds = %48, %45, %38
  %53 = and i32 %42, -17
  store i32 %53, ptr %32, align 8, !tbaa !49
  %54 = getelementptr inbounds %struct.TransData, ptr %30, i64 1
  %55 = load float, ptr %54, align 8, !tbaa !55
  %56 = fcmp olt float %41, %55
  %57 = select i1 %56, float %55, float %41
  br label %58

58:                                               ; preds = %52, %29
  %59 = phi float [ 0.000000e+00, %29 ], [ %57, %52 ]
  %60 = phi ptr [ %30, %29 ], [ %31, %52 ]
  store float %59, ptr %30, align 8, !tbaa !55
  br label %61

61:                                               ; preds = %58, %48, %36
  %62 = phi ptr [ null, %36 ], [ %31, %48 ], [ %60, %58 ]
  %63 = getelementptr inbounds %struct.TransData, ptr %30, i64 -1
  %64 = icmp ult ptr %63, %0
  br i1 %64, label %65, label %29, !llvm.loop !804

65:                                               ; preds = %61, %2, %4
  ret void
}

; Function Attrs: optsize
declare void @BKE_nurb_handles_test(ptr noundef, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !PGOFuncName !805 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #23
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #24
  ret float %4
}

; Function Attrs: optsize
declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @ED_armature_bone_get_mirrored(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @ED_armature_ebone_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @BKE_armature_from_object(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef signext i16 @pose_grab_with_ik(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !806 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %77, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %7 = load i32, ptr %6, align 8, !tbaa !321
  %8 = and i32 %7, 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %77, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %3, align 8, !tbaa !64
  %12 = icmp eq ptr %11, null
  br i1 %12, label %77, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  %16 = getelementptr inbounds %struct.bArmature, ptr %15, i64 0, i32 15
  br label %17

17:                                               ; preds = %13, %69
  %18 = phi ptr [ %11, %13 ], [ %71, %69 ]
  %19 = phi i16 [ 0, %13 ], [ %70, %69 ]
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !68
  %22 = getelementptr inbounds %struct.Bone, ptr %21, i64 0, i32 25
  %23 = load i32, ptr %22, align 8, !tbaa !70
  %24 = load i32, ptr %16, align 8, !tbaa !66
  %25 = and i32 %24, %23
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %69, label %27

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.Bone, ptr %21, i64 0, i32 10
  %29 = load i32, ptr %28, align 8, !tbaa !72
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %69, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.Bone, ptr %21, i64 0, i32 4
  br label %34

34:                                               ; preds = %38, %32
  %35 = phi ptr [ %33, %32 ], [ %36, %38 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !64
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.Bone, ptr %36, i64 0, i32 10
  %40 = load i32, ptr %39, align 8, !tbaa !72
  %41 = and i32 %40, 16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %34, label %46, !llvm.loop !807

43:                                               ; preds = %34
  %44 = and i32 %29, 16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %69, label %46

46:                                               ; preds = %38, %43
  %47 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 13
  %48 = load ptr, ptr %47, align 8, !tbaa !75
  %49 = icmp eq ptr %48, null
  br i1 %49, label %65, label %50

50:                                               ; preds = %46, %58
  %51 = phi ptr [ %60, %58 ], [ %48, %46 ]
  %52 = getelementptr inbounds %struct.bPoseChannel, ptr %51, i64 0, i32 12
  %53 = load ptr, ptr %52, align 8, !tbaa !68
  %54 = getelementptr inbounds %struct.Bone, ptr %53, i64 0, i32 10
  %55 = load i32, ptr %54, align 8, !tbaa !72
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.bPoseChannel, ptr %51, i64 0, i32 13
  %60 = load ptr, ptr %59, align 8, !tbaa !75
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %50, !llvm.loop !808

62:                                               ; preds = %58
  %63 = tail call fastcc signext i16 @pose_grab_with_ik_add(ptr noundef nonnull %18) #23, !range !317
  %64 = add i16 %63, %19
  br label %69

65:                                               ; preds = %46
  %66 = load ptr, ptr %2, align 8, !tbaa !59
  %67 = tail call fastcc signext i16 @pose_grab_with_ik_children(ptr noundef %66, ptr noundef %21) #23
  %68 = add i16 %67, %19
  br label %69

69:                                               ; preds = %50, %17, %65, %62, %27, %43
  %70 = phi i16 [ %19, %43 ], [ %64, %62 ], [ %68, %65 ], [ %19, %27 ], [ %19, %17 ], [ %19, %50 ]
  %71 = load ptr, ptr %18, align 8, !tbaa !64
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %17, !llvm.loop !809

73:                                               ; preds = %69
  %74 = icmp eq i16 %70, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %73
  %76 = load ptr, ptr %2, align 8, !tbaa !59
  tail call void @BIK_clear_data(ptr noundef %76) #22
  br label %77

77:                                               ; preds = %73, %75, %10, %1, %5
  %78 = phi i16 [ 0, %5 ], [ 0, %1 ], [ 1, %75 ], [ 0, %73 ], [ 0, %10 ]
  ret i16 %78
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_pose_transdata(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #8 !PGOFuncName !810 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [3 x [3 x float]], align 16
  %13 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #24
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 29
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 29, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %16) #23
  %17 = getelementptr inbounds %struct.TransData, ptr %3, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %17, ptr noundef nonnull %9) #23
  %18 = getelementptr inbounds %struct.TransData, ptr %3, i64 0, i32 11
  store ptr %2, ptr %18, align 8, !tbaa !322
  %19 = getelementptr inbounds %struct.TransData, ptr %3, i64 0, i32 16
  %20 = getelementptr inbounds %struct.Bone, ptr %14, i64 0, i32 10
  %21 = load i32, ptr %20, align 8, !tbaa !72
  %22 = and i32 %21, 16384
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 1, i32 513
  store i32 %24, ptr %19, align 8
  %25 = load i32, ptr %20, align 8, !tbaa !72
  %26 = and i32 %25, 1048576
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 %24, i32 8705
  store i32 %28, ptr %19, align 8
  %29 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 7
  %30 = load i16, ptr %29, align 4, !tbaa !76
  %31 = getelementptr inbounds %struct.TransData, ptr %3, i64 0, i32 17
  store i16 %30, ptr %31, align 4, !tbaa !644
  %32 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 20
  %33 = getelementptr inbounds %struct.TransData, ptr %3, i64 0, i32 3
  store ptr %32, ptr %33, align 8, !tbaa !215
  %34 = getelementptr inbounds %struct.TransData, ptr %3, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %34, ptr noundef nonnull %32) #23
  %35 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 21
  %36 = getelementptr inbounds %struct.TransData, ptr %3, i64 0, i32 13
  %37 = load ptr, ptr %36, align 8, !tbaa !330
  %38 = getelementptr inbounds %struct.TransDataExtension, ptr %37, i64 0, i32 11
  store ptr %35, ptr %38, align 8, !tbaa !464
  %39 = getelementptr inbounds %struct.TransDataExtension, ptr %37, i64 0, i32 12
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %39, ptr noundef nonnull %35) #23
  %40 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 26
  %41 = load i16, ptr %40, align 4, !tbaa !392
  %42 = icmp sgt i16 %41, 0
  %43 = load ptr, ptr %36, align 8, !tbaa !330
  %44 = getelementptr inbounds %struct.TransDataExtension, ptr %43, i64 0, i32 3
  br i1 %42, label %45, label %51

45:                                               ; preds = %4
  %46 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 22
  store ptr %46, ptr %44, align 8, !tbaa !463
  %47 = getelementptr inbounds %struct.TransDataExtension, ptr %43, i64 0, i32 9
  store ptr null, ptr %47, align 8, !tbaa !811
  %48 = getelementptr inbounds %struct.TransDataExtension, ptr %43, i64 0, i32 7
  store ptr null, ptr %48, align 8, !tbaa !812
  %49 = getelementptr inbounds %struct.TransDataExtension, ptr %43, i64 0, i32 5
  store ptr null, ptr %49, align 8, !tbaa !636
  %50 = getelementptr inbounds %struct.TransDataExtension, ptr %43, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %50, ptr noundef nonnull %46) #23
  br label %68

51:                                               ; preds = %4
  %52 = icmp eq i16 %41, -1
  store ptr null, ptr %44, align 8, !tbaa !463
  br i1 %52, label %53, label %62

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 24
  %55 = getelementptr inbounds %struct.TransDataExtension, ptr %43, i64 0, i32 9
  store ptr %54, ptr %55, align 8, !tbaa !811
  %56 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 25
  %57 = getelementptr inbounds %struct.TransDataExtension, ptr %43, i64 0, i32 7
  store ptr %56, ptr %57, align 8, !tbaa !812
  %58 = getelementptr inbounds %struct.TransDataExtension, ptr %43, i64 0, i32 5
  store ptr null, ptr %58, align 8, !tbaa !636
  %59 = load float, ptr %56, align 8, !tbaa !393
  %60 = getelementptr inbounds %struct.TransDataExtension, ptr %43, i64 0, i32 8
  store float %59, ptr %60, align 8, !tbaa !813
  %61 = getelementptr inbounds %struct.TransDataExtension, ptr %43, i64 0, i32 10
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %61, ptr noundef nonnull %54) #23
  br label %68

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.TransDataExtension, ptr %43, i64 0, i32 9
  store ptr null, ptr %63, align 8, !tbaa !811
  %64 = getelementptr inbounds %struct.TransDataExtension, ptr %43, i64 0, i32 7
  store ptr null, ptr %64, align 8, !tbaa !812
  %65 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 23
  %66 = getelementptr inbounds %struct.TransDataExtension, ptr %43, i64 0, i32 5
  store ptr %65, ptr %66, align 8, !tbaa !636
  %67 = getelementptr inbounds %struct.TransDataExtension, ptr %43, i64 0, i32 6
  tail call void @copy_qt_qt(ptr noundef nonnull %67, ptr noundef nonnull %65) #22
  br label %68

68:                                               ; preds = %53, %62, %45
  %69 = load i16, ptr %40, align 4, !tbaa !392
  %70 = sext i16 %69 to i32
  %71 = load ptr, ptr %36, align 8, !tbaa !330
  %72 = getelementptr inbounds %struct.TransDataExtension, ptr %71, i64 0, i32 17
  store i32 %70, ptr %72, align 8, !tbaa !665
  %73 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %6, ptr noundef nonnull %73) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #24
  call void @BKE_pchan_to_pose_mat(ptr noundef nonnull %1, ptr noundef nonnull %10, ptr noundef nonnull %11) #22
  %74 = load i32, ptr %0, align 8, !tbaa !192
  %75 = icmp eq i32 %74, 1
  %76 = select i1 %75, ptr %11, ptr %10
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %76) #22
  call void @copy_m3_m4(ptr noundef nonnull %12, ptr noundef nonnull %10) #22
  %77 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 3
  %78 = call fastcc zeroext i8 @constraints_list_needinv(ptr noundef nonnull %0, ptr noundef nonnull %77) #23
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %68
  %81 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 30
  call void @copy_m3_m4(ptr noundef nonnull %8, ptr noundef nonnull %81) #22
  %82 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %7, ptr noundef nonnull %8) #22
  %83 = getelementptr inbounds %struct.TransData, ptr %3, i64 0, i32 8
  call void @_va_mul_m3_series_4(ptr noundef nonnull %83, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %5) #22
  %84 = load ptr, ptr %36, align 8, !tbaa !330
  %85 = getelementptr inbounds %struct.TransDataExtension, ptr %84, i64 0, i32 15
  call void @_va_mul_m3_series_4(ptr noundef nonnull %85, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %12) #22
  br label %90

86:                                               ; preds = %68
  %87 = getelementptr inbounds %struct.TransData, ptr %3, i64 0, i32 8
  call void @_va_mul_m3_series_3(ptr noundef nonnull %87, ptr noundef nonnull %6, ptr noundef nonnull %5) #22
  %88 = load ptr, ptr %36, align 8, !tbaa !330
  %89 = getelementptr inbounds %struct.TransDataExtension, ptr %88, i64 0, i32 15
  call void @_va_mul_m3_series_3(ptr noundef nonnull %89, ptr noundef nonnull %6, ptr noundef nonnull %12) #22
  br label %90

90:                                               ; preds = %86, %80
  %91 = load ptr, ptr %36, align 8, !tbaa !330
  %92 = getelementptr inbounds %struct.TransDataExtension, ptr %91, i64 0, i32 16
  %93 = getelementptr inbounds %struct.TransDataExtension, ptr %91, i64 0, i32 15
  %94 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %92, ptr noundef nonnull %93) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #24
  %95 = getelementptr inbounds %struct.TransData, ptr %3, i64 0, i32 9
  %96 = getelementptr inbounds %struct.TransData, ptr %3, i64 0, i32 8
  call void @pseudoinverse_m3_m3(ptr noundef nonnull %95, ptr noundef nonnull %96, float noundef 0x3E45798EE0000000) #22
  %97 = load i32, ptr %0, align 8, !tbaa !192
  switch i32 %97, label %98 [
    i32 1, label %116
    i32 3, label %116
  ]

98:                                               ; preds = %90
  %99 = load ptr, ptr %13, align 8, !tbaa !68
  %100 = getelementptr inbounds %struct.Bone, ptr %99, i64 0, i32 10
  %101 = load i32, ptr %100, align 8, !tbaa !72
  %102 = and i32 %101, 4194304
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 13
  %106 = load ptr, ptr %105, align 8, !tbaa !75
  %107 = icmp eq ptr %106, null
  %108 = load i32, ptr %19, align 8, !tbaa !49
  br i1 %107, label %114, label %109

109:                                              ; preds = %104
  %110 = or i32 %108, 1048576
  store i32 %110, ptr %19, align 8, !tbaa !49
  %111 = load ptr, ptr %36, align 8, !tbaa !330
  %112 = getelementptr inbounds %struct.TransDataExtension, ptr %111, i64 0, i32 14
  %113 = getelementptr inbounds %struct.Bone, ptr %99, i64 0, i32 9
  call void @mul_m3_m3m3(ptr noundef nonnull %112, ptr noundef nonnull %113, ptr noundef nonnull %95) #22
  br label %116

114:                                              ; preds = %104
  %115 = or i32 %108, 524288
  store i32 %115, ptr %19, align 8, !tbaa !49
  br label %116

116:                                              ; preds = %90, %90, %109, %114, %98
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %15) #22
  %117 = getelementptr inbounds %struct.TransData, ptr %3, i64 0, i32 10
  call void @mul_m3_m3m3(ptr noundef nonnull %117, ptr noundef nonnull %6, ptr noundef nonnull %5) #22
  call void @normalize_m3(ptr noundef nonnull %117) #22
  %118 = load i32, ptr %0, align 8, !tbaa !192
  %119 = icmp eq i32 %118, 14
  br i1 %119, label %120, label %138

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %122 = load ptr, ptr %121, align 8, !tbaa !92
  %123 = getelementptr inbounds %struct.Object, ptr %122, i64 0, i32 19
  %124 = load ptr, ptr %123, align 8, !tbaa !65
  %125 = getelementptr inbounds %struct.bArmature, ptr %124, i64 0, i32 9
  %126 = load i32, ptr %125, align 4, !tbaa !643
  %127 = icmp eq i32 %126, 3
  br i1 %127, label %128, label %132

128:                                              ; preds = %120
  store ptr null, ptr %33, align 8, !tbaa !215
  %129 = getelementptr inbounds %struct.Bone, ptr %14, i64 0, i32 15
  %130 = load float, ptr %129, align 8, !tbaa !814
  %131 = getelementptr inbounds %struct.TransData, ptr %3, i64 0, i32 6
  store float %130, ptr %131, align 8, !tbaa !475
  br label %134

132:                                              ; preds = %120
  %133 = getelementptr inbounds %struct.Bone, ptr %14, i64 0, i32 17
  store ptr %133, ptr %33, align 8, !tbaa !215
  call fastcc void @copy_v3_v3(ptr noundef nonnull %34, ptr noundef nonnull %133) #23
  br label %134

134:                                              ; preds = %132, %128
  %135 = phi ptr [ %129, %128 ], [ null, %132 ]
  %136 = getelementptr inbounds %struct.TransData, ptr %3, i64 0, i32 5
  store ptr %135, ptr %136, align 8
  %137 = load i32, ptr %0, align 8, !tbaa !192
  br label %138

138:                                              ; preds = %134, %116
  %139 = phi i32 [ %137, %134 ], [ %118, %116 ]
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %141, label %156

141:                                              ; preds = %138
  %142 = call fastcc ptr @has_targetless_ik(ptr noundef nonnull %1) #23
  %143 = icmp eq ptr %142, null
  br i1 %143, label %156, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.bKinematicConstraint, ptr %142, i64 0, i32 2
  %146 = load i16, ptr %145, align 2, !tbaa !96
  %147 = and i16 %146, 1
  %148 = icmp eq i16 %147, 0
  %149 = getelementptr inbounds %struct.bKinematicConstraint, ptr %142, i64 0, i32 11
  %150 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 31
  %151 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 32
  %152 = select i1 %148, ptr %150, ptr %151
  call fastcc void @copy_v3_v3(ptr noundef nonnull %149, ptr noundef nonnull %152) #23
  %153 = getelementptr inbounds %struct.bKinematicConstraint, ptr %142, i64 0, i32 11
  store ptr %153, ptr %33, align 8, !tbaa !215
  call fastcc void @copy_v3_v3(ptr noundef nonnull %34, ptr noundef nonnull %153) #23
  %154 = load i16, ptr %145, align 2, !tbaa !96
  %155 = or i16 %154, 4
  store i16 %155, ptr %145, align 2, !tbaa !96
  call void @copy_m3_m3(ptr noundef nonnull %96, ptr noundef nonnull %6) #22
  call void @pseudoinverse_m3_m3(ptr noundef nonnull %95, ptr noundef nonnull %96, float noundef 0x3E45798EE0000000) #22
  br label %156

156:                                              ; preds = %141, %144, %138
  %157 = load ptr, ptr %77, align 8, !tbaa !399
  %158 = getelementptr inbounds %struct.TransData, ptr %3, i64 0, i32 12
  store ptr %157, ptr %158, align 8, !tbaa !815
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef signext i16 @pose_grab_with_ik_add(ptr noundef %0) unnamed_addr #8 !PGOFuncName !816 {
  %2 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %77, label %5

5:                                                ; preds = %1, %73
  %6 = phi ptr [ %75, %73 ], [ %3, %1 ]
  %7 = phi ptr [ %74, %73 ], [ null, %1 ]
  %8 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !81
  %10 = icmp eq i16 %9, 3
  br i1 %10, label %11, label %73

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !84
  %14 = load ptr, ptr %13, align 8, !tbaa !85
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 3
  %18 = load i16, ptr %17, align 8, !tbaa !87
  %19 = icmp eq i16 %18, 25
  br i1 %19, label %20, label %63

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bKinematicConstraint, ptr %13, i64 0, i32 5
  %22 = load i8, ptr %21, align 8, !tbaa !88
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %63

24:                                               ; preds = %20, %11
  %25 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 9
  %26 = load float, ptr %25, align 8, !tbaa !83
  %27 = fcmp une float %26, 0.000000e+00
  br i1 %27, label %28, label %63

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bKinematicConstraint, ptr %13, i64 0, i32 2
  %30 = load i16, ptr %29, align 2, !tbaa !96
  %31 = or i16 %30, 4
  store i16 %31, ptr %29, align 2, !tbaa !96
  %32 = getelementptr inbounds %struct.bKinematicConstraint, ptr %13, i64 0, i32 3
  %33 = load i16, ptr %32, align 4, !tbaa !98
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %135

35:                                               ; preds = %28, %59
  %36 = phi ptr [ %61, %59 ], [ %0, %28 ]
  %37 = getelementptr inbounds %struct.bPoseChannel, ptr %36, i64 0, i32 7
  %38 = load i16, ptr %37, align 4, !tbaa !76
  %39 = and i16 %38, 8
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.bPoseChannel, ptr %36, i64 0, i32 6
  %43 = load i16, ptr %42, align 2, !tbaa !398
  %44 = or i16 %43, 1024
  store i16 %44, ptr %42, align 2, !tbaa !398
  br label %45

45:                                               ; preds = %41, %35
  %46 = and i16 %38, 16
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.bPoseChannel, ptr %36, i64 0, i32 6
  %50 = load i16, ptr %49, align 2, !tbaa !398
  %51 = or i16 %50, 2048
  store i16 %51, ptr %49, align 2, !tbaa !398
  br label %52

52:                                               ; preds = %48, %45
  %53 = and i16 %38, 32
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.bPoseChannel, ptr %36, i64 0, i32 6
  %57 = load i16, ptr %56, align 2, !tbaa !398
  %58 = or i16 %57, 4096
  store i16 %58, ptr %56, align 2, !tbaa !398
  br label %59

59:                                               ; preds = %52, %55
  %60 = getelementptr inbounds %struct.bPoseChannel, ptr %36, i64 0, i32 13
  %61 = load ptr, ptr %60, align 8, !tbaa !75
  %62 = icmp eq ptr %61, null
  br i1 %62, label %135, label %35

63:                                               ; preds = %24, %20, %16
  %64 = phi ptr [ %13, %24 ], [ %7, %20 ], [ %7, %16 ]
  %65 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 4
  %66 = load i16, ptr %65, align 2, !tbaa !817
  %67 = and i16 %66, 4
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 9
  %71 = load float, ptr %70, align 8, !tbaa !83
  %72 = fcmp une float %71, 0.000000e+00
  br i1 %72, label %135, label %73

73:                                               ; preds = %5, %69, %63
  %74 = phi ptr [ %64, %69 ], [ %64, %63 ], [ %7, %5 ]
  %75 = load ptr, ptr %6, align 8, !tbaa !64
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %5, !llvm.loop !818

77:                                               ; preds = %73, %1
  %78 = phi ptr [ null, %1 ], [ %74, %73 ]
  %79 = tail call ptr @BKE_constraint_add_for_pose(ptr noundef null, ptr noundef %0, ptr noundef nonnull @.str.57, i16 noundef signext 3) #22
  %80 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 9
  %81 = load i8, ptr %80, align 8, !tbaa !95
  %82 = or i8 %81, 9
  store i8 %82, ptr %80, align 8, !tbaa !95
  %83 = getelementptr inbounds %struct.bConstraint, ptr %79, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !84
  %85 = icmp eq ptr %78, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %77
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %84, ptr noundef nonnull align 8 dereferenceable(184) %78, i64 184, i1 false), !tbaa.struct !819
  %87 = getelementptr inbounds %struct.bKinematicConstraint, ptr %84, i64 0, i32 2
  %88 = load i16, ptr %87, align 2, !tbaa !96
  %89 = or i16 %88, 44
  br label %90

90:                                               ; preds = %77, %86
  %91 = phi i16 [ %89, %86 ], [ 45, %77 ]
  %92 = getelementptr inbounds %struct.bKinematicConstraint, ptr %84, i64 0, i32 2
  store i16 %91, ptr %92, align 2, !tbaa !96
  %93 = getelementptr inbounds %struct.bKinematicConstraint, ptr %84, i64 0, i32 11
  %94 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 32
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %93, ptr noundef nonnull %94) #23
  %95 = getelementptr inbounds %struct.bKinematicConstraint, ptr %84, i64 0, i32 3
  br label %96

96:                                               ; preds = %129, %90
  %97 = phi i16 [ 0, %90 ], [ %122, %129 ]
  %98 = phi ptr [ %0, %90 ], [ %131, %129 ]
  %99 = getelementptr inbounds %struct.bPoseChannel, ptr %98, i64 0, i32 7
  %100 = load i16, ptr %99, align 4, !tbaa !76
  %101 = and i16 %100, 8
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.bPoseChannel, ptr %98, i64 0, i32 6
  %105 = load i16, ptr %104, align 2, !tbaa !398
  %106 = or i16 %105, 1024
  store i16 %106, ptr %104, align 2, !tbaa !398
  br label %107

107:                                              ; preds = %103, %96
  %108 = and i16 %100, 16
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.bPoseChannel, ptr %98, i64 0, i32 6
  %112 = load i16, ptr %111, align 2, !tbaa !398
  %113 = or i16 %112, 2048
  store i16 %113, ptr %111, align 2, !tbaa !398
  br label %114

114:                                              ; preds = %110, %107
  %115 = and i16 %100, 32
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.bPoseChannel, ptr %98, i64 0, i32 6
  %119 = load i16, ptr %118, align 2, !tbaa !398
  %120 = or i16 %119, 4096
  store i16 %120, ptr %118, align 2, !tbaa !398
  br label %121

121:                                              ; preds = %117, %114
  %122 = add i16 %97, 1
  %123 = getelementptr inbounds %struct.bPoseChannel, ptr %98, i64 0, i32 12
  %124 = load ptr, ptr %123, align 8, !tbaa !68
  %125 = getelementptr inbounds %struct.Bone, ptr %124, i64 0, i32 10
  %126 = load i32, ptr %125, align 8, !tbaa !72
  %127 = and i32 %126, 16
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %121
  %130 = getelementptr inbounds %struct.bPoseChannel, ptr %98, i64 0, i32 13
  %131 = load ptr, ptr %130, align 8, !tbaa !75
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %96, !llvm.loop !820

133:                                              ; preds = %121, %129
  store i16 %122, ptr %95, align 4, !tbaa !98
  %134 = getelementptr inbounds %struct.bKinematicConstraint, ptr %84, i64 0, i32 4
  store i16 %122, ptr %134, align 2, !tbaa !97
  br label %135

135:                                              ; preds = %69, %59, %28, %133
  %136 = phi i16 [ 1, %133 ], [ 0, %28 ], [ 0, %59 ], [ 0, %69 ]
  ret i16 %136
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc signext i16 @pose_grab_with_ik_children(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !PGOFuncName !821 {
  %3 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2, %19
  %7 = phi ptr [ %22, %19 ], [ %4, %2 ]
  %8 = phi i16 [ %21, %19 ], [ 0, %2 ]
  %9 = phi i1 [ false, %19 ], [ true, %2 ]
  br label %10

10:                                               ; preds = %6, %16
  %11 = phi ptr [ %17, %16 ], [ %7, %6 ]
  %12 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !72
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load ptr, ptr %11, align 8, !tbaa !64
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %10, !llvm.loop !822

19:                                               ; preds = %10
  %20 = tail call fastcc signext i16 @pose_grab_with_ik_children(ptr noundef %0, ptr noundef nonnull %11) #23
  %21 = add i16 %20, %8
  %22 = load ptr, ptr %11, align 8, !tbaa !64
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %6, !llvm.loop !822

24:                                               ; preds = %16
  br i1 %9, label %25, label %33

25:                                               ; preds = %2, %24
  %26 = phi i16 [ %8, %24 ], [ 0, %2 ]
  %27 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 5
  %28 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %0, ptr noundef nonnull %27) #22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = tail call fastcc signext i16 @pose_grab_with_ik_add(ptr noundef nonnull %28) #23, !range !317
  %32 = add i16 %31, %26
  br label %33

33:                                               ; preds = %19, %25, %30, %24
  %34 = phi i16 [ %8, %24 ], [ %32, %30 ], [ %26, %25 ], [ %21, %19 ]
  ret i16 %34
}

; Function Attrs: optsize
declare ptr @BKE_constraint_add_for_pose(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BKE_pchan_to_pose_mat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @constraints_list_needinv(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #5 !PGOFuncName !823 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %43, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !64
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %4, %40
  %8 = phi ptr [ %41, %40 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.bConstraint, ptr %8, i64 0, i32 4
  %10 = load i16, ptr %9, align 2, !tbaa !817
  %11 = and i16 %10, 4
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.bConstraint, ptr %8, i64 0, i32 9
  %15 = load float, ptr %14, align 8, !tbaa !83
  %16 = fcmp une float %15, 0.000000e+00
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bConstraint, ptr %8, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !81
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
  %22 = load ptr, ptr %21, align 8, !tbaa !84
  %23 = getelementptr inbounds %struct.bChildOfConstraint, ptr %22, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !824
  %25 = and i32 %24, 7
  %26 = icmp eq i32 %25, 7
  br i1 %26, label %43, label %40

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.bConstraint, ptr %8, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !84
  %30 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %29, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !826
  %32 = and i32 %31, 128
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  %35 = load i32, ptr %0, align 8, !tbaa !192
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %43, label %40

37:                                               ; preds = %17
  %38 = load i32, ptr %0, align 8, !tbaa !192
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %43, label %40

40:                                               ; preds = %27, %34, %20, %17, %7, %13, %37
  %41 = load ptr, ptr %8, align 8, !tbaa !64
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %7, !llvm.loop !828

43:                                               ; preds = %20, %34, %17, %17, %17, %17, %37, %40, %4, %2
  %44 = phi i8 [ 0, %2 ], [ 0, %4 ], [ 1, %20 ], [ 1, %34 ], [ 1, %17 ], [ 1, %17 ], [ 1, %17 ], [ 1, %17 ], [ 1, %37 ], [ 0, %40 ]
  ret i8 %44
}

; Function Attrs: optsize
declare void @_va_mul_m3_series_3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @CTX_data_active_base(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @PE_settings(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_trans_object_base_flags(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !829 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %5 = load ptr, ptr %4, align 8, !tbaa !319
  %6 = load i32, ptr %0, align 8, !tbaa !192
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %147, label %8

8:                                                ; preds = %1
  tail call void @BKE_scene_base_flag_to_objects(ptr noundef %3) #22
  %9 = load ptr, ptr @G, align 8, !tbaa !306
  %10 = load ptr, ptr %2, align 8, !tbaa !124
  tail call void @DAG_scene_relations_update(ptr noundef %9, ptr noundef %10) #22
  %11 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = icmp eq ptr %12, null
  br i1 %13, label %120, label %23

14:                                               ; preds = %36
  %15 = load ptr, ptr %11, align 8, !tbaa !64
  %16 = icmp eq ptr %15, null
  br i1 %16, label %120, label %17

17:                                               ; preds = %14
  %18 = icmp eq ptr %5, null
  %19 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 22
  %20 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 12
  %21 = select i1 %18, ptr %20, ptr %19
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 32
  br label %39

23:                                               ; preds = %8, %36
  %24 = phi ptr [ %37, %36 ], [ %12, %8 ]
  %25 = getelementptr inbounds %struct.Base, ptr %24, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !144
  %27 = getelementptr inbounds %struct.Object, ptr %26, i64 0, i32 103
  %28 = load i8, ptr %27, align 1, !tbaa !320
  %29 = and i8 %28, 7
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %23
  %32 = load ptr, ptr @G, align 8, !tbaa !306
  %33 = getelementptr inbounds %struct.Main, ptr %32, i64 0, i32 46
  %34 = load ptr, ptr %33, align 8, !tbaa !830
  %35 = load ptr, ptr %2, align 8, !tbaa !124
  tail call void @BKE_object_handle_update(ptr noundef %34, ptr noundef %35, ptr noundef nonnull %26) #22
  br label %36

36:                                               ; preds = %23, %31
  %37 = load ptr, ptr %24, align 8, !tbaa !64
  %38 = icmp eq ptr %37, null
  br i1 %38, label %14, label %23, !llvm.loop !832

39:                                               ; preds = %17, %117
  %40 = phi ptr [ %15, %17 ], [ %118, %117 ]
  %41 = getelementptr inbounds %struct.Base, ptr %40, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !403
  %43 = and i32 %42, -3
  store i32 %43, ptr %41, align 8, !tbaa !403
  %44 = and i32 %42, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %117, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.Base, ptr %40, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !451
  %49 = load i32, ptr %21, align 8, !tbaa !58
  %50 = and i32 %49, %48
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %117, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.Base, ptr %40, i64 0, i32 7
  %54 = load ptr, ptr %53, align 8, !tbaa !144
  %55 = getelementptr inbounds %struct.ID, ptr %54, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !666
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %117

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 102
  %60 = load i8, ptr %59, align 8, !tbaa !453
  %61 = and i8 %60, 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %117

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 9
  %65 = load ptr, ptr %64, align 8, !tbaa !833
  %66 = icmp eq ptr %65, null
  br i1 %66, label %116, label %67

67:                                               ; preds = %63, %98
  %68 = phi ptr [ %100, %98 ], [ %65, %63 ]
  %69 = getelementptr inbounds %struct.Object, ptr %68, i64 0, i32 53
  %70 = load i16, ptr %69, align 4, !tbaa !668
  %71 = and i16 %70, 1
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %98, label %73

73:                                               ; preds = %67
  %74 = tail call ptr @BKE_scene_base_find(ptr noundef %3, ptr noundef nonnull %68) #22
  %75 = icmp eq ptr %74, null
  br i1 %75, label %98, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.Base, ptr %74, i64 0, i32 4
  %78 = load i32, ptr %77, align 8, !tbaa !403
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %98, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.Base, ptr %74, i64 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !451
  %84 = load i32, ptr %21, align 8, !tbaa !58
  %85 = and i32 %84, %83
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.Base, ptr %74, i64 0, i32 7
  %89 = load ptr, ptr %88, align 8, !tbaa !144
  %90 = getelementptr inbounds %struct.ID, ptr %89, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !666
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.Object, ptr %89, i64 0, i32 102
  %95 = load i8, ptr %94, align 8, !tbaa !453
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %76, %81, %87, %93, %73, %67
  %99 = getelementptr inbounds %struct.Object, ptr %68, i64 0, i32 9
  %100 = load ptr, ptr %99, align 8, !tbaa !833
  %101 = icmp eq ptr %100, null
  br i1 %101, label %116, label %67, !llvm.loop !834

102:                                              ; preds = %93
  %103 = load i32, ptr %0, align 8, !tbaa !192
  switch i32 %103, label %110 [
    i32 2, label %104
    i32 10, label %104
  ]

104:                                              ; preds = %102, %102
  %105 = load i16, ptr %22, align 2, !tbaa !316
  %106 = icmp eq i16 %105, 2
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, ptr %41, align 8, !tbaa !403
  %109 = or i32 %108, 256
  br label %114

110:                                              ; preds = %102, %104
  %111 = load i32, ptr %41, align 8, !tbaa !403
  %112 = and i32 %111, -4
  %113 = or disjoint i32 %112, 2
  br label %114

114:                                              ; preds = %110, %107
  %115 = phi i32 [ %109, %107 ], [ %113, %110 ]
  store i32 %115, ptr %41, align 8, !tbaa !403
  br label %116

116:                                              ; preds = %98, %114, %63
  tail call void @DAG_id_tag_update(ptr noundef %54, i16 noundef signext 1) #22
  br label %117

117:                                              ; preds = %39, %46, %52, %58, %116
  %118 = load ptr, ptr %40, align 8, !tbaa !64
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %39, !llvm.loop !835

120:                                              ; preds = %117, %8, %14
  %121 = load ptr, ptr @G, align 8, !tbaa !306
  %122 = load ptr, ptr %2, align 8, !tbaa !124
  tail call void @DAG_scene_flush_update(ptr noundef %121, ptr noundef %122, i32 noundef -1, i16 noundef signext 0) #22
  %123 = load ptr, ptr %11, align 8, !tbaa !64
  %124 = icmp eq ptr %123, null
  br i1 %124, label %147, label %125

125:                                              ; preds = %120, %144
  %126 = phi ptr [ %145, %144 ], [ %123, %120 ]
  %127 = getelementptr inbounds %struct.Base, ptr %126, i64 0, i32 7
  %128 = load ptr, ptr %127, align 8, !tbaa !144
  %129 = getelementptr inbounds %struct.Object, ptr %128, i64 0, i32 103
  %130 = load i8, ptr %129, align 1, !tbaa !320
  %131 = and i8 %130, 1
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %125
  %134 = getelementptr inbounds %struct.Base, ptr %126, i64 0, i32 4
  %135 = load i32, ptr %134, align 8, !tbaa !403
  %136 = or i32 %135, 4
  store i32 %136, ptr %134, align 8, !tbaa !403
  br label %137

137:                                              ; preds = %133, %125
  %138 = and i8 %130, 2
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.Base, ptr %126, i64 0, i32 4
  %142 = load i32, ptr %141, align 8, !tbaa !403
  %143 = or i32 %142, 8
  store i32 %143, ptr %141, align 8, !tbaa !403
  br label %144

144:                                              ; preds = %137, %140
  %145 = load ptr, ptr %126, align 8, !tbaa !64
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %125, !llvm.loop !836

147:                                              ; preds = %144, %120, %1
  ret void
}

; Function Attrs: optsize
declare i32 @ctx_data_list_count(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @CTX_data_selected_objects(ptr noundef, ptr noundef) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @count_proportional_objects(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !837 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %5 = load ptr, ptr %4, align 8, !tbaa !319
  %6 = load i32, ptr %0, align 8, !tbaa !192
  switch i32 %6, label %11 [
    i32 2, label %7
    i32 10, label %7
  ]

7:                                                ; preds = %1, %1
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 32
  %9 = load i16, ptr %8, align 2, !tbaa !316
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %92, label %11

11:                                               ; preds = %1, %7
  %12 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  %14 = icmp eq ptr %13, null
  br i1 %14, label %92, label %15

15:                                               ; preds = %11
  %16 = icmp eq ptr %5, null
  %17 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 22
  %18 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 12
  %19 = select i1 %16, ptr %18, ptr %17
  br label %26

20:                                               ; preds = %61
  br i1 %14, label %92, label %21

21:                                               ; preds = %20
  %22 = icmp eq ptr %5, null
  %23 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 22
  %24 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 12
  %25 = select i1 %22, ptr %24, ptr %23
  br label %64

26:                                               ; preds = %15, %61
  %27 = phi ptr [ %13, %15 ], [ %62, %61 ]
  %28 = getelementptr inbounds %struct.Base, ptr %27, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !403
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %61, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.Base, ptr %27, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !451
  %35 = load i32, ptr %19, align 8, !tbaa !58
  %36 = and i32 %35, %34
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %61, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.Base, ptr %27, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !144
  %41 = getelementptr inbounds %struct.ID, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !666
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %61

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 102
  %46 = load i8, ptr %45, align 8, !tbaa !453
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 9
  %51 = load ptr, ptr %50, align 8, !tbaa !833
  %52 = icmp eq ptr %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %49, %53
  %54 = phi ptr [ %59, %53 ], [ %51, %49 ]
  %55 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 53
  %56 = load i16, ptr %55, align 4, !tbaa !668
  %57 = or i16 %56, 8192
  store i16 %57, ptr %55, align 4, !tbaa !668
  %58 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 9
  %59 = load ptr, ptr %58, align 8, !tbaa !833
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %53, !llvm.loop !838

61:                                               ; preds = %53, %49, %26, %32, %38, %44
  %62 = load ptr, ptr %27, align 8, !tbaa !64
  %63 = icmp eq ptr %62, null
  br i1 %63, label %20, label %26, !llvm.loop !839

64:                                               ; preds = %21, %89
  %65 = phi ptr [ %13, %21 ], [ %90, %89 ]
  %66 = getelementptr inbounds %struct.Base, ptr %65, i64 0, i32 7
  %67 = load ptr, ptr %66, align 8, !tbaa !144
  %68 = getelementptr inbounds %struct.Object, ptr %67, i64 0, i32 53
  %69 = load i16, ptr %68, align 4, !tbaa !668
  %70 = and i16 %69, 8449
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.Base, ptr %65, i64 0, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !451
  %75 = load i32, ptr %25, align 8, !tbaa !58
  %76 = and i32 %75, %74
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.ID, ptr %67, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !666
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.Object, ptr %67, i64 0, i32 102
  %84 = load i8, ptr %83, align 8, !tbaa !453
  %85 = and i8 %84, 1
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = tail call fastcc zeroext i8 @mark_children(ptr noundef nonnull %67) #23, !range !542
  br label %89

89:                                               ; preds = %64, %72, %78, %82, %87
  %90 = load ptr, ptr %65, align 8, !tbaa !64
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %64, !llvm.loop !840

92:                                               ; preds = %89, %11, %20, %7
  %93 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 5
  %94 = load ptr, ptr %93, align 8, !tbaa !64
  %95 = icmp eq ptr %94, null
  br i1 %95, label %131, label %96

96:                                               ; preds = %92
  %97 = icmp eq ptr %5, null
  %98 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 22
  %99 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 12
  %100 = select i1 %97, ptr %99, ptr %98
  br label %101

101:                                              ; preds = %96, %127
  %102 = phi ptr [ %94, %96 ], [ %129, %127 ]
  %103 = phi i32 [ 0, %96 ], [ %128, %127 ]
  %104 = getelementptr inbounds %struct.Base, ptr %102, i64 0, i32 7
  %105 = load ptr, ptr %104, align 8, !tbaa !144
  %106 = getelementptr inbounds %struct.Object, ptr %105, i64 0, i32 53
  %107 = load i16, ptr %106, align 4, !tbaa !668
  %108 = and i16 %107, 8449
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %101
  %111 = getelementptr inbounds %struct.Base, ptr %102, i64 0, i32 2
  %112 = load i32, ptr %111, align 8, !tbaa !451
  %113 = load i32, ptr %100, align 8, !tbaa !58
  %114 = and i32 %113, %112
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.ID, ptr %105, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !666
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.Object, ptr %105, i64 0, i32 102
  %122 = load i8, ptr %121, align 8, !tbaa !453
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  tail call void @DAG_id_tag_update(ptr noundef nonnull %105, i16 noundef signext 1) #22
  %126 = add nsw i32 %103, 1
  br label %127

127:                                              ; preds = %125, %120, %116, %110, %101
  %128 = phi i32 [ %126, %125 ], [ %103, %120 ], [ %103, %116 ], [ %103, %110 ], [ %103, %101 ]
  %129 = load ptr, ptr %102, align 8, !tbaa !64
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %101, !llvm.loop !841

131:                                              ; preds = %127, %92
  %132 = phi i32 [ 0, %92 ], [ %128, %127 ]
  %133 = load ptr, ptr @G, align 8, !tbaa !306
  %134 = load ptr, ptr %2, align 8, !tbaa !124
  tail call void @DAG_scene_relations_update(ptr noundef %133, ptr noundef %134) #22
  %135 = load ptr, ptr @G, align 8, !tbaa !306
  %136 = load ptr, ptr %2, align 8, !tbaa !124
  tail call void @DAG_scene_flush_update(ptr noundef %135, ptr noundef %136, i32 noundef -1, i16 noundef signext 0) #22
  %137 = load ptr, ptr %93, align 8, !tbaa !64
  %138 = icmp eq ptr %137, null
  br i1 %138, label %161, label %139

139:                                              ; preds = %131, %158
  %140 = phi ptr [ %159, %158 ], [ %137, %131 ]
  %141 = getelementptr inbounds %struct.Base, ptr %140, i64 0, i32 7
  %142 = load ptr, ptr %141, align 8, !tbaa !144
  %143 = getelementptr inbounds %struct.Object, ptr %142, i64 0, i32 103
  %144 = load i8, ptr %143, align 1, !tbaa !320
  %145 = and i8 %144, 1
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %139
  %148 = getelementptr inbounds %struct.Base, ptr %140, i64 0, i32 4
  %149 = load i32, ptr %148, align 8, !tbaa !403
  %150 = or i32 %149, 4
  store i32 %150, ptr %148, align 8, !tbaa !403
  br label %151

151:                                              ; preds = %147, %139
  %152 = and i8 %144, 2
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.Base, ptr %140, i64 0, i32 4
  %156 = load i32, ptr %155, align 8, !tbaa !403
  %157 = or i32 %156, 8
  store i32 %157, ptr %155, align 8, !tbaa !403
  br label %158

158:                                              ; preds = %151, %154
  %159 = load ptr, ptr %140, align 8, !tbaa !64
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %139, !llvm.loop !842

161:                                              ; preds = %158, %131
  ret i32 %132
}

; Function Attrs: optsize
declare i32 @CTX_data_selected_bases(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ObjectToTransData(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 !PGOFuncName !843 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %10 = load ptr, ptr %9, align 8, !tbaa !124
  %11 = load i32, ptr %0, align 8, !tbaa !192
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %51, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 128
  %15 = load ptr, ptr %14, align 8, !tbaa !328
  %16 = icmp eq ptr %15, null
  br i1 %16, label %51, label %17

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #24
  %18 = tail call float @BKE_scene_frame_get(ptr noundef %10) #22
  %19 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 47
  %20 = load ptr, ptr %19, align 8, !tbaa !329
  %21 = tail call zeroext i8 @BKE_rigidbody_check_sim_running(ptr noundef %20, float noundef %18) #22
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %50, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 13
  %25 = load ptr, ptr %24, align 8, !tbaa !330
  %26 = getelementptr inbounds %struct.TransDataExtension, ptr %25, i64 0, i32 18
  %27 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 33
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %26, ptr noundef nonnull %27) #23
  %28 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 83
  %29 = load i16, ptr %28, align 8, !tbaa !664
  %30 = icmp sgt i16 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load ptr, ptr %24, align 8, !tbaa !330
  %33 = getelementptr inbounds %struct.TransDataExtension, ptr %32, i64 0, i32 19
  %34 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 39
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %33, ptr noundef nonnull %34) #23
  br label %48

35:                                               ; preds = %23
  %36 = icmp eq i16 %29, -1
  br i1 %36, label %37, label %44

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 45
  %39 = load float, ptr %38, align 8, !tbaa !844
  %40 = load ptr, ptr %24, align 8, !tbaa !330
  %41 = getelementptr inbounds %struct.TransDataExtension, ptr %40, i64 0, i32 22
  store float %39, ptr %41, align 8, !tbaa !331
  %42 = getelementptr inbounds %struct.TransDataExtension, ptr %40, i64 0, i32 21
  %43 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 43
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %42, ptr noundef nonnull %43) #23
  br label %48

44:                                               ; preds = %35
  %45 = load ptr, ptr %24, align 8, !tbaa !330
  %46 = getelementptr inbounds %struct.TransDataExtension, ptr %45, i64 0, i32 20
  %47 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 41
  tail call void @copy_qt_qt(ptr noundef nonnull %46, ptr noundef nonnull %47) #22
  br label %48

48:                                               ; preds = %37, %44, %31
  %49 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @mat4_to_loc_rot_size(ptr noundef nonnull %27, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %49) #22
  call void @BKE_object_mat3_to_rot(ptr noundef nonnull %2, ptr noundef nonnull %4, i8 noundef zeroext 0) #22
  br label %50

50:                                               ; preds = %48, %17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #24
  br label %51

51:                                               ; preds = %50, %13, %3
  %52 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 10
  %53 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %52, ptr noundef nonnull %53) #22
  call void @normalize_m3(ptr noundef nonnull %52) #22
  %54 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 106
  %55 = load ptr, ptr %54, align 8, !tbaa !845
  %56 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 12
  store ptr %55, ptr %56, align 8, !tbaa !815
  %57 = call fastcc zeroext i8 @constraints_list_needinv(ptr noundef nonnull %0, ptr noundef nonnull %54) #23
  %58 = load i32, ptr %0, align 8, !tbaa !192
  %59 = icmp ne i32 %58, 0
  %60 = icmp eq i8 %57, 0
  %61 = and i1 %60, %59
  br i1 %61, label %62, label %69

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 55
  %64 = load i16, ptr %63, align 8, !tbaa !846
  %65 = or i16 %64, 8192
  store i16 %65, ptr %63, align 8, !tbaa !846
  %66 = load ptr, ptr %9, align 8, !tbaa !124
  call void @BKE_object_where_is_calc(ptr noundef %66, ptr noundef nonnull %2) #22
  %67 = load i16, ptr %63, align 8, !tbaa !846
  %68 = and i16 %67, -8193
  store i16 %68, ptr %63, align 8, !tbaa !846
  br label %71

69:                                               ; preds = %51
  %70 = load ptr, ptr %9, align 8, !tbaa !124
  call void @BKE_object_where_is_calc(ptr noundef %70, ptr noundef nonnull %2) #22
  br label %71

71:                                               ; preds = %62, %69
  %72 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 11
  store ptr %2, ptr %72, align 8, !tbaa !322
  %73 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 33
  %74 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 3
  store ptr %73, ptr %74, align 8, !tbaa !215
  %75 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %75, ptr noundef nonnull %73) #23
  %76 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 83
  %77 = load i16, ptr %76, align 8, !tbaa !664
  %78 = icmp sgt i16 %77, 0
  %79 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 13
  %80 = load ptr, ptr %79, align 8, !tbaa !330
  %81 = getelementptr inbounds %struct.TransDataExtension, ptr %80, i64 0, i32 3
  br i1 %78, label %82, label %90

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 39
  store ptr %83, ptr %81, align 8, !tbaa !463
  %84 = getelementptr inbounds %struct.TransDataExtension, ptr %80, i64 0, i32 9
  store ptr null, ptr %84, align 8, !tbaa !811
  %85 = getelementptr inbounds %struct.TransDataExtension, ptr %80, i64 0, i32 7
  store ptr null, ptr %85, align 8, !tbaa !812
  %86 = getelementptr inbounds %struct.TransDataExtension, ptr %80, i64 0, i32 5
  store ptr null, ptr %86, align 8, !tbaa !636
  %87 = getelementptr inbounds %struct.TransDataExtension, ptr %80, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %87, ptr noundef nonnull %83) #23
  %88 = load ptr, ptr %79, align 8, !tbaa !330
  %89 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 40
  call fastcc void @copy_v3_v3(ptr noundef %88, ptr noundef nonnull %89) #23
  br label %110

90:                                               ; preds = %71
  %91 = icmp eq i16 %77, -1
  store ptr null, ptr %81, align 8, !tbaa !463
  br i1 %91, label %92, label %101

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 43
  %94 = getelementptr inbounds %struct.TransDataExtension, ptr %80, i64 0, i32 9
  store ptr %93, ptr %94, align 8, !tbaa !811
  %95 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 45
  %96 = getelementptr inbounds %struct.TransDataExtension, ptr %80, i64 0, i32 7
  store ptr %95, ptr %96, align 8, !tbaa !812
  %97 = getelementptr inbounds %struct.TransDataExtension, ptr %80, i64 0, i32 5
  store ptr null, ptr %97, align 8, !tbaa !636
  %98 = load float, ptr %95, align 8, !tbaa !844
  %99 = getelementptr inbounds %struct.TransDataExtension, ptr %80, i64 0, i32 8
  store float %98, ptr %99, align 8, !tbaa !813
  %100 = getelementptr inbounds %struct.TransDataExtension, ptr %80, i64 0, i32 10
  call fastcc void @copy_v3_v3(ptr noundef nonnull %100, ptr noundef nonnull %93) #23
  br label %110

101:                                              ; preds = %90
  %102 = getelementptr inbounds %struct.TransDataExtension, ptr %80, i64 0, i32 9
  store ptr null, ptr %102, align 8, !tbaa !811
  %103 = getelementptr inbounds %struct.TransDataExtension, ptr %80, i64 0, i32 7
  store ptr null, ptr %103, align 8, !tbaa !812
  %104 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 41
  %105 = getelementptr inbounds %struct.TransDataExtension, ptr %80, i64 0, i32 5
  store ptr %104, ptr %105, align 8, !tbaa !636
  %106 = getelementptr inbounds %struct.TransDataExtension, ptr %80, i64 0, i32 6
  call void @copy_qt_qt(ptr noundef nonnull %106, ptr noundef nonnull %104) #22
  %107 = load ptr, ptr %79, align 8, !tbaa !330
  %108 = getelementptr inbounds %struct.TransDataExtension, ptr %107, i64 0, i32 1
  %109 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 42
  call void @copy_qt_qt(ptr noundef nonnull %108, ptr noundef nonnull %109) #22
  br label %110

110:                                              ; preds = %92, %101, %82
  %111 = load i16, ptr %76, align 8, !tbaa !664
  %112 = sext i16 %111 to i32
  %113 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 13
  %114 = load ptr, ptr %113, align 8, !tbaa !330
  %115 = getelementptr inbounds %struct.TransDataExtension, ptr %114, i64 0, i32 17
  store i32 %112, ptr %115, align 8, !tbaa !665
  %116 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 36
  %117 = getelementptr inbounds %struct.TransDataExtension, ptr %114, i64 0, i32 11
  store ptr %116, ptr %117, align 8, !tbaa !464
  %118 = getelementptr inbounds %struct.TransDataExtension, ptr %114, i64 0, i32 12
  call fastcc void @copy_v3_v3(ptr noundef nonnull %118, ptr noundef nonnull %116) #23
  %119 = load ptr, ptr %113, align 8, !tbaa !330
  %120 = getelementptr inbounds %struct.TransDataExtension, ptr %119, i64 0, i32 2
  %121 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 38
  call fastcc void @copy_v3_v3(ptr noundef nonnull %120, ptr noundef nonnull %121) #23
  %122 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7
  %123 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %122, ptr noundef nonnull %123) #23
  %124 = load ptr, ptr %113, align 8, !tbaa !330
  %125 = getelementptr inbounds %struct.TransDataExtension, ptr %124, i64 0, i32 13
  call void @copy_m4_m4(ptr noundef nonnull %125, ptr noundef nonnull %53) #22
  %126 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 9
  %127 = load ptr, ptr %126, align 8, !tbaa !833
  %128 = icmp ne ptr %127, null
  %129 = icmp ne i8 %57, 0
  %130 = or i1 %129, %128
  br i1 %130, label %131, label %136

131:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #24
  call void @BKE_object_to_mat3(ptr noundef nonnull %2, ptr noundef nonnull %6) #22
  call void @copy_m3_m4(ptr noundef nonnull %7, ptr noundef nonnull %53) #22
  %132 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %8, ptr noundef nonnull %7) #22
  %133 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 9
  call void @mul_m3_m3m3(ptr noundef nonnull %133, ptr noundef nonnull %6, ptr noundef nonnull %8) #22
  %134 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 8
  %135 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %134, ptr noundef nonnull %133) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #24
  br label %139

136:                                              ; preds = %110
  %137 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 9
  call void @unit_m3(ptr noundef nonnull %137) #22
  %138 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 8
  call void @unit_m3(ptr noundef nonnull %138) #22
  br label %139

139:                                              ; preds = %136, %131
  ret void
}

; Function Attrs: optsize
declare void @BKE_scene_base_flag_to_objects(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @DAG_scene_relations_update(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BKE_object_handle_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @DAG_scene_flush_update(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #9

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @mark_children(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !847 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 53
  %3 = load i16, ptr %2, align 4, !tbaa !668
  %4 = and i16 %3, 257
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !833
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc zeroext i8 @mark_children(ptr noundef nonnull %8) #23, !range !542
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i16, ptr %2, align 4, !tbaa !668
  %15 = or i16 %14, 256
  store i16 %15, ptr %2, align 4, !tbaa !668
  br label %16

16:                                               ; preds = %6, %10, %1, %13
  %17 = phi i8 [ 1, %13 ], [ 1, %1 ], [ 0, %10 ], [ 0, %6 ]
  ret i8 %17
}

; Function Attrs: optsize
declare void @mat4_to_loc_rot_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BKE_object_mat3_to_rot(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BKE_object_where_is_calc(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @BKE_object_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #20

attributes #0 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind optsize }
attributes #23 = { optsize }
attributes #24 = { nounwind }
attributes #25 = { nounwind optsize willreturn memory(read) }

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
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!35, !36, i64 4}
!54 = !{!"transform_conversions.c:trans_data_compare_dist"}
!55 = !{!50, !40, i64 0}
!56 = !{!"transform_conversions.c:trans_data_compare_rdist"}
!57 = !{!50, !40, i64 4}
!58 = !{!36, !36, i64 0}
!59 = !{!60, !41, i64 288}
!60 = !{!"Object", !61, i64 0, !41, i64 120, !41, i64 128, !39, i64 136, !39, i64 138, !36, i64 140, !36, i64 144, !36, i64 148, !37, i64 152, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288, !41, i64 296, !41, i64 304, !62, i64 312, !41, i64 360, !44, i64 368, !44, i64 384, !44, i64 400, !44, i64 416, !36, i64 432, !36, i64 436, !41, i64 440, !41, i64 448, !36, i64 456, !36, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !40, i64 616, !40, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !36, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !36, i64 968, !36, i64 972, !36, i64 976, !36, i64 980, !36, i64 984, !40, i64 988, !40, i64 992, !40, i64 996, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !40, i64 1028, !40, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !40, i64 1048, !40, i64 1052, !44, i64 1056, !44, i64 1072, !44, i64 1088, !44, i64 1104, !40, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !36, i64 1144, !36, i64 1148, !41, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !44, i64 1176, !44, i64 1192, !44, i64 1208, !44, i64 1224, !41, i64 1240, !41, i64 1248, !41, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !40, i64 1268, !41, i64 1272, !41, i64 1280, !41, i64 1288, !41, i64 1296, !63, i64 1304, !63, i64 1312, !36, i64 1320, !36, i64 1324, !44, i64 1328, !44, i64 1344, !41, i64 1360, !41, i64 1368, !41, i64 1376, !37, i64 1384, !41, i64 1392, !44, i64 1400, !41, i64 1416}
!61 = !{!"ID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !39, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !41, i64 112}
!62 = !{!"bAnimVizSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44}
!63 = !{!"long", !37, i64 0}
!64 = !{!41, !41, i64 0}
!65 = !{!60, !41, i64 296}
!66 = !{!67, !36, i64 216}
!67 = !{!"bArmature", !61, i64 0, !41, i64 120, !44, i64 128, !44, i64 144, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !39, i64 208, !39, i64 210, !36, i64 212, !36, i64 216, !36, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !36, i64 248, !36, i64 252}
!68 = !{!69, !41, i64 120}
!69 = !{!"bPoseChannel", !41, i64 0, !41, i64 8, !41, i64 16, !44, i64 24, !37, i64 40, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !41, i64 120, !41, i64 128, !41, i64 136, !44, i64 144, !44, i64 160, !41, i64 176, !41, i64 184, !41, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !40, i64 264, !39, i64 268, !39, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !40, i64 524, !40, i64 528, !40, i64 532, !41, i64 536}
!70 = !{!71, !36, i64 320}
!71 = !{!"Bone", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !44, i64 32, !37, i64 48, !40, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !36, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !37, i64 308, !36, i64 320, !39, i64 324, !37, i64 326}
!72 = !{!71, !36, i64 176}
!73 = distinct !{!73, !52}
!74 = distinct !{!74, !52}
!75 = !{!69, !41, i64 128}
!76 = !{!69, !39, i64 108}
!77 = distinct !{!77, !52}
!78 = !{!"transform_conversions.c:bone_children_clear_transflag"}
!79 = distinct !{!79, !52}
!80 = !{!"transform_conversions.c:has_targetless_ik"}
!81 = !{!82, !39, i64 24}
!82 = !{!"bConstraint", !41, i64 0, !41, i64 8, !41, i64 16, !39, i64 24, !39, i64 26, !37, i64 28, !37, i64 29, !37, i64 30, !39, i64 94, !40, i64 96, !40, i64 100, !41, i64 104, !40, i64 112, !40, i64 116}
!83 = !{!82, !40, i64 96}
!84 = !{!82, !41, i64 16}
!85 = !{!86, !41, i64 0}
!86 = !{!"bKinematicConstraint", !41, i64 0, !39, i64 8, !39, i64 10, !39, i64 12, !39, i64 14, !37, i64 16, !41, i64 80, !37, i64 88, !40, i64 152, !40, i64 156, !40, i64 160, !37, i64 164, !39, i64 176, !39, i64 178, !40, i64 180}
!87 = !{!60, !39, i64 136}
!88 = !{!37, !37, i64 0}
!89 = distinct !{!89, !52}
!90 = !{!35, !41, i64 1264}
!91 = !{!39, !39, i64 0}
!92 = !{!35, !41, i64 1128}
!93 = distinct !{!93, !52}
!94 = !{!"transform_conversions.c:pchan_autoik_adjust"}
!95 = !{!69, !37, i64 112}
!96 = !{!86, !39, i64 10}
!97 = !{!86, !39, i64 14}
!98 = !{!86, !39, i64 12}
!99 = distinct !{!99, !52}
!100 = !{!35, !41, i64 1136}
!101 = !{!102, !41, i64 0}
!102 = !{!"BoneInitData", !41, i64 0, !37, i64 8, !40, i64 20, !40, i64 24, !37, i64 28, !40, i64 40, !40, i64 44, !40, i64 48}
!103 = !{!35, !41, i64 1312}
!104 = !{!102, !40, i64 40}
!105 = !{!106, !40, i64 140}
!106 = !{!"EditBone", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !37, i64 40, !40, i64 104, !37, i64 108, !37, i64 120, !36, i64 132, !36, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !39, i64 180}
!107 = !{!102, !40, i64 20}
!108 = !{!106, !40, i64 172}
!109 = !{!102, !40, i64 24}
!110 = !{!106, !40, i64 104}
!111 = !{!102, !40, i64 44}
!112 = !{!106, !40, i64 148}
!113 = !{!102, !40, i64 48}
!114 = !{!106, !40, i64 156}
!115 = !{!67, !36, i64 192}
!116 = !{!67, !41, i64 160}
!117 = !{!106, !36, i64 132}
!118 = !{!106, !41, i64 24}
!119 = !{!106, !40, i64 168}
!120 = distinct !{!120, !52}
!121 = distinct !{!121, !52}
!122 = !{!"transform_conversions.c:copy_v3_v3"}
!123 = !{!40, !40, i64 0}
!124 = !{!35, !41, i64 1256}
!125 = !{!126, !41, i64 168}
!126 = !{!"Scene", !61, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !44, i64 152, !41, i64 168, !41, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !36, i64 232, !36, i64 236, !36, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !127, i64 280, !136, i64 4264, !44, i64 4296, !44, i64 4312, !41, i64 4328, !41, i64 4336, !41, i64 4344, !41, i64 4352, !41, i64 4360, !41, i64 4368, !39, i64 4376, !39, i64 4378, !36, i64 4380, !44, i64 4384, !137, i64 4400, !138, i64 4416, !141, i64 4600, !41, i64 4608, !142, i64 4616, !41, i64 4640, !63, i64 4648, !63, i64 4656, !129, i64 4664, !130, i64 4824, !143, i64 4888, !41, i64 4952}
!127 = !{!"RenderData", !128, i64 0, !41, i64 248, !41, i64 256, !131, i64 264, !132, i64 328, !36, i64 400, !36, i64 404, !36, i64 408, !40, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !39, i64 432, !39, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !36, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !36, i64 484, !36, i64 488, !39, i64 492, !39, i64 494, !36, i64 496, !36, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !36, i64 516, !36, i64 520, !36, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !133, i64 544, !133, i64 560, !134, i64 576, !44, i64 592, !39, i64 608, !39, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !36, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !40, i64 660, !40, i64 664, !39, i64 668, !39, i64 670, !40, i64 672, !40, i64 676, !37, i64 680, !36, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !36, i64 2520, !39, i64 2524, !39, i64 2526, !40, i64 2528, !40, i64 2532, !39, i64 2536, !39, i64 2538, !40, i64 2540, !39, i64 2544, !39, i64 2546, !36, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !40, i64 2560, !40, i64 2564, !41, i64 2568, !36, i64 2576, !40, i64 2580, !37, i64 2584, !135, i64 2616, !36, i64 3976, !36, i64 3980}
!128 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !40, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !129, i64 24, !130, i64 184}
!129 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !40, i64 136, !40, i64 140, !41, i64 144, !41, i64 152}
!130 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!131 = !{!"QuicktimeCodecSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !39, i64 48, !39, i64 50, !36, i64 52, !36, i64 56, !36, i64 60}
!132 = !{!"FFMpegCodecData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !40, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !41, i64 64}
!133 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!134 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!135 = !{!"BakeData", !128, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !40, i64 1280, !40, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!136 = !{!"AudioData", !36, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !36, i64 16, !39, i64 20, !39, i64 22, !40, i64 24, !40, i64 28}
!137 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!138 = !{!"GameData", !137, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !139, i64 40, !39, i64 64, !39, i64 66, !40, i64 68, !140, i64 72, !40, i64 128, !40, i64 132, !36, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180}
!139 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !40, i64 8, !40, i64 12, !41, i64 16}
!140 = !{!"RecastData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !36, i64 40, !40, i64 44, !40, i64 48, !39, i64 52, !39, i64 54}
!141 = !{!"UnitSettings", !40, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!142 = !{!"PhysicsSettings", !37, i64 0, !36, i64 12, !36, i64 16, !36, i64 20}
!143 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!144 = !{!145, !41, i64 32}
!145 = !{!"Base", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !39, i64 28, !39, i64 30, !41, i64 32}
!146 = !{!147, !41, i64 232}
!147 = !{!"PTCacheEdit", !44, i64 0, !41, i64 16, !41, i64 24, !148, i64 32, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !44, i64 280, !36, i64 296, !36, i64 300, !36, i64 304, !36, i64 308, !37, i64 312, !37, i64 315}
!148 = !{!"PTCacheID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192}
!149 = !{!147, !36, i64 296}
!150 = !{!147, !41, i64 24}
!151 = !{!152, !39, i64 12}
!152 = !{!"PTCacheEditPoint", !41, i64 0, !36, i64 8, !39, i64 12}
!153 = !{!154, !36, i64 316}
!154 = !{!"ParticleSystem", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !44, i64 72, !44, i64 88, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !44, i64 152, !37, i64 168, !37, i64 232, !40, i64 296, !40, i64 300, !40, i64 304, !36, i64 308, !36, i64 312, !36, i64 316, !36, i64 320, !36, i64 324, !36, i64 328, !36, i64 332, !36, i64 336, !39, i64 340, !39, i64 342, !39, i64 344, !39, i64 346, !37, i64 348, !37, i64 540, !39, i64 564, !39, i64 566, !41, i64 568, !41, i64 576, !44, i64 584, !41, i64 600, !41, i64 608, !36, i64 616, !36, i64 620, !41, i64 624, !41, i64 632, !41, i64 640, !40, i64 648, !40, i64 652}
!155 = !{!156, !41, i64 120}
!156 = !{!"ParticleSystemModifierData", !157, i64 0, !41, i64 112, !41, i64 120, !36, i64 128, !36, i64 132, !36, i64 136, !39, i64 140, !39, i64 142}
!157 = !{!"ModifierData", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !37, i64 32, !41, i64 96, !41, i64 104}
!158 = !{!154, !41, i64 16}
!159 = !{!160, !39, i64 162}
!160 = !{!"ParticleSettings", !61, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !36, i64 152, !36, i64 156, !39, i64 160, !39, i64 162, !39, i64 164, !39, i64 166, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !36, i64 176, !36, i64 180, !39, i64 184, !39, i64 186, !39, i64 188, !39, i64 190, !39, i64 192, !39, i64 194, !39, i64 196, !39, i64 198, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !40, i64 232, !40, i64 236, !37, i64 240, !37, i64 248, !40, i64 256, !40, i64 260, !40, i64 264, !39, i64 268, !39, i64 270, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !37, i64 320, !36, i64 324, !36, i64 328, !36, i64 332, !36, i64 336, !39, i64 340, !37, i64 342, !40, i64 348, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !40, i64 368, !40, i64 372, !37, i64 376, !40, i64 388, !40, i64 392, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !40, i64 412, !37, i64 416, !40, i64 428, !40, i64 432, !40, i64 436, !40, i64 440, !36, i64 444, !36, i64 448, !40, i64 452, !40, i64 456, !40, i64 460, !40, i64 464, !40, i64 468, !40, i64 472, !40, i64 476, !40, i64 480, !40, i64 484, !40, i64 488, !40, i64 492, !40, i64 496, !40, i64 500, !40, i64 504, !40, i64 508, !40, i64 512, !40, i64 516, !40, i64 520, !40, i64 524, !40, i64 528, !40, i64 532, !40, i64 536, !40, i64 540, !40, i64 544, !40, i64 548, !37, i64 552, !40, i64 560, !40, i64 564, !36, i64 568, !36, i64 572, !37, i64 576, !41, i64 720, !44, i64 728, !41, i64 744, !41, i64 752, !41, i64 760, !41, i64 768, !41, i64 776, !41, i64 784, !39, i64 792, !37, i64 794}
!161 = !{!154, !41, i64 24}
!162 = !{!152, !36, i64 8}
!163 = !{!152, !41, i64 0}
!164 = !{!165, !41, i64 0}
!165 = !{!"PTCacheEditKey", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !40, i64 44, !40, i64 48, !39, i64 52}
!166 = distinct !{!166, !52}
!167 = distinct !{!167, !52}
!168 = !{!"transform_conversions.c:compare_v3v3"}
!169 = !{!170, !40, i64 10908}
!170 = !{!"UserDef", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !36, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !36, i64 8484, !36, i64 8488, !36, i64 8492, !39, i64 8496, !39, i64 8498, !36, i64 8500, !36, i64 8504, !36, i64 8508, !36, i64 8512, !36, i64 8516, !36, i64 8520, !36, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !44, i64 8536, !44, i64 8552, !44, i64 8568, !44, i64 8584, !44, i64 8600, !44, i64 8616, !44, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !36, i64 8912, !36, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !40, i64 8956, !40, i64 8960, !36, i64 8964, !39, i64 8968, !39, i64 8970, !40, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !171, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !36, i64 10896, !36, i64 10900, !40, i64 10904, !40, i64 10908, !36, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !172, i64 10928}
!171 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!172 = !{!"WalkNavigation", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !39, i64 24, !37, i64 26}
!173 = !{!170, !36, i64 8524}
!174 = !{!35, !41, i64 72}
!175 = !{!50, !41, i64 208}
!176 = !{!177, !41, i64 232}
!177 = !{!"bNode", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !37, i64 40, !37, i64 104, !36, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !44, i64 200, !44, i64 216, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !44, i64 264, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !36, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !40, i64 380, !40, i64 384, !39, i64 388, !39, i64 390, !41, i64 392, !133, i64 400, !133, i64 416, !133, i64 432, !39, i64 448, !39, i64 450, !36, i64 452, !41, i64 456}
!178 = distinct !{!178, !52}
!179 = !{!35, !41, i64 1240}
!180 = !{!181, !41, i64 0}
!181 = !{!"Editing", !41, i64 0, !44, i64 8, !44, i64 24, !41, i64 40, !37, i64 48, !37, i64 1072, !36, i64 2096, !36, i64 2100, !36, i64 2104, !36, i64 2108, !133, i64 2112}
!182 = !{!183, !41, i64 0}
!183 = !{!"TransDataSeq", !41, i64 0, !36, i64 8, !36, i64 12, !39, i64 16}
!184 = !{!185, !36, i64 108}
!185 = !{!"Sequence", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108, !36, i64 112, !36, i64 116, !36, i64 120, !36, i64 124, !36, i64 128, !36, i64 132, !36, i64 136, !36, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !39, i64 156, !39, i64 158, !36, i64 160, !36, i64 164, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !41, i64 216, !40, i64 224, !40, i64 228, !41, i64 232, !41, i64 240, !41, i64 248, !44, i64 256, !41, i64 272, !41, i64 280, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !41, i64 304, !36, i64 312, !36, i64 316, !36, i64 320, !40, i64 324, !36, i64 328, !37, i64 332, !37, i64 333, !44, i64 336}
!186 = !{!183, !39, i64 16}
!187 = !{!185, !36, i64 132}
!188 = !{!183, !36, i64 12}
!189 = !{!185, !36, i64 128}
!190 = !{!183, !36, i64 8}
!191 = distinct !{!191, !52}
!192 = !{!35, !36, i64 0}
!193 = !{!185, !36, i64 100}
!194 = !{!185, !36, i64 96}
!195 = distinct !{!195, !52}
!196 = !{!185, !41, i64 232}
!197 = !{!185, !41, i64 240}
!198 = !{!185, !41, i64 248}
!199 = distinct !{!199, !52}
!200 = distinct !{!200, !52}
!201 = !{!"transform_conversions.c:iroundf"}
!202 = !{!"transform_conversions.c:trans_update_seq"}
!203 = !{!204, !41, i64 96}
!204 = !{!"ScrArea", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !134, i64 56, !37, i64 72, !37, i64 73, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !39, i64 84, !37, i64 86, !37, i64 87, !41, i64 88, !44, i64 96, !44, i64 112, !44, i64 128, !44, i64 144}
!205 = !{!206, !36, i64 36}
!206 = !{!"SpaceImage", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !36, i64 36, !41, i64 40, !207, i64 48, !41, i64 88, !208, i64 96, !209, i64 5360, !41, i64 10520, !37, i64 10528, !40, i64 10536, !40, i64 10540, !40, i64 10544, !40, i64 10548, !40, i64 10552, !37, i64 10556, !37, i64 10557, !39, i64 10558, !39, i64 10560, !39, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !210, i64 10568}
!207 = !{!"ImageUser", !41, i64 0, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !36, i64 36}
!208 = !{!"Scopes", !36, i64 0, !36, i64 4, !36, i64 8, !40, i64 12, !36, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !40, i64 32, !36, i64 36, !37, i64 40, !209, i64 64, !41, i64 5224, !41, i64 5232, !41, i64 5240, !41, i64 5248, !36, i64 5256, !36, i64 5260}
!209 = !{!"Histogram", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !40, i64 5128, !40, i64 5132, !39, i64 5136, !39, i64 5138, !36, i64 5140, !37, i64 5144}
!210 = !{!"MaskSpaceInfo", !41, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!211 = !{!212, !41, i64 16}
!212 = !{!"TransData2D", !37, i64 0, !41, i64 16, !41, i64 24, !41, i64 32, !37, i64 40, !37, i64 48}
!213 = !{!35, !39, i64 12}
!214 = distinct !{!214, !52}
!215 = !{!50, !41, i64 16}
!216 = distinct !{!216, !52}
!217 = distinct !{!217, !52}
!218 = !{!"transform_conversions.c:min_ff"}
!219 = !{!"transform_conversions.c:max_ff"}
!220 = !{!221, !40, i64 0}
!221 = !{!"tGPFtransdata", !40, i64 0, !41, i64 8}
!222 = !{!221, !41, i64 8}
!223 = distinct !{!223, !52}
!224 = !{!225, !36, i64 244}
!225 = !{!"SpaceIpo", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !226, i64 56, !41, i64 216, !44, i64 224, !39, i64 240, !39, i64 242, !36, i64 244, !40, i64 248, !36, i64 252}
!226 = !{!"View2D", !133, i64 0, !133, i64 16, !134, i64 32, !134, i64 48, !134, i64 64, !37, i64 80, !37, i64 88, !40, i64 96, !40, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !41, i64 128, !36, i64 136, !36, i64 140, !41, i64 144, !41, i64 152}
!227 = !{!228, !41, i64 40}
!228 = !{!"bAnimListElem", !41, i64 0, !41, i64 8, !41, i64 16, !36, i64 24, !36, i64 28, !36, i64 32, !39, i64 36, !39, i64 38, !41, i64 40, !41, i64 48, !41, i64 56}
!229 = !{!230, !41, i64 48}
!230 = !{!"FCurve", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !44, i64 32, !41, i64 48, !41, i64 56, !36, i64 64, !40, i64 68, !39, i64 72, !39, i64 74, !36, i64 76, !41, i64 80, !36, i64 88, !37, i64 92, !40, i64 104, !40, i64 108}
!231 = !{!230, !36, i64 64}
!232 = distinct !{!232, !52}
!233 = !{!"transform_conversions.c:bezt_to_beztmaps"}
!234 = !{!235, !41, i64 0}
!235 = !{!"BeztMap", !41, i64 0, !36, i64 8, !36, i64 12, !39, i64 16, !37, i64 18, !37, i64 19}
!236 = !{!235, !36, i64 8}
!237 = !{!235, !36, i64 12}
!238 = !{!239, !37, i64 48}
!239 = !{!"BezTriple", !37, i64 0, !40, i64 36, !40, i64 40, !40, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !40, i64 56, !40, i64 60, !40, i64 64, !37, i64 68}
!240 = !{!235, !37, i64 18}
!241 = !{!235, !37, i64 19}
!242 = distinct !{!242, !52}
!243 = !{!"transform_conversions.c:sort_time_beztmaps"}
!244 = !{i64 0, i64 8, !64, i64 8, i64 4, !58, i64 12, i64 4, !58, i64 16, i64 2, !91, i64 18, i64 1, !88, i64 19, i64 1, !88}
!245 = !{!235, !39, i64 16}
!246 = distinct !{!246, !52}
!247 = !{!"transform_conversions.c:beztmap_to_data"}
!248 = !{!212, !41, i64 24}
!249 = !{!212, !41, i64 32}
!250 = !{!50, !41, i64 200}
!251 = !{!252, !41, i64 8}
!252 = !{!"TransDataCurveHandleFlags", !37, i64 0, !37, i64 1, !41, i64 8, !41, i64 16}
!253 = !{!252, !41, i64 16}
!254 = distinct !{!254, !52}
!255 = distinct !{!255, !52}
!256 = !{!126, !39, i64 820}
!257 = !{!126, !40, i64 900}
!258 = !{!259, !40, i64 0}
!259 = !{!"TransDataGraph", !40, i64 0}
!260 = !{!225, !39, i64 242}
!261 = distinct !{!261, !52}
!262 = !{!126, !36, i64 680}
!263 = !{!126, !41, i64 264}
!264 = !{!265, !39, i64 346}
!265 = !{!"ToolSettings", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !39, i64 44, !39, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !40, i64 52, !39, i64 56, !37, i64 58, !37, i64 59, !266, i64 64, !268, i64 168, !40, i64 336, !40, i64 340, !39, i64 344, !39, i64 346, !37, i64 348, !37, i64 349, !39, i64 350, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !40, i64 368, !40, i64 372, !40, i64 376, !40, i64 380, !40, i64 384, !40, i64 388, !39, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !41, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !39, i64 434, !39, i64 436, !39, i64 438, !39, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !36, i64 448, !36, i64 452, !36, i64 456, !36, i64 460, !39, i64 464, !39, i64 466, !36, i64 468, !40, i64 472, !40, i64 476, !269, i64 480, !270, i64 608}
!266 = !{!"ImagePaintSettings", !267, i64 0, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !37, i64 48, !36, i64 52, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !37, i64 88, !40, i64 100}
!267 = !{!"Paint", !41, i64 0, !41, i64 8, !41, i64 16, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36}
!268 = !{!"ParticleEditSettings", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !41, i64 120, !40, i64 128, !40, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !41, i64 152, !41, i64 160}
!269 = !{!"UnifiedPaintSettings", !36, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !37, i64 16, !37, i64 28, !36, i64 40, !37, i64 44, !40, i64 52, !36, i64 56, !36, i64 60, !37, i64 64, !37, i64 65, !40, i64 72, !37, i64 76, !36, i64 84, !40, i64 88, !37, i64 92, !37, i64 100, !36, i64 108, !41, i64 112, !40, i64 120, !36, i64 124}
!270 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 21, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36}
!271 = !{!170, !39, i64 8978}
!272 = !{!60, !41, i64 120}
!273 = !{!274, !41, i64 0}
!274 = !{!"AnimData", !41, i64 0, !41, i64 8, !41, i64 16, !44, i64 24, !41, i64 40, !44, i64 48, !44, i64 64, !36, i64 80, !36, i64 84, !39, i64 88, !39, i64 90, !40, i64 92}
!275 = !{!230, !39, i64 72}
!276 = !{!230, !41, i64 16}
!277 = !{!230, !41, i64 80}
!278 = !{!230, !36, i64 76}
!279 = distinct !{!279, !52}
!280 = !{!281, !39, i64 238}
!281 = !{!"View3D", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !37, i64 56, !40, i64 72, !40, i64 76, !37, i64 80, !37, i64 81, !36, i64 84, !36, i64 88, !39, i64 92, !39, i64 94, !41, i64 96, !41, i64 104, !133, i64 112, !44, i64 128, !41, i64 144, !41, i64 152, !37, i64 160, !36, i64 224, !36, i64 228, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !37, i64 260, !37, i64 272, !39, i64 284, !39, i64 286, !39, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !44, i64 296, !44, i64 312, !44, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !41, i64 352, !41, i64 360, !41, i64 368}
!282 = !{!281, !39, i64 240}
!283 = !{!60, !39, i64 342}
!284 = distinct !{!284, !52}
!285 = distinct !{!285, !52}
!286 = !{!287, !39, i64 134}
!287 = !{!"bPose", !44, i64 0, !41, i64 16, !39, i64 24, !39, i64 26, !36, i64 28, !36, i64 32, !40, i64 36, !37, i64 40, !37, i64 52, !44, i64 64, !36, i64 80, !36, i64 84, !41, i64 88, !41, i64 96, !62, i64 104, !37, i64 152}
!288 = distinct !{!288, !52}
!289 = !{!35, !37, i64 976}
!290 = !{!291, !40, i64 64}
!291 = !{!"EdgeSlideData", !41, i64 0, !36, i64 8, !41, i64 16, !37, i64 24, !37, i64 32, !41, i64 40, !37, i64 48, !41, i64 56, !40, i64 64, !37, i64 68, !37, i64 69, !36, i64 72}
!292 = !{!293, !36, i64 232}
!293 = !{!"SpaceSeq", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !226, i64 56, !40, i64 216, !40, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !36, i64 232, !40, i64 236, !36, i64 240, !36, i64 244, !41, i64 248, !294, i64 256}
!294 = !{!"SequencerScopes", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40}
!295 = !{!35, !37, i64 712}
!296 = !{!35, !36, i64 16}
!297 = !{!298, !41, i64 288}
!298 = !{!"SpaceNode", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !226, i64 56, !41, i64 216, !41, i64 224, !39, i64 232, !39, i64 234, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !37, i64 256, !44, i64 264, !41, i64 280, !41, i64 288, !37, i64 296, !36, i64 360, !36, i64 364, !39, i64 368, !39, i64 370, !39, i64 372, !39, i64 374, !44, i64 376, !41, i64 392}
!299 = !{!300, !41, i64 56}
!300 = !{!"bAnimContext", !41, i64 0, !39, i64 8, !39, i64 10, !39, i64 12, !39, i64 14, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72}
!301 = !{!300, !41, i64 0}
!302 = !{!303, !39, i64 338}
!303 = !{!"SpaceAction", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !226, i64 56, !41, i64 216, !304, i64 224, !37, i64 336, !37, i64 337, !39, i64 338, !40, i64 340}
!304 = !{!"bDopeSheet", !41, i64 0, !44, i64 8, !41, i64 24, !37, i64 32, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108}
!305 = distinct !{!305, !52}
!306 = !{!307, !41, i64 0}
!307 = !{!"Global", !41, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !44, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !39, i64 2084, !39, i64 2086, !39, i64 2088, !37, i64 2090, !39, i64 2092, !36, i64 2096, !36, i64 2100, !37, i64 2104, !36, i64 2108, !36, i64 2112, !37, i64 2116}
!308 = !{!61, !36, i64 100}
!309 = !{!61, !39, i64 98}
!310 = distinct !{!310, !52}
!311 = distinct !{!311, !52}
!312 = !{!300, !39, i64 8}
!313 = distinct !{!313, !52}
!314 = !{!228, !41, i64 16}
!315 = distinct !{!315, !52}
!316 = !{!35, !39, i64 974}
!317 = !{i16 0, i16 2}
!318 = distinct !{!318, !52}
!319 = !{!35, !41, i64 1224}
!320 = !{!60, !37, i64 1161}
!321 = !{!60, !36, i64 432}
!322 = !{!50, !41, i64 176}
!323 = !{!148, !36, i64 40}
!324 = !{!148, !41, i64 176}
!325 = !{!326, !36, i64 16}
!326 = !{!"PointCache", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !39, i64 60, !39, i64 62, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !41, i64 1280, !44, i64 1288, !41, i64 1304, !41, i64 1312}
!327 = distinct !{!327, !52}
!328 = !{!60, !41, i64 1368}
!329 = !{!126, !41, i64 4952}
!330 = !{!50, !41, i64 192}
!331 = !{!332, !40, i64 376}
!332 = !{!"TransDataExtension", !37, i64 0, !37, i64 12, !37, i64 28, !41, i64 40, !37, i64 48, !41, i64 64, !37, i64 72, !41, i64 88, !40, i64 96, !41, i64 104, !37, i64 112, !41, i64 128, !37, i64 136, !37, i64 148, !37, i64 212, !37, i64 248, !37, i64 284, !36, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 364, !40, i64 376}
!333 = distinct !{!333, !52}
!334 = !{!"transform_conversions.c:special_aftertrans_update__mesh"}
!335 = !{!265, !39, i64 44}
!336 = !{!337, !41, i64 0}
!337 = !{!"BMEditMesh", !41, i64 0, !41, i64 8, !36, i64 16, !41, i64 24, !36, i64 32, !41, i64 40, !41, i64 48, !63, i64 56, !41, i64 64, !36, i64 72, !41, i64 80, !36, i64 88, !39, i64 92, !39, i64 94, !41, i64 96, !36, i64 104}
!338 = distinct !{!338, !52}
!339 = !{!"transform_conversions.c:special_aftertrans_update__mask"}
!340 = !{!126, !41, i64 248}
!341 = !{!265, !39, i64 344}
!342 = !{!170, !39, i64 8976}
!343 = !{!"transform_conversions.c:special_aftertrans_update__node"}
!344 = !{!35, !37, i64 1220}
!345 = !{!346, !41, i64 224}
!346 = !{!"bNodeTree", !61, i64 0, !41, i64 120, !41, i64 128, !37, i64 136, !41, i64 200, !41, i64 208, !37, i64 216, !44, i64 224, !44, i64 240, !36, i64 256, !36, i64 260, !36, i64 264, !36, i64 268, !36, i64 272, !39, i64 276, !39, i64 278, !36, i64 280, !36, i64 284, !39, i64 288, !39, i64 290, !36, i64 292, !133, i64 296, !44, i64 312, !44, i64 328, !41, i64 344, !347, i64 352, !36, i64 356, !41, i64 360, !41, i64 368, !41, i64 376, !41, i64 384, !41, i64 392, !41, i64 400, !41, i64 408, !41, i64 416, !41, i64 424}
!347 = !{!"bNodeInstanceKey", !36, i64 0}
!348 = !{!177, !41, i64 0}
!349 = !{!177, !36, i64 168}
!350 = distinct !{!350, !52}
!351 = !{!"transform_conversions.c:special_aftertrans_update__movieclip"}
!352 = !{!353, !36, i64 108}
!353 = !{!"MovieTrackingPlaneTrack", !41, i64 0, !41, i64 8, !37, i64 16, !41, i64 80, !36, i64 88, !36, i64 92, !41, i64 96, !36, i64 104, !36, i64 108, !41, i64 112, !40, i64 120, !36, i64 124}
!354 = !{!353, !36, i64 88}
!355 = !{!353, !41, i64 80}
!356 = !{!357, !36, i64 152}
!357 = !{!"MovieTrackingTrack", !41, i64 0, !41, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !36, i64 120, !36, i64 124, !41, i64 128, !37, i64 136, !40, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !37, i64 164, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !36, i64 184, !40, i64 188, !41, i64 192, !40, i64 200, !40, i64 204}
!358 = !{!359, !36, i64 208}
!359 = !{!"SpaceClip", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !360, i64 56, !41, i64 64, !361, i64 72, !36, i64 208, !39, i64 212, !39, i64 214, !36, i64 216, !37, i64 220, !40, i64 228, !40, i64 232, !36, i64 236, !37, i64 240, !37, i64 304, !36, i64 368, !39, i64 372, !39, i64 374, !36, i64 376, !36, i64 380, !37, i64 384, !210, i64 392}
!360 = !{!"MovieClipUser", !36, i64 0, !39, i64 4, !39, i64 6}
!361 = !{!"MovieClipScopes", !39, i64 0, !39, i64 2, !36, i64 4, !36, i64 8, !36, i64 12, !362, i64 16, !41, i64 80, !41, i64 88, !37, i64 96, !39, i64 104, !39, i64 106, !36, i64 108, !41, i64 112, !41, i64 120, !37, i64 128}
!362 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !36, i64 56, !36, i64 60}
!363 = !{!357, !36, i64 156}
!364 = !{!357, !36, i64 160}
!365 = distinct !{!365, !52}
!366 = distinct !{!366, !52}
!367 = !{!"transform_conversions.c:posttrans_fcurve_clean"}
!368 = !{!239, !37, i64 52}
!369 = !{!239, !37, i64 51}
!370 = !{!239, !37, i64 53}
!371 = distinct !{!371, !52}
!372 = distinct !{!372, !52}
!373 = distinct !{!373, !52}
!374 = !{!"transform_conversions.c:posttrans_action_clean"}
!375 = distinct !{!375, !52}
!376 = !{!"transform_conversions.c:posttrans_gpd_clean"}
!377 = !{!378, !41, i64 16}
!378 = !{!"bGPDlayer", !41, i64 0, !41, i64 8, !44, i64 16, !41, i64 32, !36, i64 40, !39, i64 44, !39, i64 46, !37, i64 48, !37, i64 64}
!379 = !{!380, !41, i64 0}
!380 = !{!"bGPDframe", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !36, i64 36}
!381 = !{!380, !36, i64 32}
!382 = distinct !{!382, !52}
!383 = !{!"transform_conversions.c:posttrans_mask_clean"}
!384 = !{!385, !41, i64 96}
!385 = !{!"MaskLayer", !41, i64 0, !41, i64 8, !37, i64 16, !44, i64 80, !44, i64 96, !41, i64 112, !41, i64 120, !40, i64 128, !37, i64 132, !37, i64 133, !37, i64 134, !37, i64 135, !37, i64 142, !37, i64 143}
!386 = !{!387, !41, i64 0}
!387 = !{!"MaskLayerShape", !41, i64 0, !41, i64 8, !41, i64 16, !36, i64 24, !36, i64 28, !37, i64 32, !37, i64 33}
!388 = !{!387, !36, i64 28}
!389 = distinct !{!389, !52}
!390 = !{!"transform_conversions.c:apply_targetless_ik"}
!391 = distinct !{!391, !52}
!392 = !{!69, !39, i64 268}
!393 = !{!69, !40, i64 264}
!394 = distinct !{!394, !52}
!395 = distinct !{!395, !52}
!396 = !{!"transform_conversions.c:pose_grab_with_ik_clear"}
!397 = distinct !{!397, !52}
!398 = !{!69, !39, i64 106}
!399 = !{!69, !41, i64 24}
!400 = !{!82, !41, i64 0}
!401 = distinct !{!401, !52}
!402 = !{!"transform_conversions.c:clear_trans_object_base_flags"}
!403 = !{!145, !36, i64 24}
!404 = distinct !{!404, !52}
!405 = !{!406, !36, i64 0}
!406 = !{!"TransDataTracking", !36, i64 0, !36, i64 4, !36, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !41, i64 56, !36, i64 64, !41, i64 72, !41, i64 80, !40, i64 88, !39, i64 92, !41, i64 96, !41, i64 104}
!407 = !{!406, !36, i64 8}
!408 = !{!406, !41, i64 16}
!409 = !{!406, !41, i64 56}
!410 = !{!406, !36, i64 64}
!411 = !{!406, !41, i64 72}
!412 = distinct !{!412, !52}
!413 = distinct !{!413, !52}
!414 = !{!406, !41, i64 80}
!415 = !{!406, !39, i64 92}
!416 = !{!406, !40, i64 88}
!417 = distinct !{!417, !52}
!418 = !{!"transform_conversions.c:cancelTransTracking"}
!419 = !{!406, !41, i64 96}
!420 = !{!406, !36, i64 4}
!421 = !{!362, !36, i64 60}
!422 = !{!357, !36, i64 120}
!423 = !{!357, !41, i64 128}
!424 = distinct !{!424, !52}
!425 = !{!406, !41, i64 104}
!426 = !{!427, !36, i64 36}
!427 = !{!"MovieTrackingPlaneMarker", !37, i64 0, !36, i64 32, !36, i64 36}
!428 = distinct !{!428, !52}
!429 = !{!"transform_conversions.c:copy_v2_v2"}
!430 = !{!"transform_conversions.c:sub_v2_v2v2"}
!431 = !{!"transform_conversions.c:sub_v2_v2"}
!432 = !{!"transform_conversions.c:add_v2_v2v2"}
!433 = !{!"transform_conversions.c:negate_v2_v2"}
!434 = !{!35, !41, i64 1248}
!435 = !{!436, !37, i64 0}
!436 = !{!"TransDataMasking", !37, i64 0, !37, i64 4, !37, i64 12, !37, i64 20, !41, i64 56, !37, i64 64, !37, i64 100, !37, i64 136, !36, i64 140}
!437 = !{!436, !41, i64 56}
!438 = !{!436, !36, i64 140}
!439 = !{!436, !37, i64 136}
!440 = !{!441, !37, i64 49}
!441 = !{!"MaskSplinePoint", !239, i64 0, !36, i64 72, !36, i64 76, !41, i64 80, !442, i64 88}
!442 = !{!"MaskParent", !36, i64 0, !36, i64 4, !41, i64 8, !37, i64 16, !37, i64 80, !37, i64 144, !37, i64 152}
!443 = !{!441, !37, i64 50}
!444 = distinct !{!444, !52}
!445 = !{!446, !41, i64 0}
!446 = !{!"TransDataPaintCurve", !41, i64 0, !37, i64 8}
!447 = !{!446, !37, i64 8}
!448 = distinct !{!448, !52}
!449 = !{!35, !41, i64 64}
!450 = !{!35, !39, i64 462}
!451 = !{!145, !36, i64 16}
!452 = !{!281, !36, i64 224}
!453 = !{!60, !37, i64 1160}
!454 = !{!455, !39, i64 214}
!455 = !{!"ARegion", !41, i64 0, !41, i64 8, !226, i64 16, !134, i64 176, !134, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !40, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !41, i64 240, !44, i64 248, !44, i64 264, !44, i64 280, !44, i64 296, !44, i64 312, !44, i64 328, !44, i64 344, !41, i64 360, !41, i64 368, !41, i64 376}
!456 = !{!455, !41, i64 376}
!457 = !{!458, !37, i64 809}
!458 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !41, i64 640, !41, i64 648, !41, i64 656, !41, i64 664, !41, i64 672, !41, i64 680, !41, i64 688, !37, i64 696, !37, i64 760, !40, i64 776, !40, i64 780, !40, i64 784, !40, i64 788, !37, i64 792, !40, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !39, i64 824, !39, i64 826, !37, i64 828, !39, i64 844, !39, i64 846, !40, i64 848, !37, i64 852, !40, i64 864, !37, i64 868}
!459 = !{!281, !41, i64 96}
!460 = !{!"transform_conversions.c:createTransTexspace"}
!461 = !{!35, !41, i64 1288}
!462 = !{!60, !39, i64 1044}
!463 = !{!332, !41, i64 40}
!464 = !{!332, !41, i64 128}
!465 = !{!"transform_conversions.c:createTransEdge"}
!466 = !{i8 0, i8 17}
!467 = distinct !{!467, !52}
!468 = !{!469, !41, i64 24}
!469 = !{!"BMEdge", !470, i64 0, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !471, i64 48, !471, i64 64}
!470 = !{!"BMHeader", !41, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!471 = !{!"BMDiskLink", !41, i64 0, !41, i64 8}
!472 = !{!469, !41, i64 32}
!473 = !{!469, !41, i64 0}
!474 = !{!50, !41, i64 40}
!475 = !{!50, !40, i64 48}
!476 = distinct !{!476, !52}
!477 = !{!"transform_conversions.c:sort_trans_data"}
!478 = distinct !{!478, !52}
!479 = distinct !{!479, !52}
!480 = !{i64 0, i64 4, !123, i64 4, i64 4, !123, i64 8, i64 4, !123, i64 16, i64 8, !64, i64 24, i64 12, !88, i64 40, i64 8, !64, i64 48, i64 4, !123, i64 52, i64 12, !88, i64 64, i64 36, !88, i64 100, i64 36, !88, i64 136, i64 36, !88, i64 176, i64 8, !64, i64 184, i64 8, !64, i64 192, i64 8, !64, i64 200, i64 8, !64, i64 208, i64 8, !64, i64 216, i64 4, !58, i64 220, i64 2, !91}
!481 = distinct !{!481, !52}
!482 = !{!"transform_conversions.c:set_prop_dist"}
!483 = distinct !{!483, !52}
!484 = distinct !{!484, !52}
!485 = !{!"transform_conversions.c:createTransMaskingData"}
!486 = !{!385, !37, i64 143}
!487 = distinct !{!487, !52}
!488 = !{!489, !36, i64 20}
!489 = !{!"MaskSpline", !41, i64 0, !41, i64 8, !39, i64 16, !37, i64 18, !37, i64 19, !36, i64 20, !41, i64 24, !442, i64 32, !41, i64 216}
!490 = !{!489, !41, i64 24}
!491 = !{!441, !37, i64 51}
!492 = !{!441, !37, i64 52}
!493 = !{!441, !37, i64 53}
!494 = distinct !{!494, !52}
!495 = distinct !{!495, !52}
!496 = distinct !{!496, !52}
!497 = distinct !{!497, !52}
!498 = distinct !{!498, !52}
!499 = !{!"transform_conversions.c:createTransPaintCurveVerts"}
!500 = !{!267, !41, i64 0}
!501 = !{!502, !41, i64 808}
!502 = !{!"Brush", !61, i64 0, !503, i64 120, !41, i64 144, !504, i64 152, !504, i64 464, !41, i64 776, !41, i64 784, !41, i64 792, !41, i64 800, !41, i64 808, !37, i64 816, !40, i64 1840, !39, i64 1844, !39, i64 1846, !40, i64 1848, !36, i64 1852, !36, i64 1856, !36, i64 1860, !40, i64 1864, !36, i64 1868, !36, i64 1872, !36, i64 1876, !36, i64 1880, !40, i64 1884, !40, i64 1888, !37, i64 1892, !40, i64 1904, !37, i64 1908, !36, i64 1920, !40, i64 1924, !40, i64 1928, !36, i64 1932, !36, i64 1936, !36, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !40, i64 1948, !40, i64 1952, !40, i64 1956, !40, i64 1960, !40, i64 1964, !36, i64 1968, !36, i64 1972, !36, i64 1976, !40, i64 1980, !40, i64 1984, !36, i64 1988, !36, i64 1992, !40, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!503 = !{!"BrushClone", !41, i64 0, !37, i64 8, !40, i64 16, !40, i64 20}
!504 = !{!"MTex", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !41, i64 8, !41, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !40, i64 116, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !39, i64 128, !39, i64 130, !37, i64 132, !37, i64 133, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308}
!505 = !{!506, !36, i64 128}
!506 = !{!"PaintCurve", !61, i64 0, !41, i64 120, !36, i64 128, !36, i64 132}
!507 = !{!506, !41, i64 120}
!508 = !{!509, !37, i64 51}
!509 = !{!"PaintCurvePoint", !239, i64 0, !40, i64 72}
!510 = !{!509, !37, i64 52}
!511 = !{!509, !37, i64 53}
!512 = distinct !{!512, !52}
!513 = distinct !{!513, !52}
!514 = !{!"transform_conversions.c:createTransUVs"}
!515 = !{!265, !37, i64 50}
!516 = !{!517, !36, i64 20}
!517 = !{!"UvElementMap", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 20, !41, i64 24}
!518 = !{!519, !41, i64 0}
!519 = !{!"BMFace", !470, i64 0, !41, i64 16, !41, i64 24, !36, i64 32, !37, i64 36, !39, i64 48}
!520 = !{!521, !39, i64 20}
!521 = !{!"UvElement", !41, i64 0, !41, i64 8, !39, i64 16, !37, i64 18, !37, i64 19, !39, i64 20}
!522 = distinct !{!522, !52}
!523 = distinct !{!523, !52}
!524 = !{!525, !41, i64 0}
!525 = !{!"BMLoop", !470, i64 0, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64}
!526 = distinct !{!526, !52}
!527 = distinct !{!527, !52}
!528 = !{!"transform_conversions.c:createTransActionData"}
!529 = !{!300, !41, i64 32}
!530 = !{!228, !36, i64 24}
!531 = distinct !{!531, !52}
!532 = distinct !{!532, !52}
!533 = distinct !{!533, !52}
!534 = !{!126, !39, i64 712}
!535 = !{!"transform_conversions.c:createTransNlaData"}
!536 = !{!300, !41, i64 24}
!537 = distinct !{!537, !52}
!538 = !{!539, !39, i64 190}
!539 = !{!"NlaStrip", !41, i64 0, !41, i64 8, !44, i64 16, !41, i64 32, !41, i64 40, !44, i64 48, !44, i64 64, !37, i64 80, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !39, i64 184, !39, i64 186, !39, i64 188, !39, i64 190, !41, i64 192, !36, i64 200, !36, i64 204}
!540 = !{!539, !36, i64 200}
!541 = !{!539, !40, i64 152}
!542 = !{i8 0, i8 2}
!543 = !{!539, !40, i64 156}
!544 = distinct !{!544, !52}
!545 = distinct !{!545, !52}
!546 = !{!228, !41, i64 56}
!547 = !{!228, !41, i64 48}
!548 = !{!549, !41, i64 0}
!549 = !{!"TransDataNla", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !37, i64 44, !36, i64 56, !36, i64 60}
!550 = !{!549, !41, i64 16}
!551 = !{!549, !41, i64 8}
!552 = !{!549, !41, i64 24}
!553 = !{!549, !36, i64 56}
!554 = !{!555, !39, i64 58}
!555 = !{!"SpaceNla", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !39, i64 56, !39, i64 58, !36, i64 60, !41, i64 64, !226, i64 72}
!556 = !{!170, !39, i64 8948}
!557 = !{!549, !36, i64 60}
!558 = distinct !{!558, !52}
!559 = distinct !{!559, !52}
!560 = !{!"transform_conversions.c:createTransSeqData"}
!561 = !{!35, !41, i64 1144}
!562 = distinct !{!562, !52}
!563 = distinct !{!563, !52}
!564 = !{!"transform_conversions.c:createTransGraphEditData"}
!565 = distinct !{!565, !52}
!566 = distinct !{!566, !52}
!567 = !{!300, !41, i64 48}
!568 = !{!239, !37, i64 49}
!569 = !{!239, !37, i64 50}
!570 = distinct !{!570, !52}
!571 = distinct !{!571, !52}
!572 = !{!"transform_conversions.c:createTransNodeData"}
!573 = distinct !{!573, !52}
!574 = distinct !{!574, !52}
!575 = !{!"transform_conversions.c:createTransTrackingData"}
!576 = !{!"transform_conversions.c:createTransEditVerts"}
!577 = !{!578, !37, i64 1365}
!578 = !{!"Mesh", !61, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !579, i64 280, !579, i64 480, !579, i64 680, !579, i64 880, !579, i64 1080, !36, i64 1280, !36, i64 1284, !36, i64 1288, !36, i64 1292, !36, i64 1296, !36, i64 1300, !36, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !36, i64 1344, !39, i64 1348, !39, i64 1350, !40, i64 1352, !36, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !39, i64 1366, !41, i64 1368}
!579 = !{!"CustomData", !41, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !41, i64 184, !41, i64 192}
!580 = !{!337, !39, i64 92}
!581 = !{!582, !36, i64 16}
!582 = !{!"BMesh", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 29, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !36, i64 88, !36, i64 92, !36, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !36, i64 128, !41, i64 136, !579, i64 144, !579, i64 344, !579, i64 544, !579, i64 744, !39, i64 944, !36, i64 948, !36, i64 952, !36, i64 956, !44, i64 960, !41, i64 976, !44, i64 984, !41, i64 1000}
!583 = !{!582, !36, i64 20}
!584 = !{!582, !36, i64 24}
!585 = distinct !{!585, !52}
!586 = !{!582, !36, i64 0}
!587 = !{!35, !39, i64 1160}
!588 = distinct !{!588, !52}
!589 = !{!590, !41, i64 0}
!590 = !{!"BMVert", !470, i64 0, !41, i64 16, !37, i64 24, !37, i64 36, !41, i64 48}
!591 = distinct !{!591, !52}
!592 = distinct !{!592, !52}
!593 = !{!"transform_conversions.c:createTransCurveVerts"}
!594 = !{!595, !39, i64 248}
!595 = !{!"Curve", !61, i64 0, !41, i64 120, !41, i64 128, !44, i64 136, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !39, i64 244, !39, i64 246, !39, i64 248, !39, i64 250, !40, i64 252, !40, i64 256, !36, i64 260, !39, i64 264, !39, i64 266, !36, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !39, i64 284, !39, i64 286, !39, i64 288, !39, i64 290, !36, i64 292, !36, i64 296, !37, i64 300, !39, i64 304, !37, i64 306, !37, i64 307, !40, i64 308, !40, i64 312, !40, i64 316, !40, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !40, i64 340, !40, i64 344, !36, i64 348, !36, i64 352, !36, i64 356, !36, i64 360, !36, i64 364, !41, i64 368, !41, i64 376, !37, i64 384, !41, i64 448, !41, i64 456, !41, i64 464, !41, i64 472, !41, i64 480, !36, i64 488, !36, i64 492, !41, i64 496, !596, i64 504, !40, i64 512, !40, i64 516, !40, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!596 = !{!"CharInfo", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !39, i64 6}
!597 = !{!595, !41, i64 152}
!598 = !{!599, !39, i64 16}
!599 = !{!"Nurb", !41, i64 0, !41, i64 8, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !36, i64 24, !36, i64 28, !37, i64 32, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !39, i64 80, !39, i64 82, !36, i64 84}
!600 = !{!599, !36, i64 24}
!601 = !{!599, !41, i64 72}
!602 = !{!239, !37, i64 54}
!603 = distinct !{!603, !52}
!604 = !{!599, !36, i64 28}
!605 = !{!599, !41, i64 64}
!606 = !{!607, !39, i64 26}
!607 = !{!"BPoint", !37, i64 0, !40, i64 16, !40, i64 20, !39, i64 24, !39, i64 26, !40, i64 28, !40, i64 32}
!608 = !{!607, !39, i64 24}
!609 = distinct !{!609, !52}
!610 = distinct !{!610, !52}
!611 = !{!239, !40, i64 44}
!612 = !{!239, !40, i64 36}
!613 = distinct !{!613, !52}
!614 = distinct !{!614, !52}
!615 = distinct !{!615, !52}
!616 = !{!"transform_conversions.c:createTransLatticeVerts"}
!617 = !{!618, !41, i64 272}
!618 = !{!"Lattice", !61, i64 0, !41, i64 120, !39, i64 128, !39, i64 130, !39, i64 132, !39, i64 134, !39, i64 136, !39, i64 138, !39, i64 140, !39, i64 142, !37, i64 144, !37, i64 145, !37, i64 146, !37, i64 147, !36, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !37, i64 208, !41, i64 272}
!619 = !{!620, !41, i64 0}
!620 = !{!"EditLatt", !41, i64 0, !36, i64 8, !37, i64 12}
!621 = !{!618, !39, i64 128}
!622 = !{!618, !39, i64 130}
!623 = !{!618, !39, i64 132}
!624 = !{!618, !41, i64 176}
!625 = distinct !{!625, !52}
!626 = distinct !{!626, !52}
!627 = !{!"transform_conversions.c:createTransMBallVerts"}
!628 = !{!629, !41, i64 160}
!629 = !{!"MetaBall", !61, i64 0, !41, i64 120, !44, i64 128, !44, i64 144, !41, i64 160, !41, i64 168, !41, i64 176, !37, i64 184, !37, i64 185, !39, i64 186, !39, i64 188, !39, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !40, i64 228, !40, i64 232, !40, i64 236, !41, i64 240}
!630 = !{!631, !39, i64 26}
!631 = !{!"MetaElem", !41, i64 0, !41, i64 8, !41, i64 16, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !37, i64 44, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !41, i64 88, !41, i64 96}
!632 = distinct !{!632, !52}
!633 = !{!631, !40, i64 60}
!634 = !{!631, !40, i64 64}
!635 = !{!631, !40, i64 68}
!636 = !{!332, !41, i64 64}
!637 = distinct !{!637, !52}
!638 = !{!"transform_conversions.c:createTransArmatureVerts"}
!639 = !{!106, !36, i64 136}
!640 = distinct !{!640, !52}
!641 = !{!106, !40, i64 152}
!642 = !{!106, !40, i64 176}
!643 = !{!67, !36, i64 196}
!644 = !{!50, !39, i64 220}
!645 = distinct !{!645, !52}
!646 = !{!"transform_conversions.c:createTransPose"}
!647 = distinct !{!647, !52}
!648 = distinct !{!648, !52}
!649 = !{!"transform_conversions.c:createTransParticleVerts"}
!650 = !{!265, !36, i64 304}
!651 = !{!165, !39, i64 52}
!652 = distinct !{!652, !52}
!653 = distinct !{!653, !52}
!654 = !{!268, !39, i64 0}
!655 = !{!165, !41, i64 24}
!656 = distinct !{!656, !52}
!657 = distinct !{!657, !52}
!658 = !{!"transform_conversions.c:createTransObject"}
!659 = !{!660, !41, i64 32}
!660 = !{!"CollectionPointerLink", !41, i64 0, !41, i64 8, !661, i64 16}
!661 = !{!"PointerRNA", !662, i64 0, !41, i64 8, !41, i64 16}
!662 = !{!"", !41, i64 0}
!663 = !{!60, !39, i64 954}
!664 = !{!60, !39, i64 1040}
!665 = !{!332, !36, i64 320}
!666 = !{!60, !41, i64 24}
!667 = distinct !{!667, !52}
!668 = !{!60, !39, i64 948}
!669 = distinct !{!669, !52}
!670 = !{!"transform_conversions.c:_bm_elem_flag_enable"}
!671 = !{!470, !37, i64 13}
!672 = !{!"transform_conversions.c:gpf_cmp_frame"}
!673 = !{!380, !36, i64 36}
!674 = !{!"transform_conversions.c:masklay_shape_cmp_frame"}
!675 = !{!387, !37, i64 32}
!676 = !{!"transform_conversions.c:BM_iter_new"}
!677 = !{!"transform_conversions.c:_bm_elem_flag_test"}
!678 = !{!"transform_conversions.c:BM_iter_step"}
!679 = !{!680, !41, i64 48}
!680 = !{!"BMIter", !37, i64 0, !41, i64 40, !41, i64 48, !36, i64 56, !37, i64 60}
!681 = !{!"transform_conversions.c:BM_iter_init"}
!682 = !{!680, !37, i64 60}
!683 = !{!680, !41, i64 40}
!684 = !{!582, !41, i64 32}
!685 = !{!582, !41, i64 40}
!686 = !{!582, !41, i64 56}
!687 = !{!"transform_conversions.c:normalize_v3_v3"}
!688 = !{!"transform_conversions.c:sub_v3_v3v3"}
!689 = !{!"transform_conversions.c:sub_v3_v3"}
!690 = !{!"transform_conversions.c:len_squared_v3"}
!691 = !{!"transform_conversions.c:dot_v3v3"}
!692 = !{!"transform_conversions.c:mul_v3_v3fl"}
!693 = !{!"transform_conversions.c:zero_v3"}
!694 = !{!"transform_conversions.c:MaskPointToTransData"}
!695 = distinct !{!695, !52}
!696 = !{!"transform_conversions.c:MaskHandleToTransData"}
!697 = !{!"transform_conversions.c:PaintCurvePointToTransData"}
!698 = distinct !{!698, !52}
!699 = !{!"transform_conversions.c:PaintCurveConvertHandle"}
!700 = !{!"transform_conversions.c:_bm_elem_flag_disable"}
!701 = !{!"transform_conversions.c:UVsToTransData"}
!702 = !{!"transform_conversions.c:count_fcurve_keys"}
!703 = distinct !{!703, !52}
!704 = !{!"transform_conversions.c:count_gplayer_frames"}
!705 = distinct !{!705, !52}
!706 = !{!"transform_conversions.c:count_masklayer_frames"}
!707 = distinct !{!707, !52}
!708 = !{!"transform_conversions.c:GPLayerToTransData"}
!709 = distinct !{!709, !52}
!710 = !{!"transform_conversions.c:MaskLayerToTransData"}
!711 = distinct !{!711, !52}
!712 = !{!"transform_conversions.c:ActionFCurveToTransData"}
!713 = distinct !{!713, !52}
!714 = !{!"transform_conversions.c:FrameOnMouseSide"}
!715 = !{!"transform_conversions.c:TimeToTransData"}
!716 = !{!"transform_conversions.c:freeSeqData"}
!717 = distinct !{!717, !52}
!718 = !{!185, !41, i64 16}
!719 = distinct !{!719, !52}
!720 = distinct !{!720, !52}
!721 = !{!185, !36, i64 136}
!722 = distinct !{!722, !52}
!723 = distinct !{!723, !52}
!724 = distinct !{!724, !52}
!725 = distinct !{!725, !52}
!726 = distinct !{!726, !52}
!727 = distinct !{!727, !52}
!728 = distinct !{!728, !52}
!729 = !{!"transform_conversions.c:SeqTransCount"}
!730 = distinct !{!730, !52}
!731 = !{!"transform_conversions.c:SeqToTransData_Recursive"}
!732 = distinct !{!732, !52}
!733 = !{!"transform_conversions.c:min_ii"}
!734 = !{!"transform_conversions.c:SeqTransInfo"}
!735 = !{!"transform_conversions.c:SeqToTransData"}
!736 = !{!"transform_conversions.c:graph_edit_is_translation_mode"}
!737 = !{!"transform_conversions.c:graph_edit_use_local_center"}
!738 = !{!"transform_conversions.c:mul_v3_fl"}
!739 = !{!"transform_conversions.c:initTransDataCurveHandles"}
!740 = !{!252, !37, i64 0}
!741 = !{!252, !37, i64 1}
!742 = !{!"transform_conversions.c:bezt_to_transdata"}
!743 = !{!"transform_conversions.c:is_node_parent_select"}
!744 = distinct !{!744, !52}
!745 = !{!"transform_conversions.c:NodeToTransData"}
!746 = !{!177, !40, i64 280}
!747 = !{!177, !40, i64 284}
!748 = !{!"transform_conversions.c:createTransTrackingCurvesData"}
!749 = distinct !{!749, !52}
!750 = distinct !{!750, !52}
!751 = distinct !{!751, !52}
!752 = distinct !{!752, !52}
!753 = !{!"transform_conversions.c:createTransTrackingTracksData"}
!754 = distinct !{!754, !52}
!755 = distinct !{!755, !52}
!756 = distinct !{!756, !52}
!757 = distinct !{!757, !52}
!758 = !{!"transform_conversions.c:transDataTrackingFree"}
!759 = !{!"transform_conversions.c:markerToTransCurveDataInit"}
!760 = !{!362, !36, i64 56}
!761 = !{!"transform_conversions.c:trackToTransData"}
!762 = distinct !{!762, !52}
!763 = !{!"transform_conversions.c:planeTrackToTransData"}
!764 = distinct !{!764, !52}
!765 = !{!"transform_conversions.c:markerToTransDataInit"}
!766 = !{!406, !41, i64 24}
!767 = !{!"transform_conversions.c:planeMarkerToTransDataInit"}
!768 = !{!"transform_conversions.c:editmesh_set_connectivity_distance"}
!769 = distinct !{!769, !52}
!770 = !{!582, !37, i64 28}
!771 = !{!590, !41, i64 48}
!772 = distinct !{!772, !52}
!773 = !{!525, !41, i64 32}
!774 = !{!519, !36, i64 32}
!775 = !{!525, !41, i64 56}
!776 = !{!525, !41, i64 16}
!777 = distinct !{!777, !52}
!778 = distinct !{!778, !52}
!779 = !{!780, !41, i64 8}
!780 = !{!"LinkNode", !41, i64 0, !41, i64 8}
!781 = distinct !{!781, !52}
!782 = distinct !{!782, !52}
!783 = !{!"transform_conversions.c:editmesh_islands_info_calc"}
!784 = !{!785, !37, i64 24}
!785 = !{!"BMEditSelection", !41, i64 0, !41, i64 8, !41, i64 16, !37, i64 24}
!786 = !{!785, !41, i64 16}
!787 = distinct !{!787, !52}
!788 = distinct !{!788, !52}
!789 = distinct !{!789, !52}
!790 = !{!"transform_conversions.c:VertsToTransData"}
!791 = !{!"transform_conversions.c:_bm_elem_index_get"}
!792 = !{!470, !36, i64 8}
!793 = !{!"transform_conversions.c:_bm_elem_index_set"}
!794 = !{!"transform_conversions.c:BM_edge_is_wire"}
!795 = !{!469, !41, i64 40}
!796 = !{!"transform_conversions.c:BM_edge_other_vert"}
!797 = !{!"transform_conversions.c:bmesh_test_dist_add"}
!798 = !{!"transform_conversions.c:len_v3"}
!799 = !{!"transform_conversions.c:add_v3_v3"}
!800 = !{!"transform_conversions.c:normalize_v3"}
!801 = !{!"transform_conversions.c:transform_around_single_fallback"}
!802 = !{!"transform_conversions.c:calc_distanceCurveVerts"}
!803 = distinct !{!803, !52}
!804 = distinct !{!804, !52}
!805 = !{!"transform_conversions.c:len_v3v3"}
!806 = !{!"transform_conversions.c:pose_grab_with_ik"}
!807 = distinct !{!807, !52}
!808 = distinct !{!808, !52}
!809 = distinct !{!809, !52}
!810 = !{!"transform_conversions.c:add_pose_transdata"}
!811 = !{!332, !41, i64 104}
!812 = !{!332, !41, i64 88}
!813 = !{!332, !40, i64 96}
!814 = !{!71, !40, i64 272}
!815 = !{!50, !41, i64 184}
!816 = !{!"transform_conversions.c:pose_grab_with_ik_add"}
!817 = !{!82, !39, i64 26}
!818 = distinct !{!818, !52}
!819 = !{i64 0, i64 8, !64, i64 8, i64 2, !91, i64 10, i64 2, !91, i64 12, i64 2, !91, i64 14, i64 2, !91, i64 16, i64 64, !88, i64 80, i64 8, !64, i64 88, i64 64, !88, i64 152, i64 4, !123, i64 156, i64 4, !123, i64 160, i64 4, !123, i64 164, i64 12, !88, i64 176, i64 2, !91, i64 178, i64 2, !91, i64 180, i64 4, !123}
!820 = distinct !{!820, !52}
!821 = !{!"transform_conversions.c:pose_grab_with_ik_children"}
!822 = distinct !{!822, !52}
!823 = !{!"transform_conversions.c:constraints_list_needinv"}
!824 = !{!825, !36, i64 8}
!825 = !{!"bChildOfConstraint", !41, i64 0, !36, i64 8, !36, i64 12, !37, i64 16, !37, i64 80}
!826 = !{!827, !36, i64 8}
!827 = !{!"bRotateLikeConstraint", !41, i64 0, !36, i64 8, !36, i64 12, !37, i64 16}
!828 = distinct !{!828, !52}
!829 = !{!"transform_conversions.c:set_trans_object_base_flags"}
!830 = !{!831, !41, i64 1888}
!831 = !{!"Main", !41, i64 0, !41, i64 8, !37, i64 16, !39, i64 1040, !39, i64 1042, !39, i64 1044, !39, i64 1046, !63, i64 1048, !37, i64 1056, !39, i64 1072, !41, i64 1080, !44, i64 1088, !44, i64 1104, !44, i64 1120, !44, i64 1136, !44, i64 1152, !44, i64 1168, !44, i64 1184, !44, i64 1200, !44, i64 1216, !44, i64 1232, !44, i64 1248, !44, i64 1264, !44, i64 1280, !44, i64 1296, !44, i64 1312, !44, i64 1328, !44, i64 1344, !44, i64 1360, !44, i64 1376, !44, i64 1392, !44, i64 1408, !44, i64 1424, !44, i64 1440, !44, i64 1456, !44, i64 1472, !44, i64 1488, !44, i64 1504, !44, i64 1520, !44, i64 1536, !44, i64 1552, !44, i64 1568, !44, i64 1584, !44, i64 1600, !44, i64 1616, !37, i64 1632, !41, i64 1888, !41, i64 1896}
!832 = distinct !{!832, !52}
!833 = !{!60, !41, i64 216}
!834 = distinct !{!834, !52}
!835 = distinct !{!835, !52}
!836 = distinct !{!836, !52}
!837 = !{!"transform_conversions.c:count_proportional_objects"}
!838 = distinct !{!838, !52}
!839 = distinct !{!839, !52}
!840 = distinct !{!840, !52}
!841 = distinct !{!841, !52}
!842 = distinct !{!842, !52}
!843 = !{!"transform_conversions.c:ObjectToTransData"}
!844 = !{!60, !40, i64 616}
!845 = !{!60, !41, i64 1176}
!846 = !{!60, !39, i64 952}
!847 = !{!"transform_conversions.c:mark_children"}
