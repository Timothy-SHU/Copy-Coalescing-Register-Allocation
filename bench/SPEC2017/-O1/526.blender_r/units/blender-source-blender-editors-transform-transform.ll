; ModuleID = 'blender/source/blender/editors/transform/transform.c'
source_filename = "blender/source/blender/editors/transform/transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.BMAllocTemplate = type { i32, i32, i32, i32 }
%struct.TransInfo = type { i32, i32, i32, i16, i32, float, float, ptr, ptr, i32, ptr, ptr, ptr, %struct.TransCon, %struct.TransSnap, %struct.NumInput, %struct.MouseInput, i32, float, [20 x i8], [3 x float], [2 x float], [2 x i32], i16, i16, [3 x float], i8, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i16, i16, i8, i8, [3 x float], [3 x [3 x float]], [3 x [3 x float]], [64 x i8], ptr, ptr, ptr, i16, i16, i16, i16, i16, [4 x float], [4 x float], [3 x float], [3 x float], i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32], float, ptr, [3 x [3 x float]], ptr, ptr, ptr, ptr }
%struct.TransCon = type { i16, [50 x i8], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x float], [2 x i32], i32, ptr, ptr, ptr, ptr }
%struct.TransSnap = type { i16, i16, i16, i16, i8, i8, i8, i8, i16, [3 x float], [3 x float], [3 x float], [3 x float], i8, %struct.ListBase, ptr, float, double, ptr, ptr, ptr, ptr }
%struct.NumInput = type { i16, i32, [3 x i32], i8, i16, [3 x i16], [3 x float], [3 x float], [3 x float], i16, [64 x i8], i32 }
%struct.MouseInput = type { ptr, ptr, [2 x i32], i8, [2 x i32], [2 x float], float, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.wmKeyMap = type { ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.EdgeSlideData = type { ptr, i32, ptr, [2 x i32], [2 x i32], ptr, i8, ptr, float, i8, i8, i32 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.TransDataEdgeSlideVert = type { ptr, ptr, ptr, [3 x float], float, [3 x float], [3 x float], i32 }
%struct.VertSlideData = type { ptr, i32, ptr, float, i8, i8, i32 }
%struct.TransDataVertSlideVert = type { ptr, [3 x float], [2 x float], ptr, ptr, i32, i32 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.TransData = type { float, float, float, ptr, [3 x float], ptr, float, [3 x float], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], ptr, ptr, ptr, ptr, ptr, i32, i16 }
%struct.BendCustomData = type { [3 x float], [3 x float], [3 x float], [3 x float], float }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.SpaceAction = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.bDopeSheet, i8, i8, i16, float }
%struct.bDopeSheet = type { ptr, %struct.ListBase, ptr, [64 x i8], i32, i32, i32, i32 }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { float, float }
%struct.bConstraintOb = type { ptr, ptr, ptr, [4 x [4 x float]], [4 x [4 x float]], i16, i16 }
%struct.TransDataExtension = type { [3 x float], [4 x float], [3 x float], ptr, [3 x float], ptr, [4 x float], ptr, float, ptr, [4 x float], ptr, [3 x float], [4 x [4 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.bConstraintTypeInfo = type { i16, i16, [32 x i8], [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bSizeLimitConstraint = type { float, float, float, float, float, float, i16, i16 }
%struct.bLocLimitConstraint = type { float, float, float, float, float, float, i16, i16 }
%struct.bDistLimitConstraint = type { ptr, [64 x i8], float, float, i16, i16, i32 }
%struct.bRotLimitConstraint = type { float, float, float, float, float, float, i16, i16 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.SpaceIpo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.ListBase, i16, i16, i32, float, i32 }
%struct.SpaceNla = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i16, i16, i32, ptr, %struct.View2D }
%struct.TransData2D = type { [3 x float], ptr, ptr, ptr, [2 x float], [2 x float] }

@.str = private unnamed_addr constant [34 x i8] c"%s: called in an invalid context\0A\00", align 1
@__func__.convertViewVec = private unnamed_addr constant [15 x i8] c"convertViewVec\00", align 1
@transform_modal_keymap.modal_items = internal global [27 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.1, i32 0, ptr @.str.2, ptr @.str.3 }, %struct.EnumPropertyItem { i32 2, ptr @.str.4, i32 0, ptr @.str.5, ptr @.str.3 }, %struct.EnumPropertyItem { i32 3, ptr @.str.6, i32 0, ptr @.str.7, ptr @.str.3 }, %struct.EnumPropertyItem { i32 4, ptr @.str.8, i32 0, ptr @.str.9, ptr @.str.3 }, %struct.EnumPropertyItem { i32 5, ptr @.str.10, i32 0, ptr @.str.11, ptr @.str.3 }, %struct.EnumPropertyItem { i32 6, ptr @.str.12, i32 0, ptr @.str.13, ptr @.str.3 }, %struct.EnumPropertyItem { i32 7, ptr @.str.14, i32 0, ptr @.str.15, ptr @.str.3 }, %struct.EnumPropertyItem { i32 8, ptr @.str.16, i32 0, ptr @.str.17, ptr @.str.3 }, %struct.EnumPropertyItem { i32 9, ptr @.str.18, i32 0, ptr @.str.19, ptr @.str.3 }, %struct.EnumPropertyItem { i32 10, ptr @.str.20, i32 0, ptr @.str.21, ptr @.str.3 }, %struct.EnumPropertyItem { i32 11, ptr @.str.22, i32 0, ptr @.str.23, ptr @.str.3 }, %struct.EnumPropertyItem { i32 12, ptr @.str.24, i32 0, ptr @.str.25, ptr @.str.3 }, %struct.EnumPropertyItem { i32 13, ptr @.str.26, i32 0, ptr @.str.27, ptr @.str.3 }, %struct.EnumPropertyItem { i32 14, ptr @.str.28, i32 0, ptr @.str.29, ptr @.str.3 }, %struct.EnumPropertyItem { i32 15, ptr @.str.30, i32 0, ptr @.str.31, ptr @.str.3 }, %struct.EnumPropertyItem { i32 16, ptr @.str.32, i32 0, ptr @.str.33, ptr @.str.3 }, %struct.EnumPropertyItem { i32 17, ptr @.str.34, i32 0, ptr @.str.35, ptr @.str.3 }, %struct.EnumPropertyItem { i32 18, ptr @.str.36, i32 0, ptr @.str.37, ptr @.str.3 }, %struct.EnumPropertyItem { i32 19, ptr @.str.38, i32 0, ptr @.str.39, ptr @.str.3 }, %struct.EnumPropertyItem { i32 20, ptr @.str.40, i32 0, ptr @.str.41, ptr @.str.3 }, %struct.EnumPropertyItem { i32 21, ptr @.str.42, i32 0, ptr @.str.43, ptr @.str.3 }, %struct.EnumPropertyItem { i32 22, ptr @.str.44, i32 0, ptr @.str.45, ptr @.str.3 }, %struct.EnumPropertyItem { i32 23, ptr @.str.46, i32 0, ptr @.str.47, ptr @.str.3 }, %struct.EnumPropertyItem { i32 24, ptr @.str.48, i32 0, ptr @.str.49, ptr @.str.3 }, %struct.EnumPropertyItem { i32 25, ptr @.str.50, i32 0, ptr @.str.51, ptr @.str.3 }, %struct.EnumPropertyItem { i32 26, ptr @.str.52, i32 0, ptr @.str.53, ptr @.str.3 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"CANCEL\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Cancel\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"CONFIRM\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Confirm\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"TRANSLATE\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Translate\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ROTATE\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Rotate\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"RESIZE\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Resize\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"SNAP_INV_ON\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Invert Snap On\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"SNAP_INV_OFF\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Invert Snap Off\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"SNAP_TOGGLE\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Snap Toggle\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"AXIS_X\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Orientation X axis\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"AXIS_Y\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Orientation Y axis\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"AXIS_Z\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Orientation Z axis\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"PLANE_X\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"Orientation X plane\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"PLANE_Y\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"Orientation Y plane\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"PLANE_Z\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"Orientation Z plane\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"CONS_OFF\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"Remove Constraints\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"ADD_SNAP\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"Add Snap Point\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"REMOVE_SNAP\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"Remove Last Snap Point\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"INCREMENT_UP\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"Numinput Increment Up\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"INCREMENT_DOWN\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"Numinput Increment Down\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"PROPORTIONAL_SIZE_UP\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"Increase Proportional Influence\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"PROPORTIONAL_SIZE_DOWN\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"Decrease Proportional Influence\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"AUTOIK_CHAIN_LEN_UP\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"Increase Max AutoIK Chain Length\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"AUTOIK_CHAIN_LEN_DOWN\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"Decrease Max AutoIK Chain Length\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"EDGESLIDE_EDGE_NEXT\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"Select next Edge Slide Edge\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"EDGESLIDE_PREV_NEXT\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c"Select previous Edge Slide Edge\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"PROPORTIONAL_SIZE\00", align 1
@.str.53 = private unnamed_addr constant [30 x i8] c"Adjust Proportional Influence\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"Transform Modal Map\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"locking %s X\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"locking %s Y\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"locking %s Z\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"along local Z\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.60 = private unnamed_addr constant [15 x i8] c"TransInfo data\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.61 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"proportional\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"proportional_size\00", align 1
@.str.65 = private unnamed_addr constant [26 x i8] c"proportional_edit_falloff\00", align 1
@.str.66 = private unnamed_addr constant [23 x i8] c"constraint_orientation\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"mirror\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"constraint_axis\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"texture_space\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"along X\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"along %s X\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"along Y\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"along %s Y\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"along Z\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"along %s Z\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.78 = private unnamed_addr constant [15 x i8] c"Auto Keying On\00", align 1
@__func__.initBend = private unnamed_addr constant [9 x i8] c"initBend\00", align 1
@.str.79 = private unnamed_addr constant [40 x i8] c"Bend Angle: %s Radius: %s Alt, Clamp %s\00", align 1
@.str.80 = private unnamed_addr constant [45 x i8] c"Bend Angle: %.3f Radius: %.4f, Alt, Clamp %s\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"Shear: %s %s\00", align 1
@.str.82 = private unnamed_addr constant [48 x i8] c"Shear: %.3f %s (Press X or Y to set shear axis)\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"%.4f\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"Scale: %s%s %s\00", align 1
@.str.85 = private unnamed_addr constant [20 x i8] c"Scale: %s : %s%s %s\00", align 1
@.str.86 = private unnamed_addr constant [25 x i8] c"Scale: %s : %s : %s%s %s\00", align 1
@.str.87 = private unnamed_addr constant [25 x i8] c"Scale X: %s   Y: %s%s %s\00", align 1
@.str.88 = private unnamed_addr constant [32 x i8] c"Scale X: %s   Y: %s  Z: %s%s %s\00", align 1
@.str.89 = private unnamed_addr constant [25 x i8] c" Proportional size: %.2f\00", align 1
@.str.90 = private unnamed_addr constant [17 x i8] c"To Sphere: %s %s\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"To Sphere: %.4f %s\00", align 1
@.str.92 = private unnamed_addr constant [14 x i8] c"Rot: %s %s %s\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"Rot: %.2f%s %s\00", align 1
@.str.94 = private unnamed_addr constant [20 x i8] c"Trackball: %s %s %s\00", align 1
@.str.95 = private unnamed_addr constant [24 x i8] c"Trackball: %.2f %.2f %s\00", align 1
@.str.96 = private unnamed_addr constant [113 x i8] c"Use 'Time_Translate' transform mode instead of 'Translation' mode for translating keyframes in Dope Sheet Editor\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"%.4e\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"AutoIK-Len: %d\00", align 1
@.str.99 = private unnamed_addr constant [20 x i8] c"D: %s (%s)%s %s  %s\00", align 1
@.str.100 = private unnamed_addr constant [28 x i8] c"D: %s   D: %s (%s)%s %s  %s\00", align 1
@.str.101 = private unnamed_addr constant [35 x i8] c"D: %s   D: %s  D: %s (%s)%s %s  %s\00", align 1
@.str.102 = private unnamed_addr constant [26 x i8] c"Dx: %s   Dy: %s (%s)%s %s\00", align 1
@.str.103 = private unnamed_addr constant [38 x i8] c"Dx: %s   Dy: %s  Dz: %s (%s)%s %s  %s\00", align 1
@.str.104 = private unnamed_addr constant [15 x i8] c"Shrink/Fatten:\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c" %.4f\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c", (\00", align 1
@.str.108 = private unnamed_addr constant [27 x i8] c" or Alt) Even Thickness %s\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"Tilt: %s\C2\B0 %s\00", align 1
@.str.110 = private unnamed_addr constant [16 x i8] c"Tilt: %.2f\C2\B0 %s\00", align 1
@.str.111 = private unnamed_addr constant [18 x i8] c"Shrink/Fatten: %s\00", align 1
@.str.112 = private unnamed_addr constant [19 x i8] c"Shrink/Fatten: %3f\00", align 1
@.str.113 = private unnamed_addr constant [26 x i8] c"Feather Shrink/Fatten: %s\00", align 1
@.str.114 = private unnamed_addr constant [27 x i8] c"Feather Shrink/Fatten: %3f\00", align 1
@.str.115 = private unnamed_addr constant [19 x i8] c"Push/Pull: %s%s %s\00", align 1
@.str.116 = private unnamed_addr constant [21 x i8] c"Push/Pull: %.4f%s %s\00", align 1
@.str.117 = private unnamed_addr constant [21 x i8] c"Bevel Weight: +%s %s\00", align 1
@.str.118 = private unnamed_addr constant [20 x i8] c"Bevel Weight: %s %s\00", align 1
@.str.119 = private unnamed_addr constant [23 x i8] c"Bevel Weight: +%.3f %s\00", align 1
@.str.120 = private unnamed_addr constant [22 x i8] c"Bevel Weight: %.3f %s\00", align 1
@.str.121 = private unnamed_addr constant [15 x i8] c"Crease: +%s %s\00", align 1
@.str.122 = private unnamed_addr constant [14 x i8] c"Crease: %s %s\00", align 1
@.str.123 = private unnamed_addr constant [17 x i8] c"Crease: +%.3f %s\00", align 1
@.str.124 = private unnamed_addr constant [16 x i8] c"Crease: %.3f %s\00", align 1
@.str.125 = private unnamed_addr constant [16 x i8] c"ScaleB: %s%s %s\00", align 1
@.str.126 = private unnamed_addr constant [26 x i8] c"ScaleB: %s : %s : %s%s %s\00", align 1
@.str.127 = private unnamed_addr constant [32 x i8] c"ScaleB X: %s  Y: %s  Z: %s%s %s\00", align 1
@.str.128 = private unnamed_addr constant [13 x i8] c"Envelope: %s\00", align 1
@.str.129 = private unnamed_addr constant [14 x i8] c"Envelope: %3f\00", align 1
@.str.130 = private unnamed_addr constant [26 x i8] c"Edge Slide: %s (E)ven: %s\00", align 1
@.str.131 = private unnamed_addr constant [41 x i8] c"Edge Slide: %s (E)ven: %s, (F)lipped: %s\00", align 1
@.str.132 = private unnamed_addr constant [28 x i8] c"Edge Slide: %.4f (E)ven: %s\00", align 1
@.str.133 = private unnamed_addr constant [43 x i8] c"Edge Slide: %.4f (E)ven: %s, (F)lipped: %s\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"sld\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.createEdgeSlideVerts = private unnamed_addr constant [21 x i8] c"createEdgeSlideVerts\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"sv_array\00", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c"sv loop_dir\00", align 1
@.str.137 = private unnamed_addr constant [16 x i8] c"sv loop_maxdist\00", align 1
@bm_mesh_allocsize_default = external constant %struct.BMAllocTemplate, align 4
@.str.138 = private unnamed_addr constant [13 x i8] c"Vert Slide: \00", align 1
@.str.139 = private unnamed_addr constant [6 x i8] c"%.4f \00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"(E)ven: %s, \00", align 1
@.str.141 = private unnamed_addr constant [16 x i8] c"(F)lipped: %s, \00", align 1
@.str.142 = private unnamed_addr constant [19 x i8] c"Alt or (C)lamp: %s\00", align 1
@__func__.createVertSlideVerts = private unnamed_addr constant [21 x i8] c"createVertSlideVerts\00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c"Roll: %s\00", align 1
@.str.144 = private unnamed_addr constant [11 x i8] c"Roll: %.2f\00", align 1
@.str.145 = private unnamed_addr constant [13 x i8] c"Time: +%s %s\00", align 1
@.str.146 = private unnamed_addr constant [12 x i8] c"Time: %s %s\00", align 1
@.str.147 = private unnamed_addr constant [15 x i8] c"Time: +%.3f %s\00", align 1
@.str.148 = private unnamed_addr constant [14 x i8] c"Time: %.3f %s\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"Mirror%s\00", align 1
@.str.150 = private unnamed_addr constant [28 x i8] c"Select a mirror axis (X, Y)\00", align 1
@.str.151 = private unnamed_addr constant [31 x i8] c"Select a mirror axis (X, Y, Z)\00", align 1
@.str.152 = private unnamed_addr constant [6 x i8] c"Align\00", align 1
@.str.153 = private unnamed_addr constant [11 x i8] c"%.0f, %.0f\00", align 1
@.str.154 = private unnamed_addr constant [24 x i8] c"Sequence Slide: %s%s, (\00", align 1
@.str.155 = private unnamed_addr constant [26 x i8] c" or Alt) Expand to fit %s\00", align 1
@.str.156 = private unnamed_addr constant [13 x i8] c"%d.00 (%.4f)\00", align 1
@.str.157 = private unnamed_addr constant [17 x i8] c"%d.00 sec (%.4f)\00", align 1
@.str.158 = private unnamed_addr constant [9 x i8] c"%.4f sec\00", align 1
@.str.159 = private unnamed_addr constant [11 x i8] c"DeltaX: %s\00", align 1
@.str.160 = private unnamed_addr constant [14 x i8] c"TimeSlide: %s\00", align 1
@.str.161 = private unnamed_addr constant [11 x i8] c"ScaleX: %s\00", align 1
@reltable.transform_event_xyz_constraint = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.72 to i64), i64 ptrtoint (ptr @reltable.transform_event_xyz_constraint to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.74 to i64), i64 ptrtoint (ptr @reltable.transform_event_xyz_constraint to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.76 to i64), i64 ptrtoint (ptr @reltable.transform_event_xyz_constraint to i64)) to i32)], align 4
@switch.table.transform_event_xyz_constraint.162 = private unnamed_addr constant [3 x ptr] [ptr @.str.73, ptr @.str.75, ptr @.str.77], align 8
@switch.table.transform_event_xyz_constraint.163 = private unnamed_addr constant [3 x ptr] [ptr @.str.55, ptr @.str.56, ptr @.str.57], align 8
@switch.table.transform_event_xyz_constraint.164 = private unnamed_addr constant [3 x i32] [i32 2, i32 4, i32 8], align 4

; Function Attrs: nounwind uwtable
define dso_local void @setTransformViewMatrices(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %3 = load i8, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %5, label %27

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 8
  %11 = load i16, ptr %10, align 2, !tbaa !49
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 30
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 27
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %15, i64 0, i32 1
  tail call void @copy_m4_m4(ptr noundef nonnull %16, ptr noundef nonnull %17) #16
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %15, i64 0, i32 2
  tail call void @copy_m4_m4(ptr noundef nonnull %18, ptr noundef nonnull %19) #16
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 29
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %15, i64 0, i32 3
  tail call void @copy_m4_m4(ptr noundef nonnull %20, ptr noundef nonnull %21) #16
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 30
  %23 = getelementptr inbounds %struct.RegionView3D, ptr %15, i64 0, i32 4
  tail call void @copy_m4_m4(ptr noundef nonnull %22, ptr noundef nonnull %23) #16
  %24 = getelementptr inbounds %struct.RegionView3D, ptr %15, i64 0, i32 25
  %25 = load i8, ptr %24, align 1, !tbaa !55
  %26 = zext i8 %25 to i16
  br label %32

27:                                               ; preds = %9, %5, %1
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 27
  tail call void @unit_m4(ptr noundef nonnull %28) #16
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28
  tail call void @unit_m4(ptr noundef nonnull %29) #16
  %30 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 29
  tail call void @unit_m4(ptr noundef nonnull %30) #16
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 30
  tail call void @unit_m4(ptr noundef nonnull %31) #16
  br label %32

32:                                               ; preds = %27, %13
  %33 = phi i16 [ 0, %27 ], [ %26, %13 ]
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 31
  store i16 %33, ptr %34, align 4, !tbaa !57
  tail call void @calculateCenter2D(ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @unit_m4(ptr noundef) local_unnamed_addr #2

declare void @calculateCenter2D(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @convertViewVec(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %11 = load i8, ptr %10, align 8, !tbaa !34
  switch i8 %11, label %276 [
    i8 1, label %12
    i8 6, label %34
    i8 2, label %133
    i8 13, label %133
    i8 16, label %166
    i8 8, label %166
    i8 20, label %199
  ]

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 8
  %16 = load i16, ptr %15, align 2, !tbaa !49
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !58
  %21 = and i32 %20, 256
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = sitofp i32 %2 to float
  store float %24, ptr %1, align 4, !tbaa !59
  %25 = sitofp i32 %3 to float
  %26 = getelementptr inbounds float, ptr %1, i64 1
  store float %25, ptr %26, align 4, !tbaa !59
  br label %280

27:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %28 = sitofp i32 %2 to float
  store float %28, ptr %5, align 4, !tbaa !59
  %29 = getelementptr inbounds float, ptr %5, i64 1
  %30 = sitofp i32 %3 to float
  store float %30, ptr %29, align 4, !tbaa !59
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 62
  %32 = load float, ptr %31, align 8, !tbaa !60
  call void @ED_view3d_win_to_delta(ptr noundef %14, ptr noundef nonnull %5, ptr noundef %1, float noundef %32) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %280

33:                                               ; preds = %12
  switch i8 %11, label %276 [
    i8 6, label %34
    i8 2, label %133
    i8 13, label %133
    i8 16, label %166
    i8 8, label %166
    i8 20, label %199
  ]

34:                                               ; preds = %4, %33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !58
  %37 = and i32 %36, 128
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %81, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %41 = load ptr, ptr %40, align 8, !tbaa !61
  %42 = getelementptr inbounds %struct.View2D, ptr %41, i64 0, i32 4
  %43 = getelementptr inbounds %struct.View2D, ptr %41, i64 0, i32 4, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !62
  %45 = load i32, ptr %42, align 4, !tbaa !63
  %46 = sub nsw i32 %44, %45
  %47 = sitofp i32 %46 to float
  %48 = getelementptr inbounds %struct.View2D, ptr %41, i64 0, i32 4, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !64
  %50 = getelementptr inbounds %struct.View2D, ptr %41, i64 0, i32 4, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !65
  %52 = sub nsw i32 %49, %51
  %53 = sitofp i32 %52 to float
  %54 = getelementptr inbounds %struct.View2D, ptr %41, i64 0, i32 1
  %55 = getelementptr inbounds %struct.View2D, ptr %41, i64 0, i32 1, i32 1
  %56 = load float, ptr %55, align 4, !tbaa !66
  %57 = load float, ptr %54, align 4, !tbaa !67
  %58 = fsub float %56, %57
  %59 = getelementptr inbounds %struct.View2D, ptr %41, i64 0, i32 1, i32 3
  %60 = load float, ptr %59, align 4, !tbaa !68
  %61 = getelementptr inbounds %struct.View2D, ptr %41, i64 0, i32 1, i32 2
  %62 = load float, ptr %61, align 4, !tbaa !69
  %63 = fsub float %60, %62
  %64 = fdiv float %58, %47
  %65 = fdiv float %63, %53
  %66 = fcmp olt float %64, %65
  %67 = select i1 %66, float %47, float %53
  %68 = select i1 %66, float %58, float %63
  %69 = sitofp i32 %2 to float
  %70 = fmul float %68, %69
  %71 = fdiv float %70, %67
  store float %71, ptr %1, align 4, !tbaa !59
  %72 = sitofp i32 %3 to float
  %73 = fmul float %68, %72
  %74 = fdiv float %73, %67
  %75 = getelementptr inbounds float, ptr %1, i64 1
  store float %74, ptr %75, align 4, !tbaa !59
  %76 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %76, align 4, !tbaa !59
  %77 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %78 = load ptr, ptr %77, align 8, !tbaa !70
  %79 = getelementptr inbounds %struct.ScrArea, ptr %78, i64 0, i32 19
  %80 = load ptr, ptr %79, align 8, !tbaa !71
  call void @ED_space_image_get_aspect(ptr noundef %80, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  br label %125

81:                                               ; preds = %34
  %82 = and i32 %36, 256
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = sitofp i32 %2 to float
  store float %85, ptr %1, align 4, !tbaa !59
  %86 = sitofp i32 %3 to float
  %87 = getelementptr inbounds float, ptr %1, i64 1
  store float %86, ptr %87, align 4, !tbaa !59
  store float 1.000000e+00, ptr %7, align 4, !tbaa !59
  store float 1.000000e+00, ptr %6, align 4, !tbaa !59
  br label %125

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %90 = load ptr, ptr %89, align 8, !tbaa !61
  %91 = getelementptr inbounds %struct.View2D, ptr %90, i64 0, i32 4
  %92 = getelementptr inbounds %struct.View2D, ptr %90, i64 0, i32 4, i32 1
  %93 = load i32, ptr %92, align 4, !tbaa !62
  %94 = load i32, ptr %91, align 4, !tbaa !63
  %95 = sub nsw i32 %93, %94
  %96 = sitofp i32 %95 to float
  %97 = getelementptr inbounds %struct.View2D, ptr %90, i64 0, i32 4, i32 3
  %98 = load i32, ptr %97, align 4, !tbaa !64
  %99 = getelementptr inbounds %struct.View2D, ptr %90, i64 0, i32 4, i32 2
  %100 = load i32, ptr %99, align 4, !tbaa !65
  %101 = sub nsw i32 %98, %100
  %102 = sitofp i32 %101 to float
  %103 = getelementptr inbounds %struct.View2D, ptr %90, i64 0, i32 1
  %104 = getelementptr inbounds %struct.View2D, ptr %90, i64 0, i32 1, i32 1
  %105 = load float, ptr %104, align 4, !tbaa !66
  %106 = load float, ptr %103, align 4, !tbaa !67
  %107 = fsub float %105, %106
  %108 = sitofp i32 %2 to float
  %109 = fmul float %107, %108
  %110 = fdiv float %109, %96
  store float %110, ptr %1, align 4, !tbaa !59
  %111 = getelementptr inbounds %struct.View2D, ptr %90, i64 0, i32 1, i32 3
  %112 = load float, ptr %111, align 4, !tbaa !68
  %113 = getelementptr inbounds %struct.View2D, ptr %90, i64 0, i32 1, i32 2
  %114 = load float, ptr %113, align 4, !tbaa !69
  %115 = fsub float %112, %114
  %116 = sitofp i32 %3 to float
  %117 = fmul float %115, %116
  %118 = fdiv float %117, %102
  %119 = getelementptr inbounds float, ptr %1, i64 1
  store float %118, ptr %119, align 4, !tbaa !59
  %120 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %120, align 4, !tbaa !59
  %121 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %122 = load ptr, ptr %121, align 8, !tbaa !70
  %123 = getelementptr inbounds %struct.ScrArea, ptr %122, i64 0, i32 19
  %124 = load ptr, ptr %123, align 8, !tbaa !71
  call void @ED_space_image_get_uv_aspect(ptr noundef %124, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  br label %125

125:                                              ; preds = %84, %88, %39
  %126 = load float, ptr %6, align 4, !tbaa !59
  %127 = load float, ptr %1, align 4, !tbaa !59
  %128 = fmul float %126, %127
  store float %128, ptr %1, align 4, !tbaa !59
  %129 = load float, ptr %7, align 4, !tbaa !59
  %130 = getelementptr inbounds float, ptr %1, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !59
  %132 = fmul float %129, %131
  store float %132, ptr %130, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br label %280

133:                                              ; preds = %4, %4, %33, %33
  %134 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %135 = load ptr, ptr %134, align 8, !tbaa !61
  %136 = getelementptr inbounds %struct.View2D, ptr %135, i64 0, i32 4
  %137 = getelementptr inbounds %struct.View2D, ptr %135, i64 0, i32 4, i32 1
  %138 = load i32, ptr %137, align 4, !tbaa !62
  %139 = load i32, ptr %136, align 4, !tbaa !63
  %140 = sub nsw i32 %138, %139
  %141 = sitofp i32 %140 to float
  %142 = getelementptr inbounds %struct.View2D, ptr %135, i64 0, i32 4, i32 3
  %143 = load i32, ptr %142, align 4, !tbaa !64
  %144 = getelementptr inbounds %struct.View2D, ptr %135, i64 0, i32 4, i32 2
  %145 = load i32, ptr %144, align 4, !tbaa !65
  %146 = sub nsw i32 %143, %145
  %147 = sitofp i32 %146 to float
  %148 = getelementptr inbounds %struct.View2D, ptr %135, i64 0, i32 1
  %149 = getelementptr inbounds %struct.View2D, ptr %135, i64 0, i32 1, i32 1
  %150 = load float, ptr %149, align 4, !tbaa !66
  %151 = load float, ptr %148, align 4, !tbaa !67
  %152 = fsub float %150, %151
  %153 = sitofp i32 %2 to float
  %154 = fmul float %152, %153
  %155 = fdiv float %154, %141
  store float %155, ptr %1, align 4, !tbaa !59
  %156 = getelementptr inbounds %struct.View2D, ptr %135, i64 0, i32 1, i32 3
  %157 = load float, ptr %156, align 4, !tbaa !68
  %158 = getelementptr inbounds %struct.View2D, ptr %135, i64 0, i32 1, i32 2
  %159 = load float, ptr %158, align 4, !tbaa !69
  %160 = fsub float %157, %159
  %161 = sitofp i32 %3 to float
  %162 = fmul float %160, %161
  %163 = fdiv float %162, %147
  %164 = getelementptr inbounds float, ptr %1, i64 1
  store float %163, ptr %164, align 4, !tbaa !59
  %165 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %165, align 4, !tbaa !59
  br label %280

166:                                              ; preds = %4, %4, %33, %33
  %167 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %168 = load ptr, ptr %167, align 8, !tbaa !48
  %169 = getelementptr inbounds %struct.ARegion, ptr %168, i64 0, i32 2, i32 4
  %170 = getelementptr inbounds %struct.ARegion, ptr %168, i64 0, i32 2, i32 4, i32 1
  %171 = load i32, ptr %170, align 4, !tbaa !62
  %172 = load i32, ptr %169, align 4, !tbaa !63
  %173 = sub nsw i32 %171, %172
  %174 = sitofp i32 %173 to float
  %175 = getelementptr inbounds %struct.ARegion, ptr %168, i64 0, i32 2, i32 4, i32 3
  %176 = load i32, ptr %175, align 4, !tbaa !64
  %177 = getelementptr inbounds %struct.ARegion, ptr %168, i64 0, i32 2, i32 4, i32 2
  %178 = load i32, ptr %177, align 4, !tbaa !65
  %179 = sub nsw i32 %176, %178
  %180 = sitofp i32 %179 to float
  %181 = getelementptr inbounds %struct.ARegion, ptr %168, i64 0, i32 2, i32 1
  %182 = getelementptr inbounds %struct.ARegion, ptr %168, i64 0, i32 2, i32 1, i32 1
  %183 = load float, ptr %182, align 4, !tbaa !66
  %184 = load float, ptr %181, align 4, !tbaa !67
  %185 = fsub float %183, %184
  %186 = sitofp i32 %2 to float
  %187 = fmul float %185, %186
  %188 = fdiv float %187, %174
  store float %188, ptr %1, align 4, !tbaa !59
  %189 = getelementptr inbounds %struct.ARegion, ptr %168, i64 0, i32 2, i32 1, i32 3
  %190 = load float, ptr %189, align 4, !tbaa !68
  %191 = getelementptr inbounds %struct.ARegion, ptr %168, i64 0, i32 2, i32 1, i32 2
  %192 = load float, ptr %191, align 4, !tbaa !69
  %193 = fsub float %190, %192
  %194 = sitofp i32 %3 to float
  %195 = fmul float %193, %194
  %196 = fdiv float %195, %180
  %197 = getelementptr inbounds float, ptr %1, i64 1
  store float %196, ptr %197, align 4, !tbaa !59
  %198 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %198, align 4, !tbaa !59
  br label %280

199:                                              ; preds = %4, %33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  %200 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %201 = load i32, ptr %200, align 8, !tbaa !58
  %202 = and i32 %201, 128
  %203 = icmp eq i32 %202, 0
  %204 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %205 = load ptr, ptr %204, align 8, !tbaa !61
  %206 = getelementptr inbounds %struct.View2D, ptr %205, i64 0, i32 4
  %207 = getelementptr inbounds %struct.View2D, ptr %205, i64 0, i32 4, i32 1
  %208 = load i32, ptr %207, align 4, !tbaa !62
  %209 = load i32, ptr %206, align 4, !tbaa !63
  %210 = sub nsw i32 %208, %209
  %211 = sitofp i32 %210 to float
  %212 = getelementptr inbounds %struct.View2D, ptr %205, i64 0, i32 4, i32 3
  %213 = load i32, ptr %212, align 4, !tbaa !64
  %214 = getelementptr inbounds %struct.View2D, ptr %205, i64 0, i32 4, i32 2
  %215 = load i32, ptr %214, align 4, !tbaa !65
  %216 = sub nsw i32 %213, %215
  %217 = sitofp i32 %216 to float
  %218 = getelementptr inbounds %struct.View2D, ptr %205, i64 0, i32 1
  %219 = getelementptr inbounds %struct.View2D, ptr %205, i64 0, i32 1, i32 1
  %220 = load float, ptr %219, align 4, !tbaa !66
  %221 = load float, ptr %218, align 4, !tbaa !67
  %222 = fsub float %220, %221
  br i1 %203, label %237, label %223

223:                                              ; preds = %199
  %224 = getelementptr inbounds %struct.View2D, ptr %205, i64 0, i32 1, i32 3
  %225 = load float, ptr %224, align 4, !tbaa !68
  %226 = getelementptr inbounds %struct.View2D, ptr %205, i64 0, i32 1, i32 2
  %227 = load float, ptr %226, align 4, !tbaa !69
  %228 = fsub float %225, %227
  %229 = fdiv float %222, %211
  %230 = fdiv float %228, %217
  %231 = fcmp olt float %229, %230
  %232 = select i1 %231, float %211, float %217
  %233 = select i1 %231, float %222, float %228
  %234 = sitofp i32 %2 to float
  %235 = fmul float %233, %234
  %236 = fdiv float %235, %232
  store float %236, ptr %1, align 4, !tbaa !59
  br label %246

237:                                              ; preds = %199
  %238 = sitofp i32 %2 to float
  %239 = fmul float %222, %238
  %240 = fdiv float %239, %211
  store float %240, ptr %1, align 4, !tbaa !59
  %241 = getelementptr inbounds %struct.View2D, ptr %205, i64 0, i32 1, i32 3
  %242 = load float, ptr %241, align 4, !tbaa !68
  %243 = getelementptr inbounds %struct.View2D, ptr %205, i64 0, i32 1, i32 2
  %244 = load float, ptr %243, align 4, !tbaa !69
  %245 = fsub float %242, %244
  br label %246

246:                                              ; preds = %237, %223
  %247 = phi float [ %245, %237 ], [ %233, %223 ]
  %248 = phi float [ %217, %237 ], [ %232, %223 ]
  %249 = sitofp i32 %3 to float
  %250 = fmul float %247, %249
  %251 = fdiv float %250, %248
  %252 = getelementptr inbounds float, ptr %1, i64 1
  store float %251, ptr %252, align 4, !tbaa !59
  %253 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %253, align 4, !tbaa !59
  %254 = and i32 %201, 64
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %261, label %256

256:                                              ; preds = %246
  %257 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %258 = load ptr, ptr %257, align 8, !tbaa !70
  %259 = getelementptr inbounds %struct.ScrArea, ptr %258, i64 0, i32 19
  %260 = load ptr, ptr %259, align 8, !tbaa !71
  call void @ED_space_clip_get_aspect_dimension_aware(ptr noundef %260, ptr noundef nonnull %8, ptr noundef nonnull %9) #16
  br label %268

261:                                              ; preds = %246
  br i1 %203, label %267, label %262

262:                                              ; preds = %261
  %263 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %264 = load ptr, ptr %263, align 8, !tbaa !70
  %265 = getelementptr inbounds %struct.ScrArea, ptr %264, i64 0, i32 19
  %266 = load ptr, ptr %265, align 8, !tbaa !71
  call void @ED_space_clip_get_aspect(ptr noundef %266, ptr noundef nonnull %8, ptr noundef nonnull %9) #16
  br label %268

267:                                              ; preds = %261
  store float 1.000000e+00, ptr %9, align 4, !tbaa !59
  store float 1.000000e+00, ptr %8, align 4, !tbaa !59
  br label %268

268:                                              ; preds = %262, %267, %256
  %269 = load float, ptr %8, align 4, !tbaa !59
  %270 = load float, ptr %1, align 4, !tbaa !59
  %271 = fmul float %269, %270
  store float %271, ptr %1, align 4, !tbaa !59
  %272 = load float, ptr %9, align 4, !tbaa !59
  %273 = getelementptr inbounds float, ptr %1, i64 1
  %274 = load float, ptr %273, align 4, !tbaa !59
  %275 = fmul float %272, %274
  store float %275, ptr %273, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  br label %280

276:                                              ; preds = %4, %33
  %277 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.convertViewVec)
  store float 0.000000e+00, ptr %1, align 4, !tbaa !59
  %278 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %278, align 4, !tbaa !59
  %279 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %279, align 4, !tbaa !59
  br label %280

280:                                              ; preds = %125, %166, %276, %268, %133, %23, %27
  ret void
}

declare void @ED_view3d_win_to_delta(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @ED_space_image_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_space_image_get_uv_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_space_clip_get_aspect_dimension_aware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_space_clip_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @projectIntViewEx(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca [2 x i32], align 8
  %11 = alloca [2 x i32], align 8
  %12 = alloca [2 x i32], align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca [2 x float], align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %19 = load i8, ptr %18, align 8, !tbaa !34
  switch i8 %19, label %167 [
    i8 1, label %20
    i8 6, label %31
    i8 12, label %83
    i8 2, label %93
    i8 13, label %93
    i8 8, label %103
    i8 20, label %113
    i8 16, label %160
  ]

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 8
  %24 = load i16, ptr %23, align 2, !tbaa !49
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %167

26:                                               ; preds = %20
  %27 = tail call i32 @ED_view3d_project_int_global(ptr noundef %22, ptr noundef %1, ptr noundef %2, i32 noundef %3) #16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %167, label %29

29:                                               ; preds = %26
  store i32 2140000000, ptr %2, align 4, !tbaa !73
  %30 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 2140000000, ptr %30, align 4, !tbaa !73
  br label %167

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %33 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !58
  %35 = and i32 %34, 128
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %59, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr %32, align 8, !tbaa !70
  %39 = getelementptr inbounds %struct.ScrArea, ptr %38, i64 0, i32 19
  %40 = load ptr, ptr %39, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @ED_space_image_get_aspect(ptr noundef %40, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %41 = load float, ptr %1, align 4, !tbaa !59
  store float %41, ptr %7, align 4, !tbaa !59
  %42 = getelementptr inbounds float, ptr %1, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !59
  %44 = getelementptr inbounds float, ptr %7, i64 1
  store float %43, ptr %44, align 4, !tbaa !59
  %45 = load float, ptr %5, align 4, !tbaa !59
  %46 = fdiv float %41, %45
  store float %46, ptr %7, align 4, !tbaa !59
  %47 = load float, ptr %6, align 4, !tbaa !59
  %48 = fdiv float %43, %47
  store float %48, ptr %44, align 4, !tbaa !59
  %49 = getelementptr inbounds %struct.SpaceImage, ptr %40, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !74
  %51 = getelementptr inbounds %struct.SpaceImage, ptr %40, i64 0, i32 6
  call void @BKE_mask_coord_to_image(ptr noundef %50, ptr noundef nonnull %51, ptr noundef nonnull %7, ptr noundef nonnull %7) #16
  %52 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %53 = load ptr, ptr %52, align 8, !tbaa !48
  call void @ED_image_point_pos__reverse(ptr noundef %40, ptr noundef %53, ptr noundef nonnull %7, ptr noundef nonnull %7) #16
  %54 = load float, ptr %7, align 4, !tbaa !59
  %55 = fptosi float %54 to i32
  store i32 %55, ptr %2, align 4, !tbaa !73
  %56 = load float, ptr %44, align 4, !tbaa !59
  %57 = fptosi float %56 to i32
  %58 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 %57, ptr %58, align 4, !tbaa !73
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %167

59:                                               ; preds = %31
  %60 = and i32 %34, 256
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = load float, ptr %1, align 4, !tbaa !59
  %64 = fptosi float %63 to i32
  store i32 %64, ptr %2, align 4, !tbaa !73
  %65 = getelementptr inbounds float, ptr %1, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !59
  %67 = fptosi float %66 to i32
  %68 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 %67, ptr %68, align 4, !tbaa !73
  br label %167

69:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  %70 = load ptr, ptr %32, align 8, !tbaa !70
  %71 = getelementptr inbounds %struct.ScrArea, ptr %70, i64 0, i32 19
  %72 = load ptr, ptr %71, align 8, !tbaa !71
  call void @ED_space_image_get_uv_aspect(ptr noundef %72, ptr noundef nonnull %8, ptr noundef nonnull %9) #16
  %73 = load float, ptr %1, align 4, !tbaa !59
  %74 = load float, ptr %8, align 4, !tbaa !59
  %75 = fdiv float %73, %74
  %76 = getelementptr inbounds float, ptr %1, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !59
  %78 = load float, ptr %9, align 4, !tbaa !59
  %79 = fdiv float %77, %78
  %80 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %81 = load ptr, ptr %80, align 8, !tbaa !61
  %82 = getelementptr inbounds i32, ptr %2, i64 1
  call void @UI_view2d_view_to_region(ptr noundef %81, float noundef %75, float noundef %79, ptr noundef %2, ptr noundef nonnull %82) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  br label %167

83:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  store i64 0, ptr %10, align 8
  %84 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %85 = load ptr, ptr %84, align 8, !tbaa !61
  %86 = load float, ptr %1, align 4, !tbaa !59
  %87 = getelementptr inbounds float, ptr %1, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !59
  %89 = getelementptr inbounds [2 x i32], ptr %10, i64 0, i64 1
  call void @UI_view2d_view_to_region(ptr noundef %85, float noundef %86, float noundef %88, ptr noundef nonnull %10, ptr noundef nonnull %89) #16
  %90 = load i32, ptr %10, align 8, !tbaa !73
  store i32 %90, ptr %2, align 4, !tbaa !73
  %91 = load i32, ptr %89, align 4, !tbaa !73
  %92 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 %91, ptr %92, align 4, !tbaa !73
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br label %167

93:                                               ; preds = %4, %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  store i64 0, ptr %11, align 8
  %94 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %95 = load ptr, ptr %94, align 8, !tbaa !61
  %96 = load float, ptr %1, align 4, !tbaa !59
  %97 = getelementptr inbounds float, ptr %1, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !59
  %99 = getelementptr inbounds [2 x i32], ptr %11, i64 0, i64 1
  call void @UI_view2d_view_to_region(ptr noundef %95, float noundef %96, float noundef %98, ptr noundef nonnull %11, ptr noundef nonnull %99) #16
  %100 = load i32, ptr %11, align 8, !tbaa !73
  store i32 %100, ptr %2, align 4, !tbaa !73
  %101 = load i32, ptr %99, align 4, !tbaa !73
  %102 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 %101, ptr %102, align 4, !tbaa !73
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  br label %167

103:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  store i64 0, ptr %12, align 8
  %104 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %105 = load ptr, ptr %104, align 8, !tbaa !61
  %106 = load float, ptr %1, align 4, !tbaa !59
  %107 = getelementptr inbounds float, ptr %1, i64 1
  %108 = load float, ptr %107, align 4, !tbaa !59
  %109 = getelementptr inbounds [2 x i32], ptr %12, i64 0, i64 1
  call void @UI_view2d_view_to_region(ptr noundef %105, float noundef %106, float noundef %108, ptr noundef nonnull %12, ptr noundef nonnull %109) #16
  %110 = load i32, ptr %12, align 8, !tbaa !73
  store i32 %110, ptr %2, align 4, !tbaa !73
  %111 = load i32, ptr %109, align 4, !tbaa !73
  %112 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 %111, ptr %112, align 4, !tbaa !73
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  br label %167

113:                                              ; preds = %4
  %114 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %115 = load ptr, ptr %114, align 8, !tbaa !70
  %116 = getelementptr inbounds %struct.ScrArea, ptr %115, i64 0, i32 19
  %117 = load ptr, ptr %116, align 8, !tbaa !71
  %118 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %119 = load i32, ptr %118, align 8, !tbaa !58
  %120 = and i32 %119, 128
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %146, label %122

122:                                              ; preds = %113
  %123 = tail call ptr @ED_space_clip_get_clip(ptr noundef %117) #16
  %124 = icmp eq ptr %123, null
  br i1 %124, label %144, label %125

125:                                              ; preds = %122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #16
  call void @ED_space_clip_get_aspect(ptr noundef %117, ptr noundef nonnull %13, ptr noundef nonnull %14) #16
  %126 = load float, ptr %1, align 4, !tbaa !59
  store float %126, ptr %15, align 4, !tbaa !59
  %127 = getelementptr inbounds float, ptr %1, i64 1
  %128 = load float, ptr %127, align 4, !tbaa !59
  %129 = getelementptr inbounds float, ptr %15, i64 1
  store float %128, ptr %129, align 4, !tbaa !59
  %130 = load float, ptr %13, align 4, !tbaa !59
  %131 = fdiv float %126, %130
  store float %131, ptr %15, align 4, !tbaa !59
  %132 = load float, ptr %14, align 4, !tbaa !59
  %133 = fdiv float %128, %132
  store float %133, ptr %129, align 4, !tbaa !59
  %134 = getelementptr inbounds %struct.SpaceClip, ptr %117, i64 0, i32 10
  %135 = load ptr, ptr %134, align 8, !tbaa !80
  %136 = getelementptr inbounds %struct.SpaceClip, ptr %117, i64 0, i32 9
  call void @BKE_mask_coord_to_movieclip(ptr noundef %135, ptr noundef nonnull %136, ptr noundef nonnull %15, ptr noundef nonnull %15) #16
  %137 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %138 = load ptr, ptr %137, align 8, !tbaa !48
  call void @ED_clip_point_stable_pos__reverse(ptr noundef %117, ptr noundef %138, ptr noundef nonnull %15, ptr noundef nonnull %15) #16
  %139 = load float, ptr %15, align 4, !tbaa !59
  %140 = fptosi float %139 to i32
  store i32 %140, ptr %2, align 4, !tbaa !73
  %141 = load float, ptr %129, align 4, !tbaa !59
  %142 = fptosi float %141 to i32
  %143 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 %142, ptr %143, align 4, !tbaa !73
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #16
  br label %167

144:                                              ; preds = %122
  store i32 0, ptr %2, align 4, !tbaa !73
  %145 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 0, ptr %145, align 4, !tbaa !73
  br label %167

146:                                              ; preds = %113
  %147 = and i32 %119, 64
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %167, label %149

149:                                              ; preds = %146
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #16
  %150 = load float, ptr %1, align 4, !tbaa !59
  %151 = getelementptr inbounds float, ptr %1, i64 1
  %152 = load float, ptr %151, align 4, !tbaa !59
  call void @ED_space_clip_get_aspect_dimension_aware(ptr noundef %117, ptr noundef nonnull %16, ptr noundef nonnull %17) #16
  %153 = load float, ptr %16, align 4, !tbaa !59
  %154 = fdiv float %150, %153
  %155 = load float, ptr %17, align 4, !tbaa !59
  %156 = fdiv float %152, %155
  %157 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %158 = load ptr, ptr %157, align 8, !tbaa !61
  %159 = getelementptr inbounds i32, ptr %2, i64 1
  call void @UI_view2d_view_to_region(ptr noundef %158, float noundef %154, float noundef %156, ptr noundef %2, ptr noundef nonnull %159) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #16
  br label %167

160:                                              ; preds = %4
  %161 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %162 = load ptr, ptr %161, align 8, !tbaa !61
  %163 = load float, ptr %1, align 4, !tbaa !59
  %164 = getelementptr inbounds float, ptr %1, i64 1
  %165 = load float, ptr %164, align 4, !tbaa !59
  %166 = getelementptr inbounds i32, ptr %2, i64 1
  tail call void @UI_view2d_view_to_region(ptr noundef %162, float noundef %163, float noundef %165, ptr noundef %2, ptr noundef nonnull %166) #16
  br label %167

167:                                              ; preds = %4, %146, %149, %144, %125, %37, %69, %62, %93, %160, %103, %83, %20, %29, %26
  ret void
}

declare i32 @ED_view3d_project_int_global(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_mask_coord_to_image(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_image_point_pos__reverse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_view_to_region(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #2

declare void @BKE_mask_coord_to_movieclip(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_clip_point_stable_pos__reverse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @projectIntView(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @projectIntViewEx(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @projectFloatViewEx(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x i32], align 8
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %7 = load i8, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i8 %7, 1
  br i1 %8, label %9, label %39

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !58
  %12 = and i32 %11, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load float, ptr %1, align 4, !tbaa !59
  store float %15, ptr %2, align 4, !tbaa !59
  %16 = getelementptr inbounds float, ptr %1, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !59
  %18 = getelementptr inbounds float, ptr %2, i64 1
  store float %17, ptr %18, align 4, !tbaa !59
  br label %46

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 8
  %23 = load i16, ptr %22, align 2, !tbaa !49
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %19
  %26 = tail call i32 @ED_view3d_project_float_global(ptr noundef %21, ptr noundef %1, ptr noundef %2, i32 noundef %3) #16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %20, align 8, !tbaa !48
  %30 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 5
  %31 = load i16, ptr %30, align 8, !tbaa !85
  %32 = sitofp i16 %31 to float
  %33 = fmul float %32, 5.000000e-01
  store float %33, ptr %2, align 4, !tbaa !59
  %34 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 6
  %35 = load i16, ptr %34, align 2, !tbaa !86
  %36 = sitofp i16 %35 to float
  %37 = fmul float %36, 5.000000e-01
  %38 = getelementptr inbounds float, ptr %2, i64 1
  store float %37, ptr %38, align 4, !tbaa !59
  br label %46

39:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store i64 0, ptr %5, align 8
  call void @projectIntViewEx(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 0)
  %40 = load i32, ptr %5, align 8, !tbaa !73
  %41 = sitofp i32 %40 to float
  store float %41, ptr %2, align 4, !tbaa !59
  %42 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  %43 = load i32, ptr %42, align 4, !tbaa !73
  %44 = sitofp i32 %43 to float
  %45 = getelementptr inbounds float, ptr %2, i64 1
  store float %44, ptr %45, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %46

46:                                               ; preds = %14, %19, %25, %28, %39
  ret void
}

declare i32 @ED_view3d_project_float_global(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @projectFloatView(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [2 x i32], align 8
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %6 = load i8, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %8, label %38

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !58
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load float, ptr %1, align 4, !tbaa !59
  store float %14, ptr %2, align 4, !tbaa !59
  %15 = getelementptr inbounds float, ptr %1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !59
  %17 = getelementptr inbounds float, ptr %2, i64 1
  store float %16, ptr %17, align 4, !tbaa !59
  br label %45

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  %21 = getelementptr inbounds %struct.ARegion, ptr %20, i64 0, i32 8
  %22 = load i16, ptr %21, align 2, !tbaa !49
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %18
  %25 = tail call i32 @ED_view3d_project_float_global(ptr noundef %20, ptr noundef %1, ptr noundef %2, i32 noundef 0) #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %19, align 8, !tbaa !48
  %29 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 5
  %30 = load i16, ptr %29, align 8, !tbaa !85
  %31 = sitofp i16 %30 to float
  %32 = fmul float %31, 5.000000e-01
  store float %32, ptr %2, align 4, !tbaa !59
  %33 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 6
  %34 = load i16, ptr %33, align 2, !tbaa !86
  %35 = sitofp i16 %34 to float
  %36 = fmul float %35, 5.000000e-01
  %37 = getelementptr inbounds float, ptr %2, i64 1
  store float %36, ptr %37, align 4, !tbaa !59
  br label %45

38:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store i64 0, ptr %4, align 8
  call void @projectIntViewEx(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 0)
  %39 = load i32, ptr %4, align 8, !tbaa !73
  %40 = sitofp i32 %39 to float
  store float %40, ptr %2, align 4, !tbaa !59
  %41 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  %42 = load i32, ptr %41, align 4, !tbaa !73
  %43 = sitofp i32 %42 to float
  %44 = getelementptr inbounds float, ptr %2, i64 1
  store float %43, ptr %44, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %45

45:                                               ; preds = %13, %18, %24, %27, %38
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @applyAspectRatio(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %10 = load i8, ptr %9, align 8, !tbaa !34
  switch i8 %10, label %81 [
    i8 6, label %11
    i8 20, label %48
  ]

11:                                               ; preds = %2
  %12 = load i32, ptr %0, align 8, !tbaa !87
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %46

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !58
  %17 = and i32 %16, 256
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %21 = load ptr, ptr %20, align 8, !tbaa !70
  %22 = getelementptr inbounds %struct.ScrArea, ptr %21, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %24 = getelementptr inbounds %struct.SpaceImage, ptr %23, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !88
  %26 = and i32 %25, 512
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  call void @ED_space_image_get_size(ptr noundef %23, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %29 = load i32, ptr %5, align 4, !tbaa !73
  %30 = sitofp i32 %29 to float
  %31 = load float, ptr %1, align 4, !tbaa !59
  %32 = fmul float %31, %30
  store float %32, ptr %1, align 4, !tbaa !59
  %33 = load i32, ptr %6, align 4, !tbaa !73
  %34 = sitofp i32 %33 to float
  %35 = getelementptr inbounds float, ptr %1, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !59
  %37 = fmul float %36, %34
  store float %37, ptr %35, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %38

38:                                               ; preds = %28, %19
  call void @ED_space_image_get_uv_aspect(ptr noundef %23, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %39 = load float, ptr %3, align 4, !tbaa !59
  %40 = load float, ptr %1, align 4, !tbaa !59
  %41 = fdiv float %40, %39
  store float %41, ptr %1, align 4, !tbaa !59
  %42 = load float, ptr %4, align 4, !tbaa !59
  %43 = getelementptr inbounds float, ptr %1, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !59
  %45 = fdiv float %44, %42
  store float %45, ptr %43, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %81

46:                                               ; preds = %14, %11
  %47 = icmp eq i8 %10, 20
  br i1 %47, label %48, label %81

48:                                               ; preds = %2, %46
  %49 = load i32, ptr %0, align 8, !tbaa !87
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %81

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %53 = load i32, ptr %52, align 8, !tbaa !58
  %54 = and i32 %53, 192
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %81, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %58 = load ptr, ptr %57, align 8, !tbaa !70
  %59 = getelementptr inbounds %struct.ScrArea, ptr %58, i64 0, i32 19
  %60 = load ptr, ptr %59, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  %61 = and i32 %53, 64
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %56
  call void @ED_space_clip_get_aspect_dimension_aware(ptr noundef %60, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %64 = load float, ptr %7, align 4, !tbaa !59
  %65 = load float, ptr %1, align 4, !tbaa !59
  %66 = fdiv float %65, %64
  br label %74

67:                                               ; preds = %56
  %68 = and i32 %53, 128
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %67
  call void @ED_space_clip_get_aspect(ptr noundef %60, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %71 = load float, ptr %7, align 4, !tbaa !59
  %72 = load float, ptr %1, align 4, !tbaa !59
  %73 = fdiv float %72, %71
  br label %74

74:                                               ; preds = %63, %70
  %75 = phi float [ %66, %63 ], [ %73, %70 ]
  store float %75, ptr %1, align 4, !tbaa !59
  %76 = load float, ptr %8, align 4, !tbaa !59
  %77 = getelementptr inbounds float, ptr %1, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !59
  %79 = fdiv float %78, %76
  store float %79, ptr %77, align 4, !tbaa !59
  br label %80

80:                                               ; preds = %74, %67
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  br label %81

81:                                               ; preds = %2, %46, %48, %80, %51, %38
  ret void
}

declare void @ED_space_image_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @removeAspectRatio(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %10 = load i8, ptr %9, align 8, !tbaa !34
  switch i8 %10, label %71 [
    i8 6, label %11
    i8 20, label %43
  ]

11:                                               ; preds = %2
  %12 = load i32, ptr %0, align 8, !tbaa !87
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %41

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %16 = load ptr, ptr %15, align 8, !tbaa !70
  %17 = getelementptr inbounds %struct.ScrArea, ptr %16, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %19 = getelementptr inbounds %struct.SpaceImage, ptr %18, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !88
  %21 = and i32 %20, 512
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  call void @ED_space_image_get_size(ptr noundef %18, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %24 = load i32, ptr %5, align 4, !tbaa !73
  %25 = sitofp i32 %24 to float
  %26 = load float, ptr %1, align 4, !tbaa !59
  %27 = fdiv float %26, %25
  store float %27, ptr %1, align 4, !tbaa !59
  %28 = load i32, ptr %6, align 4, !tbaa !73
  %29 = sitofp i32 %28 to float
  %30 = getelementptr inbounds float, ptr %1, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !59
  %32 = fdiv float %31, %29
  store float %32, ptr %30, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %33

33:                                               ; preds = %23, %14
  call void @ED_space_image_get_uv_aspect(ptr noundef %18, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %34 = load float, ptr %3, align 4, !tbaa !59
  %35 = load float, ptr %1, align 4, !tbaa !59
  %36 = fmul float %34, %35
  store float %36, ptr %1, align 4, !tbaa !59
  %37 = load float, ptr %4, align 4, !tbaa !59
  %38 = getelementptr inbounds float, ptr %1, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !59
  %40 = fmul float %37, %39
  store float %40, ptr %38, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %71

41:                                               ; preds = %11
  %42 = icmp eq i8 %10, 20
  br i1 %42, label %43, label %71

43:                                               ; preds = %2, %41
  %44 = load i32, ptr %0, align 8, !tbaa !87
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %71

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !58
  %49 = and i32 %48, 192
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %71, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %53 = load ptr, ptr %52, align 8, !tbaa !70
  %54 = getelementptr inbounds %struct.ScrArea, ptr %53, i64 0, i32 19
  %55 = load ptr, ptr %54, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store float 1.000000e+00, ptr %7, align 4, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store float 1.000000e+00, ptr %8, align 4, !tbaa !59
  %56 = and i32 %48, 64
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  call void @ED_space_clip_get_aspect_dimension_aware(ptr noundef %55, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  br label %63

59:                                               ; preds = %51
  %60 = and i32 %48, 128
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  call void @ED_space_clip_get_aspect(ptr noundef %55, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  br label %63

63:                                               ; preds = %59, %62, %58
  %64 = load float, ptr %7, align 4, !tbaa !59
  %65 = load float, ptr %1, align 4, !tbaa !59
  %66 = fmul float %64, %65
  store float %66, ptr %1, align 4, !tbaa !59
  %67 = load float, ptr %8, align 4, !tbaa !59
  %68 = getelementptr inbounds float, ptr %1, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !59
  %70 = fmul float %67, %69
  store float %70, ptr %68, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  br label %71

71:                                               ; preds = %2, %41, %43, %63, %46, %33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @transform_modal_keymap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_modalkeymap_get(ptr noundef %0, ptr noundef nonnull @.str.54) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %35

8:                                                ; preds = %4, %1
  %9 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.54, ptr noundef nonnull @transform_modal_keymap.modal_items) #16
  %10 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #16
  %11 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 1, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #16
  %12 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 220, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #16
  %13 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 163, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #16
  %14 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 103, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 3) #16
  %15 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 114, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 4) #16
  %16 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 115, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 5) #16
  %17 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 219, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 8) #16
  %18 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 212, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 6) #16
  %19 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 212, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 7) #16
  %20 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 215, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 6) #16
  %21 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 215, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 7) #16
  %22 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 16) #16
  %23 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 97, i32 noundef 1, i32 noundef 4, i32 noundef 0, i32 noundef 17) #16
  %24 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 168, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 20) #16
  %25 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 169, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 21) #16
  %26 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 11, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 20) #16
  %27 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 10, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 21) #16
  %28 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 14, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 26) #16
  %29 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 11, i32 noundef 1, i32 noundef 4, i32 noundef 0, i32 noundef 24) #16
  %30 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 10, i32 noundef 1, i32 noundef 4, i32 noundef 0, i32 noundef 25) #16
  %31 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 168, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 22) #16
  %32 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 169, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 23) #16
  %33 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 11, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 22) #16
  %34 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 10, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 23) #16
  br label %35

35:                                               ; preds = %4, %8
  %36 = phi ptr [ %9, %8 ], [ null, %4 ]
  ret ptr %36
}

declare ptr @WM_modalkeymap_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_modalkeymap_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_modalkeymap_add_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @transformEvent(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = tail call zeroext i8 @constraintModeToChar(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  %6 = tail call i32 @handleMouseInput(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1) #16
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 17
  %8 = load i32, ptr %7, align 8, !tbaa !91
  %9 = or i32 %8, %6
  store i32 %9, ptr %7, align 8, !tbaa !91
  %10 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %11 = load i16, ptr %10, align 2, !tbaa !92
  %12 = icmp eq i16 %11, 1
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %15 = load i16, ptr %14, align 8, !tbaa !94
  %16 = icmp eq i16 %15, 20514
  br i1 %16, label %17, label %29

17:                                               ; preds = %13, %2
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %19 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %18) #16
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 53
  %23 = load ptr, ptr %22, align 8, !tbaa !95
  %24 = tail call zeroext i8 @handleNumInput(ptr noundef %23, ptr noundef nonnull %18, ptr noundef %1) #16
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, ptr %7, align 8, !tbaa !91
  %28 = or i32 %27, 1
  store i32 %28, ptr %7, align 8, !tbaa !91
  br label %732

29:                                               ; preds = %21, %17, %13
  %30 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %31 = load i16, ptr %30, align 8, !tbaa !94
  switch i16 %31, label %417 [
    i16 4, label %32
    i16 20514, label %59
  ]

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !96
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %39 = load i32, ptr %38, align 4, !tbaa !97
  %40 = or i32 %39, 16
  store i32 %40, ptr %38, align 4, !tbaa !97
  br label %41

41:                                               ; preds = %37, %32
  %42 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61
  %43 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  %44 = load i32, ptr %43, align 4, !tbaa !73
  store i32 %44, ptr %42, align 4, !tbaa !73
  %45 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6, i64 1
  %46 = load i32, ptr %45, align 4, !tbaa !73
  %47 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61, i64 1
  store i32 %46, ptr %47, align 4, !tbaa !73
  %48 = load i32, ptr %7, align 8, !tbaa !91
  %49 = or i32 %48, 1
  store i32 %49, ptr %7, align 8, !tbaa !91
  %50 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %51 = load i16, ptr %50, align 4, !tbaa !98
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  store i16 1, ptr %50, align 4, !tbaa !98
  br label %54

54:                                               ; preds = %53, %41
  %55 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  tail call void @applyMouseInput(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %42, ptr noundef nonnull %55) #16
  %56 = tail call i32 @handleSnapping(ptr noundef %0, ptr noundef %1) #16
  %57 = load i32, ptr %7, align 8, !tbaa !91
  %58 = or i32 %57, %56
  store i32 %58, ptr %7, align 8, !tbaa !91
  br label %732

59:                                               ; preds = %29
  %60 = load i16, ptr %10, align 2, !tbaa !92
  switch i16 %60, label %732 [
    i16 1, label %61
    i16 2, label %63
    i16 3, label %65
    i16 4, label %119
    i16 5, label %159
    i16 6, label %230
    i16 7, label %236
    i16 8, label %242
    i16 9, label %248
    i16 10, label %256
    i16 11, label %264
    i16 12, label %272
    i16 13, label %286
    i16 14, label %300
    i16 15, label %314
    i16 16, label %322
    i16 17, label %325
    i16 26, label %328
    i16 20, label %361
    i16 21, label %387
    i16 24, label %398
    i16 25, label %398
    i16 22, label %401
    i16 23, label %409
  ]

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  store i16 3, ptr %62, align 4, !tbaa !98
  br label %732

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  store i16 2, ptr %64, align 4, !tbaa !98
  br label %732

65:                                               ; preds = %59
  %66 = load i32, ptr %0, align 8, !tbaa !87
  switch i32 %66, label %78 [
    i32 2, label %67
    i32 3, label %67
    i32 10, label %67
    i32 28, label %67
    i32 29, label %67
    i32 30, label %72
  ]

67:                                               ; preds = %65, %65, %65, %65, %65
  tail call void @resetTransModal(ptr noundef nonnull %0) #16
  tail call void @resetTransRestrictions(ptr noundef nonnull %0) #16
  tail call void @restoreTransObjects(ptr noundef nonnull %0) #16
  tail call fastcc void @initTranslation(ptr noundef nonnull %0)
  tail call void @initSnapping(ptr noundef nonnull %0, ptr noundef null) #16
  %68 = load i32, ptr %7, align 8, !tbaa !91
  %69 = or i32 %68, 1
  store i32 %69, ptr %7, align 8, !tbaa !91
  %70 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 53
  %71 = load ptr, ptr %70, align 8, !tbaa !95
  tail call void @WM_event_add_mousemove(ptr noundef %71) #16
  br label %732

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !99
  %75 = xor i32 %74, 16777216
  store i32 %75, ptr %73, align 4, !tbaa !99
  %76 = load i32, ptr %7, align 8, !tbaa !91
  %77 = or i32 %76, 1
  store i32 %77, ptr %7, align 8, !tbaa !91
  br label %732

78:                                               ; preds = %65
  %79 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %80 = load ptr, ptr %79, align 8, !tbaa !100
  %81 = icmp eq ptr %80, null
  br i1 %81, label %106, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.Object, ptr %80, i64 0, i32 3
  %84 = load i16, ptr %83, align 8, !tbaa !101
  %85 = icmp eq i16 %84, 1
  br i1 %85, label %86, label %106

86:                                               ; preds = %82
  %87 = icmp eq i32 %66, 1
  br i1 %87, label %88, label %732

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %90 = load i8, ptr %89, align 8, !tbaa !34
  %91 = icmp eq i8 %90, 1
  br i1 %91, label %92, label %732

92:                                               ; preds = %88
  tail call void @resetTransModal(ptr noundef nonnull %0) #16
  tail call void @resetTransRestrictions(ptr noundef nonnull %0) #16
  tail call void @restoreTransObjects(ptr noundef nonnull %0) #16
  tail call fastcc void @initEdgeSlide(ptr noundef nonnull %0)
  %93 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %94 = load i16, ptr %93, align 4, !tbaa !98
  %95 = icmp eq i16 %94, 3
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i16 0, ptr %93, align 4, !tbaa !98
  tail call fastcc void @initVertSlide(ptr noundef nonnull %0)
  br label %97

97:                                               ; preds = %96, %92
  %98 = load i16, ptr %93, align 4, !tbaa !98
  %99 = icmp eq i16 %98, 3
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i16 0, ptr %93, align 4, !tbaa !98
  tail call void @resetTransRestrictions(ptr noundef nonnull %0) #16
  tail call void @restoreTransObjects(ptr noundef nonnull %0) #16
  tail call fastcc void @initTranslation(ptr noundef nonnull %0)
  br label %101

101:                                              ; preds = %100, %97
  tail call void @initSnapping(ptr noundef nonnull %0, ptr noundef null) #16
  %102 = load i32, ptr %7, align 8, !tbaa !91
  %103 = or i32 %102, 1
  store i32 %103, ptr %7, align 8, !tbaa !91
  %104 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 53
  %105 = load ptr, ptr %104, align 8, !tbaa !95
  tail call void @WM_event_add_mousemove(ptr noundef %105) #16
  br label %732

106:                                              ; preds = %82, %78
  %107 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %108 = load i32, ptr %107, align 8, !tbaa !58
  %109 = and i32 %108, 192
  %110 = icmp ne i32 %109, 0
  %111 = icmp eq i32 %66, 1
  %112 = and i1 %111, %110
  br i1 %112, label %113, label %732

113:                                              ; preds = %106
  tail call void @restoreTransObjects(ptr noundef nonnull %0) #16
  %114 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %115 = load i32, ptr %114, align 4, !tbaa !99
  %116 = xor i32 %115, 16777216
  store i32 %116, ptr %114, align 4, !tbaa !99
  %117 = load i32, ptr %7, align 8, !tbaa !91
  %118 = or i32 %117, 1
  store i32 %118, ptr %7, align 8, !tbaa !91
  br label %732

119:                                              ; preds = %59
  %120 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %121 = load i32, ptr %120, align 8, !tbaa !58
  %122 = and i32 %121, 193
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %732

124:                                              ; preds = %119
  %125 = load i32, ptr %0, align 8, !tbaa !87
  switch i32 %125, label %732 [
    i32 2, label %126
    i32 3, label %126
    i32 10, label %126
    i32 1, label %126
    i32 28, label %126
    i32 29, label %126
  ]

126:                                              ; preds = %124, %124, %124, %124, %124, %124
  tail call void @resetTransModal(ptr noundef nonnull %0) #16
  tail call void @resetTransRestrictions(ptr noundef nonnull %0) #16
  %127 = load i32, ptr %0, align 8, !tbaa !87
  %128 = icmp eq i32 %127, 2
  tail call void @restoreTransObjects(ptr noundef nonnull %0) #16
  br i1 %128, label %129, label %155

129:                                              ; preds = %126
  store i32 10, ptr %0, align 8, !tbaa !87
  %130 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyTrackball, ptr %130, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 7) #16
  %131 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 1, ptr %131, align 2, !tbaa !107
  %132 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 1, ptr %132, align 8, !tbaa !108
  %133 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store float 0.000000e+00, ptr %133, align 4, !tbaa !59
  %134 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 1
  store float 0x3FB6571840000000, ptr %134, align 4, !tbaa !59
  %135 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3F91DF46A0000000, ptr %135, align 4, !tbaa !59
  %136 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  store float 0x3F91DF46A0000000, ptr %136, align 4, !tbaa !59
  %137 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8, i64 1
  store float 0x3F91DF46A0000000, ptr %137, align 4, !tbaa !59
  %138 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8, i64 2
  store float 0x3F91DF46A0000000, ptr %138, align 4, !tbaa !59
  %139 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %140 = load ptr, ptr %139, align 8, !tbaa !109
  %141 = getelementptr inbounds %struct.Scene, ptr %140, i64 0, i32 38, i32 1
  %142 = load i8, ptr %141, align 4, !tbaa !110
  %143 = zext i8 %142 to i32
  %144 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %143, ptr %144, align 4, !tbaa !127
  %145 = getelementptr inbounds %struct.Scene, ptr %140, i64 0, i32 38, i32 2
  %146 = load i8, ptr %145, align 1, !tbaa !128
  %147 = icmp eq i8 %146, 2
  %148 = zext i1 %147 to i8
  %149 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 3
  store i8 %148, ptr %149, align 4, !tbaa !129
  %150 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 5, ptr %150, align 8, !tbaa !73
  %151 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2, i64 1
  store i32 5, ptr %151, align 4, !tbaa !73
  %152 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %153 = load i32, ptr %152, align 4, !tbaa !99
  %154 = or i32 %153, 256
  store i32 %154, ptr %152, align 4, !tbaa !99
  br label %156

155:                                              ; preds = %126
  tail call fastcc void @initRotation(ptr noundef nonnull %0)
  br label %156

156:                                              ; preds = %155, %129
  tail call void @initSnapping(ptr noundef nonnull %0, ptr noundef null) #16
  %157 = load i32, ptr %7, align 8, !tbaa !91
  %158 = or i32 %157, 1
  store i32 %158, ptr %7, align 8, !tbaa !91
  br label %732

159:                                              ; preds = %59
  %160 = load i32, ptr %0, align 8, !tbaa !87
  switch i32 %160, label %732 [
    i32 2, label %161
    i32 1, label %161
    i32 10, label %161
    i32 28, label %161
    i32 29, label %161
    i32 8, label %213
    i32 3, label %219
  ]

161:                                              ; preds = %159, %159, %159, %159, %159
  %162 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %163 = load i32, ptr %162, align 4, !tbaa !97
  %164 = and i32 %163, 1
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13
  %168 = load i16, ptr %167, align 8, !tbaa !130
  %169 = icmp eq i16 %168, 2
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  tail call void @stopConstraint(ptr noundef nonnull %0) #16
  br label %171

171:                                              ; preds = %170, %166, %161
  tail call void @resetTransModal(ptr noundef nonnull %0) #16
  tail call void @resetTransRestrictions(ptr noundef nonnull %0) #16
  tail call void @restoreTransObjects(ptr noundef nonnull %0) #16
  store i32 3, ptr %0, align 8, !tbaa !87
  %172 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyResize, ptr %172, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 3) #16
  %173 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %174 = load i32, ptr %173, align 4, !tbaa !99
  %175 = or i32 %174, 512
  store i32 %175, ptr %173, align 4, !tbaa !99
  %176 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 5
  %177 = load i16, ptr %176, align 8, !tbaa !131
  %178 = or i16 %177, 1
  store i16 %178, ptr %176, align 8, !tbaa !131
  %179 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 5, i64 1
  %180 = load i16, ptr %179, align 2, !tbaa !131
  %181 = or i16 %180, 1
  store i16 %181, ptr %179, align 2, !tbaa !131
  %182 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 5, i64 2
  %183 = load i16, ptr %182, align 4, !tbaa !131
  %184 = or i16 %183, 1
  store i16 %184, ptr %182, align 4, !tbaa !131
  %185 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 4
  %186 = load i16, ptr %185, align 2, !tbaa !132
  %187 = or i16 %186, 1
  store i16 %187, ptr %185, align 2, !tbaa !132
  %188 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %189 = load ptr, ptr %188, align 8, !tbaa !100
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %193

191:                                              ; preds = %171
  %192 = or i32 %174, 1536
  store i32 %192, ptr %173, align 4, !tbaa !99
  br label %193

193:                                              ; preds = %171, %191
  %194 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %195 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 2, ptr %195, align 2, !tbaa !107
  store i16 2, ptr %194, align 8, !tbaa !108
  %196 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store float 0.000000e+00, ptr %196, align 4, !tbaa !59
  %197 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 1
  store float 0x3FB99999A0000000, ptr %197, align 4, !tbaa !59
  %198 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %198, align 4, !tbaa !59
  %199 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  store float 0x3FB99999A0000000, ptr %199, align 4, !tbaa !59
  %200 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8, i64 1
  store float 0x3FB99999A0000000, ptr %200, align 4, !tbaa !59
  %201 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8, i64 2
  store float 0x3FB99999A0000000, ptr %201, align 4, !tbaa !59
  %202 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %203 = load ptr, ptr %202, align 8, !tbaa !109
  %204 = getelementptr inbounds %struct.Scene, ptr %203, i64 0, i32 38, i32 1
  %205 = load i8, ptr %204, align 4, !tbaa !110
  %206 = zext i8 %205 to i32
  %207 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %206, ptr %207, align 4, !tbaa !127
  %208 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %208, align 8, !tbaa !73
  %209 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2, i64 1
  store i32 0, ptr %209, align 4, !tbaa !73
  %210 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2, i64 2
  store i32 0, ptr %210, align 8, !tbaa !73
  tail call void @initSnapping(ptr noundef nonnull %0, ptr noundef null) #16
  %211 = load i32, ptr %7, align 8, !tbaa !91
  %212 = or i32 %211, 1
  store i32 %212, ptr %7, align 8, !tbaa !91
  br label %732

213:                                              ; preds = %159
  %214 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %215 = load i32, ptr %214, align 4, !tbaa !99
  %216 = xor i32 %215, 16777216
  store i32 %216, ptr %214, align 4, !tbaa !99
  %217 = load i32, ptr %7, align 8, !tbaa !91
  %218 = or i32 %217, 1
  store i32 %218, ptr %7, align 8, !tbaa !91
  br label %732

219:                                              ; preds = %159
  %220 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %221 = load i32, ptr %220, align 8, !tbaa !58
  %222 = and i32 %221, 64
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %732, label %224

224:                                              ; preds = %219
  tail call void @restoreTransObjects(ptr noundef nonnull %0) #16
  %225 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %226 = load i32, ptr %225, align 4, !tbaa !99
  %227 = xor i32 %226, 16777216
  store i32 %227, ptr %225, align 4, !tbaa !99
  %228 = load i32, ptr %7, align 8, !tbaa !91
  %229 = or i32 %228, 1
  store i32 %229, ptr %7, align 8, !tbaa !91
  br label %732

230:                                              ; preds = %59
  %231 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %232 = load i32, ptr %231, align 8, !tbaa !96
  %233 = or i32 %232, 8
  store i32 %233, ptr %231, align 8, !tbaa !96
  %234 = load i32, ptr %7, align 8, !tbaa !91
  %235 = or i32 %234, 1
  store i32 %235, ptr %7, align 8, !tbaa !91
  br label %732

236:                                              ; preds = %59
  %237 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %238 = load i32, ptr %237, align 8, !tbaa !96
  %239 = and i32 %238, -9
  store i32 %239, ptr %237, align 8, !tbaa !96
  %240 = load i32, ptr %7, align 8, !tbaa !91
  %241 = or i32 %240, 1
  store i32 %241, ptr %7, align 8, !tbaa !91
  br label %732

242:                                              ; preds = %59
  %243 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %244 = load i32, ptr %243, align 8, !tbaa !96
  %245 = xor i32 %244, 4
  store i32 %245, ptr %243, align 8, !tbaa !96
  %246 = load i32, ptr %7, align 8, !tbaa !91
  %247 = or i32 %246, 1
  store i32 %247, ptr %7, align 8, !tbaa !91
  br label %732

248:                                              ; preds = %59
  %249 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %250 = load i32, ptr %249, align 4, !tbaa !99
  %251 = and i32 %250, 256
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %732

253:                                              ; preds = %248
  tail call fastcc void @transform_event_xyz_constraint(ptr noundef %0, i16 noundef signext 120, i8 noundef zeroext %4)
  %254 = load i32, ptr %7, align 8, !tbaa !91
  %255 = or i32 %254, 1
  store i32 %255, ptr %7, align 8, !tbaa !91
  br label %732

256:                                              ; preds = %59
  %257 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %258 = load i32, ptr %257, align 4, !tbaa !99
  %259 = and i32 %258, 256
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %732

261:                                              ; preds = %256
  tail call fastcc void @transform_event_xyz_constraint(ptr noundef %0, i16 noundef signext 121, i8 noundef zeroext %4)
  %262 = load i32, ptr %7, align 8, !tbaa !91
  %263 = or i32 %262, 1
  store i32 %263, ptr %7, align 8, !tbaa !91
  br label %732

264:                                              ; preds = %59
  %265 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %266 = load i32, ptr %265, align 4, !tbaa !99
  %267 = and i32 %266, 256
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %732

269:                                              ; preds = %264
  tail call fastcc void @transform_event_xyz_constraint(ptr noundef %0, i16 noundef signext 122, i8 noundef zeroext %4)
  %270 = load i32, ptr %7, align 8, !tbaa !91
  %271 = or i32 %270, 1
  store i32 %271, ptr %7, align 8, !tbaa !91
  br label %732

272:                                              ; preds = %59
  %273 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %274 = load i32, ptr %273, align 4, !tbaa !99
  %275 = and i32 %274, 33024
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %732

277:                                              ; preds = %272
  %278 = icmp eq i8 %4, 88
  br i1 %278, label %279, label %280

279:                                              ; preds = %277
  tail call void @stopConstraint(ptr noundef %0) #16
  br label %283

280:                                              ; preds = %277
  %281 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 43
  %282 = load i16, ptr %281, align 2, !tbaa !133
  tail call void @setUserConstraint(ptr noundef %0, i16 noundef signext %282, i32 noundef 12, ptr noundef nonnull @.str.55) #16
  br label %283

283:                                              ; preds = %280, %279
  %284 = load i32, ptr %7, align 8, !tbaa !91
  %285 = or i32 %284, 1
  store i32 %285, ptr %7, align 8, !tbaa !91
  br label %732

286:                                              ; preds = %59
  %287 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %288 = load i32, ptr %287, align 4, !tbaa !99
  %289 = and i32 %288, 33024
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %732

291:                                              ; preds = %286
  %292 = icmp eq i8 %4, 89
  br i1 %292, label %293, label %294

293:                                              ; preds = %291
  tail call void @stopConstraint(ptr noundef %0) #16
  br label %297

294:                                              ; preds = %291
  %295 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 43
  %296 = load i16, ptr %295, align 2, !tbaa !133
  tail call void @setUserConstraint(ptr noundef %0, i16 noundef signext %296, i32 noundef 10, ptr noundef nonnull @.str.56) #16
  br label %297

297:                                              ; preds = %294, %293
  %298 = load i32, ptr %7, align 8, !tbaa !91
  %299 = or i32 %298, 1
  store i32 %299, ptr %7, align 8, !tbaa !91
  br label %732

300:                                              ; preds = %59
  %301 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %302 = load i32, ptr %301, align 4, !tbaa !99
  %303 = and i32 %302, 33024
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %732

305:                                              ; preds = %300
  %306 = icmp eq i8 %4, 90
  br i1 %306, label %307, label %308

307:                                              ; preds = %305
  tail call void @stopConstraint(ptr noundef %0) #16
  br label %311

308:                                              ; preds = %305
  %309 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 43
  %310 = load i16, ptr %309, align 2, !tbaa !133
  tail call void @setUserConstraint(ptr noundef %0, i16 noundef signext %310, i32 noundef 6, ptr noundef nonnull @.str.57) #16
  br label %311

311:                                              ; preds = %308, %307
  %312 = load i32, ptr %7, align 8, !tbaa !91
  %313 = or i32 %312, 1
  store i32 %313, ptr %7, align 8, !tbaa !91
  br label %732

314:                                              ; preds = %59
  %315 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %316 = load i32, ptr %315, align 4, !tbaa !99
  %317 = and i32 %316, 256
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %732

319:                                              ; preds = %314
  tail call void @stopConstraint(ptr noundef %0) #16
  %320 = load i32, ptr %7, align 8, !tbaa !91
  %321 = or i32 %320, 1
  store i32 %321, ptr %7, align 8, !tbaa !91
  br label %732

322:                                              ; preds = %59
  tail call void @addSnapPoint(ptr noundef %0) #16
  %323 = load i32, ptr %7, align 8, !tbaa !91
  %324 = or i32 %323, 1
  store i32 %324, ptr %7, align 8, !tbaa !91
  br label %732

325:                                              ; preds = %59
  tail call void @removeSnapPoint(ptr noundef %0) #16
  %326 = load i32, ptr %7, align 8, !tbaa !91
  %327 = or i32 %326, 1
  store i32 %327, ptr %7, align 8, !tbaa !91
  br label %732

328:                                              ; preds = %59
  %329 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %330 = load i32, ptr %329, align 4, !tbaa !99
  %331 = and i32 %330, 2048
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %732, label %333

333:                                              ; preds = %328
  %334 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %335 = load i32, ptr %334, align 8, !tbaa !134
  %336 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 13
  %337 = load i32, ptr %336, align 4, !tbaa !135
  %338 = sub nsw i32 %335, %337
  %339 = sitofp i32 %338 to float
  %340 = tail call float @llvm.fmuladd.f32(float %339, float 0x3F747AE140000000, float 1.000000e+00)
  %341 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 18
  %342 = load float, ptr %341, align 4, !tbaa !136
  %343 = fmul float %342, %340
  store float %343, ptr %341, align 4, !tbaa !136
  %344 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %345 = load i8, ptr %344, align 8, !tbaa !34
  %346 = icmp eq i8 %345, 1
  br i1 %346, label %347, label %358

347:                                              ; preds = %333
  %348 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 31
  %349 = load i16, ptr %348, align 4, !tbaa !57
  %350 = icmp eq i16 %349, 0
  br i1 %350, label %358, label %351

351:                                              ; preds = %347
  %352 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %353 = load ptr, ptr %352, align 8, !tbaa !61
  %354 = getelementptr inbounds %struct.View3D, ptr %353, i64 0, i32 33
  %355 = load float, ptr %354, align 8, !tbaa !137
  %356 = fcmp olt float %343, %355
  %357 = select i1 %356, float %343, float %355
  store float %357, ptr %341, align 4, !tbaa !136
  br label %358

358:                                              ; preds = %351, %347, %333
  tail call void @calculatePropRatio(ptr noundef %0) #16
  %359 = load i32, ptr %7, align 8, !tbaa !91
  %360 = or i32 %359, 1
  store i32 %360, ptr %7, align 8, !tbaa !91
  br label %732

361:                                              ; preds = %59
  %362 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %363 = load i32, ptr %362, align 4, !tbaa !99
  %364 = and i32 %363, 2048
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %732, label %366

366:                                              ; preds = %361
  %367 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 18
  %368 = load float, ptr %367, align 4, !tbaa !136
  %369 = fmul float %368, 0x3FF19999A0000000
  store float %369, ptr %367, align 4, !tbaa !136
  %370 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %371 = load i8, ptr %370, align 8, !tbaa !34
  %372 = icmp eq i8 %371, 1
  br i1 %372, label %373, label %384

373:                                              ; preds = %366
  %374 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 31
  %375 = load i16, ptr %374, align 4, !tbaa !57
  %376 = icmp eq i16 %375, 0
  br i1 %376, label %384, label %377

377:                                              ; preds = %373
  %378 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %379 = load ptr, ptr %378, align 8, !tbaa !61
  %380 = getelementptr inbounds %struct.View3D, ptr %379, i64 0, i32 33
  %381 = load float, ptr %380, align 8, !tbaa !137
  %382 = fcmp olt float %369, %381
  %383 = select i1 %382, float %369, float %381
  store float %383, ptr %367, align 4, !tbaa !136
  br label %384

384:                                              ; preds = %377, %373, %366
  tail call void @calculatePropRatio(ptr noundef %0) #16
  %385 = load i32, ptr %7, align 8, !tbaa !91
  %386 = or i32 %385, 1
  store i32 %386, ptr %7, align 8, !tbaa !91
  br label %732

387:                                              ; preds = %59
  %388 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %389 = load i32, ptr %388, align 4, !tbaa !99
  %390 = and i32 %389, 2048
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %732, label %392

392:                                              ; preds = %387
  %393 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 18
  %394 = load float, ptr %393, align 4, !tbaa !136
  %395 = fmul float %394, 0x3FED1745C0000000
  store float %395, ptr %393, align 4, !tbaa !136
  tail call void @calculatePropRatio(ptr noundef %0) #16
  %396 = load i32, ptr %7, align 8, !tbaa !91
  %397 = or i32 %396, 1
  store i32 %397, ptr %7, align 8, !tbaa !91
  br label %732

398:                                              ; preds = %59, %59
  %399 = load i32, ptr %7, align 8, !tbaa !91
  %400 = or i32 %399, 1
  store i32 %400, ptr %7, align 8, !tbaa !91
  br label %732

401:                                              ; preds = %59
  %402 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %403 = load i32, ptr %402, align 4, !tbaa !99
  %404 = and i32 %403, 262144
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %732, label %406

406:                                              ; preds = %401
  tail call void @transform_autoik_update(ptr noundef %0, i16 noundef signext 1) #16
  %407 = load i32, ptr %7, align 8, !tbaa !91
  %408 = or i32 %407, 1
  store i32 %408, ptr %7, align 8, !tbaa !91
  br label %732

409:                                              ; preds = %59
  %410 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %411 = load i32, ptr %410, align 4, !tbaa !99
  %412 = and i32 %411, 262144
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %732, label %414

414:                                              ; preds = %409
  tail call void @transform_autoik_update(ptr noundef %0, i16 noundef signext -1) #16
  %415 = load i32, ptr %7, align 8, !tbaa !91
  %416 = or i32 %415, 1
  store i32 %416, ptr %7, align 8, !tbaa !91
  br label %732

417:                                              ; preds = %29
  %418 = load i16, ptr %10, align 2, !tbaa !92
  switch i16 %418, label %732 [
    i16 1, label %419
    i16 2, label %694
  ]

419:                                              ; preds = %417
  switch i16 %31, label %689 [
    i16 3, label %420
    i16 217, label %422
    i16 216, label %422
    i16 221, label %428
    i16 2, label %430
    i16 218, label %487
    i16 163, label %489
    i16 220, label %489
    i16 103, label %491
    i16 115, label %496
    i16 114, label %540
    i16 99, label %580
    i16 120, label %601
    i16 121, label %601
    i16 122, label %601
    i16 111, label %607
    i16 164, label %625
    i16 168, label %653
    i16 11, label %653
    i16 162, label %660
    i16 169, label %673
    i16 10, label %673
    i16 213, label %680
    i16 214, label %680
  ]

420:                                              ; preds = %419
  %421 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  store i16 3, ptr %421, align 4, !tbaa !98
  br label %689

422:                                              ; preds = %419, %419
  %423 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %424 = load i32, ptr %423, align 8, !tbaa !96
  %425 = or i32 %424, 16
  store i32 %425, ptr %423, align 8, !tbaa !96
  %426 = load i32, ptr %7, align 8, !tbaa !91
  %427 = or i32 %426, 1
  store i32 %427, ptr %7, align 8, !tbaa !91
  br label %689

428:                                              ; preds = %419
  %429 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  store i16 2, ptr %429, align 4, !tbaa !98
  br label %689

430:                                              ; preds = %419
  %431 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %432 = load i32, ptr %431, align 4, !tbaa !99
  %433 = and i32 %432, 256
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %689

435:                                              ; preds = %430
  %436 = and i32 %432, 16
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %466, label %438

438:                                              ; preds = %435
  %439 = load i32, ptr %0, align 8, !tbaa !87
  switch i32 %439, label %484 [
    i32 1, label %440
    i32 2, label %441
  ]

440:                                              ; preds = %438
  tail call void @setLocalConstraint(ptr noundef nonnull %0, i32 noundef 8, ptr noundef nonnull @.str.58) #16
  br label %484

441:                                              ; preds = %438
  tail call void @restoreTransObjects(ptr noundef nonnull %0) #16
  store i32 10, ptr %0, align 8, !tbaa !87
  %442 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyTrackball, ptr %442, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 7) #16
  %443 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 1, ptr %443, align 2, !tbaa !107
  %444 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 1, ptr %444, align 8, !tbaa !108
  %445 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store float 0.000000e+00, ptr %445, align 4, !tbaa !59
  %446 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 1
  store float 0x3FB6571840000000, ptr %446, align 4, !tbaa !59
  %447 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3F91DF46A0000000, ptr %447, align 4, !tbaa !59
  %448 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  store float 0x3F91DF46A0000000, ptr %448, align 4, !tbaa !59
  %449 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8, i64 1
  store float 0x3F91DF46A0000000, ptr %449, align 4, !tbaa !59
  %450 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8, i64 2
  store float 0x3F91DF46A0000000, ptr %450, align 4, !tbaa !59
  %451 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %452 = load ptr, ptr %451, align 8, !tbaa !109
  %453 = getelementptr inbounds %struct.Scene, ptr %452, i64 0, i32 38, i32 1
  %454 = load i8, ptr %453, align 4, !tbaa !110
  %455 = zext i8 %454 to i32
  %456 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %455, ptr %456, align 4, !tbaa !127
  %457 = getelementptr inbounds %struct.Scene, ptr %452, i64 0, i32 38, i32 2
  %458 = load i8, ptr %457, align 1, !tbaa !128
  %459 = icmp eq i8 %458, 2
  %460 = zext i1 %459 to i8
  %461 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 3
  store i8 %460, ptr %461, align 4, !tbaa !129
  %462 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 5, ptr %462, align 8, !tbaa !73
  %463 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2, i64 1
  store i32 5, ptr %463, align 4, !tbaa !73
  %464 = load i32, ptr %431, align 4, !tbaa !99
  %465 = or i32 %464, 256
  store i32 %465, ptr %431, align 4, !tbaa !99
  br label %484

466:                                              ; preds = %435
  %467 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %468 = load i32, ptr %467, align 8, !tbaa !96
  %469 = or i32 %468, 1
  store i32 %469, ptr %467, align 8, !tbaa !96
  %470 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %471 = load i32, ptr %470, align 4, !tbaa !97
  %472 = and i32 %471, 1
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %475, label %474

474:                                              ; preds = %466
  tail call void @stopConstraint(ptr noundef %0) #16
  br label %484

475:                                              ; preds = %466
  %476 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 17
  %477 = load i16, ptr %476, align 8, !tbaa !139
  %478 = icmp eq i16 %477, 0
  br i1 %478, label %481, label %479

479:                                              ; preds = %475
  %480 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 37
  tail call void @initSelectConstraint(ptr noundef %0, ptr noundef nonnull %480) #16
  br label %483

481:                                              ; preds = %475
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #16
  %482 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %482, ptr noundef nonnull align 1 dereferenceable(7) @.str.59, i64 7, i1 false) #16
  call void @unit_m3(ptr noundef nonnull %3) #16
  call void @initSelectConstraint(ptr noundef %0, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #16
  br label %483

483:                                              ; preds = %481, %479
  call void @postSelectConstraint(ptr noundef %0) #16
  br label %484

484:                                              ; preds = %438, %474, %483, %440, %441
  %485 = load i32, ptr %7, align 8, !tbaa !91
  %486 = or i32 %485, 1
  store i32 %486, ptr %7, align 8, !tbaa !91
  br label %689

487:                                              ; preds = %419
  %488 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  store i16 3, ptr %488, align 4, !tbaa !98
  br label %689

489:                                              ; preds = %419, %419
  %490 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  store i16 2, ptr %490, align 4, !tbaa !98
  br label %689

491:                                              ; preds = %419
  %492 = load i32, ptr %0, align 8, !tbaa !87
  switch i32 %492, label %689 [
    i32 2, label %493
    i32 3, label %493
    i32 10, label %493
  ]

493:                                              ; preds = %491, %491, %491
  tail call void @resetTransModal(ptr noundef nonnull %0) #16
  tail call void @resetTransRestrictions(ptr noundef nonnull %0) #16
  tail call void @restoreTransObjects(ptr noundef nonnull %0) #16
  tail call fastcc void @initTranslation(ptr noundef nonnull %0)
  tail call void @initSnapping(ptr noundef nonnull %0, ptr noundef null) #16
  %494 = load i32, ptr %7, align 8, !tbaa !91
  %495 = or i32 %494, 1
  store i32 %495, ptr %7, align 8, !tbaa !91
  br label %689

496:                                              ; preds = %419
  %497 = load i32, ptr %0, align 8, !tbaa !87
  switch i32 %497, label %689 [
    i32 2, label %498
    i32 1, label %498
    i32 10, label %498
  ]

498:                                              ; preds = %496, %496, %496
  tail call void @resetTransModal(ptr noundef nonnull %0) #16
  tail call void @resetTransRestrictions(ptr noundef nonnull %0) #16
  tail call void @restoreTransObjects(ptr noundef nonnull %0) #16
  store i32 3, ptr %0, align 8, !tbaa !87
  %499 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyResize, ptr %499, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 3) #16
  %500 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %501 = load i32, ptr %500, align 4, !tbaa !99
  %502 = or i32 %501, 512
  store i32 %502, ptr %500, align 4, !tbaa !99
  %503 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 5
  %504 = load i16, ptr %503, align 8, !tbaa !131
  %505 = or i16 %504, 1
  store i16 %505, ptr %503, align 8, !tbaa !131
  %506 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 5, i64 1
  %507 = load i16, ptr %506, align 2, !tbaa !131
  %508 = or i16 %507, 1
  store i16 %508, ptr %506, align 2, !tbaa !131
  %509 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 5, i64 2
  %510 = load i16, ptr %509, align 4, !tbaa !131
  %511 = or i16 %510, 1
  store i16 %511, ptr %509, align 4, !tbaa !131
  %512 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 4
  %513 = load i16, ptr %512, align 2, !tbaa !132
  %514 = or i16 %513, 1
  store i16 %514, ptr %512, align 2, !tbaa !132
  %515 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %516 = load ptr, ptr %515, align 8, !tbaa !100
  %517 = icmp eq ptr %516, null
  br i1 %517, label %518, label %520

518:                                              ; preds = %498
  %519 = or i32 %501, 1536
  store i32 %519, ptr %500, align 4, !tbaa !99
  br label %520

520:                                              ; preds = %498, %518
  %521 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %522 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 2, ptr %522, align 2, !tbaa !107
  store i16 2, ptr %521, align 8, !tbaa !108
  %523 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store float 0.000000e+00, ptr %523, align 4, !tbaa !59
  %524 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 1
  store float 0x3FB99999A0000000, ptr %524, align 4, !tbaa !59
  %525 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %525, align 4, !tbaa !59
  %526 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  store float 0x3FB99999A0000000, ptr %526, align 4, !tbaa !59
  %527 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8, i64 1
  store float 0x3FB99999A0000000, ptr %527, align 4, !tbaa !59
  %528 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8, i64 2
  store float 0x3FB99999A0000000, ptr %528, align 4, !tbaa !59
  %529 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %530 = load ptr, ptr %529, align 8, !tbaa !109
  %531 = getelementptr inbounds %struct.Scene, ptr %530, i64 0, i32 38, i32 1
  %532 = load i8, ptr %531, align 4, !tbaa !110
  %533 = zext i8 %532 to i32
  %534 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %533, ptr %534, align 4, !tbaa !127
  %535 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %535, align 8, !tbaa !73
  %536 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2, i64 1
  store i32 0, ptr %536, align 4, !tbaa !73
  %537 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2, i64 2
  store i32 0, ptr %537, align 8, !tbaa !73
  tail call void @initSnapping(ptr noundef nonnull %0, ptr noundef null) #16
  %538 = load i32, ptr %7, align 8, !tbaa !91
  %539 = or i32 %538, 1
  store i32 %539, ptr %7, align 8, !tbaa !91
  br label %689

540:                                              ; preds = %419
  %541 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %542 = load i32, ptr %541, align 8, !tbaa !58
  %543 = and i32 %542, 1
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %545, label %689

545:                                              ; preds = %540
  %546 = load i32, ptr %0, align 8, !tbaa !87
  switch i32 %546, label %689 [
    i32 2, label %547
    i32 3, label %547
    i32 10, label %547
    i32 1, label %547
  ]

547:                                              ; preds = %545, %545, %545, %545
  tail call void @resetTransModal(ptr noundef nonnull %0) #16
  tail call void @resetTransRestrictions(ptr noundef nonnull %0) #16
  %548 = load i32, ptr %0, align 8, !tbaa !87
  %549 = icmp eq i32 %548, 2
  tail call void @restoreTransObjects(ptr noundef nonnull %0) #16
  br i1 %549, label %550, label %576

550:                                              ; preds = %547
  store i32 10, ptr %0, align 8, !tbaa !87
  %551 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyTrackball, ptr %551, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 7) #16
  %552 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 1, ptr %552, align 2, !tbaa !107
  %553 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 1, ptr %553, align 8, !tbaa !108
  %554 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store float 0.000000e+00, ptr %554, align 4, !tbaa !59
  %555 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 1
  store float 0x3FB6571840000000, ptr %555, align 4, !tbaa !59
  %556 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3F91DF46A0000000, ptr %556, align 4, !tbaa !59
  %557 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  store float 0x3F91DF46A0000000, ptr %557, align 4, !tbaa !59
  %558 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8, i64 1
  store float 0x3F91DF46A0000000, ptr %558, align 4, !tbaa !59
  %559 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8, i64 2
  store float 0x3F91DF46A0000000, ptr %559, align 4, !tbaa !59
  %560 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %561 = load ptr, ptr %560, align 8, !tbaa !109
  %562 = getelementptr inbounds %struct.Scene, ptr %561, i64 0, i32 38, i32 1
  %563 = load i8, ptr %562, align 4, !tbaa !110
  %564 = zext i8 %563 to i32
  %565 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %564, ptr %565, align 4, !tbaa !127
  %566 = getelementptr inbounds %struct.Scene, ptr %561, i64 0, i32 38, i32 2
  %567 = load i8, ptr %566, align 1, !tbaa !128
  %568 = icmp eq i8 %567, 2
  %569 = zext i1 %568 to i8
  %570 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 3
  store i8 %569, ptr %570, align 4, !tbaa !129
  %571 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 5, ptr %571, align 8, !tbaa !73
  %572 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2, i64 1
  store i32 5, ptr %572, align 4, !tbaa !73
  %573 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %574 = load i32, ptr %573, align 4, !tbaa !99
  %575 = or i32 %574, 256
  store i32 %575, ptr %573, align 4, !tbaa !99
  br label %577

576:                                              ; preds = %547
  tail call fastcc void @initRotation(ptr noundef nonnull %0)
  br label %577

577:                                              ; preds = %576, %550
  tail call void @initSnapping(ptr noundef nonnull %0, ptr noundef null) #16
  %578 = load i32, ptr %7, align 8, !tbaa !91
  %579 = or i32 %578, 1
  store i32 %579, ptr %7, align 8, !tbaa !91
  br label %689

580:                                              ; preds = %419
  %581 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 19
  %582 = load i16, ptr %581, align 4, !tbaa !140
  %583 = icmp eq i16 %582, 0
  br i1 %583, label %593, label %584

584:                                              ; preds = %580
  %585 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %586 = load i32, ptr %585, align 8, !tbaa !58
  %587 = and i32 %586, 4
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %589, label %689

589:                                              ; preds = %584
  %590 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %591 = load i32, ptr %590, align 4, !tbaa !99
  %592 = xor i32 %591, 4096
  store i32 %592, ptr %590, align 4, !tbaa !99
  tail call void @sort_trans_data_dist(ptr noundef %0) #16
  tail call void @calculatePropRatio(ptr noundef %0) #16
  store i32 1, ptr %7, align 8, !tbaa !91
  br label %689

593:                                              ; preds = %580
  %594 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %595 = load i32, ptr %594, align 4, !tbaa !99
  %596 = and i32 %595, 256
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %598, label %689

598:                                              ; preds = %593
  tail call void @stopConstraint(ptr noundef %0) #16
  %599 = load i32, ptr %7, align 8, !tbaa !91
  %600 = or i32 %599, 1
  store i32 %600, ptr %7, align 8, !tbaa !91
  br label %689

601:                                              ; preds = %419, %419, %419
  %602 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %603 = load i32, ptr %602, align 4, !tbaa !99
  %604 = and i32 %603, 256
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %606, label %689

606:                                              ; preds = %601
  tail call fastcc void @transform_event_xyz_constraint(ptr noundef %0, i16 noundef signext %31, i8 noundef zeroext %4)
  br label %689

607:                                              ; preds = %419
  %608 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %609 = load i32, ptr %608, align 4, !tbaa !99
  %610 = and i32 %609, 2048
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %689, label %612

612:                                              ; preds = %607
  %613 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 17
  %614 = load i16, ptr %613, align 8, !tbaa !139
  %615 = icmp eq i16 %614, 0
  br i1 %615, label %689, label %616

616:                                              ; preds = %612
  %617 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 45
  %618 = load i16, ptr %617, align 2, !tbaa !141
  %619 = sext i16 %618 to i32
  %620 = add nsw i32 %619, 1
  %621 = srem i32 %620, 7
  %622 = trunc i32 %621 to i16
  store i16 %622, ptr %617, align 2, !tbaa !141
  tail call void @calculatePropRatio(ptr noundef %0) #16
  %623 = load i32, ptr %7, align 8, !tbaa !91
  %624 = or i32 %623, 1
  store i32 %624, ptr %7, align 8, !tbaa !91
  br label %689

625:                                              ; preds = %419
  %626 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 19
  %627 = load i16, ptr %626, align 4, !tbaa !140
  %628 = icmp eq i16 %627, 0
  br i1 %628, label %689, label %629

629:                                              ; preds = %625
  %630 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %631 = load i32, ptr %630, align 4, !tbaa !99
  %632 = and i32 %631, 2048
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %689, label %634

634:                                              ; preds = %629
  %635 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 18
  %636 = load float, ptr %635, align 4, !tbaa !136
  %637 = fmul float %636, 0x3FF19999A0000000
  store float %637, ptr %635, align 4, !tbaa !136
  %638 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %639 = load i8, ptr %638, align 8, !tbaa !34
  %640 = icmp eq i8 %639, 1
  br i1 %640, label %641, label %652

641:                                              ; preds = %634
  %642 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 31
  %643 = load i16, ptr %642, align 4, !tbaa !57
  %644 = icmp eq i16 %643, 0
  br i1 %644, label %652, label %645

645:                                              ; preds = %641
  %646 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %647 = load ptr, ptr %646, align 8, !tbaa !61
  %648 = getelementptr inbounds %struct.View3D, ptr %647, i64 0, i32 33
  %649 = load float, ptr %648, align 8, !tbaa !137
  %650 = fcmp olt float %637, %649
  %651 = select i1 %650, float %637, float %649
  store float %651, ptr %635, align 4, !tbaa !136
  br label %652

652:                                              ; preds = %645, %641, %634
  tail call void @calculatePropRatio(ptr noundef %0) #16
  store i32 1, ptr %7, align 8, !tbaa !91
  br label %689

653:                                              ; preds = %419, %419
  %654 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %655 = load i32, ptr %654, align 4, !tbaa !99
  %656 = and i32 %655, 262144
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %659, label %658

658:                                              ; preds = %653
  tail call void @transform_autoik_update(ptr noundef %0, i16 noundef signext 1) #16
  br label %659

659:                                              ; preds = %653, %658
  store i32 1, ptr %7, align 8, !tbaa !91
  br label %689

660:                                              ; preds = %419
  %661 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 19
  %662 = load i16, ptr %661, align 4, !tbaa !140
  %663 = icmp eq i16 %662, 0
  br i1 %663, label %689, label %664

664:                                              ; preds = %660
  %665 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %666 = load i32, ptr %665, align 4, !tbaa !99
  %667 = and i32 %666, 2048
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %689, label %669

669:                                              ; preds = %664
  %670 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 18
  %671 = load float, ptr %670, align 4, !tbaa !136
  %672 = fmul float %671, 0x3FED1745C0000000
  store float %672, ptr %670, align 4, !tbaa !136
  tail call void @calculatePropRatio(ptr noundef %0) #16
  store i32 1, ptr %7, align 8, !tbaa !91
  br label %689

673:                                              ; preds = %419, %419
  %674 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %675 = load i32, ptr %674, align 4, !tbaa !99
  %676 = and i32 %675, 262144
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %679, label %678

678:                                              ; preds = %673
  tail call void @transform_autoik_update(ptr noundef %0, i16 noundef signext -1) #16
  br label %679

679:                                              ; preds = %673, %678
  store i32 1, ptr %7, align 8, !tbaa !91
  br label %689

680:                                              ; preds = %419, %419
  %681 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %682 = load i8, ptr %681, align 8, !tbaa !34
  switch i8 %682, label %689 [
    i8 8, label %683
    i8 1, label %683
  ]

683:                                              ; preds = %680, %680
  %684 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %685 = load i32, ptr %684, align 4, !tbaa !99
  %686 = or i32 %685, 16777216
  store i32 %686, ptr %684, align 4, !tbaa !99
  %687 = load i32, ptr %7, align 8, !tbaa !91
  %688 = or i32 %687, 1
  store i32 %688, ptr %7, align 8, !tbaa !91
  br label %689

689:                                              ; preds = %680, %545, %496, %491, %419, %683, %660, %664, %669, %625, %629, %652, %607, %612, %616, %601, %606, %589, %584, %598, %593, %540, %577, %520, %493, %430, %484, %679, %659, %489, %487, %428, %422, %420
  %690 = phi i8 [ 0, %419 ], [ 1, %683 ], [ 1, %679 ], [ 1, %669 ], [ 0, %664 ], [ 0, %660 ], [ 1, %659 ], [ 1, %652 ], [ 0, %629 ], [ 0, %625 ], [ 1, %616 ], [ 0, %612 ], [ 0, %607 ], [ 0, %601 ], [ 1, %606 ], [ 0, %584 ], [ 1, %589 ], [ 0, %593 ], [ 1, %598 ], [ 0, %540 ], [ 1, %577 ], [ 1, %520 ], [ 1, %493 ], [ 1, %489 ], [ 1, %487 ], [ 1, %484 ], [ 0, %430 ], [ 1, %428 ], [ 1, %422 ], [ 1, %420 ], [ 0, %491 ], [ 0, %496 ], [ 0, %545 ], [ 0, %680 ]
  %691 = call i32 @handleSnapping(ptr noundef %0, ptr noundef %1) #16
  %692 = load i32, ptr %7, align 8, !tbaa !91
  %693 = or i32 %692, %691
  store i32 %693, ptr %7, align 8, !tbaa !91
  br label %732

694:                                              ; preds = %417
  switch i16 %31, label %718 [
    i16 217, label %695
    i16 216, label %695
    i16 2, label %699
    i16 213, label %708
    i16 214, label %708
  ]

695:                                              ; preds = %694, %694
  %696 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %697 = load i32, ptr %696, align 8, !tbaa !96
  %698 = and i32 %697, -17
  store i32 %698, ptr %696, align 8, !tbaa !96
  br label %715

699:                                              ; preds = %694
  %700 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %701 = load i32, ptr %700, align 4, !tbaa !99
  %702 = and i32 %701, 256
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %704, label %718

704:                                              ; preds = %699
  %705 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %706 = load i32, ptr %705, align 8, !tbaa !96
  %707 = and i32 %706, -2
  store i32 %707, ptr %705, align 8, !tbaa !96
  tail call void @postSelectConstraint(ptr noundef %0) #16
  br label %715

708:                                              ; preds = %694, %694
  %709 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %710 = load i8, ptr %709, align 8, !tbaa !34
  switch i8 %710, label %718 [
    i8 8, label %711
    i8 1, label %711
  ]

711:                                              ; preds = %708, %708
  %712 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %713 = load i32, ptr %712, align 4, !tbaa !99
  %714 = and i32 %713, -16777217
  store i32 %714, ptr %712, align 4, !tbaa !99
  br label %715

715:                                              ; preds = %695, %704, %711
  %716 = load i32, ptr %7, align 8, !tbaa !91
  %717 = or i32 %716, 1
  store i32 %717, ptr %7, align 8, !tbaa !91
  br label %718

718:                                              ; preds = %715, %708, %694, %699
  %719 = phi i8 [ 0, %694 ], [ 0, %699 ], [ 0, %708 ], [ 1, %715 ]
  %720 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %721 = load i32, ptr %720, align 4, !tbaa !99
  %722 = and i32 %721, 8388608
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %732, label %724

724:                                              ; preds = %718
  %725 = load i16, ptr %30, align 8, !tbaa !94
  %726 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 42
  %727 = load i16, ptr %726, align 8, !tbaa !142
  %728 = icmp eq i16 %725, %727
  br i1 %728, label %729, label %732

729:                                              ; preds = %724
  switch i16 %727, label %732 [
    i16 1, label %730
    i16 3, label %730
  ]

730:                                              ; preds = %729, %729
  %731 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  store i16 2, ptr %731, align 4, !tbaa !98
  br label %732

732:                                              ; preds = %729, %417, %159, %124, %54, %689, %718, %730, %724, %61, %63, %230, %236, %242, %322, %325, %398, %72, %106, %113, %86, %88, %101, %67, %156, %119, %213, %219, %224, %193, %253, %248, %261, %256, %269, %264, %283, %272, %297, %286, %311, %300, %319, %314, %358, %328, %384, %361, %392, %387, %406, %401, %414, %409, %59, %26
  %733 = phi i8 [ 1, %26 ], [ 1, %54 ], [ 0, %59 ], [ 1, %414 ], [ 0, %409 ], [ 1, %406 ], [ 0, %401 ], [ 1, %398 ], [ 1, %392 ], [ 0, %387 ], [ 1, %384 ], [ 0, %361 ], [ 1, %358 ], [ 0, %328 ], [ 1, %325 ], [ 1, %322 ], [ 1, %319 ], [ 0, %314 ], [ 1, %311 ], [ 0, %300 ], [ 1, %297 ], [ 0, %286 ], [ 1, %283 ], [ 0, %272 ], [ 1, %269 ], [ 0, %264 ], [ 1, %261 ], [ 0, %256 ], [ 0, %248 ], [ 1, %253 ], [ 1, %242 ], [ 1, %236 ], [ 1, %230 ], [ 1, %193 ], [ 1, %213 ], [ 1, %224 ], [ 0, %219 ], [ 0, %119 ], [ 1, %156 ], [ 1, %67 ], [ 1, %72 ], [ 1, %101 ], [ 0, %88 ], [ 0, %86 ], [ 1, %113 ], [ 0, %106 ], [ 1, %63 ], [ 1, %61 ], [ %690, %689 ], [ %719, %730 ], [ %719, %724 ], [ %719, %718 ], [ 0, %124 ], [ 0, %159 ], [ 0, %417 ], [ %719, %729 ]
  %734 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 8
  %735 = load ptr, ptr %734, align 8, !tbaa !143
  %736 = icmp eq ptr %735, null
  br i1 %736, label %747, label %737

737:                                              ; preds = %732
  %738 = icmp eq i8 %733, 0
  br i1 %738, label %743, label %739

739:                                              ; preds = %737
  %740 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %741 = load i16, ptr %740, align 8, !tbaa !94
  %742 = icmp eq i16 %741, 4
  br i1 %742, label %743, label %747

743:                                              ; preds = %739, %737
  %744 = call i32 %735(ptr noundef %0, ptr noundef %1) #16
  %745 = load i32, ptr %7, align 8, !tbaa !91
  %746 = or i32 %745, %744
  store i32 %746, ptr %7, align 8, !tbaa !91
  br label %747

747:                                              ; preds = %743, %739, %732
  %748 = icmp eq i8 %733, 0
  br i1 %748, label %749, label %768

749:                                              ; preds = %747
  %750 = load i32, ptr %7, align 8, !tbaa !91
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %752, label %768

752:                                              ; preds = %749
  %753 = load i16, ptr %10, align 2, !tbaa !92
  %754 = icmp eq i16 %753, 1
  br i1 %754, label %759, label %755

755:                                              ; preds = %752
  %756 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %757 = load i16, ptr %756, align 8, !tbaa !94
  %758 = icmp eq i16 %757, 20514
  br i1 %758, label %759, label %768

759:                                              ; preds = %755, %752
  %760 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 53
  %761 = load ptr, ptr %760, align 8, !tbaa !95
  %762 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %763 = call zeroext i8 @handleNumInput(ptr noundef %761, ptr noundef nonnull %762, ptr noundef %1) #16
  %764 = icmp eq i8 %763, 0
  br i1 %764, label %768, label %765

765:                                              ; preds = %759
  %766 = load i32, ptr %7, align 8, !tbaa !91
  %767 = or i32 %766, 1
  store i32 %767, ptr %7, align 8, !tbaa !91
  br label %768

768:                                              ; preds = %765, %759, %755, %749, %747
  %769 = phi i8 [ %733, %747 ], [ %733, %749 ], [ 1, %765 ], [ %733, %759 ], [ %733, %755 ]
  %770 = icmp eq i8 %769, 0
  br i1 %770, label %771, label %775

771:                                              ; preds = %768
  %772 = load i32, ptr %7, align 8, !tbaa !91
  %773 = icmp eq i32 %772, 0
  %774 = select i1 %773, i32 8, i32 0
  br label %775

775:                                              ; preds = %771, %768
  %776 = phi i32 [ 0, %768 ], [ %774, %771 ]
  ret i32 %776
}

declare zeroext i8 @constraintModeToChar(ptr noundef) local_unnamed_addr #2

declare i32 @handleMouseInput(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @hasNumInput(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @handleNumInput(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @applyMouseInput(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @handleSnapping(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @resetTransModal(ptr noundef) local_unnamed_addr #2

declare void @resetTransRestrictions(ptr noundef) local_unnamed_addr #2

declare void @restoreTransObjects(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @initTranslation(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %3 = load i8, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i8 %3, 12
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 60
  %7 = load ptr, ptr %6, align 8, !tbaa !144
  tail call void @BKE_report(ptr noundef %7, i32 noundef 32, ptr noundef nonnull @.str.96) #16
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  store i16 3, ptr %8, align 4, !tbaa !98
  br label %9

9:                                                ; preds = %5, %1
  store i32 1, ptr %0, align 8, !tbaa !87
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyTranslation, ptr %10, align 8, !tbaa !106
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %11, i32 noundef 1) #16
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !99
  %14 = and i32 %13, 32768
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i16 2, i16 1
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 %16, ptr %17, align 2, !tbaa !107
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 4
  store i16 0, ptr %19, align 2, !tbaa !132
  store i16 %16, ptr %18, align 8, !tbaa !108
  %20 = load i8, ptr %2, align 8, !tbaa !34
  switch i8 %20, label %45 [
    i8 1, label %21
    i8 6, label %34
    i8 20, label %34
    i8 16, label %38
  ]

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 30
  %25 = load ptr, ptr %24, align 8, !tbaa !54
  %26 = icmp eq ptr %25, null
  br i1 %26, label %49, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store float 0.000000e+00, ptr %28, align 4, !tbaa !59
  %29 = getelementptr inbounds %struct.RegionView3D, ptr %25, i64 0, i32 36
  %30 = load float, ptr %29, align 8, !tbaa !145
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 1
  store float %30, ptr %31, align 4, !tbaa !59
  %32 = fmul float %30, 0x3FB99999A0000000
  %33 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float %32, ptr %33, align 4, !tbaa !59
  br label %49

34:                                               ; preds = %9, %9
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store float 0.000000e+00, ptr %35, align 4, !tbaa !59
  %36 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 1
  store float 1.250000e-01, ptr %36, align 4, !tbaa !59
  %37 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 6.250000e-02, ptr %37, align 4, !tbaa !59
  br label %49

38:                                               ; preds = %9
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store float 0.000000e+00, ptr %39, align 4, !tbaa !59
  %40 = tail call float @ED_node_grid_size() #16
  %41 = fmul float %40, 5.000000e+00
  %42 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 1
  store float %41, ptr %42, align 4, !tbaa !59
  %43 = tail call float @ED_node_grid_size() #16
  %44 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float %43, ptr %44, align 4, !tbaa !59
  br label %49

45:                                               ; preds = %9
  %46 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store float 0.000000e+00, ptr %46, align 4, !tbaa !59
  %47 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 1.000000e+00, ptr %47, align 4, !tbaa !59
  %48 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 1
  store float 1.000000e+00, ptr %48, align 4, !tbaa !59
  br label %49

49:                                               ; preds = %21, %27, %34, %45, %38
  %50 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  %51 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !59
  store float %52, ptr %50, align 4, !tbaa !59
  %53 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8, i64 1
  store float %52, ptr %53, align 4, !tbaa !59
  %54 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8, i64 2
  store float %52, ptr %54, align 4, !tbaa !59
  %55 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %56 = load ptr, ptr %55, align 8, !tbaa !109
  %57 = getelementptr inbounds %struct.Scene, ptr %56, i64 0, i32 38, i32 1
  %58 = load i8, ptr %57, align 4, !tbaa !110
  %59 = zext i8 %58 to i32
  %60 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %59, ptr %60, align 4, !tbaa !127
  %61 = load i8, ptr %2, align 8, !tbaa !34
  %62 = icmp eq i8 %61, 1
  %63 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  %64 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2, i64 1
  %65 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2, i64 2
  %66 = zext i1 %62 to i32
  store i32 %66, ptr %63, align 8, !tbaa !73
  store i32 %66, ptr %64, align 4, !tbaa !73
  store i32 %66, ptr %65, align 8, !tbaa !73
  ret void
}

declare void @initSnapping(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_mousemove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @initEdgeSlide(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [2 x float], align 4
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [2 x float], align 4
  %11 = alloca %struct.BMIter, align 8
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca %struct.BMIter, align 8
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca %struct.BMIter, align 8
  store i32 28, ptr %0, align 8, !tbaa !87
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyEdgeSlide, ptr %18, align 8, !tbaa !106
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 8
  store ptr @handleEventEdgeSlide, ptr %19, align 8, !tbaa !143
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %21 = load ptr, ptr %20, align 8, !tbaa !100
  %22 = tail call ptr @BKE_editmesh_from_object(ptr noundef %21) #16
  %23 = load ptr, ptr %22, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #16
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !148
  %25 = tail call ptr %24(i64 noundef 80, ptr noundef nonnull @.str.134) #16
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %27 = load ptr, ptr %26, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61
  %29 = load i32, ptr %28, align 8, !tbaa !73
  %30 = sitofp i32 %29 to float
  store float %30, ptr %10, align 4, !tbaa !59
  %31 = getelementptr inbounds float, ptr %10, i64 1
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61, i64 1
  %33 = load i32, ptr %32, align 4, !tbaa !73
  %34 = sitofp i32 %33 to float
  store float %34, ptr %31, align 4, !tbaa !59
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %36 = load i8, ptr %35, align 8, !tbaa !34
  %37 = icmp eq i8 %36, 1
  br i1 %37, label %38, label %51

38:                                               ; preds = %1
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %40 = load ptr, ptr %39, align 8, !tbaa !70
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ScrArea, ptr %40, i64 0, i32 19
  %44 = load ptr, ptr %43, align 8, !tbaa !71
  br label %45

45:                                               ; preds = %42, %38
  %46 = phi ptr [ %44, %42 ], [ null, %38 ]
  %47 = icmp eq ptr %27, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.ARegion, ptr %27, i64 0, i32 30
  %50 = load ptr, ptr %49, align 8, !tbaa !54
  br label %51

51:                                               ; preds = %48, %45, %1
  %52 = phi ptr [ null, %1 ], [ %50, %48 ], [ null, %45 ]
  %53 = phi ptr [ null, %1 ], [ %46, %48 ], [ %46, %45 ]
  %54 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 57
  %55 = load ptr, ptr %54, align 8, !tbaa !149
  %56 = getelementptr inbounds %struct.ToolSettings, ptr %55, i64 0, i32 10
  %57 = load i8, ptr %56, align 1, !tbaa !150
  %58 = and i8 %57, 4
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.BMesh, ptr %23, i64 0, i32 29
  %62 = load i32, ptr %61, align 4, !tbaa !157
  %63 = icmp slt i32 %62, 2
  br i1 %63, label %65, label %64

64:                                               ; preds = %60, %51
  br label %65

65:                                               ; preds = %60, %64
  %66 = phi i8 [ 0, %64 ], [ 1, %60 ]
  %67 = getelementptr inbounds %struct.EdgeSlideData, ptr %25, i64 0, i32 6
  store i8 %66, ptr %67, align 8, !tbaa !160
  %68 = getelementptr inbounds %struct.EdgeSlideData, ptr %25, i64 0, i32 9
  store i8 1, ptr %68, align 4, !tbaa !162
  %69 = getelementptr inbounds %struct.EdgeSlideData, ptr %25, i64 0, i32 11
  store i32 0, ptr %69, align 8, !tbaa !163
  %70 = getelementptr inbounds %struct.EdgeSlideData, ptr %25, i64 0, i32 10
  store i8 0, ptr %70, align 1, !tbaa !164
  %71 = icmp eq ptr %52, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  call void @unit_m4(ptr noundef nonnull %9) #16
  br label %75

73:                                               ; preds = %65
  %74 = load ptr, ptr %20, align 8, !tbaa !100
  call void @ED_view3d_ob_project_mat_get(ptr noundef nonnull %52, ptr noundef %74, ptr noundef nonnull %9) #16
  br label %75

75:                                               ; preds = %73, %72
  %76 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 1, ptr %76, align 4, !tbaa !165
  %77 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %77, align 8, !tbaa !167
  %78 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %78, align 8, !tbaa !168
  %79 = getelementptr inbounds %struct.BMesh, ptr %23, i64 0, i32 9
  %80 = load ptr, ptr %79, align 8, !tbaa !169
  store ptr %80, ptr %8, align 8, !tbaa !170
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #16
  %81 = load ptr, ptr %78, align 8, !tbaa !168
  %82 = call ptr %81(ptr noundef nonnull %8) #16
  %83 = icmp eq ptr %82, null
  br i1 %83, label %126, label %84

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 4
  %86 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 1
  %87 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 2
  br label %88

88:                                               ; preds = %84, %122
  %89 = phi ptr [ %82, %84 ], [ %124, %122 ]
  %90 = getelementptr inbounds %struct.BMHeader, ptr %89, i64 0, i32 3
  %91 = load i8, ptr %90, align 1, !tbaa !171
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %122, label %94

94:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #16
  store i8 4, ptr %85, align 4, !tbaa !165
  store ptr @bmiter__edge_of_vert_begin, ptr %86, align 8, !tbaa !167
  store ptr @bmiter__edge_of_vert_step, ptr %87, align 8, !tbaa !168
  store ptr %89, ptr %11, align 8, !tbaa !170
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %11) #16
  %95 = load ptr, ptr %87, align 8, !tbaa !168
  %96 = call ptr %95(ptr noundef nonnull %11) #16
  %97 = icmp eq ptr %96, null
  br i1 %97, label %114, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.BMVert, ptr %89, i64 0, i32 4
  br label %100

100:                                              ; preds = %98, %109
  %101 = phi ptr [ %96, %98 ], [ %112, %109 ]
  %102 = phi i32 [ 0, %98 ], [ %110, %109 ]
  %103 = getelementptr inbounds %struct.BMHeader, ptr %101, i64 0, i32 3
  %104 = load i8, ptr %103, align 1, !tbaa !171
  %105 = and i8 %104, 1
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %100
  store ptr %101, ptr %99, align 8, !tbaa !173
  %108 = add nsw i32 %102, 1
  br label %109

109:                                              ; preds = %107, %100
  %110 = phi i32 [ %108, %107 ], [ %102, %100 ]
  %111 = load ptr, ptr %87, align 8, !tbaa !168
  %112 = call ptr %111(ptr noundef nonnull %11) #16
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %100, !llvm.loop !175

114:                                              ; preds = %109, %94
  %115 = phi i32 [ 0, %94 ], [ %110, %109 ]
  %116 = icmp ne i32 %115, 0
  %117 = icmp slt i32 %115, 3
  %118 = and i1 %116, %117
  br i1 %118, label %121, label %119

119:                                              ; preds = %114
  %120 = load ptr, ptr @MEM_freeN, align 8, !tbaa !148
  call void %120(ptr noundef %25) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #16
  br label %1174

121:                                              ; preds = %114
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #16
  br label %122

122:                                              ; preds = %121, %88
  %123 = load ptr, ptr %78, align 8, !tbaa !168
  %124 = call ptr %123(ptr noundef nonnull %8) #16
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %88, !llvm.loop !178

126:                                              ; preds = %122, %75
  store i8 2, ptr %76, align 4, !tbaa !165
  store ptr @bmiter__elem_of_mesh_begin, ptr %77, align 8, !tbaa !167
  store ptr @bmiter__elem_of_mesh_step, ptr %78, align 8, !tbaa !168
  %127 = getelementptr inbounds %struct.BMesh, ptr %23, i64 0, i32 10
  %128 = load ptr, ptr %127, align 8, !tbaa !179
  store ptr %128, ptr %8, align 8, !tbaa !170
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #16
  %129 = load ptr, ptr %78, align 8, !tbaa !168
  %130 = call ptr %129(ptr noundef nonnull %8) #16
  %131 = icmp eq ptr %130, null
  br i1 %131, label %169, label %132

132:                                              ; preds = %126, %165
  %133 = phi ptr [ %167, %165 ], [ %130, %126 ]
  %134 = getelementptr inbounds %struct.BMHeader, ptr %133, i64 0, i32 3
  %135 = load i8, ptr %134, align 1, !tbaa !171
  %136 = and i8 %135, 1
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %165, label %138

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.BMEdge, ptr %133, i64 0, i32 4
  %140 = load ptr, ptr %139, align 8, !tbaa !180
  %141 = icmp eq ptr %140, null
  br i1 %141, label %151, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.BMLoop, ptr %140, i64 0, i32 4
  %144 = load ptr, ptr %143, align 8, !tbaa !183
  %145 = icmp eq ptr %144, %140
  br i1 %145, label %151, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.BMLoop, ptr %144, i64 0, i32 4
  %148 = load ptr, ptr %147, align 8, !tbaa !183
  %149 = icmp eq ptr %148, %140
  %150 = zext i1 %149 to i8
  br label %151

151:                                              ; preds = %146, %142, %138
  %152 = phi i8 [ 0, %142 ], [ 0, %138 ], [ %150, %146 ]
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %151
  br i1 %141, label %160, label %155

155:                                              ; preds = %154
  %156 = getelementptr inbounds %struct.BMLoop, ptr %140, i64 0, i32 4
  %157 = load ptr, ptr %156, align 8, !tbaa !183
  %158 = icmp eq ptr %157, %140
  %159 = zext i1 %158 to i8
  br label %160

160:                                              ; preds = %155, %154
  %161 = phi i8 [ 0, %154 ], [ %159, %155 ]
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = load ptr, ptr @MEM_freeN, align 8, !tbaa !148
  call void %164(ptr noundef %25) #16
  br label %1174

165:                                              ; preds = %160, %151, %132
  %166 = load ptr, ptr %78, align 8, !tbaa !168
  %167 = call ptr %166(ptr noundef nonnull %8) #16
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %132, !llvm.loop !185

169:                                              ; preds = %165, %126
  %170 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !148
  %171 = load i32, ptr %23, align 8, !tbaa !186
  %172 = sext i32 %171 to i64
  %173 = shl nsw i64 %172, 2
  %174 = call ptr %170(i64 noundef %173, ptr noundef nonnull @__func__.createEdgeSlideVerts) #16
  store i8 1, ptr %76, align 4, !tbaa !165
  store ptr @bmiter__elem_of_mesh_begin, ptr %77, align 8, !tbaa !167
  store ptr @bmiter__elem_of_mesh_step, ptr %78, align 8, !tbaa !168
  %175 = load ptr, ptr %79, align 8, !tbaa !169
  store ptr %175, ptr %8, align 8, !tbaa !170
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #16
  %176 = load ptr, ptr %78, align 8, !tbaa !168
  %177 = call ptr %176(ptr noundef nonnull %8) #16
  %178 = icmp eq ptr %177, null
  br i1 %178, label %201, label %179

179:                                              ; preds = %169, %193
  %180 = phi i64 [ %199, %193 ], [ 0, %169 ]
  %181 = phi ptr [ %198, %193 ], [ %177, %169 ]
  %182 = phi i32 [ %194, %193 ], [ 0, %169 ]
  %183 = getelementptr inbounds %struct.BMHeader, ptr %181, i64 0, i32 3
  %184 = load i8, ptr %183, align 1, !tbaa !171
  %185 = and i8 %184, 1
  %186 = icmp eq i8 %185, 0
  %187 = getelementptr inbounds i32, ptr %174, i64 %180
  br i1 %186, label %191, label %188

188:                                              ; preds = %179
  %189 = or i8 %184, 16
  store i8 %189, ptr %183, align 1, !tbaa !171
  store i32 %182, ptr %187, align 4, !tbaa !73
  %190 = add nsw i32 %182, 1
  br label %193

191:                                              ; preds = %179
  %192 = and i8 %184, -18
  store i8 %192, ptr %183, align 1, !tbaa !171
  store i32 -1, ptr %187, align 4, !tbaa !73
  br label %193

193:                                              ; preds = %191, %188
  %194 = phi i32 [ %190, %188 ], [ %182, %191 ]
  %195 = getelementptr inbounds %struct.BMHeader, ptr %181, i64 0, i32 1
  %196 = trunc i64 %180 to i32
  store i32 %196, ptr %195, align 8, !tbaa !187
  %197 = load ptr, ptr %78, align 8, !tbaa !168
  %198 = call ptr %197(ptr noundef nonnull %8) #16
  %199 = add nuw i64 %180, 1
  %200 = icmp eq ptr %198, null
  br i1 %200, label %201, label %179, !llvm.loop !188

201:                                              ; preds = %193, %169
  %202 = phi i32 [ 0, %169 ], [ %194, %193 ]
  %203 = getelementptr inbounds %struct.BMesh, ptr %23, i64 0, i32 7
  %204 = load i8, ptr %203, align 4, !tbaa !189
  %205 = and i8 %204, -2
  store i8 %205, ptr %203, align 4, !tbaa !189
  %206 = icmp eq i32 %202, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %201
  %208 = load ptr, ptr @MEM_freeN, align 8, !tbaa !148
  call void %208(ptr noundef %25) #16
  %209 = load ptr, ptr @MEM_freeN, align 8, !tbaa !148
  call void %209(ptr noundef %174) #16
  br label %1174

210:                                              ; preds = %201
  %211 = load ptr, ptr @MEM_callocN, align 8, !tbaa !148
  %212 = sext i32 %202 to i64
  %213 = mul nsw i64 %212, 72
  %214 = call ptr %211(i64 noundef %213, ptr noundef nonnull @.str.135) #16
  %215 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %216 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %217 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %218 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %219 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %220 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %221 = getelementptr inbounds float, ptr %12, i64 1
  %222 = getelementptr inbounds float, ptr %12, i64 2
  %223 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  %224 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %225 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %226 = getelementptr inbounds float, ptr %13, i64 1
  %227 = getelementptr inbounds float, ptr %13, i64 2
  %228 = getelementptr inbounds float, ptr %12, i64 1
  %229 = getelementptr inbounds float, ptr %12, i64 2
  %230 = getelementptr inbounds float, ptr %13, i64 1
  %231 = getelementptr inbounds float, ptr %13, i64 2
  %232 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  %233 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  %234 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  %235 = getelementptr inbounds float, ptr %12, i64 1
  %236 = getelementptr inbounds float, ptr %12, i64 2
  %237 = getelementptr inbounds float, ptr %13, i64 1
  %238 = getelementptr inbounds float, ptr %13, i64 2
  br label %239

239:                                              ; preds = %766, %210
  %240 = phi i32 [ 0, %210 ], [ %768, %766 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #16
  store i8 1, ptr %76, align 4, !tbaa !165
  store ptr @bmiter__elem_of_mesh_begin, ptr %77, align 8, !tbaa !167
  store ptr @bmiter__elem_of_mesh_step, ptr %78, align 8, !tbaa !168
  %241 = load ptr, ptr %79, align 8, !tbaa !169
  store ptr %241, ptr %8, align 8, !tbaa !170
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #16
  %242 = load ptr, ptr %78, align 8, !tbaa !168
  %243 = call ptr %242(ptr noundef nonnull %8) #16
  %244 = icmp eq ptr %243, null
  br i1 %244, label %766, label %245

245:                                              ; preds = %239
  %246 = getelementptr inbounds %struct.BMHeader, ptr %243, i64 0, i32 3
  %247 = load i8, ptr %246, align 1, !tbaa !171
  %248 = and i8 %247, 16
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %255, label %259

250:                                              ; preds = %255
  %251 = getelementptr inbounds %struct.BMHeader, ptr %257, i64 0, i32 3
  %252 = load i8, ptr %251, align 1, !tbaa !171
  %253 = and i8 %252, 16
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %255, label %259, !llvm.loop !190

255:                                              ; preds = %245, %250
  %256 = load ptr, ptr %78, align 8, !tbaa !168
  %257 = call ptr %256(ptr noundef nonnull %8) #16
  %258 = icmp eq ptr %257, null
  br i1 %258, label %766, label %250, !llvm.loop !190

259:                                              ; preds = %250, %245
  %260 = phi i1 [ %244, %245 ], [ %258, %250 ]
  %261 = phi ptr [ %243, %245 ], [ %257, %250 ]
  %262 = getelementptr inbounds %struct.BMVert, ptr %261, i64 0, i32 4
  %263 = load ptr, ptr %262, align 8, !tbaa !173
  %264 = icmp eq ptr %263, null
  br i1 %264, label %766, label %265, !llvm.loop !191

265:                                              ; preds = %259, %302
  %266 = phi ptr [ %307, %302 ], [ %261, %259 ]
  %267 = phi ptr [ %284, %302 ], [ %263, %259 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  store i8 4, ptr %215, align 4, !tbaa !165
  store ptr @bmiter__edge_of_vert_begin, ptr %216, align 8, !tbaa !167
  store ptr @bmiter__edge_of_vert_step, ptr %217, align 8, !tbaa !168
  store ptr %266, ptr %5, align 8, !tbaa !170
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %5) #16
  %268 = load ptr, ptr %217, align 8, !tbaa !168
  %269 = call ptr %268(ptr noundef nonnull %5) #16
  %270 = icmp eq ptr %269, null
  br i1 %270, label %283, label %271

271:                                              ; preds = %265, %279
  %272 = phi ptr [ %281, %279 ], [ %269, %265 ]
  %273 = getelementptr inbounds %struct.BMHeader, ptr %272, i64 0, i32 3
  %274 = load i8, ptr %273, align 1, !tbaa !171
  %275 = and i8 %274, 1
  %276 = icmp eq i8 %275, 0
  %277 = icmp eq ptr %272, %267
  %278 = or i1 %277, %276
  br i1 %278, label %279, label %283

279:                                              ; preds = %271
  %280 = load ptr, ptr %217, align 8, !tbaa !168
  %281 = call ptr %280(ptr noundef nonnull %5) #16
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %271, !llvm.loop !192

283:                                              ; preds = %271, %279, %265
  %284 = phi ptr [ null, %265 ], [ %272, %271 ], [ null, %279 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %289

286:                                              ; preds = %283
  %287 = getelementptr inbounds %struct.BMVert, ptr %266, i64 0, i32 4
  %288 = load ptr, ptr %287, align 8, !tbaa !173
  br label %310

289:                                              ; preds = %283
  %290 = getelementptr inbounds %struct.BMEdge, ptr %284, i64 0, i32 2
  %291 = load ptr, ptr %290, align 8, !tbaa !193
  %292 = icmp eq ptr %291, %266
  %293 = getelementptr inbounds %struct.BMEdge, ptr %284, i64 0, i32 3
  %294 = load ptr, ptr %293, align 8, !tbaa !194
  %295 = icmp eq ptr %294, %266
  %296 = select i1 %295, ptr %291, ptr null
  %297 = select i1 %292, ptr %294, ptr %296
  %298 = getelementptr inbounds %struct.BMHeader, ptr %297, i64 0, i32 3
  %299 = load i8, ptr %298, align 1, !tbaa !171
  %300 = and i8 %299, 16
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %310, label %302

302:                                              ; preds = %289
  %303 = getelementptr inbounds %struct.BMEdge, ptr %284, i64 0, i32 3
  %304 = load ptr, ptr %303, align 8, !tbaa !194
  %305 = icmp eq ptr %304, %266
  %306 = select i1 %305, ptr %291, ptr null
  %307 = select i1 %292, ptr %304, ptr %306
  %308 = load ptr, ptr %262, align 8, !tbaa !173
  %309 = icmp eq ptr %284, %308
  br i1 %309, label %310, label %265, !llvm.loop !195

310:                                              ; preds = %302, %289, %286
  %311 = phi ptr [ %266, %286 ], [ %307, %302 ], [ %266, %289 ]
  %312 = phi ptr [ %288, %286 ], [ %284, %289 ], [ %284, %302 ]
  %313 = getelementptr inbounds %struct.BMHeader, ptr %311, i64 0, i32 3
  %314 = load i8, ptr %313, align 1, !tbaa !171
  %315 = and i8 %314, -17
  store i8 %315, ptr %313, align 1, !tbaa !171
  %316 = getelementptr inbounds %struct.BMEdge, ptr %312, i64 0, i32 4
  %317 = load ptr, ptr %316, align 8, !tbaa !180
  %318 = getelementptr inbounds %struct.BMLoop, ptr %317, i64 0, i32 4
  %319 = load ptr, ptr %318, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #16
  store i8 4, ptr %218, align 4, !tbaa !165
  store ptr @bmiter__edge_of_vert_begin, ptr %219, align 8, !tbaa !167
  store ptr @bmiter__edge_of_vert_step, ptr %220, align 8, !tbaa !168
  store ptr %311, ptr %4, align 8, !tbaa !170
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %4) #16
  %320 = load ptr, ptr %220, align 8, !tbaa !168
  %321 = call ptr %320(ptr noundef nonnull %4) #16
  %322 = icmp eq ptr %321, null
  br i1 %322, label %335, label %323

323:                                              ; preds = %310, %331
  %324 = phi ptr [ %333, %331 ], [ %321, %310 ]
  %325 = getelementptr inbounds %struct.BMHeader, ptr %324, i64 0, i32 3
  %326 = load i8, ptr %325, align 1, !tbaa !171
  %327 = and i8 %326, 1
  %328 = icmp eq i8 %327, 0
  %329 = icmp eq ptr %324, %312
  %330 = or i1 %329, %328
  br i1 %330, label %331, label %335

331:                                              ; preds = %323
  %332 = load ptr, ptr %220, align 8, !tbaa !168
  %333 = call ptr %332(ptr noundef nonnull %4) #16
  %334 = icmp eq ptr %333, null
  br i1 %334, label %335, label %323, !llvm.loop !192

335:                                              ; preds = %323, %331, %310
  %336 = phi ptr [ null, %310 ], [ %324, %323 ], [ null, %331 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #16
  %337 = icmp eq ptr %336, null
  br i1 %337, label %340, label %338

338:                                              ; preds = %335
  %339 = call fastcc ptr @get_next_loop(ptr noundef %311, ptr noundef %317, ptr noundef %312, ptr noundef nonnull %336, ptr noundef nonnull %12)
  br label %386

340:                                              ; preds = %335
  %341 = call ptr @BM_loop_other_edge_loop(ptr noundef %317, ptr noundef %311) #16
  %342 = getelementptr inbounds %struct.BMLoop, ptr %341, i64 0, i32 2
  %343 = load ptr, ptr %342, align 8, !tbaa !196
  %344 = getelementptr inbounds %struct.BMEdge, ptr %343, i64 0, i32 4
  %345 = load ptr, ptr %344, align 8, !tbaa !180
  %346 = icmp eq ptr %345, null
  br i1 %346, label %352, label %347

347:                                              ; preds = %340
  %348 = getelementptr inbounds %struct.BMLoop, ptr %345, i64 0, i32 4
  %349 = load ptr, ptr %348, align 8, !tbaa !183
  %350 = icmp eq ptr %349, %345
  %351 = zext i1 %350 to i8
  br label %352

352:                                              ; preds = %347, %340
  %353 = phi i8 [ 0, %340 ], [ %351, %347 ]
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %355, label %361

355:                                              ; preds = %352
  %356 = call i32 @BM_vert_edge_count_nonwire(ptr noundef %311) #16
  %357 = icmp eq i32 %356, 2
  br i1 %357, label %358, label %361

358:                                              ; preds = %355
  %359 = load ptr, ptr %342, align 8, !tbaa !196
  %360 = call fastcc ptr @get_next_loop(ptr noundef %311, ptr noundef %317, ptr noundef %312, ptr noundef %359, ptr noundef nonnull %12)
  br label %386

361:                                              ; preds = %355, %352
  %362 = load ptr, ptr %342, align 8, !tbaa !196
  %363 = getelementptr inbounds %struct.BMEdge, ptr %362, i64 0, i32 2
  %364 = load ptr, ptr %363, align 8, !tbaa !193
  %365 = icmp eq ptr %364, %311
  %366 = getelementptr inbounds %struct.BMEdge, ptr %362, i64 0, i32 3
  %367 = load ptr, ptr %366, align 8, !tbaa !194
  %368 = icmp eq ptr %367, %311
  %369 = select i1 %368, ptr %364, ptr null
  %370 = select i1 %365, ptr %367, ptr %369
  %371 = getelementptr inbounds %struct.BMVert, ptr %370, i64 0, i32 2
  %372 = getelementptr inbounds %struct.BMVert, ptr %311, i64 0, i32 2
  %373 = load float, ptr %371, align 4, !tbaa !59
  %374 = load float, ptr %372, align 4, !tbaa !59
  %375 = fsub float %373, %374
  store float %375, ptr %12, align 4, !tbaa !59
  %376 = getelementptr inbounds %struct.BMVert, ptr %370, i64 0, i32 2, i64 1
  %377 = load float, ptr %376, align 4, !tbaa !59
  %378 = getelementptr inbounds %struct.BMVert, ptr %311, i64 0, i32 2, i64 1
  %379 = load float, ptr %378, align 4, !tbaa !59
  %380 = fsub float %377, %379
  store float %380, ptr %221, align 4, !tbaa !59
  %381 = getelementptr inbounds %struct.BMVert, ptr %370, i64 0, i32 2, i64 2
  %382 = load float, ptr %381, align 4, !tbaa !59
  %383 = getelementptr inbounds %struct.BMVert, ptr %311, i64 0, i32 2, i64 2
  %384 = load float, ptr %383, align 4, !tbaa !59
  %385 = fsub float %382, %384
  store float %385, ptr %222, align 4, !tbaa !59
  br label %386

386:                                              ; preds = %361, %358, %338
  %387 = icmp eq ptr %319, %317
  br i1 %387, label %455, label %388

388:                                              ; preds = %386
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #16
  store i8 4, ptr %223, align 4, !tbaa !165
  store ptr @bmiter__edge_of_vert_begin, ptr %224, align 8, !tbaa !167
  store ptr @bmiter__edge_of_vert_step, ptr %225, align 8, !tbaa !168
  store ptr %311, ptr %3, align 8, !tbaa !170
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %3) #16
  %389 = load ptr, ptr %225, align 8, !tbaa !168
  %390 = call ptr %389(ptr noundef nonnull %3) #16
  %391 = icmp eq ptr %390, null
  br i1 %391, label %404, label %392

392:                                              ; preds = %388, %400
  %393 = phi ptr [ %402, %400 ], [ %390, %388 ]
  %394 = getelementptr inbounds %struct.BMHeader, ptr %393, i64 0, i32 3
  %395 = load i8, ptr %394, align 1, !tbaa !171
  %396 = and i8 %395, 1
  %397 = icmp eq i8 %396, 0
  %398 = icmp eq ptr %393, %312
  %399 = or i1 %398, %397
  br i1 %399, label %400, label %404

400:                                              ; preds = %392
  %401 = load ptr, ptr %225, align 8, !tbaa !168
  %402 = call ptr %401(ptr noundef nonnull %3) #16
  %403 = icmp eq ptr %402, null
  br i1 %403, label %404, label %392, !llvm.loop !192

404:                                              ; preds = %392, %400, %388
  %405 = phi ptr [ null, %388 ], [ %393, %392 ], [ null, %400 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  %406 = icmp eq ptr %405, null
  br i1 %406, label %409, label %407

407:                                              ; preds = %404
  %408 = call fastcc ptr @get_next_loop(ptr noundef %311, ptr noundef %319, ptr noundef %312, ptr noundef nonnull %405, ptr noundef nonnull %13)
  br label %455

409:                                              ; preds = %404
  %410 = call ptr @BM_loop_other_edge_loop(ptr noundef %319, ptr noundef %311) #16
  %411 = getelementptr inbounds %struct.BMLoop, ptr %410, i64 0, i32 2
  %412 = load ptr, ptr %411, align 8, !tbaa !196
  %413 = getelementptr inbounds %struct.BMEdge, ptr %412, i64 0, i32 4
  %414 = load ptr, ptr %413, align 8, !tbaa !180
  %415 = icmp eq ptr %414, null
  br i1 %415, label %421, label %416

416:                                              ; preds = %409
  %417 = getelementptr inbounds %struct.BMLoop, ptr %414, i64 0, i32 4
  %418 = load ptr, ptr %417, align 8, !tbaa !183
  %419 = icmp eq ptr %418, %414
  %420 = zext i1 %419 to i8
  br label %421

421:                                              ; preds = %416, %409
  %422 = phi i8 [ 0, %409 ], [ %420, %416 ]
  %423 = icmp eq i8 %422, 0
  br i1 %423, label %424, label %430

424:                                              ; preds = %421
  %425 = call i32 @BM_vert_edge_count_nonwire(ptr noundef %311) #16
  %426 = icmp eq i32 %425, 2
  br i1 %426, label %427, label %430

427:                                              ; preds = %424
  %428 = load ptr, ptr %411, align 8, !tbaa !196
  %429 = call fastcc ptr @get_next_loop(ptr noundef %311, ptr noundef %319, ptr noundef %312, ptr noundef %428, ptr noundef nonnull %13)
  br label %455

430:                                              ; preds = %424, %421
  %431 = load ptr, ptr %411, align 8, !tbaa !196
  %432 = getelementptr inbounds %struct.BMEdge, ptr %431, i64 0, i32 2
  %433 = load ptr, ptr %432, align 8, !tbaa !193
  %434 = icmp eq ptr %433, %311
  %435 = getelementptr inbounds %struct.BMEdge, ptr %431, i64 0, i32 3
  %436 = load ptr, ptr %435, align 8, !tbaa !194
  %437 = icmp eq ptr %436, %311
  %438 = select i1 %437, ptr %433, ptr null
  %439 = select i1 %434, ptr %436, ptr %438
  %440 = getelementptr inbounds %struct.BMVert, ptr %439, i64 0, i32 2
  %441 = getelementptr inbounds %struct.BMVert, ptr %311, i64 0, i32 2
  %442 = load float, ptr %440, align 4, !tbaa !59
  %443 = load float, ptr %441, align 4, !tbaa !59
  %444 = fsub float %442, %443
  store float %444, ptr %13, align 4, !tbaa !59
  %445 = getelementptr inbounds %struct.BMVert, ptr %439, i64 0, i32 2, i64 1
  %446 = load float, ptr %445, align 4, !tbaa !59
  %447 = getelementptr inbounds %struct.BMVert, ptr %311, i64 0, i32 2, i64 1
  %448 = load float, ptr %447, align 4, !tbaa !59
  %449 = fsub float %446, %448
  store float %449, ptr %226, align 4, !tbaa !59
  %450 = getelementptr inbounds %struct.BMVert, ptr %439, i64 0, i32 2, i64 2
  %451 = load float, ptr %450, align 4, !tbaa !59
  %452 = getelementptr inbounds %struct.BMVert, ptr %311, i64 0, i32 2, i64 2
  %453 = load float, ptr %452, align 4, !tbaa !59
  %454 = fsub float %451, %453
  store float %454, ptr %227, align 4, !tbaa !59
  br label %455

455:                                              ; preds = %430, %427, %407, %386
  %456 = phi ptr [ %319, %427 ], [ %319, %430 ], [ %319, %407 ], [ null, %386 ]
  %457 = getelementptr inbounds %struct.BMVert, ptr %311, i64 0, i32 4
  br label %458

458:                                              ; preds = %760, %455
  %459 = phi ptr [ %456, %455 ], [ %747, %760 ]
  %460 = phi ptr [ null, %455 ], [ %748, %760 ]
  %461 = phi ptr [ null, %455 ], [ %749, %760 ]
  %462 = phi ptr [ %317, %455 ], [ %750, %760 ]
  %463 = phi ptr [ %311, %455 ], [ %537, %760 ]
  %464 = phi ptr [ %312, %455 ], [ %554, %760 ]
  %465 = getelementptr inbounds %struct.BMHeader, ptr %463, i64 0, i32 1
  %466 = load i32, ptr %465, align 8, !tbaa !187
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32, ptr %174, i64 %467
  %469 = load i32, ptr %468, align 4, !tbaa !73
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %214, i64 %470, i32 2
  store ptr %463, ptr %471, align 8, !tbaa !197
  %472 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %214, i64 %470, i32 3
  %473 = getelementptr inbounds %struct.BMVert, ptr %463, i64 0, i32 2
  %474 = load float, ptr %473, align 4, !tbaa !59
  store float %474, ptr %472, align 4, !tbaa !59
  %475 = getelementptr inbounds %struct.BMVert, ptr %463, i64 0, i32 2, i64 1
  %476 = load float, ptr %475, align 4, !tbaa !59
  %477 = getelementptr inbounds float, ptr %472, i64 1
  store float %476, ptr %477, align 4, !tbaa !59
  %478 = getelementptr inbounds %struct.BMVert, ptr %463, i64 0, i32 2, i64 2
  %479 = load float, ptr %478, align 4, !tbaa !59
  %480 = getelementptr inbounds float, ptr %472, i64 2
  store float %479, ptr %480, align 4, !tbaa !59
  %481 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %214, i64 %470, i32 7
  store i32 %240, ptr %481, align 8, !tbaa !199
  %482 = icmp ne ptr %462, null
  %483 = icmp ne ptr %460, null
  %484 = select i1 %482, i1 true, i1 %483
  br i1 %484, label %485, label %505

485:                                              ; preds = %458
  %486 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %214, i64 %470
  %487 = select i1 %482, ptr %462, ptr %460
  %488 = call ptr @BM_loop_other_edge_loop(ptr noundef %487, ptr noundef %463) #16
  %489 = getelementptr inbounds %struct.BMLoop, ptr %488, i64 0, i32 2
  %490 = load ptr, ptr %489, align 8, !tbaa !196
  %491 = getelementptr inbounds %struct.BMEdge, ptr %490, i64 0, i32 2
  %492 = load ptr, ptr %491, align 8, !tbaa !193
  %493 = icmp eq ptr %492, %463
  %494 = getelementptr inbounds %struct.BMEdge, ptr %490, i64 0, i32 3
  %495 = load ptr, ptr %494, align 8, !tbaa !194
  %496 = icmp eq ptr %495, %463
  %497 = select i1 %496, ptr %492, ptr null
  %498 = select i1 %493, ptr %495, ptr %497
  store ptr %498, ptr %486, align 8, !tbaa !200
  %499 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %214, i64 %470, i32 5
  %500 = load float, ptr %12, align 4, !tbaa !59
  store float %500, ptr %499, align 4, !tbaa !59
  %501 = load float, ptr %228, align 4, !tbaa !59
  %502 = getelementptr inbounds float, ptr %499, i64 1
  store float %501, ptr %502, align 4, !tbaa !59
  %503 = load float, ptr %229, align 4, !tbaa !59
  %504 = getelementptr inbounds float, ptr %499, i64 2
  store float %503, ptr %504, align 4, !tbaa !59
  br label %505

505:                                              ; preds = %485, %458
  %506 = icmp ne ptr %459, null
  %507 = icmp ne ptr %461, null
  %508 = select i1 %506, i1 true, i1 %507
  br i1 %508, label %509, label %529

509:                                              ; preds = %505
  %510 = select i1 %506, ptr %459, ptr %461
  %511 = call ptr @BM_loop_other_edge_loop(ptr noundef %510, ptr noundef %463) #16
  %512 = getelementptr inbounds %struct.BMLoop, ptr %511, i64 0, i32 2
  %513 = load ptr, ptr %512, align 8, !tbaa !196
  %514 = getelementptr inbounds %struct.BMEdge, ptr %513, i64 0, i32 2
  %515 = load ptr, ptr %514, align 8, !tbaa !193
  %516 = icmp eq ptr %515, %463
  %517 = getelementptr inbounds %struct.BMEdge, ptr %513, i64 0, i32 3
  %518 = load ptr, ptr %517, align 8, !tbaa !194
  %519 = icmp eq ptr %518, %463
  %520 = select i1 %519, ptr %515, ptr null
  %521 = select i1 %516, ptr %518, ptr %520
  %522 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %214, i64 %470, i32 1
  store ptr %521, ptr %522, align 8, !tbaa !201
  %523 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %214, i64 %470, i32 6
  %524 = load float, ptr %13, align 4, !tbaa !59
  store float %524, ptr %523, align 4, !tbaa !59
  %525 = load float, ptr %230, align 4, !tbaa !59
  %526 = getelementptr inbounds float, ptr %523, i64 1
  store float %525, ptr %526, align 4, !tbaa !59
  %527 = load float, ptr %231, align 4, !tbaa !59
  %528 = getelementptr inbounds float, ptr %523, i64 2
  store float %527, ptr %528, align 4, !tbaa !59
  br label %529

529:                                              ; preds = %509, %505
  %530 = getelementptr inbounds %struct.BMEdge, ptr %464, i64 0, i32 2
  %531 = load ptr, ptr %530, align 8, !tbaa !193
  %532 = icmp eq ptr %531, %463
  %533 = getelementptr inbounds %struct.BMEdge, ptr %464, i64 0, i32 3
  %534 = load ptr, ptr %533, align 8, !tbaa !194
  %535 = icmp eq ptr %534, %463
  %536 = select i1 %535, ptr %531, ptr null
  %537 = select i1 %532, ptr %534, ptr %536
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #16
  store i8 4, ptr %232, align 4, !tbaa !165
  store ptr @bmiter__edge_of_vert_begin, ptr %233, align 8, !tbaa !167
  store ptr @bmiter__edge_of_vert_step, ptr %234, align 8, !tbaa !168
  store ptr %537, ptr %2, align 8, !tbaa !170
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %2) #16
  %538 = load ptr, ptr %234, align 8, !tbaa !168
  %539 = call ptr %538(ptr noundef nonnull %2) #16
  %540 = icmp eq ptr %539, null
  br i1 %540, label %553, label %541

541:                                              ; preds = %529, %549
  %542 = phi ptr [ %551, %549 ], [ %539, %529 ]
  %543 = getelementptr inbounds %struct.BMHeader, ptr %542, i64 0, i32 3
  %544 = load i8, ptr %543, align 1, !tbaa !171
  %545 = and i8 %544, 1
  %546 = icmp eq i8 %545, 0
  %547 = icmp eq ptr %542, %464
  %548 = or i1 %547, %546
  br i1 %548, label %549, label %553

549:                                              ; preds = %541
  %550 = load ptr, ptr %234, align 8, !tbaa !168
  %551 = call ptr %550(ptr noundef nonnull %2) #16
  %552 = icmp eq ptr %551, null
  br i1 %552, label %553, label %541, !llvm.loop !192

553:                                              ; preds = %541, %549, %529
  %554 = phi ptr [ null, %529 ], [ %542, %541 ], [ null, %549 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #16
  %555 = icmp eq ptr %554, null
  br i1 %555, label %556, label %687

556:                                              ; preds = %553
  %557 = getelementptr inbounds %struct.BMHeader, ptr %537, i64 0, i32 1
  %558 = load i32, ptr %557, align 8, !tbaa !187
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds i32, ptr %174, i64 %559
  %561 = load i32, ptr %560, align 4, !tbaa !73
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %214, i64 %562, i32 2
  store ptr %537, ptr %563, align 8, !tbaa !197
  %564 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %214, i64 %562, i32 3
  %565 = getelementptr inbounds %struct.BMVert, ptr %537, i64 0, i32 2
  %566 = load float, ptr %565, align 4, !tbaa !59
  store float %566, ptr %564, align 4, !tbaa !59
  %567 = getelementptr inbounds %struct.BMVert, ptr %537, i64 0, i32 2, i64 1
  %568 = load float, ptr %567, align 4, !tbaa !59
  %569 = getelementptr inbounds float, ptr %564, i64 1
  store float %568, ptr %569, align 4, !tbaa !59
  %570 = getelementptr inbounds %struct.BMVert, ptr %537, i64 0, i32 2, i64 2
  %571 = load float, ptr %570, align 4, !tbaa !59
  %572 = getelementptr inbounds float, ptr %564, i64 2
  store float %571, ptr %572, align 4, !tbaa !59
  %573 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %214, i64 %562, i32 7
  store i32 %240, ptr %573, align 8, !tbaa !199
  br i1 %482, label %574, label %630

574:                                              ; preds = %556
  %575 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %214, i64 %562
  %576 = call ptr @BM_loop_other_edge_loop(ptr noundef nonnull %462, ptr noundef %537) #16
  %577 = getelementptr inbounds %struct.BMLoop, ptr %576, i64 0, i32 2
  %578 = load ptr, ptr %577, align 8, !tbaa !196
  %579 = getelementptr inbounds %struct.BMEdge, ptr %578, i64 0, i32 2
  %580 = load ptr, ptr %579, align 8, !tbaa !193
  %581 = icmp eq ptr %580, %537
  %582 = getelementptr inbounds %struct.BMEdge, ptr %578, i64 0, i32 3
  %583 = load ptr, ptr %582, align 8, !tbaa !194
  %584 = icmp eq ptr %583, %537
  %585 = select i1 %584, ptr %580, ptr null
  %586 = select i1 %581, ptr %583, ptr %585
  store ptr %586, ptr %575, align 8, !tbaa !200
  %587 = getelementptr inbounds %struct.BMEdge, ptr %578, i64 0, i32 4
  %588 = load ptr, ptr %587, align 8, !tbaa !180
  %589 = icmp eq ptr %588, null
  br i1 %589, label %595, label %590

590:                                              ; preds = %574
  %591 = getelementptr inbounds %struct.BMLoop, ptr %588, i64 0, i32 4
  %592 = load ptr, ptr %591, align 8, !tbaa !183
  %593 = icmp eq ptr %592, %588
  %594 = zext i1 %593 to i8
  br label %595

595:                                              ; preds = %590, %574
  %596 = phi i8 [ 0, %574 ], [ %594, %590 ]
  %597 = icmp eq i8 %596, 0
  br i1 %597, label %598, label %605

598:                                              ; preds = %595
  %599 = call i32 @BM_vert_edge_count_nonwire(ptr noundef %537) #16
  %600 = icmp eq i32 %599, 2
  br i1 %600, label %601, label %605

601:                                              ; preds = %598
  %602 = load ptr, ptr %577, align 8, !tbaa !196
  %603 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %214, i64 %562, i32 5
  %604 = call fastcc ptr @get_next_loop(ptr noundef %537, ptr noundef nonnull %462, ptr noundef %464, ptr noundef %602, ptr noundef nonnull %603)
  br label %630

605:                                              ; preds = %598, %595
  %606 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %214, i64 %562, i32 5
  %607 = load ptr, ptr %577, align 8, !tbaa !196
  %608 = getelementptr inbounds %struct.BMEdge, ptr %607, i64 0, i32 2
  %609 = load ptr, ptr %608, align 8, !tbaa !193
  %610 = icmp eq ptr %609, %537
  %611 = getelementptr inbounds %struct.BMEdge, ptr %607, i64 0, i32 3
  %612 = load ptr, ptr %611, align 8, !tbaa !194
  %613 = icmp eq ptr %612, %537
  %614 = select i1 %613, ptr %609, ptr null
  %615 = select i1 %610, ptr %612, ptr %614
  %616 = getelementptr inbounds %struct.BMVert, ptr %615, i64 0, i32 2
  %617 = load float, ptr %616, align 4, !tbaa !59
  %618 = load float, ptr %565, align 4, !tbaa !59
  %619 = fsub float %617, %618
  store float %619, ptr %606, align 4, !tbaa !59
  %620 = getelementptr inbounds %struct.BMVert, ptr %615, i64 0, i32 2, i64 1
  %621 = load float, ptr %620, align 4, !tbaa !59
  %622 = load float, ptr %567, align 4, !tbaa !59
  %623 = fsub float %621, %622
  %624 = getelementptr inbounds float, ptr %606, i64 1
  store float %623, ptr %624, align 4, !tbaa !59
  %625 = getelementptr inbounds %struct.BMVert, ptr %615, i64 0, i32 2, i64 2
  %626 = load float, ptr %625, align 4, !tbaa !59
  %627 = load float, ptr %570, align 4, !tbaa !59
  %628 = fsub float %626, %627
  %629 = getelementptr inbounds float, ptr %606, i64 2
  store float %628, ptr %629, align 4, !tbaa !59
  br label %630

630:                                              ; preds = %605, %601, %556
  br i1 %506, label %631, label %746

631:                                              ; preds = %630
  %632 = call ptr @BM_loop_other_edge_loop(ptr noundef nonnull %459, ptr noundef %537) #16
  %633 = getelementptr inbounds %struct.BMLoop, ptr %632, i64 0, i32 2
  %634 = load ptr, ptr %633, align 8, !tbaa !196
  %635 = getelementptr inbounds %struct.BMEdge, ptr %634, i64 0, i32 2
  %636 = load ptr, ptr %635, align 8, !tbaa !193
  %637 = icmp eq ptr %636, %537
  %638 = getelementptr inbounds %struct.BMEdge, ptr %634, i64 0, i32 3
  %639 = load ptr, ptr %638, align 8, !tbaa !194
  %640 = icmp eq ptr %639, %537
  %641 = select i1 %640, ptr %636, ptr null
  %642 = select i1 %637, ptr %639, ptr %641
  %643 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %214, i64 %562, i32 1
  store ptr %642, ptr %643, align 8, !tbaa !201
  %644 = getelementptr inbounds %struct.BMEdge, ptr %634, i64 0, i32 4
  %645 = load ptr, ptr %644, align 8, !tbaa !180
  %646 = icmp eq ptr %645, null
  br i1 %646, label %652, label %647

647:                                              ; preds = %631
  %648 = getelementptr inbounds %struct.BMLoop, ptr %645, i64 0, i32 4
  %649 = load ptr, ptr %648, align 8, !tbaa !183
  %650 = icmp eq ptr %649, %645
  %651 = zext i1 %650 to i8
  br label %652

652:                                              ; preds = %647, %631
  %653 = phi i8 [ 0, %631 ], [ %651, %647 ]
  %654 = icmp eq i8 %653, 0
  br i1 %654, label %655, label %662

655:                                              ; preds = %652
  %656 = call i32 @BM_vert_edge_count_nonwire(ptr noundef %537) #16
  %657 = icmp eq i32 %656, 2
  br i1 %657, label %658, label %662

658:                                              ; preds = %655
  %659 = load ptr, ptr %633, align 8, !tbaa !196
  %660 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %214, i64 %562, i32 6
  %661 = call fastcc ptr @get_next_loop(ptr noundef %537, ptr noundef nonnull %459, ptr noundef %464, ptr noundef %659, ptr noundef nonnull %660)
  br label %746

662:                                              ; preds = %655, %652
  %663 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %214, i64 %562, i32 6
  %664 = load ptr, ptr %633, align 8, !tbaa !196
  %665 = getelementptr inbounds %struct.BMEdge, ptr %664, i64 0, i32 2
  %666 = load ptr, ptr %665, align 8, !tbaa !193
  %667 = icmp eq ptr %666, %537
  %668 = getelementptr inbounds %struct.BMEdge, ptr %664, i64 0, i32 3
  %669 = load ptr, ptr %668, align 8, !tbaa !194
  %670 = icmp eq ptr %669, %537
  %671 = select i1 %670, ptr %666, ptr null
  %672 = select i1 %667, ptr %669, ptr %671
  %673 = getelementptr inbounds %struct.BMVert, ptr %672, i64 0, i32 2
  %674 = load float, ptr %673, align 4, !tbaa !59
  %675 = load float, ptr %565, align 4, !tbaa !59
  %676 = fsub float %674, %675
  store float %676, ptr %663, align 4, !tbaa !59
  %677 = getelementptr inbounds %struct.BMVert, ptr %672, i64 0, i32 2, i64 1
  %678 = load float, ptr %677, align 4, !tbaa !59
  %679 = load float, ptr %567, align 4, !tbaa !59
  %680 = fsub float %678, %679
  %681 = getelementptr inbounds float, ptr %663, i64 1
  store float %680, ptr %681, align 4, !tbaa !59
  %682 = getelementptr inbounds %struct.BMVert, ptr %672, i64 0, i32 2, i64 2
  %683 = load float, ptr %682, align 4, !tbaa !59
  %684 = load float, ptr %570, align 4, !tbaa !59
  %685 = fsub float %683, %684
  %686 = getelementptr inbounds float, ptr %663, i64 2
  store float %685, ptr %686, align 4, !tbaa !59
  br label %746

687:                                              ; preds = %553
  br i1 %482, label %688, label %690

688:                                              ; preds = %687
  %689 = call fastcc ptr @get_next_loop(ptr noundef %537, ptr noundef nonnull %462, ptr noundef %464, ptr noundef nonnull %554, ptr noundef nonnull %12)
  br label %691

690:                                              ; preds = %687
  store float 0.000000e+00, ptr %12, align 4, !tbaa !59
  store float 0.000000e+00, ptr %235, align 4, !tbaa !59
  store float 0.000000e+00, ptr %236, align 4, !tbaa !59
  br label %691

691:                                              ; preds = %690, %688
  %692 = phi ptr [ %689, %688 ], [ null, %690 ]
  br i1 %506, label %693, label %695

693:                                              ; preds = %691
  %694 = call fastcc ptr @get_next_loop(ptr noundef %537, ptr noundef nonnull %459, ptr noundef %464, ptr noundef nonnull %554, ptr noundef nonnull %13)
  br label %696

695:                                              ; preds = %691
  store float 0.000000e+00, ptr %13, align 4, !tbaa !59
  store float 0.000000e+00, ptr %237, align 4, !tbaa !59
  store float 0.000000e+00, ptr %238, align 4, !tbaa !59
  br label %696

696:                                              ; preds = %695, %693
  %697 = phi ptr [ %694, %693 ], [ null, %695 ]
  %698 = icmp ne ptr %692, null
  %699 = icmp ne ptr %697, null
  %700 = select i1 %698, i1 %699, i1 false
  br i1 %700, label %746, label %701

701:                                              ; preds = %696
  %702 = select i1 %698, i1 true, i1 %699
  br i1 %702, label %703, label %718

703:                                              ; preds = %701
  %704 = icmp eq ptr %692, null
  %705 = select i1 %704, i1 %699, i1 false
  br i1 %705, label %706, label %710

706:                                              ; preds = %703
  %707 = getelementptr inbounds %struct.BMLoop, ptr %697, i64 0, i32 4
  %708 = load ptr, ptr %707, align 8, !tbaa !183
  %709 = icmp eq ptr %708, %697
  br i1 %709, label %710, label %734

710:                                              ; preds = %706, %703
  %711 = icmp eq ptr %697, null
  %712 = and i1 %698, %711
  br i1 %712, label %713, label %734

713:                                              ; preds = %710
  %714 = getelementptr inbounds %struct.BMLoop, ptr %692, i64 0, i32 4
  %715 = load ptr, ptr %714, align 8, !tbaa !183
  %716 = icmp eq ptr %715, %692
  %717 = select i1 %716, ptr null, ptr %715
  br label %734

718:                                              ; preds = %701
  %719 = getelementptr inbounds %struct.BMEdge, ptr %554, i64 0, i32 4
  %720 = load ptr, ptr %719, align 8, !tbaa !180
  %721 = icmp eq ptr %720, null
  br i1 %721, label %734, label %722

722:                                              ; preds = %718
  br i1 %482, label %723, label %728

723:                                              ; preds = %722
  %724 = getelementptr inbounds %struct.BMLoop, ptr %720, i64 0, i32 4
  %725 = load ptr, ptr %724, align 8, !tbaa !183
  %726 = icmp eq ptr %725, %720
  %727 = select i1 %726, ptr null, ptr %725
  br label %734

728:                                              ; preds = %722
  br i1 %506, label %729, label %734

729:                                              ; preds = %728
  %730 = getelementptr inbounds %struct.BMLoop, ptr %720, i64 0, i32 4
  %731 = load ptr, ptr %730, align 8, !tbaa !183
  %732 = icmp eq ptr %731, %720
  %733 = select i1 %732, ptr null, ptr %731
  br label %734

734:                                              ; preds = %729, %728, %723, %718, %713, %710, %706
  %735 = phi ptr [ %697, %710 ], [ %727, %723 ], [ %720, %729 ], [ null, %728 ], [ null, %718 ], [ %697, %706 ], [ %717, %713 ]
  %736 = phi ptr [ %692, %710 ], [ %720, %723 ], [ %733, %729 ], [ null, %728 ], [ null, %718 ], [ %708, %706 ], [ %692, %713 ]
  %737 = icmp eq ptr %736, null
  %738 = select i1 %482, i1 true, i1 %737
  br i1 %738, label %741, label %739

739:                                              ; preds = %734
  %740 = call fastcc ptr @get_next_loop(ptr noundef %537, ptr noundef %736, ptr noundef nonnull %554, ptr noundef %464, ptr noundef nonnull %12)
  br label %741

741:                                              ; preds = %739, %734
  %742 = icmp eq ptr %735, null
  %743 = select i1 %506, i1 true, i1 %742
  br i1 %743, label %746, label %744

744:                                              ; preds = %741
  %745 = call fastcc ptr @get_next_loop(ptr noundef %537, ptr noundef %735, ptr noundef nonnull %554, ptr noundef %464, ptr noundef nonnull %13)
  br label %746

746:                                              ; preds = %696, %741, %744, %630, %658, %662
  %747 = phi ptr [ %459, %662 ], [ %459, %658 ], [ %459, %630 ], [ %697, %696 ], [ %735, %744 ], [ %735, %741 ]
  %748 = phi ptr [ %460, %662 ], [ %460, %658 ], [ %460, %630 ], [ %462, %696 ], [ %462, %744 ], [ %462, %741 ]
  %749 = phi ptr [ %461, %662 ], [ %461, %658 ], [ %461, %630 ], [ %459, %696 ], [ %459, %744 ], [ %459, %741 ]
  %750 = phi ptr [ %462, %662 ], [ %462, %658 ], [ %462, %630 ], [ %692, %696 ], [ %736, %744 ], [ %736, %741 ]
  %751 = getelementptr inbounds %struct.BMHeader, ptr %537, i64 0, i32 3
  %752 = load i8, ptr %751, align 1, !tbaa !171
  %753 = and i8 %752, -17
  store i8 %753, ptr %751, align 1, !tbaa !171
  %754 = getelementptr inbounds %struct.BMHeader, ptr %463, i64 0, i32 3
  %755 = load i8, ptr %754, align 1, !tbaa !171
  %756 = and i8 %755, -17
  store i8 %756, ptr %754, align 1, !tbaa !171
  br i1 %555, label %764, label %757

757:                                              ; preds = %746
  %758 = load ptr, ptr %457, align 8, !tbaa !173
  %759 = icmp eq ptr %554, %758
  br i1 %759, label %764, label %760

760:                                              ; preds = %757
  %761 = icmp ne ptr %750, null
  %762 = icmp ne ptr %747, null
  %763 = select i1 %761, i1 true, i1 %762
  br i1 %763, label %458, label %764, !llvm.loop !202

764:                                              ; preds = %760, %757, %746
  %765 = add nsw i32 %240, 1
  br label %766

766:                                              ; preds = %255, %239, %764, %259
  %767 = phi i1 [ %260, %764 ], [ %260, %259 ], [ %244, %239 ], [ %258, %255 ]
  %768 = phi i32 [ %765, %764 ], [ %240, %259 ], [ %240, %239 ], [ %240, %255 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #16
  br i1 %767, label %769, label %239

769:                                              ; preds = %766
  %770 = icmp eq ptr %53, null
  br i1 %770, label %780, label %771

771:                                              ; preds = %769
  %772 = load ptr, ptr %20, align 8, !tbaa !100
  %773 = getelementptr inbounds %struct.Object, ptr %772, i64 0, i32 87
  %774 = load i8, ptr %773, align 2, !tbaa !203
  %775 = icmp ugt i8 %774, 2
  br i1 %775, label %776, label %780

776:                                              ; preds = %771
  %777 = getelementptr inbounds %struct.View3D, ptr %53, i64 0, i32 24
  %778 = load i16, ptr %777, align 8, !tbaa !204
  %779 = icmp sgt i16 %778, 2
  br label %780

780:                                              ; preds = %776, %771, %769
  %781 = phi i1 [ false, %771 ], [ false, %769 ], [ %779, %776 ]
  br i1 %781, label %782, label %784

782:                                              ; preds = %780
  %783 = call ptr @BKE_bmbvh_new_from_editmesh(ptr noundef nonnull %22, i32 noundef 4, ptr noundef null, i8 noundef zeroext 0) #16
  br label %784

784:                                              ; preds = %782, %780
  %785 = phi ptr [ %783, %782 ], [ null, %780 ]
  store ptr %214, ptr %25, align 8, !tbaa !205
  %786 = getelementptr inbounds %struct.EdgeSlideData, ptr %25, i64 0, i32 1
  store i32 %202, ptr %786, align 8, !tbaa !206
  %787 = load ptr, ptr @MEM_callocN, align 8, !tbaa !148
  %788 = sext i32 %768 to i64
  %789 = mul nsw i64 %788, 12
  %790 = call ptr %787(i64 noundef %789, ptr noundef nonnull @.str.136) #16
  %791 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !148
  %792 = shl nsw i64 %788, 2
  %793 = call ptr %791(i64 noundef %792, ptr noundef nonnull @.str.137) #16
  call void @fill_vn_fl(ptr noundef %793, i32 noundef %768, float noundef -1.000000e+00) #16
  store i8 2, ptr %76, align 4, !tbaa !165
  store ptr @bmiter__elem_of_mesh_begin, ptr %77, align 8, !tbaa !167
  store ptr @bmiter__elem_of_mesh_step, ptr %78, align 8, !tbaa !168
  %794 = load ptr, ptr %127, align 8, !tbaa !179
  store ptr %794, ptr %8, align 8, !tbaa !170
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #16
  %795 = load ptr, ptr %78, align 8, !tbaa !168
  %796 = call ptr %795(ptr noundef nonnull %8) #16
  %797 = icmp eq ptr %796, null
  br i1 %797, label %984, label %798

798:                                              ; preds = %784
  %799 = getelementptr inbounds %struct.BMIter, ptr %14, i64 0, i32 4
  %800 = getelementptr inbounds %struct.BMIter, ptr %14, i64 0, i32 1
  %801 = getelementptr inbounds %struct.BMIter, ptr %14, i64 0, i32 2
  %802 = getelementptr inbounds float, ptr %16, i64 1
  %803 = getelementptr inbounds float, ptr %16, i64 2
  %804 = getelementptr inbounds float, ptr %15, i64 1
  %805 = getelementptr inbounds float, ptr %15, i64 2
  %806 = getelementptr inbounds float, ptr %15, i64 1
  %807 = getelementptr inbounds float, ptr %16, i64 1
  %808 = getelementptr inbounds float, ptr %16, i64 1
  %809 = getelementptr inbounds float, ptr %15, i64 1
  %810 = getelementptr inbounds float, ptr %16, i64 2
  %811 = getelementptr inbounds float, ptr %15, i64 2
  %812 = getelementptr inbounds float, ptr %16, i64 1
  %813 = getelementptr inbounds float, ptr %15, i64 1
  %814 = getelementptr inbounds float, ptr %16, i64 2
  %815 = getelementptr inbounds float, ptr %15, i64 2
  br label %816

816:                                              ; preds = %798, %976
  %817 = phi ptr [ %796, %798 ], [ %982, %976 ]
  %818 = phi float [ -1.000000e+00, %798 ], [ %980, %976 ]
  %819 = phi float [ 0.000000e+00, %798 ], [ %979, %976 ]
  %820 = phi float [ 0.000000e+00, %798 ], [ %978, %976 ]
  %821 = phi float [ 0.000000e+00, %798 ], [ %977, %976 ]
  %822 = getelementptr inbounds %struct.BMHeader, ptr %817, i64 0, i32 3
  %823 = load i8, ptr %822, align 1, !tbaa !171
  %824 = and i8 %823, 1
  %825 = icmp eq i8 %824, 0
  br i1 %825, label %976, label %826

826:                                              ; preds = %816
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #16
  %827 = getelementptr inbounds %struct.BMEdge, ptr %817, i64 0, i32 2
  %828 = getelementptr inbounds %struct.BMEdge, ptr %817, i64 0, i32 3
  br label %829

829:                                              ; preds = %826, %968
  %830 = phi float [ %818, %826 ], [ %972, %968 ]
  %831 = phi i32 [ 0, %826 ], [ %973, %968 ]
  %832 = phi float [ %819, %826 ], [ %971, %968 ]
  %833 = phi float [ %820, %826 ], [ %970, %968 ]
  %834 = phi float [ %821, %826 ], [ %969, %968 ]
  %835 = icmp eq i32 %831, 0
  %836 = select i1 %835, ptr %828, ptr %827
  %837 = load ptr, ptr %836, align 8, !tbaa !148
  store i8 4, ptr %799, align 4, !tbaa !165
  store ptr @bmiter__edge_of_vert_begin, ptr %800, align 8, !tbaa !167
  store ptr @bmiter__edge_of_vert_step, ptr %801, align 8, !tbaa !168
  store ptr %837, ptr %14, align 8, !tbaa !170
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %14) #16
  %838 = load ptr, ptr %801, align 8, !tbaa !168
  %839 = call ptr %838(ptr noundef nonnull %14) #16
  %840 = icmp eq ptr %839, null
  br i1 %840, label %968, label %841

841:                                              ; preds = %829
  %842 = getelementptr inbounds %struct.BMHeader, ptr %837, i64 0, i32 1
  %843 = getelementptr inbounds %struct.BMVert, ptr %837, i64 0, i32 2
  %844 = getelementptr inbounds %struct.BMVert, ptr %837, i64 0, i32 2, i64 1
  %845 = getelementptr inbounds %struct.BMVert, ptr %837, i64 0, i32 2, i64 2
  %846 = getelementptr inbounds %struct.BMVert, ptr %837, i64 0, i32 2
  %847 = getelementptr inbounds %struct.BMVert, ptr %837, i64 0, i32 2, i64 1
  %848 = getelementptr inbounds %struct.BMVert, ptr %837, i64 0, i32 2, i64 2
  br label %849

849:                                              ; preds = %841, %960
  %850 = phi ptr [ %839, %841 ], [ %966, %960 ]
  %851 = phi float [ %830, %841 ], [ %964, %960 ]
  %852 = phi float [ %832, %841 ], [ %963, %960 ]
  %853 = phi float [ %833, %841 ], [ %962, %960 ]
  %854 = phi float [ %834, %841 ], [ %961, %960 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #16
  %855 = getelementptr inbounds %struct.BMHeader, ptr %850, i64 0, i32 3
  %856 = load i8, ptr %855, align 1, !tbaa !171
  %857 = and i8 %856, 1
  %858 = icmp eq i8 %857, 0
  br i1 %858, label %859, label %960

859:                                              ; preds = %849
  br i1 %781, label %860, label %864

860:                                              ; preds = %859
  %861 = load ptr, ptr %20, align 8, !tbaa !100
  %862 = call zeroext i8 @BMBVH_EdgeVisible(ptr noundef %785, ptr noundef nonnull %850, ptr noundef %27, ptr noundef %53, ptr noundef %861) #16
  %863 = icmp eq i8 %862, 0
  br i1 %863, label %960, label %864

864:                                              ; preds = %860, %859
  %865 = load i32, ptr %842, align 8, !tbaa !187
  %866 = sext i32 %865 to i64
  %867 = getelementptr inbounds i32, ptr %174, i64 %866
  %868 = load i32, ptr %867, align 4, !tbaa !73
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %214, i64 %869
  %871 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %214, i64 %869, i32 1
  %872 = load ptr, ptr %871, align 8, !tbaa !201
  %873 = icmp eq ptr %872, null
  br i1 %873, label %876, label %874

874:                                              ; preds = %864
  %875 = getelementptr inbounds %struct.BMVert, ptr %872, i64 0, i32 2
  br label %889

876:                                              ; preds = %864
  %877 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %214, i64 %869, i32 6
  %878 = load float, ptr %843, align 4, !tbaa !59
  %879 = load float, ptr %877, align 4, !tbaa !59
  %880 = fadd float %878, %879
  store float %880, ptr %16, align 4, !tbaa !59
  %881 = load float, ptr %844, align 4, !tbaa !59
  %882 = getelementptr inbounds float, ptr %877, i64 1
  %883 = load float, ptr %882, align 4, !tbaa !59
  %884 = fadd float %881, %883
  store float %884, ptr %802, align 4, !tbaa !59
  %885 = load float, ptr %845, align 4, !tbaa !59
  %886 = getelementptr inbounds float, ptr %877, i64 2
  %887 = load float, ptr %886, align 4, !tbaa !59
  %888 = fadd float %885, %887
  store float %888, ptr %803, align 4, !tbaa !59
  br label %889

889:                                              ; preds = %876, %874
  %890 = phi ptr [ %16, %876 ], [ %875, %874 ]
  call void @ED_view3d_project_float_v3_m4(ptr noundef %27, ptr noundef nonnull %890, ptr noundef nonnull %16, ptr noundef nonnull %9) #16
  %891 = load ptr, ptr %870, align 8, !tbaa !200
  %892 = icmp eq ptr %891, null
  br i1 %892, label %895, label %893

893:                                              ; preds = %889
  %894 = getelementptr inbounds %struct.BMVert, ptr %891, i64 0, i32 2
  br label %908

895:                                              ; preds = %889
  %896 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %214, i64 %869, i32 5
  %897 = load float, ptr %846, align 4, !tbaa !59
  %898 = load float, ptr %896, align 4, !tbaa !59
  %899 = fadd float %897, %898
  store float %899, ptr %15, align 4, !tbaa !59
  %900 = load float, ptr %847, align 4, !tbaa !59
  %901 = getelementptr inbounds float, ptr %896, i64 1
  %902 = load float, ptr %901, align 4, !tbaa !59
  %903 = fadd float %900, %902
  store float %903, ptr %804, align 4, !tbaa !59
  %904 = load float, ptr %848, align 4, !tbaa !59
  %905 = getelementptr inbounds float, ptr %896, i64 2
  %906 = load float, ptr %905, align 4, !tbaa !59
  %907 = fadd float %904, %906
  store float %907, ptr %805, align 4, !tbaa !59
  br label %908

908:                                              ; preds = %895, %893
  %909 = phi ptr [ %15, %895 ], [ %894, %893 ]
  call void @ED_view3d_project_float_v3_m4(ptr noundef %27, ptr noundef nonnull %909, ptr noundef nonnull %15, ptr noundef nonnull %9) #16
  %910 = call float @dist_to_line_segment_v2(ptr noundef nonnull %10, ptr noundef nonnull %16, ptr noundef nonnull %15) #16
  %911 = fcmp oeq float %851, -1.000000e+00
  br i1 %911, label %924, label %912

912:                                              ; preds = %908
  %913 = fcmp olt float %910, %851
  br i1 %913, label %914, label %934

914:                                              ; preds = %912
  %915 = load float, ptr %15, align 4, !tbaa !59
  %916 = load float, ptr %16, align 4, !tbaa !59
  %917 = fsub float %915, %916
  %918 = load float, ptr %806, align 4, !tbaa !59
  %919 = load float, ptr %807, align 4, !tbaa !59
  %920 = fsub float %918, %919
  %921 = fmul float %920, %920
  %922 = call float @llvm.fmuladd.f32(float %917, float %917, float %921)
  %923 = fcmp ogt float %922, 0x3FB99999A0000000
  br i1 %923, label %924, label %934

924:                                              ; preds = %914, %908
  %925 = load float, ptr %16, align 4, !tbaa !59
  %926 = load float, ptr %15, align 4, !tbaa !59
  %927 = fsub float %925, %926
  %928 = load float, ptr %808, align 4, !tbaa !59
  %929 = load float, ptr %809, align 4, !tbaa !59
  %930 = fsub float %928, %929
  %931 = load float, ptr %810, align 4, !tbaa !59
  %932 = load float, ptr %811, align 4, !tbaa !59
  %933 = fsub float %931, %932
  br label %934

934:                                              ; preds = %924, %914, %912
  %935 = phi float [ %933, %924 ], [ %854, %914 ], [ %854, %912 ]
  %936 = phi float [ %930, %924 ], [ %853, %914 ], [ %853, %912 ]
  %937 = phi float [ %927, %924 ], [ %852, %914 ], [ %852, %912 ]
  %938 = phi float [ %910, %924 ], [ %851, %914 ], [ %851, %912 ]
  %939 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %214, i64 %869, i32 7
  %940 = load i32, ptr %939, align 8, !tbaa !199
  %941 = sext i32 %940 to i64
  %942 = getelementptr inbounds float, ptr %793, i64 %941
  %943 = load float, ptr %942, align 4, !tbaa !59
  %944 = fcmp oeq float %943, -1.000000e+00
  %945 = fcmp olt float %910, %943
  %946 = select i1 %944, i1 true, i1 %945
  br i1 %946, label %947, label %960

947:                                              ; preds = %934
  store float %910, ptr %942, align 4, !tbaa !59
  %948 = getelementptr inbounds [3 x float], ptr %790, i64 %941
  %949 = load float, ptr %16, align 4, !tbaa !59
  %950 = load float, ptr %15, align 4, !tbaa !59
  %951 = fsub float %949, %950
  store float %951, ptr %948, align 4, !tbaa !59
  %952 = load float, ptr %812, align 4, !tbaa !59
  %953 = load float, ptr %813, align 4, !tbaa !59
  %954 = fsub float %952, %953
  %955 = getelementptr inbounds float, ptr %948, i64 1
  store float %954, ptr %955, align 4, !tbaa !59
  %956 = load float, ptr %814, align 4, !tbaa !59
  %957 = load float, ptr %815, align 4, !tbaa !59
  %958 = fsub float %956, %957
  %959 = getelementptr inbounds float, ptr %948, i64 2
  store float %958, ptr %959, align 4, !tbaa !59
  br label %960

960:                                              ; preds = %947, %934, %860, %849
  %961 = phi float [ %854, %860 ], [ %935, %947 ], [ %935, %934 ], [ %854, %849 ]
  %962 = phi float [ %853, %860 ], [ %936, %947 ], [ %936, %934 ], [ %853, %849 ]
  %963 = phi float [ %852, %860 ], [ %937, %947 ], [ %937, %934 ], [ %852, %849 ]
  %964 = phi float [ %851, %860 ], [ %938, %947 ], [ %938, %934 ], [ %851, %849 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #16
  %965 = load ptr, ptr %801, align 8, !tbaa !168
  %966 = call ptr %965(ptr noundef nonnull %14) #16
  %967 = icmp eq ptr %966, null
  br i1 %967, label %968, label %849, !llvm.loop !207

968:                                              ; preds = %960, %829
  %969 = phi float [ %834, %829 ], [ %961, %960 ]
  %970 = phi float [ %833, %829 ], [ %962, %960 ]
  %971 = phi float [ %832, %829 ], [ %963, %960 ]
  %972 = phi float [ %830, %829 ], [ %964, %960 ]
  %973 = add nuw nsw i32 %831, 1
  %974 = icmp eq i32 %831, 0
  br i1 %974, label %829, label %975, !llvm.loop !208

975:                                              ; preds = %968
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #16
  br label %976

976:                                              ; preds = %975, %816
  %977 = phi float [ %821, %816 ], [ %969, %975 ]
  %978 = phi float [ %820, %816 ], [ %970, %975 ]
  %979 = phi float [ %819, %816 ], [ %971, %975 ]
  %980 = phi float [ %818, %816 ], [ %972, %975 ]
  %981 = load ptr, ptr %78, align 8, !tbaa !168
  %982 = call ptr %981(ptr noundef nonnull %8) #16
  %983 = icmp eq ptr %982, null
  br i1 %983, label %984, label %816, !llvm.loop !209

984:                                              ; preds = %976, %784
  %985 = phi float [ 0.000000e+00, %784 ], [ %977, %976 ]
  %986 = phi float [ 0.000000e+00, %784 ], [ %978, %976 ]
  %987 = phi float [ 0.000000e+00, %784 ], [ %979, %976 ]
  %988 = fmul float %986, %986
  %989 = call float @llvm.fmuladd.f32(float %987, float %987, float %988)
  %990 = fcmp olt float %989, 0x3FB99999A0000000
  %991 = select i1 %990, float 1.000000e+02, float %986
  %992 = select i1 %990, float 0.000000e+00, float %987
  call void @bmesh_edit_begin(ptr noundef nonnull %23, i32 noundef 1) #16
  %993 = getelementptr inbounds %struct.EdgeSlideData, ptr %25, i64 0, i32 6
  %994 = load i8, ptr %993, align 8, !tbaa !160
  %995 = icmp eq i8 %994, 0
  br i1 %995, label %1001, label %996

996:                                              ; preds = %984
  %997 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.createEdgeSlideVerts) #16
  %998 = getelementptr inbounds %struct.EdgeSlideData, ptr %25, i64 0, i32 2
  store ptr %997, ptr %998, align 8, !tbaa !210
  %999 = call ptr @BM_mesh_create(ptr noundef nonnull @bm_mesh_allocsize_default) #16
  %1000 = getelementptr inbounds %struct.EdgeSlideData, ptr %25, i64 0, i32 7
  store ptr %999, ptr %1000, align 8, !tbaa !211
  call void @BM_mesh_copy_init_customdata(ptr noundef %999, ptr noundef nonnull %23, ptr noundef null) #16
  br label %1001

1001:                                             ; preds = %996, %984
  %1002 = load i32, ptr %786, align 8, !tbaa !206
  %1003 = icmp sgt i32 %1002, 0
  br i1 %1003, label %1004, label %1072

1004:                                             ; preds = %1001
  %1005 = load ptr, ptr %25, align 8, !tbaa !205
  %1006 = getelementptr inbounds %struct.BMIter, ptr %17, i64 0, i32 4
  %1007 = getelementptr inbounds %struct.BMIter, ptr %17, i64 0, i32 1
  %1008 = getelementptr inbounds %struct.BMIter, ptr %17, i64 0, i32 2
  %1009 = getelementptr inbounds %struct.EdgeSlideData, ptr %25, i64 0, i32 2
  %1010 = getelementptr inbounds %struct.EdgeSlideData, ptr %25, i64 0, i32 7
  br label %1011

1011:                                             ; preds = %1004, %1065
  %1012 = phi ptr [ %1005, %1004 ], [ %1067, %1065 ]
  %1013 = phi i32 [ 0, %1004 ], [ %1066, %1065 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %17) #16
  %1014 = load i8, ptr %993, align 8, !tbaa !160
  %1015 = icmp eq i8 %1014, 0
  br i1 %1015, label %1035, label %1016

1016:                                             ; preds = %1011
  %1017 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %1012, i64 0, i32 2
  %1018 = load ptr, ptr %1017, align 8, !tbaa !197
  store i8 5, ptr %1006, align 4, !tbaa !165
  store ptr @bmiter__face_of_vert_begin, ptr %1007, align 8, !tbaa !167
  store ptr @bmiter__face_of_vert_step, ptr %1008, align 8, !tbaa !168
  store ptr %1018, ptr %17, align 8, !tbaa !170
  call void @bmiter__face_of_vert_begin(ptr noundef nonnull %17) #16
  %1019 = load ptr, ptr %1008, align 8, !tbaa !168
  %1020 = call ptr %1019(ptr noundef nonnull %17) #16
  %1021 = icmp eq ptr %1020, null
  br i1 %1021, label %1035, label %1022

1022:                                             ; preds = %1016, %1031
  %1023 = phi ptr [ %1033, %1031 ], [ %1020, %1016 ]
  %1024 = load ptr, ptr %1009, align 8, !tbaa !210
  %1025 = call zeroext i8 @BLI_ghash_haskey(ptr noundef %1024, ptr noundef nonnull %1023) #16
  %1026 = icmp eq i8 %1025, 0
  br i1 %1026, label %1027, label %1031

1027:                                             ; preds = %1022
  %1028 = load ptr, ptr %1010, align 8, !tbaa !211
  %1029 = call ptr @BM_face_copy(ptr noundef %1028, ptr noundef nonnull %23, ptr noundef nonnull %1023, i8 noundef zeroext 1, i8 noundef zeroext 1) #16
  %1030 = load ptr, ptr %1009, align 8, !tbaa !210
  call void @BLI_ghash_insert(ptr noundef %1030, ptr noundef nonnull %1023, ptr noundef %1029) #16
  br label %1031

1031:                                             ; preds = %1027, %1022
  %1032 = load ptr, ptr %1008, align 8, !tbaa !168
  %1033 = call ptr %1032(ptr noundef nonnull %17) #16
  %1034 = icmp eq ptr %1033, null
  br i1 %1034, label %1035, label %1022, !llvm.loop !212

1035:                                             ; preds = %1031, %1016, %1011
  %1036 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %1012, i64 0, i32 7
  %1037 = load i32, ptr %1036, align 8, !tbaa !199
  %1038 = sext i32 %1037 to i64
  %1039 = getelementptr inbounds [3 x float], ptr %790, i64 %1038
  %1040 = load float, ptr %1039, align 4, !tbaa !59
  %1041 = getelementptr inbounds float, ptr %1039, i64 1
  %1042 = load float, ptr %1041, align 4, !tbaa !59
  %1043 = fmul float %991, %1042
  %1044 = call float @llvm.fmuladd.f32(float %1040, float %992, float %1043)
  %1045 = getelementptr inbounds float, ptr %1039, i64 2
  %1046 = load float, ptr %1045, align 4, !tbaa !59
  %1047 = call float @llvm.fmuladd.f32(float %1046, float %985, float %1044)
  %1048 = fcmp olt float %1047, 0.000000e+00
  br i1 %1048, label %1049, label %1065

1049:                                             ; preds = %1035
  %1050 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %1012, i64 0, i32 5
  %1051 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %1012, i64 0, i32 6
  %1052 = load float, ptr %1050, align 4, !tbaa !59
  %1053 = load float, ptr %1051, align 4, !tbaa !59
  store float %1053, ptr %1050, align 4, !tbaa !59
  store float %1052, ptr %1051, align 4, !tbaa !59
  %1054 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %1012, i64 0, i32 5, i64 1
  %1055 = load float, ptr %1054, align 4, !tbaa !59
  %1056 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %1012, i64 0, i32 6, i64 1
  %1057 = load float, ptr %1056, align 4, !tbaa !59
  store float %1057, ptr %1054, align 4, !tbaa !59
  store float %1055, ptr %1056, align 4, !tbaa !59
  %1058 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %1012, i64 0, i32 5, i64 2
  %1059 = load float, ptr %1058, align 4, !tbaa !59
  %1060 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %1012, i64 0, i32 6, i64 2
  %1061 = load float, ptr %1060, align 4, !tbaa !59
  store float %1061, ptr %1058, align 4, !tbaa !59
  store float %1059, ptr %1060, align 4, !tbaa !59
  %1062 = load ptr, ptr %1012, align 8, !tbaa !200
  %1063 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %1012, i64 0, i32 1
  %1064 = load ptr, ptr %1063, align 8, !tbaa !201
  store ptr %1064, ptr %1012, align 8, !tbaa !200
  store ptr %1062, ptr %1063, align 8, !tbaa !201
  br label %1065

1065:                                             ; preds = %1049, %1035
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %17) #16
  %1066 = add nuw nsw i32 %1013, 1
  %1067 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %1012, i64 1
  %1068 = load i32, ptr %786, align 8, !tbaa !206
  %1069 = icmp slt i32 %1066, %1068
  br i1 %1069, label %1011, label %1070, !llvm.loop !213

1070:                                             ; preds = %1065
  %1071 = icmp sgt i32 %1068, 0
  br label %1072

1072:                                             ; preds = %1070, %1001
  %1073 = phi i1 [ false, %1001 ], [ %1071, %1070 ]
  br i1 %71, label %1141, label %1074

1074:                                             ; preds = %1072
  %1075 = load ptr, ptr %25, align 8, !tbaa !205
  br i1 %1073, label %1076, label %1140

1076:                                             ; preds = %1074
  %1077 = load ptr, ptr %26, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %1078 = load i8, ptr %35, align 8, !tbaa !34
  %1079 = icmp ne i8 %1078, 1
  %1080 = icmp eq ptr %1077, null
  %1081 = select i1 %1079, i1 true, i1 %1080
  br i1 %1081, label %1085, label %1082

1082:                                             ; preds = %1076
  %1083 = getelementptr inbounds %struct.ARegion, ptr %1077, i64 0, i32 30
  %1084 = load ptr, ptr %1083, align 8, !tbaa !54
  br label %1085

1085:                                             ; preds = %1082, %1076
  %1086 = phi ptr [ null, %1076 ], [ %1084, %1082 ]
  %1087 = icmp eq ptr %1086, null
  br i1 %1087, label %1088, label %1089

1088:                                             ; preds = %1085
  call void @unit_m4(ptr noundef nonnull %6) #16
  br label %1091

1089:                                             ; preds = %1085
  %1090 = load ptr, ptr %20, align 8, !tbaa !100
  call void @ED_view3d_ob_project_mat_get(ptr noundef nonnull %1086, ptr noundef %1090, ptr noundef nonnull %6) #16
  br label %1091

1091:                                             ; preds = %1089, %1088
  %1092 = load i32, ptr %786, align 8, !tbaa !206
  %1093 = icmp sgt i32 %1092, 0
  br i1 %1093, label %1094, label %1139

1094:                                             ; preds = %1091
  %1095 = getelementptr inbounds float, ptr %7, i64 1
  br label %1096

1096:                                             ; preds = %1094, %1133
  %1097 = phi float [ 0x47EFFFFFE0000000, %1094 ], [ %1134, %1133 ]
  %1098 = phi i32 [ 0, %1094 ], [ %1135, %1133 ]
  %1099 = phi ptr [ %1075, %1094 ], [ %1136, %1133 ]
  %1100 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %1099, i64 0, i32 5
  %1101 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %1099, i64 0, i32 6
  %1102 = load float, ptr %1101, align 4, !tbaa !59
  %1103 = load float, ptr %1100, align 4, !tbaa !59
  %1104 = fsub float %1102, %1103
  %1105 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %1099, i64 0, i32 6, i64 1
  %1106 = load float, ptr %1105, align 4, !tbaa !59
  %1107 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %1099, i64 0, i32 5, i64 1
  %1108 = load float, ptr %1107, align 4, !tbaa !59
  %1109 = fsub float %1106, %1108
  %1110 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %1099, i64 0, i32 6, i64 2
  %1111 = load float, ptr %1110, align 4, !tbaa !59
  %1112 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %1099, i64 0, i32 5, i64 2
  %1113 = load float, ptr %1112, align 4, !tbaa !59
  %1114 = fsub float %1111, %1113
  %1115 = fmul float %1109, %1109
  %1116 = call float @llvm.fmuladd.f32(float %1104, float %1104, float %1115)
  %1117 = call float @llvm.fmuladd.f32(float %1114, float %1114, float %1116)
  %1118 = call float @sqrtf(float noundef %1117) #16
  %1119 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %1099, i64 0, i32 4
  store float %1118, ptr %1119, align 4, !tbaa !214
  %1120 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %1099, i64 0, i32 2
  %1121 = load ptr, ptr %1120, align 8, !tbaa !197
  %1122 = getelementptr inbounds %struct.BMVert, ptr %1121, i64 0, i32 2
  call void @ED_view3d_project_float_v2_m4(ptr noundef %1077, ptr noundef nonnull %1122, ptr noundef nonnull %7, ptr noundef nonnull %6) #16
  %1123 = load float, ptr %7, align 4, !tbaa !59
  %1124 = load float, ptr %10, align 4, !tbaa !59
  %1125 = fsub float %1123, %1124
  %1126 = load float, ptr %1095, align 4, !tbaa !59
  %1127 = load float, ptr %31, align 4, !tbaa !59
  %1128 = fsub float %1126, %1127
  %1129 = fmul float %1128, %1128
  %1130 = call float @llvm.fmuladd.f32(float %1125, float %1125, float %1129)
  %1131 = fcmp olt float %1130, %1097
  br i1 %1131, label %1132, label %1133

1132:                                             ; preds = %1096
  store i32 %1098, ptr %69, align 8, !tbaa !163
  br label %1133

1133:                                             ; preds = %1132, %1096
  %1134 = phi float [ %1130, %1132 ], [ %1097, %1096 ]
  %1135 = add nuw nsw i32 %1098, 1
  %1136 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %1099, i64 1
  %1137 = load i32, ptr %786, align 8, !tbaa !206
  %1138 = icmp slt i32 %1135, %1137
  br i1 %1138, label %1096, label %1139, !llvm.loop !215

1139:                                             ; preds = %1133, %1091
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  br label %1141

1140:                                             ; preds = %1074
  store i32 0, ptr %69, align 8, !tbaa !163
  br label %1141

1141:                                             ; preds = %1140, %1139, %1072
  %1142 = getelementptr inbounds %struct.EdgeSlideData, ptr %25, i64 0, i32 5
  store ptr %22, ptr %1142, align 8, !tbaa !216
  %1143 = fmul float %992, 5.000000e-01
  %1144 = fmul float %991, 5.000000e-01
  %1145 = load i32, ptr %28, align 8, !tbaa !73
  %1146 = sitofp i32 %1145 to float
  %1147 = fptosi float %1146 to i32
  %1148 = getelementptr inbounds %struct.EdgeSlideData, ptr %25, i64 0, i32 3
  store i32 %1147, ptr %1148, align 8, !tbaa !73
  %1149 = load i32, ptr %32, align 4, !tbaa !73
  %1150 = sitofp i32 %1149 to float
  %1151 = fptosi float %1150 to i32
  %1152 = getelementptr inbounds %struct.EdgeSlideData, ptr %25, i64 0, i32 3, i64 1
  store i32 %1151, ptr %1152, align 4, !tbaa !73
  %1153 = load i32, ptr %28, align 8, !tbaa !73
  %1154 = sitofp i32 %1153 to float
  %1155 = fadd float %1143, %1154
  %1156 = fptosi float %1155 to i32
  %1157 = getelementptr inbounds %struct.EdgeSlideData, ptr %25, i64 0, i32 4
  store i32 %1156, ptr %1157, align 8, !tbaa !73
  %1158 = load i32, ptr %32, align 4, !tbaa !73
  %1159 = sitofp i32 %1158 to float
  %1160 = fadd float %1144, %1159
  %1161 = fptosi float %1160 to i32
  %1162 = getelementptr inbounds %struct.EdgeSlideData, ptr %25, i64 0, i32 4, i64 1
  store i32 %1161, ptr %1162, align 4, !tbaa !73
  %1163 = getelementptr inbounds %struct.EdgeSlideData, ptr %25, i64 0, i32 8
  store float 0.000000e+00, ptr %1163, align 8, !tbaa !217
  %1164 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  store ptr %25, ptr %1164, align 8, !tbaa !218
  %1165 = load ptr, ptr @MEM_freeN, align 8, !tbaa !148
  call void %1165(ptr noundef %174) #16
  %1166 = icmp eq ptr %785, null
  br i1 %1166, label %1168, label %1167

1167:                                             ; preds = %1141
  call void @BKE_bmbvh_free(ptr noundef nonnull %785) #16
  br label %1168

1168:                                             ; preds = %1167, %1141
  %1169 = load ptr, ptr @MEM_freeN, align 8, !tbaa !148
  call void %1169(ptr noundef %790) #16
  %1170 = load ptr, ptr @MEM_freeN, align 8, !tbaa !148
  call void %1170(ptr noundef %793) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #16
  %1171 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %1172 = load ptr, ptr %1171, align 8, !tbaa !218
  %1173 = icmp eq ptr %1172, null
  br i1 %1173, label %1199, label %1176

1174:                                             ; preds = %207, %163, %119
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #16
  %1175 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  store i16 3, ptr %1175, align 4, !tbaa !98
  br label %1199

1176:                                             ; preds = %1168
  %1177 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 41
  store ptr @freeEdgeSlideVerts, ptr %1177, align 8, !tbaa !219
  %1178 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  %1179 = getelementptr inbounds %struct.EdgeSlideData, ptr %1172, i64 0, i32 4
  %1180 = getelementptr inbounds %struct.EdgeSlideData, ptr %1172, i64 0, i32 3
  call void @setCustomPoints(ptr noundef nonnull %0, ptr noundef nonnull %1178, ptr noundef nonnull %1179, ptr noundef nonnull %1180) #16
  call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %1178, i32 noundef 13) #16
  %1181 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 0, ptr %1181, align 2, !tbaa !107
  %1182 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 0, ptr %1182, align 8, !tbaa !108
  %1183 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store float 0.000000e+00, ptr %1183, align 4, !tbaa !59
  %1184 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 1
  store float 0x3FB99999A0000000, ptr %1184, align 4, !tbaa !59
  %1185 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %1185, align 4, !tbaa !59
  %1186 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  store float 0x3FB99999A0000000, ptr %1186, align 4, !tbaa !59
  %1187 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8, i64 1
  store float 0x3FB99999A0000000, ptr %1187, align 4, !tbaa !59
  %1188 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8, i64 2
  store float 0x3FB99999A0000000, ptr %1188, align 4, !tbaa !59
  %1189 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %1190 = load ptr, ptr %1189, align 8, !tbaa !109
  %1191 = getelementptr inbounds %struct.Scene, ptr %1190, i64 0, i32 38, i32 1
  %1192 = load i8, ptr %1191, align 4, !tbaa !110
  %1193 = zext i8 %1192 to i32
  %1194 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %1193, ptr %1194, align 4, !tbaa !127
  %1195 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %1195, align 8, !tbaa !73
  %1196 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %1197 = load i32, ptr %1196, align 4, !tbaa !99
  %1198 = or i32 %1197, 4194560
  store i32 %1198, ptr %1196, align 4, !tbaa !99
  br label %1199

1199:                                             ; preds = %1168, %1176, %1174
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @initVertSlide(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [2 x i32], align 4
  %3 = alloca [2 x i32], align 4
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca [4 x [4 x float]], align 16
  store i32 29, ptr %0, align 8, !tbaa !87
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyVertSlide, ptr %7, align 8, !tbaa !106
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 8
  store ptr @handleEventVertSlide, ptr %8, align 8, !tbaa !143
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %10 = load ptr, ptr %9, align 8, !tbaa !100
  %11 = tail call ptr @BKE_editmesh_from_object(ptr noundef %10) #16
  %12 = load ptr, ptr %11, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !148
  %14 = tail call ptr %13(i64 noundef 40, ptr noundef nonnull @.str.134) #16
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %18 = load i8, ptr %17, align 8, !tbaa !34
  %19 = icmp ne i8 %18, 1
  %20 = icmp eq ptr %16, null
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.ARegion, ptr %16, i64 0, i32 30
  %24 = load ptr, ptr %23, align 8, !tbaa !54
  br label %25

25:                                               ; preds = %22, %1
  %26 = phi ptr [ null, %1 ], [ %24, %22 ]
  %27 = getelementptr inbounds %struct.VertSlideData, ptr %14, i64 0, i32 4
  store i8 1, ptr %27, align 4, !tbaa !220
  %28 = getelementptr inbounds %struct.VertSlideData, ptr %14, i64 0, i32 6
  store i32 0, ptr %28, align 8, !tbaa !222
  %29 = getelementptr inbounds %struct.VertSlideData, ptr %14, i64 0, i32 5
  store i8 0, ptr %29, align 1, !tbaa !223
  %30 = icmp eq ptr %26, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  call void @unit_m4(ptr noundef nonnull %6) #16
  br label %34

32:                                               ; preds = %25
  %33 = load ptr, ptr %9, align 8, !tbaa !100
  call void @ED_view3d_ob_project_mat_get(ptr noundef nonnull %26, ptr noundef %33, ptr noundef nonnull %6) #16
  br label %34

34:                                               ; preds = %32, %31
  %35 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %35, align 4, !tbaa !165
  %36 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %36, align 8, !tbaa !167
  %37 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %37, align 8, !tbaa !168
  %38 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !169
  store ptr %39, ptr %4, align 8, !tbaa !170
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #16
  %40 = load ptr, ptr %37, align 8, !tbaa !168
  %41 = call ptr %40(ptr noundef nonnull %4) #16
  %42 = icmp eq ptr %41, null
  br i1 %42, label %84, label %43

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %45 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %46 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  br label %47

47:                                               ; preds = %43, %79
  %48 = phi i32 [ 0, %43 ], [ %80, %79 ]
  %49 = phi ptr [ %41, %43 ], [ %82, %79 ]
  %50 = getelementptr inbounds %struct.BMHeader, ptr %49, i64 0, i32 3
  %51 = load i8, ptr %50, align 1, !tbaa !171
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %76, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.BMVert, ptr %49, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !173
  %57 = icmp eq ptr %56, null
  br i1 %57, label %76, label %58

58:                                               ; preds = %54
  store i8 4, ptr %44, align 4, !tbaa !165
  store ptr @bmiter__edge_of_vert_begin, ptr %45, align 8, !tbaa !167
  store ptr @bmiter__edge_of_vert_step, ptr %46, align 8, !tbaa !168
  store ptr %49, ptr %5, align 8, !tbaa !170
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %5) #16
  %59 = load ptr, ptr %46, align 8, !tbaa !168
  %60 = call ptr %59(ptr noundef nonnull %5) #16
  %61 = icmp eq ptr %60, null
  br i1 %61, label %76, label %62

62:                                               ; preds = %58, %68
  %63 = phi ptr [ %70, %68 ], [ %60, %58 ]
  %64 = getelementptr inbounds %struct.BMHeader, ptr %63, i64 0, i32 3
  %65 = load i8, ptr %64, align 1, !tbaa !171
  %66 = and i8 %65, 2
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = load ptr, ptr %46, align 8, !tbaa !168
  %70 = call ptr %69(ptr noundef nonnull %5) #16
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %62, !llvm.loop !224

72:                                               ; preds = %62
  %73 = load i8, ptr %50, align 1, !tbaa !171
  %74 = or i8 %73, 16
  store i8 %74, ptr %50, align 1, !tbaa !171
  %75 = add nsw i32 %48, 1
  br label %79

76:                                               ; preds = %68, %58, %54, %47
  %77 = load i8, ptr %50, align 1, !tbaa !171
  %78 = and i8 %77, -17
  store i8 %78, ptr %50, align 1, !tbaa !171
  br label %79

79:                                               ; preds = %76, %72
  %80 = phi i32 [ %75, %72 ], [ %48, %76 ]
  %81 = load ptr, ptr %37, align 8, !tbaa !168
  %82 = call ptr %81(ptr noundef nonnull %4) #16
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %47, !llvm.loop !225

84:                                               ; preds = %79, %34
  %85 = phi i32 [ 0, %34 ], [ %80, %79 ]
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load ptr, ptr @MEM_freeN, align 8, !tbaa !148
  call void %88(ptr noundef %14) #16
  br label %239

89:                                               ; preds = %84
  %90 = load ptr, ptr @MEM_callocN, align 8, !tbaa !148
  %91 = sext i32 %85 to i64
  %92 = mul nsw i64 %91, 56
  %93 = call ptr %90(i64 noundef %92, ptr noundef nonnull @.str.135) #16
  store i8 1, ptr %35, align 4, !tbaa !165
  store ptr @bmiter__elem_of_mesh_begin, ptr %36, align 8, !tbaa !167
  store ptr @bmiter__elem_of_mesh_step, ptr %37, align 8, !tbaa !168
  %94 = load ptr, ptr %38, align 8, !tbaa !169
  store ptr %94, ptr %4, align 8, !tbaa !170
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #16
  %95 = load ptr, ptr %37, align 8, !tbaa !168
  %96 = call ptr %95(ptr noundef nonnull %4) #16
  %97 = icmp eq ptr %96, null
  br i1 %97, label %205, label %98

98:                                               ; preds = %89
  %99 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %100 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %101 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  br label %102

102:                                              ; preds = %98, %200
  %103 = phi i32 [ 0, %98 ], [ %201, %200 ]
  %104 = phi ptr [ %96, %98 ], [ %203, %200 ]
  %105 = getelementptr inbounds %struct.BMHeader, ptr %104, i64 0, i32 3
  %106 = load i8, ptr %105, align 1, !tbaa !171
  %107 = and i8 %106, 16
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %200, label %109

109:                                              ; preds = %102
  %110 = sext i32 %103 to i64
  %111 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %93, i64 %110
  store ptr %104, ptr %111, align 8, !tbaa !226
  %112 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %93, i64 %110, i32 1
  %113 = getelementptr inbounds %struct.BMVert, ptr %104, i64 0, i32 2
  %114 = load float, ptr %113, align 4, !tbaa !59
  store float %114, ptr %112, align 4, !tbaa !59
  %115 = getelementptr inbounds %struct.BMVert, ptr %104, i64 0, i32 2, i64 1
  %116 = load float, ptr %115, align 4, !tbaa !59
  %117 = getelementptr inbounds float, ptr %112, i64 1
  store float %116, ptr %117, align 4, !tbaa !59
  %118 = getelementptr inbounds %struct.BMVert, ptr %104, i64 0, i32 2, i64 2
  %119 = load float, ptr %118, align 4, !tbaa !59
  %120 = getelementptr inbounds float, ptr %112, i64 2
  store float %119, ptr %120, align 4, !tbaa !59
  store i8 4, ptr %99, align 4, !tbaa !165
  store ptr @bmiter__edge_of_vert_begin, ptr %100, align 8, !tbaa !167
  store ptr @bmiter__edge_of_vert_step, ptr %101, align 8, !tbaa !168
  store ptr %104, ptr %5, align 8, !tbaa !170
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %5) #16
  %121 = load ptr, ptr %101, align 8, !tbaa !168
  %122 = call ptr %121(ptr noundef nonnull %5) #16
  %123 = icmp eq ptr %122, null
  br i1 %123, label %136, label %124

124:                                              ; preds = %109, %124
  %125 = phi i32 [ %132, %124 ], [ 0, %109 ]
  %126 = phi ptr [ %134, %124 ], [ %122, %109 ]
  %127 = getelementptr inbounds %struct.BMHeader, ptr %126, i64 0, i32 3
  %128 = load i8, ptr %127, align 1, !tbaa !171
  %129 = and i8 %128, 2
  %130 = icmp eq i8 %129, 0
  %131 = zext i1 %130 to i32
  %132 = add nuw nsw i32 %125, %131
  %133 = load ptr, ptr %101, align 8, !tbaa !168
  %134 = call ptr %133(ptr noundef nonnull %5) #16
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %124, !llvm.loop !228

136:                                              ; preds = %124, %109
  %137 = phi i32 [ 0, %109 ], [ %132, %124 ]
  %138 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !148
  %139 = zext nneg i32 %137 to i64
  %140 = mul nuw nsw i64 %139, 12
  %141 = call ptr %138(i64 noundef %140, ptr noundef nonnull @__func__.createVertSlideVerts) #16
  %142 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %93, i64 %110, i32 3
  store ptr %141, ptr %142, align 8, !tbaa !229
  %143 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !148
  %144 = shl nuw nsw i64 %139, 3
  %145 = call ptr %143(i64 noundef %144, ptr noundef nonnull @__func__.createVertSlideVerts) #16
  %146 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %93, i64 %110, i32 4
  store ptr %145, ptr %146, align 8, !tbaa !230
  %147 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %93, i64 %110, i32 5
  store i32 %137, ptr %147, align 8, !tbaa !231
  store i8 4, ptr %99, align 4, !tbaa !165
  store ptr @bmiter__edge_of_vert_begin, ptr %100, align 8, !tbaa !167
  store ptr @bmiter__edge_of_vert_step, ptr %101, align 8, !tbaa !168
  store ptr %104, ptr %5, align 8, !tbaa !170
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %5) #16
  %148 = load ptr, ptr %101, align 8, !tbaa !168
  %149 = call ptr %148(ptr noundef nonnull %5) #16
  %150 = icmp eq ptr %149, null
  br i1 %150, label %191, label %151

151:                                              ; preds = %136, %186
  %152 = phi i32 [ %187, %186 ], [ 0, %136 ]
  %153 = phi ptr [ %189, %186 ], [ %149, %136 ]
  %154 = getelementptr inbounds %struct.BMHeader, ptr %153, i64 0, i32 3
  %155 = load i8, ptr %154, align 1, !tbaa !171
  %156 = and i8 %155, 2
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %186

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.BMEdge, ptr %153, i64 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !193
  %161 = icmp eq ptr %160, %104
  %162 = getelementptr inbounds %struct.BMEdge, ptr %153, i64 0, i32 3
  %163 = load ptr, ptr %162, align 8, !tbaa !194
  %164 = icmp eq ptr %163, %104
  %165 = select i1 %164, ptr %160, ptr null
  %166 = select i1 %161, ptr %163, ptr %165
  %167 = load ptr, ptr %142, align 8, !tbaa !229
  %168 = sext i32 %152 to i64
  %169 = getelementptr inbounds [3 x float], ptr %167, i64 %168
  %170 = getelementptr inbounds %struct.BMVert, ptr %166, i64 0, i32 2
  %171 = load float, ptr %170, align 4, !tbaa !59
  store float %171, ptr %169, align 4, !tbaa !59
  %172 = getelementptr inbounds %struct.BMVert, ptr %166, i64 0, i32 2, i64 1
  %173 = load float, ptr %172, align 4, !tbaa !59
  %174 = getelementptr inbounds float, ptr %169, i64 1
  store float %173, ptr %174, align 4, !tbaa !59
  %175 = getelementptr inbounds %struct.BMVert, ptr %166, i64 0, i32 2, i64 2
  %176 = load float, ptr %175, align 4, !tbaa !59
  %177 = getelementptr inbounds float, ptr %169, i64 2
  store float %176, ptr %177, align 4, !tbaa !59
  %178 = load ptr, ptr %146, align 8, !tbaa !230
  %179 = getelementptr inbounds [2 x float], ptr %178, i64 %168
  br i1 %20, label %181, label %180

180:                                              ; preds = %158
  call void @ED_view3d_project_float_v2_m4(ptr noundef nonnull %16, ptr noundef nonnull %169, ptr noundef %179, ptr noundef nonnull %6) #16
  br label %184

181:                                              ; preds = %158
  store float %171, ptr %179, align 4, !tbaa !59
  %182 = load float, ptr %174, align 4, !tbaa !59
  %183 = getelementptr inbounds float, ptr %179, i64 1
  store float %182, ptr %183, align 4, !tbaa !59
  br label %184

184:                                              ; preds = %181, %180
  %185 = add nsw i32 %152, 1
  br label %186

186:                                              ; preds = %184, %151
  %187 = phi i32 [ %152, %151 ], [ %185, %184 ]
  %188 = load ptr, ptr %101, align 8, !tbaa !168
  %189 = call ptr %188(ptr noundef nonnull %5) #16
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %151, !llvm.loop !232

191:                                              ; preds = %186, %136
  %192 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %93, i64 %110, i32 2
  br i1 %20, label %194, label %193

193:                                              ; preds = %191
  call void @ED_view3d_project_float_v2_m4(ptr noundef nonnull %16, ptr noundef nonnull %112, ptr noundef nonnull %192, ptr noundef nonnull %6) #16
  br label %198

194:                                              ; preds = %191
  %195 = load float, ptr %112, align 4, !tbaa !59
  store float %195, ptr %192, align 4, !tbaa !59
  %196 = load float, ptr %117, align 4, !tbaa !59
  %197 = getelementptr inbounds float, ptr %192, i64 1
  store float %196, ptr %197, align 4, !tbaa !59
  br label %198

198:                                              ; preds = %194, %193
  %199 = add nsw i32 %103, 1
  br label %200

200:                                              ; preds = %198, %102
  %201 = phi i32 [ %199, %198 ], [ %103, %102 ]
  %202 = load ptr, ptr %37, align 8, !tbaa !168
  %203 = call ptr %202(ptr noundef nonnull %4) #16
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %102, !llvm.loop !233

205:                                              ; preds = %200, %89
  %206 = phi i32 [ 0, %89 ], [ %201, %200 ]
  store ptr %93, ptr %14, align 8, !tbaa !234
  %207 = getelementptr inbounds %struct.VertSlideData, ptr %14, i64 0, i32 1
  store i32 %206, ptr %207, align 8, !tbaa !235
  %208 = getelementptr inbounds %struct.VertSlideData, ptr %14, i64 0, i32 2
  store ptr %11, ptr %208, align 8, !tbaa !236
  %209 = getelementptr inbounds %struct.VertSlideData, ptr %14, i64 0, i32 3
  store float 0.000000e+00, ptr %209, align 8, !tbaa !237
  %210 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  store ptr %14, ptr %210, align 8, !tbaa !218
  br i1 %30, label %239, label %211

211:                                              ; preds = %205
  %212 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61
  %213 = load i32, ptr %212, align 4, !tbaa !73
  %214 = sitofp i32 %213 to float
  %215 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61, i64 1
  %216 = load i32, ptr %215, align 4, !tbaa !73
  %217 = sitofp i32 %216 to float
  %218 = icmp sgt i32 %206, 0
  br i1 %218, label %219, label %238

219:                                              ; preds = %211, %233
  %220 = phi i32 [ %235, %233 ], [ 0, %211 ]
  %221 = phi float [ %234, %233 ], [ 0x47EFFFFFE0000000, %211 ]
  %222 = phi ptr [ %236, %233 ], [ %93, %211 ]
  %223 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %222, i64 0, i32 2
  %224 = load float, ptr %223, align 4, !tbaa !59
  %225 = fsub float %224, %214
  %226 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %222, i64 0, i32 2, i64 1
  %227 = load float, ptr %226, align 4, !tbaa !59
  %228 = fsub float %227, %217
  %229 = fmul float %228, %228
  %230 = call float @llvm.fmuladd.f32(float %225, float %225, float %229)
  %231 = fcmp olt float %230, %221
  br i1 %231, label %232, label %233

232:                                              ; preds = %219
  store i32 %220, ptr %28, align 8, !tbaa !222
  br label %233

233:                                              ; preds = %232, %219
  %234 = phi float [ %230, %232 ], [ %221, %219 ]
  %235 = add nuw nsw i32 %220, 1
  %236 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %222, i64 1
  %237 = icmp eq i32 %235, %206
  br i1 %237, label %238, label %219, !llvm.loop !238

238:                                              ; preds = %233, %211
  call fastcc void @calcVertSlideMouseActiveEdges(ptr noundef nonnull %0, ptr noundef nonnull %212)
  br label %239

239:                                              ; preds = %87, %205, %238
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #16
  br i1 %86, label %240, label %242

240:                                              ; preds = %239
  %241 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  store i16 3, ptr %241, align 4, !tbaa !98
  br label %302

242:                                              ; preds = %239
  %243 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %244 = load ptr, ptr %243, align 8, !tbaa !218
  %245 = icmp eq ptr %244, null
  br i1 %245, label %302, label %246

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 41
  store ptr @freeVertSlideVerts, ptr %247, align 8, !tbaa !219
  %248 = load ptr, ptr %244, align 8, !tbaa !234
  %249 = getelementptr inbounds %struct.VertSlideData, ptr %244, i64 0, i32 6
  %250 = load i32, ptr %249, align 8, !tbaa !222
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %248, i64 %251, i32 2
  %253 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %248, i64 %251, i32 4
  %254 = load ptr, ptr %253, align 8, !tbaa !230
  %255 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %248, i64 %251, i32 6
  %256 = load i32, ptr %255, align 4, !tbaa !239
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [2 x float], ptr %254, i64 %257
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %259 = load float, ptr %252, align 4, !tbaa !59
  %260 = fptosi float %259 to i32
  store i32 %260, ptr %2, align 4, !tbaa !73
  %261 = getelementptr inbounds i32, ptr %2, i64 1
  %262 = getelementptr inbounds float, ptr %252, i64 1
  %263 = load float, ptr %262, align 4, !tbaa !59
  %264 = fptosi float %263 to i32
  store i32 %264, ptr %261, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %265 = load float, ptr %258, align 4, !tbaa !59
  %266 = fptosi float %265 to i32
  store i32 %266, ptr %3, align 4, !tbaa !73
  %267 = getelementptr inbounds i32, ptr %3, i64 1
  %268 = getelementptr inbounds float, ptr %258, i64 1
  %269 = load float, ptr %268, align 4, !tbaa !59
  %270 = fptosi float %269 to i32
  store i32 %270, ptr %267, align 4, !tbaa !73
  %271 = getelementptr inbounds %struct.VertSlideData, ptr %244, i64 0, i32 5
  %272 = load i8, ptr %271, align 1, !tbaa !223
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %280, label %274

274:                                              ; preds = %246
  %275 = getelementptr inbounds %struct.VertSlideData, ptr %244, i64 0, i32 4
  %276 = load i8, ptr %275, align 4, !tbaa !220
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  call void @setCustomPoints(ptr noundef nonnull %0, ptr noundef nonnull %279, ptr noundef nonnull %2, ptr noundef nonnull %3) #16
  br label %282

280:                                              ; preds = %274, %246
  %281 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  call void @setCustomPoints(ptr noundef nonnull %0, ptr noundef nonnull %281, ptr noundef nonnull %3, ptr noundef nonnull %2) #16
  br label %282

282:                                              ; preds = %278, %280
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  %283 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %283, i32 noundef 12) #16
  %284 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 0, ptr %284, align 2, !tbaa !107
  %285 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 0, ptr %285, align 8, !tbaa !108
  %286 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store float 0.000000e+00, ptr %286, align 4, !tbaa !59
  %287 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 1
  store float 0x3FB99999A0000000, ptr %287, align 4, !tbaa !59
  %288 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %288, align 4, !tbaa !59
  %289 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  store float 0x3FB99999A0000000, ptr %289, align 4, !tbaa !59
  %290 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8, i64 1
  store float 0x3FB99999A0000000, ptr %290, align 4, !tbaa !59
  %291 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8, i64 2
  store float 0x3FB99999A0000000, ptr %291, align 4, !tbaa !59
  %292 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %293 = load ptr, ptr %292, align 8, !tbaa !109
  %294 = getelementptr inbounds %struct.Scene, ptr %293, i64 0, i32 38, i32 1
  %295 = load i8, ptr %294, align 4, !tbaa !110
  %296 = zext i8 %295 to i32
  %297 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %296, ptr %297, align 4, !tbaa !127
  %298 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %298, align 8, !tbaa !73
  %299 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %300 = load i32, ptr %299, align 4, !tbaa !99
  %301 = or i32 %300, 4194560
  store i32 %301, ptr %299, align 4, !tbaa !99
  br label %302

302:                                              ; preds = %242, %282, %240
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @initRotation(ptr noundef %0) unnamed_addr #0 {
  store i32 2, ptr %0, align 8, !tbaa !87
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyRotation, ptr %2, align 8, !tbaa !106
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @setInputPostFct(ptr noundef nonnull %3, ptr noundef nonnull @postInputRotation) #16
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 5) #16
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 0, ptr %4, align 2, !tbaa !107
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 0, ptr %5, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store float 0.000000e+00, ptr %6, align 4, !tbaa !59
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 1
  store float 0x3FB6571840000000, ptr %7, align 4, !tbaa !59
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3F91DF46A0000000, ptr %8, align 4, !tbaa !59
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  store float 0x3F91DF46A0000000, ptr %9, align 4, !tbaa !59
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8, i64 1
  store float 0x3F91DF46A0000000, ptr %10, align 4, !tbaa !59
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8, i64 2
  store float 0x3F91DF46A0000000, ptr %11, align 4, !tbaa !59
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %13 = load ptr, ptr %12, align 8, !tbaa !109
  %14 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 38, i32 1
  %15 = load i8, ptr %14, align 4, !tbaa !110
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %16, ptr %17, align 4, !tbaa !127
  %18 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 38, i32 2
  %19 = load i8, ptr %18, align 1, !tbaa !128
  %20 = icmp eq i8 %19, 2
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 3
  store i8 %21, ptr %22, align 4, !tbaa !129
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 5, ptr %23, align 8, !tbaa !73
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !99
  %26 = and i32 %25, 32768
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %1
  %29 = or i32 %25, 256
  store i32 %29, ptr %24, align 4, !tbaa !99
  br label %30

30:                                               ; preds = %28, %1
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !58
  %33 = and i32 %32, 256
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 49
  br i1 %34, label %39, label %36

36:                                               ; preds = %30
  store float 0.000000e+00, ptr %35, align 4, !tbaa !59
  %37 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 49, i64 1
  store float 0.000000e+00, ptr %37, align 4, !tbaa !59
  %38 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 49, i64 2
  store float -1.000000e+00, ptr %38, align 4, !tbaa !59
  br label %67

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !59
  %42 = fneg float %41
  store float %42, ptr %35, align 4, !tbaa !59
  %43 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !59
  %45 = fneg float %44
  %46 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 49, i64 1
  store float %45, ptr %46, align 4, !tbaa !59
  %47 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !59
  %49 = fneg float %48
  %50 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 49, i64 2
  store float %49, ptr %50, align 4, !tbaa !59
  %51 = fmul float %44, %44
  %52 = tail call float @llvm.fmuladd.f32(float %41, float %41, float %51)
  %53 = tail call float @llvm.fmuladd.f32(float %48, float %48, float %52)
  %54 = fcmp ogt float %53, 0x38AA95A5C0000000
  br i1 %54, label %55, label %64

55:                                               ; preds = %39
  %56 = tail call float @sqrtf(float noundef %53) #16
  %57 = fdiv float 1.000000e+00, %56
  %58 = load float, ptr %35, align 4, !tbaa !59
  %59 = fmul float %58, %57
  store float %59, ptr %35, align 4, !tbaa !59
  %60 = load float, ptr %46, align 4, !tbaa !59
  %61 = fmul float %57, %60
  store float %61, ptr %46, align 4, !tbaa !59
  %62 = load float, ptr %50, align 4, !tbaa !59
  %63 = fmul float %57, %62
  br label %65

64:                                               ; preds = %39
  store float 0.000000e+00, ptr %35, align 4, !tbaa !59
  store float 0.000000e+00, ptr %46, align 4, !tbaa !59
  br label %65

65:                                               ; preds = %55, %64
  %66 = phi float [ 0.000000e+00, %64 ], [ %63, %55 ]
  store float %66, ptr %50, align 4, !tbaa !59
  br label %67

67:                                               ; preds = %65, %36
  %68 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 50
  %69 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 49
  %70 = load float, ptr %69, align 4, !tbaa !59
  store float %70, ptr %68, align 4, !tbaa !59
  %71 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 49, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !59
  %73 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 50, i64 1
  store float %72, ptr %73, align 4, !tbaa !59
  %74 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 49, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !59
  %76 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 50, i64 2
  store float %75, ptr %76, align 4, !tbaa !59
  ret void
}

declare void @stopConstraint(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @transform_event_xyz_constraint(ptr noundef %0, i16 noundef signext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %65

8:                                                ; preds = %3
  %9 = add i16 %1, -120
  %10 = icmp ult i16 %9, 3
  br i1 %10, label %11, label %65

11:                                               ; preds = %8
  %12 = and i32 %5, 32768
  %13 = zext nneg i16 %9 to i64
  %14 = shl i64 %13, 2
  %15 = call ptr @llvm.load.relative.i64(ptr @reltable.transform_event_xyz_constraint, i64 %14)
  %16 = zext nneg i16 %9 to i64
  %17 = getelementptr inbounds [3 x ptr], ptr @switch.table.transform_event_xyz_constraint.162, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8
  %19 = zext nneg i16 %9 to i64
  %20 = getelementptr inbounds [3 x ptr], ptr @switch.table.transform_event_xyz_constraint.163, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8
  %22 = or disjoint i16 %9, 88
  %23 = zext nneg i16 %9 to i64
  %24 = getelementptr inbounds [3 x i32], ptr @switch.table.transform_event_xyz_constraint.164, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = xor i32 %25, 14
  %27 = icmp ne i32 %12, 0
  %28 = icmp ne i16 %1, 122
  %29 = and i1 %28, %27
  br i1 %29, label %30, label %35

30:                                               ; preds = %11
  %31 = zext i8 %2 to i16
  %32 = icmp eq i16 %22, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  tail call void @stopConstraint(ptr noundef %0) #16
  br label %61

34:                                               ; preds = %30
  tail call void @setUserConstraint(ptr noundef %0, i16 noundef signext 0, i32 noundef %25, ptr noundef nonnull %15) #16
  br label %61

35:                                               ; preds = %11
  br i1 %27, label %61, label %36

36:                                               ; preds = %35
  %37 = zext i8 %2 to i16
  %38 = icmp eq i16 %22, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13
  %41 = load i16, ptr %40, align 8, !tbaa !130
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @stopConstraint(ptr noundef %0) #16
  br label %61

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 43
  %46 = load i16, ptr %45, align 2, !tbaa !133
  %47 = tail call i16 @llvm.umax.i16(i16 %46, i16 1)
  %48 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !96
  %50 = and i32 %49, 16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  tail call void @setUserConstraint(ptr noundef %0, i16 noundef signext %47, i32 noundef %25, ptr noundef nonnull %18) #16
  br label %61

53:                                               ; preds = %44
  tail call void @setUserConstraint(ptr noundef %0, i16 noundef signext %47, i32 noundef %26, ptr noundef nonnull %21) #16
  br label %61

54:                                               ; preds = %36
  %55 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !96
  %57 = and i32 %56, 16
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  tail call void @setUserConstraint(ptr noundef %0, i16 noundef signext 0, i32 noundef %25, ptr noundef nonnull %18) #16
  br label %61

60:                                               ; preds = %54
  tail call void @setUserConstraint(ptr noundef %0, i16 noundef signext 0, i32 noundef %26, ptr noundef nonnull %21) #16
  br label %61

61:                                               ; preds = %52, %53, %35, %59, %60, %43, %33, %34
  %62 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 17
  %63 = load i32, ptr %62, align 8, !tbaa !91
  %64 = or i32 %63, 1
  store i32 %64, ptr %62, align 8, !tbaa !91
  br label %65

65:                                               ; preds = %8, %61, %3
  ret void
}

declare void @setUserConstraint(ptr noundef, i16 noundef signext, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @addSnapPoint(ptr noundef) local_unnamed_addr #2

declare void @removeSnapPoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @calculatePropRatio(ptr noundef) local_unnamed_addr #2

declare void @transform_autoik_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @setLocalConstraint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @initSelectConstraint(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @unit_m3(ptr noundef) local_unnamed_addr #2

declare void @postSelectConstraint(ptr noundef) local_unnamed_addr #2

declare void @sort_trans_data_dist(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @calculateTransformCenter(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !148
  %6 = tail call ptr %5(i64 noundef 1392, ptr noundef nonnull @.str.60) #16
  %7 = getelementptr inbounds %struct.TransInfo, ptr %6, i64 0, i32 3
  store i16 1, ptr %7, align 4, !tbaa !98
  %8 = getelementptr inbounds %struct.TransInfo, ptr %6, i64 0, i32 4
  store i32 4, ptr %8, align 8, !tbaa !58
  store i32 0, ptr %6, align 8, !tbaa !87
  tail call void @initTransInfo(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null, ptr noundef null) #16
  %9 = getelementptr inbounds %struct.TransInfo, ptr %6, i64 0, i32 32
  store i16 0, ptr %9, align 2, !tbaa !240
  tail call void @createTransData(ptr noundef %0, ptr noundef nonnull %6) #16
  %10 = trunc i32 %1 to i16
  store i16 %10, ptr %9, align 2, !tbaa !240
  %11 = getelementptr inbounds %struct.TransInfo, ptr %6, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !241
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %4
  tail call void @calculateCenter(ptr noundef nonnull %6) #16
  %15 = icmp eq ptr %3, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.TransInfo, ptr %6, i64 0, i32 21
  %18 = load float, ptr %17, align 4, !tbaa !59
  store float %18, ptr %3, align 4, !tbaa !59
  %19 = getelementptr inbounds %struct.TransInfo, ptr %6, i64 0, i32 21, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !59
  %21 = getelementptr inbounds float, ptr %3, i64 1
  store float %20, ptr %21, align 4, !tbaa !59
  br label %22

22:                                               ; preds = %16, %14
  %23 = icmp eq ptr %2, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.TransInfo, ptr %6, i64 0, i32 13, i32 5
  %26 = load float, ptr %25, align 4, !tbaa !59
  store float %26, ptr %2, align 4, !tbaa !59
  %27 = getelementptr inbounds %struct.TransInfo, ptr %6, i64 0, i32 13, i32 5, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !59
  %29 = getelementptr inbounds float, ptr %2, i64 1
  store float %28, ptr %29, align 4, !tbaa !59
  %30 = getelementptr inbounds %struct.TransInfo, ptr %6, i64 0, i32 13, i32 5, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !59
  %32 = getelementptr inbounds float, ptr %2, i64 2
  store float %31, ptr %32, align 4, !tbaa !59
  br label %33

33:                                               ; preds = %4, %22, %24
  %34 = phi i8 [ 1, %24 ], [ 1, %22 ], [ 0, %4 ]
  tail call void @special_aftertrans_update(ptr noundef %0, ptr noundef nonnull %6) #16
  tail call void @postTrans(ptr noundef %0, ptr noundef nonnull %6) #16
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !148
  tail call void %35(ptr noundef nonnull %6) #16
  ret i8 %34
}

declare void @initTransInfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @createTransData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @calculateCenter(ptr noundef) local_unnamed_addr #2

declare void @special_aftertrans_update(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @postTrans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @saveTransform(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca [3 x i32], align 4
  %5 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  %6 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !242
  %8 = tail call ptr @RNA_struct_find_property(ptr noundef %7, ptr noundef nonnull @.str.61) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %6, align 8, !tbaa !242
  %12 = load i32, ptr %1, align 8, !tbaa !87
  tail call void @RNA_property_enum_set(ptr noundef %11, ptr noundef nonnull %8, i32 noundef %12) #16
  br label %13

13:                                               ; preds = %10, %3
  %14 = load ptr, ptr %6, align 8, !tbaa !242
  %15 = tail call ptr @RNA_struct_find_property(ptr noundef %14, ptr noundef nonnull @.str.62) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !99
  %20 = and i32 %19, 1048576
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 48
  %23 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 47
  %24 = select i1 %21, ptr %23, ptr %22
  %25 = tail call zeroext i8 @RNA_property_array_check(ptr noundef nonnull %15) #16
  %26 = icmp eq i8 %25, 0
  %27 = load ptr, ptr %6, align 8, !tbaa !242
  br i1 %26, label %29, label %28

28:                                               ; preds = %17
  tail call void @RNA_property_float_set_array(ptr noundef %27, ptr noundef nonnull %15, ptr noundef nonnull %24) #16
  br label %31

29:                                               ; preds = %17
  %30 = load float, ptr %24, align 4, !tbaa !59
  tail call void @RNA_property_float_set(ptr noundef %27, ptr noundef nonnull %15, float noundef %30) #16
  br label %31

31:                                               ; preds = %28, %29, %13
  %32 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !99
  %34 = and i32 %33, 33560576
  switch i32 %34, label %37 [
    i32 2048, label %38
    i32 6144, label %35
    i32 33556480, label %36
  ]

35:                                               ; preds = %31
  br label %38

36:                                               ; preds = %31
  br label %38

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %31, %37, %36, %35
  %39 = phi i8 [ 0, %37 ], [ 1, %36 ], [ 1, %35 ], [ 1, %31 ]
  %40 = phi i32 [ 0, %37 ], [ 3, %36 ], [ 2, %35 ], [ 1, %31 ]
  %41 = and i32 %33, 2097152
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %123, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %45 = load i32, ptr %44, align 8, !tbaa !58
  %46 = and i32 %45, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %95

48:                                               ; preds = %43
  %49 = load ptr, ptr %6, align 8, !tbaa !242
  %50 = tail call ptr @RNA_struct_find_property(ptr noundef %49, ptr noundef nonnull @.str.63) #16
  %51 = icmp eq ptr %50, null
  br i1 %51, label %71, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %6, align 8, !tbaa !242
  %54 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %53, ptr noundef nonnull %50) #16
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  %58 = load ptr, ptr %57, align 8, !tbaa !100
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = trunc i32 %40 to i16
  %62 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 56
  store i16 %61, ptr %62, align 2, !tbaa !244
  br label %71

63:                                               ; preds = %56
  %64 = load i32, ptr %44, align 8, !tbaa !58
  %65 = and i32 %64, 128
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 59
  store i8 %39, ptr %68, align 1, !tbaa !245
  br label %71

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 58
  store i8 %39, ptr %70, align 2, !tbaa !246
  br label %71

71:                                               ; preds = %60, %69, %67, %52, %48
  %72 = load ptr, ptr %6, align 8, !tbaa !242
  %73 = tail call ptr @RNA_struct_find_property(ptr noundef %72, ptr noundef nonnull @.str.64) #16
  %74 = icmp eq ptr %73, null
  br i1 %74, label %83, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %6, align 8, !tbaa !242
  %77 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %76, ptr noundef nonnull %73) #16
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 18
  %81 = load float, ptr %80, align 4, !tbaa !136
  %82 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 19
  store float %81, ptr %82, align 8, !tbaa !247
  br label %83

83:                                               ; preds = %79, %75, %71
  %84 = load ptr, ptr %6, align 8, !tbaa !242
  %85 = tail call ptr @RNA_struct_find_property(ptr noundef %84, ptr noundef nonnull @.str.65) #16
  %86 = icmp eq ptr %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %6, align 8, !tbaa !242
  %89 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %88, ptr noundef nonnull %85) #16
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 45
  %93 = load i16, ptr %92, align 2, !tbaa !141
  %94 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 57
  store i16 %93, ptr %94, align 8, !tbaa !248
  br label %95

95:                                               ; preds = %83, %87, %91, %43
  %96 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 2
  %97 = load i32, ptr %96, align 8, !tbaa !96
  %98 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 54
  %99 = load i16, ptr %98, align 2, !tbaa !249
  %100 = and i16 %99, -2
  %101 = trunc i32 %97 to i16
  %102 = lshr i16 %101, 2
  %103 = and i16 %102, 1
  %104 = or disjoint i16 %100, %103
  store i16 %104, ptr %98, align 2, !tbaa !249
  %105 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  %106 = load i8, ptr %105, align 8, !tbaa !34
  %107 = icmp eq i8 %106, 1
  br i1 %107, label %108, label %123

108:                                              ; preds = %95
  %109 = load ptr, ptr %6, align 8, !tbaa !242
  %110 = tail call ptr @RNA_struct_find_property(ptr noundef %109, ptr noundef nonnull @.str.66) #16
  %111 = icmp eq ptr %110, null
  br i1 %111, label %123, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr %6, align 8, !tbaa !242
  %114 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %113, ptr noundef nonnull %110) #16
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 52
  %118 = load ptr, ptr %117, align 8, !tbaa !61
  %119 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 43
  %120 = load i16, ptr %119, align 2, !tbaa !133
  %121 = trunc i16 %120 to i8
  %122 = getelementptr inbounds %struct.View3D, ptr %118, i64 0, i32 41
  store i8 %121, ptr %122, align 4, !tbaa !250
  br label %123

123:                                              ; preds = %95, %116, %112, %108, %38
  %124 = load ptr, ptr %6, align 8, !tbaa !242
  %125 = tail call ptr @RNA_struct_find_property(ptr noundef %124, ptr noundef nonnull @.str.63) #16
  %126 = icmp eq ptr %125, null
  br i1 %126, label %136, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr %6, align 8, !tbaa !242
  tail call void @RNA_enum_set(ptr noundef %128, ptr noundef nonnull @.str.63, i32 noundef %40) #16
  %129 = load ptr, ptr %6, align 8, !tbaa !242
  %130 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 45
  %131 = load i16, ptr %130, align 2, !tbaa !141
  %132 = sext i16 %131 to i32
  tail call void @RNA_enum_set(ptr noundef %129, ptr noundef nonnull @.str.65, i32 noundef %132) #16
  %133 = load ptr, ptr %6, align 8, !tbaa !242
  %134 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 18
  %135 = load float, ptr %134, align 4, !tbaa !136
  tail call void @RNA_float_set(ptr noundef %133, ptr noundef nonnull @.str.64, float noundef %135) #16
  br label %136

136:                                              ; preds = %127, %123
  %137 = load ptr, ptr %6, align 8, !tbaa !242
  %138 = tail call ptr @RNA_struct_find_property(ptr noundef %137, ptr noundef nonnull @.str.67) #16
  %139 = icmp eq ptr %138, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %136
  %141 = load ptr, ptr %6, align 8, !tbaa !242
  %142 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 49
  tail call void @RNA_property_float_set_array(ptr noundef %141, ptr noundef nonnull %138, ptr noundef nonnull %142) #16
  br label %143

143:                                              ; preds = %140, %136
  %144 = load ptr, ptr %6, align 8, !tbaa !242
  %145 = tail call ptr @RNA_struct_find_property(ptr noundef %144, ptr noundef nonnull @.str.68) #16
  %146 = icmp eq ptr %145, null
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = load ptr, ptr %6, align 8, !tbaa !242
  %149 = load i32, ptr %32, align 4, !tbaa !99
  %150 = and i32 %149, 524288
  tail call void @RNA_property_boolean_set(ptr noundef %148, ptr noundef nonnull %145, i32 noundef %150) #16
  br label %151

151:                                              ; preds = %147, %143
  %152 = load ptr, ptr %6, align 8, !tbaa !242
  %153 = tail call ptr @RNA_struct_find_property(ptr noundef %152, ptr noundef nonnull @.str.69) #16
  %154 = icmp eq ptr %153, null
  br i1 %154, label %185, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 13, i32 7
  %157 = load i32, ptr %156, align 4, !tbaa !97
  %158 = and i32 %157, 1
  %159 = icmp eq i32 %158, 0
  %160 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 43
  %161 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 13
  %162 = select i1 %159, ptr %160, ptr %161
  %163 = load ptr, ptr %6, align 8, !tbaa !242
  %164 = load i16, ptr %162, align 2, !tbaa !131
  %165 = sext i16 %164 to i32
  tail call void @RNA_enum_set(ptr noundef %163, ptr noundef nonnull @.str.66, i32 noundef %165) #16
  %166 = load i32, ptr %156, align 4, !tbaa !97
  %167 = and i32 %166, 1
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %183, label %169

169:                                              ; preds = %155
  %170 = and i32 %166, 2
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %169
  store i32 1, ptr %4, align 4, !tbaa !73
  br label %173

173:                                              ; preds = %172, %169
  %174 = and i32 %166, 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %173
  %177 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 1
  store i32 1, ptr %177, align 4, !tbaa !73
  br label %178

178:                                              ; preds = %176, %173
  %179 = and i32 %166, 8
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %178
  %182 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 2
  store i32 1, ptr %182, align 4, !tbaa !73
  br label %183

183:                                              ; preds = %178, %181, %155
  %184 = load ptr, ptr %6, align 8, !tbaa !242
  call void @RNA_property_boolean_set_array(ptr noundef %184, ptr noundef nonnull %153, ptr noundef nonnull %4) #16
  br label %185

185:                                              ; preds = %183, %151
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  ret void
}

declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_property_array_check(ptr noundef) local_unnamed_addr #2

declare void @RNA_property_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @RNA_property_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_property_boolean_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @initTransform(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [2 x i32], align 8
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [4 x float], align 16
  %10 = alloca [3 x i32], align 4
  %11 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 53
  store ptr %0, ptr %11, align 8, !tbaa !95
  %12 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 3
  store i16 0, ptr %12, align 4, !tbaa !98
  %13 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !242
  %15 = tail call ptr @RNA_struct_find_property(ptr noundef %14, ptr noundef nonnull @.str.70) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %5
  %18 = load ptr, ptr %13, align 8, !tbaa !242
  %19 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %18, ptr noundef nonnull %15) #16
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %13, align 8, !tbaa !242
  %23 = tail call i32 @RNA_property_boolean_get(ptr noundef %22, ptr noundef nonnull %15) #16
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %21, %17, %5
  %27 = phi i32 [ 0, %17 ], [ 0, %5 ], [ %25, %21 ]
  %28 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  store i32 %27, ptr %28, align 8, !tbaa !58
  store i32 %4, ptr %1, align 8, !tbaa !87
  %29 = icmp eq ptr %3, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %32 = load i16, ptr %31, align 8, !tbaa !94
  br label %33

33:                                               ; preds = %26, %30
  %34 = phi i16 [ %32, %30 ], [ -1, %26 ]
  %35 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 42
  store i16 %34, ptr %35, align 8, !tbaa !142
  switch i16 %34, label %39 [
    i16 20485, label %37
    i16 20483, label %36
  ]

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %33, %36
  %38 = phi i16 [ 1, %36 ], [ 3, %33 ]
  store i16 %38, ptr %35, align 8, !tbaa !142
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i16, ptr %35, align 8, !tbaa !142
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i16 1, ptr %35, align 8, !tbaa !142
  br label %43

43:                                               ; preds = %42, %39
  tail call void @initTransInfo(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #16
  %44 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  %45 = load i8, ptr %44, align 8, !tbaa !34
  switch i8 %45, label %99 [
    i8 1, label %46
    i8 6, label %66
    i8 20, label %77
    i8 16, label %88
  ]

46:                                               ; preds = %43
  tail call void @initTransformOrientation(ptr noundef %0, ptr noundef nonnull %1) #16
  %47 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %48 = load ptr, ptr %47, align 8, !tbaa !48
  %49 = getelementptr inbounds %struct.ARegion, ptr %48, i64 0, i32 20
  %50 = load ptr, ptr %49, align 8, !tbaa !251
  %51 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %50, ptr noundef nonnull @drawTransformApply, ptr noundef nonnull %1, i32 noundef 2) #16
  %52 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 65
  store ptr %51, ptr %52, align 8, !tbaa !252
  %53 = load ptr, ptr %47, align 8, !tbaa !48
  %54 = getelementptr inbounds %struct.ARegion, ptr %53, i64 0, i32 20
  %55 = load ptr, ptr %54, align 8, !tbaa !251
  %56 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %55, ptr noundef nonnull @drawTransformView, ptr noundef nonnull %1, i32 noundef 0) #16
  %57 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 66
  store ptr %56, ptr %57, align 8, !tbaa !253
  %58 = load ptr, ptr %47, align 8, !tbaa !48
  %59 = getelementptr inbounds %struct.ARegion, ptr %58, i64 0, i32 20
  %60 = load ptr, ptr %59, align 8, !tbaa !251
  %61 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %60, ptr noundef nonnull @drawTransformPixel, ptr noundef nonnull %1, i32 noundef 1) #16
  %62 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 67
  store ptr %61, ptr %62, align 8, !tbaa !254
  %63 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %64 = tail call ptr @WM_paint_cursor_activate(ptr noundef %63, ptr noundef nonnull @helpline_poll, ptr noundef nonnull @drawHelpline, ptr noundef nonnull %1) #16
  %65 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 68
  store ptr %64, ptr %65, align 8, !tbaa !255
  br label %101

66:                                               ; preds = %43
  %67 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 37
  tail call void @unit_m3(ptr noundef nonnull %67) #16
  %68 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %69 = load ptr, ptr %68, align 8, !tbaa !48
  %70 = getelementptr inbounds %struct.ARegion, ptr %69, i64 0, i32 20
  %71 = load ptr, ptr %70, align 8, !tbaa !251
  %72 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %71, ptr noundef nonnull @drawTransformView, ptr noundef nonnull %1, i32 noundef 0) #16
  %73 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 66
  store ptr %72, ptr %73, align 8, !tbaa !253
  %74 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %75 = tail call ptr @WM_paint_cursor_activate(ptr noundef %74, ptr noundef nonnull @helpline_poll, ptr noundef nonnull @drawHelpline, ptr noundef nonnull %1) #16
  %76 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 68
  store ptr %75, ptr %76, align 8, !tbaa !255
  br label %101

77:                                               ; preds = %43
  %78 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 37
  tail call void @unit_m3(ptr noundef nonnull %78) #16
  %79 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %80 = load ptr, ptr %79, align 8, !tbaa !48
  %81 = getelementptr inbounds %struct.ARegion, ptr %80, i64 0, i32 20
  %82 = load ptr, ptr %81, align 8, !tbaa !251
  %83 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %82, ptr noundef nonnull @drawTransformView, ptr noundef nonnull %1, i32 noundef 0) #16
  %84 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 66
  store ptr %83, ptr %84, align 8, !tbaa !253
  %85 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %86 = tail call ptr @WM_paint_cursor_activate(ptr noundef %85, ptr noundef nonnull @helpline_poll, ptr noundef nonnull @drawHelpline, ptr noundef nonnull %1) #16
  %87 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 68
  store ptr %86, ptr %87, align 8, !tbaa !255
  br label %101

88:                                               ; preds = %43
  %89 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 37
  tail call void @unit_m3(ptr noundef nonnull %89) #16
  %90 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %91 = load ptr, ptr %90, align 8, !tbaa !48
  %92 = getelementptr inbounds %struct.ARegion, ptr %91, i64 0, i32 20
  %93 = load ptr, ptr %92, align 8, !tbaa !251
  %94 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %93, ptr noundef nonnull @drawTransformView, ptr noundef nonnull %1, i32 noundef 0) #16
  %95 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 66
  store ptr %94, ptr %95, align 8, !tbaa !253
  %96 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %97 = tail call ptr @WM_paint_cursor_activate(ptr noundef %96, ptr noundef nonnull @helpline_poll, ptr noundef nonnull @drawHelpline, ptr noundef nonnull %1) #16
  %98 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 68
  store ptr %97, ptr %98, align 8, !tbaa !255
  br label %101

99:                                               ; preds = %43
  %100 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 37
  tail call void @unit_m3(ptr noundef nonnull %100) #16
  br label %101

101:                                              ; preds = %66, %88, %99, %77, %46
  tail call void @createTransData(ptr noundef %0, ptr noundef nonnull %1) #16
  %102 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  %103 = load i32, ptr %102, align 8, !tbaa !241
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  tail call void @postTrans(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %1167

106:                                              ; preds = %101
  br i1 %29, label %164, label %107

107:                                              ; preds = %106
  %108 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %109 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 4
  %110 = load ptr, ptr %109, align 8, !tbaa !256
  %111 = getelementptr inbounds %struct.wmOperatorType, ptr %110, i64 0, i32 15
  %112 = load ptr, ptr %111, align 8, !tbaa !257
  %113 = tail call ptr @WM_keymap_active(ptr noundef %108, ptr noundef %112) #16
  %114 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 59
  store ptr %113, ptr %114, align 8, !tbaa !260
  %115 = add i32 %4, -1
  %116 = icmp ult i32 %115, 3
  br i1 %116, label %117, label %164

117:                                              ; preds = %107
  %118 = getelementptr inbounds %struct.wmKeyMap, ptr %113, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !148
  %120 = icmp eq ptr %119, null
  br i1 %120, label %164, label %121

121:                                              ; preds = %117, %161
  %122 = phi ptr [ %162, %161 ], [ %119, %117 ]
  %123 = getelementptr inbounds %struct.wmKeyMapItem, ptr %122, i64 0, i32 5
  %124 = load i16, ptr %123, align 8, !tbaa !261
  %125 = icmp eq i16 %124, 6
  br i1 %125, label %126, label %161

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.wmKeyMapItem, ptr %122, i64 0, i32 7
  %128 = load i16, ptr %127, align 4, !tbaa !263
  %129 = icmp eq i16 %128, 1
  br i1 %129, label %130, label %161

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.wmKeyMapItem, ptr %122, i64 0, i32 6
  %132 = load i16, ptr %131, align 2, !tbaa !264
  switch i16 %132, label %137 [
    i16 212, label %133
    i16 215, label %133
  ]

133:                                              ; preds = %130, %130
  %134 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 18
  %135 = load i16, ptr %134, align 2, !tbaa !265
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %137, label %157

137:                                              ; preds = %130, %133
  %138 = and i16 %132, -2
  %139 = icmp eq i16 %138, 216
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 17
  %142 = load i16, ptr %141, align 8, !tbaa !139
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %137, %140
  %145 = add i16 %132, -213
  %146 = icmp ult i16 %145, 2
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 19
  %149 = load i16, ptr %148, align 4, !tbaa !140
  %150 = icmp eq i16 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %144, %147
  %152 = icmp eq i16 %132, 172
  br i1 %152, label %153, label %164

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 20
  %155 = load i16, ptr %154, align 2, !tbaa !266
  %156 = icmp eq i16 %155, 0
  br i1 %156, label %164, label %157

157:                                              ; preds = %153, %147, %140, %133
  %158 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 2
  %159 = load i32, ptr %158, align 8, !tbaa !96
  %160 = or i32 %159, 8
  store i32 %160, ptr %158, align 8, !tbaa !96
  br label %164

161:                                              ; preds = %121, %126
  %162 = load ptr, ptr %122, align 8, !tbaa !148
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %121, !llvm.loop !267

164:                                              ; preds = %161, %117, %157, %153, %151, %107, %106
  tail call void @initSnapping(ptr noundef nonnull %1, ptr noundef %2) #16
  %165 = load i32, ptr %1, align 8, !tbaa !87
  tail call void @calculatePropRatio(ptr noundef nonnull %1) #16
  tail call void @calculateCenter(ptr noundef nonnull %1) #16
  %166 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 16
  %167 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 21
  %168 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22
  tail call void @initMouseInput(ptr noundef nonnull %1, ptr noundef nonnull %166, ptr noundef nonnull %167, ptr noundef nonnull %168) #16
  switch i32 %165, label %1051 [
    i32 1, label %169
    i32 2, label %170
    i32 3, label %171
    i32 4, label %211
    i32 5, label %251
    i32 6, label %314
    i32 7, label %335
    i32 8, label %501
    i32 9, label %568
    i32 16, label %593
    i32 17, label %613
    i32 10, label %633
    i32 11, label %659
    i32 12, label %676
    i32 14, label %696
    i32 15, label %752
    i32 28, label %772
    i32 29, label %773
    i32 18, label %774
    i32 19, label %799
    i32 20, label %820
    i32 21, label %853
    i32 23, label %928
    i32 22, label %951
    i32 24, label %973
    i32 13, label %990
    i32 26, label %1000
    i32 27, label %1020
    i32 30, label %1025
  ]

169:                                              ; preds = %164
  tail call fastcc void @initTranslation(ptr noundef nonnull %1)
  br label %1051

170:                                              ; preds = %164
  tail call fastcc void @initRotation(ptr noundef nonnull %1)
  br label %1051

171:                                              ; preds = %164
  store i32 3, ptr %1, align 8, !tbaa !87
  %172 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  store ptr @applyResize, ptr %172, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef nonnull %1, ptr noundef nonnull %166, i32 noundef 3) #16
  %173 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %174 = load i32, ptr %173, align 4, !tbaa !99
  %175 = or i32 %174, 512
  store i32 %175, ptr %173, align 4, !tbaa !99
  %176 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 5
  %177 = load i16, ptr %176, align 8, !tbaa !131
  %178 = or i16 %177, 1
  store i16 %178, ptr %176, align 8, !tbaa !131
  %179 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 5, i64 1
  %180 = load i16, ptr %179, align 2, !tbaa !131
  %181 = or i16 %180, 1
  store i16 %181, ptr %179, align 2, !tbaa !131
  %182 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 5, i64 2
  %183 = load i16, ptr %182, align 4, !tbaa !131
  %184 = or i16 %183, 1
  store i16 %184, ptr %182, align 4, !tbaa !131
  %185 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 4
  %186 = load i16, ptr %185, align 2, !tbaa !132
  %187 = or i16 %186, 1
  store i16 %187, ptr %185, align 2, !tbaa !132
  %188 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  %189 = load ptr, ptr %188, align 8, !tbaa !100
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %193

191:                                              ; preds = %171
  %192 = or i32 %174, 1536
  store i32 %192, ptr %173, align 4, !tbaa !99
  br label %193

193:                                              ; preds = %171, %191
  %194 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15
  %195 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 24
  store i16 2, ptr %195, align 2, !tbaa !107
  store i16 2, ptr %194, align 8, !tbaa !108
  %196 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25
  store float 0.000000e+00, ptr %196, align 4, !tbaa !59
  %197 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 1
  store float 0x3FB99999A0000000, ptr %197, align 4, !tbaa !59
  %198 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %198, align 4, !tbaa !59
  %199 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8
  store float 0x3FB99999A0000000, ptr %199, align 4, !tbaa !59
  %200 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 1
  store float 0x3FB99999A0000000, ptr %200, align 4, !tbaa !59
  %201 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 2
  store float 0x3FB99999A0000000, ptr %201, align 4, !tbaa !59
  %202 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %203 = load ptr, ptr %202, align 8, !tbaa !109
  %204 = getelementptr inbounds %struct.Scene, ptr %203, i64 0, i32 38, i32 1
  %205 = load i8, ptr %204, align 4, !tbaa !110
  %206 = zext i8 %205 to i32
  %207 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 1
  store i32 %206, ptr %207, align 4, !tbaa !127
  %208 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2
  store i32 0, ptr %208, align 8, !tbaa !73
  %209 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2, i64 1
  store i32 0, ptr %209, align 4, !tbaa !73
  %210 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2, i64 2
  store i32 0, ptr %210, align 8, !tbaa !73
  br label %1051

211:                                              ; preds = %164
  store i32 4, ptr %1, align 8, !tbaa !87
  %212 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  store ptr @applySkinResize, ptr %212, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef nonnull %1, ptr noundef nonnull %166, i32 noundef 3) #16
  %213 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %214 = load i32, ptr %213, align 4, !tbaa !99
  %215 = or i32 %214, 512
  store i32 %215, ptr %213, align 4, !tbaa !99
  %216 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 5
  %217 = load i16, ptr %216, align 8, !tbaa !131
  %218 = or i16 %217, 1
  store i16 %218, ptr %216, align 8, !tbaa !131
  %219 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 5, i64 1
  %220 = load i16, ptr %219, align 2, !tbaa !131
  %221 = or i16 %220, 1
  store i16 %221, ptr %219, align 2, !tbaa !131
  %222 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 5, i64 2
  %223 = load i16, ptr %222, align 4, !tbaa !131
  %224 = or i16 %223, 1
  store i16 %224, ptr %222, align 4, !tbaa !131
  %225 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 4
  %226 = load i16, ptr %225, align 2, !tbaa !132
  %227 = or i16 %226, 1
  store i16 %227, ptr %225, align 2, !tbaa !132
  %228 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  %229 = load ptr, ptr %228, align 8, !tbaa !100
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %233

231:                                              ; preds = %211
  %232 = or i32 %214, 1536
  store i32 %232, ptr %213, align 4, !tbaa !99
  br label %233

233:                                              ; preds = %211, %231
  %234 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15
  %235 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 24
  store i16 2, ptr %235, align 2, !tbaa !107
  store i16 2, ptr %234, align 8, !tbaa !108
  %236 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25
  store float 0.000000e+00, ptr %236, align 4, !tbaa !59
  %237 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 1
  store float 0x3FB99999A0000000, ptr %237, align 4, !tbaa !59
  %238 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %238, align 4, !tbaa !59
  %239 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8
  store float 0x3FB99999A0000000, ptr %239, align 4, !tbaa !59
  %240 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 1
  store float 0x3FB99999A0000000, ptr %240, align 4, !tbaa !59
  %241 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 2
  store float 0x3FB99999A0000000, ptr %241, align 4, !tbaa !59
  %242 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %243 = load ptr, ptr %242, align 8, !tbaa !109
  %244 = getelementptr inbounds %struct.Scene, ptr %243, i64 0, i32 38, i32 1
  %245 = load i8, ptr %244, align 4, !tbaa !110
  %246 = zext i8 %245 to i32
  %247 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 1
  store i32 %246, ptr %247, align 4, !tbaa !127
  %248 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2
  store i32 0, ptr %248, align 8, !tbaa !73
  %249 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2, i64 1
  store i32 0, ptr %249, align 4, !tbaa !73
  %250 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2, i64 2
  store i32 0, ptr %250, align 8, !tbaa !73
  br label %1051

251:                                              ; preds = %164
  %252 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  %253 = load ptr, ptr %252, align 8, !tbaa !268
  store i32 5, ptr %1, align 8, !tbaa !87
  %254 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  store ptr @applyToSphere, ptr %254, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef nonnull %1, ptr noundef nonnull %166, i32 noundef 8) #16
  %255 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 24
  store i16 0, ptr %255, align 2, !tbaa !107
  %256 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15
  store i16 0, ptr %256, align 8, !tbaa !108
  %257 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25
  store float 0.000000e+00, ptr %257, align 4, !tbaa !59
  %258 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 1
  store float 0x3FB99999A0000000, ptr %258, align 4, !tbaa !59
  %259 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %259, align 4, !tbaa !59
  %260 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8
  store float 0x3FB99999A0000000, ptr %260, align 4, !tbaa !59
  %261 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 1
  store float 0x3FB99999A0000000, ptr %261, align 4, !tbaa !59
  %262 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 2
  store float 0x3FB99999A0000000, ptr %262, align 4, !tbaa !59
  %263 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %264 = load ptr, ptr %263, align 8, !tbaa !109
  %265 = getelementptr inbounds %struct.Scene, ptr %264, i64 0, i32 38, i32 1
  %266 = load i8, ptr %265, align 4, !tbaa !110
  %267 = zext i8 %266 to i32
  %268 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 1
  store i32 %267, ptr %268, align 4, !tbaa !127
  %269 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2
  store i32 0, ptr %269, align 8, !tbaa !73
  %270 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 5
  %271 = load i16, ptr %270, align 8, !tbaa !131
  %272 = or i16 %271, 3
  store i16 %272, ptr %270, align 8, !tbaa !131
  %273 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %274 = load i32, ptr %273, align 4, !tbaa !99
  %275 = or i32 %274, 256
  store i32 %275, ptr %273, align 4, !tbaa !99
  %276 = load i32, ptr %102, align 8, !tbaa !241
  %277 = icmp sgt i32 %276, 0
  br i1 %277, label %278, label %308

278:                                              ; preds = %251
  %279 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 20
  %280 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 20, i64 1
  %281 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 20, i64 2
  %282 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 5
  br label %283

283:                                              ; preds = %278, %283
  %284 = phi i32 [ 0, %278 ], [ %304, %283 ]
  %285 = phi ptr [ %253, %278 ], [ %305, %283 ]
  %286 = getelementptr inbounds %struct.TransData, ptr %285, i64 0, i32 4
  %287 = load float, ptr %286, align 4, !tbaa !59
  %288 = load float, ptr %279, align 4, !tbaa !59
  %289 = fsub float %287, %288
  %290 = getelementptr inbounds %struct.TransData, ptr %285, i64 0, i32 4, i64 1
  %291 = load float, ptr %290, align 4, !tbaa !59
  %292 = load float, ptr %280, align 4, !tbaa !59
  %293 = fsub float %291, %292
  %294 = getelementptr inbounds %struct.TransData, ptr %285, i64 0, i32 4, i64 2
  %295 = load float, ptr %294, align 4, !tbaa !59
  %296 = load float, ptr %281, align 4, !tbaa !59
  %297 = fsub float %295, %296
  %298 = fmul float %293, %293
  %299 = tail call float @llvm.fmuladd.f32(float %289, float %289, float %298)
  %300 = tail call float @llvm.fmuladd.f32(float %297, float %297, float %299)
  %301 = tail call float @sqrtf(float noundef %300) #16
  %302 = load float, ptr %282, align 4, !tbaa !269
  %303 = fadd float %301, %302
  store float %303, ptr %282, align 4, !tbaa !269
  %304 = add nuw nsw i32 %284, 1
  %305 = getelementptr inbounds %struct.TransData, ptr %285, i64 1
  %306 = load i32, ptr %102, align 8, !tbaa !241
  %307 = icmp slt i32 %304, %306
  br i1 %307, label %283, label %308, !llvm.loop !270

308:                                              ; preds = %283, %251
  %309 = phi i32 [ %276, %251 ], [ %306, %283 ]
  %310 = sitofp i32 %309 to float
  %311 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 5
  %312 = load float, ptr %311, align 4, !tbaa !269
  %313 = fdiv float %312, %310
  store float %313, ptr %311, align 4, !tbaa !269
  br label %1051

314:                                              ; preds = %164
  store i32 6, ptr %1, align 8, !tbaa !87
  %315 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  store ptr @applyShear, ptr %315, align 8, !tbaa !106
  %316 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 8
  store ptr @handleEventShear, ptr %316, align 8, !tbaa !143
  tail call void @setInputPostFct(ptr noundef nonnull %166, ptr noundef nonnull @postInputShear) #16
  tail call void @initMouseInputMode(ptr noundef nonnull %1, ptr noundef nonnull %166, i32 noundef 9) #16
  %317 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 24
  store i16 0, ptr %317, align 2, !tbaa !107
  %318 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15
  store i16 0, ptr %318, align 8, !tbaa !108
  %319 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25
  store float 0.000000e+00, ptr %319, align 4, !tbaa !59
  %320 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 1
  store float 0x3FB99999A0000000, ptr %320, align 4, !tbaa !59
  %321 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %321, align 4, !tbaa !59
  %322 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8
  store float 0x3FB99999A0000000, ptr %322, align 4, !tbaa !59
  %323 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 1
  store float 0x3FB99999A0000000, ptr %323, align 4, !tbaa !59
  %324 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 2
  store float 0x3FB99999A0000000, ptr %324, align 4, !tbaa !59
  %325 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %326 = load ptr, ptr %325, align 8, !tbaa !109
  %327 = getelementptr inbounds %struct.Scene, ptr %326, i64 0, i32 38, i32 1
  %328 = load i8, ptr %327, align 4, !tbaa !110
  %329 = zext i8 %328 to i32
  %330 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 1
  store i32 %329, ptr %330, align 4, !tbaa !127
  %331 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2
  store i32 0, ptr %331, align 8, !tbaa !73
  %332 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %333 = load i32, ptr %332, align 4, !tbaa !99
  %334 = or i32 %333, 256
  store i32 %334, ptr %332, align 4, !tbaa !99
  br label %1051

335:                                              ; preds = %164
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %336 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 61
  %337 = load i32, ptr %336, align 8, !tbaa !73
  %338 = sitofp i32 %337 to float
  store float %338, ptr %8, align 4, !tbaa !59
  %339 = getelementptr inbounds float, ptr %8, i64 1
  %340 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 61, i64 1
  %341 = load i32, ptr %340, align 4, !tbaa !73
  %342 = sitofp i32 %341 to float
  store float %342, ptr %339, align 4, !tbaa !59
  store i32 7, ptr %1, align 8, !tbaa !87
  %343 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  store ptr @Bend, ptr %343, align 8, !tbaa !106
  %344 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 8
  store ptr @handleEventBend, ptr %344, align 8, !tbaa !143
  tail call void @setInputPostFct(ptr noundef nonnull %166, ptr noundef nonnull @postInputRotation) #16
  tail call void @initMouseInputMode(ptr noundef nonnull %1, ptr noundef nonnull %166, i32 noundef 6) #16
  %345 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 24
  store i16 1, ptr %345, align 2, !tbaa !107
  %346 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15
  store i16 1, ptr %346, align 8, !tbaa !108
  %347 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25
  store float 0.000000e+00, ptr %347, align 4, !tbaa !59
  %348 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 1
  store float 0x3FB6571840000000, ptr %348, align 4, !tbaa !59
  %349 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 2
  store float 0x3F91DF46A0000000, ptr %349, align 4, !tbaa !59
  %350 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8
  store float 0x3FB6571840000000, ptr %350, align 4, !tbaa !59
  %351 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 1
  store float 0x3FB6571840000000, ptr %351, align 4, !tbaa !59
  %352 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 2
  store float 0x3FB6571840000000, ptr %352, align 4, !tbaa !59
  %353 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %354 = load ptr, ptr %353, align 8, !tbaa !109
  %355 = getelementptr inbounds %struct.Scene, ptr %354, i64 0, i32 38, i32 1
  %356 = load i8, ptr %355, align 4, !tbaa !110
  %357 = zext i8 %356 to i32
  %358 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 1
  store i32 %357, ptr %358, align 4, !tbaa !127
  %359 = getelementptr inbounds %struct.Scene, ptr %354, i64 0, i32 38, i32 2
  %360 = load i8, ptr %359, align 1, !tbaa !128
  %361 = icmp eq i8 %360, 2
  %362 = zext i1 %361 to i8
  %363 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 3
  store i8 %362, ptr %363, align 4, !tbaa !129
  %364 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2
  store i32 5, ptr %364, align 8, !tbaa !73
  %365 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2, i64 1
  store i32 1, ptr %365, align 4, !tbaa !73
  %366 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %367 = load i32, ptr %366, align 4, !tbaa !99
  %368 = or i32 %367, 256
  store i32 %368, ptr %366, align 4, !tbaa !99
  %369 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 20
  tail call void @calculateCenterCursor(ptr noundef nonnull %1, ptr noundef nonnull %369) #16
  %370 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 5
  store float 0.000000e+00, ptr %370, align 4, !tbaa !269
  %371 = load ptr, ptr @MEM_callocN, align 8, !tbaa !148
  %372 = tail call ptr %371(i64 noundef 52, ptr noundef nonnull @__func__.initBend) #16
  %373 = load ptr, ptr %353, align 8, !tbaa !109
  %374 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 52
  %375 = load ptr, ptr %374, align 8, !tbaa !61
  %376 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %373, ptr noundef %375) #16
  %377 = load float, ptr %376, align 4, !tbaa !59
  store float %377, ptr %372, align 4, !tbaa !59
  %378 = getelementptr inbounds float, ptr %376, i64 1
  %379 = load float, ptr %378, align 4, !tbaa !59
  %380 = getelementptr inbounds float, ptr %372, i64 1
  store float %379, ptr %380, align 4, !tbaa !59
  %381 = getelementptr inbounds float, ptr %376, i64 2
  %382 = load float, ptr %381, align 4, !tbaa !59
  %383 = getelementptr inbounds float, ptr %372, i64 2
  store float %382, ptr %383, align 4, !tbaa !59
  %384 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %385 = load ptr, ptr %384, align 8, !tbaa !48
  %386 = getelementptr inbounds %struct.BendCustomData, ptr %372, i64 0, i32 1
  call void @ED_view3d_win_to_3d(ptr noundef %385, ptr noundef nonnull %376, ptr noundef nonnull %8, ptr noundef nonnull %386) #16
  %387 = getelementptr inbounds %struct.BendCustomData, ptr %372, i64 0, i32 2
  %388 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 28, i64 2
  %389 = load float, ptr %388, align 4, !tbaa !59
  store float %389, ptr %387, align 4, !tbaa !59
  %390 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 28, i64 2, i64 1
  %391 = load float, ptr %390, align 4, !tbaa !59
  %392 = getelementptr inbounds %struct.BendCustomData, ptr %372, i64 0, i32 2, i64 1
  store float %391, ptr %392, align 4, !tbaa !59
  %393 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 28, i64 2, i64 2
  %394 = load float, ptr %393, align 4, !tbaa !59
  %395 = getelementptr inbounds %struct.BendCustomData, ptr %372, i64 0, i32 2, i64 2
  store float %394, ptr %395, align 4, !tbaa !59
  %396 = load i32, ptr %366, align 4, !tbaa !99
  %397 = and i32 %396, 2
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %425, label %399

399:                                              ; preds = %335
  %400 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  %401 = load ptr, ptr %400, align 8, !tbaa !100
  %402 = getelementptr inbounds %struct.Object, ptr %401, i64 0, i32 47, i64 3
  %403 = load float, ptr %402, align 4, !tbaa !59
  %404 = load float, ptr %372, align 4, !tbaa !59
  %405 = fsub float %404, %403
  store float %405, ptr %372, align 4, !tbaa !59
  %406 = getelementptr inbounds %struct.Object, ptr %401, i64 0, i32 47, i64 3, i64 1
  %407 = load float, ptr %406, align 4, !tbaa !59
  %408 = load float, ptr %380, align 4, !tbaa !59
  %409 = fsub float %408, %407
  store float %409, ptr %380, align 4, !tbaa !59
  %410 = getelementptr inbounds %struct.Object, ptr %401, i64 0, i32 47, i64 3, i64 2
  %411 = load float, ptr %410, align 4, !tbaa !59
  %412 = load float, ptr %383, align 4, !tbaa !59
  %413 = fsub float %412, %411
  store float %413, ptr %383, align 4, !tbaa !59
  %414 = load float, ptr %402, align 4, !tbaa !59
  %415 = load float, ptr %386, align 4, !tbaa !59
  %416 = fsub float %415, %414
  store float %416, ptr %386, align 4, !tbaa !59
  %417 = load float, ptr %406, align 4, !tbaa !59
  %418 = getelementptr inbounds %struct.BendCustomData, ptr %372, i64 0, i32 1, i64 1
  %419 = load float, ptr %418, align 4, !tbaa !59
  %420 = fsub float %419, %417
  store float %420, ptr %418, align 4, !tbaa !59
  %421 = load float, ptr %410, align 4, !tbaa !59
  %422 = getelementptr inbounds %struct.BendCustomData, ptr %372, i64 0, i32 1, i64 2
  %423 = load float, ptr %422, align 4, !tbaa !59
  %424 = fsub float %423, %421
  store float %424, ptr %422, align 4, !tbaa !59
  br label %425

425:                                              ; preds = %399, %335
  %426 = load float, ptr %387, align 4, !tbaa !59
  %427 = load float, ptr %392, align 4, !tbaa !59
  %428 = fmul float %427, %427
  %429 = call float @llvm.fmuladd.f32(float %426, float %426, float %428)
  %430 = load float, ptr %395, align 4, !tbaa !59
  %431 = call float @llvm.fmuladd.f32(float %430, float %430, float %429)
  %432 = fcmp ogt float %431, 0x38AA95A5C0000000
  br i1 %432, label %433, label %442

433:                                              ; preds = %425
  %434 = call float @sqrtf(float noundef %431) #16
  %435 = fdiv float 1.000000e+00, %434
  %436 = load float, ptr %387, align 4, !tbaa !59
  %437 = fmul float %436, %435
  store float %437, ptr %387, align 4, !tbaa !59
  %438 = load float, ptr %392, align 4, !tbaa !59
  %439 = fmul float %435, %438
  store float %439, ptr %392, align 4, !tbaa !59
  %440 = load float, ptr %395, align 4, !tbaa !59
  %441 = fmul float %435, %440
  br label %443

442:                                              ; preds = %425
  store float 0.000000e+00, ptr %387, align 4, !tbaa !59
  store float 0.000000e+00, ptr %392, align 4, !tbaa !59
  br label %443

443:                                              ; preds = %442, %433
  %444 = phi float [ 0.000000e+00, %442 ], [ %441, %433 ]
  store float %444, ptr %395, align 4, !tbaa !59
  %445 = load float, ptr %386, align 4, !tbaa !59
  %446 = load float, ptr %372, align 4, !tbaa !59
  %447 = fsub float %445, %446
  %448 = getelementptr inbounds %struct.BendCustomData, ptr %372, i64 0, i32 1, i64 1
  %449 = load float, ptr %448, align 4, !tbaa !59
  %450 = load float, ptr %380, align 4, !tbaa !59
  %451 = fsub float %449, %450
  %452 = getelementptr inbounds %struct.BendCustomData, ptr %372, i64 0, i32 1, i64 2
  %453 = load float, ptr %452, align 4, !tbaa !59
  %454 = load float, ptr %383, align 4, !tbaa !59
  %455 = fsub float %453, %454
  %456 = getelementptr inbounds %struct.BendCustomData, ptr %372, i64 0, i32 3
  %457 = load float, ptr %392, align 4, !tbaa !59
  %458 = fneg float %455
  %459 = fmul float %457, %458
  %460 = call float @llvm.fmuladd.f32(float %451, float %444, float %459)
  store float %460, ptr %456, align 4, !tbaa !59
  %461 = load float, ptr %387, align 4, !tbaa !59
  %462 = fneg float %447
  %463 = fmul float %444, %462
  %464 = call float @llvm.fmuladd.f32(float %455, float %461, float %463)
  %465 = getelementptr inbounds %struct.BendCustomData, ptr %372, i64 0, i32 3, i64 1
  store float %464, ptr %465, align 4, !tbaa !59
  %466 = fneg float %451
  %467 = fmul float %461, %466
  %468 = call float @llvm.fmuladd.f32(float %447, float %457, float %467)
  %469 = getelementptr inbounds %struct.BendCustomData, ptr %372, i64 0, i32 3, i64 2
  store float %468, ptr %469, align 4, !tbaa !59
  %470 = fmul float %464, %464
  %471 = call float @llvm.fmuladd.f32(float %460, float %460, float %470)
  %472 = call float @llvm.fmuladd.f32(float %468, float %468, float %471)
  %473 = fcmp ogt float %472, 0x38AA95A5C0000000
  br i1 %473, label %474, label %483

474:                                              ; preds = %443
  %475 = call float @sqrtf(float noundef %472) #16
  %476 = fdiv float 1.000000e+00, %475
  %477 = load float, ptr %456, align 4, !tbaa !59
  %478 = fmul float %477, %476
  store float %478, ptr %456, align 4, !tbaa !59
  %479 = load float, ptr %465, align 4, !tbaa !59
  %480 = fmul float %476, %479
  store float %480, ptr %465, align 4, !tbaa !59
  %481 = load float, ptr %469, align 4, !tbaa !59
  %482 = fmul float %476, %481
  br label %484

483:                                              ; preds = %443
  store float 0.000000e+00, ptr %456, align 4, !tbaa !59
  store float 0.000000e+00, ptr %465, align 4, !tbaa !59
  br label %484

484:                                              ; preds = %474, %483
  %485 = phi float [ 0.000000e+00, %483 ], [ %482, %474 ]
  store float %485, ptr %469, align 4, !tbaa !59
  %486 = load float, ptr %372, align 4, !tbaa !59
  %487 = load float, ptr %386, align 4, !tbaa !59
  %488 = fsub float %486, %487
  %489 = load float, ptr %380, align 4, !tbaa !59
  %490 = load float, ptr %448, align 4, !tbaa !59
  %491 = fsub float %489, %490
  %492 = load float, ptr %383, align 4, !tbaa !59
  %493 = load float, ptr %452, align 4, !tbaa !59
  %494 = fsub float %492, %493
  %495 = fmul float %491, %491
  %496 = call float @llvm.fmuladd.f32(float %488, float %488, float %495)
  %497 = call float @llvm.fmuladd.f32(float %494, float %494, float %496)
  %498 = call float @sqrtf(float noundef %497) #16
  %499 = getelementptr inbounds %struct.BendCustomData, ptr %372, i64 0, i32 4
  store float %498, ptr %499, align 4, !tbaa !271
  %500 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  store ptr %372, ptr %500, align 8, !tbaa !218
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %1051

501:                                              ; preds = %164
  %502 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  %503 = load ptr, ptr %502, align 8, !tbaa !100
  %504 = icmp eq ptr %503, null
  br i1 %504, label %509, label %505

505:                                              ; preds = %501
  %506 = getelementptr inbounds %struct.Object, ptr %503, i64 0, i32 3
  %507 = load i16, ptr %506, align 8, !tbaa !101
  %508 = icmp eq i16 %507, 1
  br i1 %508, label %548, label %509

509:                                              ; preds = %505, %501
  store i32 3, ptr %1, align 8, !tbaa !87
  %510 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  store ptr @applyResize, ptr %510, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef nonnull %1, ptr noundef nonnull %166, i32 noundef 3) #16
  %511 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %512 = load i32, ptr %511, align 4, !tbaa !99
  %513 = or i32 %512, 512
  store i32 %513, ptr %511, align 4, !tbaa !99
  %514 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 5
  %515 = load i16, ptr %514, align 8, !tbaa !131
  %516 = or i16 %515, 1
  store i16 %516, ptr %514, align 8, !tbaa !131
  %517 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 5, i64 1
  %518 = load i16, ptr %517, align 2, !tbaa !131
  %519 = or i16 %518, 1
  store i16 %519, ptr %517, align 2, !tbaa !131
  %520 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 5, i64 2
  %521 = load i16, ptr %520, align 4, !tbaa !131
  %522 = or i16 %521, 1
  store i16 %522, ptr %520, align 4, !tbaa !131
  %523 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 4
  %524 = load i16, ptr %523, align 2, !tbaa !132
  %525 = or i16 %524, 1
  store i16 %525, ptr %523, align 2, !tbaa !132
  %526 = load ptr, ptr %502, align 8, !tbaa !100
  %527 = icmp eq ptr %526, null
  br i1 %527, label %528, label %530

528:                                              ; preds = %509
  %529 = or i32 %512, 1536
  store i32 %529, ptr %511, align 4, !tbaa !99
  br label %530

530:                                              ; preds = %509, %528
  %531 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15
  %532 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 24
  store i16 2, ptr %532, align 2, !tbaa !107
  store i16 2, ptr %531, align 8, !tbaa !108
  %533 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25
  store float 0.000000e+00, ptr %533, align 4, !tbaa !59
  %534 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 1
  store float 0x3FB99999A0000000, ptr %534, align 4, !tbaa !59
  %535 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %535, align 4, !tbaa !59
  %536 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8
  store float 0x3FB99999A0000000, ptr %536, align 4, !tbaa !59
  %537 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 1
  store float 0x3FB99999A0000000, ptr %537, align 4, !tbaa !59
  %538 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 2
  store float 0x3FB99999A0000000, ptr %538, align 4, !tbaa !59
  %539 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %540 = load ptr, ptr %539, align 8, !tbaa !109
  %541 = getelementptr inbounds %struct.Scene, ptr %540, i64 0, i32 38, i32 1
  %542 = load i8, ptr %541, align 4, !tbaa !110
  %543 = zext i8 %542 to i32
  %544 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 1
  store i32 %543, ptr %544, align 4, !tbaa !127
  %545 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2
  store i32 0, ptr %545, align 8, !tbaa !73
  %546 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2, i64 1
  store i32 0, ptr %546, align 4, !tbaa !73
  %547 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2, i64 2
  store i32 0, ptr %547, align 8, !tbaa !73
  br label %1051

548:                                              ; preds = %505
  store i32 8, ptr %1, align 8, !tbaa !87
  %549 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  store ptr @applyShrinkFatten, ptr %549, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef nonnull %1, ptr noundef nonnull %166, i32 noundef 11) #16
  %550 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 24
  store i16 0, ptr %550, align 2, !tbaa !107
  %551 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15
  store i16 0, ptr %551, align 8, !tbaa !108
  %552 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25
  store float 0.000000e+00, ptr %552, align 4, !tbaa !59
  %553 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 1
  store float 1.000000e+00, ptr %553, align 4, !tbaa !59
  %554 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 2
  store float 0x3FB99999A0000000, ptr %554, align 4, !tbaa !59
  %555 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8
  store float 1.000000e+00, ptr %555, align 4, !tbaa !59
  %556 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 1
  store float 1.000000e+00, ptr %556, align 4, !tbaa !59
  %557 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 2
  store float 1.000000e+00, ptr %557, align 4, !tbaa !59
  %558 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %559 = load ptr, ptr %558, align 8, !tbaa !109
  %560 = getelementptr inbounds %struct.Scene, ptr %559, i64 0, i32 38, i32 1
  %561 = load i8, ptr %560, align 4, !tbaa !110
  %562 = zext i8 %561 to i32
  %563 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 1
  store i32 %562, ptr %563, align 4, !tbaa !127
  %564 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2
  store i32 1, ptr %564, align 8, !tbaa !73
  %565 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %566 = load i32, ptr %565, align 4, !tbaa !99
  %567 = or i32 %566, 256
  store i32 %567, ptr %565, align 4, !tbaa !99
  br label %1051

568:                                              ; preds = %164
  store i32 9, ptr %1, align 8, !tbaa !87
  %569 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  store ptr @applyTilt, ptr %569, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef nonnull %1, ptr noundef nonnull %166, i32 noundef 5) #16
  %570 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 24
  store i16 0, ptr %570, align 2, !tbaa !107
  %571 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15
  store i16 0, ptr %571, align 8, !tbaa !108
  %572 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25
  store float 0.000000e+00, ptr %572, align 4, !tbaa !59
  %573 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 1
  store float 0x3FB6571840000000, ptr %573, align 4, !tbaa !59
  %574 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 2
  store float 0x3F91DF46A0000000, ptr %574, align 4, !tbaa !59
  %575 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8
  store float 0x3F91DF46A0000000, ptr %575, align 4, !tbaa !59
  %576 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 1
  store float 0x3F91DF46A0000000, ptr %576, align 4, !tbaa !59
  %577 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 2
  store float 0x3F91DF46A0000000, ptr %577, align 4, !tbaa !59
  %578 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %579 = load ptr, ptr %578, align 8, !tbaa !109
  %580 = getelementptr inbounds %struct.Scene, ptr %579, i64 0, i32 38, i32 1
  %581 = load i8, ptr %580, align 4, !tbaa !110
  %582 = zext i8 %581 to i32
  %583 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 1
  store i32 %582, ptr %583, align 4, !tbaa !127
  %584 = getelementptr inbounds %struct.Scene, ptr %579, i64 0, i32 38, i32 2
  %585 = load i8, ptr %584, align 1, !tbaa !128
  %586 = icmp eq i8 %585, 2
  %587 = zext i1 %586 to i8
  %588 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 3
  store i8 %587, ptr %588, align 4, !tbaa !129
  %589 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2
  store i32 5, ptr %589, align 8, !tbaa !73
  %590 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %591 = load i32, ptr %590, align 4, !tbaa !99
  %592 = or i32 %591, 4194560
  store i32 %592, ptr %590, align 4, !tbaa !99
  br label %1051

593:                                              ; preds = %164
  store i32 16, ptr %1, align 8, !tbaa !87
  %594 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  store ptr @applyCurveShrinkFatten, ptr %594, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef nonnull %1, ptr noundef nonnull %166, i32 noundef 2) #16
  %595 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 24
  store i16 0, ptr %595, align 2, !tbaa !107
  %596 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15
  store i16 0, ptr %596, align 8, !tbaa !108
  %597 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25
  store float 0.000000e+00, ptr %597, align 4, !tbaa !59
  %598 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 1
  store float 0x3FB99999A0000000, ptr %598, align 4, !tbaa !59
  %599 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %599, align 4, !tbaa !59
  %600 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8
  store float 0x3FB99999A0000000, ptr %600, align 4, !tbaa !59
  %601 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 1
  store float 0x3FB99999A0000000, ptr %601, align 4, !tbaa !59
  %602 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 2
  store float 0x3FB99999A0000000, ptr %602, align 4, !tbaa !59
  %603 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %604 = load ptr, ptr %603, align 8, !tbaa !109
  %605 = getelementptr inbounds %struct.Scene, ptr %604, i64 0, i32 38, i32 1
  %606 = load i8, ptr %605, align 4, !tbaa !110
  %607 = zext i8 %606 to i32
  %608 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 1
  store i32 %607, ptr %608, align 4, !tbaa !127
  %609 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2
  store i32 0, ptr %609, align 8, !tbaa !73
  %610 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %611 = load i32, ptr %610, align 4, !tbaa !99
  %612 = or i32 %611, 1280
  store i32 %612, ptr %610, align 4, !tbaa !99
  br label %1051

613:                                              ; preds = %164
  store i32 17, ptr %1, align 8, !tbaa !87
  %614 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  store ptr @applyMaskShrinkFatten, ptr %614, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef nonnull %1, ptr noundef nonnull %166, i32 noundef 2) #16
  %615 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 24
  store i16 0, ptr %615, align 2, !tbaa !107
  %616 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15
  store i16 0, ptr %616, align 8, !tbaa !108
  %617 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25
  store float 0.000000e+00, ptr %617, align 4, !tbaa !59
  %618 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 1
  store float 0x3FB99999A0000000, ptr %618, align 4, !tbaa !59
  %619 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %619, align 4, !tbaa !59
  %620 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8
  store float 0x3FB99999A0000000, ptr %620, align 4, !tbaa !59
  %621 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 1
  store float 0x3FB99999A0000000, ptr %621, align 4, !tbaa !59
  %622 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 2
  store float 0x3FB99999A0000000, ptr %622, align 4, !tbaa !59
  %623 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %624 = load ptr, ptr %623, align 8, !tbaa !109
  %625 = getelementptr inbounds %struct.Scene, ptr %624, i64 0, i32 38, i32 1
  %626 = load i8, ptr %625, align 4, !tbaa !110
  %627 = zext i8 %626 to i32
  %628 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 1
  store i32 %627, ptr %628, align 4, !tbaa !127
  %629 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2
  store i32 0, ptr %629, align 8, !tbaa !73
  %630 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %631 = load i32, ptr %630, align 4, !tbaa !99
  %632 = or i32 %631, 1280
  store i32 %632, ptr %630, align 4, !tbaa !99
  br label %1051

633:                                              ; preds = %164
  store i32 10, ptr %1, align 8, !tbaa !87
  %634 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  store ptr @applyTrackball, ptr %634, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef nonnull %1, ptr noundef nonnull %166, i32 noundef 7) #16
  %635 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 24
  store i16 1, ptr %635, align 2, !tbaa !107
  %636 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15
  store i16 1, ptr %636, align 8, !tbaa !108
  %637 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25
  store float 0.000000e+00, ptr %637, align 4, !tbaa !59
  %638 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 1
  store float 0x3FB6571840000000, ptr %638, align 4, !tbaa !59
  %639 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 2
  store float 0x3F91DF46A0000000, ptr %639, align 4, !tbaa !59
  %640 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8
  store float 0x3F91DF46A0000000, ptr %640, align 4, !tbaa !59
  %641 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 1
  store float 0x3F91DF46A0000000, ptr %641, align 4, !tbaa !59
  %642 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 2
  store float 0x3F91DF46A0000000, ptr %642, align 4, !tbaa !59
  %643 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %644 = load ptr, ptr %643, align 8, !tbaa !109
  %645 = getelementptr inbounds %struct.Scene, ptr %644, i64 0, i32 38, i32 1
  %646 = load i8, ptr %645, align 4, !tbaa !110
  %647 = zext i8 %646 to i32
  %648 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 1
  store i32 %647, ptr %648, align 4, !tbaa !127
  %649 = getelementptr inbounds %struct.Scene, ptr %644, i64 0, i32 38, i32 2
  %650 = load i8, ptr %649, align 1, !tbaa !128
  %651 = icmp eq i8 %650, 2
  %652 = zext i1 %651 to i8
  %653 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 3
  store i8 %652, ptr %653, align 4, !tbaa !129
  %654 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2
  store i32 5, ptr %654, align 8, !tbaa !73
  %655 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2, i64 1
  store i32 5, ptr %655, align 4, !tbaa !73
  %656 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %657 = load i32, ptr %656, align 4, !tbaa !99
  %658 = or i32 %657, 256
  store i32 %658, ptr %656, align 4, !tbaa !99
  br label %1051

659:                                              ; preds = %164
  store i32 11, ptr %1, align 8, !tbaa !87
  %660 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  store ptr @applyPushPull, ptr %660, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef nonnull %1, ptr noundef nonnull %166, i32 noundef 11) #16
  %661 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 24
  store i16 0, ptr %661, align 2, !tbaa !107
  %662 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15
  store i16 0, ptr %662, align 8, !tbaa !108
  %663 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25
  store float 0.000000e+00, ptr %663, align 4, !tbaa !59
  %664 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 1
  store float 1.000000e+00, ptr %664, align 4, !tbaa !59
  %665 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 2
  store float 0x3FB99999A0000000, ptr %665, align 4, !tbaa !59
  %666 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8
  store float 1.000000e+00, ptr %666, align 4, !tbaa !59
  %667 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 1
  store float 1.000000e+00, ptr %667, align 4, !tbaa !59
  %668 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 2
  store float 1.000000e+00, ptr %668, align 4, !tbaa !59
  %669 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %670 = load ptr, ptr %669, align 8, !tbaa !109
  %671 = getelementptr inbounds %struct.Scene, ptr %670, i64 0, i32 38, i32 1
  %672 = load i8, ptr %671, align 4, !tbaa !110
  %673 = zext i8 %672 to i32
  %674 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 1
  store i32 %673, ptr %674, align 4, !tbaa !127
  %675 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2
  store i32 1, ptr %675, align 8, !tbaa !73
  br label %1051

676:                                              ; preds = %164
  store i32 12, ptr %1, align 8, !tbaa !87
  %677 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  store ptr @applyCrease, ptr %677, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef nonnull %1, ptr noundef nonnull %166, i32 noundef 4) #16
  %678 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 24
  store i16 0, ptr %678, align 2, !tbaa !107
  %679 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15
  store i16 0, ptr %679, align 8, !tbaa !108
  %680 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25
  store float 0.000000e+00, ptr %680, align 4, !tbaa !59
  %681 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 1
  store float 0x3FB99999A0000000, ptr %681, align 4, !tbaa !59
  %682 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %682, align 4, !tbaa !59
  %683 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8
  store float 0x3FB99999A0000000, ptr %683, align 4, !tbaa !59
  %684 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 1
  store float 0x3FB99999A0000000, ptr %684, align 4, !tbaa !59
  %685 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 2
  store float 0x3FB99999A0000000, ptr %685, align 4, !tbaa !59
  %686 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %687 = load ptr, ptr %686, align 8, !tbaa !109
  %688 = getelementptr inbounds %struct.Scene, ptr %687, i64 0, i32 38, i32 1
  %689 = load i8, ptr %688, align 4, !tbaa !110
  %690 = zext i8 %689 to i32
  %691 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 1
  store i32 %690, ptr %691, align 4, !tbaa !127
  %692 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2
  store i32 0, ptr %692, align 8, !tbaa !73
  %693 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %694 = load i32, ptr %693, align 4, !tbaa !99
  %695 = or i32 %694, 4194560
  store i32 %695, ptr %693, align 4, !tbaa !99
  br label %1051

696:                                              ; preds = %164
  %697 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 39
  %698 = load ptr, ptr %697, align 8, !tbaa !273
  %699 = getelementptr inbounds %struct.Object, ptr %698, i64 0, i32 19
  %700 = load ptr, ptr %699, align 8, !tbaa !274
  %701 = getelementptr inbounds %struct.bArmature, ptr %700, i64 0, i32 9
  %702 = load i32, ptr %701, align 4, !tbaa !275
  %703 = icmp eq i32 %702, 3
  %704 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  %705 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 24
  %706 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15
  br i1 %703, label %707, label %724

707:                                              ; preds = %696
  store i32 15, ptr %1, align 8, !tbaa !87
  store ptr @applyBoneEnvelope, ptr %704, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef nonnull %1, ptr noundef nonnull %166, i32 noundef 2) #16
  store i16 0, ptr %705, align 2, !tbaa !107
  store i16 0, ptr %706, align 8, !tbaa !108
  %708 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25
  store float 0.000000e+00, ptr %708, align 4, !tbaa !59
  %709 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 1
  store float 0x3FB99999A0000000, ptr %709, align 4, !tbaa !59
  %710 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %710, align 4, !tbaa !59
  %711 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8
  store float 0x3FB99999A0000000, ptr %711, align 4, !tbaa !59
  %712 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 1
  store float 0x3FB99999A0000000, ptr %712, align 4, !tbaa !59
  %713 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 2
  store float 0x3FB99999A0000000, ptr %713, align 4, !tbaa !59
  %714 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %715 = load ptr, ptr %714, align 8, !tbaa !109
  %716 = getelementptr inbounds %struct.Scene, ptr %715, i64 0, i32 38, i32 1
  %717 = load i8, ptr %716, align 4, !tbaa !110
  %718 = zext i8 %717 to i32
  %719 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 1
  store i32 %718, ptr %719, align 4, !tbaa !127
  %720 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2
  store i32 0, ptr %720, align 8, !tbaa !73
  %721 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %722 = load i32, ptr %721, align 4, !tbaa !99
  %723 = or i32 %722, 4194560
  store i32 %723, ptr %721, align 4, !tbaa !99
  br label %1051

724:                                              ; preds = %696
  store i32 14, ptr %1, align 8, !tbaa !87
  store ptr @applyBoneSize, ptr %704, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef nonnull %1, ptr noundef nonnull %166, i32 noundef 3) #16
  store i16 2, ptr %705, align 2, !tbaa !107
  store i16 2, ptr %706, align 8, !tbaa !108
  %725 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 5
  %726 = load i16, ptr %725, align 8, !tbaa !131
  %727 = or i16 %726, 1
  store i16 %727, ptr %725, align 8, !tbaa !131
  %728 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 5, i64 1
  %729 = load i16, ptr %728, align 2, !tbaa !131
  %730 = or i16 %729, 1
  store i16 %730, ptr %728, align 2, !tbaa !131
  %731 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 5, i64 2
  %732 = load i16, ptr %731, align 4, !tbaa !131
  %733 = or i16 %732, 1
  store i16 %733, ptr %731, align 4, !tbaa !131
  %734 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 4
  %735 = load i16, ptr %734, align 2, !tbaa !132
  %736 = or i16 %735, 1
  store i16 %736, ptr %734, align 2, !tbaa !132
  %737 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25
  store float 0.000000e+00, ptr %737, align 4, !tbaa !59
  %738 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 1
  store float 0x3FB99999A0000000, ptr %738, align 4, !tbaa !59
  %739 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %739, align 4, !tbaa !59
  %740 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8
  store float 0x3FB99999A0000000, ptr %740, align 4, !tbaa !59
  %741 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 1
  store float 0x3FB99999A0000000, ptr %741, align 4, !tbaa !59
  %742 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 2
  store float 0x3FB99999A0000000, ptr %742, align 4, !tbaa !59
  %743 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %744 = load ptr, ptr %743, align 8, !tbaa !109
  %745 = getelementptr inbounds %struct.Scene, ptr %744, i64 0, i32 38, i32 1
  %746 = load i8, ptr %745, align 4, !tbaa !110
  %747 = zext i8 %746 to i32
  %748 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 1
  store i32 %747, ptr %748, align 4, !tbaa !127
  %749 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2
  store i32 0, ptr %749, align 8, !tbaa !73
  %750 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2, i64 1
  store i32 0, ptr %750, align 4, !tbaa !73
  %751 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2, i64 2
  store i32 0, ptr %751, align 8, !tbaa !73
  br label %1051

752:                                              ; preds = %164
  store i32 15, ptr %1, align 8, !tbaa !87
  %753 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  store ptr @applyBoneEnvelope, ptr %753, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef nonnull %1, ptr noundef nonnull %166, i32 noundef 2) #16
  %754 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 24
  store i16 0, ptr %754, align 2, !tbaa !107
  %755 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15
  store i16 0, ptr %755, align 8, !tbaa !108
  %756 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25
  store float 0.000000e+00, ptr %756, align 4, !tbaa !59
  %757 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 1
  store float 0x3FB99999A0000000, ptr %757, align 4, !tbaa !59
  %758 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %758, align 4, !tbaa !59
  %759 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8
  store float 0x3FB99999A0000000, ptr %759, align 4, !tbaa !59
  %760 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 1
  store float 0x3FB99999A0000000, ptr %760, align 4, !tbaa !59
  %761 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 2
  store float 0x3FB99999A0000000, ptr %761, align 4, !tbaa !59
  %762 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %763 = load ptr, ptr %762, align 8, !tbaa !109
  %764 = getelementptr inbounds %struct.Scene, ptr %763, i64 0, i32 38, i32 1
  %765 = load i8, ptr %764, align 4, !tbaa !110
  %766 = zext i8 %765 to i32
  %767 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 1
  store i32 %766, ptr %767, align 4, !tbaa !127
  %768 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2
  store i32 0, ptr %768, align 8, !tbaa !73
  %769 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %770 = load i32, ptr %769, align 4, !tbaa !99
  %771 = or i32 %770, 4194560
  store i32 %771, ptr %769, align 4, !tbaa !99
  br label %1051

772:                                              ; preds = %164
  tail call fastcc void @initEdgeSlide(ptr noundef nonnull %1)
  br label %1051

773:                                              ; preds = %164
  tail call fastcc void @initVertSlide(ptr noundef nonnull %1)
  br label %1051

774:                                              ; preds = %164
  store i32 18, ptr %1, align 8, !tbaa !87
  %775 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  store ptr @applyBoneRoll, ptr %775, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef nonnull %1, ptr noundef nonnull %166, i32 noundef 5) #16
  %776 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 24
  store i16 0, ptr %776, align 2, !tbaa !107
  %777 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15
  store i16 0, ptr %777, align 8, !tbaa !108
  %778 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25
  store float 0.000000e+00, ptr %778, align 4, !tbaa !59
  %779 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 1
  store float 0x3FB6571840000000, ptr %779, align 4, !tbaa !59
  %780 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 2
  store float 0x3F91DF46A0000000, ptr %780, align 4, !tbaa !59
  %781 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8
  store float 0x3FB6571840000000, ptr %781, align 4, !tbaa !59
  %782 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 1
  store float 0x3FB6571840000000, ptr %782, align 4, !tbaa !59
  %783 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 2
  store float 0x3FB6571840000000, ptr %783, align 4, !tbaa !59
  %784 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %785 = load ptr, ptr %784, align 8, !tbaa !109
  %786 = getelementptr inbounds %struct.Scene, ptr %785, i64 0, i32 38, i32 1
  %787 = load i8, ptr %786, align 4, !tbaa !110
  %788 = zext i8 %787 to i32
  %789 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 1
  store i32 %788, ptr %789, align 4, !tbaa !127
  %790 = getelementptr inbounds %struct.Scene, ptr %785, i64 0, i32 38, i32 2
  %791 = load i8, ptr %790, align 1, !tbaa !128
  %792 = icmp eq i8 %791, 2
  %793 = zext i1 %792 to i8
  %794 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 3
  store i8 %793, ptr %794, align 4, !tbaa !129
  %795 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2
  store i32 5, ptr %795, align 8, !tbaa !73
  %796 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %797 = load i32, ptr %796, align 4, !tbaa !99
  %798 = or i32 %797, 4194560
  store i32 %798, ptr %796, align 4, !tbaa !99
  br label %1051

799:                                              ; preds = %164
  %800 = load i8, ptr %44, align 8, !tbaa !34
  switch i8 %800, label %801 [
    i8 12, label %802
    i8 8, label %802
  ]

801:                                              ; preds = %799
  store i16 3, ptr %12, align 4, !tbaa !98
  br label %802

802:                                              ; preds = %799, %799, %801
  store i32 19, ptr %1, align 8, !tbaa !87
  %803 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  store ptr @applyTimeTranslate, ptr %803, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef nonnull %1, ptr noundef nonnull %166, i32 noundef 0) #16
  %804 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 24
  store i16 0, ptr %804, align 2, !tbaa !107
  %805 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15
  %806 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 4
  store i16 0, ptr %806, align 2, !tbaa !132
  store i16 0, ptr %805, align 8, !tbaa !108
  %807 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25
  store float 0.000000e+00, ptr %807, align 4, !tbaa !59
  %808 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 2
  store float 1.000000e+00, ptr %808, align 4, !tbaa !59
  %809 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 1
  store float 1.000000e+00, ptr %809, align 4, !tbaa !59
  %810 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8
  store float 1.000000e+00, ptr %810, align 4, !tbaa !59
  %811 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 1
  store float 1.000000e+00, ptr %811, align 4, !tbaa !59
  %812 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 2
  store float 1.000000e+00, ptr %812, align 4, !tbaa !59
  %813 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %814 = load ptr, ptr %813, align 8, !tbaa !109
  %815 = getelementptr inbounds %struct.Scene, ptr %814, i64 0, i32 38, i32 1
  %816 = load i8, ptr %815, align 4, !tbaa !110
  %817 = zext i8 %816 to i32
  %818 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 1
  store i32 %817, ptr %818, align 4, !tbaa !127
  %819 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2
  store i32 0, ptr %819, align 8, !tbaa !73
  br label %1051

820:                                              ; preds = %164
  %821 = load i8, ptr %44, align 8, !tbaa !34
  %822 = icmp eq i8 %821, 12
  br i1 %822, label %823, label %831

823:                                              ; preds = %820
  %824 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %825 = load ptr, ptr %824, align 8, !tbaa !70
  %826 = getelementptr inbounds %struct.ScrArea, ptr %825, i64 0, i32 19
  %827 = load ptr, ptr %826, align 8, !tbaa !71
  %828 = getelementptr inbounds %struct.SpaceAction, ptr %827, i64 0, i32 11
  %829 = load i16, ptr %828, align 2, !tbaa !277
  %830 = or i16 %829, 1
  store i16 %830, ptr %828, align 2, !tbaa !277
  br label %832

831:                                              ; preds = %820
  store i16 3, ptr %12, align 4, !tbaa !98
  br label %832

832:                                              ; preds = %823, %831
  store i32 20, ptr %1, align 8, !tbaa !87
  %833 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  store ptr @applyTimeSlide, ptr %833, align 8, !tbaa !106
  %834 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %835 = load i32, ptr %834, align 4, !tbaa !99
  %836 = or i32 %835, 131072
  store i32 %836, ptr %834, align 4, !tbaa !99
  tail call void @initMouseInputMode(ptr noundef nonnull %1, ptr noundef nonnull %166, i32 noundef 0) #16
  %837 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 24
  store i16 0, ptr %837, align 2, !tbaa !107
  %838 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15
  %839 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 4
  store i16 0, ptr %839, align 2, !tbaa !132
  store i16 0, ptr %838, align 8, !tbaa !108
  %840 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25
  store float 0.000000e+00, ptr %840, align 4, !tbaa !59
  %841 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 2
  store float 1.000000e+00, ptr %841, align 4, !tbaa !59
  %842 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 1
  store float 1.000000e+00, ptr %842, align 4, !tbaa !59
  %843 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8
  store float 1.000000e+00, ptr %843, align 4, !tbaa !59
  %844 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 1
  store float 1.000000e+00, ptr %844, align 4, !tbaa !59
  %845 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 2
  store float 1.000000e+00, ptr %845, align 4, !tbaa !59
  %846 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %847 = load ptr, ptr %846, align 8, !tbaa !109
  %848 = getelementptr inbounds %struct.Scene, ptr %847, i64 0, i32 38, i32 1
  %849 = load i8, ptr %848, align 4, !tbaa !110
  %850 = zext i8 %849 to i32
  %851 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 1
  store i32 %850, ptr %851, align 4, !tbaa !127
  %852 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2
  store i32 0, ptr %852, align 8, !tbaa !73
  br label %1051

853:                                              ; preds = %164
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %854 = load i8, ptr %44, align 8, !tbaa !34
  %855 = add i8 %854, -14
  %856 = icmp ult i8 %855, -2
  br i1 %856, label %857, label %858

857:                                              ; preds = %853
  store i16 3, ptr %12, align 4, !tbaa !98
  br label %858

858:                                              ; preds = %853, %857
  store i32 21, ptr %1, align 8, !tbaa !87
  %859 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  store ptr @applyTimeScale, ptr %859, align 8, !tbaa !106
  %860 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %861 = load ptr, ptr %860, align 8, !tbaa !109
  %862 = getelementptr inbounds %struct.Scene, ptr %861, i64 0, i32 22, i32 5
  %863 = load i32, ptr %862, align 8, !tbaa !280
  %864 = sitofp i32 %863 to float
  %865 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 20
  store float %864, ptr %865, align 4, !tbaa !59
  %866 = icmp eq i8 %854, 1
  br i1 %866, label %867, label %895

867:                                              ; preds = %858
  %868 = load i32, ptr %28, align 8, !tbaa !58
  %869 = and i32 %868, 256
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %875, label %871

871:                                              ; preds = %867
  store float %864, ptr %7, align 4, !tbaa !59
  %872 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 20, i64 1
  %873 = load float, ptr %872, align 4, !tbaa !59
  %874 = getelementptr inbounds float, ptr %7, i64 1
  store float %873, ptr %874, align 4, !tbaa !59
  br label %902

875:                                              ; preds = %867
  %876 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %877 = load ptr, ptr %876, align 8, !tbaa !48
  %878 = getelementptr inbounds %struct.ARegion, ptr %877, i64 0, i32 8
  %879 = load i16, ptr %878, align 2, !tbaa !49
  %880 = icmp eq i16 %879, 0
  br i1 %880, label %881, label %902

881:                                              ; preds = %875
  %882 = call i32 @ED_view3d_project_float_global(ptr noundef %877, ptr noundef nonnull %865, ptr noundef nonnull %7, i32 noundef 0) #16
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %902, label %884

884:                                              ; preds = %881
  %885 = load ptr, ptr %876, align 8, !tbaa !48
  %886 = getelementptr inbounds %struct.ARegion, ptr %885, i64 0, i32 5
  %887 = load i16, ptr %886, align 8, !tbaa !85
  %888 = sitofp i16 %887 to float
  %889 = fmul float %888, 5.000000e-01
  store float %889, ptr %7, align 4, !tbaa !59
  %890 = getelementptr inbounds %struct.ARegion, ptr %885, i64 0, i32 6
  %891 = load i16, ptr %890, align 2, !tbaa !86
  %892 = sitofp i16 %891 to float
  %893 = fmul float %892, 5.000000e-01
  %894 = getelementptr inbounds float, ptr %7, i64 1
  store float %893, ptr %894, align 4, !tbaa !59
  br label %902

895:                                              ; preds = %858
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store i64 0, ptr %6, align 8
  call void @projectIntViewEx(ptr noundef %1, ptr noundef nonnull %865, ptr noundef nonnull %6, i32 noundef 0)
  %896 = load i32, ptr %6, align 8, !tbaa !73
  %897 = sitofp i32 %896 to float
  store float %897, ptr %7, align 4, !tbaa !59
  %898 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  %899 = load i32, ptr %898, align 4, !tbaa !73
  %900 = sitofp i32 %899 to float
  %901 = getelementptr inbounds float, ptr %7, i64 1
  store float %900, ptr %901, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %902

902:                                              ; preds = %871, %875, %881, %884, %895
  %903 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22, i64 1
  %904 = load i32, ptr %903, align 4, !tbaa !73
  %905 = sitofp i32 %904 to float
  %906 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  store float %905, ptr %906, align 4, !tbaa !59
  call void @initMouseInput(ptr noundef nonnull %1, ptr noundef nonnull %166, ptr noundef nonnull %7, ptr noundef nonnull %168) #16
  call void @initMouseInputMode(ptr noundef nonnull %1, ptr noundef nonnull %166, i32 noundef 3) #16
  %907 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %908 = load i32, ptr %907, align 4, !tbaa !99
  %909 = or i32 %908, 512
  store i32 %909, ptr %907, align 4, !tbaa !99
  %910 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15
  %911 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 5
  %912 = load i16, ptr %911, align 8, !tbaa !131
  %913 = or i16 %912, 1
  store i16 %913, ptr %911, align 8, !tbaa !131
  %914 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 24
  store i16 0, ptr %914, align 2, !tbaa !107
  %915 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 4
  store i16 0, ptr %915, align 2, !tbaa !132
  store i16 0, ptr %910, align 8, !tbaa !108
  %916 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25
  store float 0.000000e+00, ptr %916, align 4, !tbaa !59
  %917 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 2
  store float 1.000000e+00, ptr %917, align 4, !tbaa !59
  %918 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 1
  store float 1.000000e+00, ptr %918, align 4, !tbaa !59
  %919 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8
  store float 1.000000e+00, ptr %919, align 4, !tbaa !59
  %920 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 1
  store float 1.000000e+00, ptr %920, align 4, !tbaa !59
  %921 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 2
  store float 1.000000e+00, ptr %921, align 4, !tbaa !59
  %922 = load ptr, ptr %860, align 8, !tbaa !109
  %923 = getelementptr inbounds %struct.Scene, ptr %922, i64 0, i32 38, i32 1
  %924 = load i8, ptr %923, align 4, !tbaa !110
  %925 = zext i8 %924 to i32
  %926 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 1
  store i32 %925, ptr %926, align 4, !tbaa !127
  %927 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2
  store i32 0, ptr %927, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %1051

928:                                              ; preds = %164
  %929 = load i8, ptr %44, align 8, !tbaa !34
  switch i8 %929, label %931 [
    i8 2, label %930
    i8 13, label %930
    i8 12, label %932
    i8 8, label %932
  ]

930:                                              ; preds = %928, %928
  tail call fastcc void @initTranslation(ptr noundef nonnull %1)
  br label %950

931:                                              ; preds = %928
  store i16 3, ptr %12, align 4, !tbaa !98
  br label %932

932:                                              ; preds = %928, %928, %931
  store i32 19, ptr %1, align 8, !tbaa !87
  %933 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  store ptr @applyTimeTranslate, ptr %933, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef nonnull %1, ptr noundef nonnull %166, i32 noundef 0) #16
  %934 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 24
  store i16 0, ptr %934, align 2, !tbaa !107
  %935 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15
  %936 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 4
  store i16 0, ptr %936, align 2, !tbaa !132
  store i16 0, ptr %935, align 8, !tbaa !108
  %937 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25
  store float 0.000000e+00, ptr %937, align 4, !tbaa !59
  %938 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 2
  store float 1.000000e+00, ptr %938, align 4, !tbaa !59
  %939 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 1
  store float 1.000000e+00, ptr %939, align 4, !tbaa !59
  %940 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8
  store float 1.000000e+00, ptr %940, align 4, !tbaa !59
  %941 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 1
  store float 1.000000e+00, ptr %941, align 4, !tbaa !59
  %942 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 2
  store float 1.000000e+00, ptr %942, align 4, !tbaa !59
  %943 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %944 = load ptr, ptr %943, align 8, !tbaa !109
  %945 = getelementptr inbounds %struct.Scene, ptr %944, i64 0, i32 38, i32 1
  %946 = load i8, ptr %945, align 4, !tbaa !110
  %947 = zext i8 %946 to i32
  %948 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 1
  store i32 %947, ptr %948, align 4, !tbaa !127
  %949 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2
  store i32 0, ptr %949, align 8, !tbaa !73
  br label %950

950:                                              ; preds = %932, %930
  store i32 23, ptr %1, align 8, !tbaa !87
  br label %1051

951:                                              ; preds = %164
  %952 = load i8, ptr %44, align 8, !tbaa !34
  switch i8 %952, label %954 [
    i8 2, label %953
    i8 13, label %953
    i8 12, label %955
    i8 8, label %955
  ]

953:                                              ; preds = %951, %951
  tail call fastcc void @initTranslation(ptr noundef nonnull %1)
  br label %1051

954:                                              ; preds = %951
  store i16 3, ptr %12, align 4, !tbaa !98
  br label %955

955:                                              ; preds = %951, %951, %954
  store i32 19, ptr %1, align 8, !tbaa !87
  %956 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  store ptr @applyTimeTranslate, ptr %956, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef nonnull %1, ptr noundef nonnull %166, i32 noundef 0) #16
  %957 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 24
  store i16 0, ptr %957, align 2, !tbaa !107
  %958 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15
  %959 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 4
  store i16 0, ptr %959, align 2, !tbaa !132
  store i16 0, ptr %958, align 8, !tbaa !108
  %960 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25
  store float 0.000000e+00, ptr %960, align 4, !tbaa !59
  %961 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 2
  store float 1.000000e+00, ptr %961, align 4, !tbaa !59
  %962 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 1
  store float 1.000000e+00, ptr %962, align 4, !tbaa !59
  %963 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8
  store float 1.000000e+00, ptr %963, align 4, !tbaa !59
  %964 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 1
  store float 1.000000e+00, ptr %964, align 4, !tbaa !59
  %965 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 2
  store float 1.000000e+00, ptr %965, align 4, !tbaa !59
  %966 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %967 = load ptr, ptr %966, align 8, !tbaa !109
  %968 = getelementptr inbounds %struct.Scene, ptr %967, i64 0, i32 38, i32 1
  %969 = load i8, ptr %968, align 4, !tbaa !110
  %970 = zext i8 %969 to i32
  %971 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 1
  store i32 %970, ptr %971, align 4, !tbaa !127
  %972 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2
  store i32 0, ptr %972, align 8, !tbaa !73
  br label %1051

973:                                              ; preds = %164
  %974 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  store ptr @applyBakeTime, ptr %974, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef %1, ptr noundef nonnull %166, i32 noundef 0) #16
  %975 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 24
  store i16 0, ptr %975, align 2, !tbaa !107
  %976 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15
  store i16 0, ptr %976, align 8, !tbaa !108
  %977 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25
  store float 0.000000e+00, ptr %977, align 4, !tbaa !59
  %978 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 1
  store float 1.000000e+00, ptr %978, align 4, !tbaa !59
  %979 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 2
  store float 0x3FB99999A0000000, ptr %979, align 4, !tbaa !59
  %980 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8
  store float 1.000000e+00, ptr %980, align 4, !tbaa !59
  %981 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 1
  store float 1.000000e+00, ptr %981, align 4, !tbaa !59
  %982 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 2
  store float 1.000000e+00, ptr %982, align 4, !tbaa !59
  %983 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %984 = load ptr, ptr %983, align 8, !tbaa !109
  %985 = getelementptr inbounds %struct.Scene, ptr %984, i64 0, i32 38, i32 1
  %986 = load i8, ptr %985, align 4, !tbaa !110
  %987 = zext i8 %986 to i32
  %988 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 1
  store i32 %987, ptr %988, align 4, !tbaa !127
  %989 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2
  store i32 0, ptr %989, align 8, !tbaa !73
  br label %1051

990:                                              ; preds = %164
  %991 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  store ptr @applyMirror, ptr %991, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef %1, ptr noundef nonnull %166, i32 noundef 0) #16
  %992 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %993 = load i32, ptr %992, align 4, !tbaa !99
  %994 = or i32 %993, 512
  store i32 %994, ptr %992, align 4, !tbaa !99
  %995 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  %996 = load ptr, ptr %995, align 8, !tbaa !100
  %997 = icmp eq ptr %996, null
  br i1 %997, label %998, label %1051

998:                                              ; preds = %990
  %999 = or i32 %993, 1536
  store i32 %999, ptr %992, align 4, !tbaa !99
  br label %1051

1000:                                             ; preds = %164
  store i32 26, ptr %1, align 8, !tbaa !87
  %1001 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  store ptr @applyBevelWeight, ptr %1001, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef nonnull %1, ptr noundef nonnull %166, i32 noundef 4) #16
  %1002 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 24
  store i16 0, ptr %1002, align 2, !tbaa !107
  %1003 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15
  store i16 0, ptr %1003, align 8, !tbaa !108
  %1004 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25
  store float 0.000000e+00, ptr %1004, align 4, !tbaa !59
  %1005 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 1
  store float 0x3FB99999A0000000, ptr %1005, align 4, !tbaa !59
  %1006 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %1006, align 4, !tbaa !59
  %1007 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8
  store float 0x3FB99999A0000000, ptr %1007, align 4, !tbaa !59
  %1008 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 1
  store float 0x3FB99999A0000000, ptr %1008, align 4, !tbaa !59
  %1009 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 2
  store float 0x3FB99999A0000000, ptr %1009, align 4, !tbaa !59
  %1010 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %1011 = load ptr, ptr %1010, align 8, !tbaa !109
  %1012 = getelementptr inbounds %struct.Scene, ptr %1011, i64 0, i32 38, i32 1
  %1013 = load i8, ptr %1012, align 4, !tbaa !110
  %1014 = zext i8 %1013 to i32
  %1015 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 1
  store i32 %1014, ptr %1015, align 4, !tbaa !127
  %1016 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2
  store i32 0, ptr %1016, align 8, !tbaa !73
  %1017 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %1018 = load i32, ptr %1017, align 4, !tbaa !99
  %1019 = or i32 %1018, 4194560
  store i32 %1019, ptr %1017, align 4, !tbaa !99
  br label %1051

1020:                                             ; preds = %164
  %1021 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %1022 = load i32, ptr %1021, align 4, !tbaa !99
  %1023 = or i32 %1022, 256
  store i32 %1023, ptr %1021, align 4, !tbaa !99
  %1024 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  store ptr @applyAlign, ptr %1024, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef %1, ptr noundef nonnull %166, i32 noundef 0) #16
  br label %1051

1025:                                             ; preds = %164
  %1026 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  store ptr @applySeqSlide, ptr %1026, align 8, !tbaa !106
  tail call void @initMouseInputMode(ptr noundef %1, ptr noundef nonnull %166, i32 noundef 1) #16
  %1027 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 24
  store i16 1, ptr %1027, align 2, !tbaa !107
  %1028 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15
  %1029 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 4
  store i16 0, ptr %1029, align 2, !tbaa !132
  store i16 1, ptr %1028, align 8, !tbaa !108
  %1030 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25
  store float 0.000000e+00, ptr %1030, align 4, !tbaa !59
  %1031 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %1032 = load ptr, ptr %1031, align 8, !tbaa !109
  %1033 = getelementptr inbounds %struct.Scene, ptr %1032, i64 0, i32 22, i32 55
  %1034 = load i16, ptr %1033, align 4, !tbaa !281
  %1035 = sitofp i16 %1034 to float
  %1036 = getelementptr inbounds %struct.Scene, ptr %1032, i64 0, i32 22, i32 65
  %1037 = load float, ptr %1036, align 4, !tbaa !282
  %1038 = fdiv float %1035, %1037
  %1039 = tail call float @llvm.floor.f32(float %1038)
  %1040 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 1
  store float %1039, ptr %1040, align 4, !tbaa !59
  %1041 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 25, i64 2
  store float 1.000000e+01, ptr %1041, align 4, !tbaa !59
  %1042 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8
  store float %1039, ptr %1042, align 4, !tbaa !59
  %1043 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 1
  store float %1039, ptr %1043, align 4, !tbaa !59
  %1044 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 8, i64 2
  store float %1039, ptr %1044, align 4, !tbaa !59
  %1045 = getelementptr inbounds %struct.Scene, ptr %1032, i64 0, i32 38, i32 1
  %1046 = load i8, ptr %1045, align 4, !tbaa !110
  %1047 = zext i8 %1046 to i32
  %1048 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 1
  store i32 %1047, ptr %1048, align 4, !tbaa !127
  %1049 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2
  store i32 0, ptr %1049, align 8, !tbaa !73
  %1050 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15, i32 2, i64 1
  store i32 0, ptr %1050, align 4, !tbaa !73
  br label %1051

1051:                                             ; preds = %998, %990, %548, %530, %707, %724, %953, %955, %164, %1025, %1020, %1000, %973, %950, %902, %832, %802, %774, %773, %772, %752, %676, %659, %633, %613, %593, %568, %484, %314, %308, %233, %193, %170, %169
  %1052 = load i16, ptr %12, align 4, !tbaa !98
  %1053 = icmp eq i16 %1052, 3
  br i1 %1053, label %1054, label %1055

1054:                                             ; preds = %1051
  call void @postTrans(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %1167

1055:                                             ; preds = %1051
  %1056 = load ptr, ptr %13, align 8, !tbaa !242
  %1057 = call ptr @RNA_struct_find_property(ptr noundef %1056, ptr noundef nonnull @.str.62) #16
  %1058 = icmp eq ptr %1057, null
  br i1 %1058, label %1089, label %1059

1059:                                             ; preds = %1055
  %1060 = load ptr, ptr %13, align 8, !tbaa !242
  %1061 = call zeroext i8 @RNA_property_is_set(ptr noundef %1060, ptr noundef nonnull %1057) #16
  %1062 = icmp eq i8 %1061, 0
  br i1 %1062, label %1089, label %1063

1063:                                             ; preds = %1059
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %1064 = call zeroext i8 @RNA_property_array_check(ptr noundef nonnull %1057) #16
  %1065 = icmp eq i8 %1064, 0
  %1066 = load ptr, ptr %13, align 8, !tbaa !242
  br i1 %1065, label %1068, label %1067

1067:                                             ; preds = %1063
  call void @RNA_float_get_array(ptr noundef %1066, ptr noundef nonnull @.str.62, ptr noundef nonnull %9) #16
  br label %1070

1068:                                             ; preds = %1063
  %1069 = call float @RNA_float_get(ptr noundef %1066, ptr noundef nonnull @.str.62) #16
  store float %1069, ptr %9, align 16, !tbaa !59
  br label %1070

1070:                                             ; preds = %1068, %1067
  %1071 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 47
  %1072 = load float, ptr %9, align 16, !tbaa !59
  store float %1072, ptr %1071, align 4, !tbaa !59
  %1073 = getelementptr inbounds float, ptr %9, i64 1
  %1074 = load float, ptr %1073, align 4, !tbaa !59
  %1075 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 47, i64 1
  store float %1074, ptr %1075, align 4, !tbaa !59
  %1076 = getelementptr inbounds float, ptr %9, i64 2
  %1077 = load float, ptr %1076, align 8, !tbaa !59
  %1078 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 47, i64 2
  store float %1077, ptr %1078, align 4, !tbaa !59
  %1079 = getelementptr inbounds float, ptr %9, i64 3
  %1080 = load float, ptr %1079, align 4, !tbaa !59
  %1081 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 47, i64 3
  store float %1080, ptr %1081, align 4, !tbaa !59
  %1082 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 48
  store float %1072, ptr %1082, align 4, !tbaa !59
  %1083 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 48, i64 1
  store float %1074, ptr %1083, align 4, !tbaa !59
  %1084 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 48, i64 2
  store float %1077, ptr %1084, align 4, !tbaa !59
  %1085 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 48, i64 3
  store float %1080, ptr %1085, align 4, !tbaa !59
  %1086 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %1087 = load i32, ptr %1086, align 4, !tbaa !99
  %1088 = or i32 %1087, 1048576
  store i32 %1088, ptr %1086, align 4, !tbaa !99
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #16
  br label %1089

1089:                                             ; preds = %1070, %1059, %1055
  %1090 = load ptr, ptr %13, align 8, !tbaa !242
  %1091 = call ptr @RNA_struct_find_property(ptr noundef %1090, ptr noundef nonnull @.str.67) #16
  %1092 = icmp eq ptr %1091, null
  br i1 %1092, label %1126, label %1093

1093:                                             ; preds = %1089
  %1094 = load ptr, ptr %13, align 8, !tbaa !242
  %1095 = call zeroext i8 @RNA_property_is_set(ptr noundef %1094, ptr noundef nonnull %1091) #16
  %1096 = icmp eq i8 %1095, 0
  br i1 %1096, label %1126, label %1097

1097:                                             ; preds = %1093
  %1098 = load ptr, ptr %13, align 8, !tbaa !242
  %1099 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 49
  call void @RNA_property_float_get_array(ptr noundef %1098, ptr noundef nonnull %1091, ptr noundef nonnull %1099) #16
  %1100 = load float, ptr %1099, align 4, !tbaa !59
  %1101 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 49, i64 1
  %1102 = load float, ptr %1101, align 4, !tbaa !59
  %1103 = fmul float %1102, %1102
  %1104 = call float @llvm.fmuladd.f32(float %1100, float %1100, float %1103)
  %1105 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 49, i64 2
  %1106 = load float, ptr %1105, align 4, !tbaa !59
  %1107 = call float @llvm.fmuladd.f32(float %1106, float %1106, float %1104)
  %1108 = fcmp ogt float %1107, 0x38AA95A5C0000000
  br i1 %1108, label %1109, label %1118

1109:                                             ; preds = %1097
  %1110 = call float @sqrtf(float noundef %1107) #16
  %1111 = fdiv float 1.000000e+00, %1110
  %1112 = load float, ptr %1099, align 4, !tbaa !59
  %1113 = fmul float %1112, %1111
  store float %1113, ptr %1099, align 4, !tbaa !59
  %1114 = load float, ptr %1101, align 4, !tbaa !59
  %1115 = fmul float %1111, %1114
  store float %1115, ptr %1101, align 4, !tbaa !59
  %1116 = load float, ptr %1105, align 4, !tbaa !59
  %1117 = fmul float %1111, %1116
  br label %1119

1118:                                             ; preds = %1097
  store float 0.000000e+00, ptr %1099, align 4, !tbaa !59
  store float 0.000000e+00, ptr %1101, align 4, !tbaa !59
  br label %1119

1119:                                             ; preds = %1109, %1118
  %1120 = phi float [ 0.000000e+00, %1118 ], [ %1117, %1109 ]
  store float %1120, ptr %1105, align 4, !tbaa !59
  %1121 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 50
  %1122 = load float, ptr %1099, align 4, !tbaa !59
  store float %1122, ptr %1121, align 4, !tbaa !59
  %1123 = load float, ptr %1101, align 4, !tbaa !59
  %1124 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 50, i64 1
  store float %1123, ptr %1124, align 4, !tbaa !59
  %1125 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 50, i64 2
  store float %1120, ptr %1125, align 4, !tbaa !59
  br label %1126

1126:                                             ; preds = %1119, %1093, %1089
  %1127 = load ptr, ptr %13, align 8, !tbaa !242
  %1128 = call ptr @RNA_struct_find_property(ptr noundef %1127, ptr noundef nonnull @.str.69) #16
  %1129 = icmp eq ptr %1128, null
  br i1 %1129, label %1166, label %1130

1130:                                             ; preds = %1126
  %1131 = load ptr, ptr %13, align 8, !tbaa !242
  %1132 = call zeroext i8 @RNA_property_is_set(ptr noundef %1131, ptr noundef nonnull %1128) #16
  %1133 = icmp eq i8 %1132, 0
  br i1 %1133, label %1166, label %1134

1134:                                             ; preds = %1130
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #16
  %1135 = load ptr, ptr %13, align 8, !tbaa !242
  call void @RNA_property_boolean_get_array(ptr noundef %1135, ptr noundef nonnull %1128, ptr noundef nonnull %10) #16
  %1136 = load i32, ptr %10, align 4, !tbaa !73
  %1137 = icmp ne i32 %1136, 0
  %1138 = getelementptr inbounds [3 x i32], ptr %10, i64 0, i64 1
  %1139 = load i32, ptr %1138, align 4
  %1140 = icmp ne i32 %1139, 0
  %1141 = select i1 %1137, i1 true, i1 %1140
  %1142 = getelementptr inbounds [3 x i32], ptr %10, i64 0, i64 2
  %1143 = load i32, ptr %1142, align 4
  %1144 = icmp ne i32 %1143, 0
  %1145 = select i1 %1141, i1 true, i1 %1144
  br i1 %1145, label %1146, label %1165

1146:                                             ; preds = %1134
  %1147 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 13, i32 7
  %1148 = load i32, ptr %1147, align 4, !tbaa !97
  %1149 = icmp eq i32 %1136, 0
  %1150 = select i1 %1149, i32 1, i32 3
  %1151 = or i32 %1148, %1150
  store i32 %1151, ptr %1147, align 4, !tbaa !97
  %1152 = icmp eq i32 %1139, 0
  br i1 %1152, label %1156, label %1153

1153:                                             ; preds = %1146
  %1154 = load i32, ptr %1147, align 4, !tbaa !97
  %1155 = or i32 %1154, 4
  store i32 %1155, ptr %1147, align 4, !tbaa !97
  br label %1156

1156:                                             ; preds = %1153, %1146
  %1157 = icmp eq i32 %1143, 0
  br i1 %1157, label %1161, label %1158

1158:                                             ; preds = %1156
  %1159 = load i32, ptr %1147, align 4, !tbaa !97
  %1160 = or i32 %1159, 8
  store i32 %1160, ptr %1147, align 4, !tbaa !97
  br label %1161

1161:                                             ; preds = %1158, %1156
  %1162 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 43
  %1163 = load i16, ptr %1162, align 2, !tbaa !133
  %1164 = load i32, ptr %1147, align 4, !tbaa !97
  call void @setUserConstraint(ptr noundef nonnull %1, i16 noundef signext %1163, i32 noundef %1164, ptr noundef nonnull @.str.71) #16
  br label %1165

1165:                                             ; preds = %1134, %1161
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #16
  br label %1166

1166:                                             ; preds = %1165, %1130, %1126
  store ptr null, ptr %11, align 8, !tbaa !95
  br label %1167

1167:                                             ; preds = %1166, %1054, %105
  %1168 = phi i8 [ 0, %105 ], [ 0, %1054 ], [ 1, %1166 ]
  ret i8 %1168
}

declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @initTransformOrientation(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @drawTransformApply(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.TransInfo, ptr %2, i64 0, i32 17
  %5 = load i32, ptr %4, align 8, !tbaa !91
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %3
  %9 = or i32 %5, 1
  store i32 %9, ptr %4, align 8, !tbaa !91
  %10 = getelementptr inbounds %struct.TransInfo, ptr %2, i64 0, i32 53
  store ptr %0, ptr %10, align 8, !tbaa !95
  tail call void @selectConstraint(ptr noundef %2) #16
  %11 = getelementptr inbounds %struct.TransInfo, ptr %2, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !106
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.TransInfo, ptr %2, i64 0, i32 61
  tail call void %12(ptr noundef %2, ptr noundef nonnull %15) #16
  tail call fastcc void @viewRedrawForce(ptr noundef %0, ptr noundef %2)
  br label %16

16:                                               ; preds = %14, %8
  store i32 0, ptr %4, align 8, !tbaa !91
  %17 = getelementptr inbounds %struct.TransInfo, ptr %2, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !58
  %19 = and i32 %18, 16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.TransInfo, ptr %2, i64 0, i32 3
  store i16 2, ptr %22, align 4, !tbaa !98
  br label %23

23:                                               ; preds = %16, %21
  store ptr null, ptr %10, align 8, !tbaa !95
  br label %24

24:                                               ; preds = %23, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @drawTransformView(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  tail call void @drawConstraint(ptr noundef %2) #16
  tail call void @drawPropCircle(ptr noundef %0, ptr noundef %2) #16
  tail call void @drawSnapping(ptr noundef %0, ptr noundef %2) #16
  %9 = load i32, ptr %2, align 8, !tbaa !87
  %10 = icmp eq i32 %9, 28
  br i1 %10, label %11, label %124

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.TransInfo, ptr %2, i64 0, i32 40
  %13 = load ptr, ptr %12, align 8, !tbaa !218
  %14 = icmp eq ptr %13, null
  br i1 %14, label %124, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.EdgeSlideData, ptr %13, i64 0, i32 9
  %17 = load i8, ptr %16, align 4, !tbaa !162
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %124

19:                                               ; preds = %15
  %20 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  %21 = load ptr, ptr %13, align 8, !tbaa !205
  %22 = getelementptr inbounds %struct.EdgeSlideData, ptr %13, i64 0, i32 11
  %23 = load i32, ptr %22, align 8, !tbaa !163
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %21, i64 %24
  %26 = getelementptr inbounds %struct.EdgeSlideData, ptr %13, i64 0, i32 8
  %27 = load float, ptr %26, align 8, !tbaa !217
  %28 = fadd float %27, 1.000000e+00
  %29 = fmul float %28, 5.000000e-01
  %30 = tail call float @UI_GetThemeValuef(i32 noundef 48) #16
  %31 = fadd float %30, 1.500000e+00
  %32 = fadd float %31, -5.000000e-01
  %33 = tail call float @UI_GetThemeValuef(i32 noundef 37) #16
  %34 = fadd float %33, 5.000000e-01
  %35 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %21, i64 %24, i32 3
  %36 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %21, i64 %24, i32 5
  %37 = load float, ptr %35, align 4, !tbaa !59
  %38 = load float, ptr %36, align 4, !tbaa !59
  %39 = fadd float %37, %38
  store float %39, ptr %6, align 4, !tbaa !59
  %40 = getelementptr inbounds float, ptr %35, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !59
  %42 = getelementptr inbounds float, ptr %36, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !59
  %44 = fadd float %41, %43
  %45 = getelementptr inbounds float, ptr %6, i64 1
  store float %44, ptr %45, align 4, !tbaa !59
  %46 = getelementptr inbounds float, ptr %35, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !59
  %48 = getelementptr inbounds float, ptr %36, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !59
  %50 = fadd float %47, %49
  %51 = getelementptr inbounds float, ptr %6, i64 2
  store float %50, ptr %51, align 4, !tbaa !59
  %52 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %21, i64 %24, i32 6
  %53 = load float, ptr %35, align 4, !tbaa !59
  %54 = load float, ptr %52, align 4, !tbaa !59
  %55 = fadd float %53, %54
  store float %55, ptr %7, align 4, !tbaa !59
  %56 = load float, ptr %40, align 4, !tbaa !59
  %57 = getelementptr inbounds float, ptr %52, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !59
  %59 = fadd float %56, %58
  %60 = getelementptr inbounds float, ptr %7, i64 1
  store float %59, ptr %60, align 4, !tbaa !59
  %61 = load float, ptr %46, align 4, !tbaa !59
  %62 = getelementptr inbounds float, ptr %52, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !59
  %64 = fadd float %61, %63
  %65 = getelementptr inbounds float, ptr %7, i64 2
  store float %64, ptr %65, align 4, !tbaa !59
  %66 = icmp eq ptr %20, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %19
  %68 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 47
  %69 = load i8, ptr %68, align 8, !tbaa !283
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  tail call void @glDisable(i32 noundef 2929) #16
  br label %72

72:                                               ; preds = %71, %67, %19
  tail call void @glEnable(i32 noundef 3042) #16
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #16
  tail call void @glPushAttrib(i32 noundef 7) #16
  tail call void @glPushMatrix() #16
  %73 = getelementptr inbounds %struct.TransInfo, ptr %2, i64 0, i32 63
  %74 = load ptr, ptr %73, align 8, !tbaa !100
  %75 = getelementptr inbounds %struct.Object, ptr %74, i64 0, i32 47
  tail call void @glMultMatrixf(ptr noundef nonnull %75) #16
  tail call void @glLineWidth(float noundef %34) #16
  tail call void @UI_ThemeColorShadeAlpha(i32 noundef 39, i32 noundef 80, i32 noundef -30) #16
  tail call void @glBegin(i32 noundef 1) #16
  %76 = load ptr, ptr %25, align 8, !tbaa !200
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.BMVert, ptr %76, i64 0, i32 2
  tail call void @glVertex3fv(ptr noundef nonnull %79) #16
  tail call void @glVertex3fv(ptr noundef nonnull %35) #16
  br label %80

80:                                               ; preds = %78, %72
  %81 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %21, i64 %24, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !201
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.BMVert, ptr %82, i64 0, i32 2
  tail call void @glVertex3fv(ptr noundef nonnull %85) #16
  tail call void @glVertex3fv(ptr noundef nonnull %35) #16
  br label %86

86:                                               ; preds = %84, %80
  tail call void @bglEnd() #16
  tail call void @UI_ThemeColorShadeAlpha(i32 noundef 28, i32 noundef -30, i32 noundef -30) #16
  tail call void @glPointSize(float noundef %31) #16
  tail call void @bglBegin(i32 noundef 0) #16
  %87 = getelementptr inbounds %struct.EdgeSlideData, ptr %13, i64 0, i32 10
  %88 = load i8, ptr %87, align 1, !tbaa !164
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %81, align 8, !tbaa !201
  %92 = icmp eq ptr %91, null
  br i1 %92, label %99, label %96

93:                                               ; preds = %86
  %94 = load ptr, ptr %25, align 8, !tbaa !200
  %95 = icmp eq ptr %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %93, %90
  %97 = phi ptr [ %91, %90 ], [ %94, %93 ]
  %98 = getelementptr inbounds %struct.BMVert, ptr %97, i64 0, i32 2
  tail call void @bglVertex3fv(ptr noundef nonnull %98) #16
  br label %99

99:                                               ; preds = %96, %93, %90
  tail call void @bglEnd() #16
  tail call void @UI_ThemeColorShadeAlpha(i32 noundef 28, i32 noundef 255, i32 noundef -30) #16
  tail call void @glPointSize(float noundef %32) #16
  tail call void @bglBegin(i32 noundef 0) #16
  %100 = call float @line_point_factor_v3(ptr noundef nonnull %35, ptr noundef nonnull %7, ptr noundef nonnull %6) #16
  %101 = fsub float %29, %100
  %102 = call float @llvm.fabs.f32(float %101)
  %103 = fcmp olt float %102, 0x3E80000000000000
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load float, ptr %35, align 4, !tbaa !59
  store float %105, ptr %8, align 4, !tbaa !59
  %106 = load float, ptr %40, align 4, !tbaa !59
  %107 = getelementptr inbounds float, ptr %8, i64 1
  store float %106, ptr %107, align 4, !tbaa !59
  %108 = load float, ptr %46, align 4, !tbaa !59
  %109 = getelementptr inbounds float, ptr %8, i64 2
  store float %108, ptr %109, align 4, !tbaa !59
  br label %117

110:                                              ; preds = %99
  %111 = fcmp olt float %101, 0.000000e+00
  br i1 %111, label %112, label %114

112:                                              ; preds = %110
  %113 = fdiv float %29, %100
  call void @interp_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %35, float noundef %113) #16
  br label %117

114:                                              ; preds = %110
  %115 = fsub float 1.000000e+00, %100
  %116 = fdiv float %101, %115
  call void @interp_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %35, ptr noundef nonnull %6, float noundef %116) #16
  br label %117

117:                                              ; preds = %104, %112, %114
  call void @bglVertex3fv(ptr noundef nonnull %8) #16
  call void @bglEnd() #16
  call void @glPopMatrix() #16
  call void @glPopAttrib() #16
  call void @glDisable(i32 noundef 3042) #16
  br i1 %66, label %123, label %118

118:                                              ; preds = %117
  %119 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 47
  %120 = load i8, ptr %119, align 8, !tbaa !283
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  call void @glEnable(i32 noundef 2929) #16
  br label %123

123:                                              ; preds = %122, %118, %117
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  br label %124

124:                                              ; preds = %3, %11, %15, %123
  %125 = load i32, ptr %2, align 8, !tbaa !87
  %126 = icmp eq i32 %125, 29
  br i1 %126, label %127, label %247

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.TransInfo, ptr %2, i64 0, i32 40
  %129 = load ptr, ptr %128, align 8, !tbaa !218
  %130 = icmp eq ptr %129, null
  br i1 %130, label %247, label %131

131:                                              ; preds = %127
  %132 = call ptr @CTX_wm_view3d(ptr noundef %0) #16
  %133 = load ptr, ptr %129, align 8, !tbaa !234
  %134 = getelementptr inbounds %struct.VertSlideData, ptr %129, i64 0, i32 6
  %135 = load i32, ptr %134, align 8, !tbaa !222
  %136 = sext i32 %135 to i64
  %137 = call float @UI_GetThemeValuef(i32 noundef 48) #16
  %138 = fadd float %137, 1.500000e+00
  %139 = call float @UI_GetThemeValuef(i32 noundef 37) #16
  %140 = fadd float %139, 5.000000e-01
  %141 = getelementptr inbounds %struct.TransInfo, ptr %2, i64 0, i32 1
  %142 = load i32, ptr %141, align 4, !tbaa !99
  %143 = and i32 %142, 16777216
  %144 = icmp eq i32 %143, 0
  %145 = icmp eq ptr %132, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %131
  %147 = getelementptr inbounds %struct.View3D, ptr %132, i64 0, i32 47
  %148 = load i8, ptr %147, align 8, !tbaa !283
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %146
  call void @glDisable(i32 noundef 2929) #16
  br label %151

151:                                              ; preds = %150, %146, %131
  call void @glEnable(i32 noundef 3042) #16
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #16
  call void @glPushAttrib(i32 noundef 7) #16
  call void @glPushMatrix() #16
  %152 = getelementptr inbounds %struct.TransInfo, ptr %2, i64 0, i32 63
  %153 = load ptr, ptr %152, align 8, !tbaa !100
  %154 = getelementptr inbounds %struct.Object, ptr %153, i64 0, i32 47
  call void @glMultMatrixf(ptr noundef nonnull %154) #16
  call void @glLineWidth(float noundef %140) #16
  call void @UI_ThemeColorShadeAlpha(i32 noundef 39, i32 noundef 80, i32 noundef -160) #16
  call void @glBegin(i32 noundef 1) #16
  %155 = getelementptr inbounds %struct.VertSlideData, ptr %129, i64 0, i32 1
  %156 = load i32, ptr %155, align 8, !tbaa !235
  %157 = icmp sgt i32 %156, 0
  br i1 %144, label %158, label %175

158:                                              ; preds = %151
  br i1 %157, label %159, label %223

159:                                              ; preds = %158
  %160 = load ptr, ptr %129, align 8, !tbaa !234
  br label %161

161:                                              ; preds = %159, %161
  %162 = phi i32 [ %171, %161 ], [ 0, %159 ]
  %163 = phi ptr [ %172, %161 ], [ %160, %159 ]
  %164 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %163, i64 0, i32 1
  call void @glVertex3fv(ptr noundef nonnull %164) #16
  %165 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %163, i64 0, i32 3
  %166 = load ptr, ptr %165, align 8, !tbaa !229
  %167 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %163, i64 0, i32 6
  %168 = load i32, ptr %167, align 4, !tbaa !239
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [3 x float], ptr %166, i64 %169
  call void @glVertex3fv(ptr noundef %170) #16
  %171 = add nuw nsw i32 %162, 1
  %172 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %163, i64 1
  %173 = load i32, ptr %155, align 8, !tbaa !235
  %174 = icmp slt i32 %171, %173
  br i1 %174, label %161, label %223, !llvm.loop !284

175:                                              ; preds = %151
  br i1 %157, label %176, label %223

176:                                              ; preds = %175
  %177 = load ptr, ptr %129, align 8, !tbaa !234
  %178 = getelementptr inbounds float, ptr %4, i64 1
  %179 = getelementptr inbounds float, ptr %4, i64 2
  %180 = getelementptr inbounds float, ptr %5, i64 1
  %181 = getelementptr inbounds float, ptr %5, i64 2
  br label %182

182:                                              ; preds = %176, %182
  %183 = phi i32 [ 0, %176 ], [ %219, %182 ]
  %184 = phi ptr [ %177, %176 ], [ %220, %182 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  %185 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %184, i64 0, i32 3
  %186 = load ptr, ptr %185, align 8, !tbaa !229
  %187 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %184, i64 0, i32 6
  %188 = load i32, ptr %187, align 4, !tbaa !239
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [3 x float], ptr %186, i64 %189
  %191 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %184, i64 0, i32 1
  %192 = load float, ptr %190, align 4, !tbaa !59
  %193 = load float, ptr %191, align 4, !tbaa !59
  %194 = fsub float %192, %193
  store float %194, ptr %4, align 4, !tbaa !59
  %195 = getelementptr inbounds float, ptr %190, i64 1
  %196 = load float, ptr %195, align 4, !tbaa !59
  %197 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %184, i64 0, i32 1, i64 1
  %198 = load float, ptr %197, align 4, !tbaa !59
  %199 = fsub float %196, %198
  store float %199, ptr %178, align 4, !tbaa !59
  %200 = getelementptr inbounds float, ptr %190, i64 2
  %201 = load float, ptr %200, align 4, !tbaa !59
  %202 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %184, i64 0, i32 1, i64 2
  %203 = load float, ptr %202, align 4, !tbaa !59
  %204 = fsub float %201, %203
  store float %204, ptr %179, align 4, !tbaa !59
  %205 = fmul float %194, 1.000000e+02
  store float %205, ptr %4, align 4, !tbaa !59
  %206 = fmul float %199, 1.000000e+02
  store float %206, ptr %178, align 4, !tbaa !59
  %207 = fmul float %204, 1.000000e+02
  store float %207, ptr %179, align 4, !tbaa !59
  %208 = fneg float %205
  store float %208, ptr %5, align 4, !tbaa !59
  %209 = fneg float %206
  store float %209, ptr %180, align 4, !tbaa !59
  %210 = fneg float %207
  store float %210, ptr %181, align 4, !tbaa !59
  %211 = load float, ptr %191, align 4, !tbaa !59
  %212 = fadd float %205, %211
  store float %212, ptr %4, align 4, !tbaa !59
  %213 = fadd float %198, %206
  store float %213, ptr %178, align 4, !tbaa !59
  %214 = fadd float %203, %207
  store float %214, ptr %179, align 4, !tbaa !59
  %215 = load float, ptr %191, align 4, !tbaa !59
  %216 = fsub float %215, %205
  store float %216, ptr %5, align 4, !tbaa !59
  %217 = fsub float %198, %206
  store float %217, ptr %180, align 4, !tbaa !59
  %218 = fsub float %203, %207
  store float %218, ptr %181, align 4, !tbaa !59
  call void @glVertex3fv(ptr noundef nonnull %4) #16
  call void @glVertex3fv(ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  %219 = add nuw nsw i32 %183, 1
  %220 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %184, i64 1
  %221 = load i32, ptr %155, align 8, !tbaa !235
  %222 = icmp slt i32 %219, %221
  br i1 %222, label %182, label %223, !llvm.loop !285

223:                                              ; preds = %182, %161, %175, %158
  call void @bglEnd() #16
  call void @glPointSize(float noundef %138) #16
  call void @bglBegin(i32 noundef 0) #16
  %224 = getelementptr inbounds %struct.VertSlideData, ptr %129, i64 0, i32 5
  %225 = load i8, ptr %224, align 1, !tbaa !223
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %238, label %227

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.VertSlideData, ptr %129, i64 0, i32 4
  %229 = load i8, ptr %228, align 4, !tbaa !220
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %133, i64 %136, i32 3
  %233 = load ptr, ptr %232, align 8, !tbaa !229
  %234 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %133, i64 %136, i32 6
  %235 = load i32, ptr %234, align 4, !tbaa !239
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [3 x float], ptr %233, i64 %236
  br label %240

238:                                              ; preds = %227, %223
  %239 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %133, i64 %136, i32 1
  br label %240

240:                                              ; preds = %238, %231
  %241 = phi ptr [ %237, %231 ], [ %239, %238 ]
  call void @bglVertex3fv(ptr noundef %241) #16
  call void @bglEnd() #16
  call void @glPopMatrix() #16
  call void @glPopAttrib() #16
  call void @glDisable(i32 noundef 3042) #16
  br i1 %145, label %247, label %242

242:                                              ; preds = %240
  %243 = getelementptr inbounds %struct.View3D, ptr %132, i64 0, i32 47
  %244 = load i8, ptr %243, align 8, !tbaa !283
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %242
  call void @glEnable(i32 noundef 2929) #16
  br label %247

247:                                              ; preds = %124, %127, %240, %242, %246
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @drawTransformPixel(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.rcti, align 4
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.TransInfo, ptr %2, i64 0, i32 56
  %7 = load ptr, ptr %6, align 8, !tbaa !109
  %8 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !286
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.Base, ptr %9, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !287
  br label %14

14:                                               ; preds = %3, %11
  %15 = phi ptr [ %13, %11 ], [ null, %3 ]
  %16 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !289
  %17 = and i16 %16, 128
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %57

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.TransInfo, ptr %2, i64 0, i32 55
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %57

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.TransInfo, ptr %2, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !99
  %26 = and i32 %25, 5
  %27 = icmp ne i32 %26, 0
  %28 = icmp ne ptr %15, null
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %57

30:                                               ; preds = %23
  %31 = tail call i32 @autokeyframe_cfra_can_key(ptr noundef %7, ptr noundef nonnull %15) #16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %57, label %33

33:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @ED_region_visible_rect(ptr noundef %1, ptr noundef nonnull %4) #16
  %34 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  call void @BLF_width_and_height_default(ptr noundef nonnull @.str.78, i64 noundef 1024, ptr noundef nonnull %5, ptr noundef nonnull %34) #16
  %35 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !62
  %37 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !293
  %38 = sext i16 %37 to i32
  %39 = load float, ptr %5, align 4, !tbaa !59
  %40 = fptosi float %39 to i32
  %41 = add i32 %38, %40
  %42 = sub i32 %36, %41
  %43 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !64
  %45 = sub nsw i32 %44, %38
  call void @UI_ThemeColorShade(i32 noundef 4, i32 noundef -50) #16
  %46 = sitofp i32 %42 to float
  %47 = sitofp i32 %45 to float
  call void @BLF_draw_default_ascii(float noundef %46, float noundef %47, float noundef 0.000000e+00, ptr noundef nonnull @.str.78, i64 noundef 1024) #16
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #16
  call void @glEnable(i32 noundef 3042) #16
  %48 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !293
  %49 = sext i16 %48 to i32
  %50 = sub nsw i32 %42, %49
  %51 = load float, ptr %34, align 4, !tbaa !59
  %52 = fptosi float %51 to i32
  %53 = sdiv i32 %52, -2
  %54 = add i32 %53, %45
  %55 = sitofp i32 %50 to float
  %56 = sitofp i32 %54 to float
  call void @UI_icon_draw(float noundef %55, float noundef %56, i32 noundef 494) #16
  call void @glDisable(i32 noundef 3042) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  br label %57

57:                                               ; preds = %19, %30, %33, %23, %14
  ret void
}

declare ptr @WM_paint_cursor_activate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @helpline_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_region(ptr noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 8
  %6 = load i16, ptr %5, align 2, !tbaa !49
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %1
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi i32 [ 0, %8 ], [ 1, %4 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal void @drawHelpline(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [2 x i32], align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [3 x i8], align 1
  %9 = alloca [3 x i8], align 1
  %10 = getelementptr inbounds %struct.TransInfo, ptr %3, i64 0, i32 34
  %11 = load i8, ptr %10, align 1, !tbaa !294
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %191, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.TransInfo, ptr %3, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !99
  %16 = and i32 %15, 128
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %191

18:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %19 = getelementptr inbounds %struct.TransInfo, ptr %3, i64 0, i32 20
  %20 = load float, ptr %19, align 4, !tbaa !59
  store float %20, ptr %6, align 4, !tbaa !59
  %21 = getelementptr inbounds %struct.TransInfo, ptr %3, i64 0, i32 20, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !59
  %23 = getelementptr inbounds float, ptr %6, i64 1
  store float %22, ptr %23, align 4, !tbaa !59
  %24 = getelementptr inbounds %struct.TransInfo, ptr %3, i64 0, i32 20, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !59
  %26 = getelementptr inbounds float, ptr %6, i64 2
  store float %25, ptr %26, align 4, !tbaa !59
  %27 = and i32 %15, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.TransInfo, ptr %3, i64 0, i32 63
  %31 = load ptr, ptr %30, align 8, !tbaa !100
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %40

33:                                               ; preds = %18
  %34 = and i32 %15, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.TransInfo, ptr %3, i64 0, i32 39
  %38 = load ptr, ptr %37, align 8, !tbaa !273
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %36, %29
  %41 = phi ptr [ %31, %29 ], [ %38, %36 ]
  %42 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %42, ptr noundef nonnull %6) #16
  br label %43

43:                                               ; preds = %40, %36, %29, %33
  %44 = getelementptr inbounds %struct.TransInfo, ptr %3, i64 0, i32 33
  %45 = load i8, ptr %44, align 8, !tbaa !34
  %46 = icmp eq i8 %45, 1
  br i1 %46, label %47, label %76

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.TransInfo, ptr %3, i64 0, i32 4
  %49 = load i32, ptr %48, align 8, !tbaa !58
  %50 = and i32 %49, 256
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load float, ptr %6, align 4, !tbaa !59
  store float %53, ptr %7, align 4, !tbaa !59
  %54 = load float, ptr %23, align 4, !tbaa !59
  %55 = getelementptr inbounds float, ptr %7, i64 1
  store float %54, ptr %55, align 4, !tbaa !59
  br label %83

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.TransInfo, ptr %3, i64 0, i32 55
  %58 = load ptr, ptr %57, align 8, !tbaa !48
  %59 = getelementptr inbounds %struct.ARegion, ptr %58, i64 0, i32 8
  %60 = load i16, ptr %59, align 2, !tbaa !49
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %56
  %63 = call i32 @ED_view3d_project_float_global(ptr noundef %58, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 8) #16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %83, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %57, align 8, !tbaa !48
  %67 = getelementptr inbounds %struct.ARegion, ptr %66, i64 0, i32 5
  %68 = load i16, ptr %67, align 8, !tbaa !85
  %69 = sitofp i16 %68 to float
  %70 = fmul float %69, 5.000000e-01
  store float %70, ptr %7, align 4, !tbaa !59
  %71 = getelementptr inbounds %struct.ARegion, ptr %66, i64 0, i32 6
  %72 = load i16, ptr %71, align 2, !tbaa !86
  %73 = sitofp i16 %72 to float
  %74 = fmul float %73, 5.000000e-01
  %75 = getelementptr inbounds float, ptr %7, i64 1
  store float %74, ptr %75, align 4, !tbaa !59
  br label %83

76:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store i64 0, ptr %5, align 8
  call void @projectIntViewEx(ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef 0)
  %77 = load i32, ptr %5, align 8, !tbaa !73
  %78 = sitofp i32 %77 to float
  store float %78, ptr %7, align 4, !tbaa !59
  %79 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  %80 = load i32, ptr %79, align 4, !tbaa !73
  %81 = sitofp i32 %80 to float
  %82 = getelementptr inbounds float, ptr %7, i64 1
  store float %81, ptr %82, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %83

83:                                               ; preds = %52, %56, %62, %65, %76
  call void @glPushMatrix() #16
  %84 = load i8, ptr %10, align 1, !tbaa !294
  switch i8 %84, label %190 [
    i8 1, label %85
    i8 3, label %101
    i8 4, label %104
    i8 2, label %107
    i8 5, label %187
  ]

85:                                               ; preds = %83
  call void @UI_ThemeColor(i32 noundef 192) #16
  call void @setlinestyle(i32 noundef 3) #16
  call void @glBegin(i32 noundef 3) #16
  %86 = getelementptr inbounds %struct.TransInfo, ptr %3, i64 0, i32 61
  call void @glVertex2iv(ptr noundef nonnull %86) #16
  call void @glVertex2fv(ptr noundef nonnull %7) #16
  call void @glEnd() #16
  %87 = sitofp i32 %1 to float
  %88 = sitofp i32 %2 to float
  call void @glTranslatef(float noundef %87, float noundef %88, float noundef 0.000000e+00) #16
  %89 = load float, ptr %7, align 4, !tbaa !59
  %90 = load i32, ptr %86, align 8, !tbaa !73
  %91 = sitofp i32 %90 to float
  %92 = fsub float %89, %91
  %93 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %94 = load float, ptr %93, align 4, !tbaa !59
  %95 = getelementptr inbounds %struct.TransInfo, ptr %3, i64 0, i32 61, i64 1
  %96 = load i32, ptr %95, align 4, !tbaa !73
  %97 = sitofp i32 %96 to float
  %98 = fsub float %94, %97
  %99 = call float @atan2f(float noundef %92, float noundef %98) #16
  %100 = fmul float %99, 0xC04CA5DC20000000
  call void @glRotatef(float noundef %100, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #16
  call void @setlinestyle(i32 noundef 0) #16
  call void @glLineWidth(float noundef 3.000000e+00) #16
  call void @glBegin(i32 noundef 1) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext 5) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext 15) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext 15) #16
  call void @glVertex2s(i16 noundef signext -5, i16 noundef signext 10) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext 15) #16
  call void @glVertex2s(i16 noundef signext 5, i16 noundef signext 10) #16
  call void @glEnd() #16
  call void @glBegin(i32 noundef 1) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext -5) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext -15) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext -15) #16
  call void @glVertex2s(i16 noundef signext 5, i16 noundef signext -10) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext -15) #16
  call void @glVertex2s(i16 noundef signext -5, i16 noundef signext -10) #16
  call void @glEnd() #16
  call void @glLineWidth(float noundef 1.000000e+00) #16
  br label %190

101:                                              ; preds = %83
  call void @UI_ThemeColor(i32 noundef 192) #16
  %102 = sitofp i32 %1 to float
  %103 = sitofp i32 %2 to float
  call void @glTranslatef(float noundef %102, float noundef %103, float noundef 0.000000e+00) #16
  call void @glLineWidth(float noundef 3.000000e+00) #16
  call void @glBegin(i32 noundef 1) #16
  call void @glVertex2s(i16 noundef signext 5, i16 noundef signext 0) #16
  call void @glVertex2s(i16 noundef signext 15, i16 noundef signext 0) #16
  call void @glVertex2s(i16 noundef signext 15, i16 noundef signext 0) #16
  call void @glVertex2s(i16 noundef signext 10, i16 noundef signext -5) #16
  call void @glVertex2s(i16 noundef signext 15, i16 noundef signext 0) #16
  call void @glVertex2s(i16 noundef signext 10, i16 noundef signext 5) #16
  call void @glEnd() #16
  call void @glBegin(i32 noundef 1) #16
  call void @glVertex2s(i16 noundef signext -5, i16 noundef signext 0) #16
  call void @glVertex2s(i16 noundef signext -15, i16 noundef signext 0) #16
  call void @glVertex2s(i16 noundef signext -15, i16 noundef signext 0) #16
  call void @glVertex2s(i16 noundef signext -10, i16 noundef signext 5) #16
  call void @glVertex2s(i16 noundef signext -15, i16 noundef signext 0) #16
  call void @glVertex2s(i16 noundef signext -10, i16 noundef signext -5) #16
  call void @glEnd() #16
  call void @glLineWidth(float noundef 1.000000e+00) #16
  br label %190

104:                                              ; preds = %83
  call void @UI_ThemeColor(i32 noundef 192) #16
  %105 = sitofp i32 %1 to float
  %106 = sitofp i32 %2 to float
  call void @glTranslatef(float noundef %105, float noundef %106, float noundef 0.000000e+00) #16
  call void @glLineWidth(float noundef 3.000000e+00) #16
  call void @glBegin(i32 noundef 1) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext 5) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext 15) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext 15) #16
  call void @glVertex2s(i16 noundef signext -5, i16 noundef signext 10) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext 15) #16
  call void @glVertex2s(i16 noundef signext 5, i16 noundef signext 10) #16
  call void @glEnd() #16
  call void @glBegin(i32 noundef 1) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext -5) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext -15) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext -15) #16
  call void @glVertex2s(i16 noundef signext 5, i16 noundef signext -10) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext -15) #16
  call void @glVertex2s(i16 noundef signext -5, i16 noundef signext -10) #16
  call void @glEnd() #16
  call void @glLineWidth(float noundef 1.000000e+00) #16
  br label %190

107:                                              ; preds = %83
  %108 = getelementptr inbounds %struct.TransInfo, ptr %3, i64 0, i32 61
  %109 = load i32, ptr %108, align 8, !tbaa !73
  %110 = sitofp i32 %109 to float
  %111 = load float, ptr %7, align 4, !tbaa !59
  %112 = fsub float %110, %111
  %113 = getelementptr inbounds %struct.TransInfo, ptr %3, i64 0, i32 61, i64 1
  %114 = load i32, ptr %113, align 4, !tbaa !73
  %115 = sitofp i32 %114 to float
  %116 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %117 = load float, ptr %116, align 4, !tbaa !59
  %118 = fsub float %115, %117
  %119 = call float @atan2f(float noundef %118, float noundef %112) #16
  %120 = call float @hypotf(float noundef %112, float noundef %118) #16
  %121 = fdiv float 1.500000e+01, %120
  %122 = fcmp olt float %121, 0x3FE921FB60000000
  %123 = select i1 %122, float %121, float 0x3FE921FB60000000
  %124 = fdiv float 5.000000e+00, %120
  %125 = fcmp olt float %124, 0x3FD0C15240000000
  %126 = select i1 %125, float %124, float 0x3FD0C15240000000
  call void @UI_ThemeColor(i32 noundef 192) #16
  call void @setlinestyle(i32 noundef 3) #16
  call void @glBegin(i32 noundef 3) #16
  call void @glVertex2iv(ptr noundef nonnull %108) #16
  call void @glVertex2fv(ptr noundef nonnull %7) #16
  call void @glEnd() #16
  %127 = load float, ptr %7, align 4, !tbaa !59
  %128 = load i32, ptr %108, align 8, !tbaa !73
  %129 = sitofp i32 %128 to float
  %130 = fsub float %127, %129
  %131 = sitofp i32 %1 to float
  %132 = fadd float %130, %131
  %133 = load float, ptr %116, align 4, !tbaa !59
  %134 = load i32, ptr %113, align 4, !tbaa !73
  %135 = sitofp i32 %134 to float
  %136 = fsub float %133, %135
  %137 = sitofp i32 %2 to float
  %138 = fadd float %136, %137
  call void @glTranslatef(float noundef %132, float noundef %138, float noundef 0.000000e+00) #16
  call void @setlinestyle(i32 noundef 0) #16
  call void @glLineWidth(float noundef 3.000000e+00) #16
  %139 = fsub float %119, %123
  %140 = fsub float %119, %126
  %141 = fsub float %140, %139
  %142 = fdiv float %141, 1.000000e+01
  call void @glBegin(i32 noundef 3) #16
  br label %143

143:                                              ; preds = %143, %107
  %144 = phi i32 [ 0, %107 ], [ %151, %143 ]
  %145 = phi float [ %139, %107 ], [ %150, %143 ]
  %146 = call float @cosf(float noundef %145) #16
  %147 = fmul float %120, %146
  %148 = call float @sinf(float noundef %145) #16
  %149 = fmul float %120, %148
  call void @glVertex2f(float noundef %147, float noundef %149) #16
  %150 = fadd float %142, %145
  %151 = add nuw nsw i32 %144, 1
  %152 = icmp eq i32 %151, 10
  br i1 %152, label %153, label %143, !llvm.loop !295

153:                                              ; preds = %143
  %154 = call float @cosf(float noundef %140) #16
  %155 = fmul float %120, %154
  %156 = call float @sinf(float noundef %140) #16
  %157 = fmul float %120, %156
  call void @glVertex2f(float noundef %155, float noundef %157) #16
  call void @glEnd() #16
  %158 = fadd float %119, %126
  %159 = fadd float %119, %123
  %160 = fsub float %159, %158
  %161 = fdiv float %160, 1.000000e+01
  call void @glBegin(i32 noundef 3) #16
  br label %162

162:                                              ; preds = %162, %153
  %163 = phi i32 [ 0, %153 ], [ %170, %162 ]
  %164 = phi float [ %158, %153 ], [ %169, %162 ]
  %165 = call float @cosf(float noundef %164) #16
  %166 = fmul float %120, %165
  %167 = call float @sinf(float noundef %164) #16
  %168 = fmul float %120, %167
  call void @glVertex2f(float noundef %166, float noundef %168) #16
  %169 = fadd float %161, %164
  %170 = add nuw nsw i32 %163, 1
  %171 = icmp eq i32 %170, 10
  br i1 %171, label %172, label %162, !llvm.loop !295

172:                                              ; preds = %162
  %173 = call float @cosf(float noundef %159) #16
  %174 = fmul float %120, %173
  %175 = call float @sinf(float noundef %159) #16
  %176 = fmul float %120, %175
  call void @glVertex2f(float noundef %174, float noundef %176) #16
  call void @glEnd() #16
  call void @glPushMatrix() #16
  %177 = call float @cosf(float noundef %139) #16
  %178 = fmul float %120, %177
  %179 = call float @sinf(float noundef %139) #16
  %180 = fmul float %120, %179
  call void @glTranslatef(float noundef %178, float noundef %180, float noundef 0.000000e+00) #16
  %181 = fmul float %139, 0x404CA5DC20000000
  call void @glRotatef(float noundef %181, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #16
  call void @glBegin(i32 noundef 1) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext 0) #16
  call void @glVertex2s(i16 noundef signext 5, i16 noundef signext 5) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext 0) #16
  call void @glVertex2s(i16 noundef signext -5, i16 noundef signext 5) #16
  call void @glEnd() #16
  call void @glPopMatrix() #16
  %182 = call float @cosf(float noundef %159) #16
  %183 = fmul float %120, %182
  %184 = call float @sinf(float noundef %159) #16
  %185 = fmul float %120, %184
  call void @glTranslatef(float noundef %183, float noundef %185, float noundef 0.000000e+00) #16
  %186 = fmul float %159, 0x404CA5DC20000000
  call void @glRotatef(float noundef %186, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #16
  call void @glBegin(i32 noundef 1) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext 0) #16
  call void @glVertex2s(i16 noundef signext -5, i16 noundef signext -5) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext 0) #16
  call void @glVertex2s(i16 noundef signext 5, i16 noundef signext -5) #16
  call void @glEnd() #16
  call void @glLineWidth(float noundef 1.000000e+00) #16
  br label %190

187:                                              ; preds = %83
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #16
  call void @UI_GetThemeColor3ubv(i32 noundef 24, ptr noundef nonnull %8) #16
  %188 = sitofp i32 %1 to float
  %189 = sitofp i32 %2 to float
  call void @glTranslatef(float noundef %188, float noundef %189, float noundef 0.000000e+00) #16
  call void @glLineWidth(float noundef 3.000000e+00) #16
  call void @UI_make_axis_color(ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext 88) #16
  call void @glColor3ubv(ptr noundef nonnull %9) #16
  call void @glBegin(i32 noundef 1) #16
  call void @glVertex2s(i16 noundef signext 5, i16 noundef signext 0) #16
  call void @glVertex2s(i16 noundef signext 15, i16 noundef signext 0) #16
  call void @glVertex2s(i16 noundef signext 15, i16 noundef signext 0) #16
  call void @glVertex2s(i16 noundef signext 10, i16 noundef signext -5) #16
  call void @glVertex2s(i16 noundef signext 15, i16 noundef signext 0) #16
  call void @glVertex2s(i16 noundef signext 10, i16 noundef signext 5) #16
  call void @glEnd() #16
  call void @glBegin(i32 noundef 1) #16
  call void @glVertex2s(i16 noundef signext -5, i16 noundef signext 0) #16
  call void @glVertex2s(i16 noundef signext -15, i16 noundef signext 0) #16
  call void @glVertex2s(i16 noundef signext -15, i16 noundef signext 0) #16
  call void @glVertex2s(i16 noundef signext -10, i16 noundef signext 5) #16
  call void @glVertex2s(i16 noundef signext -15, i16 noundef signext 0) #16
  call void @glVertex2s(i16 noundef signext -10, i16 noundef signext -5) #16
  call void @glEnd() #16
  call void @UI_make_axis_color(ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext 89) #16
  call void @glColor3ubv(ptr noundef nonnull %9) #16
  call void @glBegin(i32 noundef 1) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext 5) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext 15) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext 15) #16
  call void @glVertex2s(i16 noundef signext -5, i16 noundef signext 10) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext 15) #16
  call void @glVertex2s(i16 noundef signext 5, i16 noundef signext 10) #16
  call void @glEnd() #16
  call void @glBegin(i32 noundef 1) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext -5) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext -15) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext -15) #16
  call void @glVertex2s(i16 noundef signext 5, i16 noundef signext -10) #16
  call void @glVertex2s(i16 noundef signext 0, i16 noundef signext -15) #16
  call void @glVertex2s(i16 noundef signext -5, i16 noundef signext -10) #16
  call void @glEnd() #16
  call void @glLineWidth(float noundef 1.000000e+00) #16
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #16
  br label %190

190:                                              ; preds = %83, %187, %172, %104, %101, %85
  call void @glPopMatrix() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  br label %191

191:                                              ; preds = %190, %13, %4
  ret void
}

declare ptr @WM_keymap_active(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @initMouseInput(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_boolean_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @transformApply(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 53
  store ptr %0, ptr %3, align 8, !tbaa !95
  %4 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 17
  %5 = load i32, ptr %4, align 8, !tbaa !91
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 65
  %10 = load ptr, ptr %9, align 8, !tbaa !252
  %11 = icmp ne ptr %10, null
  %12 = and i32 %5, 2
  %13 = icmp eq i32 %12, 0
  %14 = or i1 %13, %11
  br i1 %14, label %22, label %15

15:                                               ; preds = %8, %2
  tail call void @selectConstraint(ptr noundef %1) #16
  %16 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !106
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 61
  tail call void %17(ptr noundef %1, ptr noundef nonnull %20) #16
  tail call fastcc void @viewRedrawForce(ptr noundef %0, ptr noundef %1)
  br label %21

21:                                               ; preds = %19, %15
  store i32 0, ptr %4, align 8, !tbaa !91
  br label %24

22:                                               ; preds = %8
  br i1 %13, label %24, label %23

23:                                               ; preds = %22
  tail call fastcc void @viewRedrawForce(ptr noundef %0, ptr noundef %1)
  br label %24

24:                                               ; preds = %22, %23, %21
  %25 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !58
  %27 = and i32 %26, 16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 3
  store i16 2, ptr %30, align 4, !tbaa !98
  br label %31

31:                                               ; preds = %29, %24
  store ptr null, ptr %3, align 8, !tbaa !95
  ret void
}

declare void @selectConstraint(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @viewRedrawForce(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  %4 = load i8, ptr %3, align 8, !tbaa !34
  switch i8 %4, label %86 [
    i8 1, label %5
    i8 12, label %39
    i8 2, label %40
    i8 13, label %41
    i8 16, label %42
    i8 8, label %43
    i8 6, label %44
    i8 20, label %72
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !58
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %12 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  tail call void @WM_paint_cursor_tag_redraw(ptr noundef %11, ptr noundef %13) #16
  br label %86

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !99
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 85065728, i32 85196800
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef %19, ptr noundef null) #16
  %20 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 58
  %21 = load ptr, ptr %20, align 8, !tbaa !296
  %22 = icmp eq ptr %21, null
  br i1 %22, label %86, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %25 = load ptr, ptr %24, align 8, !tbaa !109
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 20
  %29 = load ptr, ptr %28, align 8, !tbaa !297
  %30 = getelementptr inbounds %struct.ToolSettings, ptr %29, i64 0, i32 21
  %31 = load i16, ptr %30, align 8, !tbaa !298
  %32 = and i16 %31, 1
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %86, label %38

34:                                               ; preds = %23
  %35 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !299
  %36 = and i16 %35, 1
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %86, label %38

38:                                               ; preds = %34, %27
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85524480, ptr noundef null) #16
  br label %86

39:                                               ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #16
  br label %86

40:                                               ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #16
  br label %86

41:                                               ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #16
  br label %86

42:                                               ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252772352, ptr noundef null) #16
  br label %86

43:                                               ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef null) #16
  br label %86

44:                                               ; preds = %2
  %45 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %46 = load i32, ptr %45, align 8, !tbaa !58
  %47 = and i32 %46, 128
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %50) #16
  br label %86

51:                                               ; preds = %44
  %52 = and i32 %46, 256
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = tail call ptr @CTX_wm_window(ptr noundef %0) #16
  %56 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %57 = load ptr, ptr %56, align 8, !tbaa !48
  tail call void @WM_paint_cursor_tag_redraw(ptr noundef %55, ptr noundef %57) #16
  br label %86

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %60 = load ptr, ptr %59, align 8, !tbaa !70
  %61 = getelementptr inbounds %struct.ScrArea, ptr %60, i64 0, i32 19
  %62 = load ptr, ptr %61, align 8, !tbaa !71
  %63 = getelementptr inbounds %struct.SpaceImage, ptr %62, i64 0, i32 21
  %64 = load i16, ptr %63, align 2, !tbaa !300
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  %68 = load ptr, ptr %67, align 8, !tbaa !100
  %69 = getelementptr inbounds %struct.Object, ptr %68, i64 0, i32 19
  %70 = load ptr, ptr %69, align 8, !tbaa !274
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %70) #16
  br label %86

71:                                               ; preds = %58
  tail call void @ED_area_tag_redraw(ptr noundef %60) #16
  br label %86

72:                                               ; preds = %2
  %73 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %74 = load ptr, ptr %73, align 8, !tbaa !70
  %75 = getelementptr inbounds %struct.ScrArea, ptr %74, i64 0, i32 19
  %76 = load ptr, ptr %75, align 8, !tbaa !71
  %77 = tail call zeroext i8 @ED_space_clip_check_show_trackedit(ptr noundef %76) #16
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %72
  %80 = tail call ptr @ED_space_clip_get_clip(ptr noundef %76) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %80) #16
  br label %86

81:                                               ; preds = %72
  %82 = tail call zeroext i8 @ED_space_clip_check_show_maskedit(ptr noundef %76) #16
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %85) #16
  br label %86

86:                                               ; preds = %79, %84, %81, %2, %66, %71, %39, %41, %43, %49, %54, %42, %40, %10, %38, %34, %27, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @transformEnd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 53
  store ptr %0, ptr %3, align 8, !tbaa !95
  %4 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 3
  %5 = load i16, ptr %4, align 4, !tbaa !98
  switch i16 %5, label %11 [
    i16 0, label %48
    i16 1, label %48
    i16 3, label %6
  ]

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 8, !tbaa !87
  %8 = icmp eq i32 %7, 28
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call fastcc void @doEdgeSlide(ptr noundef nonnull %1, float noundef 0.000000e+00)
  br label %10

10:                                               ; preds = %9, %6
  tail call void @restoreTransObjects(ptr noundef nonnull %1) #16
  br label %11

11:                                               ; preds = %2, %10
  %12 = phi i32 [ 2, %10 ], [ 4, %2 ]
  tail call void @special_aftertrans_update(ptr noundef %0, ptr noundef %1) #16
  tail call void @postTrans(ptr noundef %0, ptr noundef %1) #16
  %13 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %14 = load ptr, ptr %13, align 8, !tbaa !70
  tail call void @ED_area_headerprint(ptr noundef %14, ptr noundef null) #16
  %15 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  %16 = load i8, ptr %15, align 8, !tbaa !34
  %17 = icmp eq i8 %16, 1
  br i1 %17, label %18, label %47

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %20 = load ptr, ptr %19, align 8, !tbaa !109
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Scene, ptr %20, i64 0, i32 20
  %24 = load ptr, ptr %23, align 8, !tbaa !297
  %25 = getelementptr inbounds %struct.ToolSettings, ptr %24, i64 0, i32 21
  %26 = load i16, ptr %25, align 8, !tbaa !298
  %27 = and i16 %26, 1
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %34, label %33

29:                                               ; preds = %18
  %30 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !299
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29, %22
  tail call void @WM_main_add_notifier(i32 noundef 239468545, ptr noundef null) #16
  br label %34

34:                                               ; preds = %33, %29, %22
  %35 = load i32, ptr %1, align 8, !tbaa !87
  %36 = icmp eq i32 %35, 28
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 57
  %39 = load ptr, ptr %38, align 8, !tbaa !149
  %40 = getelementptr inbounds %struct.ToolSettings, ptr %39, i64 0, i32 10
  %41 = load i8, ptr %40, align 1, !tbaa !150
  %42 = and i8 %41, 4
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef null) #16
  br label %45

45:                                               ; preds = %44, %37, %34
  %46 = tail call ptr @CTX_data_scene(ptr noundef %0) #16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68288512, ptr noundef %46) #16
  br label %47

47:                                               ; preds = %11, %45
  tail call fastcc void @viewRedrawForce(ptr noundef %0, ptr noundef %1)
  br label %48

48:                                               ; preds = %2, %2, %47
  %49 = phi i32 [ %12, %47 ], [ 1, %2 ], [ 1, %2 ]
  store ptr null, ptr %3, align 8, !tbaa !95
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal fastcc void @doEdgeSlide(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %6 = load ptr, ptr %5, align 8, !tbaa !218
  %7 = load ptr, ptr %6, align 8, !tbaa !205
  %8 = getelementptr inbounds %struct.EdgeSlideData, ptr %6, i64 0, i32 8
  store float %1, ptr %8, align 8, !tbaa !217
  %9 = getelementptr inbounds %struct.EdgeSlideData, ptr %6, i64 0, i32 9
  %10 = load i8, ptr %9, align 4, !tbaa !162
  %11 = icmp eq i8 %10, 1
  br i1 %11, label %12, label %74

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.EdgeSlideData, ptr %6, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !206
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %181

16:                                               ; preds = %12
  %17 = fcmp ogt float %1, 0.000000e+00
  br label %18

18:                                               ; preds = %16, %67
  %19 = phi ptr [ %7, %16 ], [ %72, %67 ]
  %20 = phi i32 [ 0, %16 ], [ %71, %67 ]
  br i1 %17, label %21, label %44

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %19, i64 0, i32 5
  %23 = load float, ptr %22, align 4, !tbaa !59
  %24 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %19, i64 0, i32 5, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !59
  %26 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %19, i64 0, i32 5, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !59
  %28 = fmul float %23, %1
  %29 = fmul float %25, %1
  %30 = fmul float %27, %1
  %31 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %19, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !197
  %33 = getelementptr inbounds %struct.BMVert, ptr %32, i64 0, i32 2
  %34 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %19, i64 0, i32 3
  %35 = load float, ptr %34, align 4, !tbaa !59
  %36 = fadd float %28, %35
  store float %36, ptr %33, align 4, !tbaa !59
  %37 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %19, i64 0, i32 3, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !59
  %39 = fadd float %29, %38
  %40 = getelementptr inbounds %struct.BMVert, ptr %32, i64 0, i32 2, i64 1
  store float %39, ptr %40, align 4, !tbaa !59
  %41 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %19, i64 0, i32 3, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !59
  %43 = fadd float %30, %42
  br label %67

44:                                               ; preds = %18
  %45 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %19, i64 0, i32 6
  %46 = load float, ptr %45, align 4, !tbaa !59
  %47 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %19, i64 0, i32 6, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !59
  %49 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %19, i64 0, i32 6, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !59
  %51 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %19, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !197
  %53 = getelementptr inbounds %struct.BMVert, ptr %52, i64 0, i32 2
  %54 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %19, i64 0, i32 3
  %55 = load float, ptr %54, align 4, !tbaa !59
  %56 = fmul float %46, %1
  %57 = fsub float %55, %56
  store float %57, ptr %53, align 4, !tbaa !59
  %58 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %19, i64 0, i32 3, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !59
  %60 = fmul float %48, %1
  %61 = fsub float %59, %60
  %62 = getelementptr inbounds %struct.BMVert, ptr %52, i64 0, i32 2, i64 1
  store float %61, ptr %62, align 4, !tbaa !59
  %63 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %19, i64 0, i32 3, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !59
  %65 = fmul float %50, %1
  %66 = fsub float %64, %65
  br label %67

67:                                               ; preds = %44, %21
  %68 = phi ptr [ %52, %44 ], [ %32, %21 ]
  %69 = phi float [ %66, %44 ], [ %43, %21 ]
  %70 = getelementptr inbounds %struct.BMVert, ptr %68, i64 0, i32 2, i64 2
  store float %69, ptr %70, align 4, !tbaa !59
  %71 = add nuw nsw i32 %20, 1
  %72 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %19, i64 1
  %73 = icmp eq i32 %71, %14
  br i1 %73, label %181, label %18, !llvm.loop !301

74:                                               ; preds = %2
  %75 = getelementptr inbounds %struct.EdgeSlideData, ptr %6, i64 0, i32 11
  %76 = load i32, ptr %75, align 8, !tbaa !163
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %7, i64 %77, i32 4
  %79 = load float, ptr %78, align 4, !tbaa !214
  %80 = getelementptr inbounds %struct.EdgeSlideData, ptr %6, i64 0, i32 10
  %81 = load i8, ptr %80, align 1, !tbaa !164
  %82 = icmp eq i8 %81, 0
  %83 = fneg float %1
  %84 = select i1 %82, float %83, float %1
  %85 = fadd float %84, 1.000000e+00
  %86 = fmul float %85, 5.000000e-01
  %87 = fmul float %79, %86
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  %88 = getelementptr inbounds %struct.EdgeSlideData, ptr %6, i64 0, i32 1
  %89 = load i32, ptr %88, align 8, !tbaa !206
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %180

91:                                               ; preds = %74
  %92 = getelementptr inbounds float, ptr %3, i64 1
  %93 = getelementptr inbounds float, ptr %3, i64 2
  %94 = getelementptr inbounds float, ptr %4, i64 1
  %95 = getelementptr inbounds float, ptr %4, i64 2
  br label %96

96:                                               ; preds = %91, %175
  %97 = phi ptr [ %7, %91 ], [ %177, %175 ]
  %98 = phi i32 [ 0, %91 ], [ %176, %175 ]
  %99 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %97, i64 0, i32 4
  %100 = load float, ptr %99, align 4, !tbaa !214
  %101 = fcmp ogt float %100, 0x3E80000000000000
  br i1 %101, label %102, label %175

102:                                              ; preds = %96
  %103 = fcmp olt float %100, %87
  %104 = select i1 %103, float %100, float %87
  %105 = fdiv float %104, %100
  %106 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %97, i64 0, i32 3
  %107 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %97, i64 0, i32 5
  %108 = load float, ptr %106, align 4, !tbaa !59
  %109 = load float, ptr %107, align 4, !tbaa !59
  %110 = fadd float %108, %109
  store float %110, ptr %3, align 4, !tbaa !59
  %111 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %97, i64 0, i32 3, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !59
  %113 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %97, i64 0, i32 5, i64 1
  %114 = load float, ptr %113, align 4, !tbaa !59
  %115 = fadd float %112, %114
  store float %115, ptr %92, align 4, !tbaa !59
  %116 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %97, i64 0, i32 3, i64 2
  %117 = load float, ptr %116, align 4, !tbaa !59
  %118 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %97, i64 0, i32 5, i64 2
  %119 = load float, ptr %118, align 4, !tbaa !59
  %120 = fadd float %117, %119
  store float %120, ptr %93, align 4, !tbaa !59
  %121 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %97, i64 0, i32 6
  %122 = load float, ptr %121, align 4, !tbaa !59
  %123 = fadd float %108, %122
  store float %123, ptr %4, align 4, !tbaa !59
  %124 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %97, i64 0, i32 6, i64 1
  %125 = load float, ptr %124, align 4, !tbaa !59
  %126 = fadd float %112, %125
  store float %126, ptr %94, align 4, !tbaa !59
  %127 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %97, i64 0, i32 6, i64 2
  %128 = load float, ptr %127, align 4, !tbaa !59
  %129 = fadd float %117, %128
  store float %129, ptr %95, align 4, !tbaa !59
  %130 = load i8, ptr %80, align 1, !tbaa !164
  %131 = icmp eq i8 %130, 0
  %132 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %97, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !197
  %134 = getelementptr inbounds %struct.BMVert, ptr %133, i64 0, i32 2
  br i1 %131, label %155, label %135

135:                                              ; preds = %102
  %136 = call float @line_point_factor_v3(ptr noundef nonnull %106, ptr noundef nonnull %4, ptr noundef nonnull %3) #16
  %137 = fsub float %105, %136
  %138 = call float @llvm.fabs.f32(float %137)
  %139 = fcmp olt float %138, 0x3E80000000000000
  br i1 %139, label %140, label %148

140:                                              ; preds = %135
  %141 = load float, ptr %106, align 4, !tbaa !59
  store float %141, ptr %134, align 4, !tbaa !59
  %142 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %97, i64 0, i32 3, i64 1
  %143 = load float, ptr %142, align 4, !tbaa !59
  %144 = getelementptr inbounds %struct.BMVert, ptr %133, i64 0, i32 2, i64 1
  store float %143, ptr %144, align 4, !tbaa !59
  %145 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %97, i64 0, i32 3, i64 2
  %146 = load float, ptr %145, align 4, !tbaa !59
  %147 = getelementptr inbounds %struct.BMVert, ptr %133, i64 0, i32 2, i64 2
  store float %146, ptr %147, align 4, !tbaa !59
  br label %175

148:                                              ; preds = %135
  %149 = fcmp olt float %137, 0.000000e+00
  br i1 %149, label %150, label %152

150:                                              ; preds = %148
  %151 = fdiv float %105, %136
  call void @interp_v3_v3v3(ptr noundef nonnull %134, ptr noundef nonnull %4, ptr noundef nonnull %106, float noundef %151) #16
  br label %175

152:                                              ; preds = %148
  %153 = fsub float 1.000000e+00, %136
  %154 = fdiv float %137, %153
  call void @interp_v3_v3v3(ptr noundef nonnull %134, ptr noundef nonnull %106, ptr noundef nonnull %3, float noundef %154) #16
  br label %175

155:                                              ; preds = %102
  %156 = call float @line_point_factor_v3(ptr noundef nonnull %106, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %157 = fsub float %105, %156
  %158 = call float @llvm.fabs.f32(float %157)
  %159 = fcmp olt float %158, 0x3E80000000000000
  br i1 %159, label %160, label %168

160:                                              ; preds = %155
  %161 = load float, ptr %106, align 4, !tbaa !59
  store float %161, ptr %134, align 4, !tbaa !59
  %162 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %97, i64 0, i32 3, i64 1
  %163 = load float, ptr %162, align 4, !tbaa !59
  %164 = getelementptr inbounds %struct.BMVert, ptr %133, i64 0, i32 2, i64 1
  store float %163, ptr %164, align 4, !tbaa !59
  %165 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %97, i64 0, i32 3, i64 2
  %166 = load float, ptr %165, align 4, !tbaa !59
  %167 = getelementptr inbounds %struct.BMVert, ptr %133, i64 0, i32 2, i64 2
  store float %166, ptr %167, align 4, !tbaa !59
  br label %175

168:                                              ; preds = %155
  %169 = fcmp olt float %157, 0.000000e+00
  br i1 %169, label %170, label %172

170:                                              ; preds = %168
  %171 = fdiv float %105, %156
  call void @interp_v3_v3v3(ptr noundef nonnull %134, ptr noundef nonnull %3, ptr noundef nonnull %106, float noundef %171) #16
  br label %175

172:                                              ; preds = %168
  %173 = fsub float 1.000000e+00, %156
  %174 = fdiv float %157, %173
  call void @interp_v3_v3v3(ptr noundef nonnull %134, ptr noundef nonnull %106, ptr noundef nonnull %4, float noundef %174) #16
  br label %175

175:                                              ; preds = %172, %170, %160, %152, %150, %140, %96
  %176 = add nuw nsw i32 %98, 1
  %177 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %97, i64 1
  %178 = load i32, ptr %88, align 8, !tbaa !206
  %179 = icmp slt i32 %176, %178
  br i1 %179, label %96, label %180, !llvm.loop !302

180:                                              ; preds = %175, %74
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  br label %181

181:                                              ; preds = %67, %12, %180
  call void @projectEdgeSlideData(ptr noundef %0, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @projectEdgeSlideData(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %6 = load ptr, ptr %5, align 8, !tbaa !218
  %7 = getelementptr inbounds %struct.EdgeSlideData, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !216
  %9 = getelementptr inbounds %struct.EdgeSlideData, ptr %6, i64 0, i32 6
  %10 = load i8, ptr %9, align 8, !tbaa !160
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %207, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.EdgeSlideData, ptr %6, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !206
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %207

16:                                               ; preds = %12
  %17 = load ptr, ptr %6, align 8, !tbaa !205
  %18 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  %19 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %20 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %21 = getelementptr inbounds %struct.EdgeSlideData, ptr %6, i64 0, i32 2
  %22 = getelementptr inbounds %struct.EdgeSlideData, ptr %6, i64 0, i32 8
  %23 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %24 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %25 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %26 = getelementptr inbounds %struct.EdgeSlideData, ptr %6, i64 0, i32 8
  %27 = icmp eq i8 %1, 0
  %28 = getelementptr inbounds %struct.EdgeSlideData, ptr %6, i64 0, i32 7
  br label %29

29:                                               ; preds = %16, %202
  %30 = phi ptr [ %17, %16 ], [ %203, %202 ]
  %31 = phi i32 [ 0, %16 ], [ %204, %202 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #16
  %32 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %30, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !197
  store i8 6, ptr %18, align 4, !tbaa !165
  store ptr @bmiter__loop_of_vert_begin, ptr %19, align 8, !tbaa !167
  store ptr @bmiter__loop_of_vert_step, ptr %20, align 8, !tbaa !168
  store ptr %33, ptr %3, align 8, !tbaa !170
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %3) #16
  %34 = load ptr, ptr %20, align 8, !tbaa !168
  %35 = call ptr %34(ptr noundef nonnull %3) #16
  %36 = icmp eq ptr %35, null
  br i1 %36, label %202, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %30, i64 0, i32 1
  %39 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %30, i64 0, i32 1
  br label %40

40:                                               ; preds = %37, %198
  %41 = phi ptr [ %35, %37 ], [ %200, %198 ]
  %42 = load ptr, ptr %21, align 8, !tbaa !210
  %43 = getelementptr inbounds %struct.BMLoop, ptr %41, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !303
  %45 = call ptr @BLI_ghash_lookup(ptr noundef %42, ptr noundef %44) #16
  %46 = getelementptr inbounds %struct.BMLoop, ptr %41, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !196
  %48 = getelementptr inbounds %struct.BMHeader, ptr %47, i64 0, i32 3
  %49 = load i8, ptr %48, align 1, !tbaa !171
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.BMLoop, ptr %41, i64 0, i32 7
  %54 = load ptr, ptr %53, align 8, !tbaa !304
  %55 = getelementptr inbounds %struct.BMLoop, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !196
  %57 = getelementptr inbounds %struct.BMHeader, ptr %56, i64 0, i32 3
  %58 = load i8, ptr %57, align 1, !tbaa !171
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %97, label %61

61:                                               ; preds = %52
  br i1 %51, label %62, label %65

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.BMLoop, ptr %41, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !304
  br label %65

65:                                               ; preds = %40, %62, %61
  %66 = phi ptr [ %41, %61 ], [ %64, %62 ], [ %41, %40 ]
  %67 = load float, ptr %22, align 8, !tbaa !217
  %68 = fcmp olt float %67, 0.000000e+00
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.BMLoop, ptr %66, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !183
  %72 = getelementptr inbounds %struct.BMLoop, ptr %71, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !303
  %74 = load ptr, ptr %38, align 8, !tbaa !201
  %75 = call zeroext i8 @BM_vert_in_face(ptr noundef %73, ptr noundef %74) #16
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %94, label %87

77:                                               ; preds = %65
  %78 = fcmp ogt float %67, 0.000000e+00
  br i1 %78, label %79, label %94

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.BMLoop, ptr %66, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !183
  %82 = getelementptr inbounds %struct.BMLoop, ptr %81, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !303
  %84 = load ptr, ptr %30, align 8, !tbaa !200
  %85 = call zeroext i8 @BM_vert_in_face(ptr noundef %83, ptr noundef %84) #16
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %79, %69
  %88 = phi ptr [ %70, %69 ], [ %80, %79 ]
  %89 = load ptr, ptr %21, align 8, !tbaa !210
  %90 = load ptr, ptr %88, align 8, !tbaa !183
  %91 = getelementptr inbounds %struct.BMLoop, ptr %90, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !303
  %93 = call ptr @BLI_ghash_lookup(ptr noundef %89, ptr noundef %92) #16
  br label %94

94:                                               ; preds = %87, %77, %79, %69
  %95 = phi ptr [ %45, %69 ], [ %45, %79 ], [ %45, %77 ], [ %93, %87 ]
  %96 = icmp eq ptr %95, null
  br i1 %96, label %198, label %186

97:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #16
  %98 = load ptr, ptr %32, align 8, !tbaa !197
  store i8 4, ptr %23, align 4, !tbaa !165
  store ptr @bmiter__edge_of_vert_begin, ptr %24, align 8, !tbaa !167
  store ptr @bmiter__edge_of_vert_step, ptr %25, align 8, !tbaa !168
  store ptr %98, ptr %4, align 8, !tbaa !170
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %4) #16
  %99 = load ptr, ptr %25, align 8, !tbaa !168
  %100 = call ptr %99(ptr noundef nonnull %4) #16
  %101 = icmp eq ptr %100, null
  br i1 %101, label %184, label %102

102:                                              ; preds = %97, %108
  %103 = phi ptr [ %110, %108 ], [ %100, %97 ]
  %104 = getelementptr inbounds %struct.BMHeader, ptr %103, i64 0, i32 3
  %105 = load i8, ptr %104, align 1, !tbaa !171
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load ptr, ptr %25, align 8, !tbaa !168
  %110 = call ptr %109(ptr noundef nonnull %4) #16
  %111 = icmp eq ptr %110, null
  br i1 %111, label %184, label %102, !llvm.loop !305

112:                                              ; preds = %102
  %113 = load float, ptr %26, align 8, !tbaa !217
  %114 = fcmp olt float %113, 0.000000e+00
  br i1 %114, label %115, label %132

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.BMEdge, ptr %103, i64 0, i32 4
  %117 = load ptr, ptr %116, align 8, !tbaa !180
  %118 = getelementptr inbounds %struct.BMLoop, ptr %117, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !303
  %120 = load ptr, ptr %39, align 8, !tbaa !201
  %121 = call zeroext i8 @BM_vert_in_face(ptr noundef %119, ptr noundef %120) #16
  %122 = icmp eq i8 %121, 0
  %123 = load ptr, ptr %116, align 8, !tbaa !180
  br i1 %122, label %124, label %156

124:                                              ; preds = %115
  %125 = getelementptr inbounds %struct.BMLoop, ptr %123, i64 0, i32 4
  %126 = load ptr, ptr %125, align 8, !tbaa !183
  %127 = getelementptr inbounds %struct.BMLoop, ptr %126, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !303
  %129 = load ptr, ptr %39, align 8, !tbaa !201
  %130 = call zeroext i8 @BM_vert_in_face(ptr noundef %128, ptr noundef %129) #16
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %156, label %151

132:                                              ; preds = %112
  %133 = fcmp ogt float %113, 0.000000e+00
  br i1 %133, label %134, label %156

134:                                              ; preds = %132
  %135 = getelementptr inbounds %struct.BMEdge, ptr %103, i64 0, i32 4
  %136 = load ptr, ptr %135, align 8, !tbaa !180
  %137 = getelementptr inbounds %struct.BMLoop, ptr %136, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !303
  %139 = load ptr, ptr %30, align 8, !tbaa !200
  %140 = call zeroext i8 @BM_vert_in_face(ptr noundef %138, ptr noundef %139) #16
  %141 = icmp eq i8 %140, 0
  %142 = load ptr, ptr %135, align 8, !tbaa !180
  br i1 %141, label %143, label %156

143:                                              ; preds = %134
  %144 = getelementptr inbounds %struct.BMLoop, ptr %142, i64 0, i32 4
  %145 = load ptr, ptr %144, align 8, !tbaa !183
  %146 = getelementptr inbounds %struct.BMLoop, ptr %145, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !303
  %148 = load ptr, ptr %30, align 8, !tbaa !200
  %149 = call zeroext i8 @BM_vert_in_face(ptr noundef %147, ptr noundef %148) #16
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %143, %124
  %152 = phi ptr [ %116, %124 ], [ %135, %143 ]
  %153 = load ptr, ptr %152, align 8, !tbaa !180
  %154 = getelementptr inbounds %struct.BMLoop, ptr %153, i64 0, i32 4
  %155 = load ptr, ptr %154, align 8, !tbaa !183
  br label %156

156:                                              ; preds = %151, %134, %115, %132, %143, %124
  %157 = phi ptr [ null, %124 ], [ null, %143 ], [ null, %132 ], [ %123, %115 ], [ %142, %134 ], [ %155, %151 ]
  %158 = icmp eq ptr %157, null
  br i1 %158, label %184, label %159

159:                                              ; preds = %156
  %160 = load ptr, ptr %32, align 8, !tbaa !197
  %161 = call ptr @BM_loop_other_edge_loop(ptr noundef nonnull %157, ptr noundef %160) #16
  %162 = getelementptr inbounds %struct.BMLoop, ptr %161, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !196
  %164 = getelementptr inbounds %struct.BMEdge, ptr %163, i64 0, i32 4
  %165 = load ptr, ptr %164, align 8, !tbaa !180
  %166 = icmp eq ptr %165, null
  br i1 %166, label %172, label %167

167:                                              ; preds = %159
  %168 = getelementptr inbounds %struct.BMLoop, ptr %165, i64 0, i32 4
  %169 = load ptr, ptr %168, align 8, !tbaa !183
  %170 = icmp eq ptr %169, %165
  %171 = zext i1 %170 to i8
  br label %172

172:                                              ; preds = %159, %167
  %173 = phi i8 [ 0, %159 ], [ %171, %167 ]
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.BMLoop, ptr %161, i64 0, i32 4
  %177 = load ptr, ptr %176, align 8, !tbaa !183
  br label %178

178:                                              ; preds = %172, %175
  %179 = phi ptr [ %177, %175 ], [ %41, %172 ]
  %180 = load ptr, ptr %21, align 8, !tbaa !210
  %181 = getelementptr inbounds %struct.BMLoop, ptr %179, i64 0, i32 3
  %182 = load ptr, ptr %181, align 8, !tbaa !303
  %183 = call ptr @BLI_ghash_lookup(ptr noundef %180, ptr noundef %182) #16
  br label %184

184:                                              ; preds = %108, %97, %156, %178
  %185 = phi ptr [ %183, %178 ], [ %45, %156 ], [ %45, %97 ], [ %45, %108 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #16
  br label %186

186:                                              ; preds = %94, %184
  %187 = phi ptr [ %95, %94 ], [ %185, %184 ]
  %188 = load ptr, ptr %8, align 8, !tbaa !146
  call void @BM_loop_interp_from_face(ptr noundef %188, ptr noundef nonnull %41, ptr noundef %187, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  br i1 %27, label %194, label %189

189:                                              ; preds = %186
  %190 = load ptr, ptr %8, align 8, !tbaa !146
  call void @BM_loop_interp_multires(ptr noundef %190, ptr noundef nonnull %41, ptr noundef %187) #16
  %191 = icmp eq ptr %45, %187
  br i1 %191, label %194, label %192

192:                                              ; preds = %189
  %193 = load ptr, ptr %8, align 8, !tbaa !146
  call void @BM_loop_interp_multires(ptr noundef %193, ptr noundef nonnull %41, ptr noundef %45) #16
  br label %194

194:                                              ; preds = %189, %192, %186
  %195 = load ptr, ptr %28, align 8, !tbaa !211
  %196 = load ptr, ptr %8, align 8, !tbaa !146
  %197 = load ptr, ptr %43, align 8, !tbaa !303
  call void @BM_elem_attrs_copy(ptr noundef %195, ptr noundef %196, ptr noundef %45, ptr noundef %197) #16
  br label %198

198:                                              ; preds = %94, %194
  %199 = load ptr, ptr %20, align 8, !tbaa !168
  %200 = call ptr %199(ptr noundef nonnull %3) #16
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %40, !llvm.loop !306

202:                                              ; preds = %198, %29
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  %203 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %30, i64 1
  %204 = add nuw nsw i32 %31, 1
  %205 = load i32, ptr %13, align 8, !tbaa !206
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %29, label %207, !llvm.loop !307

207:                                              ; preds = %202, %12, %2
  ret void
}

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_vert_in_face(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_loop_other_edge_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_loop_interp_from_face(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_loop_interp_multires(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @freeEdgeSlideTempFaces(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.EdgeSlideData, ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 8, !tbaa !160
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.EdgeSlideData, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !211
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @BM_mesh_free(ptr noundef nonnull %7) #16
  store ptr null, ptr %6, align 8, !tbaa !211
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.EdgeSlideData, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !210
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @BLI_ghash_free(ptr noundef nonnull %12, ptr noundef null, ptr noundef null) #16
  store ptr null, ptr %11, align 8, !tbaa !210
  br label %15

15:                                               ; preds = %10, %14, %1
  ret void
}

declare void @BM_mesh_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @freeEdgeSlideVerts(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %3 = load ptr, ptr %2, align 8, !tbaa !218
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.EdgeSlideData, ptr %3, i64 0, i32 6
  %7 = load i8, ptr %6, align 8, !tbaa !160
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.EdgeSlideData, ptr %3, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !211
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @BM_mesh_free(ptr noundef nonnull %11) #16
  store ptr null, ptr %10, align 8, !tbaa !211
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.EdgeSlideData, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !210
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @BLI_ghash_free(ptr noundef nonnull %16, ptr noundef null, ptr noundef null) #16
  store ptr null, ptr %15, align 8, !tbaa !210
  br label %19

19:                                               ; preds = %5, %14, %18
  %20 = getelementptr inbounds %struct.EdgeSlideData, ptr %3, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !216
  %22 = load ptr, ptr %21, align 8, !tbaa !146
  tail call void @bmesh_edit_end(ptr noundef %22, i32 noundef 1) #16
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !148
  %24 = load ptr, ptr %3, align 8, !tbaa !205
  tail call void %23(ptr noundef %24) #16
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !148
  tail call void %25(ptr noundef nonnull %3) #16
  store ptr null, ptr %2, align 8, !tbaa !218
  tail call void @recalcData(ptr noundef %0) #16
  br label %26

26:                                               ; preds = %1, %19
  ret void
}

declare void @bmesh_edit_end(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @recalcData(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @freeVertSlideVerts(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %3 = load ptr, ptr %2, align 8, !tbaa !218
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.VertSlideData, ptr %3, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !235
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = load i32, ptr %6, align 8, !tbaa !235
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %9
  %13 = load ptr, ptr %3, align 8, !tbaa !234
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i32 [ %23, %14 ], [ 0, %12 ]
  %16 = phi ptr [ %24, %14 ], [ %13, %12 ]
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !148
  %18 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %16, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !230
  tail call void %17(ptr noundef %19) #16
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !148
  %21 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %16, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !229
  tail call void %20(ptr noundef %22) #16
  %23 = add nuw nsw i32 %15, 1
  %24 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %16, i64 1
  %25 = load i32, ptr %6, align 8, !tbaa !235
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %14, label %27, !llvm.loop !308

27:                                               ; preds = %14, %9, %5
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !148
  %29 = load ptr, ptr %3, align 8, !tbaa !234
  tail call void %28(ptr noundef %29) #16
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !148
  tail call void %30(ptr noundef nonnull %3) #16
  store ptr null, ptr %2, align 8, !tbaa !218
  tail call void @recalcData(ptr noundef %0) #16
  br label %31

31:                                               ; preds = %1, %27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @checkUseAxisMatrix(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !99
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 32
  %8 = load i16, ptr %7, align 2, !tbaa !240
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %12 = load ptr, ptr %11, align 8, !tbaa !100
  %13 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !101
  switch i16 %14, label %15 [
    i16 1, label %16
    i16 2, label %16
    i16 5, label %16
    i16 25, label %16
  ]

15:                                               ; preds = %10, %6, %1
  br label %16

16:                                               ; preds = %10, %10, %10, %10, %15
  %17 = phi i8 [ 0, %15 ], [ 1, %10 ], [ 1, %10 ], [ 1, %10 ], [ 1, %10 ]
  ret i8 %17
}

declare void @drawConstraint(ptr noundef) local_unnamed_addr #2

declare void @drawPropCircle(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @drawSnapping(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

declare float @UI_GetThemeValuef(i32 noundef) local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glPushAttrib(i32 noundef) local_unnamed_addr #2

declare void @glPushMatrix() local_unnamed_addr #2

declare void @glMultMatrixf(ptr noundef) local_unnamed_addr #2

declare void @glLineWidth(float noundef) local_unnamed_addr #2

declare void @UI_ThemeColorShadeAlpha(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glVertex3fv(ptr noundef) local_unnamed_addr #2

declare void @bglEnd() local_unnamed_addr #2

declare void @glPointSize(float noundef) local_unnamed_addr #2

declare void @bglBegin(i32 noundef) local_unnamed_addr #2

declare void @bglVertex3fv(ptr noundef) local_unnamed_addr #2

declare void @glPopMatrix() local_unnamed_addr #2

declare void @glPopAttrib() local_unnamed_addr #2

declare float @line_point_factor_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare i32 @autokeyframe_cfra_can_key(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_visible_rect(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLF_width_and_height_default(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLF_draw_default_ascii(float noundef, float noundef, float noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @UI_icon_draw(float noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

declare void @setlinestyle(i32 noundef) local_unnamed_addr #2

declare void @glVertex2iv(ptr noundef) local_unnamed_addr #2

declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glRotatef(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #7

declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_make_axis_color(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @glColor3ubv(ptr noundef) local_unnamed_addr #2

declare void @glVertex2s(i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare void @WM_paint_cursor_tag_redraw(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_mask(ptr noundef) local_unnamed_addr #2

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_space_clip_check_show_trackedit(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_space_clip_check_show_maskedit(ptr noundef) local_unnamed_addr #2

declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @Bend(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [256 x i8], align 16
  %6 = alloca %union.anon.0, align 4
  %7 = alloca [128 x i8], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x float], align 4
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #16
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %13 = load ptr, ptr %12, align 8, !tbaa !218
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !99
  %16 = and i32 %15, 16777216
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %20 = load float, ptr %19, align 4, !tbaa !59
  store float %20, ptr %6, align 4, !tbaa !59
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !59
  %23 = getelementptr inbounds float, ptr %6, i64 1
  store float %22, ptr %23, align 4, !tbaa !59
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14
  %25 = load i16, ptr %24, align 8, !tbaa !309
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !59
  %30 = getelementptr inbounds %struct.BendCustomData, ptr %13, i64 0, i32 4
  %31 = load float, ptr %30, align 4, !tbaa !271
  %32 = fmul float %29, %31
  %33 = fdiv float %32, 0x3FB99999A0000000
  %34 = fmul float %22, %33
  store float %34, ptr %23, align 4, !tbaa !170
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %6) #16
  %35 = load float, ptr %23, align 4, !tbaa !170
  %36 = fdiv float %35, %33
  store float %36, ptr %23, align 4, !tbaa !170
  br label %37

37:                                               ; preds = %27, %2
  %38 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %39 = call zeroext i8 @applyNumInput(ptr noundef nonnull %38, ptr noundef nonnull %6) #16
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load float, ptr %23, align 4, !tbaa !170
  %43 = getelementptr inbounds %struct.BendCustomData, ptr %13, i64 0, i32 4
  %44 = load float, ptr %43, align 4, !tbaa !271
  %45 = fdiv float %42, %44
  store float %45, ptr %23, align 4, !tbaa !170
  br label %46

46:                                               ; preds = %41, %37
  %47 = call zeroext i8 @hasNumInput(ptr noundef nonnull %38) #16
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #16
  %50 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %51 = load ptr, ptr %50, align 8, !tbaa !109
  %52 = getelementptr inbounds %struct.Scene, ptr %51, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %38, ptr noundef nonnull %7, ptr noundef nonnull %52) #16
  %53 = getelementptr inbounds [128 x i8], ptr %7, i64 0, i64 64
  %54 = call ptr @WM_bool_as_string(i8 noundef zeroext %18) #16
  %55 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 256, ptr noundef nonnull @.str.79, ptr noundef nonnull %7, ptr noundef nonnull %53, ptr noundef %54) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #16
  br label %67

56:                                               ; preds = %46
  %57 = load float, ptr %6, align 4, !tbaa !170
  %58 = fmul float %57, 0x404CA5DC20000000
  %59 = fpext float %58 to double
  %60 = load float, ptr %23, align 4, !tbaa !170
  %61 = getelementptr inbounds %struct.BendCustomData, ptr %13, i64 0, i32 4
  %62 = load float, ptr %61, align 4, !tbaa !271
  %63 = fmul float %60, %62
  %64 = fpext float %63 to double
  %65 = call ptr @WM_bool_as_string(i8 noundef zeroext %18) #16
  %66 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 256, ptr noundef nonnull @.str.80, double noundef %59, double noundef %64, ptr noundef %65) #16
  br label %67

67:                                               ; preds = %56, %49
  %68 = load float, ptr %6, align 4, !tbaa !170
  store float %68, ptr %19, align 4, !tbaa !59
  %69 = load float, ptr %23, align 4, !tbaa !170
  store float %69, ptr %21, align 4, !tbaa !59
  %70 = fneg float %68
  store float %70, ptr %6, align 4, !tbaa !170
  %71 = getelementptr inbounds %struct.BendCustomData, ptr %13, i64 0, i32 4
  %72 = load float, ptr %71, align 4, !tbaa !271
  %73 = fmul float %69, %72
  store float %73, ptr %23, align 4, !tbaa !170
  %74 = getelementptr inbounds %struct.BendCustomData, ptr %13, i64 0, i32 1
  %75 = load float, ptr %74, align 4, !tbaa !59
  store float %75, ptr %4, align 4, !tbaa !59
  %76 = getelementptr inbounds %struct.BendCustomData, ptr %13, i64 0, i32 1, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !59
  %78 = getelementptr inbounds float, ptr %4, i64 1
  store float %77, ptr %78, align 4, !tbaa !59
  %79 = getelementptr inbounds %struct.BendCustomData, ptr %13, i64 0, i32 1, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !59
  %81 = getelementptr inbounds float, ptr %4, i64 2
  store float %80, ptr %81, align 4, !tbaa !59
  call void @dist_ensure_v3_v3fl(ptr noundef nonnull %4, ptr noundef %13, float noundef %73) #16
  %82 = load float, ptr %13, align 4, !tbaa !59
  %83 = getelementptr inbounds float, ptr %13, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !59
  %85 = getelementptr inbounds float, ptr %13, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !59
  %87 = load float, ptr %6, align 4, !tbaa !170
  %88 = fcmp ogt float %87, 0.000000e+00
  %89 = getelementptr inbounds %struct.BendCustomData, ptr %13, i64 0, i32 3
  %90 = load float, ptr %23, align 4, !tbaa !170
  br i1 %88, label %91, label %102

91:                                               ; preds = %67
  %92 = fneg float %90
  %93 = fsub float 0x3FF921FB60000000, %87
  %94 = fcmp olt float %93, 0x3E45798EE0000000
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = call float @cosf(float noundef %93) #16
  %97 = fdiv float 1.000000e+00, %96
  %98 = call float @llvm.fabs.f32(float %97)
  br label %99

99:                                               ; preds = %91, %95
  %100 = phi float [ %98, %95 ], [ 1.000000e+00, %91 ]
  %101 = fmul float %100, %92
  br label %112

102:                                              ; preds = %67
  %103 = fadd float %87, 0x3FF921FB60000000
  %104 = fcmp olt float %103, 0x3E45798EE0000000
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = call float @cosf(float noundef %103) #16
  %107 = fdiv float 1.000000e+00, %106
  %108 = call float @llvm.fabs.f32(float %107)
  br label %109

109:                                              ; preds = %102, %105
  %110 = phi float [ %108, %105 ], [ 1.000000e+00, %102 ]
  %111 = fmul float %90, %110
  br label %112

112:                                              ; preds = %109, %99
  %113 = phi float [ %111, %109 ], [ %101, %99 ]
  %114 = load float, ptr %89, align 4, !tbaa !59
  %115 = call float @llvm.fmuladd.f32(float %114, float %113, float %82)
  %116 = getelementptr inbounds %struct.BendCustomData, ptr %13, i64 0, i32 3, i64 1
  %117 = load float, ptr %116, align 4, !tbaa !59
  %118 = call float @llvm.fmuladd.f32(float %117, float %113, float %84)
  %119 = getelementptr inbounds %struct.BendCustomData, ptr %13, i64 0, i32 3, i64 2
  %120 = load float, ptr %119, align 4, !tbaa !59
  %121 = call float @llvm.fmuladd.f32(float %120, float %113, float %86)
  %122 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %123 = load i32, ptr %122, align 8, !tbaa !241
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %214

125:                                              ; preds = %112
  %126 = getelementptr inbounds float, ptr %3, i64 1
  %127 = getelementptr inbounds float, ptr %3, i64 2
  %128 = getelementptr inbounds %struct.BendCustomData, ptr %13, i64 0, i32 2
  %129 = getelementptr inbounds float, ptr %9, i64 1
  %130 = getelementptr inbounds float, ptr %9, i64 2
  br label %131

131:                                              ; preds = %125, %209
  %132 = phi ptr [ %11, %125 ], [ %211, %209 ]
  %133 = phi i32 [ 0, %125 ], [ %210, %209 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #16
  %134 = getelementptr inbounds %struct.TransData, ptr %132, i64 0, i32 16
  %135 = load i32, ptr %134, align 8, !tbaa !310
  %136 = and i32 %135, 4
  %137 = icmp eq i32 %136, 0
  %138 = and i32 %135, 2052
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %208

140:                                              ; preds = %131
  %141 = load float, ptr %6, align 4, !tbaa !170
  %142 = fcmp oeq float %141, 0.000000e+00
  br i1 %142, label %143, label %152

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.TransData, ptr %132, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !312
  %146 = getelementptr inbounds %struct.TransData, ptr %132, i64 0, i32 4
  %147 = load float, ptr %146, align 4, !tbaa !59
  store float %147, ptr %145, align 4, !tbaa !59
  %148 = getelementptr inbounds %struct.TransData, ptr %132, i64 0, i32 4, i64 1
  %149 = load float, ptr %148, align 4, !tbaa !59
  %150 = getelementptr inbounds float, ptr %145, i64 1
  store float %149, ptr %150, align 4, !tbaa !59
  %151 = getelementptr inbounds %struct.TransData, ptr %132, i64 0, i32 4, i64 2
  br label %203

152:                                              ; preds = %140
  %153 = getelementptr inbounds %struct.TransData, ptr %132, i64 0, i32 4
  %154 = load float, ptr %153, align 4, !tbaa !59
  store float %154, ptr %3, align 4, !tbaa !59
  %155 = getelementptr inbounds %struct.TransData, ptr %132, i64 0, i32 4, i64 1
  %156 = load float, ptr %155, align 4, !tbaa !59
  store float %156, ptr %126, align 4, !tbaa !59
  %157 = getelementptr inbounds %struct.TransData, ptr %132, i64 0, i32 4, i64 2
  %158 = load float, ptr %157, align 4, !tbaa !59
  store float %158, ptr %127, align 4, !tbaa !59
  %159 = getelementptr inbounds %struct.TransData, ptr %132, i64 0, i32 8
  call void @mul_m3_v3(ptr noundef nonnull %159, ptr noundef nonnull %3) #16
  %160 = call float @line_point_factor_v3(ptr noundef nonnull %3, ptr noundef nonnull %13, ptr noundef nonnull %4) #16
  br i1 %17, label %161, label %166

161:                                              ; preds = %152
  %162 = fcmp olt float %160, 0.000000e+00
  br i1 %162, label %166, label %163

163:                                              ; preds = %161
  %164 = fcmp ogt float %160, 1.000000e+00
  br i1 %164, label %165, label %166

165:                                              ; preds = %163
  br label %166

166:                                              ; preds = %161, %165, %163, %152
  %167 = phi float [ 1.000000e+00, %165 ], [ %160, %163 ], [ %160, %152 ], [ 0.000000e+00, %161 ]
  %168 = getelementptr inbounds %struct.TransData, ptr %132, i64 0, i32 2
  %169 = load float, ptr %168, align 8, !tbaa !313
  %170 = fmul float %167, %169
  %171 = load float, ptr %6, align 4, !tbaa !170
  %172 = fmul float %171, %170
  call void @axis_angle_normalized_to_mat3(ptr noundef nonnull %8, ptr noundef nonnull %128, float noundef %172) #16
  call void @interp_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %13, ptr noundef nonnull %4, float noundef %170) #16
  %173 = load float, ptr %13, align 4, !tbaa !59
  %174 = load float, ptr %9, align 4, !tbaa !59
  %175 = fsub float %174, %173
  store float %175, ptr %9, align 4, !tbaa !59
  %176 = load float, ptr %83, align 4, !tbaa !59
  %177 = load float, ptr %129, align 4, !tbaa !59
  %178 = fsub float %177, %176
  store float %178, ptr %129, align 4, !tbaa !59
  %179 = load float, ptr %85, align 4, !tbaa !59
  %180 = load float, ptr %130, align 4, !tbaa !59
  %181 = fsub float %180, %179
  store float %181, ptr %130, align 4, !tbaa !59
  %182 = load float, ptr %3, align 4, !tbaa !59
  %183 = fsub float %182, %175
  store float %183, ptr %3, align 4, !tbaa !59
  %184 = load float, ptr %126, align 4, !tbaa !59
  %185 = fsub float %184, %178
  store float %185, ptr %126, align 4, !tbaa !59
  %186 = load float, ptr %127, align 4, !tbaa !59
  %187 = fsub float %186, %181
  store float %187, ptr %127, align 4, !tbaa !59
  %188 = fsub float %183, %115
  store float %188, ptr %3, align 4, !tbaa !59
  %189 = fsub float %185, %118
  store float %189, ptr %126, align 4, !tbaa !59
  %190 = fsub float %187, %121
  store float %190, ptr %127, align 4, !tbaa !59
  call void @mul_m3_v3(ptr noundef nonnull %8, ptr noundef nonnull %3) #16
  %191 = load float, ptr %3, align 4, !tbaa !59
  %192 = fadd float %115, %191
  store float %192, ptr %3, align 4, !tbaa !59
  %193 = load float, ptr %126, align 4, !tbaa !59
  %194 = fadd float %118, %193
  store float %194, ptr %126, align 4, !tbaa !59
  %195 = load float, ptr %127, align 4, !tbaa !59
  %196 = fadd float %121, %195
  store float %196, ptr %127, align 4, !tbaa !59
  %197 = getelementptr inbounds %struct.TransData, ptr %132, i64 0, i32 9
  call void @mul_m3_v3(ptr noundef nonnull %197, ptr noundef nonnull %3) #16
  %198 = getelementptr inbounds %struct.TransData, ptr %132, i64 0, i32 3
  %199 = load ptr, ptr %198, align 8, !tbaa !312
  %200 = load float, ptr %3, align 4, !tbaa !59
  store float %200, ptr %199, align 4, !tbaa !59
  %201 = load float, ptr %126, align 4, !tbaa !59
  %202 = getelementptr inbounds float, ptr %199, i64 1
  store float %201, ptr %202, align 4, !tbaa !59
  br label %203

203:                                              ; preds = %143, %166
  %204 = phi ptr [ %127, %166 ], [ %151, %143 ]
  %205 = phi ptr [ %199, %166 ], [ %145, %143 ]
  %206 = load float, ptr %204, align 4, !tbaa !59
  %207 = getelementptr inbounds float, ptr %205, i64 2
  store float %206, ptr %207, align 4, !tbaa !59
  br label %208

208:                                              ; preds = %203, %131
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #16
  br i1 %137, label %209, label %214

209:                                              ; preds = %208
  %210 = add nuw nsw i32 %133, 1
  %211 = getelementptr inbounds %struct.TransData, ptr %132, i64 1
  %212 = load i32, ptr %122, align 8, !tbaa !241
  %213 = icmp slt i32 %210, %212
  br i1 %213, label %131, label %214, !llvm.loop !314

214:                                              ; preds = %209, %208, %112
  call void @recalcData(ptr noundef %0) #16
  %215 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %216 = load ptr, ptr %215, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %216, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @handleEventBend(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #9 {
  %3 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !94
  %5 = icmp eq i16 %4, 2
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %8 = load i16, ptr %7, align 2, !tbaa !92
  %9 = icmp eq i16 %8, 1
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %2 ], [ %10, %6 ]
  ret i32 %12
}

declare void @setInputPostFct(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @postInputRotation(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %4 = load i32, ptr %3, align 4, !tbaa !97
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !315
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 49
  tail call void %9(ptr noundef %0, ptr noundef null, ptr noundef nonnull %12, ptr noundef %1) #16
  br label %13

13:                                               ; preds = %11, %7, %2
  ret void
}

declare void @initMouseInputMode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @calculateCenterCursor(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_win_to_3d(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @snapGridIncrement(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @applyNumInput(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @outputNumInput(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @WM_bool_as_string(i8 noundef zeroext) local_unnamed_addr #2

declare void @dist_ensure_v3_v3fl(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @axis_angle_normalized_to_mat3(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @applyShear(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca float, align 4
  %10 = alloca [256 x i8], align 16
  %11 = alloca [64 x i8], align 16
  %12 = alloca [3 x [3 x float]], align 16
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %10) #16
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 27
  call void @copy_m3_m4(ptr noundef nonnull %7, ptr noundef nonnull %15) #16
  %16 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %8, ptr noundef nonnull %7) #16
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %18 = load float, ptr %17, align 4, !tbaa !59
  store float %18, ptr %9, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %9) #16
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %20 = call zeroext i8 @applyNumInput(ptr noundef nonnull %19, ptr noundef nonnull %9) #16
  %21 = call zeroext i8 @hasNumInput(ptr noundef nonnull %19) #16
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #16
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %25 = load ptr, ptr %24, align 8, !tbaa !109
  %26 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %19, ptr noundef nonnull %11, ptr noundef nonnull %26) #16
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %28 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %10, i64 noundef 256, ptr noundef nonnull @.str.81, ptr noundef nonnull %11, ptr noundef nonnull %27) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #16
  br label %34

29:                                               ; preds = %2
  %30 = load float, ptr %9, align 4, !tbaa !59
  %31 = fpext float %30 to double
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %33 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %10, i64 noundef 256, ptr noundef nonnull @.str.82, double noundef %31, ptr noundef nonnull %32) #16
  br label %34

34:                                               ; preds = %29, %23
  %35 = load float, ptr %9, align 4, !tbaa !59
  store float %35, ptr %17, align 4, !tbaa !59
  call void @unit_m3(ptr noundef nonnull %4) #16
  %36 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %37 = load ptr, ptr %36, align 8, !tbaa !218
  %38 = icmp eq ptr %37, null
  %39 = load float, ptr %9, align 4, !tbaa !59
  %40 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %41 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1
  %42 = select i1 %38, ptr %41, ptr %40
  store float %39, ptr %42, align 4, !tbaa !59
  call void @mul_m3_m3m3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %7) #16
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %5) #16
  %43 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !241
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %123

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %48 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %49 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 1
  %50 = getelementptr inbounds float, ptr %3, i64 1
  %51 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 2
  %52 = getelementptr inbounds float, ptr %3, i64 2
  br label %53

53:                                               ; preds = %46, %118
  %54 = phi i32 [ 0, %46 ], [ %119, %118 ]
  %55 = phi ptr [ %14, %46 ], [ %120, %118 ]
  %56 = getelementptr inbounds %struct.TransData, ptr %55, i64 0, i32 16
  %57 = load i32, ptr %56, align 8, !tbaa !310
  %58 = and i32 %57, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %123

60:                                               ; preds = %53
  %61 = and i32 %57, 2048
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %118

63:                                               ; preds = %60
  %64 = load ptr, ptr %47, align 8, !tbaa !100
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #16
  %67 = getelementptr inbounds %struct.TransData, ptr %55, i64 0, i32 8
  call void @mul_m3_m3m3(ptr noundef nonnull %12, ptr noundef nonnull %6, ptr noundef nonnull %67) #16
  %68 = getelementptr inbounds %struct.TransData, ptr %55, i64 0, i32 9
  call void @mul_m3_m3m3(ptr noundef nonnull %5, ptr noundef nonnull %68, ptr noundef nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #16
  br label %70

69:                                               ; preds = %63
  call void @copy_m3_m3(ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  br label %70

70:                                               ; preds = %69, %66
  %71 = getelementptr inbounds %struct.TransData, ptr %55, i64 0, i32 7
  %72 = load float, ptr %71, align 4, !tbaa !59
  %73 = load float, ptr %48, align 4, !tbaa !59
  %74 = fsub float %72, %73
  store float %74, ptr %3, align 4, !tbaa !59
  %75 = getelementptr inbounds %struct.TransData, ptr %55, i64 0, i32 7, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !59
  %77 = load float, ptr %49, align 4, !tbaa !59
  %78 = fsub float %76, %77
  store float %78, ptr %50, align 4, !tbaa !59
  %79 = getelementptr inbounds %struct.TransData, ptr %55, i64 0, i32 7, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !59
  %81 = load float, ptr %51, align 4, !tbaa !59
  %82 = fsub float %80, %81
  store float %82, ptr %52, align 4, !tbaa !59
  call void @mul_m3_v3(ptr noundef nonnull %5, ptr noundef nonnull %3) #16
  %83 = load float, ptr %48, align 4, !tbaa !59
  %84 = load float, ptr %3, align 4, !tbaa !59
  %85 = fadd float %83, %84
  store float %85, ptr %3, align 4, !tbaa !59
  %86 = load float, ptr %49, align 4, !tbaa !59
  %87 = load float, ptr %50, align 4, !tbaa !59
  %88 = fadd float %86, %87
  store float %88, ptr %50, align 4, !tbaa !59
  %89 = load float, ptr %51, align 4, !tbaa !59
  %90 = load float, ptr %52, align 4, !tbaa !59
  %91 = fadd float %89, %90
  store float %91, ptr %52, align 4, !tbaa !59
  %92 = load float, ptr %71, align 4, !tbaa !59
  %93 = fsub float %85, %92
  store float %93, ptr %3, align 4, !tbaa !59
  %94 = load float, ptr %75, align 4, !tbaa !59
  %95 = fsub float %88, %94
  store float %95, ptr %50, align 4, !tbaa !59
  %96 = load float, ptr %79, align 4, !tbaa !59
  %97 = fsub float %91, %96
  store float %97, ptr %52, align 4, !tbaa !59
  %98 = getelementptr inbounds %struct.TransData, ptr %55, i64 0, i32 2
  %99 = load float, ptr %98, align 8, !tbaa !313
  %100 = fmul float %93, %99
  store float %100, ptr %3, align 4, !tbaa !59
  %101 = fmul float %95, %99
  store float %101, ptr %50, align 4, !tbaa !59
  %102 = fmul float %97, %99
  store float %102, ptr %52, align 4, !tbaa !59
  %103 = getelementptr inbounds %struct.TransData, ptr %55, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !312
  %105 = getelementptr inbounds %struct.TransData, ptr %55, i64 0, i32 4
  %106 = load float, ptr %105, align 4, !tbaa !59
  %107 = fadd float %100, %106
  store float %107, ptr %104, align 4, !tbaa !59
  %108 = getelementptr inbounds %struct.TransData, ptr %55, i64 0, i32 4, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !59
  %110 = load float, ptr %50, align 4, !tbaa !59
  %111 = fadd float %109, %110
  %112 = getelementptr inbounds float, ptr %104, i64 1
  store float %111, ptr %112, align 4, !tbaa !59
  %113 = getelementptr inbounds %struct.TransData, ptr %55, i64 0, i32 4, i64 2
  %114 = load float, ptr %113, align 4, !tbaa !59
  %115 = load float, ptr %52, align 4, !tbaa !59
  %116 = fadd float %114, %115
  %117 = getelementptr inbounds float, ptr %104, i64 2
  store float %116, ptr %117, align 4, !tbaa !59
  br label %118

118:                                              ; preds = %60, %70
  %119 = add nuw nsw i32 %54, 1
  %120 = getelementptr inbounds %struct.TransData, ptr %55, i64 1
  %121 = load i32, ptr %43, align 8, !tbaa !241
  %122 = icmp slt i32 %119, %121
  br i1 %122, label %53, label %123, !llvm.loop !316

123:                                              ; preds = %118, %53, %34
  call void @recalcData(ptr noundef %0) #16
  %124 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %125 = load ptr, ptr %124, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %125, ptr noundef nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @handleEventShear(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !94
  switch i16 %4, label %33 [
    i16 2, label %5
    i16 120, label %17
    i16 121, label %26
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %7 = load i16, ptr %6, align 2, !tbaa !92
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %11 = load ptr, ptr %10, align 8, !tbaa !218
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  %14 = select i1 %12, i32 11, i32 9
  %15 = select i1 %12, ptr inttoptr (i64 1 to ptr), ptr null
  tail call void @initMouseInputMode(ptr noundef %0, ptr noundef nonnull %13, i32 noundef %14) #16
  store ptr %15, ptr %10, align 8, !tbaa !218
  br label %33

16:                                               ; preds = %5
  switch i16 %4, label %33 [
    i16 120, label %17
    i16 121, label %26
  ]

17:                                               ; preds = %2, %16
  %18 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %19 = load i16, ptr %18, align 2, !tbaa !92
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef %0, ptr noundef nonnull %22, i32 noundef 9) #16
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  store ptr null, ptr %23, align 8, !tbaa !218
  br label %33

24:                                               ; preds = %17
  %25 = icmp eq i16 %4, 121
  br i1 %25, label %26, label %33

26:                                               ; preds = %2, %16, %24
  %27 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %28 = load i16, ptr %27, align 2, !tbaa !92
  %29 = icmp eq i16 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef %0, ptr noundef nonnull %31, i32 noundef 11) #16
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  store ptr inttoptr (i64 1 to ptr), ptr %32, align 8, !tbaa !218
  br label %33

33:                                               ; preds = %2, %16, %21, %30, %26, %24, %9
  %34 = phi i32 [ 1, %9 ], [ 1, %21 ], [ 1, %30 ], [ 0, %26 ], [ 0, %24 ], [ 0, %16 ], [ 0, %2 ]
  ret i32 %34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @postInputShear(ptr nocapture readnone %0, ptr nocapture noundef %1) #10 {
  %3 = load float, ptr %1, align 4, !tbaa !59
  %4 = fmul float %3, 0x3FA99999A0000000
  store float %4, ptr %1, align 4, !tbaa !59
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !59
  %7 = fmul float %6, 0x3FA99999A0000000
  store float %7, ptr %5, align 4, !tbaa !59
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !59
  %10 = fmul float %9, 0x3FA99999A0000000
  store float %10, ptr %8, align 4, !tbaa !59
  ret void
}

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @applyResize(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !99
  %8 = and i32 %7, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !97
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 22
  %16 = load i32, ptr %15, align 8, !tbaa !73
  %17 = load i32, ptr %1, align 4, !tbaa !73
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 22, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !73
  %20 = getelementptr inbounds i32, ptr %1, i64 1
  %21 = load i32, ptr %20, align 4, !tbaa !73
  %22 = add i32 %16, %19
  %23 = add i32 %17, %21
  %24 = sub i32 %22, %23
  %25 = sitofp i32 %24 to float
  %26 = fdiv float %25, 1.000000e+02
  %27 = fsub float 1.000000e+00, %26
  br label %31

28:                                               ; preds = %10, %2
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %30 = load float, ptr %29, align 4, !tbaa !59
  br label %31

31:                                               ; preds = %28, %14
  %32 = phi float [ %27, %14 ], [ %30, %28 ]
  %33 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float %32, ptr %33, align 4, !tbaa !59
  %34 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float %32, ptr %34, align 4, !tbaa !59
  store float %32, ptr %3, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %3) #16
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %36 = call zeroext i8 @applyNumInput(ptr noundef nonnull %35, ptr noundef nonnull %3) #16
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  call void @constraintNumInput(ptr noundef %0, ptr noundef nonnull %3) #16
  br label %39

39:                                               ; preds = %38, %31
  call void @applySnapping(ptr noundef %0, ptr noundef nonnull %3) #16
  %40 = load i32, ptr %6, align 4, !tbaa !99
  %41 = and i32 %40, 1048576
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 48
  %45 = load float, ptr %44, align 4, !tbaa !59
  store float %45, ptr %3, align 4, !tbaa !59
  %46 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 48, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !59
  store float %47, ptr %34, align 4, !tbaa !59
  %48 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 48, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !59
  store float %49, ptr %33, align 4, !tbaa !59
  br label %50

50:                                               ; preds = %43, %39
  %51 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %52 = load float, ptr %3, align 4, !tbaa !59
  store float %52, ptr %51, align 4, !tbaa !59
  %53 = load float, ptr %34, align 4, !tbaa !59
  %54 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47, i64 1
  store float %53, ptr %54, align 4, !tbaa !59
  %55 = load float, ptr %33, align 4, !tbaa !59
  %56 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47, i64 2
  store float %55, ptr %56, align 4, !tbaa !59
  call void @size_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %3) #16
  %57 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 10
  %58 = load ptr, ptr %57, align 8, !tbaa !317
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %50
  call void %58(ptr noundef %0, ptr noundef null, ptr noundef nonnull %4) #16
  br label %61

61:                                               ; preds = %60, %50
  %62 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 36
  call void @copy_m3_m3(ptr noundef nonnull %62, ptr noundef nonnull %4) #16
  call fastcc void @headerResize(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5)
  %63 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %64 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !241
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %61
  %68 = load ptr, ptr %63, align 8, !tbaa !268
  br label %69

69:                                               ; preds = %67, %80
  %70 = phi i32 [ %81, %80 ], [ 0, %67 ]
  %71 = phi ptr [ %82, %80 ], [ %68, %67 ]
  %72 = getelementptr inbounds %struct.TransData, ptr %71, i64 0, i32 16
  %73 = load i32, ptr %72, align 8, !tbaa !310
  %74 = and i32 %73, 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %69
  %77 = and i32 %73, 2048
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  call fastcc void @ElementResize(ptr noundef %0, ptr noundef %71, ptr noundef nonnull %4)
  br label %80

80:                                               ; preds = %76, %79
  %81 = add nuw nsw i32 %70, 1
  %82 = getelementptr inbounds %struct.TransData, ptr %71, i64 1
  %83 = load i32, ptr %64, align 8, !tbaa !241
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %69, label %85, !llvm.loop !318

85:                                               ; preds = %80, %69, %61
  %86 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %87 = load i32, ptr %6, align 4, !tbaa !99
  %88 = and i32 %87, 65536
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %114, label %90

90:                                               ; preds = %85
  %91 = call zeroext i8 @clipUVTransform(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext 1) #16
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %114, label %93

93:                                               ; preds = %90
  call void @size_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %3) #16
  %94 = load ptr, ptr %57, align 8, !tbaa !317
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  call void %94(ptr noundef %0, ptr noundef null, ptr noundef nonnull %4) #16
  br label %97

97:                                               ; preds = %96, %93
  %98 = load i32, ptr %86, align 8, !tbaa !241
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load ptr, ptr %63, align 8, !tbaa !268
  br label %102

102:                                              ; preds = %100, %102
  %103 = phi i32 [ %105, %102 ], [ 0, %100 ]
  %104 = phi ptr [ %106, %102 ], [ %101, %100 ]
  call fastcc void @ElementResize(ptr noundef %0, ptr noundef %104, ptr noundef nonnull %4)
  %105 = add nuw nsw i32 %103, 1
  %106 = getelementptr inbounds %struct.TransData, ptr %104, i64 1
  %107 = load i32, ptr %86, align 8, !tbaa !241
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %102, label %109, !llvm.loop !319

109:                                              ; preds = %102, %97
  %110 = load i32, ptr %6, align 4, !tbaa !99
  %111 = and i32 %110, 33560576
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  call void @clipUVData(ptr noundef %0) #16
  br label %114

114:                                              ; preds = %109, %113, %90, %85
  call void @recalcData(ptr noundef %0) #16
  %115 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %116 = load ptr, ptr %115, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %116, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  ret void
}

declare void @constraintNumInput(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @applySnapping(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @size_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @headerResize(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %6 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %5) #16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %10 = load ptr, ptr %9, align 8, !tbaa !109
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %11) #16
  br label %26

12:                                               ; preds = %3
  %13 = load float, ptr %1, align 4, !tbaa !59
  %14 = fpext float %13 to double
  %15 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.83, double noundef %14) #16
  %16 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 64
  %17 = getelementptr inbounds float, ptr %1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !59
  %19 = fpext float %18 to double
  %20 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %16, i64 noundef 64, ptr noundef nonnull @.str.83, double noundef %19) #16
  %21 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 128
  %22 = getelementptr inbounds float, ptr %1, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !59
  %24 = fpext float %23 to double
  %25 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %21, i64 noundef 64, ptr noundef nonnull @.str.83, double noundef %24) #16
  br label %26

26:                                               ; preds = %12, %8
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %28 = load i32, ptr %27, align 4, !tbaa !97
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %26
  %32 = load i16, ptr %5, align 8, !tbaa !108
  switch i16 %32, label %63 [
    i16 0, label %33
    i16 1, label %37
    i16 2, label %42
  ]

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %36 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.84, ptr noundef nonnull %4, ptr noundef nonnull %34, ptr noundef nonnull %35) #16
  br label %63

37:                                               ; preds = %31
  %38 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 64
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %40 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %41 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.85, ptr noundef nonnull %4, ptr noundef nonnull %38, ptr noundef nonnull %39, ptr noundef nonnull %40) #16
  br label %63

42:                                               ; preds = %31
  %43 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 64
  %44 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 128
  %45 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %46 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %47 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.86, ptr noundef nonnull %4, ptr noundef nonnull %43, ptr noundef nonnull %44, ptr noundef nonnull %45, ptr noundef nonnull %46) #16
  br label %63

48:                                               ; preds = %26
  %49 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !99
  %51 = and i32 %50, 32768
  %52 = icmp eq i32 %51, 0
  %53 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 64
  br i1 %52, label %58, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %56 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %57 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.87, ptr noundef nonnull %4, ptr noundef nonnull %53, ptr noundef nonnull %55, ptr noundef nonnull %56) #16
  br label %63

58:                                               ; preds = %48
  %59 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 128
  %60 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %61 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %62 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.88, ptr noundef nonnull %4, ptr noundef nonnull %53, ptr noundef nonnull %59, ptr noundef nonnull %60, ptr noundef nonnull %61) #16
  br label %63

63:                                               ; preds = %54, %58, %33, %37, %42, %31
  %64 = phi i64 [ 0, %31 ], [ %47, %42 ], [ %41, %37 ], [ %36, %33 ], [ %57, %54 ], [ %62, %58 ]
  %65 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !99
  %67 = and i32 %66, 33560576
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds i8, ptr %2, i64 %64
  %71 = sub i64 256, %64
  %72 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 18
  %73 = load float, ptr %72, align 4, !tbaa !136
  %74 = fpext float %73 to double
  %75 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %70, i64 noundef %71, ptr noundef nonnull @.str.89, double noundef %74) #16
  br label %76

76:                                               ; preds = %69, %63
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ElementResize(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.bConstraintOb, align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #16
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !99
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 8
  call void @mul_m3_m3m3(ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull %17) #16
  %18 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 9
  call void @mul_m3_m3m3(ptr noundef nonnull %7, ptr noundef nonnull %18, ptr noundef nonnull %8) #16
  br label %20

19:                                               ; preds = %3
  call void @copy_m3_m3(ptr noundef nonnull %7, ptr noundef %2) #16
  br label %20

20:                                               ; preds = %19, %16
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !317
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  call void %22(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #16
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 32
  %27 = load i16, ptr %26, align 2, !tbaa !240
  %28 = icmp eq i16 %27, 2
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = load i32, ptr %12, align 4, !tbaa !99
  %31 = and i32 %30, 5
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %35 = load ptr, ptr %34, align 8, !tbaa !100
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 3
  %39 = load i16, ptr %38, align 8, !tbaa !101
  switch i16 %39, label %40 [
    i16 1, label %50
    i16 2, label %50
    i16 5, label %50
    i16 25, label %50
  ]

40:                                               ; preds = %37, %33
  %41 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %42 = load i8, ptr %41, align 8, !tbaa !34
  %43 = icmp eq i8 %42, 2
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %46 = load i32, ptr %45, align 8, !tbaa !58
  %47 = and i32 %46, 448
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i8
  br label %50

50:                                               ; preds = %25, %29, %37, %37, %37, %37, %40, %44
  %51 = phi i8 [ 0, %25 ], [ 1, %40 ], [ 1, %37 ], [ 1, %29 ], [ %49, %44 ], [ 1, %37 ], [ 1, %37 ], [ 1, %37 ]
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7
  %55 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7, i64 1
  %56 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7, i64 2
  br label %79

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %59 = load i32, ptr %58, align 8, !tbaa !58
  %60 = and i32 %59, 64
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 16
  %64 = load i32, ptr %63, align 8, !tbaa !310
  %65 = and i32 %64, 256
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7
  %69 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7, i64 1
  %70 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7, i64 2
  br label %79

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %73 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 1
  %74 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 2
  br label %79

75:                                               ; preds = %57
  %76 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %77 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 1
  %78 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 2
  br label %79

79:                                               ; preds = %75, %71, %67, %53
  %80 = phi ptr [ %78, %75 ], [ %74, %71 ], [ %70, %67 ], [ %56, %53 ]
  %81 = phi ptr [ %77, %75 ], [ %73, %71 ], [ %69, %67 ], [ %55, %53 ]
  %82 = phi ptr [ %76, %75 ], [ %72, %71 ], [ %68, %67 ], [ %54, %53 ]
  %83 = load float, ptr %82, align 4, !tbaa !59
  %84 = load float, ptr %81, align 4, !tbaa !59
  %85 = load float, ptr %80, align 4, !tbaa !59
  %86 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 13
  %87 = load ptr, ptr %86, align 8, !tbaa !320
  %88 = icmp eq ptr %87, null
  br i1 %88, label %458, label %89

89:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #16
  %90 = load i32, ptr %12, align 4, !tbaa !99
  %91 = and i32 %90, 13
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %271, label %93

93:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #16
  %94 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 10
  call void @mul_m3_m3m3(ptr noundef nonnull %11, ptr noundef nonnull %7, ptr noundef nonnull %94) #16
  %95 = load float, ptr %11, align 16, !tbaa !59
  %96 = getelementptr inbounds float, ptr %11, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !59
  %98 = getelementptr inbounds float, ptr %11, i64 2
  %99 = load float, ptr %98, align 8, !tbaa !59
  %100 = fmul float %97, %97
  %101 = call float @llvm.fmuladd.f32(float %95, float %95, float %100)
  %102 = call float @llvm.fmuladd.f32(float %99, float %99, float %101)
  %103 = fcmp ogt float %102, 0x38AA95A5C0000000
  br i1 %103, label %104, label %106

104:                                              ; preds = %93
  %105 = call float @sqrtf(float noundef %102) #16
  br label %106

106:                                              ; preds = %104, %93
  %107 = phi float [ %105, %104 ], [ 0.000000e+00, %93 ]
  store float %107, ptr %10, align 4, !tbaa !59
  %108 = getelementptr inbounds [3 x float], ptr %11, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !59
  %110 = getelementptr inbounds [3 x float], ptr %11, i64 1, i64 1
  %111 = load float, ptr %110, align 16, !tbaa !59
  %112 = getelementptr inbounds [3 x float], ptr %11, i64 1, i64 2
  %113 = load float, ptr %112, align 4, !tbaa !59
  %114 = fmul float %111, %111
  %115 = call float @llvm.fmuladd.f32(float %109, float %109, float %114)
  %116 = call float @llvm.fmuladd.f32(float %113, float %113, float %115)
  %117 = fcmp ogt float %116, 0x38AA95A5C0000000
  br i1 %117, label %118, label %120

118:                                              ; preds = %106
  %119 = call float @sqrtf(float noundef %116) #16
  br label %120

120:                                              ; preds = %118, %106
  %121 = phi float [ %119, %118 ], [ 0.000000e+00, %106 ]
  %122 = getelementptr inbounds float, ptr %10, i64 1
  store float %121, ptr %122, align 4, !tbaa !59
  %123 = getelementptr inbounds [3 x float], ptr %11, i64 2
  %124 = load float, ptr %123, align 8, !tbaa !59
  %125 = getelementptr inbounds [3 x float], ptr %11, i64 2, i64 1
  %126 = load float, ptr %125, align 4, !tbaa !59
  %127 = getelementptr inbounds [3 x float], ptr %11, i64 2, i64 2
  %128 = load float, ptr %127, align 16, !tbaa !59
  %129 = fmul float %126, %126
  %130 = call float @llvm.fmuladd.f32(float %124, float %124, float %129)
  %131 = call float @llvm.fmuladd.f32(float %128, float %128, float %130)
  %132 = fcmp ogt float %131, 0x38AA95A5C0000000
  br i1 %132, label %133, label %135

133:                                              ; preds = %120
  %134 = call float @sqrtf(float noundef %131) #16
  br label %135

135:                                              ; preds = %133, %120
  %136 = phi float [ %134, %133 ], [ 0.000000e+00, %120 ]
  %137 = getelementptr inbounds float, ptr %10, i64 2
  store float %136, ptr %137, align 4, !tbaa !59
  %138 = load float, ptr %11, align 16, !tbaa !59
  %139 = fcmp olt float %138, 0xBEE4F8B580000000
  %140 = fcmp ogt float %138, 0x3EE4F8B580000000
  %141 = select i1 %140, i32 2, i32 3
  %142 = select i1 %139, i32 1, i32 %141
  %143 = load float, ptr %94, align 4, !tbaa !59
  %144 = fcmp olt float %143, 0xBEE4F8B580000000
  %145 = fcmp ogt float %143, 0x3EE4F8B580000000
  %146 = select i1 %145, i32 2, i32 3
  %147 = select i1 %144, i32 1, i32 %146
  %148 = and i32 %147, %142
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %178, label %150

150:                                              ; preds = %135
  %151 = load float, ptr %96, align 4, !tbaa !59
  %152 = fcmp olt float %151, 0xBEE4F8B580000000
  %153 = fcmp ogt float %151, 0x3EE4F8B580000000
  %154 = select i1 %153, i32 2, i32 3
  %155 = select i1 %152, i32 1, i32 %154
  %156 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 10, i64 0, i64 1
  %157 = load float, ptr %156, align 4, !tbaa !59
  %158 = fcmp olt float %157, 0xBEE4F8B580000000
  %159 = fcmp ogt float %157, 0x3EE4F8B580000000
  %160 = select i1 %159, i32 2, i32 3
  %161 = select i1 %158, i32 1, i32 %160
  %162 = and i32 %161, %155
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %178, label %164

164:                                              ; preds = %150
  %165 = load float, ptr %98, align 8, !tbaa !59
  %166 = fcmp olt float %165, 0xBEE4F8B580000000
  %167 = fcmp ogt float %165, 0x3EE4F8B580000000
  %168 = select i1 %167, i32 2, i32 3
  %169 = select i1 %166, i32 1, i32 %168
  %170 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 10, i64 0, i64 2
  %171 = load float, ptr %170, align 4, !tbaa !59
  %172 = fcmp olt float %171, 0xBEE4F8B580000000
  %173 = fcmp ogt float %171, 0x3EE4F8B580000000
  %174 = select i1 %173, i32 2, i32 3
  %175 = select i1 %172, i32 1, i32 %174
  %176 = and i32 %175, %169
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %150, %135, %164
  %179 = load float, ptr %10, align 4, !tbaa !59
  %180 = fneg float %179
  store float %180, ptr %10, align 4, !tbaa !59
  br label %181

181:                                              ; preds = %178, %164
  %182 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 10, i64 1
  %183 = load float, ptr %108, align 4, !tbaa !59
  %184 = fcmp olt float %183, 0xBEE4F8B580000000
  %185 = fcmp ogt float %183, 0x3EE4F8B580000000
  %186 = select i1 %185, i32 2, i32 3
  %187 = select i1 %184, i32 1, i32 %186
  %188 = load float, ptr %182, align 4, !tbaa !59
  %189 = fcmp olt float %188, 0xBEE4F8B580000000
  %190 = fcmp ogt float %188, 0x3EE4F8B580000000
  %191 = select i1 %190, i32 2, i32 3
  %192 = select i1 %189, i32 1, i32 %191
  %193 = and i32 %192, %187
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %223, label %195

195:                                              ; preds = %181
  %196 = load float, ptr %110, align 16, !tbaa !59
  %197 = fcmp olt float %196, 0xBEE4F8B580000000
  %198 = fcmp ogt float %196, 0x3EE4F8B580000000
  %199 = select i1 %198, i32 2, i32 3
  %200 = select i1 %197, i32 1, i32 %199
  %201 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 10, i64 1, i64 1
  %202 = load float, ptr %201, align 4, !tbaa !59
  %203 = fcmp olt float %202, 0xBEE4F8B580000000
  %204 = fcmp ogt float %202, 0x3EE4F8B580000000
  %205 = select i1 %204, i32 2, i32 3
  %206 = select i1 %203, i32 1, i32 %205
  %207 = and i32 %206, %200
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %223, label %209

209:                                              ; preds = %195
  %210 = load float, ptr %112, align 4, !tbaa !59
  %211 = fcmp olt float %210, 0xBEE4F8B580000000
  %212 = fcmp ogt float %210, 0x3EE4F8B580000000
  %213 = select i1 %212, i32 2, i32 3
  %214 = select i1 %211, i32 1, i32 %213
  %215 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 10, i64 1, i64 2
  %216 = load float, ptr %215, align 4, !tbaa !59
  %217 = fcmp olt float %216, 0xBEE4F8B580000000
  %218 = fcmp ogt float %216, 0x3EE4F8B580000000
  %219 = select i1 %218, i32 2, i32 3
  %220 = select i1 %217, i32 1, i32 %219
  %221 = and i32 %220, %214
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %195, %181, %209
  %224 = load float, ptr %122, align 4, !tbaa !59
  %225 = fneg float %224
  store float %225, ptr %122, align 4, !tbaa !59
  br label %226

226:                                              ; preds = %223, %209
  %227 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 10, i64 2
  %228 = load float, ptr %123, align 8, !tbaa !59
  %229 = fcmp olt float %228, 0xBEE4F8B580000000
  %230 = fcmp ogt float %228, 0x3EE4F8B580000000
  %231 = select i1 %230, i32 2, i32 3
  %232 = select i1 %229, i32 1, i32 %231
  %233 = load float, ptr %227, align 4, !tbaa !59
  %234 = fcmp olt float %233, 0xBEE4F8B580000000
  %235 = fcmp ogt float %233, 0x3EE4F8B580000000
  %236 = select i1 %235, i32 2, i32 3
  %237 = select i1 %234, i32 1, i32 %236
  %238 = and i32 %237, %232
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %268, label %240

240:                                              ; preds = %226
  %241 = load float, ptr %125, align 4, !tbaa !59
  %242 = fcmp olt float %241, 0xBEE4F8B580000000
  %243 = fcmp ogt float %241, 0x3EE4F8B580000000
  %244 = select i1 %243, i32 2, i32 3
  %245 = select i1 %242, i32 1, i32 %244
  %246 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 10, i64 2, i64 1
  %247 = load float, ptr %246, align 4, !tbaa !59
  %248 = fcmp olt float %247, 0xBEE4F8B580000000
  %249 = fcmp ogt float %247, 0x3EE4F8B580000000
  %250 = select i1 %249, i32 2, i32 3
  %251 = select i1 %248, i32 1, i32 %250
  %252 = and i32 %251, %245
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %268, label %254

254:                                              ; preds = %240
  %255 = load float, ptr %127, align 16, !tbaa !59
  %256 = fcmp olt float %255, 0xBEE4F8B580000000
  %257 = fcmp ogt float %255, 0x3EE4F8B580000000
  %258 = select i1 %257, i32 2, i32 3
  %259 = select i1 %256, i32 1, i32 %258
  %260 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 10, i64 2, i64 2
  %261 = load float, ptr %260, align 4, !tbaa !59
  %262 = fcmp olt float %261, 0xBEE4F8B580000000
  %263 = fcmp ogt float %261, 0x3EE4F8B580000000
  %264 = select i1 %263, i32 2, i32 3
  %265 = select i1 %262, i32 1, i32 %264
  %266 = and i32 %265, %259
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %240, %226, %254
  %269 = fneg float %136
  store float %269, ptr %137, align 4, !tbaa !59
  br label %270

270:                                              ; preds = %254, %268
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #16
  br label %272

271:                                              ; preds = %89
  call void @mat3_to_size(ptr noundef nonnull %10, ptr noundef nonnull %7) #16
  br label %272

272:                                              ; preds = %271, %270
  %273 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 17
  %274 = load i16, ptr %273, align 4, !tbaa !321
  %275 = zext i16 %274 to i32
  %276 = and i32 %275, 64
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %279, label %278

278:                                              ; preds = %272
  store float 1.000000e+00, ptr %10, align 4, !tbaa !59
  br label %279

279:                                              ; preds = %278, %272
  %280 = and i32 %275, 128
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %279
  %283 = getelementptr inbounds float, ptr %10, i64 1
  store float 1.000000e+00, ptr %283, align 4, !tbaa !59
  br label %284

284:                                              ; preds = %282, %279
  %285 = and i32 %275, 256
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %289, label %287

287:                                              ; preds = %284
  %288 = getelementptr inbounds float, ptr %10, i64 2
  store float 1.000000e+00, ptr %288, align 4, !tbaa !59
  br label %289

289:                                              ; preds = %284, %287
  %290 = load i32, ptr %12, align 4, !tbaa !99
  %291 = and i32 %290, 16384
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %363

293:                                              ; preds = %289
  %294 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 16
  %295 = load i32, ptr %294, align 8, !tbaa !310
  %296 = and i32 %295, 32
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %330, label %298

298:                                              ; preds = %293
  %299 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %300 = load i32, ptr %299, align 4, !tbaa !97
  %301 = and i32 %300, 1
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %324

303:                                              ; preds = %298
  %304 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 6
  %305 = load float, ptr %304, align 8, !tbaa !322
  %306 = load float, ptr %10, align 4, !tbaa !59
  %307 = fadd float %306, -1.000000e+00
  %308 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 2
  %309 = load float, ptr %308, align 8, !tbaa !313
  %310 = call float @llvm.fmuladd.f32(float %307, float %309, float 1.000000e+00)
  %311 = fmul float %305, %310
  %312 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 5
  %313 = load ptr, ptr %312, align 8, !tbaa !323
  store float %311, ptr %313, align 4, !tbaa !59
  %314 = load ptr, ptr %86, align 8, !tbaa !320
  %315 = getelementptr inbounds %struct.TransDataExtension, ptr %314, i64 0, i32 12
  %316 = load float, ptr %315, align 8, !tbaa !59
  %317 = getelementptr inbounds %struct.TransDataExtension, ptr %314, i64 0, i32 11
  %318 = load ptr, ptr %317, align 8, !tbaa !324
  store float %316, ptr %318, align 4, !tbaa !59
  %319 = getelementptr inbounds %struct.TransDataExtension, ptr %314, i64 0, i32 12, i64 1
  %320 = load float, ptr %319, align 4, !tbaa !59
  %321 = getelementptr inbounds float, ptr %318, i64 1
  store float %320, ptr %321, align 4, !tbaa !59
  %322 = getelementptr inbounds %struct.TransDataExtension, ptr %314, i64 0, i32 12, i64 2
  %323 = load float, ptr %322, align 8, !tbaa !59
  br label %359

324:                                              ; preds = %298
  br i1 %297, label %330, label %325

325:                                              ; preds = %324
  %326 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 6
  %327 = load float, ptr %326, align 8, !tbaa !322
  %328 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 5
  %329 = load ptr, ptr %328, align 8, !tbaa !323
  store float %327, ptr %329, align 4, !tbaa !59
  br label %330

330:                                              ; preds = %293, %325, %324
  %331 = load ptr, ptr %86, align 8, !tbaa !320
  %332 = getelementptr inbounds %struct.TransDataExtension, ptr %331, i64 0, i32 12
  %333 = load float, ptr %332, align 8, !tbaa !59
  %334 = load float, ptr %10, align 4, !tbaa !59
  %335 = fadd float %334, -1.000000e+00
  %336 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 2
  %337 = load float, ptr %336, align 8, !tbaa !313
  %338 = call float @llvm.fmuladd.f32(float %335, float %337, float 1.000000e+00)
  %339 = fmul float %333, %338
  %340 = getelementptr inbounds %struct.TransDataExtension, ptr %331, i64 0, i32 11
  %341 = load ptr, ptr %340, align 8, !tbaa !324
  store float %339, ptr %341, align 4, !tbaa !59
  %342 = getelementptr inbounds %struct.TransDataExtension, ptr %331, i64 0, i32 12, i64 1
  %343 = load float, ptr %342, align 4, !tbaa !59
  %344 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %345 = load float, ptr %344, align 4, !tbaa !59
  %346 = fadd float %345, -1.000000e+00
  %347 = load float, ptr %336, align 8, !tbaa !313
  %348 = call float @llvm.fmuladd.f32(float %346, float %347, float 1.000000e+00)
  %349 = fmul float %343, %348
  %350 = getelementptr inbounds float, ptr %341, i64 1
  store float %349, ptr %350, align 4, !tbaa !59
  %351 = getelementptr inbounds %struct.TransDataExtension, ptr %331, i64 0, i32 12, i64 2
  %352 = load float, ptr %351, align 8, !tbaa !59
  %353 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %354 = load float, ptr %353, align 4, !tbaa !59
  %355 = fadd float %354, -1.000000e+00
  %356 = load float, ptr %336, align 8, !tbaa !313
  %357 = call float @llvm.fmuladd.f32(float %355, float %356, float 1.000000e+00)
  %358 = fmul float %352, %357
  br label %359

359:                                              ; preds = %330, %303
  %360 = phi ptr [ %318, %303 ], [ %341, %330 ]
  %361 = phi float [ %323, %303 ], [ %358, %330 ]
  %362 = getelementptr inbounds float, ptr %360, i64 2
  store float %361, ptr %362, align 4, !tbaa !59
  br label %363

363:                                              ; preds = %359, %289
  %364 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 12
  %365 = load ptr, ptr %364, align 8, !tbaa !326
  %366 = icmp eq ptr %365, null
  br i1 %366, label %457, label %367

367:                                              ; preds = %363
  %368 = load ptr, ptr %86, align 8, !tbaa !320
  %369 = icmp eq ptr %368, null
  br i1 %369, label %457, label %370

370:                                              ; preds = %367
  %371 = call ptr @BKE_constraint_typeinfo_from_type(i32 noundef 7) #16
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %4, i8 0, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  %372 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 16
  %373 = load i32, ptr %372, align 8, !tbaa !310
  %374 = and i32 %373, 32
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %456

376:                                              ; preds = %370
  %377 = load ptr, ptr %86, align 8, !tbaa !320
  %378 = getelementptr inbounds %struct.TransDataExtension, ptr %377, i64 0, i32 11
  %379 = load ptr, ptr %378, align 8, !tbaa !324
  br label %380

380:                                              ; preds = %376, %380
  %381 = phi i64 [ 0, %376 ], [ %389, %380 ]
  %382 = getelementptr inbounds float, ptr %379, i64 %381
  %383 = load float, ptr %382, align 4, !tbaa !59
  %384 = fcmp olt float %383, 0.000000e+00
  %385 = select i1 %384, float -1.000000e+00, float 1.000000e+00
  %386 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %381
  store float %385, ptr %386, align 4, !tbaa !59
  %387 = call float @llvm.fabs.f32(float %383)
  %388 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %381
  store float %387, ptr %388, align 4, !tbaa !59
  %389 = add nuw nsw i64 %381, 1
  %390 = icmp eq i64 %389, 3
  br i1 %390, label %391, label %380, !llvm.loop !327

391:                                              ; preds = %380
  %392 = getelementptr inbounds %struct.bConstraintOb, ptr %4, i64 0, i32 3
  call void @size_to_mat4(ptr noundef nonnull %392, ptr noundef nonnull %6) #16
  %393 = load ptr, ptr %364, align 8, !tbaa !148
  %394 = icmp eq ptr %393, null
  br i1 %394, label %432, label %395

395:                                              ; preds = %391
  %396 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 8
  %397 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %371, i64 0, i32 11
  %398 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 9
  br label %399

399:                                              ; preds = %395, %429
  %400 = phi ptr [ %393, %395 ], [ %430, %429 ]
  %401 = getelementptr inbounds %struct.bConstraint, ptr %400, i64 0, i32 4
  %402 = load i16, ptr %401, align 2, !tbaa !328
  %403 = and i16 %402, 516
  %404 = icmp eq i16 %403, 0
  br i1 %404, label %405, label %429

405:                                              ; preds = %399
  %406 = getelementptr inbounds %struct.bConstraint, ptr %400, i64 0, i32 9
  %407 = load float, ptr %406, align 8, !tbaa !330
  %408 = fcmp oeq float %407, 0.000000e+00
  br i1 %408, label %429, label %409

409:                                              ; preds = %405
  %410 = getelementptr inbounds %struct.bConstraint, ptr %400, i64 0, i32 3
  %411 = load i16, ptr %410, align 8, !tbaa !331
  %412 = icmp eq i16 %411, 7
  br i1 %412, label %413, label %429

413:                                              ; preds = %409
  %414 = getelementptr inbounds %struct.bConstraint, ptr %400, i64 0, i32 2
  %415 = load ptr, ptr %414, align 8, !tbaa !332
  %416 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %415, i64 0, i32 7
  %417 = load i16, ptr %416, align 2, !tbaa !333
  %418 = and i16 %417, 2
  %419 = icmp eq i16 %418, 0
  br i1 %419, label %429, label %420

420:                                              ; preds = %413
  %421 = getelementptr inbounds %struct.bConstraint, ptr %400, i64 0, i32 5
  %422 = load i8, ptr %421, align 4, !tbaa !335
  switch i8 %422, label %429 [
    i8 0, label %423
    i8 1, label %424
  ]

423:                                              ; preds = %420
  call void @mul_m4_m3m4(ptr noundef nonnull %392, ptr noundef nonnull %396, ptr noundef nonnull %392) #16
  br label %424

424:                                              ; preds = %423, %420
  %425 = load ptr, ptr %397, align 8, !tbaa !336
  call void %425(ptr noundef nonnull %400, ptr noundef nonnull %4, ptr noundef null) #16
  %426 = load i8, ptr %421, align 4, !tbaa !335
  %427 = icmp eq i8 %426, 0
  br i1 %427, label %428, label %429

428:                                              ; preds = %424
  call void @mul_m4_m3m4(ptr noundef nonnull %392, ptr noundef nonnull %398, ptr noundef nonnull %392) #16
  br label %429

429:                                              ; preds = %428, %424, %420, %413, %409, %405, %399
  %430 = load ptr, ptr %400, align 8, !tbaa !148
  %431 = icmp eq ptr %430, null
  br i1 %431, label %432, label %399, !llvm.loop !338

432:                                              ; preds = %429, %391
  %433 = load i32, ptr %372, align 8, !tbaa !310
  %434 = and i32 %433, 32
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %456

436:                                              ; preds = %432
  %437 = load ptr, ptr %86, align 8, !tbaa !320
  %438 = getelementptr inbounds %struct.TransDataExtension, ptr %437, i64 0, i32 11
  %439 = load ptr, ptr %438, align 8, !tbaa !324
  call void @mat4_to_size(ptr noundef %439, ptr noundef nonnull %392) #16
  %440 = load ptr, ptr %86, align 8, !tbaa !320
  %441 = getelementptr inbounds %struct.TransDataExtension, ptr %440, i64 0, i32 11
  %442 = load ptr, ptr %441, align 8, !tbaa !324
  %443 = load float, ptr %5, align 4, !tbaa !59
  %444 = load float, ptr %442, align 4, !tbaa !59
  %445 = fmul float %443, %444
  store float %445, ptr %442, align 4, !tbaa !59
  %446 = getelementptr inbounds float, ptr %5, i64 1
  %447 = load float, ptr %446, align 4, !tbaa !59
  %448 = getelementptr inbounds float, ptr %442, i64 1
  %449 = load float, ptr %448, align 4, !tbaa !59
  %450 = fmul float %447, %449
  store float %450, ptr %448, align 4, !tbaa !59
  %451 = getelementptr inbounds float, ptr %5, i64 2
  %452 = load float, ptr %451, align 4, !tbaa !59
  %453 = getelementptr inbounds float, ptr %442, i64 2
  %454 = load float, ptr %453, align 4, !tbaa !59
  %455 = fmul float %452, %454
  store float %455, ptr %453, align 4, !tbaa !59
  br label %456

456:                                              ; preds = %432, %370, %436
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %4) #16
  br label %457

457:                                              ; preds = %363, %367, %456
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #16
  br label %458

458:                                              ; preds = %457, %79
  %459 = load i32, ptr %12, align 4, !tbaa !99
  %460 = and i32 %459, 64
  %461 = icmp eq i32 %460, 0
  %462 = getelementptr inbounds float, ptr %9, i64 1
  %463 = getelementptr inbounds float, ptr %9, i64 2
  br i1 %461, label %472, label %464

464:                                              ; preds = %458
  %465 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4
  %466 = load float, ptr %465, align 4, !tbaa !59
  %467 = fsub float %466, %83
  store float %467, ptr %9, align 4, !tbaa !59
  %468 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4, i64 1
  %469 = load float, ptr %468, align 4, !tbaa !59
  %470 = fsub float %469, %84
  store float %470, ptr %462, align 4, !tbaa !59
  %471 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4, i64 2
  br label %480

472:                                              ; preds = %458
  %473 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7
  %474 = load float, ptr %473, align 4, !tbaa !59
  %475 = fsub float %474, %83
  store float %475, ptr %9, align 4, !tbaa !59
  %476 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7, i64 1
  %477 = load float, ptr %476, align 4, !tbaa !59
  %478 = fsub float %477, %84
  store float %478, ptr %462, align 4, !tbaa !59
  %479 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7, i64 2
  br label %480

480:                                              ; preds = %472, %464
  %481 = phi ptr [ %479, %472 ], [ %471, %464 ]
  %482 = load float, ptr %481, align 4, !tbaa !59
  %483 = fsub float %482, %85
  store float %483, ptr %463, align 4, !tbaa !59
  call void @mul_m3_v3(ptr noundef nonnull %7, ptr noundef nonnull %9) #16
  %484 = load float, ptr %9, align 4, !tbaa !59
  %485 = fadd float %83, %484
  store float %485, ptr %9, align 4, !tbaa !59
  %486 = getelementptr inbounds float, ptr %9, i64 1
  %487 = load float, ptr %486, align 4, !tbaa !59
  %488 = fadd float %84, %487
  store float %488, ptr %486, align 4, !tbaa !59
  %489 = getelementptr inbounds float, ptr %9, i64 2
  %490 = load float, ptr %489, align 4, !tbaa !59
  %491 = fadd float %85, %490
  store float %491, ptr %489, align 4, !tbaa !59
  %492 = load i32, ptr %12, align 4, !tbaa !99
  %493 = and i32 %492, 64
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %503, label %495

495:                                              ; preds = %480
  %496 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4
  %497 = load float, ptr %496, align 4, !tbaa !59
  %498 = fsub float %485, %497
  store float %498, ptr %9, align 4, !tbaa !59
  %499 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4, i64 1
  %500 = load float, ptr %499, align 4, !tbaa !59
  %501 = fsub float %488, %500
  store float %501, ptr %486, align 4, !tbaa !59
  %502 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4, i64 2
  br label %511

503:                                              ; preds = %480
  %504 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7
  %505 = load float, ptr %504, align 4, !tbaa !59
  %506 = fsub float %485, %505
  store float %506, ptr %9, align 4, !tbaa !59
  %507 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7, i64 1
  %508 = load float, ptr %507, align 4, !tbaa !59
  %509 = fsub float %488, %508
  store float %509, ptr %486, align 4, !tbaa !59
  %510 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7, i64 2
  br label %511

511:                                              ; preds = %503, %495
  %512 = phi ptr [ %502, %495 ], [ %510, %503 ]
  %513 = load float, ptr %512, align 4, !tbaa !59
  %514 = fsub float %491, %513
  store float %514, ptr %489, align 4, !tbaa !59
  %515 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 2
  %516 = load float, ptr %515, align 8, !tbaa !313
  %517 = load float, ptr %9, align 4, !tbaa !59
  %518 = fmul float %516, %517
  store float %518, ptr %9, align 4, !tbaa !59
  %519 = load float, ptr %486, align 4, !tbaa !59
  %520 = fmul float %516, %519
  store float %520, ptr %486, align 4, !tbaa !59
  %521 = fmul float %514, %516
  store float %521, ptr %489, align 4, !tbaa !59
  %522 = and i32 %492, 5
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %526, label %524

524:                                              ; preds = %511
  %525 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 9
  call void @mul_m3_v3(ptr noundef nonnull %525, ptr noundef nonnull %9) #16
  br label %526

526:                                              ; preds = %524, %511
  %527 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 17
  %528 = load i16, ptr %527, align 4, !tbaa !321
  %529 = zext i16 %528 to i32
  %530 = and i32 %529, 1
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %533, label %532

532:                                              ; preds = %526
  store float 0.000000e+00, ptr %9, align 4, !tbaa !59
  br label %533

533:                                              ; preds = %532, %526
  %534 = and i32 %529, 2
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %537, label %536

536:                                              ; preds = %533
  store float 0.000000e+00, ptr %486, align 4, !tbaa !59
  br label %537

537:                                              ; preds = %536, %533
  %538 = and i32 %529, 4
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %541, label %540

540:                                              ; preds = %537
  store float 0.000000e+00, ptr %489, align 4, !tbaa !59
  br label %541

541:                                              ; preds = %537, %540
  %542 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 3
  %543 = load ptr, ptr %542, align 8, !tbaa !312
  %544 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4
  %545 = load float, ptr %544, align 4, !tbaa !59
  %546 = load float, ptr %9, align 4, !tbaa !59
  %547 = fadd float %545, %546
  store float %547, ptr %543, align 4, !tbaa !59
  %548 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4, i64 1
  %549 = load float, ptr %548, align 4, !tbaa !59
  %550 = load float, ptr %486, align 4, !tbaa !59
  %551 = fadd float %549, %550
  %552 = getelementptr inbounds float, ptr %543, i64 1
  store float %551, ptr %552, align 4, !tbaa !59
  %553 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4, i64 2
  %554 = load float, ptr %553, align 4, !tbaa !59
  %555 = load float, ptr %489, align 4, !tbaa !59
  %556 = fadd float %554, %555
  %557 = getelementptr inbounds float, ptr %543, i64 2
  store float %556, ptr %557, align 4, !tbaa !59
  call fastcc void @constraintTransLim(ptr noundef %0, ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #16
  ret void
}

declare zeroext i8 @clipUVTransform(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @clipUVData(ptr noundef) local_unnamed_addr #2

declare void @mat3_to_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @constraintTransLim(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.bConstraintOb, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !326
  %7 = icmp eq ptr %6, null
  br i1 %7, label %85, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @BKE_constraint_typeinfo_from_type(i32 noundef 6) #16
  %10 = tail call ptr @BKE_constraint_typeinfo_from_type(i32 noundef 14) #16
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %3, i8 0, i64 160, i1 false)
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %12 = load ptr, ptr %11, align 8, !tbaa !109
  %13 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !280
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds %struct.bConstraintOb, ptr %3, i64 0, i32 3
  call void @unit_m4(ptr noundef nonnull %16) #16
  %17 = getelementptr inbounds %struct.bConstraintOb, ptr %3, i64 0, i32 3, i64 3
  %18 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !312
  %20 = load float, ptr %19, align 4, !tbaa !59
  store float %20, ptr %17, align 8, !tbaa !59
  %21 = getelementptr inbounds float, ptr %19, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !59
  %23 = getelementptr inbounds %struct.bConstraintOb, ptr %3, i64 0, i32 3, i64 3, i64 1
  store float %22, ptr %23, align 4, !tbaa !59
  %24 = getelementptr inbounds float, ptr %19, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !59
  %26 = getelementptr inbounds %struct.bConstraintOb, ptr %3, i64 0, i32 3, i64 3, i64 2
  store float %25, ptr %26, align 8, !tbaa !59
  %27 = load ptr, ptr %5, align 8, !tbaa !148
  %28 = icmp eq ptr %27, null
  br i1 %28, label %78, label %29

29:                                               ; preds = %8
  %30 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 8
  %31 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 9
  br label %32

32:                                               ; preds = %29, %75
  %33 = phi ptr [ %27, %29 ], [ %76, %75 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %34 = getelementptr inbounds %struct.bConstraint, ptr %33, i64 0, i32 4
  %35 = load i16, ptr %34, align 2, !tbaa !328
  %36 = and i16 %35, 516
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %75

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.bConstraint, ptr %33, i64 0, i32 9
  %40 = load float, ptr %39, align 8, !tbaa !330
  %41 = fcmp oeq float %40, 0.000000e+00
  br i1 %41, label %75, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.bConstraint, ptr %33, i64 0, i32 3
  %44 = load i16, ptr %43, align 8, !tbaa !331
  switch i16 %44, label %61 [
    i16 6, label %45
    i16 14, label %53
  ]

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.bConstraint, ptr %33, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !332
  %48 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %47, i64 0, i32 7
  %49 = load i16, ptr %48, align 2, !tbaa !339
  %50 = and i16 %49, 2
  %51 = icmp eq i16 %50, 0
  %52 = select i1 %51, ptr null, ptr %9
  br i1 %51, label %75, label %61

53:                                               ; preds = %42
  %54 = getelementptr inbounds %struct.bConstraint, ptr %33, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !332
  %56 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %55, i64 0, i32 4
  %57 = load i16, ptr %56, align 8, !tbaa !341
  %58 = and i16 %57, 2
  %59 = icmp eq i16 %58, 0
  %60 = select i1 %59, ptr null, ptr %10
  br i1 %59, label %75, label %61

61:                                               ; preds = %42, %53, %45
  %62 = phi ptr [ %52, %45 ], [ %60, %53 ], [ null, %42 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %75, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.bConstraint, ptr %33, i64 0, i32 5
  %66 = load i8, ptr %65, align 4, !tbaa !335
  switch i8 %66, label %75 [
    i8 0, label %67
    i8 1, label %68
  ]

67:                                               ; preds = %64
  call void @mul_m4_m3m4(ptr noundef nonnull %16, ptr noundef nonnull %30, ptr noundef nonnull %16) #16
  br label %68

68:                                               ; preds = %64, %67
  call void @BKE_constraint_targets_for_solving_get(ptr noundef nonnull %33, ptr noundef nonnull %3, ptr noundef nonnull %4, float noundef %15) #16
  %69 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %62, i64 0, i32 11
  %70 = load ptr, ptr %69, align 8, !tbaa !336
  call void %70(ptr noundef nonnull %33, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %71 = load i8, ptr %65, align 4, !tbaa !335
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  call void @mul_m4_m3m4(ptr noundef nonnull %16, ptr noundef nonnull %31, ptr noundef nonnull %16) #16
  br label %74

74:                                               ; preds = %73, %68
  call void @BLI_freelistN(ptr noundef nonnull %4) #16
  br label %75

75:                                               ; preds = %61, %74, %64, %38, %32, %45, %53
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  %76 = load ptr, ptr %33, align 8, !tbaa !148
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %32, !llvm.loop !343

78:                                               ; preds = %75, %8
  %79 = load ptr, ptr %18, align 8, !tbaa !312
  %80 = load float, ptr %17, align 8, !tbaa !59
  store float %80, ptr %79, align 4, !tbaa !59
  %81 = load float, ptr %23, align 4, !tbaa !59
  %82 = getelementptr inbounds float, ptr %79, i64 1
  store float %81, ptr %82, align 4, !tbaa !59
  %83 = load float, ptr %26, align 8, !tbaa !59
  %84 = getelementptr inbounds float, ptr %79, i64 2
  store float %83, ptr %84, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %3) #16
  br label %85

85:                                               ; preds = %78, %2
  ret void
}

declare ptr @BKE_constraint_typeinfo_from_type(i32 noundef) local_unnamed_addr #2

declare void @size_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_m3m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mat4_to_size(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_constraint_targets_for_solving_get(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @applySkinResize(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [256 x i8], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #16
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %10 = load float, ptr %9, align 4, !tbaa !59
  %11 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float %10, ptr %11, align 4, !tbaa !59
  %12 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float %10, ptr %12, align 4, !tbaa !59
  store float %10, ptr %3, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %3) #16
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %14 = call zeroext i8 @applyNumInput(ptr noundef nonnull %13, ptr noundef nonnull %3) #16
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  call void @constraintNumInput(ptr noundef %0, ptr noundef nonnull %3) #16
  br label %17

17:                                               ; preds = %16, %2
  call void @applySnapping(ptr noundef %0, ptr noundef nonnull %3) #16
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !99
  %20 = and i32 %19, 1048576
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 48
  %24 = load float, ptr %23, align 4, !tbaa !59
  store float %24, ptr %3, align 4, !tbaa !59
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 48, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !59
  store float %26, ptr %12, align 4, !tbaa !59
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 48, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !59
  store float %28, ptr %11, align 4, !tbaa !59
  br label %29

29:                                               ; preds = %22, %17
  %30 = load float, ptr %3, align 4, !tbaa !59
  store float %30, ptr %9, align 4, !tbaa !59
  %31 = load float, ptr %12, align 4, !tbaa !59
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47, i64 1
  store float %31, ptr %32, align 4, !tbaa !59
  %33 = load float, ptr %11, align 4, !tbaa !59
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47, i64 2
  store float %33, ptr %34, align 4, !tbaa !59
  call void @size_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %3) #16
  call fastcc void @headerResize(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5)
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %36 = load i32, ptr %35, align 8, !tbaa !241
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %91

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !268
  %41 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 10
  %42 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  br label %43

43:                                               ; preds = %38, %86
  %44 = phi i32 [ 0, %38 ], [ %87, %86 ]
  %45 = phi ptr [ %40, %38 ], [ %88, %86 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  %46 = getelementptr inbounds %struct.TransData, ptr %45, i64 0, i32 16
  %47 = load i32, ptr %46, align 8, !tbaa !310
  %48 = and i32 %47, 4
  %49 = icmp eq i32 %48, 0
  %50 = and i32 %47, 2052
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %85

52:                                               ; preds = %43
  %53 = load i32, ptr %18, align 4, !tbaa !99
  %54 = and i32 %53, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.TransData, ptr %45, i64 0, i32 8
  call void @mul_m3_m3m3(ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %57) #16
  %58 = getelementptr inbounds %struct.TransData, ptr %45, i64 0, i32 9
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %58, ptr noundef nonnull %7) #16
  br label %60

59:                                               ; preds = %52
  call void @copy_m3_m3(ptr noundef nonnull %6, ptr noundef nonnull %4) #16
  br label %60

60:                                               ; preds = %59, %56
  %61 = load ptr, ptr %41, align 8, !tbaa !317
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  call void %61(ptr noundef %0, ptr noundef null, ptr noundef nonnull %6) #16
  br label %64

64:                                               ; preds = %63, %60
  call void @mat3_to_size(ptr noundef nonnull %8, ptr noundef nonnull %6) #16
  %65 = getelementptr inbounds %struct.TransData, ptr %45, i64 0, i32 13
  %66 = load ptr, ptr %65, align 8, !tbaa !320
  %67 = getelementptr inbounds %struct.TransDataExtension, ptr %66, i64 0, i32 12
  %68 = load float, ptr %67, align 8, !tbaa !59
  %69 = load float, ptr %8, align 4, !tbaa !59
  %70 = fadd float %69, -1.000000e+00
  %71 = getelementptr inbounds %struct.TransData, ptr %45, i64 0, i32 2
  %72 = load float, ptr %71, align 8, !tbaa !313
  %73 = call float @llvm.fmuladd.f32(float %70, float %72, float 1.000000e+00)
  %74 = fmul float %68, %73
  %75 = getelementptr inbounds %struct.TransData, ptr %45, i64 0, i32 5
  %76 = load ptr, ptr %75, align 8, !tbaa !323
  store float %74, ptr %76, align 4, !tbaa !59
  %77 = getelementptr inbounds %struct.TransDataExtension, ptr %66, i64 0, i32 12, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !59
  %79 = load float, ptr %42, align 4, !tbaa !59
  %80 = fadd float %79, -1.000000e+00
  %81 = load float, ptr %71, align 8, !tbaa !313
  %82 = call float @llvm.fmuladd.f32(float %80, float %81, float 1.000000e+00)
  %83 = fmul float %78, %82
  %84 = getelementptr inbounds float, ptr %76, i64 1
  store float %83, ptr %84, align 4, !tbaa !59
  br label %85

85:                                               ; preds = %43, %64
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #16
  br i1 %49, label %86, label %91

86:                                               ; preds = %85
  %87 = add nuw nsw i32 %44, 1
  %88 = getelementptr inbounds %struct.TransData, ptr %45, i64 1
  %89 = load i32, ptr %35, align 8, !tbaa !241
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %43, label %91, !llvm.loop !344

91:                                               ; preds = %86, %85, %29
  call void @recalcData(ptr noundef %0) #16
  %92 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %93 = load ptr, ptr %92, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %93, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @applyToSphere(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !268
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %9 = load float, ptr %8, align 4, !tbaa !59
  store float %9, ptr %3, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %3) #16
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %11 = call zeroext i8 @applyNumInput(ptr noundef nonnull %10, ptr noundef nonnull %3) #16
  %12 = load float, ptr %3, align 4, !tbaa !59
  %13 = fcmp olt float %12, 0.000000e+00
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store float 0.000000e+00, ptr %3, align 4, !tbaa !59
  br label %18

15:                                               ; preds = %2
  %16 = fcmp ogt float %12, 1.000000e+00
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  store float 1.000000e+00, ptr %3, align 4, !tbaa !59
  br label %18

18:                                               ; preds = %15, %17, %14
  %19 = load float, ptr %3, align 4, !tbaa !59
  store float %19, ptr %8, align 4, !tbaa !59
  %20 = call zeroext i8 @hasNumInput(ptr noundef nonnull %10) #16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %24 = load ptr, ptr %23, align 8, !tbaa !109
  %25 = getelementptr inbounds %struct.Scene, ptr %24, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef nonnull %25) #16
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %27 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.90, ptr noundef nonnull %5, ptr noundef nonnull %26) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  br label %33

28:                                               ; preds = %18
  %29 = load float, ptr %3, align 4, !tbaa !59
  %30 = fpext float %29 to double
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %32 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.91, double noundef %30, ptr noundef nonnull %31) #16
  br label %33

33:                                               ; preds = %28, %22
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %35 = load i32, ptr %34, align 8, !tbaa !241
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %106

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 1
  %40 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 2
  %41 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 5
  br label %42

42:                                               ; preds = %37, %101
  %43 = phi i32 [ 0, %37 ], [ %102, %101 ]
  %44 = phi ptr [ %7, %37 ], [ %103, %101 ]
  %45 = getelementptr inbounds %struct.TransData, ptr %44, i64 0, i32 16
  %46 = load i32, ptr %45, align 8, !tbaa !310
  %47 = and i32 %46, 4
  %48 = icmp eq i32 %47, 0
  %49 = and i32 %46, 2052
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %100

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.TransData, ptr %44, i64 0, i32 4
  %53 = load float, ptr %52, align 4, !tbaa !59
  %54 = load float, ptr %38, align 4, !tbaa !59
  %55 = fsub float %53, %54
  %56 = getelementptr inbounds %struct.TransData, ptr %44, i64 0, i32 4, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !59
  %58 = load float, ptr %39, align 4, !tbaa !59
  %59 = fsub float %57, %58
  %60 = getelementptr inbounds %struct.TransData, ptr %44, i64 0, i32 4, i64 2
  %61 = load float, ptr %60, align 4, !tbaa !59
  %62 = load float, ptr %40, align 4, !tbaa !59
  %63 = fsub float %61, %62
  %64 = fmul float %59, %59
  %65 = call float @llvm.fmuladd.f32(float %55, float %55, float %64)
  %66 = call float @llvm.fmuladd.f32(float %63, float %63, float %65)
  %67 = fcmp ogt float %66, 0x38AA95A5C0000000
  br i1 %67, label %68, label %74

68:                                               ; preds = %51
  %69 = call float @sqrtf(float noundef %66) #16
  %70 = fdiv float 1.000000e+00, %69
  %71 = fmul float %55, %70
  %72 = fmul float %59, %70
  %73 = fmul float %63, %70
  br label %74

74:                                               ; preds = %51, %68
  %75 = phi float [ %72, %68 ], [ 0.000000e+00, %51 ]
  %76 = phi float [ %71, %68 ], [ 0.000000e+00, %51 ]
  %77 = phi float [ %73, %68 ], [ 0.000000e+00, %51 ]
  %78 = phi float [ %69, %68 ], [ 0.000000e+00, %51 ]
  %79 = load float, ptr %3, align 4, !tbaa !59
  %80 = getelementptr inbounds %struct.TransData, ptr %44, i64 0, i32 2
  %81 = load float, ptr %80, align 8, !tbaa !313
  %82 = fmul float %79, %81
  %83 = fsub float 1.000000e+00, %82
  %84 = load float, ptr %41, align 4, !tbaa !269
  %85 = fmul float %84, %82
  %86 = call float @llvm.fmuladd.f32(float %78, float %83, float %85)
  %87 = fmul float %76, %86
  %88 = fmul float %75, %86
  %89 = fmul float %77, %86
  %90 = getelementptr inbounds %struct.TransData, ptr %44, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !312
  %92 = load float, ptr %38, align 4, !tbaa !59
  %93 = fadd float %92, %87
  store float %93, ptr %91, align 4, !tbaa !59
  %94 = load float, ptr %39, align 4, !tbaa !59
  %95 = fadd float %88, %94
  %96 = getelementptr inbounds float, ptr %91, i64 1
  store float %95, ptr %96, align 4, !tbaa !59
  %97 = load float, ptr %40, align 4, !tbaa !59
  %98 = fadd float %89, %97
  %99 = getelementptr inbounds float, ptr %91, i64 2
  store float %98, ptr %99, align 4, !tbaa !59
  br label %100

100:                                              ; preds = %42, %74
  br i1 %48, label %101, label %106

101:                                              ; preds = %100
  %102 = add nuw nsw i32 %43, 1
  %103 = getelementptr inbounds %struct.TransData, ptr %44, i64 1
  %104 = load i32, ptr %34, align 8, !tbaa !241
  %105 = icmp slt i32 %102, %104
  br i1 %105, label %42, label %106, !llvm.loop !345

106:                                              ; preds = %101, %100, %33
  call void @recalcData(ptr noundef %0) #16
  %107 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %108 = load ptr, ptr %107, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %108, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @applyRotation(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [256 x i8], align 16
  %5 = alloca float, align 4
  %6 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %8 = load float, ptr %7, align 4, !tbaa !59
  store float %8, ptr %5, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %5) #16
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %10 = load i32, ptr %9, align 4, !tbaa !97
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !315
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 49
  call void %15(ptr noundef %0, ptr noundef null, ptr noundef nonnull %18, ptr noundef null) #16
  br label %29

19:                                               ; preds = %13, %2
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 49
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 50
  %22 = load float, ptr %21, align 4, !tbaa !59
  store float %22, ptr %20, align 4, !tbaa !59
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 50, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !59
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 49, i64 1
  store float %24, ptr %25, align 4, !tbaa !59
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 50, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !59
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 49, i64 2
  store float %27, ptr %28, align 4, !tbaa !59
  br label %29

29:                                               ; preds = %19, %17
  call void @applySnapping(ptr noundef %0, ptr noundef nonnull %5) #16
  %30 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %31 = call zeroext i8 @applyNumInput(ptr noundef nonnull %30, ptr noundef nonnull %5) #16
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load float, ptr %5, align 4, !tbaa !59
  %35 = call float @angle_wrap_rad(float noundef %34) #16
  store float %35, ptr %5, align 4, !tbaa !59
  br label %36

36:                                               ; preds = %33, %29
  %37 = call zeroext i8 @hasNumInput(ptr noundef nonnull %30) #16
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  %40 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %41 = load ptr, ptr %40, align 8, !tbaa !109
  %42 = getelementptr inbounds %struct.Scene, ptr %41, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %30, ptr noundef nonnull %6, ptr noundef nonnull %42) #16
  %43 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %44 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %45 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.92, ptr noundef nonnull %6, ptr noundef nonnull %43, ptr noundef nonnull %44) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  br label %53

46:                                               ; preds = %36
  %47 = load float, ptr %5, align 4, !tbaa !59
  %48 = fmul float %47, 0x404CA5DC20000000
  %49 = fpext float %48 to double
  %50 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %51 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %52 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.93, double noundef %49, ptr noundef nonnull %50, ptr noundef nonnull %51) #16
  br label %53

53:                                               ; preds = %46, %39
  %54 = phi i64 [ %45, %39 ], [ %52, %46 ]
  %55 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !99
  %57 = and i32 %56, 33560576
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds i8, ptr %4, i64 %54
  %61 = sub i64 256, %54
  %62 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 18
  %63 = load float, ptr %62, align 4, !tbaa !136
  %64 = fpext float %63 to double
  %65 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %60, i64 noundef %61, ptr noundef nonnull @.str.89, double noundef %64) #16
  br label %66

66:                                               ; preds = %59, %53
  %67 = load float, ptr %5, align 4, !tbaa !59
  store float %67, ptr %7, align 4, !tbaa !59
  %68 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 49
  %69 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %70 = load ptr, ptr %69, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #16
  call void @axis_angle_normalized_to_mat3(ptr noundef nonnull %3, ptr noundef nonnull %68, float noundef %67) #16
  %71 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %72 = load i32, ptr %71, align 8, !tbaa !241
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %106

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 11
  %76 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 32
  br label %77

77:                                               ; preds = %74, %101
  %78 = phi i32 [ 0, %74 ], [ %102, %101 ]
  %79 = phi ptr [ %70, %74 ], [ %103, %101 ]
  %80 = getelementptr inbounds %struct.TransData, ptr %79, i64 0, i32 16
  %81 = load i32, ptr %80, align 8, !tbaa !310
  %82 = and i32 %81, 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %106

84:                                               ; preds = %77
  %85 = and i32 %81, 2048
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %84
  %88 = load ptr, ptr %75, align 8, !tbaa !315
  %89 = icmp eq ptr %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  call void %88(ptr noundef %0, ptr noundef %79, ptr noundef nonnull %68, ptr noundef null) #16
  br label %95

91:                                               ; preds = %87
  %92 = load i32, ptr %55, align 4, !tbaa !99
  %93 = and i32 %92, 2048
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %91, %90
  %96 = getelementptr inbounds %struct.TransData, ptr %79, i64 0, i32 2
  %97 = load float, ptr %96, align 8, !tbaa !313
  %98 = fmul float %67, %97
  call void @axis_angle_normalized_to_mat3(ptr noundef nonnull %3, ptr noundef nonnull %68, float noundef %98) #16
  br label %99

99:                                               ; preds = %95, %91
  %100 = load i16, ptr %76, align 2, !tbaa !240
  call fastcc void @ElementRotation(ptr noundef %0, ptr noundef %79, ptr noundef nonnull %3, i16 noundef signext %100)
  br label %101

101:                                              ; preds = %99, %84
  %102 = add nuw nsw i32 %78, 1
  %103 = getelementptr inbounds %struct.TransData, ptr %79, i64 1
  %104 = load i32, ptr %71, align 8, !tbaa !241
  %105 = icmp slt i32 %102, %104
  br i1 %105, label %77, label %106, !llvm.loop !346

106:                                              ; preds = %77, %101, %66
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #16
  call void @recalcData(ptr noundef %0) #16
  %107 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %108 = load ptr, ptr %107, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %108, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #16
  ret void
}

declare float @angle_wrap_rad(float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ElementRotation(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [4 x float], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [3 x [3 x float]], align 16
  %13 = alloca [4 x float], align 16
  %14 = alloca [4 x float], align 16
  %15 = alloca [3 x [3 x float]], align 16
  %16 = alloca [4 x float], align 16
  %17 = alloca [4 x float], align 16
  %18 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #16
  %19 = icmp eq i16 %3, 2
  br i1 %19, label %20, label %42

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !99
  %23 = and i32 %22, 5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %27 = load ptr, ptr %26, align 8, !tbaa !100
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 3
  %31 = load i16, ptr %30, align 8, !tbaa !101
  switch i16 %31, label %32 [
    i16 1, label %42
    i16 2, label %42
    i16 5, label %42
    i16 25, label %42
  ]

32:                                               ; preds = %29, %25
  %33 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %34 = load i8, ptr %33, align 8, !tbaa !34
  %35 = icmp eq i8 %34, 2
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !58
  %39 = and i32 %38, 448
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i8
  br label %42

42:                                               ; preds = %4, %20, %29, %29, %29, %29, %32, %36
  %43 = phi i8 [ 0, %4 ], [ 1, %32 ], [ 1, %29 ], [ 1, %20 ], [ %41, %36 ], [ 1, %29 ], [ 1, %29 ], [ 1, %29 ]
  %44 = icmp eq i8 %43, 0
  %45 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7
  %46 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %47 = select i1 %44, ptr %46, ptr %45
  %48 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !99
  %50 = and i32 %49, 64
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %130, label %52

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 8
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %53) #16
  %54 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 9
  call void @mul_m3_m3m3(ptr noundef nonnull %7, ptr noundef nonnull %54, ptr noundef nonnull %6) #16
  %55 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4
  %56 = load float, ptr %55, align 4, !tbaa !59
  %57 = load float, ptr %47, align 4, !tbaa !59
  %58 = fsub float %56, %57
  store float %58, ptr %5, align 4, !tbaa !59
  %59 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !59
  %61 = getelementptr inbounds float, ptr %47, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !59
  %63 = fsub float %60, %62
  %64 = getelementptr inbounds float, ptr %5, i64 1
  store float %63, ptr %64, align 4, !tbaa !59
  %65 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !59
  %67 = getelementptr inbounds float, ptr %47, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !59
  %69 = fsub float %66, %68
  %70 = getelementptr inbounds float, ptr %5, i64 2
  store float %69, ptr %70, align 4, !tbaa !59
  call void @mul_m3_v3(ptr noundef nonnull %7, ptr noundef nonnull %5) #16
  %71 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !312
  %73 = load float, ptr %5, align 4, !tbaa !59
  %74 = load float, ptr %47, align 4, !tbaa !59
  %75 = fadd float %73, %74
  store float %75, ptr %72, align 4, !tbaa !59
  %76 = load float, ptr %64, align 4, !tbaa !59
  %77 = load float, ptr %61, align 4, !tbaa !59
  %78 = fadd float %76, %77
  %79 = getelementptr inbounds float, ptr %72, i64 1
  store float %78, ptr %79, align 4, !tbaa !59
  %80 = load float, ptr %70, align 4, !tbaa !59
  %81 = load float, ptr %67, align 4, !tbaa !59
  %82 = fadd float %80, %81
  %83 = getelementptr inbounds float, ptr %72, i64 2
  store float %82, ptr %83, align 4, !tbaa !59
  %84 = load float, ptr %55, align 4, !tbaa !59
  %85 = fsub float %75, %84
  store float %85, ptr %5, align 4, !tbaa !59
  %86 = load float, ptr %59, align 4, !tbaa !59
  %87 = fsub float %78, %86
  store float %87, ptr %64, align 4, !tbaa !59
  %88 = load float, ptr %65, align 4, !tbaa !59
  %89 = fsub float %82, %88
  store float %89, ptr %70, align 4, !tbaa !59
  %90 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 17
  %91 = load i16, ptr %90, align 4, !tbaa !321
  %92 = zext i16 %91 to i32
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %52
  store float 0.000000e+00, ptr %5, align 4, !tbaa !59
  br label %96

96:                                               ; preds = %95, %52
  %97 = and i32 %92, 2
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  store float 0.000000e+00, ptr %64, align 4, !tbaa !59
  br label %100

100:                                              ; preds = %99, %96
  %101 = and i32 %92, 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  store float 0.000000e+00, ptr %70, align 4, !tbaa !59
  br label %104

104:                                              ; preds = %100, %103
  %105 = load float, ptr %5, align 4, !tbaa !59
  %106 = fadd float %84, %105
  store float %106, ptr %72, align 4, !tbaa !59
  %107 = load float, ptr %59, align 4, !tbaa !59
  %108 = load float, ptr %64, align 4, !tbaa !59
  %109 = fadd float %107, %108
  store float %109, ptr %79, align 4, !tbaa !59
  %110 = load float, ptr %65, align 4, !tbaa !59
  %111 = load float, ptr %70, align 4, !tbaa !59
  %112 = fadd float %110, %111
  store float %112, ptr %83, align 4, !tbaa !59
  %113 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 16
  %114 = load i32, ptr %113, align 8, !tbaa !310
  %115 = and i32 %114, 8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %508, label %117

117:                                              ; preds = %104
  call void @_va_mul_m3_series_4(ptr noundef nonnull %9, ptr noundef nonnull %54, ptr noundef %2, ptr noundef nonnull %53) #16
  call void @mat3_to_quat(ptr noundef nonnull %10, ptr noundef nonnull %9) #16
  %118 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 13
  %119 = load ptr, ptr %118, align 8, !tbaa !320
  %120 = getelementptr inbounds %struct.TransDataExtension, ptr %119, i64 0, i32 5
  %121 = load ptr, ptr %120, align 8, !tbaa !347
  %122 = icmp eq ptr %121, null
  br i1 %122, label %508, label %123

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.TransDataExtension, ptr %119, i64 0, i32 6
  call void @mul_qt_qtqt(ptr noundef nonnull %121, ptr noundef nonnull %10, ptr noundef nonnull %124) #16
  %125 = load i16, ptr %90, align 4, !tbaa !321
  %126 = load ptr, ptr %118, align 8, !tbaa !320
  %127 = getelementptr inbounds %struct.TransDataExtension, ptr %126, i64 0, i32 5
  %128 = load ptr, ptr %127, align 8, !tbaa !347
  %129 = getelementptr inbounds %struct.TransDataExtension, ptr %126, i64 0, i32 6
  call fastcc void @protectedQuaternionBits(i16 noundef signext %125, ptr noundef %128, ptr noundef nonnull %129)
  br label %508

130:                                              ; preds = %42
  %131 = and i32 %49, 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %316, label %133

133:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #16
  %134 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %135 = load ptr, ptr %134, align 8, !tbaa !273
  %136 = getelementptr inbounds %struct.Object, ptr %135, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %11, ptr noundef nonnull %136) #16
  %137 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %12, ptr noundef nonnull %11) #16
  %138 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 16
  %139 = load i32, ptr %138, align 8, !tbaa !310
  %140 = and i32 %139, 8192
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %219

142:                                              ; preds = %133
  %143 = load float, ptr %45, align 4, !tbaa !59
  %144 = load float, ptr %47, align 4, !tbaa !59
  %145 = fsub float %143, %144
  store float %145, ptr %5, align 4, !tbaa !59
  %146 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7, i64 1
  %147 = load float, ptr %146, align 4, !tbaa !59
  %148 = getelementptr inbounds float, ptr %47, i64 1
  %149 = load float, ptr %148, align 4, !tbaa !59
  %150 = fsub float %147, %149
  %151 = getelementptr inbounds float, ptr %5, i64 1
  store float %150, ptr %151, align 4, !tbaa !59
  %152 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7, i64 2
  %153 = load float, ptr %152, align 4, !tbaa !59
  %154 = getelementptr inbounds float, ptr %47, i64 2
  %155 = load float, ptr %154, align 4, !tbaa !59
  %156 = fsub float %153, %155
  %157 = getelementptr inbounds float, ptr %5, i64 2
  store float %156, ptr %157, align 4, !tbaa !59
  call void @mul_m3_v3(ptr noundef nonnull %11, ptr noundef nonnull %5) #16
  call void @mul_m3_v3(ptr noundef %2, ptr noundef nonnull %5) #16
  call void @mul_m3_v3(ptr noundef nonnull %12, ptr noundef nonnull %5) #16
  %158 = load float, ptr %47, align 4, !tbaa !59
  %159 = load float, ptr %5, align 4, !tbaa !59
  %160 = fadd float %158, %159
  store float %160, ptr %5, align 4, !tbaa !59
  %161 = load float, ptr %148, align 4, !tbaa !59
  %162 = load float, ptr %151, align 4, !tbaa !59
  %163 = fadd float %161, %162
  store float %163, ptr %151, align 4, !tbaa !59
  %164 = load float, ptr %154, align 4, !tbaa !59
  %165 = load float, ptr %157, align 4, !tbaa !59
  %166 = fadd float %164, %165
  store float %166, ptr %157, align 4, !tbaa !59
  %167 = load float, ptr %45, align 4, !tbaa !59
  %168 = fsub float %160, %167
  store float %168, ptr %5, align 4, !tbaa !59
  %169 = load float, ptr %146, align 4, !tbaa !59
  %170 = fsub float %163, %169
  store float %170, ptr %151, align 4, !tbaa !59
  %171 = load float, ptr %152, align 4, !tbaa !59
  %172 = fsub float %166, %171
  store float %172, ptr %157, align 4, !tbaa !59
  %173 = load i32, ptr %138, align 8, !tbaa !310
  %174 = and i32 %173, 524288
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %142
  %177 = and i32 %173, 1048576
  %178 = icmp eq i32 %177, 0
  call void @mul_m3_v3(ptr noundef nonnull %11, ptr noundef nonnull %5) #16
  br i1 %178, label %183, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 13
  %181 = load ptr, ptr %180, align 8, !tbaa !320
  %182 = getelementptr inbounds %struct.TransDataExtension, ptr %181, i64 0, i32 14
  br label %185

183:                                              ; preds = %176
  %184 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 9
  br label %185

185:                                              ; preds = %183, %179
  %186 = phi ptr [ %182, %179 ], [ %184, %183 ]
  call void @mul_m3_v3(ptr noundef nonnull %186, ptr noundef nonnull %5) #16
  br label %187

187:                                              ; preds = %185, %142
  %188 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 17
  %189 = load i16, ptr %188, align 4, !tbaa !321
  %190 = zext i16 %189 to i32
  %191 = and i32 %190, 1
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %187
  store float 0.000000e+00, ptr %5, align 4, !tbaa !59
  br label %194

194:                                              ; preds = %193, %187
  %195 = and i32 %190, 2
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %194
  store float 0.000000e+00, ptr %151, align 4, !tbaa !59
  br label %198

198:                                              ; preds = %197, %194
  %199 = and i32 %190, 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %198
  store float 0.000000e+00, ptr %157, align 4, !tbaa !59
  br label %202

202:                                              ; preds = %198, %201
  %203 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 3
  %204 = load ptr, ptr %203, align 8, !tbaa !312
  %205 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4
  %206 = load float, ptr %205, align 4, !tbaa !59
  %207 = load float, ptr %5, align 4, !tbaa !59
  %208 = fadd float %206, %207
  store float %208, ptr %204, align 4, !tbaa !59
  %209 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4, i64 1
  %210 = load float, ptr %209, align 4, !tbaa !59
  %211 = load float, ptr %151, align 4, !tbaa !59
  %212 = fadd float %210, %211
  %213 = getelementptr inbounds float, ptr %204, i64 1
  store float %212, ptr %213, align 4, !tbaa !59
  %214 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4, i64 2
  %215 = load float, ptr %214, align 4, !tbaa !59
  %216 = load float, ptr %157, align 4, !tbaa !59
  %217 = fadd float %215, %216
  %218 = getelementptr inbounds float, ptr %204, i64 2
  store float %217, ptr %218, align 4, !tbaa !59
  call fastcc void @constraintTransLim(ptr noundef %0, ptr noundef %1)
  br label %219

219:                                              ; preds = %202, %133
  %220 = load i32, ptr %48, align 4, !tbaa !99
  %221 = and i32 %220, 16384
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %315

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 13
  %225 = load ptr, ptr %224, align 8, !tbaa !320
  %226 = getelementptr inbounds %struct.TransDataExtension, ptr %225, i64 0, i32 17
  %227 = load i32, ptr %226, align 8, !tbaa !348
  switch i32 %227, label %263 [
    i32 0, label %228
    i32 -1, label %241
  ]

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.TransDataExtension, ptr %225, i64 0, i32 16
  %230 = getelementptr inbounds %struct.TransDataExtension, ptr %225, i64 0, i32 15
  call void @_va_mul_m3_series_4(ptr noundef nonnull %9, ptr noundef nonnull %229, ptr noundef %2, ptr noundef nonnull %230) #16
  call void @mat3_to_quat(ptr noundef nonnull %10, ptr noundef nonnull %9) #16
  %231 = load ptr, ptr %224, align 8, !tbaa !320
  %232 = getelementptr inbounds %struct.TransDataExtension, ptr %231, i64 0, i32 5
  %233 = load ptr, ptr %232, align 8, !tbaa !347
  %234 = getelementptr inbounds %struct.TransDataExtension, ptr %231, i64 0, i32 6
  call void @mul_qt_qtqt(ptr noundef %233, ptr noundef nonnull %10, ptr noundef nonnull %234) #16
  %235 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 17
  %236 = load i16, ptr %235, align 4, !tbaa !321
  %237 = load ptr, ptr %224, align 8, !tbaa !320
  %238 = getelementptr inbounds %struct.TransDataExtension, ptr %237, i64 0, i32 5
  %239 = load ptr, ptr %238, align 8, !tbaa !347
  %240 = getelementptr inbounds %struct.TransDataExtension, ptr %237, i64 0, i32 6
  call fastcc void @protectedQuaternionBits(i16 noundef signext %236, ptr noundef %239, ptr noundef nonnull %240)
  br label %314

241:                                              ; preds = %223
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #16
  %242 = getelementptr inbounds %struct.TransDataExtension, ptr %225, i64 0, i32 10
  %243 = getelementptr inbounds %struct.TransDataExtension, ptr %225, i64 0, i32 8
  %244 = load float, ptr %243, align 8, !tbaa !349
  call void @axis_angle_to_quat(ptr noundef nonnull %13, ptr noundef nonnull %242, float noundef %244) #16
  %245 = load ptr, ptr %224, align 8, !tbaa !320
  %246 = getelementptr inbounds %struct.TransDataExtension, ptr %245, i64 0, i32 16
  %247 = getelementptr inbounds %struct.TransDataExtension, ptr %245, i64 0, i32 15
  call void @_va_mul_m3_series_4(ptr noundef nonnull %9, ptr noundef nonnull %246, ptr noundef %2, ptr noundef nonnull %247) #16
  call void @mat3_to_quat(ptr noundef nonnull %10, ptr noundef nonnull %9) #16
  call void @mul_qt_qtqt(ptr noundef nonnull %14, ptr noundef nonnull %10, ptr noundef nonnull %13) #16
  %248 = load ptr, ptr %224, align 8, !tbaa !320
  %249 = getelementptr inbounds %struct.TransDataExtension, ptr %248, i64 0, i32 9
  %250 = load ptr, ptr %249, align 8, !tbaa !350
  %251 = getelementptr inbounds %struct.TransDataExtension, ptr %248, i64 0, i32 7
  %252 = load ptr, ptr %251, align 8, !tbaa !351
  call void @quat_to_axis_angle(ptr noundef %250, ptr noundef %252, ptr noundef nonnull %14) #16
  %253 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 17
  %254 = load i16, ptr %253, align 4, !tbaa !321
  %255 = load ptr, ptr %224, align 8, !tbaa !320
  %256 = getelementptr inbounds %struct.TransDataExtension, ptr %255, i64 0, i32 9
  %257 = load ptr, ptr %256, align 8, !tbaa !350
  %258 = getelementptr inbounds %struct.TransDataExtension, ptr %255, i64 0, i32 7
  %259 = load ptr, ptr %258, align 8, !tbaa !351
  %260 = getelementptr inbounds %struct.TransDataExtension, ptr %255, i64 0, i32 10
  %261 = getelementptr inbounds %struct.TransDataExtension, ptr %255, i64 0, i32 8
  %262 = load float, ptr %261, align 8, !tbaa !349
  call fastcc void @protectedAxisAngleBits(i16 noundef signext %254, ptr noundef %257, ptr noundef %259, ptr noundef nonnull %260, float noundef %262)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #16
  br label %314

263:                                              ; preds = %223
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %15) #16
  %264 = getelementptr inbounds %struct.TransDataExtension, ptr %225, i64 0, i32 15
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %264) #16
  %265 = load ptr, ptr %224, align 8, !tbaa !320
  %266 = getelementptr inbounds %struct.TransDataExtension, ptr %265, i64 0, i32 16
  call void @mul_m3_m3m3(ptr noundef nonnull %7, ptr noundef nonnull %266, ptr noundef nonnull %6) #16
  %267 = load ptr, ptr %224, align 8, !tbaa !320
  %268 = getelementptr inbounds %struct.TransDataExtension, ptr %267, i64 0, i32 4
  %269 = load float, ptr %268, align 4, !tbaa !59
  store float %269, ptr %8, align 4, !tbaa !59
  %270 = getelementptr inbounds %struct.TransDataExtension, ptr %267, i64 0, i32 4, i64 1
  %271 = load float, ptr %270, align 4, !tbaa !59
  %272 = getelementptr inbounds float, ptr %8, i64 1
  store float %271, ptr %272, align 4, !tbaa !59
  %273 = getelementptr inbounds %struct.TransDataExtension, ptr %267, i64 0, i32 4, i64 2
  %274 = load float, ptr %273, align 4, !tbaa !59
  %275 = getelementptr inbounds float, ptr %8, i64 2
  store float %274, ptr %275, align 4, !tbaa !59
  %276 = getelementptr inbounds %struct.TransDataExtension, ptr %267, i64 0, i32 17
  %277 = load i32, ptr %276, align 8, !tbaa !348
  %278 = trunc i32 %277 to i16
  call void @eulO_to_mat3(ptr noundef nonnull %15, ptr noundef nonnull %8, i16 noundef signext %278) #16
  call void @mul_m3_m3m3(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %15) #16
  %279 = load ptr, ptr %224, align 8, !tbaa !320
  %280 = getelementptr inbounds %struct.TransDataExtension, ptr %279, i64 0, i32 3
  %281 = load ptr, ptr %280, align 8, !tbaa !352
  %282 = getelementptr inbounds %struct.TransDataExtension, ptr %279, i64 0, i32 17
  %283 = load i32, ptr %282, align 8, !tbaa !348
  %284 = trunc i32 %283 to i16
  call void @mat3_to_compatible_eulO(ptr noundef nonnull %8, ptr noundef %281, i16 noundef signext %284, ptr noundef nonnull %9) #16
  %285 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 17
  %286 = load i16, ptr %285, align 4, !tbaa !321
  %287 = load ptr, ptr %224, align 8, !tbaa !320
  %288 = zext i16 %286 to i32
  %289 = and i32 %288, 8
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %263
  %292 = getelementptr inbounds %struct.TransDataExtension, ptr %287, i64 0, i32 4
  %293 = load float, ptr %292, align 4, !tbaa !59
  store float %293, ptr %8, align 4, !tbaa !59
  br label %294

294:                                              ; preds = %291, %263
  %295 = and i32 %288, 16
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %300, label %297

297:                                              ; preds = %294
  %298 = getelementptr inbounds %struct.TransDataExtension, ptr %287, i64 0, i32 4, i64 1
  %299 = load float, ptr %298, align 4, !tbaa !59
  store float %299, ptr %272, align 4, !tbaa !59
  br label %300

300:                                              ; preds = %297, %294
  %301 = and i32 %288, 32
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %300
  %304 = getelementptr inbounds %struct.TransDataExtension, ptr %287, i64 0, i32 4, i64 2
  %305 = load float, ptr %304, align 4, !tbaa !59
  store float %305, ptr %275, align 4, !tbaa !59
  br label %306

306:                                              ; preds = %300, %303
  %307 = getelementptr inbounds %struct.TransDataExtension, ptr %287, i64 0, i32 3
  %308 = load ptr, ptr %307, align 8, !tbaa !352
  %309 = load float, ptr %8, align 4, !tbaa !59
  store float %309, ptr %308, align 4, !tbaa !59
  %310 = load float, ptr %272, align 4, !tbaa !59
  %311 = getelementptr inbounds float, ptr %308, i64 1
  store float %310, ptr %311, align 4, !tbaa !59
  %312 = load float, ptr %275, align 4, !tbaa !59
  %313 = getelementptr inbounds float, ptr %308, i64 2
  store float %312, ptr %313, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %15) #16
  br label %314

314:                                              ; preds = %241, %306, %228
  call fastcc void @constraintRotLim(ptr noundef %1)
  br label %315

315:                                              ; preds = %314, %219
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #16
  br label %508

316:                                              ; preds = %130
  %317 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 16
  %318 = load i32, ptr %317, align 8, !tbaa !310
  %319 = and i32 %318, 8192
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %384

321:                                              ; preds = %316
  %322 = load float, ptr %45, align 4, !tbaa !59
  %323 = load float, ptr %47, align 4, !tbaa !59
  %324 = fsub float %322, %323
  store float %324, ptr %5, align 4, !tbaa !59
  %325 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7, i64 1
  %326 = load float, ptr %325, align 4, !tbaa !59
  %327 = getelementptr inbounds float, ptr %47, i64 1
  %328 = load float, ptr %327, align 4, !tbaa !59
  %329 = fsub float %326, %328
  %330 = getelementptr inbounds float, ptr %5, i64 1
  store float %329, ptr %330, align 4, !tbaa !59
  %331 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7, i64 2
  %332 = load float, ptr %331, align 4, !tbaa !59
  %333 = getelementptr inbounds float, ptr %47, i64 2
  %334 = load float, ptr %333, align 4, !tbaa !59
  %335 = fsub float %332, %334
  %336 = getelementptr inbounds float, ptr %5, i64 2
  store float %335, ptr %336, align 4, !tbaa !59
  call void @mul_m3_v3(ptr noundef %2, ptr noundef nonnull %5) #16
  %337 = load float, ptr %47, align 4, !tbaa !59
  %338 = load float, ptr %5, align 4, !tbaa !59
  %339 = fadd float %337, %338
  store float %339, ptr %5, align 4, !tbaa !59
  %340 = load float, ptr %327, align 4, !tbaa !59
  %341 = load float, ptr %330, align 4, !tbaa !59
  %342 = fadd float %340, %341
  store float %342, ptr %330, align 4, !tbaa !59
  %343 = load float, ptr %333, align 4, !tbaa !59
  %344 = load float, ptr %336, align 4, !tbaa !59
  %345 = fadd float %343, %344
  store float %345, ptr %336, align 4, !tbaa !59
  %346 = load float, ptr %45, align 4, !tbaa !59
  %347 = fsub float %339, %346
  store float %347, ptr %5, align 4, !tbaa !59
  %348 = load float, ptr %325, align 4, !tbaa !59
  %349 = fsub float %342, %348
  store float %349, ptr %330, align 4, !tbaa !59
  %350 = load float, ptr %331, align 4, !tbaa !59
  %351 = fsub float %345, %350
  store float %351, ptr %336, align 4, !tbaa !59
  %352 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 9
  call void @mul_m3_v3(ptr noundef nonnull %352, ptr noundef nonnull %5) #16
  %353 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 17
  %354 = load i16, ptr %353, align 4, !tbaa !321
  %355 = zext i16 %354 to i32
  %356 = and i32 %355, 1
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %359, label %358

358:                                              ; preds = %321
  store float 0.000000e+00, ptr %5, align 4, !tbaa !59
  br label %359

359:                                              ; preds = %358, %321
  %360 = and i32 %355, 2
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %363, label %362

362:                                              ; preds = %359
  store float 0.000000e+00, ptr %330, align 4, !tbaa !59
  br label %363

363:                                              ; preds = %362, %359
  %364 = and i32 %355, 4
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %367, label %366

366:                                              ; preds = %363
  store float 0.000000e+00, ptr %336, align 4, !tbaa !59
  br label %367

367:                                              ; preds = %363, %366
  %368 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 3
  %369 = load ptr, ptr %368, align 8, !tbaa !312
  %370 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4
  %371 = load float, ptr %370, align 4, !tbaa !59
  %372 = load float, ptr %5, align 4, !tbaa !59
  %373 = fadd float %371, %372
  store float %373, ptr %369, align 4, !tbaa !59
  %374 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4, i64 1
  %375 = load float, ptr %374, align 4, !tbaa !59
  %376 = load float, ptr %330, align 4, !tbaa !59
  %377 = fadd float %375, %376
  %378 = getelementptr inbounds float, ptr %369, i64 1
  store float %377, ptr %378, align 4, !tbaa !59
  %379 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4, i64 2
  %380 = load float, ptr %379, align 4, !tbaa !59
  %381 = load float, ptr %336, align 4, !tbaa !59
  %382 = fadd float %380, %381
  %383 = getelementptr inbounds float, ptr %369, i64 2
  store float %382, ptr %383, align 4, !tbaa !59
  br label %384

384:                                              ; preds = %367, %316
  call fastcc void @constraintTransLim(ptr noundef %0, ptr noundef %1)
  %385 = load i32, ptr %48, align 4, !tbaa !99
  %386 = and i32 %385, 16384
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %508

388:                                              ; preds = %384
  %389 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 13
  %390 = load ptr, ptr %389, align 8, !tbaa !320
  %391 = getelementptr inbounds %struct.TransDataExtension, ptr %390, i64 0, i32 17
  %392 = load i32, ptr %391, align 8, !tbaa !348
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %398, label %394

394:                                              ; preds = %388
  %395 = load i32, ptr %317, align 8, !tbaa !310
  %396 = and i32 %395, 8
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %415, label %398

398:                                              ; preds = %394, %388
  %399 = getelementptr inbounds %struct.TransDataExtension, ptr %390, i64 0, i32 5
  %400 = load ptr, ptr %399, align 8, !tbaa !347
  %401 = icmp eq ptr %400, null
  br i1 %401, label %507, label %402

402:                                              ; preds = %398
  %403 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 9
  %404 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 8
  call void @_va_mul_m3_series_4(ptr noundef nonnull %9, ptr noundef nonnull %403, ptr noundef %2, ptr noundef nonnull %404) #16
  call void @mat3_to_quat(ptr noundef nonnull %10, ptr noundef nonnull %9) #16
  %405 = load ptr, ptr %389, align 8, !tbaa !320
  %406 = getelementptr inbounds %struct.TransDataExtension, ptr %405, i64 0, i32 5
  %407 = load ptr, ptr %406, align 8, !tbaa !347
  %408 = getelementptr inbounds %struct.TransDataExtension, ptr %405, i64 0, i32 6
  call void @mul_qt_qtqt(ptr noundef %407, ptr noundef nonnull %10, ptr noundef nonnull %408) #16
  %409 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 17
  %410 = load i16, ptr %409, align 4, !tbaa !321
  %411 = load ptr, ptr %389, align 8, !tbaa !320
  %412 = getelementptr inbounds %struct.TransDataExtension, ptr %411, i64 0, i32 5
  %413 = load ptr, ptr %412, align 8, !tbaa !347
  %414 = getelementptr inbounds %struct.TransDataExtension, ptr %411, i64 0, i32 6
  call fastcc void @protectedQuaternionBits(i16 noundef signext %410, ptr noundef %413, ptr noundef nonnull %414)
  br label %507

415:                                              ; preds = %394
  %416 = icmp eq i32 %392, -1
  br i1 %416, label %417, label %438

417:                                              ; preds = %415
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #16
  %418 = getelementptr inbounds %struct.TransDataExtension, ptr %390, i64 0, i32 10
  %419 = getelementptr inbounds %struct.TransDataExtension, ptr %390, i64 0, i32 8
  %420 = load float, ptr %419, align 8, !tbaa !349
  call void @axis_angle_to_quat(ptr noundef nonnull %16, ptr noundef nonnull %418, float noundef %420) #16
  %421 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 9
  %422 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 8
  call void @_va_mul_m3_series_4(ptr noundef nonnull %9, ptr noundef nonnull %421, ptr noundef %2, ptr noundef nonnull %422) #16
  call void @mat3_to_quat(ptr noundef nonnull %10, ptr noundef nonnull %9) #16
  call void @mul_qt_qtqt(ptr noundef nonnull %17, ptr noundef nonnull %10, ptr noundef nonnull %16) #16
  %423 = load ptr, ptr %389, align 8, !tbaa !320
  %424 = getelementptr inbounds %struct.TransDataExtension, ptr %423, i64 0, i32 9
  %425 = load ptr, ptr %424, align 8, !tbaa !350
  %426 = getelementptr inbounds %struct.TransDataExtension, ptr %423, i64 0, i32 7
  %427 = load ptr, ptr %426, align 8, !tbaa !351
  call void @quat_to_axis_angle(ptr noundef %425, ptr noundef %427, ptr noundef nonnull %17) #16
  %428 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 17
  %429 = load i16, ptr %428, align 4, !tbaa !321
  %430 = load ptr, ptr %389, align 8, !tbaa !320
  %431 = getelementptr inbounds %struct.TransDataExtension, ptr %430, i64 0, i32 9
  %432 = load ptr, ptr %431, align 8, !tbaa !350
  %433 = getelementptr inbounds %struct.TransDataExtension, ptr %430, i64 0, i32 7
  %434 = load ptr, ptr %433, align 8, !tbaa !351
  %435 = getelementptr inbounds %struct.TransDataExtension, ptr %430, i64 0, i32 10
  %436 = getelementptr inbounds %struct.TransDataExtension, ptr %430, i64 0, i32 8
  %437 = load float, ptr %436, align 8, !tbaa !349
  call fastcc void @protectedAxisAngleBits(i16 noundef signext %429, ptr noundef %432, ptr noundef %434, ptr noundef nonnull %435, float noundef %437)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #16
  br label %507

438:                                              ; preds = %415
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %18) #16
  %439 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 8
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %439) #16
  %440 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 9
  call void @mul_m3_m3m3(ptr noundef nonnull %7, ptr noundef nonnull %440, ptr noundef nonnull %6) #16
  %441 = load ptr, ptr %389, align 8, !tbaa !320
  %442 = getelementptr inbounds %struct.TransDataExtension, ptr %441, i64 0, i32 4
  %443 = load float, ptr %442, align 4, !tbaa !59
  %444 = load float, ptr %441, align 4, !tbaa !59
  %445 = fadd float %443, %444
  store float %445, ptr %8, align 4, !tbaa !59
  %446 = getelementptr inbounds %struct.TransDataExtension, ptr %441, i64 0, i32 4, i64 1
  %447 = load float, ptr %446, align 4, !tbaa !59
  %448 = getelementptr inbounds float, ptr %441, i64 1
  %449 = load float, ptr %448, align 4, !tbaa !59
  %450 = fadd float %447, %449
  %451 = getelementptr inbounds float, ptr %8, i64 1
  store float %450, ptr %451, align 4, !tbaa !59
  %452 = getelementptr inbounds %struct.TransDataExtension, ptr %441, i64 0, i32 4, i64 2
  %453 = load float, ptr %452, align 4, !tbaa !59
  %454 = getelementptr inbounds float, ptr %441, i64 2
  %455 = load float, ptr %454, align 4, !tbaa !59
  %456 = fadd float %453, %455
  %457 = getelementptr inbounds float, ptr %8, i64 2
  store float %456, ptr %457, align 4, !tbaa !59
  %458 = getelementptr inbounds %struct.TransDataExtension, ptr %441, i64 0, i32 17
  %459 = load i32, ptr %458, align 8, !tbaa !348
  %460 = trunc i32 %459 to i16
  call void @eulO_to_mat3(ptr noundef nonnull %18, ptr noundef nonnull %8, i16 noundef signext %460) #16
  call void @mul_m3_m3m3(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %18) #16
  %461 = load ptr, ptr %389, align 8, !tbaa !320
  %462 = getelementptr inbounds %struct.TransDataExtension, ptr %461, i64 0, i32 3
  %463 = load ptr, ptr %462, align 8, !tbaa !352
  %464 = getelementptr inbounds %struct.TransDataExtension, ptr %461, i64 0, i32 17
  %465 = load i32, ptr %464, align 8, !tbaa !348
  %466 = trunc i32 %465 to i16
  call void @mat3_to_compatible_eulO(ptr noundef nonnull %8, ptr noundef %463, i16 noundef signext %466, ptr noundef nonnull %9) #16
  %467 = load ptr, ptr %389, align 8, !tbaa !320
  %468 = load float, ptr %8, align 4, !tbaa !59
  %469 = load float, ptr %467, align 4, !tbaa !59
  %470 = fsub float %468, %469
  store float %470, ptr %8, align 4, !tbaa !59
  %471 = load float, ptr %451, align 4, !tbaa !59
  %472 = getelementptr inbounds float, ptr %467, i64 1
  %473 = load float, ptr %472, align 4, !tbaa !59
  %474 = fsub float %471, %473
  store float %474, ptr %451, align 4, !tbaa !59
  %475 = load float, ptr %457, align 4, !tbaa !59
  %476 = getelementptr inbounds float, ptr %467, i64 2
  %477 = load float, ptr %476, align 4, !tbaa !59
  %478 = fsub float %475, %477
  store float %478, ptr %457, align 4, !tbaa !59
  %479 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 17
  %480 = load i16, ptr %479, align 4, !tbaa !321
  %481 = zext i16 %480 to i32
  %482 = and i32 %481, 8
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %487, label %484

484:                                              ; preds = %438
  %485 = getelementptr inbounds %struct.TransDataExtension, ptr %467, i64 0, i32 4
  %486 = load float, ptr %485, align 4, !tbaa !59
  store float %486, ptr %8, align 4, !tbaa !59
  br label %487

487:                                              ; preds = %484, %438
  %488 = and i32 %481, 16
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %493, label %490

490:                                              ; preds = %487
  %491 = getelementptr inbounds %struct.TransDataExtension, ptr %467, i64 0, i32 4, i64 1
  %492 = load float, ptr %491, align 4, !tbaa !59
  store float %492, ptr %451, align 4, !tbaa !59
  br label %493

493:                                              ; preds = %490, %487
  %494 = and i32 %481, 32
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %499, label %496

496:                                              ; preds = %493
  %497 = getelementptr inbounds %struct.TransDataExtension, ptr %467, i64 0, i32 4, i64 2
  %498 = load float, ptr %497, align 4, !tbaa !59
  store float %498, ptr %457, align 4, !tbaa !59
  br label %499

499:                                              ; preds = %493, %496
  %500 = getelementptr inbounds %struct.TransDataExtension, ptr %467, i64 0, i32 3
  %501 = load ptr, ptr %500, align 8, !tbaa !352
  %502 = load float, ptr %8, align 4, !tbaa !59
  store float %502, ptr %501, align 4, !tbaa !59
  %503 = load float, ptr %451, align 4, !tbaa !59
  %504 = getelementptr inbounds float, ptr %501, i64 1
  store float %503, ptr %504, align 4, !tbaa !59
  %505 = load float, ptr %457, align 4, !tbaa !59
  %506 = getelementptr inbounds float, ptr %501, i64 2
  store float %505, ptr %506, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %18) #16
  br label %507

507:                                              ; preds = %417, %499, %398, %402
  call fastcc void @constraintRotLim(ptr noundef %1)
  br label %508

508:                                              ; preds = %315, %507, %384, %104, %123, %117
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret void
}

declare void @_va_mul_m3_series_4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mat3_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @protectedQuaternionBits(i16 noundef signext %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  %8 = zext i16 %0 to i32
  %9 = and i32 %8, 568
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %74, label %11

11:                                               ; preds = %3
  %12 = and i32 %8, 1024
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %40, label %14

14:                                               ; preds = %11
  %15 = and i32 %8, 512
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = load float, ptr %2, align 4, !tbaa !59
  store float %18, ptr %1, align 4, !tbaa !59
  br label %19

19:                                               ; preds = %17, %14
  %20 = and i32 %8, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds float, ptr %2, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !59
  %25 = getelementptr inbounds float, ptr %1, i64 1
  store float %24, ptr %25, align 4, !tbaa !59
  br label %26

26:                                               ; preds = %22, %19
  %27 = and i32 %8, 16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds float, ptr %2, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !59
  %32 = getelementptr inbounds float, ptr %1, i64 2
  store float %31, ptr %32, align 4, !tbaa !59
  br label %33

33:                                               ; preds = %29, %26
  %34 = and i32 %8, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %74, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds float, ptr %2, i64 3
  %38 = load float, ptr %37, align 4, !tbaa !59
  %39 = getelementptr inbounds float, ptr %1, i64 3
  store float %38, ptr %39, align 4, !tbaa !59
  br label %74

40:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  %41 = call float @normalize_qt_qt(ptr noundef nonnull %6, ptr noundef %1) #16
  %42 = call float @normalize_qt_qt(ptr noundef nonnull %7, ptr noundef %2) #16
  call void @quat_to_eul(ptr noundef nonnull %4, ptr noundef nonnull %6) #16
  call void @quat_to_eul(ptr noundef nonnull %5, ptr noundef nonnull %7) #16
  %43 = and i32 %8, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load float, ptr %5, align 4, !tbaa !59
  store float %46, ptr %4, align 4, !tbaa !59
  br label %47

47:                                               ; preds = %45, %40
  %48 = and i32 %8, 16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !59
  %53 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float %52, ptr %53, align 4, !tbaa !59
  br label %54

54:                                               ; preds = %50, %47
  %55 = and i32 %8, 32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %59 = load float, ptr %58, align 4, !tbaa !59
  %60 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float %59, ptr %60, align 4, !tbaa !59
  br label %61

61:                                               ; preds = %57, %54
  call void @eul_to_quat(ptr noundef %1, ptr noundef nonnull %4) #16
  call void @mul_qt_fl(ptr noundef %1, float noundef %41) #16
  %62 = load float, ptr %6, align 16, !tbaa !59
  %63 = fcmp olt float %62, 0.000000e+00
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load float, ptr %1, align 4, !tbaa !59
  %66 = fcmp ogt float %65, 0.000000e+00
  br i1 %66, label %72, label %67

67:                                               ; preds = %64, %61
  %68 = fcmp ogt float %62, 0.000000e+00
  br i1 %68, label %69, label %73

69:                                               ; preds = %67
  %70 = load float, ptr %1, align 4, !tbaa !59
  %71 = fcmp olt float %70, 0.000000e+00
  br i1 %71, label %72, label %73

72:                                               ; preds = %69, %64
  call void @mul_qt_fl(ptr noundef %1, float noundef -1.000000e+00) #16
  br label %73

73:                                               ; preds = %72, %69, %67
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  br label %74

74:                                               ; preds = %33, %36, %3, %73
  ret void
}

declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @quat_to_axis_angle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @protectedAxisAngleBits(i16 noundef signext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = zext i16 %0 to i32
  %9 = and i32 %8, 568
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %72, label %11

11:                                               ; preds = %5
  %12 = and i32 %8, 1024
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %11
  %15 = and i32 %8, 512
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store float %4, ptr %2, align 4, !tbaa !59
  br label %18

18:                                               ; preds = %17, %14
  %19 = and i32 %8, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load float, ptr %3, align 4, !tbaa !59
  store float %22, ptr %1, align 4, !tbaa !59
  br label %23

23:                                               ; preds = %21, %18
  %24 = and i32 %8, 16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds float, ptr %3, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !59
  %29 = getelementptr inbounds float, ptr %1, i64 1
  store float %28, ptr %29, align 4, !tbaa !59
  br label %30

30:                                               ; preds = %26, %23
  %31 = and i32 %8, 32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %72, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds float, ptr %3, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !59
  %36 = getelementptr inbounds float, ptr %1, i64 2
  store float %35, ptr %36, align 4, !tbaa !59
  br label %72

37:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  %38 = load float, ptr %2, align 4, !tbaa !59
  call void @axis_angle_to_eulO(ptr noundef nonnull %6, i16 noundef signext 1, ptr noundef %1, float noundef %38) #16
  call void @axis_angle_to_eulO(ptr noundef nonnull %7, i16 noundef signext 1, ptr noundef %3, float noundef %4) #16
  %39 = and i32 %8, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load float, ptr %7, align 4, !tbaa !59
  store float %42, ptr %6, align 4, !tbaa !59
  br label %43

43:                                               ; preds = %41, %37
  %44 = and i32 %8, 16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !59
  %49 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float %48, ptr %49, align 4, !tbaa !59
  br label %50

50:                                               ; preds = %46, %43
  %51 = and i32 %8, 32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !59
  %56 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %55, ptr %56, align 4, !tbaa !59
  br label %57

57:                                               ; preds = %53, %50
  call void @eulO_to_axis_angle(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %6, i16 noundef signext 1) #16
  %58 = load float, ptr %1, align 4, !tbaa !59
  %59 = getelementptr inbounds float, ptr %1, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !59
  %61 = fsub float %58, %60
  %62 = call float @llvm.fabs.f32(float %61)
  %63 = fcmp ult float %62, 0x3E80000000000000
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = getelementptr inbounds float, ptr %1, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !59
  %67 = fsub float %60, %66
  %68 = call float @llvm.fabs.f32(float %67)
  %69 = fcmp ult float %68, 0x3E80000000000000
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store float 1.000000e+00, ptr %59, align 4, !tbaa !59
  br label %71

71:                                               ; preds = %70, %64, %57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  br label %72

72:                                               ; preds = %30, %33, %5, %71
  ret void
}

declare void @eulO_to_mat3(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @mat3_to_compatible_eulO(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @constraintRotLim(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [4 x float], align 16
  %3 = alloca %struct.bConstraintOb, align 8
  %4 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !326
  %6 = icmp eq ptr %5, null
  br i1 %6, label %104, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @BKE_constraint_typeinfo_from_type(i32 noundef 5) #16
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %3) #16
  %9 = load ptr, ptr %4, align 8, !tbaa !148
  %10 = icmp eq ptr %9, null
  br i1 %10, label %103, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 13
  %13 = getelementptr inbounds %struct.bConstraintOb, ptr %3, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bConstraintOb, ptr %3, i64 0, i32 3
  %15 = getelementptr inbounds %struct.bConstraintOb, ptr %3, i64 0, i32 3
  %16 = getelementptr inbounds %struct.bConstraintOb, ptr %3, i64 0, i32 3
  %17 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 8
  %18 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %8, i64 0, i32 11
  %19 = getelementptr inbounds %struct.bConstraintOb, ptr %3, i64 0, i32 3
  %20 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 9
  br label %21

21:                                               ; preds = %11, %78
  %22 = phi ptr [ %9, %11 ], [ %80, %78 ]
  %23 = phi i8 [ 0, %11 ], [ %79, %78 ]
  %24 = getelementptr inbounds %struct.bConstraint, ptr %22, i64 0, i32 4
  %25 = load i16, ptr %24, align 2, !tbaa !328
  %26 = and i16 %25, 516
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %78

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.bConstraint, ptr %22, i64 0, i32 9
  %30 = load float, ptr %29, align 8, !tbaa !330
  %31 = fcmp oeq float %30, 0.000000e+00
  br i1 %31, label %78, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.bConstraint, ptr %22, i64 0, i32 3
  %34 = load i16, ptr %33, align 8, !tbaa !331
  %35 = icmp eq i16 %34, 5
  br i1 %35, label %36, label %78

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.bConstraint, ptr %22, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !332
  %39 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %38, i64 0, i32 7
  %40 = load i16, ptr %39, align 2, !tbaa !353
  %41 = and i16 %40, 2
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %78, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.bConstraint, ptr %22, i64 0, i32 5
  %45 = load i8, ptr %44, align 4, !tbaa !335
  %46 = icmp ult i8 %45, 2
  br i1 %46, label %47, label %78

47:                                               ; preds = %43
  %48 = icmp eq i8 %23, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %3, i8 0, i64 160, i1 false)
  %50 = load ptr, ptr %12, align 8, !tbaa !320
  %51 = icmp eq ptr %50, null
  br i1 %51, label %68, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.TransDataExtension, ptr %50, i64 0, i32 17
  %54 = load i32, ptr %53, align 8, !tbaa !348
  switch i32 %54, label %64 [
    i32 0, label %55
    i32 -1, label %59
  ]

55:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %56 = getelementptr inbounds %struct.TransDataExtension, ptr %50, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !347
  %58 = call float @normalize_qt_qt(ptr noundef nonnull %2, ptr noundef %57) #16
  call void @quat_to_mat4(ptr noundef nonnull %14, ptr noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  br label %68

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.TransDataExtension, ptr %50, i64 0, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !347
  %62 = getelementptr inbounds float, ptr %61, i64 1
  %63 = load float, ptr %61, align 4, !tbaa !59
  call void @axis_angle_to_mat4(ptr noundef nonnull %13, ptr noundef nonnull %62, float noundef %63) #16
  br label %68

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.TransDataExtension, ptr %50, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !352
  %67 = trunc i32 %54 to i16
  call void @eulO_to_mat4(ptr noundef nonnull %15, ptr noundef %66, i16 noundef signext %67) #16
  br label %68

68:                                               ; preds = %64, %59, %55, %49, %47
  %69 = phi i8 [ %23, %47 ], [ 1, %49 ], [ 1, %55 ], [ 1, %59 ], [ 1, %64 ]
  %70 = load i8, ptr %44, align 4, !tbaa !335
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  call void @mul_m4_m3m4(ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %16) #16
  br label %73

73:                                               ; preds = %72, %68
  %74 = load ptr, ptr %18, align 8, !tbaa !336
  call void %74(ptr noundef nonnull %22, ptr noundef nonnull %3, ptr noundef null) #16
  %75 = load i8, ptr %44, align 4, !tbaa !335
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  call void @mul_m4_m3m4(ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %19) #16
  br label %78

78:                                               ; preds = %43, %36, %77, %73, %32, %28, %21
  %79 = phi i8 [ %23, %21 ], [ %23, %28 ], [ %23, %32 ], [ %23, %36 ], [ %23, %43 ], [ %69, %77 ], [ %69, %73 ]
  %80 = load ptr, ptr %22, align 8, !tbaa !148
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %21, !llvm.loop !355

82:                                               ; preds = %78
  %83 = icmp eq i8 %79, 0
  br i1 %83, label %103, label %84

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 13
  %86 = load ptr, ptr %85, align 8, !tbaa !320
  %87 = getelementptr inbounds %struct.TransDataExtension, ptr %86, i64 0, i32 17
  %88 = load i32, ptr %87, align 8, !tbaa !348
  switch i32 %88, label %98 [
    i32 0, label %89
    i32 -1, label %93
  ]

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.TransDataExtension, ptr %86, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !347
  %92 = getelementptr inbounds %struct.bConstraintOb, ptr %3, i64 0, i32 3
  call void @mat4_to_quat(ptr noundef %91, ptr noundef nonnull %92) #16
  br label %103

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.TransDataExtension, ptr %86, i64 0, i32 5
  %95 = load ptr, ptr %94, align 8, !tbaa !347
  %96 = getelementptr inbounds float, ptr %95, i64 1
  %97 = getelementptr inbounds %struct.bConstraintOb, ptr %3, i64 0, i32 3
  call void @mat4_to_axis_angle(ptr noundef nonnull %96, ptr noundef %95, ptr noundef nonnull %97) #16
  br label %103

98:                                               ; preds = %84
  %99 = getelementptr inbounds %struct.TransDataExtension, ptr %86, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !352
  %101 = trunc i32 %88 to i16
  %102 = getelementptr inbounds %struct.bConstraintOb, ptr %3, i64 0, i32 3
  call void @mat4_to_eulO(ptr noundef %100, i16 noundef signext %101, ptr noundef nonnull %102) #16
  br label %103

103:                                              ; preds = %7, %89, %98, %93, %82
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %3) #16
  br label %104

104:                                              ; preds = %103, %1
  ret void
}

declare float @normalize_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @quat_to_eul(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @eul_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_qt_fl(ptr noundef, float noundef) local_unnamed_addr #2

declare void @axis_angle_to_eulO(ptr noundef, i16 noundef signext, ptr noundef, float noundef) local_unnamed_addr #2

declare void @eulO_to_axis_angle(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @mat4_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mat4_to_axis_angle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mat4_to_eulO(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @quat_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @axis_angle_to_mat4(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @eulO_to_mat4(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @applyTrackball(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [2 x float], align 4
  %13 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 30
  %15 = load float, ptr %14, align 4, !tbaa !59
  store float %15, ptr %7, align 4, !tbaa !59
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 30, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !59
  %18 = getelementptr inbounds float, ptr %7, i64 1
  store float %17, ptr %18, align 4, !tbaa !59
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 30, i64 0, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !59
  %21 = getelementptr inbounds float, ptr %7, i64 2
  store float %20, ptr %21, align 4, !tbaa !59
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 30, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !59
  store float %23, ptr %8, align 4, !tbaa !59
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 30, i64 1, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !59
  %26 = getelementptr inbounds float, ptr %8, i64 1
  store float %25, ptr %26, align 4, !tbaa !59
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 30, i64 1, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !59
  %29 = getelementptr inbounds float, ptr %8, i64 2
  store float %28, ptr %29, align 4, !tbaa !59
  %30 = fmul float %17, %17
  %31 = tail call float @llvm.fmuladd.f32(float %15, float %15, float %30)
  %32 = tail call float @llvm.fmuladd.f32(float %20, float %20, float %31)
  %33 = fcmp ogt float %32, 0x38AA95A5C0000000
  br i1 %33, label %34, label %43

34:                                               ; preds = %2
  %35 = tail call float @sqrtf(float noundef %32) #16
  %36 = fdiv float 1.000000e+00, %35
  %37 = load float, ptr %7, align 4, !tbaa !59
  %38 = fmul float %37, %36
  store float %38, ptr %7, align 4, !tbaa !59
  %39 = load float, ptr %18, align 4, !tbaa !59
  %40 = fmul float %36, %39
  store float %40, ptr %18, align 4, !tbaa !59
  %41 = load float, ptr %21, align 4, !tbaa !59
  %42 = fmul float %36, %41
  br label %44

43:                                               ; preds = %2
  store float 0.000000e+00, ptr %7, align 4, !tbaa !59
  store float 0.000000e+00, ptr %18, align 4, !tbaa !59
  br label %44

44:                                               ; preds = %34, %43
  %45 = phi float [ 0.000000e+00, %43 ], [ %42, %34 ]
  store float %45, ptr %21, align 4, !tbaa !59
  %46 = load float, ptr %8, align 4, !tbaa !59
  %47 = load float, ptr %26, align 4, !tbaa !59
  %48 = fmul float %47, %47
  %49 = tail call float @llvm.fmuladd.f32(float %46, float %46, float %48)
  %50 = load float, ptr %29, align 4, !tbaa !59
  %51 = tail call float @llvm.fmuladd.f32(float %50, float %50, float %49)
  %52 = fcmp ogt float %51, 0x38AA95A5C0000000
  br i1 %52, label %53, label %62

53:                                               ; preds = %44
  %54 = tail call float @sqrtf(float noundef %51) #16
  %55 = fdiv float 1.000000e+00, %54
  %56 = load float, ptr %8, align 4, !tbaa !59
  %57 = fmul float %56, %55
  store float %57, ptr %8, align 4, !tbaa !59
  %58 = load float, ptr %26, align 4, !tbaa !59
  %59 = fmul float %55, %58
  store float %59, ptr %26, align 4, !tbaa !59
  %60 = load float, ptr %29, align 4, !tbaa !59
  %61 = fmul float %55, %60
  br label %63

62:                                               ; preds = %44
  store float 0.000000e+00, ptr %8, align 4, !tbaa !59
  store float 0.000000e+00, ptr %26, align 4, !tbaa !59
  br label %63

63:                                               ; preds = %53, %62
  %64 = phi float [ 0.000000e+00, %62 ], [ %61, %53 ]
  store float %64, ptr %29, align 4, !tbaa !59
  %65 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %66 = load float, ptr %65, align 4, !tbaa !59
  store float %66, ptr %12, align 4, !tbaa !59
  %67 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !59
  %69 = getelementptr inbounds [2 x float], ptr %12, i64 0, i64 1
  store float %68, ptr %69, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %12) #16
  %70 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %71 = call zeroext i8 @applyNumInput(ptr noundef nonnull %70, ptr noundef nonnull %12) #16
  %72 = call zeroext i8 @hasNumInput(ptr noundef nonnull %70) #16
  %73 = icmp eq i8 %72, 0
  %74 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  br i1 %73, label %81, label %75

75:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %13) #16
  %76 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %77 = load ptr, ptr %76, align 8, !tbaa !109
  %78 = getelementptr inbounds %struct.Scene, ptr %77, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %70, ptr noundef nonnull %13, ptr noundef nonnull %78) #16
  %79 = getelementptr inbounds [128 x i8], ptr %13, i64 0, i64 64
  %80 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 256, ptr noundef nonnull @.str.94, ptr noundef nonnull %13, ptr noundef nonnull %79, ptr noundef nonnull %74) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %13) #16
  br label %89

81:                                               ; preds = %63
  %82 = load float, ptr %12, align 4, !tbaa !59
  %83 = fmul float %82, 0x404CA5DC20000000
  %84 = fpext float %83 to double
  %85 = load float, ptr %69, align 4, !tbaa !59
  %86 = fmul float %85, 0x404CA5DC20000000
  %87 = fpext float %86 to double
  %88 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 256, ptr noundef nonnull @.str.95, double noundef %84, double noundef %87, ptr noundef nonnull %74) #16
  br label %89

89:                                               ; preds = %81, %75
  %90 = phi i64 [ %80, %75 ], [ %88, %81 ]
  %91 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %92 = load i32, ptr %91, align 4, !tbaa !99
  %93 = and i32 %92, 33560576
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds i8, ptr %6, i64 %90
  %97 = sub i64 256, %90
  %98 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 18
  %99 = load float, ptr %98, align 4, !tbaa !136
  %100 = fpext float %99 to double
  %101 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %96, i64 noundef %97, ptr noundef nonnull @.str.89, double noundef %100) #16
  br label %102

102:                                              ; preds = %95, %89
  %103 = load float, ptr %12, align 4, !tbaa !59
  call void @axis_angle_normalized_to_mat3(ptr noundef nonnull %11, ptr noundef nonnull %7, float noundef %103) #16
  %104 = load float, ptr %69, align 4, !tbaa !59
  call void @axis_angle_normalized_to_mat3(ptr noundef nonnull %10, ptr noundef nonnull %8, float noundef %104) #16
  call void @mul_m3_m3m3(ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %10) #16
  %105 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %106 = load ptr, ptr %105, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #16
  %107 = load float, ptr %12, align 4, !tbaa !59
  call void @axis_angle_normalized_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %7, float noundef %107) #16
  %108 = load float, ptr %69, align 4, !tbaa !59
  call void @axis_angle_normalized_to_mat3(ptr noundef nonnull %5, ptr noundef nonnull %8, float noundef %108) #16
  call void @mul_m3_m3m3(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %109 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %110 = load i32, ptr %109, align 8, !tbaa !241
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %143

112:                                              ; preds = %102
  %113 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 32
  br label %114

114:                                              ; preds = %112, %138
  %115 = phi i32 [ 0, %112 ], [ %139, %138 ]
  %116 = phi ptr [ %106, %112 ], [ %140, %138 ]
  %117 = getelementptr inbounds %struct.TransData, ptr %116, i64 0, i32 16
  %118 = load i32, ptr %117, align 8, !tbaa !310
  %119 = and i32 %118, 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %143

121:                                              ; preds = %114
  %122 = and i32 %118, 2048
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %121
  %125 = load i32, ptr %91, align 4, !tbaa !99
  %126 = and i32 %125, 2048
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.TransData, ptr %116, i64 0, i32 2
  %130 = load float, ptr %129, align 8, !tbaa !313
  %131 = load float, ptr %12, align 4, !tbaa !59
  %132 = fmul float %130, %131
  call void @axis_angle_normalized_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %7, float noundef %132) #16
  %133 = load float, ptr %129, align 8, !tbaa !313
  %134 = load float, ptr %69, align 4, !tbaa !59
  %135 = fmul float %133, %134
  call void @axis_angle_normalized_to_mat3(ptr noundef nonnull %5, ptr noundef nonnull %8, float noundef %135) #16
  call void @mul_m3_m3m3(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  br label %136

136:                                              ; preds = %128, %124
  %137 = load i16, ptr %113, align 2, !tbaa !240
  call fastcc void @ElementRotation(ptr noundef %0, ptr noundef %116, ptr noundef nonnull %3, i16 noundef signext %137)
  br label %138

138:                                              ; preds = %136, %121
  %139 = add nuw nsw i32 %115, 1
  %140 = getelementptr inbounds %struct.TransData, ptr %116, i64 1
  %141 = load i32, ptr %109, align 8, !tbaa !241
  %142 = icmp slt i32 %139, %141
  br i1 %142, label %114, label %143, !llvm.loop !356

143:                                              ; preds = %114, %138, %102
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #16
  call void @recalcData(ptr noundef %0) #16
  %144 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %145 = load ptr, ptr %144, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %145, ptr noundef nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #16
  ret void
}

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @applyTranslation(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %7 = load i32, ptr %6, align 4, !tbaa !97
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %13 = tail call zeroext i8 @applyNumInput(ptr noundef nonnull %11, ptr noundef nonnull %12) #16
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @removeAspectRatio(ptr noundef %0, ptr noundef nonnull %12)
  br label %16

16:                                               ; preds = %15, %10
  tail call void @applySnapping(ptr noundef %0, ptr noundef nonnull %12) #16
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !357
  call void %18(ptr noundef %0, ptr noundef null, ptr noundef nonnull %12, ptr noundef nonnull %5, ptr noundef nonnull %4) #16
  %19 = load float, ptr %5, align 4, !tbaa !59
  store float %19, ptr %12, align 4, !tbaa !59
  %20 = getelementptr inbounds float, ptr %5, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !59
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47, i64 1
  store float %21, ptr %22, align 4, !tbaa !59
  %23 = getelementptr inbounds float, ptr %5, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !59
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47, i64 2
  store float %24, ptr %25, align 4, !tbaa !59
  call fastcc void @headerTranslation(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  br label %33

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  tail call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %27) #16
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %29 = tail call zeroext i8 @applyNumInput(ptr noundef nonnull %28, ptr noundef nonnull %27) #16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call void @removeAspectRatio(ptr noundef %0, ptr noundef nonnull %27)
  br label %32

32:                                               ; preds = %31, %26
  tail call void @applySnapping(ptr noundef %0, ptr noundef nonnull %27) #16
  call fastcc void @headerTranslation(ptr noundef %0, ptr noundef nonnull %27, ptr noundef nonnull %3)
  br label %33

33:                                               ; preds = %32, %16
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  call fastcc void @applyTranslationValue(ptr noundef %0, ptr noundef nonnull %34)
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !99
  %37 = and i32 %36, 65536
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %33
  %40 = call zeroext i8 @clipUVTransform(ptr noundef %0, ptr noundef nonnull %34, i8 noundef zeroext 0) #16
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  call fastcc void @applyTranslationValue(ptr noundef %0, ptr noundef nonnull %34)
  %43 = load i32, ptr %35, align 4, !tbaa !99
  %44 = and i32 %43, 33560576
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  call void @clipUVData(ptr noundef %0) #16
  br label %47

47:                                               ; preds = %42, %46, %39, %33
  call void @recalcData(ptr noundef %0) #16
  %48 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %49 = load ptr, ptr %48, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %49, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #16
  ret void
}

declare float @ED_node_grid_size() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @headerTranslation(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [192 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = alloca [64 x i8], align 16
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %9 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %8) #16
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %13 = load ptr, ptr %12, align 8, !tbaa !109
  %14 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %14) #16
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 6
  %16 = load float, ptr %15, align 4, !tbaa !59
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 6, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !59
  %19 = fmul float %18, %18
  %20 = call float @llvm.fmuladd.f32(float %16, float %16, float %19)
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 6, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !59
  %23 = call float @llvm.fmuladd.f32(float %22, float %22, float %20)
  %24 = call float @sqrtf(float noundef %23) #16
  br label %85

25:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  %26 = load float, ptr %1, align 4, !tbaa !59
  store float %26, ptr %7, align 4, !tbaa !59
  %27 = getelementptr inbounds float, ptr %1, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !59
  %29 = getelementptr inbounds float, ptr %7, i64 1
  store float %28, ptr %29, align 4, !tbaa !59
  %30 = getelementptr inbounds float, ptr %1, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !59
  %32 = getelementptr inbounds float, ptr %7, i64 2
  store float %31, ptr %32, align 4, !tbaa !59
  call void @applyAspectRatio(ptr noundef %0, ptr noundef nonnull %7)
  %33 = load float, ptr %1, align 4, !tbaa !59
  %34 = load float, ptr %27, align 4, !tbaa !59
  %35 = fmul float %34, %34
  %36 = tail call float @llvm.fmuladd.f32(float %33, float %33, float %35)
  %37 = load float, ptr %30, align 4, !tbaa !59
  %38 = tail call float @llvm.fmuladd.f32(float %37, float %37, float %36)
  %39 = tail call float @sqrtf(float noundef %38) #16
  %40 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !99
  %42 = and i32 %41, 32768
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %25
  %45 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %46 = load ptr, ptr %45, align 8, !tbaa !109
  %47 = getelementptr inbounds %struct.Scene, ptr %46, i64 0, i32 38, i32 1
  %48 = load i8, ptr %47, align 4, !tbaa !110
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %72, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.Scene, ptr %46, i64 0, i32 38, i32 3
  %52 = load i16, ptr %51, align 2, !tbaa !358
  %53 = trunc i16 %52 to i8
  %54 = and i8 %53, 1
  br label %55

55:                                               ; preds = %50, %55
  %56 = phi i64 [ 0, %50 ], [ %70, %55 ]
  %57 = shl nuw nsw i64 %56, 6
  %58 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 %57
  %59 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %56
  %60 = load float, ptr %59, align 4, !tbaa !59
  %61 = load ptr, ptr %45, align 8, !tbaa !109
  %62 = getelementptr inbounds %struct.Scene, ptr %61, i64 0, i32 38
  %63 = load float, ptr %62, align 8, !tbaa !359
  %64 = fmul float %60, %63
  %65 = fpext float %64 to double
  %66 = getelementptr inbounds %struct.Scene, ptr %61, i64 0, i32 38, i32 1
  %67 = load i8, ptr %66, align 4, !tbaa !110
  %68 = zext i8 %67 to i32
  %69 = call i64 @bUnit_AsString(ptr noundef nonnull %58, i32 noundef 64, double noundef %65, i32 noundef 4, i32 noundef %68, i32 noundef 1, i8 noundef zeroext %54, i8 noundef zeroext 1) #16
  %70 = add nuw nsw i64 %56, 1
  %71 = icmp eq i64 %70, 3
  br i1 %71, label %84, label %55, !llvm.loop !360

72:                                               ; preds = %44, %25
  %73 = load float, ptr %7, align 4, !tbaa !59
  %74 = fpext float %73 to double
  %75 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.83, double noundef %74) #16
  %76 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 64
  %77 = load float, ptr %29, align 4, !tbaa !59
  %78 = fpext float %77 to double
  %79 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %76, i64 noundef 64, ptr noundef nonnull @.str.83, double noundef %78) #16
  %80 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 128
  %81 = load float, ptr %32, align 4, !tbaa !59
  %82 = fpext float %81 to double
  %83 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %80, i64 noundef 64, ptr noundef nonnull @.str.83, double noundef %82) #16
  br label %84

84:                                               ; preds = %55, %72
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  br label %85

85:                                               ; preds = %84, %11
  %86 = phi float [ %24, %11 ], [ %39, %84 ]
  %87 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !99
  %89 = and i32 %88, 32768
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %93 = load ptr, ptr %92, align 8, !tbaa !109
  %94 = getelementptr inbounds %struct.Scene, ptr %93, i64 0, i32 38, i32 1
  %95 = load i8, ptr %94, align 4, !tbaa !110
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %91
  %98 = zext i8 %95 to i32
  %99 = getelementptr inbounds %struct.Scene, ptr %93, i64 0, i32 38
  %100 = getelementptr inbounds %struct.Scene, ptr %93, i64 0, i32 38, i32 3
  %101 = load i16, ptr %100, align 2, !tbaa !358
  %102 = trunc i16 %101 to i8
  %103 = and i8 %102, 1
  %104 = load float, ptr %99, align 8, !tbaa !359
  %105 = fmul float %86, %104
  %106 = fpext float %105 to double
  %107 = call i64 @bUnit_AsString(ptr noundef nonnull %5, i32 noundef 64, double noundef %106, i32 noundef 4, i32 noundef %98, i32 noundef 1, i8 noundef zeroext %103, i8 noundef zeroext 0) #16
  br label %117

108:                                              ; preds = %91, %85
  %109 = fcmp ogt float %86, 1.000000e+10
  %110 = fcmp olt float %86, -1.000000e+10
  %111 = or i1 %109, %110
  %112 = fpext float %86 to double
  br i1 %111, label %113, label %115

113:                                              ; preds = %108
  %114 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 64, ptr noundef nonnull @.str.97, double noundef %112) #16
  br label %117

115:                                              ; preds = %108
  %116 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 64, ptr noundef nonnull @.str.83, double noundef %112) #16
  br label %117

117:                                              ; preds = %113, %115, %97
  %118 = load i32, ptr %87, align 4, !tbaa !99
  %119 = and i32 %118, 262144
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 57
  %123 = load ptr, ptr %122, align 8, !tbaa !149
  %124 = getelementptr inbounds %struct.ToolSettings, ptr %123, i64 0, i32 14
  %125 = load i16, ptr %124, align 8, !tbaa !361
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %121
  %128 = sext i16 %125 to i32
  %129 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 64, ptr noundef nonnull @.str.98, i32 noundef %128) #16
  br label %132

130:                                              ; preds = %121
  store i8 0, ptr %6, align 16, !tbaa !170
  br label %132

131:                                              ; preds = %117
  store i8 0, ptr %6, align 16, !tbaa !170
  br label %132

132:                                              ; preds = %127, %130, %131
  %133 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %134 = load i32, ptr %133, align 4, !tbaa !97
  %135 = and i32 %134, 1
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %154, label %137

137:                                              ; preds = %132
  %138 = load i16, ptr %8, align 8, !tbaa !108
  switch i16 %138, label %168 [
    i16 0, label %139
    i16 1, label %143
    i16 2, label %148
  ]

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %141 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %142 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.99, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %140, ptr noundef nonnull %141, ptr noundef nonnull %6) #16
  br label %168

143:                                              ; preds = %137
  %144 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 64
  %145 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %146 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %147 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.100, ptr noundef nonnull %4, ptr noundef nonnull %144, ptr noundef nonnull %5, ptr noundef nonnull %145, ptr noundef nonnull %146, ptr noundef nonnull %6) #16
  br label %168

148:                                              ; preds = %137
  %149 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 64
  %150 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 128
  %151 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %152 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %153 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.101, ptr noundef nonnull %4, ptr noundef nonnull %149, ptr noundef nonnull %150, ptr noundef nonnull %5, ptr noundef nonnull %151, ptr noundef nonnull %152, ptr noundef nonnull %6) #16
  br label %168

154:                                              ; preds = %132
  %155 = load i32, ptr %87, align 4, !tbaa !99
  %156 = and i32 %155, 32768
  %157 = icmp eq i32 %156, 0
  %158 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 64
  br i1 %157, label %163, label %159

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %161 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %162 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.102, ptr noundef nonnull %4, ptr noundef nonnull %158, ptr noundef nonnull %5, ptr noundef nonnull %160, ptr noundef nonnull %161) #16
  br label %168

163:                                              ; preds = %154
  %164 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 128
  %165 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %166 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %167 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.103, ptr noundef nonnull %4, ptr noundef nonnull %158, ptr noundef nonnull %164, ptr noundef nonnull %5, ptr noundef nonnull %165, ptr noundef nonnull %166, ptr noundef nonnull %6) #16
  br label %168

168:                                              ; preds = %159, %163, %139, %143, %148, %137
  %169 = phi i64 [ 0, %137 ], [ %153, %148 ], [ %147, %143 ], [ %142, %139 ], [ %162, %159 ], [ %167, %163 ]
  %170 = load i32, ptr %87, align 4, !tbaa !99
  %171 = and i32 %170, 33560576
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %180, label %173

173:                                              ; preds = %168
  %174 = getelementptr inbounds i8, ptr %2, i64 %169
  %175 = sub i64 256, %169
  %176 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 18
  %177 = load float, ptr %176, align 4, !tbaa !136
  %178 = fpext float %177 to double
  %179 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %174, i64 noundef %175, ptr noundef nonnull @.str.89, double noundef %178) #16
  br label %180

180:                                              ; preds = %173, %168
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @applyTranslationValue(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x float], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x float], align 4
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !241
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %137

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 11
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 11, i64 2
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 11, i64 1
  %19 = getelementptr inbounds float, ptr %4, i64 1
  %20 = getelementptr inbounds float, ptr %4, i64 2
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 9
  %22 = getelementptr inbounds float, ptr %1, i64 1
  %23 = getelementptr inbounds float, ptr %3, i64 1
  %24 = getelementptr inbounds float, ptr %1, i64 2
  %25 = getelementptr inbounds float, ptr %3, i64 2
  %26 = getelementptr inbounds float, ptr %3, i64 1
  %27 = getelementptr inbounds float, ptr %3, i64 2
  br label %28

28:                                               ; preds = %14, %132
  %29 = phi ptr [ %10, %14 ], [ %134, %132 ]
  %30 = phi i32 [ 0, %14 ], [ %133, %132 ]
  %31 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 16
  %32 = load i32, ptr %31, align 8, !tbaa !310
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %137

35:                                               ; preds = %28
  %36 = and i32 %32, 2048
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %132

38:                                               ; preds = %35
  %39 = call zeroext i8 @usingSnappingNormal(ptr noundef %0) #16
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %80, label %41

41:                                               ; preds = %38
  %42 = call zeroext i8 @validSnappingNormal(ptr noundef %0) #16
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %79, label %44

44:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #16
  %45 = load i32, ptr %15, align 4, !tbaa !99
  %46 = and i32 %45, 4
  %47 = icmp eq i32 %46, 0
  %48 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 10, i64 1
  %49 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 10, i64 2
  %50 = select i1 %47, ptr %49, ptr %48
  %51 = getelementptr inbounds float, ptr %50, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !59
  %53 = load float, ptr %17, align 4, !tbaa !59
  %54 = getelementptr inbounds float, ptr %50, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !59
  %56 = load float, ptr %18, align 4, !tbaa !59
  %57 = fneg float %55
  %58 = fmul float %56, %57
  %59 = call float @llvm.fmuladd.f32(float %52, float %53, float %58)
  store float %59, ptr %4, align 4, !tbaa !59
  %60 = load float, ptr %16, align 4, !tbaa !59
  %61 = load float, ptr %50, align 4, !tbaa !59
  %62 = fneg float %61
  %63 = fmul float %53, %62
  %64 = call float @llvm.fmuladd.f32(float %55, float %60, float %63)
  store float %64, ptr %19, align 4, !tbaa !59
  %65 = fneg float %52
  %66 = fmul float %60, %65
  %67 = call float @llvm.fmuladd.f32(float %61, float %56, float %66)
  store float %67, ptr %20, align 4, !tbaa !59
  %68 = load float, ptr %51, align 4, !tbaa !59
  %69 = fmul float %56, %68
  %70 = call float @llvm.fmuladd.f32(float %61, float %60, float %69)
  %71 = call float @llvm.fmuladd.f32(float %55, float %53, float %70)
  %72 = fcmp ugt float %71, -1.000000e+00
  br i1 %72, label %73, label %77

73:                                               ; preds = %44
  %74 = fcmp ult float %71, 1.000000e+00
  br i1 %74, label %75, label %77

75:                                               ; preds = %73
  %76 = call float @acosf(float noundef %71) #16
  br label %77

77:                                               ; preds = %44, %73, %75
  %78 = phi float [ %76, %75 ], [ 0x400921FB60000000, %44 ], [ 0.000000e+00, %73 ]
  call void @axis_angle_to_quat(ptr noundef nonnull %5, ptr noundef nonnull %4, float noundef %78) #16
  call void @quat_to_mat3(ptr noundef nonnull %6, ptr noundef nonnull %5) #16
  call fastcc void @ElementRotation(ptr noundef %0, ptr noundef %29, ptr noundef nonnull %6, i16 noundef signext 2)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  br label %80

79:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #16
  call void @unit_m3(ptr noundef nonnull %7) #16
  call fastcc void @ElementRotation(ptr noundef %0, ptr noundef %29, ptr noundef nonnull %7, i16 noundef signext 2)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #16
  br label %80

80:                                               ; preds = %77, %79, %38
  %81 = load ptr, ptr %21, align 8, !tbaa !357
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  call void %81(ptr noundef %0, ptr noundef %29, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  br label %88

84:                                               ; preds = %80
  %85 = load float, ptr %1, align 4, !tbaa !59
  store float %85, ptr %3, align 4, !tbaa !59
  %86 = load float, ptr %22, align 4, !tbaa !59
  store float %86, ptr %23, align 4, !tbaa !59
  %87 = load float, ptr %24, align 4, !tbaa !59
  store float %87, ptr %25, align 4, !tbaa !59
  br label %88

88:                                               ; preds = %84, %83
  %89 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 9
  call void @mul_m3_v3(ptr noundef nonnull %89, ptr noundef nonnull %3) #16
  %90 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 2
  %91 = load float, ptr %90, align 8, !tbaa !313
  %92 = load float, ptr %3, align 4, !tbaa !59
  %93 = fmul float %91, %92
  store float %93, ptr %3, align 4, !tbaa !59
  %94 = load float, ptr %26, align 4, !tbaa !59
  %95 = fmul float %91, %94
  store float %95, ptr %26, align 4, !tbaa !59
  %96 = load float, ptr %27, align 4, !tbaa !59
  %97 = fmul float %91, %96
  store float %97, ptr %27, align 4, !tbaa !59
  %98 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 17
  %99 = load i16, ptr %98, align 4, !tbaa !321
  %100 = zext i16 %99 to i32
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %88
  store float 0.000000e+00, ptr %3, align 4, !tbaa !59
  br label %104

104:                                              ; preds = %103, %88
  %105 = and i32 %100, 2
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  store float 0.000000e+00, ptr %26, align 4, !tbaa !59
  br label %108

108:                                              ; preds = %107, %104
  %109 = and i32 %100, 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  store float 0.000000e+00, ptr %27, align 4, !tbaa !59
  br label %112

112:                                              ; preds = %108, %111
  %113 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !312
  %115 = icmp eq ptr %114, null
  br i1 %115, label %131, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 4
  %118 = load float, ptr %117, align 4, !tbaa !59
  %119 = load float, ptr %3, align 4, !tbaa !59
  %120 = fadd float %118, %119
  store float %120, ptr %114, align 4, !tbaa !59
  %121 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 4, i64 1
  %122 = load float, ptr %121, align 4, !tbaa !59
  %123 = load float, ptr %26, align 4, !tbaa !59
  %124 = fadd float %122, %123
  %125 = getelementptr inbounds float, ptr %114, i64 1
  store float %124, ptr %125, align 4, !tbaa !59
  %126 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 4, i64 2
  %127 = load float, ptr %126, align 4, !tbaa !59
  %128 = load float, ptr %27, align 4, !tbaa !59
  %129 = fadd float %127, %128
  %130 = getelementptr inbounds float, ptr %114, i64 2
  store float %129, ptr %130, align 4, !tbaa !59
  br label %131

131:                                              ; preds = %116, %112
  call fastcc void @constraintTransLim(ptr noundef %0, ptr noundef %29)
  br label %132

132:                                              ; preds = %35, %131
  %133 = add nuw nsw i32 %30, 1
  %134 = getelementptr inbounds %struct.TransData, ptr %29, i64 1
  %135 = load i32, ptr %11, align 8, !tbaa !241
  %136 = icmp slt i32 %133, %135
  br i1 %136, label %28, label %137, !llvm.loop !362

137:                                              ; preds = %132, %28, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  ret void
}

declare i64 @bUnit_AsString(ptr noundef, i32 noundef, double noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @usingSnappingNormal(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @validSnappingNormal(ptr noundef) local_unnamed_addr #2

declare void @quat_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @applyShrinkFatten(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !268
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %9 = load float, ptr %8, align 4, !tbaa !59
  %10 = fneg float %9
  store float %10, ptr %3, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %3) #16
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %12 = call zeroext i8 @applyNumInput(ptr noundef nonnull %11, ptr noundef nonnull %3) #16
  %13 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %4, ptr noundef nonnull @.str.104, i64 noundef 256) #16
  %14 = call zeroext i8 @hasNumInput(ptr noundef nonnull %11) #16
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %18 = load ptr, ptr %17, align 8, !tbaa !109
  %19 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %11, ptr noundef nonnull %5, ptr noundef nonnull %19) #16
  %20 = getelementptr inbounds i8, ptr %4, i64 %13
  %21 = sub i64 256, %13
  %22 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %20, i64 noundef %21, ptr noundef nonnull @.str.105, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  br label %29

23:                                               ; preds = %2
  %24 = getelementptr inbounds i8, ptr %4, i64 %13
  %25 = sub i64 256, %13
  %26 = load float, ptr %3, align 4, !tbaa !59
  %27 = fpext float %26 to double
  %28 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %24, i64 noundef %25, ptr noundef nonnull @.str.106, double noundef %27) #16
  br label %29

29:                                               ; preds = %23, %16
  %30 = phi i64 [ %22, %16 ], [ %28, %23 ]
  %31 = add i64 %30, %13
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %33 = load i8, ptr %32, align 8, !tbaa !170
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds i8, ptr %4, i64 %31
  %37 = sub i64 256, %31
  %38 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %36, i64 noundef %37, ptr noundef nonnull @.str.105, ptr noundef nonnull %32) #16
  %39 = add i64 %38, %31
  br label %40

40:                                               ; preds = %35, %29
  %41 = phi i64 [ %39, %35 ], [ %31, %29 ]
  %42 = getelementptr inbounds i8, ptr %4, i64 %41
  %43 = sub i64 256, %41
  %44 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %42, i64 noundef %43, ptr noundef nonnull @.str.107) #16
  %45 = add i64 %44, %41
  %46 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 59
  %47 = load ptr, ptr %46, align 8, !tbaa !260
  %48 = icmp eq ptr %47, null
  br i1 %48, label %59, label %49

49:                                               ; preds = %40
  %50 = call ptr @WM_modalkeymap_find_propvalue(ptr noundef nonnull %47, i32 noundef 5) #16
  %51 = icmp eq ptr %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds i8, ptr %4, i64 %45
  %54 = trunc i64 %45 to i32
  %55 = sub i32 256, %54
  %56 = call i32 @WM_keymap_item_to_string(ptr noundef nonnull %50, ptr noundef nonnull %53, i32 noundef %55) #16
  %57 = sext i32 %56 to i64
  %58 = add i64 %45, %57
  br label %59

59:                                               ; preds = %49, %52, %40
  %60 = phi i64 [ %45, %40 ], [ %58, %52 ], [ %45, %49 ]
  %61 = getelementptr inbounds i8, ptr %4, i64 %60
  %62 = sub i64 256, %60
  %63 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %64 = load i32, ptr %63, align 4, !tbaa !99
  %65 = lshr i32 %64, 24
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  %68 = call ptr @WM_bool_as_string(i8 noundef zeroext %67) #16
  %69 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %61, i64 noundef %62, ptr noundef nonnull @.str.108, ptr noundef %68) #16
  %70 = load float, ptr %3, align 4, !tbaa !59
  %71 = fneg float %70
  store float %71, ptr %8, align 4, !tbaa !59
  %72 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %73 = load i32, ptr %72, align 8, !tbaa !241
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %126

75:                                               ; preds = %59, %121
  %76 = phi i32 [ %122, %121 ], [ 0, %59 ]
  %77 = phi ptr [ %123, %121 ], [ %7, %59 ]
  %78 = getelementptr inbounds %struct.TransData, ptr %77, i64 0, i32 16
  %79 = load i32, ptr %78, align 8, !tbaa !310
  %80 = and i32 %79, 4
  %81 = icmp eq i32 %80, 0
  %82 = and i32 %79, 2052
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %121

84:                                               ; preds = %75
  %85 = load float, ptr %3, align 4, !tbaa !59
  %86 = getelementptr inbounds %struct.TransData, ptr %77, i64 0, i32 2
  %87 = load float, ptr %86, align 8, !tbaa !313
  %88 = fmul float %85, %87
  %89 = getelementptr inbounds %struct.TransData, ptr %77, i64 0, i32 13
  %90 = load ptr, ptr %89, align 8, !tbaa !320
  %91 = icmp eq ptr %90, null
  br i1 %91, label %100, label %92

92:                                               ; preds = %84
  %93 = load i32, ptr %63, align 4, !tbaa !99
  %94 = and i32 %93, 16777216
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.TransDataExtension, ptr %90, i64 0, i32 12
  %98 = load float, ptr %97, align 8, !tbaa !59
  %99 = fmul float %88, %98
  br label %100

100:                                              ; preds = %96, %92, %84
  %101 = phi float [ %99, %96 ], [ %88, %92 ], [ %88, %84 ]
  %102 = getelementptr inbounds %struct.TransData, ptr %77, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !312
  %104 = getelementptr inbounds %struct.TransData, ptr %77, i64 0, i32 4
  %105 = getelementptr inbounds %struct.TransData, ptr %77, i64 0, i32 10, i64 2
  %106 = load float, ptr %104, align 4, !tbaa !59
  %107 = load float, ptr %105, align 4, !tbaa !59
  %108 = call float @llvm.fmuladd.f32(float %107, float %101, float %106)
  store float %108, ptr %103, align 4, !tbaa !59
  %109 = getelementptr inbounds %struct.TransData, ptr %77, i64 0, i32 4, i64 1
  %110 = load float, ptr %109, align 4, !tbaa !59
  %111 = getelementptr inbounds %struct.TransData, ptr %77, i64 0, i32 10, i64 2, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !59
  %113 = call float @llvm.fmuladd.f32(float %112, float %101, float %110)
  %114 = getelementptr inbounds float, ptr %103, i64 1
  store float %113, ptr %114, align 4, !tbaa !59
  %115 = getelementptr inbounds %struct.TransData, ptr %77, i64 0, i32 4, i64 2
  %116 = load float, ptr %115, align 4, !tbaa !59
  %117 = getelementptr inbounds %struct.TransData, ptr %77, i64 0, i32 10, i64 2, i64 2
  %118 = load float, ptr %117, align 4, !tbaa !59
  %119 = call float @llvm.fmuladd.f32(float %118, float %101, float %116)
  %120 = getelementptr inbounds float, ptr %103, i64 2
  store float %119, ptr %120, align 4, !tbaa !59
  br label %121

121:                                              ; preds = %75, %100
  %122 = add nuw nsw i32 %76, 1
  %123 = getelementptr inbounds %struct.TransData, ptr %77, i64 1
  %124 = icmp slt i32 %122, %73
  %125 = select i1 %81, i1 %124, i1 false
  br i1 %125, label %75, label %126, !llvm.loop !363

126:                                              ; preds = %121, %59
  call void @recalcData(ptr noundef %0) #16
  %127 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %128 = load ptr, ptr %127, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %128, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

declare i64 @BLI_strncpy_rlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @WM_modalkeymap_find_propvalue(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @WM_keymap_item_to_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @applyTilt(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca float, align 4
  %5 = alloca [64 x i8], align 16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %9 = load float, ptr %8, align 4, !tbaa !59
  store float %9, ptr %4, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %4) #16
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %11 = call zeroext i8 @applyNumInput(ptr noundef nonnull %10, ptr noundef nonnull %4) #16
  %12 = call zeroext i8 @hasNumInput(ptr noundef nonnull %10) #16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %16 = load ptr, ptr %15, align 8, !tbaa !109
  %17 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef nonnull %17) #16
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %19 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.109, ptr noundef nonnull %5, ptr noundef nonnull %18) #16
  %20 = load float, ptr %4, align 4, !tbaa !59
  store float %20, ptr %8, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  br label %27

21:                                               ; preds = %2
  %22 = load float, ptr %4, align 4, !tbaa !59
  %23 = fmul float %22, 0x404CA5DC20000000
  %24 = fpext float %23 to double
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %26 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.110, double noundef %24, ptr noundef nonnull %25) #16
  br label %27

27:                                               ; preds = %21, %14
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %29 = load i32, ptr %28, align 8, !tbaa !241
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %27, %52
  %32 = phi i32 [ %53, %52 ], [ 0, %27 ]
  %33 = phi ptr [ %54, %52 ], [ %7, %27 ]
  %34 = getelementptr inbounds %struct.TransData, ptr %33, i64 0, i32 16
  %35 = load i32, ptr %34, align 8, !tbaa !310
  %36 = and i32 %35, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %31
  %39 = and i32 %35, 2048
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.TransData, ptr %33, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !323
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.TransData, ptr %33, i64 0, i32 6
  %47 = load float, ptr %46, align 8, !tbaa !322
  %48 = load float, ptr %4, align 4, !tbaa !59
  %49 = getelementptr inbounds %struct.TransData, ptr %33, i64 0, i32 2
  %50 = load float, ptr %49, align 8, !tbaa !313
  %51 = call float @llvm.fmuladd.f32(float %48, float %50, float %47)
  store float %51, ptr %43, align 4, !tbaa !59
  br label %52

52:                                               ; preds = %41, %45, %38
  %53 = add nuw nsw i32 %32, 1
  %54 = getelementptr inbounds %struct.TransData, ptr %33, i64 1
  %55 = icmp eq i32 %53, %29
  br i1 %55, label %56, label %31, !llvm.loop !364

56:                                               ; preds = %52, %31, %27
  call void @recalcData(ptr noundef %0) #16
  %57 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %58 = load ptr, ptr %57, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %58, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @applyCurveShrinkFatten(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #16
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %9 = load float, ptr %8, align 4, !tbaa !59
  store float %9, ptr %3, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %3) #16
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %11 = call zeroext i8 @applyNumInput(ptr noundef nonnull %10, ptr noundef nonnull %3) #16
  %12 = call zeroext i8 @hasNumInput(ptr noundef nonnull %10) #16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %16 = load ptr, ptr %15, align 8, !tbaa !109
  %17 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef nonnull %17) #16
  %18 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.111, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  br label %23

19:                                               ; preds = %2
  %20 = load float, ptr %3, align 4, !tbaa !59
  %21 = fpext float %20 to double
  %22 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.112, double noundef %21) #16
  br label %23

23:                                               ; preds = %19, %14
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !241
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %23, %54
  %28 = phi i32 [ %55, %54 ], [ 0, %23 ]
  %29 = phi ptr [ %56, %54 ], [ %7, %23 ]
  %30 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 16
  %31 = load i32, ptr %30, align 8, !tbaa !310
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %27
  %35 = and i32 %31, 2048
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !323
  %40 = icmp eq ptr %39, null
  br i1 %40, label %54, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 6
  %43 = load float, ptr %42, align 8, !tbaa !322
  %44 = load float, ptr %3, align 4, !tbaa !59
  %45 = fmul float %43, %44
  store float %45, ptr %39, align 4, !tbaa !59
  %46 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 2
  %47 = load float, ptr %46, align 8, !tbaa !313
  %48 = fsub float 1.000000e+00, %47
  %49 = load float, ptr %42, align 8, !tbaa !322
  %50 = fmul float %48, %49
  %51 = call float @llvm.fmuladd.f32(float %45, float %47, float %50)
  store float %51, ptr %39, align 4, !tbaa !59
  %52 = fcmp ugt float %51, 0.000000e+00
  br i1 %52, label %54, label %53

53:                                               ; preds = %41
  store float 0x3F50624DE0000000, ptr %39, align 4, !tbaa !59
  br label %54

54:                                               ; preds = %37, %53, %41, %34
  %55 = add nuw nsw i32 %28, 1
  %56 = getelementptr inbounds %struct.TransData, ptr %29, i64 1
  %57 = icmp eq i32 %55, %25
  br i1 %57, label %58, label %27, !llvm.loop !365

58:                                               ; preds = %54, %27, %23
  call void @recalcData(ptr noundef %0) #16
  %59 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %60 = load ptr, ptr %59, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %60, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @applyMaskShrinkFatten(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %7 = load float, ptr %6, align 4, !tbaa !59
  store float %7, ptr %3, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %3) #16
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %9 = call zeroext i8 @applyNumInput(ptr noundef nonnull %8, ptr noundef nonnull %3) #16
  %10 = call zeroext i8 @hasNumInput(ptr noundef nonnull %8) #16
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %14 = load ptr, ptr %13, align 8, !tbaa !109
  %15 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %15) #16
  %16 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.113, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  br label %21

17:                                               ; preds = %2
  %18 = load float, ptr %3, align 4, !tbaa !59
  %19 = fpext float %18 to double
  %20 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.114, double noundef %19) #16
  br label %21

21:                                               ; preds = %17, %12
  %22 = load float, ptr %3, align 4, !tbaa !59
  %23 = fcmp ogt float %22, 1.000000e+00
  br i1 %23, label %24, label %55

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !241
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !268
  br label %31

31:                                               ; preds = %28, %47
  %32 = phi i8 [ %48, %47 ], [ 1, %28 ]
  %33 = phi i32 [ %49, %47 ], [ 0, %28 ]
  %34 = phi ptr [ %50, %47 ], [ %30, %28 ]
  %35 = getelementptr inbounds %struct.TransData, ptr %34, i64 0, i32 16
  %36 = load i32, ptr %35, align 8, !tbaa !310
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %31
  %40 = and i32 %36, 2048
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.TransData, ptr %34, i64 0, i32 6
  %44 = load float, ptr %43, align 8, !tbaa !322
  %45 = fcmp ult float %44, 0x3F50624DE0000000
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %42, %46, %39
  %48 = phi i8 [ %32, %39 ], [ 0, %46 ], [ %32, %42 ]
  %49 = add nuw nsw i32 %33, 1
  %50 = getelementptr inbounds %struct.TransData, ptr %34, i64 1
  %51 = icmp eq i32 %49, %26
  br i1 %51, label %52, label %31, !llvm.loop !366

52:                                               ; preds = %47, %31
  %53 = phi i8 [ %48, %47 ], [ %32, %31 ]
  %54 = icmp eq i8 %53, 0
  br label %55

55:                                               ; preds = %52, %24, %21
  %56 = phi i1 [ true, %21 ], [ false, %24 ], [ %54, %52 ]
  %57 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %58 = load i32, ptr %57, align 8, !tbaa !241
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %98

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %62 = load ptr, ptr %61, align 8, !tbaa !268
  br label %63

63:                                               ; preds = %60, %94
  %64 = phi i32 [ 0, %60 ], [ %95, %94 ]
  %65 = phi ptr [ %62, %60 ], [ %96, %94 ]
  %66 = getelementptr inbounds %struct.TransData, ptr %65, i64 0, i32 16
  %67 = load i32, ptr %66, align 8, !tbaa !310
  %68 = and i32 %67, 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %98

70:                                               ; preds = %63
  %71 = and i32 %67, 2048
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.TransData, ptr %65, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !323
  %76 = icmp eq ptr %75, null
  br i1 %76, label %94, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.TransData, ptr %65, i64 0, i32 6
  %79 = load float, ptr %78, align 8, !tbaa !322
  %80 = load float, ptr %3, align 4, !tbaa !59
  %81 = fmul float %79, %80
  %82 = fadd float %80, -1.000000e+00
  %83 = call float @llvm.fmuladd.f32(float %82, float 0x3F847AE140000000, float %79)
  %84 = select i1 %56, float %81, float %83
  store float %84, ptr %75, align 4, !tbaa !59
  %85 = getelementptr inbounds %struct.TransData, ptr %65, i64 0, i32 2
  %86 = load float, ptr %85, align 8, !tbaa !313
  %87 = fsub float 1.000000e+00, %86
  %88 = getelementptr inbounds %struct.TransData, ptr %65, i64 0, i32 6
  %89 = load float, ptr %88, align 8, !tbaa !322
  %90 = fmul float %87, %89
  %91 = call float @llvm.fmuladd.f32(float %84, float %86, float %90)
  store float %91, ptr %75, align 4, !tbaa !59
  %92 = fcmp ugt float %91, 0.000000e+00
  br i1 %92, label %94, label %93

93:                                               ; preds = %77
  store float 0x3F50624DE0000000, ptr %75, align 4, !tbaa !59
  br label %94

94:                                               ; preds = %73, %93, %77, %70
  %95 = add nuw nsw i32 %64, 1
  %96 = getelementptr inbounds %struct.TransData, ptr %65, i64 1
  %97 = icmp eq i32 %95, %58
  br i1 %97, label %98, label %63, !llvm.loop !367

98:                                               ; preds = %94, %63, %55
  call void @recalcData(ptr noundef %0) #16
  %99 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %100 = load ptr, ptr %99, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %100, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @applyPushPull(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca float, align 4
  %6 = alloca [256 x i8], align 16
  %7 = alloca [64 x i8], align 16
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #16
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !268
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %12 = load float, ptr %11, align 4, !tbaa !59
  store float %12, ptr %5, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %5) #16
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %14 = call zeroext i8 @applyNumInput(ptr noundef nonnull %13, ptr noundef nonnull %5) #16
  %15 = call zeroext i8 @hasNumInput(ptr noundef nonnull %13) #16
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #16
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %19 = load ptr, ptr %18, align 8, !tbaa !109
  %20 = getelementptr inbounds %struct.Scene, ptr %19, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %13, ptr noundef nonnull %7, ptr noundef nonnull %20) #16
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %23 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 256, ptr noundef nonnull @.str.115, ptr noundef nonnull %7, ptr noundef nonnull %21, ptr noundef nonnull %22) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #16
  br label %30

24:                                               ; preds = %2
  %25 = load float, ptr %5, align 4, !tbaa !59
  %26 = fpext float %25 to double
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %29 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 256, ptr noundef nonnull @.str.116, double noundef %26, ptr noundef nonnull %27, ptr noundef nonnull %28) #16
  br label %30

30:                                               ; preds = %24, %17
  %31 = load float, ptr %5, align 4, !tbaa !59
  store float %31, ptr %11, align 4, !tbaa !59
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 11
  %33 = load ptr, ptr %32, align 8, !tbaa !315
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %37 = load i32, ptr %36, align 4, !tbaa !97
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  call void %33(ptr noundef %0, ptr noundef null, ptr noundef nonnull %4, ptr noundef null) #16
  br label %41

41:                                               ; preds = %40, %35, %30
  %42 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %43 = load i32, ptr %42, align 8, !tbaa !241
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %148

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %47 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 1
  %48 = getelementptr inbounds float, ptr %3, i64 1
  %49 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 2
  %50 = getelementptr inbounds float, ptr %3, i64 2
  %51 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %52 = getelementptr inbounds float, ptr %8, i64 1
  %53 = getelementptr inbounds float, ptr %8, i64 2
  br label %54

54:                                               ; preds = %45, %143
  %55 = phi ptr [ %10, %45 ], [ %145, %143 ]
  %56 = phi i32 [ 0, %45 ], [ %144, %143 ]
  %57 = getelementptr inbounds %struct.TransData, ptr %55, i64 0, i32 16
  %58 = load i32, ptr %57, align 8, !tbaa !310
  %59 = and i32 %58, 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %148

61:                                               ; preds = %54
  %62 = and i32 %58, 2048
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %143

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.TransData, ptr %55, i64 0, i32 7
  %66 = load float, ptr %46, align 4, !tbaa !59
  %67 = load float, ptr %65, align 4, !tbaa !59
  %68 = fsub float %66, %67
  store float %68, ptr %3, align 4, !tbaa !59
  %69 = load float, ptr %47, align 4, !tbaa !59
  %70 = getelementptr inbounds %struct.TransData, ptr %55, i64 0, i32 7, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !59
  %72 = fsub float %69, %71
  store float %72, ptr %48, align 4, !tbaa !59
  %73 = load float, ptr %49, align 4, !tbaa !59
  %74 = getelementptr inbounds %struct.TransData, ptr %55, i64 0, i32 7, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !59
  %76 = fsub float %73, %75
  store float %76, ptr %50, align 4, !tbaa !59
  %77 = load ptr, ptr %32, align 8, !tbaa !315
  %78 = icmp eq ptr %77, null
  br i1 %78, label %97, label %79

79:                                               ; preds = %64
  %80 = load i32, ptr %51, align 4, !tbaa !97
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %79
  call void %77(ptr noundef %0, ptr noundef %55, ptr noundef nonnull %4, ptr noundef null) #16
  %84 = call zeroext i8 @isLockConstraint(ptr noundef %0) #16
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  call void @project_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %87 = load float, ptr %8, align 4, !tbaa !59
  %88 = load float, ptr %3, align 4, !tbaa !59
  %89 = fsub float %88, %87
  store float %89, ptr %3, align 4, !tbaa !59
  %90 = load float, ptr %52, align 4, !tbaa !59
  %91 = load float, ptr %48, align 4, !tbaa !59
  %92 = fsub float %91, %90
  store float %92, ptr %48, align 4, !tbaa !59
  %93 = load float, ptr %53, align 4, !tbaa !59
  %94 = load float, ptr %50, align 4, !tbaa !59
  %95 = fsub float %94, %93
  store float %95, ptr %50, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  br label %97

96:                                               ; preds = %83
  call void @project_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  br label %97

97:                                               ; preds = %86, %96, %79, %64
  %98 = load float, ptr %3, align 4, !tbaa !59
  %99 = load float, ptr %48, align 4, !tbaa !59
  %100 = fmul float %99, %99
  %101 = call float @llvm.fmuladd.f32(float %98, float %98, float %100)
  %102 = load float, ptr %50, align 4, !tbaa !59
  %103 = call float @llvm.fmuladd.f32(float %102, float %102, float %101)
  %104 = fcmp ogt float %103, 0x38AA95A5C0000000
  br i1 %104, label %105, label %114

105:                                              ; preds = %97
  %106 = call float @sqrtf(float noundef %103) #16
  %107 = fdiv float 1.000000e+00, %106
  %108 = load float, ptr %3, align 4, !tbaa !59
  %109 = fmul float %108, %107
  store float %109, ptr %3, align 4, !tbaa !59
  %110 = load float, ptr %48, align 4, !tbaa !59
  %111 = fmul float %107, %110
  store float %111, ptr %48, align 4, !tbaa !59
  %112 = load float, ptr %50, align 4, !tbaa !59
  %113 = fmul float %107, %112
  br label %115

114:                                              ; preds = %97
  store float 0.000000e+00, ptr %3, align 4, !tbaa !59
  store float 0.000000e+00, ptr %48, align 4, !tbaa !59
  br label %115

115:                                              ; preds = %105, %114
  %116 = phi float [ 0.000000e+00, %114 ], [ %113, %105 ]
  store float %116, ptr %50, align 4, !tbaa !59
  %117 = load float, ptr %5, align 4, !tbaa !59
  %118 = load float, ptr %3, align 4, !tbaa !59
  %119 = fmul float %117, %118
  store float %119, ptr %3, align 4, !tbaa !59
  %120 = load float, ptr %48, align 4, !tbaa !59
  %121 = fmul float %117, %120
  store float %121, ptr %48, align 4, !tbaa !59
  %122 = fmul float %116, %117
  store float %122, ptr %50, align 4, !tbaa !59
  %123 = getelementptr inbounds %struct.TransData, ptr %55, i64 0, i32 2
  %124 = load float, ptr %123, align 8, !tbaa !313
  %125 = fmul float %119, %124
  store float %125, ptr %3, align 4, !tbaa !59
  %126 = fmul float %121, %124
  store float %126, ptr %48, align 4, !tbaa !59
  %127 = fmul float %122, %124
  store float %127, ptr %50, align 4, !tbaa !59
  %128 = getelementptr inbounds %struct.TransData, ptr %55, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !312
  %130 = getelementptr inbounds %struct.TransData, ptr %55, i64 0, i32 4
  %131 = load float, ptr %130, align 4, !tbaa !59
  %132 = fadd float %125, %131
  store float %132, ptr %129, align 4, !tbaa !59
  %133 = getelementptr inbounds %struct.TransData, ptr %55, i64 0, i32 4, i64 1
  %134 = load float, ptr %133, align 4, !tbaa !59
  %135 = load float, ptr %48, align 4, !tbaa !59
  %136 = fadd float %134, %135
  %137 = getelementptr inbounds float, ptr %129, i64 1
  store float %136, ptr %137, align 4, !tbaa !59
  %138 = getelementptr inbounds %struct.TransData, ptr %55, i64 0, i32 4, i64 2
  %139 = load float, ptr %138, align 4, !tbaa !59
  %140 = load float, ptr %50, align 4, !tbaa !59
  %141 = fadd float %139, %140
  %142 = getelementptr inbounds float, ptr %129, i64 2
  store float %141, ptr %142, align 4, !tbaa !59
  br label %143

143:                                              ; preds = %61, %115
  %144 = add nuw nsw i32 %56, 1
  %145 = getelementptr inbounds %struct.TransData, ptr %55, i64 1
  %146 = load i32, ptr %42, align 8, !tbaa !241
  %147 = icmp slt i32 %144, %146
  br i1 %147, label %54, label %148, !llvm.loop !368

148:                                              ; preds = %143, %54, %41
  call void @recalcData(ptr noundef %0) #16
  %149 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %150 = load ptr, ptr %149, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %150, ptr noundef nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  ret void
}

declare zeroext i8 @isLockConstraint(ptr noundef) local_unnamed_addr #2

declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @applyBevelWeight(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #16
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %9 = load float, ptr %8, align 4, !tbaa !59
  %10 = fcmp ogt float %9, 1.000000e+00
  %11 = select i1 %10, float 1.000000e+00, float %9
  store float %11, ptr %3, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %3) #16
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %13 = call zeroext i8 @applyNumInput(ptr noundef nonnull %12, ptr noundef nonnull %3) #16
  %14 = call zeroext i8 @hasNumInput(ptr noundef nonnull %12) #16
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %18 = load ptr, ptr %17, align 8, !tbaa !109
  %19 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %12, ptr noundef nonnull %5, ptr noundef nonnull %19) #16
  %20 = load float, ptr %3, align 4, !tbaa !59
  %21 = fcmp ult float %20, 0.000000e+00
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %23 = select i1 %21, ptr @.str.118, ptr @.str.117
  %24 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull %23, ptr noundef nonnull %5, ptr noundef nonnull %22) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  br label %34

25:                                               ; preds = %2
  %26 = load float, ptr %3, align 4, !tbaa !59
  %27 = fcmp ult float %26, 0.000000e+00
  %28 = fpext float %26 to double
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  br i1 %27, label %32, label %30

30:                                               ; preds = %25
  %31 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.119, double noundef %28, ptr noundef nonnull %29) #16
  br label %34

32:                                               ; preds = %25
  %33 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.120, double noundef %28, ptr noundef nonnull %29) #16
  br label %34

34:                                               ; preds = %30, %32, %16
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %36 = load i32, ptr %35, align 8, !tbaa !241
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %34, %60
  %39 = phi i32 [ %61, %60 ], [ 0, %34 ]
  %40 = phi ptr [ %62, %60 ], [ %7, %34 ]
  %41 = getelementptr inbounds %struct.TransData, ptr %40, i64 0, i32 16
  %42 = load i32, ptr %41, align 8, !tbaa !310
  %43 = and i32 %42, 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.TransData, ptr %40, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !323
  %48 = icmp eq ptr %47, null
  br i1 %48, label %60, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.TransData, ptr %40, i64 0, i32 6
  %51 = load float, ptr %50, align 8, !tbaa !322
  %52 = load float, ptr %3, align 4, !tbaa !59
  %53 = getelementptr inbounds %struct.TransData, ptr %40, i64 0, i32 2
  %54 = load float, ptr %53, align 8, !tbaa !313
  %55 = call float @llvm.fmuladd.f32(float %52, float %54, float %51)
  %56 = fcmp olt float %55, 0.000000e+00
  %57 = select i1 %56, float 0.000000e+00, float %55
  store float %57, ptr %47, align 4, !tbaa !59
  %58 = fcmp ogt float %57, 1.000000e+00
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store float 1.000000e+00, ptr %47, align 4, !tbaa !59
  br label %60

60:                                               ; preds = %45, %59, %49
  %61 = add nuw nsw i32 %39, 1
  %62 = getelementptr inbounds %struct.TransData, ptr %40, i64 1
  %63 = icmp eq i32 %61, %36
  br i1 %63, label %64, label %38, !llvm.loop !369

64:                                               ; preds = %60, %38, %34
  call void @recalcData(ptr noundef %0) #16
  %65 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %66 = load ptr, ptr %65, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %66, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @applyCrease(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #16
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %9 = load float, ptr %8, align 4, !tbaa !59
  %10 = fcmp ogt float %9, 1.000000e+00
  %11 = select i1 %10, float 1.000000e+00, float %9
  store float %11, ptr %3, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %3) #16
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %13 = call zeroext i8 @applyNumInput(ptr noundef nonnull %12, ptr noundef nonnull %3) #16
  %14 = call zeroext i8 @hasNumInput(ptr noundef nonnull %12) #16
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %18 = load ptr, ptr %17, align 8, !tbaa !109
  %19 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %12, ptr noundef nonnull %5, ptr noundef nonnull %19) #16
  %20 = load float, ptr %3, align 4, !tbaa !59
  %21 = fcmp ult float %20, 0.000000e+00
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %23 = select i1 %21, ptr @.str.122, ptr @.str.121
  %24 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull %23, ptr noundef nonnull %5, ptr noundef nonnull %22) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  br label %34

25:                                               ; preds = %2
  %26 = load float, ptr %3, align 4, !tbaa !59
  %27 = fcmp ult float %26, 0.000000e+00
  %28 = fpext float %26 to double
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  br i1 %27, label %32, label %30

30:                                               ; preds = %25
  %31 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.123, double noundef %28, ptr noundef nonnull %29) #16
  br label %34

32:                                               ; preds = %25
  %33 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.124, double noundef %28, ptr noundef nonnull %29) #16
  br label %34

34:                                               ; preds = %30, %32, %16
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %36 = load i32, ptr %35, align 8, !tbaa !241
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %67

38:                                               ; preds = %34, %63
  %39 = phi i32 [ %64, %63 ], [ 0, %34 ]
  %40 = phi ptr [ %65, %63 ], [ %7, %34 ]
  %41 = getelementptr inbounds %struct.TransData, ptr %40, i64 0, i32 16
  %42 = load i32, ptr %41, align 8, !tbaa !310
  %43 = and i32 %42, 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %38
  %46 = and i32 %42, 2048
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.TransData, ptr %40, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !323
  %51 = icmp eq ptr %50, null
  br i1 %51, label %63, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.TransData, ptr %40, i64 0, i32 6
  %54 = load float, ptr %53, align 8, !tbaa !322
  %55 = load float, ptr %3, align 4, !tbaa !59
  %56 = getelementptr inbounds %struct.TransData, ptr %40, i64 0, i32 2
  %57 = load float, ptr %56, align 8, !tbaa !313
  %58 = call float @llvm.fmuladd.f32(float %55, float %57, float %54)
  %59 = fcmp olt float %58, 0.000000e+00
  %60 = select i1 %59, float 0.000000e+00, float %58
  store float %60, ptr %50, align 4, !tbaa !59
  %61 = fcmp ogt float %60, 1.000000e+00
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  store float 1.000000e+00, ptr %50, align 4, !tbaa !59
  br label %63

63:                                               ; preds = %48, %62, %52, %45
  %64 = add nuw nsw i32 %39, 1
  %65 = getelementptr inbounds %struct.TransData, ptr %40, i64 1
  %66 = icmp eq i32 %64, %36
  br i1 %66, label %67, label %38, !llvm.loop !370

67:                                               ; preds = %63, %38, %34
  call void @recalcData(ptr noundef %0) #16
  %68 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %69 = load ptr, ptr %68, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %69, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @applyBoneSize(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [192 x i8], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [256 x i8], align 16
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #16
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !99
  %14 = and i32 %13, 128
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %18 = load i32, ptr %17, align 4, !tbaa !97
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 22
  %22 = load i32, ptr %21, align 8, !tbaa !73
  %23 = load i32, ptr %1, align 4, !tbaa !73
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 22, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !73
  %26 = getelementptr inbounds i32, ptr %1, i64 1
  %27 = load i32, ptr %26, align 4, !tbaa !73
  %28 = add i32 %22, %25
  %29 = add i32 %23, %27
  %30 = sub i32 %28, %29
  %31 = sitofp i32 %30 to float
  %32 = fdiv float %31, 1.000000e+02
  %33 = fsub float 1.000000e+00, %32
  br label %37

34:                                               ; preds = %16, %2
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %36 = load float, ptr %35, align 4, !tbaa !59
  br label %37

37:                                               ; preds = %34, %20
  %38 = phi float [ %33, %20 ], [ %36, %34 ]
  %39 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %38, ptr %39, align 4, !tbaa !59
  %40 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float %38, ptr %40, align 4, !tbaa !59
  store float %38, ptr %7, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %7) #16
  %41 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %42 = call zeroext i8 @applyNumInput(ptr noundef nonnull %41, ptr noundef nonnull %7) #16
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  call void @constraintNumInput(ptr noundef %0, ptr noundef nonnull %7) #16
  br label %45

45:                                               ; preds = %44, %37
  call void @size_to_mat3(ptr noundef nonnull %8, ptr noundef nonnull %7) #16
  %46 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 10
  %47 = load ptr, ptr %46, align 8, !tbaa !317
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  call void %47(ptr noundef %0, ptr noundef null, ptr noundef nonnull %8) #16
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 36
  call void @copy_m3_m3(ptr noundef nonnull %51, ptr noundef nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %6) #16
  %52 = call zeroext i8 @hasNumInput(ptr noundef nonnull %41) #16
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %56 = load ptr, ptr %55, align 8, !tbaa !109
  %57 = getelementptr inbounds %struct.Scene, ptr %56, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %41, ptr noundef nonnull %6, ptr noundef nonnull %57) #16
  br label %70

58:                                               ; preds = %50
  %59 = load float, ptr %7, align 4, !tbaa !59
  %60 = fpext float %59 to double
  %61 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 64, ptr noundef nonnull @.str.83, double noundef %60) #16
  %62 = getelementptr inbounds [192 x i8], ptr %6, i64 0, i64 64
  %63 = load float, ptr %40, align 4, !tbaa !59
  %64 = fpext float %63 to double
  %65 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %62, i64 noundef 64, ptr noundef nonnull @.str.83, double noundef %64) #16
  %66 = getelementptr inbounds [192 x i8], ptr %6, i64 0, i64 128
  %67 = load float, ptr %39, align 4, !tbaa !59
  %68 = fpext float %67 to double
  %69 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %66, i64 noundef 64, ptr noundef nonnull @.str.83, double noundef %68) #16
  br label %70

70:                                               ; preds = %58, %54
  %71 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %72 = load i32, ptr %71, align 4, !tbaa !97
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %70
  %76 = load i16, ptr %41, align 8, !tbaa !108
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %80 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %81 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 256, ptr noundef nonnull @.str.125, ptr noundef nonnull %6, ptr noundef nonnull %79, ptr noundef nonnull %80) #16
  br label %94

82:                                               ; preds = %75
  %83 = getelementptr inbounds [192 x i8], ptr %6, i64 0, i64 64
  %84 = getelementptr inbounds [192 x i8], ptr %6, i64 0, i64 128
  %85 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %86 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %87 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 256, ptr noundef nonnull @.str.126, ptr noundef nonnull %6, ptr noundef nonnull %83, ptr noundef nonnull %84, ptr noundef nonnull %85, ptr noundef nonnull %86) #16
  br label %94

88:                                               ; preds = %70
  %89 = getelementptr inbounds [192 x i8], ptr %6, i64 0, i64 64
  %90 = getelementptr inbounds [192 x i8], ptr %6, i64 0, i64 128
  %91 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %92 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %93 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 256, ptr noundef nonnull @.str.127, ptr noundef nonnull %6, ptr noundef nonnull %89, ptr noundef nonnull %90, ptr noundef nonnull %91, ptr noundef nonnull %92) #16
  br label %94

94:                                               ; preds = %78, %82, %88
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %6) #16
  %95 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %96 = load i32, ptr %95, align 8, !tbaa !241
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %127

98:                                               ; preds = %94, %122
  %99 = phi i32 [ %123, %122 ], [ 0, %94 ]
  %100 = phi ptr [ %124, %122 ], [ %11, %94 ]
  %101 = getelementptr inbounds %struct.TransData, ptr %100, i64 0, i32 16
  %102 = load i32, ptr %101, align 8, !tbaa !310
  %103 = and i32 %102, 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %127

105:                                              ; preds = %98
  %106 = and i32 %102, 2048
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #16
  %109 = getelementptr inbounds %struct.TransData, ptr %100, i64 0, i32 8
  call void @mul_m3_m3m3(ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef nonnull %109) #16
  %110 = getelementptr inbounds %struct.TransData, ptr %100, i64 0, i32 9
  call void @mul_m3_m3m3(ptr noundef nonnull %3, ptr noundef nonnull %110, ptr noundef nonnull %4) #16
  %111 = load ptr, ptr %46, align 8, !tbaa !317
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  call void %111(ptr noundef %0, ptr noundef %100, ptr noundef nonnull %3) #16
  br label %114

114:                                              ; preds = %108, %113
  %115 = getelementptr inbounds %struct.TransData, ptr %100, i64 0, i32 4
  %116 = getelementptr inbounds %struct.TransData, ptr %100, i64 0, i32 4, i64 1
  %117 = load float, ptr %116, align 4, !tbaa !59
  call void @size_to_mat3(ptr noundef nonnull %5, ptr noundef nonnull %115) #16
  call void @mul_m3_m3m3(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %5) #16
  %118 = getelementptr inbounds %struct.TransData, ptr %100, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !312
  call void @mat3_to_size(ptr noundef %119, ptr noundef nonnull %3) #16
  %120 = load ptr, ptr %118, align 8, !tbaa !312
  %121 = getelementptr inbounds float, ptr %120, i64 1
  store float %117, ptr %121, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #16
  br label %122

122:                                              ; preds = %105, %114
  %123 = add nuw nsw i32 %99, 1
  %124 = getelementptr inbounds %struct.TransData, ptr %100, i64 1
  %125 = load i32, ptr %95, align 8, !tbaa !241
  %126 = icmp slt i32 %123, %125
  br i1 %126, label %98, label %127, !llvm.loop !371

127:                                              ; preds = %122, %98, %94
  call void @recalcData(ptr noundef %0) #16
  %128 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %129 = load ptr, ptr %128, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %129, ptr noundef nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @applyBoneEnvelope(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #16
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %9 = load float, ptr %8, align 4, !tbaa !59
  store float %9, ptr %3, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %3) #16
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %11 = call zeroext i8 @applyNumInput(ptr noundef nonnull %10, ptr noundef nonnull %3) #16
  %12 = call zeroext i8 @hasNumInput(ptr noundef nonnull %10) #16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %16 = load ptr, ptr %15, align 8, !tbaa !109
  %17 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef nonnull %17) #16
  %18 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.128, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  br label %23

19:                                               ; preds = %2
  %20 = load float, ptr %3, align 4, !tbaa !59
  %21 = fpext float %20 to double
  %22 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.129, double noundef %21) #16
  br label %23

23:                                               ; preds = %19, %14
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !241
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %23, %48
  %28 = phi i32 [ %49, %48 ], [ 0, %23 ]
  %29 = phi ptr [ %50, %48 ], [ %7, %23 ]
  %30 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 16
  %31 = load i32, ptr %30, align 8, !tbaa !310
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %27
  %35 = and i32 %31, 2048
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !323
  %40 = icmp eq ptr %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 6
  %43 = load float, ptr %42, align 8, !tbaa !322
  %44 = fcmp une float %43, 0.000000e+00
  %45 = load float, ptr %3, align 4, !tbaa !59
  %46 = select i1 %44, float %43, float 1.000000e+00
  %47 = fmul float %45, %46
  store float %47, ptr %39, align 4, !tbaa !59
  br label %48

48:                                               ; preds = %41, %37, %34
  %49 = add nuw nsw i32 %28, 1
  %50 = getelementptr inbounds %struct.TransData, ptr %29, i64 1
  %51 = icmp eq i32 %49, %25
  br i1 %51, label %52, label %27, !llvm.loop !372

52:                                               ; preds = %48, %27, %23
  call void @recalcData(ptr noundef %0) #16
  %53 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %54 = load ptr, ptr %53, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %54, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

declare void @bmiter__face_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @applyEdgeSlide(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca float, align 4
  %5 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %7 = load ptr, ptr %6, align 8, !tbaa !218
  %8 = getelementptr inbounds %struct.EdgeSlideData, ptr %7, i64 0, i32 10
  %9 = load i8, ptr %8, align 1, !tbaa !164
  %10 = getelementptr inbounds %struct.EdgeSlideData, ptr %7, i64 0, i32 9
  %11 = load i8, ptr %10, align 4, !tbaa !162
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %13 = load float, ptr %12, align 4, !tbaa !59
  store float %13, ptr %4, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %4) #16
  %14 = load float, ptr %4, align 4, !tbaa !59
  %15 = fcmp olt float %14, -1.000000e+00
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store float -1.000000e+00, ptr %4, align 4, !tbaa !59
  br label %20

17:                                               ; preds = %2
  %18 = fcmp ogt float %14, 1.000000e+00
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  store float 1.000000e+00, ptr %4, align 4, !tbaa !59
  br label %20

20:                                               ; preds = %17, %19, %16
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %22 = call zeroext i8 @applyNumInput(ptr noundef nonnull %21, ptr noundef nonnull %4) #16
  %23 = call zeroext i8 @hasNumInput(ptr noundef nonnull %21) #16
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %27 = load ptr, ptr %26, align 8, !tbaa !109
  %28 = getelementptr inbounds %struct.Scene, ptr %27, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %21, ptr noundef nonnull %5, ptr noundef nonnull %28) #16
  %29 = icmp eq i8 %11, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = call ptr @WM_bool_as_string(i8 noundef zeroext 0) #16
  %32 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.130, ptr noundef nonnull %5, ptr noundef %31) #16
  br label %37

33:                                               ; preds = %25
  %34 = call ptr @WM_bool_as_string(i8 noundef zeroext 1) #16
  %35 = call ptr @WM_bool_as_string(i8 noundef zeroext %9) #16
  %36 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.131, ptr noundef nonnull %5, ptr noundef %34, ptr noundef %35) #16
  br label %37

37:                                               ; preds = %33, %30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  br label %49

38:                                               ; preds = %20
  %39 = icmp eq i8 %11, 0
  %40 = load float, ptr %4, align 4, !tbaa !59
  %41 = fpext float %40 to double
  br i1 %39, label %45, label %42

42:                                               ; preds = %38
  %43 = call ptr @WM_bool_as_string(i8 noundef zeroext 0) #16
  %44 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.132, double noundef %41, ptr noundef %43) #16
  br label %49

45:                                               ; preds = %38
  %46 = call ptr @WM_bool_as_string(i8 noundef zeroext 1) #16
  %47 = call ptr @WM_bool_as_string(i8 noundef zeroext %9) #16
  %48 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.133, double noundef %41, ptr noundef %46, ptr noundef %47) #16
  br label %49

49:                                               ; preds = %42, %45, %37
  %50 = load float, ptr %4, align 4, !tbaa !59
  %51 = fcmp olt float %50, -1.000000e+00
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store float -1.000000e+00, ptr %4, align 4, !tbaa !59
  br label %56

53:                                               ; preds = %49
  %54 = fcmp ogt float %50, 1.000000e+00
  br i1 %54, label %55, label %56

55:                                               ; preds = %53
  store float 1.000000e+00, ptr %4, align 4, !tbaa !59
  br label %56

56:                                               ; preds = %53, %55, %52
  %57 = load float, ptr %4, align 4, !tbaa !59
  store float %57, ptr %12, align 4, !tbaa !59
  call fastcc void @doEdgeSlide(ptr noundef %0, float noundef %57)
  call void @recalcData(ptr noundef %0) #16
  %58 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %59 = load ptr, ptr %58, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %59, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @handleEventEdgeSlide(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = load i32, ptr %0, align 8, !tbaa !87
  %4 = icmp eq i32 %3, 28
  br i1 %4, label %5, label %52

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %7 = load ptr, ptr %6, align 8, !tbaa !218
  %8 = icmp eq ptr %7, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !94
  switch i16 %11, label %52 [
    i16 101, label %12
    i16 102, label %21
    i16 20514, label %34
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %14 = load i16, ptr %13, align 2, !tbaa !92
  %15 = icmp eq i16 %14, 1
  br i1 %15, label %16, label %52

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.EdgeSlideData, ptr %7, i64 0, i32 9
  %18 = load i8, ptr %17, align 4, !tbaa !162
  %19 = icmp eq i8 %18, 0
  %20 = zext i1 %19 to i8
  store i8 %20, ptr %17, align 4, !tbaa !162
  br label %52

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %23 = load i16, ptr %22, align 2, !tbaa !92
  %24 = icmp eq i16 %23, 1
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.EdgeSlideData, ptr %7, i64 0, i32 9
  %27 = load i8, ptr %26, align 4, !tbaa !162
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.EdgeSlideData, ptr %7, i64 0, i32 10
  %31 = load i8, ptr %30, align 1, !tbaa !164
  %32 = icmp eq i8 %31, 0
  %33 = zext i1 %32 to i8
  store i8 %33, ptr %30, align 1, !tbaa !164
  br label %52

34:                                               ; preds = %9
  %35 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %36 = load i16, ptr %35, align 2, !tbaa !92
  switch i16 %36, label %52 [
    i16 25, label %37
    i16 24, label %45
  ]

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.EdgeSlideData, ptr %7, i64 0, i32 11
  %39 = load i32, ptr %38, align 8, !tbaa !163
  %40 = add nsw i32 %39, -1
  %41 = getelementptr inbounds %struct.EdgeSlideData, ptr %7, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !206
  %43 = add nsw i32 %40, %42
  %44 = srem i32 %43, %42
  store i32 %44, ptr %38, align 8, !tbaa !163
  br label %52

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.EdgeSlideData, ptr %7, i64 0, i32 11
  %47 = load i32, ptr %46, align 8, !tbaa !163
  %48 = add nsw i32 %47, 1
  %49 = getelementptr inbounds %struct.EdgeSlideData, ptr %7, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !206
  %51 = srem i32 %48, %50
  store i32 %51, ptr %46, align 8, !tbaa !163
  br label %52

52:                                               ; preds = %16, %29, %25, %2, %5, %9, %37, %45, %34, %21, %12
  %53 = phi i32 [ 0, %12 ], [ 0, %21 ], [ 0, %34 ], [ 0, %45 ], [ 0, %37 ], [ 0, %9 ], [ 0, %5 ], [ 0, %2 ], [ 1, %25 ], [ 1, %29 ], [ 1, %16 ]
  ret i32 %53
}

declare void @setCustomPoints(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_ob_project_mat_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_next_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 2, i64 1
  %10 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 2, i64 2
  br label %11

11:                                               ; preds = %278, %5
  %12 = phi float [ 0.000000e+00, %5 ], [ %247, %278 ]
  %13 = phi float [ 0.000000e+00, %5 ], [ %248, %278 ]
  %14 = phi float [ 0.000000e+00, %5 ], [ %249, %278 ]
  %15 = phi ptr [ %1, %5 ], [ %280, %278 ]
  %16 = phi float [ 0.000000e+00, %5 ], [ %246, %278 ]
  %17 = phi i32 [ 0, %5 ], [ %250, %278 ]
  %18 = tail call ptr @BM_loop_other_edge_loop(ptr noundef %15, ptr noundef %0) #16
  %19 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !196
  %21 = icmp eq ptr %20, %3
  br i1 %21, label %22, label %210

22:                                               ; preds = %11
  %23 = icmp eq i32 %17, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %22
  %25 = sitofp i32 %17 to float
  %26 = fdiv float %16, %25
  %27 = fmul float %13, %13
  %28 = tail call float @llvm.fmuladd.f32(float %12, float %12, float %27)
  %29 = tail call float @llvm.fmuladd.f32(float %14, float %14, float %28)
  %30 = fcmp ogt float %29, 0x38AA95A5C0000000
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = tail call float @sqrtf(float noundef %29) #16
  %33 = fdiv float 1.000000e+00, %32
  %34 = fmul float %12, %33
  %35 = fmul float %13, %33
  %36 = fmul float %14, %33
  br label %37

37:                                               ; preds = %24, %31
  %38 = phi float [ %34, %31 ], [ 0.000000e+00, %24 ]
  %39 = phi float [ %35, %31 ], [ 0.000000e+00, %24 ]
  %40 = phi float [ %36, %31 ], [ 0.000000e+00, %24 ]
  %41 = fmul float %26, %38
  %42 = fmul float %26, %39
  %43 = fmul float %26, %40
  br label %204

44:                                               ; preds = %22
  %45 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !303
  %47 = tail call ptr @BM_face_vert_share_loop(ptr noundef %46, ptr noundef %0) #16
  %48 = getelementptr inbounds %struct.BMLoop, ptr %47, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !303
  %50 = getelementptr inbounds %struct.BMFace, ptr %49, i64 0, i32 3
  %51 = load i32, ptr %50, align 8, !tbaa !373
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %53, label %75

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.BMLoop, ptr %47, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !375
  %56 = getelementptr inbounds %struct.BMLoop, ptr %55, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !375
  %58 = getelementptr inbounds %struct.BMLoop, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !376
  %60 = getelementptr inbounds %struct.BMVert, ptr %59, i64 0, i32 2
  %61 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 2
  %62 = load float, ptr %60, align 4, !tbaa !59
  %63 = load float, ptr %61, align 4, !tbaa !59
  %64 = fsub float %62, %63
  %65 = getelementptr inbounds %struct.BMVert, ptr %59, i64 0, i32 2, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !59
  %67 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 2, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !59
  %69 = fsub float %66, %68
  %70 = getelementptr inbounds %struct.BMVert, ptr %59, i64 0, i32 2, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !59
  %72 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 2, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !59
  %74 = fsub float %71, %73
  br label %204

75:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  call void @BM_loop_calc_face_direction(ptr noundef %47, ptr noundef nonnull %7) #16
  %76 = load ptr, ptr %48, align 8, !tbaa !303
  %77 = getelementptr inbounds %struct.BMFace, ptr %76, i64 0, i32 4
  %78 = getelementptr inbounds %struct.BMFace, ptr %76, i64 0, i32 4, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !59
  %80 = getelementptr inbounds float, ptr %7, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !59
  %82 = getelementptr inbounds %struct.BMFace, ptr %76, i64 0, i32 4, i64 2
  %83 = load float, ptr %82, align 4, !tbaa !59
  %84 = getelementptr inbounds float, ptr %7, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !59
  %86 = fneg float %83
  %87 = fmul float %85, %86
  %88 = load float, ptr %7, align 4, !tbaa !59
  %89 = load float, ptr %77, align 4, !tbaa !59
  %90 = fneg float %89
  %91 = fmul float %81, %90
  %92 = fneg float %79
  %93 = fmul float %88, %92
  %94 = getelementptr inbounds %struct.BMLoop, ptr %47, i64 0, i32 6
  %95 = load ptr, ptr %94, align 8, !tbaa !375
  %96 = getelementptr inbounds %struct.BMLoop, ptr %47, i64 0, i32 7
  %97 = load ptr, ptr %96, align 8, !tbaa !304
  %98 = getelementptr inbounds %struct.BMLoop, ptr %47, i64 0, i32 1
  %99 = getelementptr inbounds float, ptr %6, i64 1
  %100 = getelementptr inbounds float, ptr %6, i64 2
  br label %101

101:                                              ; preds = %153, %75
  %102 = phi float [ undef, %75 ], [ %154, %153 ]
  %103 = phi float [ undef, %75 ], [ %155, %153 ]
  %104 = phi float [ undef, %75 ], [ %156, %153 ]
  %105 = phi float [ 0x47EFFFFFE0000000, %75 ], [ %157, %153 ]
  %106 = phi ptr [ %95, %75 ], [ %158, %153 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  %107 = getelementptr inbounds %struct.BMLoop, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !376
  %109 = getelementptr inbounds %struct.BMVert, ptr %108, i64 0, i32 2
  %110 = getelementptr inbounds %struct.BMLoop, ptr %106, i64 0, i32 6
  %111 = load ptr, ptr %110, align 8, !tbaa !375
  %112 = getelementptr inbounds %struct.BMLoop, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !376
  %114 = getelementptr inbounds %struct.BMVert, ptr %113, i64 0, i32 2
  %115 = load ptr, ptr %98, align 8, !tbaa !376
  %116 = getelementptr inbounds %struct.BMVert, ptr %115, i64 0, i32 2
  %117 = call zeroext i8 @isect_line_plane_v3(ptr noundef nonnull %6, ptr noundef nonnull %109, ptr noundef nonnull %114, ptr noundef nonnull %116, ptr noundef nonnull %7) #16
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %153, label %119

119:                                              ; preds = %101
  %120 = load ptr, ptr %107, align 8, !tbaa !376
  %121 = getelementptr inbounds %struct.BMVert, ptr %120, i64 0, i32 2
  %122 = load ptr, ptr %110, align 8, !tbaa !375
  %123 = getelementptr inbounds %struct.BMLoop, ptr %122, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !376
  %125 = getelementptr inbounds %struct.BMVert, ptr %124, i64 0, i32 2
  %126 = call float @line_point_factor_v3(ptr noundef nonnull %6, ptr noundef nonnull %121, ptr noundef nonnull %125) #16
  %127 = fcmp ogt float %126, 0xBE80000000000000
  %128 = fcmp olt float %126, 0x3FF0000020000000
  %129 = and i1 %127, %128
  br i1 %129, label %130, label %153

130:                                              ; preds = %119
  %131 = load ptr, ptr %98, align 8, !tbaa !376
  %132 = getelementptr inbounds %struct.BMVert, ptr %131, i64 0, i32 2
  %133 = load float, ptr %6, align 4, !tbaa !59
  %134 = load float, ptr %132, align 4, !tbaa !59
  %135 = fsub float %133, %134
  %136 = load float, ptr %99, align 4, !tbaa !59
  %137 = getelementptr inbounds %struct.BMVert, ptr %131, i64 0, i32 2, i64 1
  %138 = load float, ptr %137, align 4, !tbaa !59
  %139 = fsub float %136, %138
  %140 = load float, ptr %100, align 4, !tbaa !59
  %141 = getelementptr inbounds %struct.BMVert, ptr %131, i64 0, i32 2, i64 2
  %142 = load float, ptr %141, align 4, !tbaa !59
  %143 = fsub float %140, %142
  %144 = fmul float %139, %139
  %145 = call float @llvm.fmuladd.f32(float %135, float %135, float %144)
  %146 = call float @llvm.fmuladd.f32(float %143, float %143, float %145)
  %147 = call float @sqrtf(float noundef %146) #16
  %148 = fcmp olt float %147, %105
  br i1 %148, label %149, label %153

149:                                              ; preds = %130
  %150 = load float, ptr %6, align 4, !tbaa !59
  %151 = load float, ptr %99, align 4, !tbaa !59
  %152 = load float, ptr %100, align 4, !tbaa !59
  br label %153

153:                                              ; preds = %149, %130, %119, %101
  %154 = phi float [ %102, %101 ], [ %152, %149 ], [ %102, %130 ], [ %102, %119 ]
  %155 = phi float [ %103, %101 ], [ %151, %149 ], [ %103, %130 ], [ %103, %119 ]
  %156 = phi float [ %104, %101 ], [ %150, %149 ], [ %104, %130 ], [ %104, %119 ]
  %157 = phi float [ %105, %101 ], [ %147, %149 ], [ %105, %130 ], [ %105, %119 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  %158 = load ptr, ptr %110, align 8, !tbaa !375
  %159 = icmp eq ptr %158, %97
  br i1 %159, label %160, label %101, !llvm.loop !377

160:                                              ; preds = %153
  %161 = call float @llvm.fmuladd.f32(float %79, float %81, float %87)
  %162 = call float @llvm.fmuladd.f32(float %83, float %88, float %91)
  %163 = call float @llvm.fmuladd.f32(float %89, float %85, float %93)
  %164 = fcmp oeq float %157, 0x47EFFFFFE0000000
  br i1 %164, label %180, label %165

165:                                              ; preds = %160
  %166 = load ptr, ptr %98, align 8, !tbaa !376
  %167 = getelementptr inbounds %struct.BMVert, ptr %166, i64 0, i32 2
  %168 = load float, ptr %167, align 4, !tbaa !59
  %169 = fsub float %156, %168
  %170 = getelementptr inbounds %struct.BMVert, ptr %166, i64 0, i32 2, i64 1
  %171 = load float, ptr %170, align 4, !tbaa !59
  %172 = fsub float %155, %171
  %173 = getelementptr inbounds %struct.BMVert, ptr %166, i64 0, i32 2, i64 2
  %174 = load float, ptr %173, align 4, !tbaa !59
  %175 = fsub float %154, %174
  %176 = fmul float %172, %172
  %177 = call float @llvm.fmuladd.f32(float %169, float %169, float %176)
  %178 = call float @llvm.fmuladd.f32(float %175, float %175, float %177)
  %179 = call float @sqrtf(float noundef %178) #16
  br label %185

180:                                              ; preds = %160
  %181 = call float @BM_edge_calc_length(ptr noundef %2) #16
  %182 = call float @BM_edge_calc_length(ptr noundef %3) #16
  %183 = fadd float %181, %182
  %184 = fmul float %183, 5.000000e-01
  br label %185

185:                                              ; preds = %180, %165
  %186 = phi float [ %179, %165 ], [ %184, %180 ]
  %187 = fmul float %162, %162
  %188 = call float @llvm.fmuladd.f32(float %161, float %161, float %187)
  %189 = call float @llvm.fmuladd.f32(float %163, float %163, float %188)
  %190 = fcmp ogt float %189, 0x38AA95A5C0000000
  br i1 %190, label %191, label %197

191:                                              ; preds = %185
  %192 = call float @sqrtf(float noundef %189) #16
  %193 = fdiv float 1.000000e+00, %192
  %194 = fmul float %161, %193
  %195 = fmul float %162, %193
  %196 = fmul float %163, %193
  br label %197

197:                                              ; preds = %185, %191
  %198 = phi float [ %194, %191 ], [ 0.000000e+00, %185 ]
  %199 = phi float [ %195, %191 ], [ 0.000000e+00, %185 ]
  %200 = phi float [ %196, %191 ], [ 0.000000e+00, %185 ]
  %201 = fmul float %186, %198
  %202 = fmul float %186, %199
  %203 = fmul float %186, %200
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  br label %204

204:                                              ; preds = %53, %197, %37
  %205 = phi float [ %64, %53 ], [ %201, %197 ], [ %41, %37 ]
  %206 = phi float [ %69, %53 ], [ %202, %197 ], [ %42, %37 ]
  %207 = phi float [ %74, %53 ], [ %203, %197 ], [ %43, %37 ]
  store float %205, ptr %4, align 4, !tbaa !59
  %208 = getelementptr inbounds float, ptr %4, i64 1
  store float %206, ptr %208, align 4, !tbaa !59
  %209 = getelementptr inbounds float, ptr %4, i64 2
  store float %207, ptr %209, align 4, !tbaa !59
  br label %306

210:                                              ; preds = %11
  %211 = getelementptr inbounds %struct.BMEdge, ptr %20, i64 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !193
  %213 = icmp eq ptr %212, %0
  %214 = getelementptr inbounds %struct.BMEdge, ptr %20, i64 0, i32 3
  %215 = load ptr, ptr %214, align 8, !tbaa !194
  %216 = icmp eq ptr %215, %0
  %217 = select i1 %216, ptr %212, ptr null
  %218 = select i1 %213, ptr %215, ptr %217
  %219 = getelementptr inbounds %struct.BMVert, ptr %218, i64 0, i32 2
  %220 = load float, ptr %219, align 4, !tbaa !59
  %221 = load float, ptr %8, align 4, !tbaa !59
  %222 = fsub float %220, %221
  %223 = getelementptr inbounds %struct.BMVert, ptr %218, i64 0, i32 2, i64 1
  %224 = load float, ptr %223, align 4, !tbaa !59
  %225 = load float, ptr %9, align 4, !tbaa !59
  %226 = fsub float %224, %225
  %227 = getelementptr inbounds %struct.BMVert, ptr %218, i64 0, i32 2, i64 2
  %228 = load float, ptr %227, align 4, !tbaa !59
  %229 = load float, ptr %10, align 4, !tbaa !59
  %230 = fsub float %228, %229
  %231 = fmul float %226, %226
  %232 = tail call float @llvm.fmuladd.f32(float %222, float %222, float %231)
  %233 = tail call float @llvm.fmuladd.f32(float %230, float %230, float %232)
  %234 = fcmp ogt float %233, 0x38AA95A5C0000000
  br i1 %234, label %235, label %241

235:                                              ; preds = %210
  %236 = tail call float @sqrtf(float noundef %233) #16
  %237 = fdiv float 1.000000e+00, %236
  %238 = fmul float %222, %237
  %239 = fmul float %226, %237
  %240 = fmul float %230, %237
  br label %241

241:                                              ; preds = %210, %235
  %242 = phi float [ %239, %235 ], [ 0.000000e+00, %210 ]
  %243 = phi float [ %238, %235 ], [ 0.000000e+00, %210 ]
  %244 = phi float [ %240, %235 ], [ 0.000000e+00, %210 ]
  %245 = phi float [ %236, %235 ], [ 0.000000e+00, %210 ]
  %246 = fadd float %16, %245
  %247 = fadd float %12, %243
  %248 = fadd float %13, %242
  %249 = fadd float %14, %244
  %250 = add nuw nsw i32 %17, 1
  %251 = tail call ptr @BM_loop_other_edge_loop(ptr noundef %18, ptr noundef %0) #16
  %252 = getelementptr inbounds %struct.BMLoop, ptr %251, i64 0, i32 2
  %253 = load ptr, ptr %252, align 8, !tbaa !196
  %254 = icmp eq ptr %253, %3
  br i1 %254, label %255, label %278

255:                                              ; preds = %241
  %256 = sitofp i32 %250 to float
  %257 = fdiv float %246, %256
  %258 = fmul float %248, %248
  %259 = tail call float @llvm.fmuladd.f32(float %247, float %247, float %258)
  %260 = tail call float @llvm.fmuladd.f32(float %249, float %249, float %259)
  %261 = fcmp ogt float %260, 0x38AA95A5C0000000
  br i1 %261, label %262, label %268

262:                                              ; preds = %255
  %263 = tail call float @sqrtf(float noundef %260) #16
  %264 = fdiv float 1.000000e+00, %263
  %265 = fmul float %247, %264
  %266 = fmul float %248, %264
  %267 = fmul float %249, %264
  br label %268

268:                                              ; preds = %255, %262
  %269 = phi float [ %265, %262 ], [ 0.000000e+00, %255 ]
  %270 = phi float [ %266, %262 ], [ 0.000000e+00, %255 ]
  %271 = phi float [ %267, %262 ], [ 0.000000e+00, %255 ]
  %272 = fmul float %257, %269
  %273 = fmul float %257, %270
  %274 = fmul float %257, %271
  store float %272, ptr %4, align 4, !tbaa !59
  %275 = getelementptr inbounds float, ptr %4, i64 1
  store float %273, ptr %275, align 4, !tbaa !59
  %276 = getelementptr inbounds float, ptr %4, i64 2
  store float %274, ptr %276, align 4, !tbaa !59
  %277 = tail call ptr @BM_loop_other_edge_loop(ptr noundef %18, ptr noundef %0) #16
  br label %306

278:                                              ; preds = %241
  %279 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 4
  %280 = load ptr, ptr %279, align 8, !tbaa !183
  %281 = icmp eq ptr %18, %280
  %282 = icmp eq ptr %280, %1
  %283 = or i1 %281, %282
  br i1 %283, label %284, label %11, !llvm.loop !378

284:                                              ; preds = %278
  %285 = sitofp i32 %250 to float
  %286 = fdiv float %246, %285
  %287 = fmul float %248, %248
  %288 = tail call float @llvm.fmuladd.f32(float %247, float %247, float %287)
  %289 = tail call float @llvm.fmuladd.f32(float %249, float %249, float %288)
  %290 = fcmp ogt float %289, 0x38AA95A5C0000000
  br i1 %290, label %291, label %297

291:                                              ; preds = %284
  %292 = tail call float @sqrtf(float noundef %289) #16
  %293 = fdiv float 1.000000e+00, %292
  %294 = fmul float %247, %293
  %295 = fmul float %248, %293
  %296 = fmul float %249, %293
  br label %297

297:                                              ; preds = %284, %291
  %298 = phi float [ %294, %291 ], [ 0.000000e+00, %284 ]
  %299 = phi float [ %295, %291 ], [ 0.000000e+00, %284 ]
  %300 = phi float [ %296, %291 ], [ 0.000000e+00, %284 ]
  %301 = fmul float %286, %298
  %302 = fmul float %286, %299
  %303 = fmul float %286, %300
  store float %301, ptr %4, align 4, !tbaa !59
  %304 = getelementptr inbounds float, ptr %4, i64 1
  store float %302, ptr %304, align 4, !tbaa !59
  %305 = getelementptr inbounds float, ptr %4, i64 2
  store float %303, ptr %305, align 4, !tbaa !59
  br label %306

306:                                              ; preds = %297, %268, %204
  %307 = phi ptr [ %18, %204 ], [ %277, %268 ], [ null, %297 ]
  ret ptr %307
}

declare i32 @BM_vert_edge_count_nonwire(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_bmbvh_new_from_editmesh(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @fill_vn_fl(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare zeroext i8 @BMBVH_EdgeVisible(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_project_float_v3_m4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @dist_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bmesh_edit_begin(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #2

declare ptr @BM_mesh_create(ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_copy_init_customdata(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_ghash_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_copy(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_bmbvh_free(ptr noundef) local_unnamed_addr #2

declare ptr @BM_face_vert_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_loop_calc_face_direction(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BM_edge_calc_length(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @isect_line_plane_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_project_float_v2_m4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @applyVertSlide(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca float, align 4
  %5 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %7 = load ptr, ptr %6, align 8, !tbaa !218
  %8 = getelementptr inbounds %struct.VertSlideData, ptr %7, i64 0, i32 5
  %9 = load i8, ptr %8, align 1, !tbaa !223
  %10 = getelementptr inbounds %struct.VertSlideData, ptr %7, i64 0, i32 4
  %11 = load i8, ptr %10, align 4, !tbaa !220
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !99
  %14 = and i32 %13, 16777216
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %18 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %17) #16
  %19 = icmp eq i8 %18, 0
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %21 = load float, ptr %20, align 4, !tbaa !59
  store float %21, ptr %4, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %4) #16
  br i1 %19, label %22, label %32

22:                                               ; preds = %16
  %23 = load float, ptr %4, align 4, !tbaa !59
  %24 = fcmp olt float %23, 0.000000e+00
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store float 0.000000e+00, ptr %4, align 4, !tbaa !59
  br label %32

26:                                               ; preds = %22
  %27 = fcmp ogt float %23, 1.000000e+00
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  store float 1.000000e+00, ptr %4, align 4, !tbaa !59
  br label %32

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %31 = load float, ptr %30, align 4, !tbaa !59
  store float %31, ptr %4, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %4) #16
  br label %32

32:                                               ; preds = %29, %25, %28, %26, %16
  %33 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %34 = call zeroext i8 @applyNumInput(ptr noundef nonnull %33, ptr noundef nonnull %4) #16
  %35 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %3, ptr noundef nonnull @.str.138, i64 noundef 256) #16
  %36 = call zeroext i8 @hasNumInput(ptr noundef nonnull %33) #16
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %40 = load ptr, ptr %39, align 8, !tbaa !109
  %41 = getelementptr inbounds %struct.Scene, ptr %40, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %33, ptr noundef nonnull %5, ptr noundef nonnull %41) #16
  %42 = getelementptr inbounds i8, ptr %3, i64 %35
  %43 = sub i64 256, %35
  %44 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %42, ptr noundef nonnull %5, i64 noundef %43) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  br label %51

45:                                               ; preds = %32
  %46 = getelementptr inbounds i8, ptr %3, i64 %35
  %47 = sub i64 256, %35
  %48 = load float, ptr %4, align 4, !tbaa !59
  %49 = fpext float %48 to double
  %50 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %46, i64 noundef %47, ptr noundef nonnull @.str.139, double noundef %49) #16
  br label %51

51:                                               ; preds = %45, %38
  %52 = phi i64 [ %44, %38 ], [ %50, %45 ]
  %53 = add i64 %52, %35
  %54 = getelementptr inbounds i8, ptr %3, i64 %53
  %55 = sub i64 256, %53
  %56 = icmp eq i8 %11, 0
  %57 = zext i1 %56 to i8
  %58 = call ptr @WM_bool_as_string(i8 noundef zeroext %57) #16
  %59 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %54, i64 noundef %55, ptr noundef nonnull @.str.140, ptr noundef %58) #16
  %60 = add i64 %59, %53
  br i1 %56, label %61, label %67

61:                                               ; preds = %51
  %62 = getelementptr inbounds i8, ptr %3, i64 %60
  %63 = sub i64 256, %60
  %64 = call ptr @WM_bool_as_string(i8 noundef zeroext %9) #16
  %65 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %62, i64 noundef %63, ptr noundef nonnull @.str.141, ptr noundef %64) #16
  %66 = add i64 %65, %60
  br label %67

67:                                               ; preds = %61, %51
  %68 = phi i64 [ %60, %51 ], [ %66, %61 ]
  %69 = zext i1 %15 to i8
  %70 = getelementptr inbounds i8, ptr %3, i64 %68
  %71 = sub i64 256, %68
  %72 = call ptr @WM_bool_as_string(i8 noundef zeroext %69) #16
  %73 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %70, i64 noundef %71, ptr noundef nonnull @.str.142, ptr noundef %72) #16
  %74 = load float, ptr %4, align 4, !tbaa !59
  %75 = load ptr, ptr %6, align 8, !tbaa !218
  %76 = load ptr, ptr %75, align 8, !tbaa !234
  %77 = getelementptr inbounds %struct.VertSlideData, ptr %75, i64 0, i32 3
  store float %74, ptr %77, align 8, !tbaa !237
  %78 = getelementptr inbounds %struct.VertSlideData, ptr %75, i64 0, i32 4
  %79 = load i8, ptr %78, align 4, !tbaa !220
  %80 = icmp eq i8 %79, 1
  br i1 %80, label %81, label %101

81:                                               ; preds = %67
  %82 = getelementptr inbounds %struct.VertSlideData, ptr %75, i64 0, i32 1
  %83 = load i32, ptr %82, align 8, !tbaa !235
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %217

85:                                               ; preds = %81, %85
  %86 = phi ptr [ %98, %85 ], [ %76, %81 ]
  %87 = phi i32 [ %97, %85 ], [ 0, %81 ]
  %88 = load ptr, ptr %86, align 8, !tbaa !226
  %89 = getelementptr inbounds %struct.BMVert, ptr %88, i64 0, i32 2
  %90 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %86, i64 0, i32 1
  %91 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %86, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !229
  %93 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %86, i64 0, i32 6
  %94 = load i32, ptr %93, align 4, !tbaa !239
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [3 x float], ptr %92, i64 %95
  call void @interp_v3_v3v3(ptr noundef nonnull %89, ptr noundef nonnull %90, ptr noundef %96, float noundef %74) #16
  %97 = add nuw nsw i32 %87, 1
  %98 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %86, i64 1
  %99 = load i32, ptr %82, align 8, !tbaa !235
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %85, label %217, !llvm.loop !379

101:                                              ; preds = %67
  %102 = getelementptr inbounds %struct.VertSlideData, ptr %75, i64 0, i32 6
  %103 = load i32, ptr %102, align 8, !tbaa !222
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %76, i64 %104, i32 1
  %106 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %76, i64 %104, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !229
  %108 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %76, i64 %104, i32 6
  %109 = load i32, ptr %108, align 4, !tbaa !239
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [3 x float], ptr %107, i64 %110
  %112 = load float, ptr %111, align 4, !tbaa !59
  %113 = load float, ptr %105, align 4, !tbaa !59
  %114 = fsub float %112, %113
  %115 = getelementptr inbounds float, ptr %111, i64 1
  %116 = load float, ptr %115, align 4, !tbaa !59
  %117 = getelementptr inbounds float, ptr %105, i64 1
  %118 = load float, ptr %117, align 4, !tbaa !59
  %119 = fsub float %116, %118
  %120 = getelementptr inbounds float, ptr %111, i64 2
  %121 = load float, ptr %120, align 4, !tbaa !59
  %122 = getelementptr inbounds float, ptr %105, i64 2
  %123 = load float, ptr %122, align 4, !tbaa !59
  %124 = fsub float %121, %123
  %125 = fmul float %119, %119
  %126 = call float @llvm.fmuladd.f32(float %114, float %114, float %125)
  %127 = call float @llvm.fmuladd.f32(float %124, float %124, float %126)
  %128 = call float @sqrtf(float noundef %127) #16
  %129 = fmul float %74, %128
  %130 = getelementptr inbounds %struct.VertSlideData, ptr %75, i64 0, i32 1
  %131 = load i32, ptr %130, align 8, !tbaa !235
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %217

133:                                              ; preds = %101
  %134 = getelementptr inbounds %struct.VertSlideData, ptr %75, i64 0, i32 5
  %135 = fneg float %129
  br label %136

136:                                              ; preds = %133, %209
  %137 = phi ptr [ %76, %133 ], [ %214, %209 ]
  %138 = phi i32 [ 0, %133 ], [ %213, %209 ]
  %139 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %137, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !229
  %141 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %137, i64 0, i32 6
  %142 = load i32, ptr %141, align 4, !tbaa !239
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [3 x float], ptr %140, i64 %143
  %145 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %137, i64 0, i32 1
  %146 = load float, ptr %144, align 4, !tbaa !59
  %147 = load float, ptr %145, align 4, !tbaa !59
  %148 = fsub float %146, %147
  %149 = getelementptr inbounds float, ptr %144, i64 1
  %150 = load float, ptr %149, align 4, !tbaa !59
  %151 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %137, i64 0, i32 1, i64 1
  %152 = load float, ptr %151, align 4, !tbaa !59
  %153 = fsub float %150, %152
  %154 = getelementptr inbounds float, ptr %144, i64 2
  %155 = load float, ptr %154, align 4, !tbaa !59
  %156 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %137, i64 0, i32 1, i64 2
  %157 = load float, ptr %156, align 4, !tbaa !59
  %158 = fsub float %155, %157
  %159 = fmul float %153, %153
  %160 = call float @llvm.fmuladd.f32(float %148, float %148, float %159)
  %161 = call float @llvm.fmuladd.f32(float %158, float %158, float %160)
  %162 = fcmp ogt float %161, 0x38AA95A5C0000000
  br i1 %162, label %163, label %169

163:                                              ; preds = %136
  %164 = call float @sqrtf(float noundef %161) #16
  %165 = fdiv float 1.000000e+00, %164
  %166 = fmul float %148, %165
  %167 = fmul float %153, %165
  %168 = fmul float %158, %165
  br label %169

169:                                              ; preds = %163, %136
  %170 = phi float [ %167, %163 ], [ 0.000000e+00, %136 ]
  %171 = phi float [ %166, %163 ], [ 0.000000e+00, %136 ]
  %172 = phi float [ %168, %163 ], [ 0.000000e+00, %136 ]
  %173 = phi float [ %164, %163 ], [ 0.000000e+00, %136 ]
  %174 = fcmp ogt float %173, 0x3E80000000000000
  br i1 %174, label %175, label %202

175:                                              ; preds = %169
  %176 = load i8, ptr %134, align 1, !tbaa !223
  %177 = icmp eq i8 %176, 0
  %178 = load ptr, ptr %137, align 8, !tbaa !226
  %179 = getelementptr inbounds %struct.BMVert, ptr %178, i64 0, i32 2
  br i1 %177, label %194, label %180

180:                                              ; preds = %175
  %181 = load ptr, ptr %139, align 8, !tbaa !229
  %182 = load i32, ptr %141, align 4, !tbaa !239
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [3 x float], ptr %181, i64 %183
  %185 = load float, ptr %184, align 4, !tbaa !59
  %186 = call float @llvm.fmuladd.f32(float %171, float %135, float %185)
  store float %186, ptr %179, align 4, !tbaa !59
  %187 = getelementptr inbounds float, ptr %184, i64 1
  %188 = load float, ptr %187, align 4, !tbaa !59
  %189 = call float @llvm.fmuladd.f32(float %170, float %135, float %188)
  %190 = getelementptr inbounds %struct.BMVert, ptr %178, i64 0, i32 2, i64 1
  store float %189, ptr %190, align 4, !tbaa !59
  %191 = getelementptr inbounds float, ptr %184, i64 2
  %192 = load float, ptr %191, align 4, !tbaa !59
  %193 = call float @llvm.fmuladd.f32(float %172, float %135, float %192)
  br label %209

194:                                              ; preds = %175
  %195 = load float, ptr %145, align 4, !tbaa !59
  %196 = call float @llvm.fmuladd.f32(float %171, float %129, float %195)
  store float %196, ptr %179, align 4, !tbaa !59
  %197 = load float, ptr %151, align 4, !tbaa !59
  %198 = call float @llvm.fmuladd.f32(float %170, float %129, float %197)
  %199 = getelementptr inbounds %struct.BMVert, ptr %178, i64 0, i32 2, i64 1
  store float %198, ptr %199, align 4, !tbaa !59
  %200 = load float, ptr %156, align 4, !tbaa !59
  %201 = call float @llvm.fmuladd.f32(float %172, float %129, float %200)
  br label %209

202:                                              ; preds = %169
  %203 = load ptr, ptr %137, align 8, !tbaa !226
  %204 = getelementptr inbounds %struct.BMVert, ptr %203, i64 0, i32 2
  %205 = load float, ptr %145, align 4, !tbaa !59
  store float %205, ptr %204, align 4, !tbaa !59
  %206 = load float, ptr %151, align 4, !tbaa !59
  %207 = getelementptr inbounds %struct.BMVert, ptr %203, i64 0, i32 2, i64 1
  store float %206, ptr %207, align 4, !tbaa !59
  %208 = load float, ptr %156, align 4, !tbaa !59
  br label %209

209:                                              ; preds = %202, %194, %180
  %210 = phi ptr [ %203, %202 ], [ %178, %194 ], [ %178, %180 ]
  %211 = phi float [ %208, %202 ], [ %201, %194 ], [ %193, %180 ]
  %212 = getelementptr inbounds %struct.BMVert, ptr %210, i64 0, i32 2, i64 2
  store float %211, ptr %212, align 4, !tbaa !59
  %213 = add nuw nsw i32 %138, 1
  %214 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %137, i64 1
  %215 = load i32, ptr %130, align 8, !tbaa !235
  %216 = icmp slt i32 %213, %215
  br i1 %216, label %136, label %217, !llvm.loop !380

217:                                              ; preds = %209, %85, %101, %81
  call void @recalcData(ptr noundef %0) #16
  %218 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %219 = load ptr, ptr %218, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %219, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @handleEventVertSlide(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x i32], align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x i32], align 4
  %11 = load i32, ptr %0, align 8, !tbaa !87
  %12 = icmp eq i32 %11, 29
  br i1 %12, label %13, label %188

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %15 = load ptr, ptr %14, align 8, !tbaa !218
  %16 = icmp eq ptr %15, null
  br i1 %16, label %188, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %19 = load i16, ptr %18, align 8, !tbaa !94
  switch i16 %19, label %188 [
    i16 101, label %20
    i16 102, label %60
    i16 99, label %101
    i16 4, label %144
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %22 = load i16, ptr %21, align 2, !tbaa !92
  %23 = icmp eq i16 %22, 1
  br i1 %23, label %24, label %188

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.VertSlideData, ptr %15, i64 0, i32 4
  %26 = load i8, ptr %25, align 4, !tbaa !220
  %27 = icmp eq i8 %26, 0
  %28 = zext i1 %27 to i8
  store i8 %28, ptr %25, align 4, !tbaa !220
  %29 = getelementptr inbounds %struct.VertSlideData, ptr %15, i64 0, i32 5
  %30 = load i8, ptr %29, align 1, !tbaa !223
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %188, label %32

32:                                               ; preds = %24
  %33 = load ptr, ptr %15, align 8, !tbaa !234
  %34 = getelementptr inbounds %struct.VertSlideData, ptr %15, i64 0, i32 6
  %35 = load i32, ptr %34, align 8, !tbaa !222
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %33, i64 %36, i32 2
  %38 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %33, i64 %36, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !230
  %40 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %33, i64 %36, i32 6
  %41 = load i32, ptr %40, align 4, !tbaa !239
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [2 x float], ptr %39, i64 %42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %44 = load float, ptr %37, align 4, !tbaa !59
  %45 = fptosi float %44 to i32
  store i32 %45, ptr %9, align 4, !tbaa !73
  %46 = getelementptr inbounds i32, ptr %9, i64 1
  %47 = getelementptr inbounds float, ptr %37, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !59
  %49 = fptosi float %48 to i32
  store i32 %49, ptr %46, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  %50 = load float, ptr %43, align 4, !tbaa !59
  %51 = fptosi float %50 to i32
  store i32 %51, ptr %10, align 4, !tbaa !73
  %52 = getelementptr inbounds i32, ptr %10, i64 1
  %53 = getelementptr inbounds float, ptr %43, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !59
  %55 = fptosi float %54 to i32
  store i32 %55, ptr %52, align 4, !tbaa !73
  %56 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  br i1 %27, label %58, label %57

57:                                               ; preds = %32
  call void @setCustomPoints(ptr noundef nonnull %0, ptr noundef nonnull %56, ptr noundef nonnull %9, ptr noundef nonnull %10) #16
  br label %59

58:                                               ; preds = %32
  call void @setCustomPoints(ptr noundef nonnull %0, ptr noundef nonnull %56, ptr noundef nonnull %10, ptr noundef nonnull %9) #16
  br label %59

59:                                               ; preds = %57, %58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  br label %188

60:                                               ; preds = %17
  %61 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %62 = load i16, ptr %61, align 2, !tbaa !92
  %63 = icmp eq i16 %62, 1
  br i1 %63, label %64, label %188

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.VertSlideData, ptr %15, i64 0, i32 5
  %66 = load i8, ptr %65, align 1, !tbaa !223
  %67 = icmp eq i8 %66, 0
  %68 = zext i1 %67 to i8
  store i8 %68, ptr %65, align 1, !tbaa !223
  %69 = load ptr, ptr %15, align 8, !tbaa !234
  %70 = getelementptr inbounds %struct.VertSlideData, ptr %15, i64 0, i32 6
  %71 = load i32, ptr %70, align 8, !tbaa !222
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %69, i64 %72, i32 2
  %74 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %69, i64 %72, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !230
  %76 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %69, i64 %72, i32 6
  %77 = load i32, ptr %76, align 4, !tbaa !239
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [2 x float], ptr %75, i64 %78
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %80 = load float, ptr %73, align 4, !tbaa !59
  %81 = fptosi float %80 to i32
  store i32 %81, ptr %7, align 4, !tbaa !73
  %82 = getelementptr inbounds i32, ptr %7, i64 1
  %83 = getelementptr inbounds float, ptr %73, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !59
  %85 = fptosi float %84 to i32
  store i32 %85, ptr %82, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %86 = load float, ptr %79, align 4, !tbaa !59
  %87 = fptosi float %86 to i32
  store i32 %87, ptr %8, align 4, !tbaa !73
  %88 = getelementptr inbounds i32, ptr %8, i64 1
  %89 = getelementptr inbounds float, ptr %79, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !59
  %91 = fptosi float %90 to i32
  store i32 %91, ptr %88, align 4, !tbaa !73
  br i1 %67, label %92, label %98

92:                                               ; preds = %64
  %93 = getelementptr inbounds %struct.VertSlideData, ptr %15, i64 0, i32 4
  %94 = load i8, ptr %93, align 4, !tbaa !220
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  call void @setCustomPoints(ptr noundef nonnull %0, ptr noundef nonnull %97, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  br label %100

98:                                               ; preds = %92, %64
  %99 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  call void @setCustomPoints(ptr noundef nonnull %0, ptr noundef nonnull %99, ptr noundef nonnull %8, ptr noundef nonnull %7) #16
  br label %100

100:                                              ; preds = %96, %98
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %188

101:                                              ; preds = %17
  %102 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %103 = load i16, ptr %102, align 2, !tbaa !92
  %104 = icmp eq i16 %103, 1
  br i1 %104, label %105, label %188

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %107 = load i32, ptr %106, align 4, !tbaa !99
  %108 = xor i32 %107, 16777216
  store i32 %108, ptr %106, align 4, !tbaa !99
  %109 = load ptr, ptr %15, align 8, !tbaa !234
  %110 = getelementptr inbounds %struct.VertSlideData, ptr %15, i64 0, i32 6
  %111 = load i32, ptr %110, align 8, !tbaa !222
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %109, i64 %112, i32 2
  %114 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %109, i64 %112, i32 4
  %115 = load ptr, ptr %114, align 8, !tbaa !230
  %116 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %109, i64 %112, i32 6
  %117 = load i32, ptr %116, align 4, !tbaa !239
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [2 x float], ptr %115, i64 %118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %120 = load float, ptr %113, align 4, !tbaa !59
  %121 = fptosi float %120 to i32
  store i32 %121, ptr %5, align 4, !tbaa !73
  %122 = getelementptr inbounds i32, ptr %5, i64 1
  %123 = getelementptr inbounds float, ptr %113, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !59
  %125 = fptosi float %124 to i32
  store i32 %125, ptr %122, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %126 = load float, ptr %119, align 4, !tbaa !59
  %127 = fptosi float %126 to i32
  store i32 %127, ptr %6, align 4, !tbaa !73
  %128 = getelementptr inbounds i32, ptr %6, i64 1
  %129 = getelementptr inbounds float, ptr %119, i64 1
  %130 = load float, ptr %129, align 4, !tbaa !59
  %131 = fptosi float %130 to i32
  store i32 %131, ptr %128, align 4, !tbaa !73
  %132 = getelementptr inbounds %struct.VertSlideData, ptr %15, i64 0, i32 5
  %133 = load i8, ptr %132, align 1, !tbaa !223
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %105
  %136 = getelementptr inbounds %struct.VertSlideData, ptr %15, i64 0, i32 4
  %137 = load i8, ptr %136, align 4, !tbaa !220
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  call void @setCustomPoints(ptr noundef nonnull %0, ptr noundef nonnull %140, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  br label %143

141:                                              ; preds = %135, %105
  %142 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  call void @setCustomPoints(ptr noundef nonnull %0, ptr noundef nonnull %142, ptr noundef nonnull %6, ptr noundef nonnull %5) #16
  br label %143

143:                                              ; preds = %139, %141
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %188

144:                                              ; preds = %17
  %145 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %146 = load i32, ptr %145, align 4, !tbaa !99
  %147 = and i32 %146, 16777216
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  tail call fastcc void @calcVertSlideMouseActiveEdges(ptr noundef nonnull %0, ptr noundef nonnull %150)
  br label %151

151:                                              ; preds = %149, %144
  %152 = load ptr, ptr %14, align 8, !tbaa !218
  %153 = load ptr, ptr %152, align 8, !tbaa !234
  %154 = getelementptr inbounds %struct.VertSlideData, ptr %152, i64 0, i32 6
  %155 = load i32, ptr %154, align 8, !tbaa !222
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %153, i64 %156, i32 2
  %158 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %153, i64 %156, i32 4
  %159 = load ptr, ptr %158, align 8, !tbaa !230
  %160 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %153, i64 %156, i32 6
  %161 = load i32, ptr %160, align 4, !tbaa !239
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [2 x float], ptr %159, i64 %162
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %164 = load float, ptr %157, align 4, !tbaa !59
  %165 = fptosi float %164 to i32
  store i32 %165, ptr %3, align 4, !tbaa !73
  %166 = getelementptr inbounds i32, ptr %3, i64 1
  %167 = getelementptr inbounds float, ptr %157, i64 1
  %168 = load float, ptr %167, align 4, !tbaa !59
  %169 = fptosi float %168 to i32
  store i32 %169, ptr %166, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %170 = load float, ptr %163, align 4, !tbaa !59
  %171 = fptosi float %170 to i32
  store i32 %171, ptr %4, align 4, !tbaa !73
  %172 = getelementptr inbounds i32, ptr %4, i64 1
  %173 = getelementptr inbounds float, ptr %163, i64 1
  %174 = load float, ptr %173, align 4, !tbaa !59
  %175 = fptosi float %174 to i32
  store i32 %175, ptr %172, align 4, !tbaa !73
  %176 = getelementptr inbounds %struct.VertSlideData, ptr %152, i64 0, i32 5
  %177 = load i8, ptr %176, align 1, !tbaa !223
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %185, label %179

179:                                              ; preds = %151
  %180 = getelementptr inbounds %struct.VertSlideData, ptr %152, i64 0, i32 4
  %181 = load i8, ptr %180, align 4, !tbaa !220
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  call void @setCustomPoints(ptr noundef nonnull %0, ptr noundef nonnull %184, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  br label %187

185:                                              ; preds = %179, %151
  %186 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  call void @setCustomPoints(ptr noundef nonnull %0, ptr noundef nonnull %186, ptr noundef nonnull %4, ptr noundef nonnull %3) #16
  br label %187

187:                                              ; preds = %183, %185
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %188

188:                                              ; preds = %143, %100, %59, %24, %2, %13, %17, %101, %60, %20, %187
  %189 = phi i32 [ 0, %187 ], [ 0, %20 ], [ 0, %60 ], [ 0, %101 ], [ 0, %17 ], [ 0, %13 ], [ 0, %2 ], [ 1, %24 ], [ 1, %59 ], [ 1, %100 ], [ 1, %143 ]
  ret i32 %189
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @calcVertSlideMouseActiveEdges(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %4 = load ptr, ptr %3, align 8, !tbaa !218
  %5 = load i32, ptr %1, align 4, !tbaa !73
  %6 = sitofp i32 %5 to float
  %7 = getelementptr inbounds i32, ptr %1, i64 1
  %8 = load i32, ptr %7, align 4, !tbaa !73
  %9 = sitofp i32 %8 to float
  %10 = load ptr, ptr %4, align 8, !tbaa !234
  %11 = getelementptr inbounds %struct.VertSlideData, ptr %4, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !222
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %10, i64 %13, i32 2
  %15 = load float, ptr %14, align 4, !tbaa !59
  %16 = fsub float %15, %6
  %17 = getelementptr inbounds float, ptr %14, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !59
  %19 = fsub float %18, %9
  %20 = fmul float %19, %19
  %21 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %20)
  %22 = fcmp ogt float %21, 0x38AA95A5C0000000
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = tail call float @sqrtf(float noundef %21) #16
  %25 = fdiv float 1.000000e+00, %24
  %26 = fmul float %16, %25
  %27 = fmul float %19, %25
  br label %28

28:                                               ; preds = %2, %23
  %29 = phi float [ %26, %23 ], [ 0.000000e+00, %2 ]
  %30 = phi float [ %27, %23 ], [ 0.000000e+00, %2 ]
  %31 = getelementptr inbounds %struct.VertSlideData, ptr %4, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !235
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %93

34:                                               ; preds = %28
  %35 = load ptr, ptr %4, align 8, !tbaa !234
  br label %36

36:                                               ; preds = %34, %88
  %37 = phi ptr [ %90, %88 ], [ %35, %34 ]
  %38 = phi i32 [ %89, %88 ], [ 0, %34 ]
  %39 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %37, i64 0, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !231
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %88

42:                                               ; preds = %36
  %43 = load i32, ptr %39, align 8, !tbaa !231
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %83

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %37, i64 0, i32 2
  %47 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %37, i64 0, i32 4
  %48 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %37, i64 0, i32 2, i64 1
  br label %49

49:                                               ; preds = %45, %70
  %50 = phi i64 [ 0, %45 ], [ %79, %70 ]
  %51 = phi i32 [ -1, %45 ], [ %78, %70 ]
  %52 = phi float [ 0xC7EFFFFFE0000000, %45 ], [ %76, %70 ]
  %53 = load ptr, ptr %47, align 8, !tbaa !230
  %54 = getelementptr inbounds [2 x float], ptr %53, i64 %50
  %55 = load float, ptr %46, align 4, !tbaa !59
  %56 = load float, ptr %54, align 4, !tbaa !59
  %57 = fsub float %55, %56
  %58 = load float, ptr %48, align 4, !tbaa !59
  %59 = getelementptr inbounds float, ptr %54, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !59
  %61 = fsub float %58, %60
  %62 = fmul float %61, %61
  %63 = tail call float @llvm.fmuladd.f32(float %57, float %57, float %62)
  %64 = fcmp ogt float %63, 0x38AA95A5C0000000
  br i1 %64, label %65, label %70

65:                                               ; preds = %49
  %66 = tail call float @sqrtf(float noundef %63) #16
  %67 = fdiv float 1.000000e+00, %66
  %68 = fmul float %57, %67
  %69 = fmul float %61, %67
  br label %70

70:                                               ; preds = %49, %65
  %71 = phi float [ %68, %65 ], [ 0.000000e+00, %49 ]
  %72 = phi float [ %69, %65 ], [ 0.000000e+00, %49 ]
  %73 = fmul float %30, %72
  %74 = tail call float @llvm.fmuladd.f32(float %29, float %71, float %73)
  %75 = fcmp ogt float %74, %52
  %76 = select i1 %75, float %74, float %52
  %77 = trunc i64 %50 to i32
  %78 = select i1 %75, i32 %77, i32 %51
  %79 = add nuw nsw i64 %50, 1
  %80 = load i32, ptr %39, align 8, !tbaa !231
  %81 = sext i32 %80 to i64
  %82 = icmp slt i64 %79, %81
  br i1 %82, label %49, label %83, !llvm.loop !381

83:                                               ; preds = %70, %42
  %84 = phi i32 [ -1, %42 ], [ %78, %70 ]
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %37, i64 0, i32 6
  store i32 %84, ptr %87, align 4, !tbaa !239
  br label %88

88:                                               ; preds = %83, %86, %36
  %89 = add nuw nsw i32 %38, 1
  %90 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %37, i64 1
  %91 = load i32, ptr %31, align 8, !tbaa !235
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %36, label %93, !llvm.loop !382

93:                                               ; preds = %88, %28
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @applyBoneRoll(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca float, align 4
  %5 = alloca [64 x i8], align 16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %9 = load float, ptr %8, align 4, !tbaa !59
  store float %9, ptr %4, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %4) #16
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %11 = call zeroext i8 @applyNumInput(ptr noundef nonnull %10, ptr noundef nonnull %4) #16
  %12 = call zeroext i8 @hasNumInput(ptr noundef nonnull %10) #16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %16 = load ptr, ptr %15, align 8, !tbaa !109
  %17 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef nonnull %17) #16
  %18 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.143, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  br label %24

19:                                               ; preds = %2
  %20 = load float, ptr %4, align 4, !tbaa !59
  %21 = fmul float %20, 0x404CA5DC20000000
  %22 = fpext float %21 to double
  %23 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.144, double noundef %22) #16
  br label %24

24:                                               ; preds = %19, %14
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !241
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %24, %45
  %29 = phi i32 [ %46, %45 ], [ 0, %24 ]
  %30 = phi ptr [ %47, %45 ], [ %7, %24 ]
  %31 = getelementptr inbounds %struct.TransData, ptr %30, i64 0, i32 16
  %32 = load i32, ptr %31, align 8, !tbaa !310
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %28
  %36 = and i32 %32, 2048
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.TransData, ptr %30, i64 0, i32 6
  %40 = load float, ptr %39, align 8, !tbaa !322
  %41 = load float, ptr %4, align 4, !tbaa !59
  %42 = fsub float %40, %41
  %43 = getelementptr inbounds %struct.TransData, ptr %30, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !323
  store float %42, ptr %44, align 4, !tbaa !59
  br label %45

45:                                               ; preds = %35, %38
  %46 = add nuw nsw i32 %29, 1
  %47 = getelementptr inbounds %struct.TransData, ptr %30, i64 1
  %48 = icmp eq i32 %46, %26
  br i1 %48, label %49, label %28, !llvm.loop !383

49:                                               ; preds = %45, %28, %24
  call void @recalcData(ptr noundef %0) #16
  %50 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %51 = load ptr, ptr %50, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %51, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @applyBakeTime(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #16
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16, i32 3
  %9 = load i8, ptr %8, align 8, !tbaa !384
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 21
  %12 = load float, ptr %11, align 8, !tbaa !59
  br i1 %10, label %25, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !73
  %16 = sitofp i32 %15 to float
  %17 = fsub float %12, %16
  %18 = fmul float %17, 0x3FB99999A0000000
  store float %18, ptr %3, align 4, !tbaa !59
  %19 = load i32, ptr %1, align 4, !tbaa !73
  %20 = sitofp i32 %19 to float
  %21 = fneg float %20
  %22 = tail call float @llvm.fmuladd.f32(float %12, float 0x3FB99999A0000000, float %21)
  %23 = fsub float %22, %18
  %24 = tail call float @llvm.fmuladd.f32(float %23, float 0x3FB99999A0000000, float %18)
  br label %30

25:                                               ; preds = %2
  %26 = load i32, ptr %1, align 4, !tbaa !73
  %27 = sitofp i32 %26 to float
  %28 = fsub float %12, %27
  %29 = fmul float %28, 0x3FB99999A0000000
  br label %30

30:                                               ; preds = %25, %13
  %31 = phi float [ %29, %25 ], [ %24, %13 ]
  store float %31, ptr %3, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %3) #16
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %33 = call zeroext i8 @applyNumInput(ptr noundef nonnull %32, ptr noundef nonnull %3) #16
  %34 = call zeroext i8 @hasNumInput(ptr noundef nonnull %32) #16
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  %37 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %38 = load ptr, ptr %37, align 8, !tbaa !109
  %39 = getelementptr inbounds %struct.Scene, ptr %38, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %32, ptr noundef nonnull %5, ptr noundef nonnull %39) #16
  %40 = load float, ptr %3, align 4, !tbaa !59
  %41 = fcmp ult float %40, 0.000000e+00
  %42 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %43 = select i1 %41, ptr @.str.146, ptr @.str.145
  %44 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull %43, ptr noundef nonnull %5, ptr noundef nonnull %42) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  br label %54

45:                                               ; preds = %30
  %46 = load float, ptr %3, align 4, !tbaa !59
  %47 = fcmp ult float %46, 0.000000e+00
  %48 = fpext float %46 to double
  %49 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  br i1 %47, label %52, label %50

50:                                               ; preds = %45
  %51 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.147, double noundef %48, ptr noundef nonnull %49) #16
  br label %54

52:                                               ; preds = %45
  %53 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.148, double noundef %48, ptr noundef nonnull %49) #16
  br label %54

54:                                               ; preds = %50, %52, %36
  %55 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !241
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %101

58:                                               ; preds = %54, %97
  %59 = phi ptr [ %99, %97 ], [ %7, %54 ]
  %60 = phi i32 [ %98, %97 ], [ 0, %54 ]
  %61 = getelementptr inbounds %struct.TransData, ptr %59, i64 0, i32 16
  %62 = load i32, ptr %61, align 8, !tbaa !310
  %63 = and i32 %62, 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %101

65:                                               ; preds = %58
  %66 = and i32 %62, 2048
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %97

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.TransData, ptr %59, i64 0, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !323
  %71 = icmp eq ptr %70, null
  br i1 %71, label %97, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.TransData, ptr %59, i64 0, i32 6
  %74 = load float, ptr %73, align 8, !tbaa !322
  %75 = load float, ptr %3, align 4, !tbaa !59
  %76 = getelementptr inbounds %struct.TransData, ptr %59, i64 0, i32 2
  %77 = load float, ptr %76, align 8, !tbaa !313
  %78 = call float @llvm.fmuladd.f32(float %75, float %77, float %74)
  store float %78, ptr %70, align 4, !tbaa !59
  %79 = getelementptr inbounds %struct.TransData, ptr %59, i64 0, i32 13
  %80 = load ptr, ptr %79, align 8, !tbaa !320
  %81 = getelementptr inbounds %struct.TransDataExtension, ptr %80, i64 0, i32 11
  %82 = load ptr, ptr %81, align 8, !tbaa !324
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %72
  %85 = load float, ptr %82, align 4, !tbaa !59
  %86 = fcmp olt float %78, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store float %85, ptr %70, align 4, !tbaa !59
  br label %88

88:                                               ; preds = %87, %84, %72
  %89 = getelementptr inbounds %struct.TransDataExtension, ptr %80, i64 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !347
  %91 = icmp eq ptr %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  %93 = load float, ptr %70, align 4, !tbaa !59
  %94 = load float, ptr %90, align 4, !tbaa !59
  %95 = fcmp ogt float %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store float %94, ptr %70, align 4, !tbaa !59
  br label %97

97:                                               ; preds = %68, %96, %92, %88, %65
  %98 = add nuw nsw i32 %60, 1
  %99 = getelementptr inbounds %struct.TransData, ptr %59, i64 1
  %100 = icmp eq i32 %98, %56
  br i1 %100, label %101, label %58, !llvm.loop !385

101:                                              ; preds = %97, %58, %54
  call void @recalcData(ptr noundef %0) #16
  %102 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %103 = load ptr, ptr %102, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %103, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @applyMirror(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %7 = load i32, ptr %6, align 4, !tbaa !97
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %11 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  br i1 %9, label %45, label %12

12:                                               ; preds = %2
  store float -1.000000e+00, ptr %10, align 4, !tbaa !59
  store float -1.000000e+00, ptr %11, align 4, !tbaa !59
  store float -1.000000e+00, ptr %3, align 4, !tbaa !59
  call void @size_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %3) #16
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !317
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  call void %14(ptr noundef %0, ptr noundef null, ptr noundef nonnull %4) #16
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %19 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 256, ptr noundef nonnull @.str.149, ptr noundef nonnull %18) #16
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !241
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !268
  br label %26

26:                                               ; preds = %23, %37
  %27 = phi i32 [ %38, %37 ], [ 0, %23 ]
  %28 = phi ptr [ %39, %37 ], [ %25, %23 ]
  %29 = getelementptr inbounds %struct.TransData, ptr %28, i64 0, i32 16
  %30 = load i32, ptr %29, align 8, !tbaa !310
  %31 = and i32 %30, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = and i32 %30, 2048
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call fastcc void @ElementResize(ptr noundef %0, ptr noundef %28, ptr noundef nonnull %4)
  br label %37

37:                                               ; preds = %33, %36
  %38 = add nuw nsw i32 %27, 1
  %39 = getelementptr inbounds %struct.TransData, ptr %28, i64 1
  %40 = load i32, ptr %20, align 8, !tbaa !241
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %26, label %42, !llvm.loop !386

42:                                               ; preds = %37, %26, %17
  call void @recalcData(ptr noundef %0) #16
  %43 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %44 = load ptr, ptr %43, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %44, ptr noundef nonnull %5) #16
  br label %77

45:                                               ; preds = %2
  store float 1.000000e+00, ptr %10, align 4, !tbaa !59
  store float 1.000000e+00, ptr %11, align 4, !tbaa !59
  store float 1.000000e+00, ptr %3, align 4, !tbaa !59
  call void @size_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %3) #16
  %46 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %47 = load i32, ptr %46, align 8, !tbaa !241
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %51 = load ptr, ptr %50, align 8, !tbaa !268
  br label %52

52:                                               ; preds = %49, %63
  %53 = phi i32 [ %64, %63 ], [ 0, %49 ]
  %54 = phi ptr [ %65, %63 ], [ %51, %49 ]
  %55 = getelementptr inbounds %struct.TransData, ptr %54, i64 0, i32 16
  %56 = load i32, ptr %55, align 8, !tbaa !310
  %57 = and i32 %56, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %52
  %60 = and i32 %56, 2048
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  call fastcc void @ElementResize(ptr noundef %0, ptr noundef %54, ptr noundef nonnull %4)
  br label %63

63:                                               ; preds = %59, %62
  %64 = add nuw nsw i32 %53, 1
  %65 = getelementptr inbounds %struct.TransData, ptr %54, i64 1
  %66 = load i32, ptr %46, align 8, !tbaa !241
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %52, label %68, !llvm.loop !387

68:                                               ; preds = %63, %52, %45
  call void @recalcData(ptr noundef %0) #16
  %69 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !99
  %71 = and i32 %70, 32768
  %72 = icmp eq i32 %71, 0
  %73 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %74 = load ptr, ptr %73, align 8, !tbaa !70
  br i1 %72, label %76, label %75

75:                                               ; preds = %68
  call void @ED_area_headerprint(ptr noundef %74, ptr noundef nonnull @.str.150) #16
  br label %77

76:                                               ; preds = %68
  call void @ED_area_headerprint(ptr noundef %74, ptr noundef nonnull @.str.151) #16
  br label %77

77:                                               ; preds = %75, %76, %42
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @applyAlign(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %6 = load float, ptr %5, align 4, !tbaa !59
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !59
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !59
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !241
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %57

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !268
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 57
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 37
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 32
  br label %21

21:                                               ; preds = %14, %52
  %22 = phi i32 [ 0, %14 ], [ %53, %52 ]
  %23 = phi ptr [ %16, %14 ], [ %54, %52 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #16
  %24 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 16
  %25 = load i32, ptr %24, align 8, !tbaa !310
  %26 = and i32 %25, 4
  %27 = icmp eq i32 %26, 0
  %28 = and i32 %25, 2052
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %21
  %31 = load i32, ptr %17, align 4, !tbaa !99
  %32 = and i32 %31, 5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load ptr, ptr %18, align 8, !tbaa !149
  %36 = getelementptr inbounds %struct.ToolSettings, ptr %35, i64 0, i32 8
  %37 = load i16, ptr %36, align 2, !tbaa !388
  %38 = and i16 %37, 4
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %34, %30
  %41 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 7
  %42 = load float, ptr %41, align 4, !tbaa !59
  store float %42, ptr %5, align 4, !tbaa !59
  %43 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 7, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !59
  store float %44, ptr %7, align 4, !tbaa !59
  %45 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 7, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !59
  store float %46, ptr %9, align 4, !tbaa !59
  br label %47

47:                                               ; preds = %40, %34
  %48 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 10
  %49 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %4, ptr noundef nonnull %48) #16
  call void @mul_m3_m3m3(ptr noundef nonnull %3, ptr noundef nonnull %19, ptr noundef nonnull %4) #16
  %50 = load i16, ptr %20, align 2, !tbaa !240
  call fastcc void @ElementRotation(ptr noundef %0, ptr noundef %23, ptr noundef nonnull %3, i16 noundef signext %50)
  br label %51

51:                                               ; preds = %21, %47
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #16
  br i1 %27, label %52, label %57

52:                                               ; preds = %51
  %53 = add nuw nsw i32 %22, 1
  %54 = getelementptr inbounds %struct.TransData, ptr %23, i64 1
  %55 = load i32, ptr %11, align 8, !tbaa !241
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %21, label %57, !llvm.loop !389

57:                                               ; preds = %52, %51, %2
  store float %6, ptr %5, align 4, !tbaa !59
  store float %8, ptr %7, align 4, !tbaa !59
  store float %10, ptr %9, align 4, !tbaa !59
  call void @recalcData(ptr noundef %0) #16
  %58 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %59 = load ptr, ptr %58, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %59, ptr noundef nonnull @.str.152) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @applySeqSlide(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca [192 x i8], align 16
  %4 = alloca [256 x i8], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #16
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !97
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !357
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  call void %13(ptr noundef %0, ptr noundef null, ptr noundef nonnull %14, ptr noundef nonnull %6, ptr noundef nonnull %5) #16
  %15 = load float, ptr %6, align 4, !tbaa !59
  store float %15, ptr %14, align 4, !tbaa !59
  %16 = getelementptr inbounds float, ptr %6, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !59
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47, i64 1
  store float %17, ptr %18, align 4, !tbaa !59
  %19 = getelementptr inbounds float, ptr %6, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !59
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47, i64 2
  store float %20, ptr %21, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  br label %26

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  tail call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %23) #16
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %25 = tail call zeroext i8 @applyNumInput(ptr noundef nonnull %24, ptr noundef nonnull %23) #16
  br label %26

26:                                               ; preds = %22, %11
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %28 = load float, ptr %27, align 4, !tbaa !59
  %29 = fadd float %28, 5.000000e-01
  %30 = call float @llvm.floor.f32(float %29)
  store float %30, ptr %27, align 4, !tbaa !59
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !59
  %33 = fadd float %32, 5.000000e-01
  %34 = call float @llvm.floor.f32(float %33)
  store float %34, ptr %31, align 4, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #16
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %36 = call zeroext i8 @hasNumInput(ptr noundef nonnull %35) #16
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %40 = load ptr, ptr %39, align 8, !tbaa !109
  %41 = getelementptr inbounds %struct.Scene, ptr %40, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %35, ptr noundef nonnull %3, ptr noundef nonnull %41) #16
  br label %48

42:                                               ; preds = %26
  %43 = load float, ptr %27, align 4, !tbaa !59
  %44 = fpext float %43 to double
  %45 = load float, ptr %31, align 4, !tbaa !59
  %46 = fpext float %45 to double
  %47 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 64, ptr noundef nonnull @.str.153, double noundef %44, double noundef %46) #16
  br label %48

48:                                               ; preds = %42, %38
  %49 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %50 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.154, ptr noundef nonnull %3, ptr noundef nonnull %49) #16
  %51 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 59
  %52 = load ptr, ptr %51, align 8, !tbaa !260
  %53 = icmp eq ptr %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %48
  %55 = call ptr @WM_modalkeymap_find_propvalue(ptr noundef nonnull %52, i32 noundef 3) #16
  %56 = icmp eq ptr %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds i8, ptr %4, i64 %50
  %59 = trunc i64 %50 to i32
  %60 = sub i32 256, %59
  %61 = call i32 @WM_keymap_item_to_string(ptr noundef nonnull %55, ptr noundef nonnull %58, i32 noundef %60) #16
  %62 = sext i32 %61 to i64
  %63 = add i64 %50, %62
  br label %64

64:                                               ; preds = %48, %54, %57
  %65 = phi i64 [ %50, %48 ], [ %63, %57 ], [ %50, %54 ]
  %66 = getelementptr inbounds i8, ptr %4, i64 %65
  %67 = sub i64 256, %65
  %68 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !99
  %70 = lshr i32 %69, 24
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, 1
  %73 = call ptr @WM_bool_as_string(i8 noundef zeroext %72) #16
  %74 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %66, i64 noundef %67, ptr noundef nonnull @.str.155, ptr noundef %73) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #16
  %75 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %76 = load i32, ptr %75, align 8, !tbaa !241
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %111

78:                                               ; preds = %64
  %79 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %80 = load ptr, ptr %79, align 8, !tbaa !268
  br label %81

81:                                               ; preds = %78, %106
  %82 = phi i32 [ %107, %106 ], [ 0, %78 ]
  %83 = phi ptr [ %108, %106 ], [ %80, %78 ]
  %84 = getelementptr inbounds %struct.TransData, ptr %83, i64 0, i32 16
  %85 = load i32, ptr %84, align 8, !tbaa !310
  %86 = and i32 %85, 4
  %87 = icmp eq i32 %86, 0
  %88 = and i32 %85, 2052
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %81
  %91 = load float, ptr %27, align 4, !tbaa !59
  %92 = load float, ptr %31, align 4, !tbaa !59
  %93 = getelementptr inbounds %struct.TransData, ptr %83, i64 0, i32 2
  %94 = load float, ptr %93, align 8, !tbaa !313
  %95 = fmul float %91, %94
  %96 = fmul float %92, %94
  %97 = getelementptr inbounds %struct.TransData, ptr %83, i64 0, i32 4
  %98 = load float, ptr %97, align 8, !tbaa !59
  %99 = fadd float %98, %95
  %100 = getelementptr inbounds %struct.TransData, ptr %83, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !312
  store float %99, ptr %101, align 4, !tbaa !59
  %102 = getelementptr inbounds %struct.TransData, ptr %83, i64 0, i32 4, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !59
  %104 = fadd float %96, %103
  %105 = getelementptr inbounds float, ptr %101, i64 1
  store float %104, ptr %105, align 4, !tbaa !59
  br label %106

106:                                              ; preds = %90, %81
  %107 = add nuw nsw i32 %82, 1
  %108 = getelementptr inbounds %struct.TransData, ptr %83, i64 1
  %109 = icmp slt i32 %107, %76
  %110 = select i1 %87, i1 %109, i1 false
  br i1 %110, label %81, label %111, !llvm.loop !390

111:                                              ; preds = %106, %64
  call void @recalcData(ptr noundef %0) #16
  %112 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %113 = load ptr, ptr %112, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %113, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

; Function Attrs: nounwind uwtable
define internal void @applyTimeTranslate(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [192 x i8], align 16
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [256 x i8], align 16
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #16
  %9 = load i32, ptr %1, align 4, !tbaa !73
  %10 = sitofp i32 %9 to float
  %11 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef %8, float noundef %10, float noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %11) #16
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 22
  %13 = load i32, ptr %12, align 8, !tbaa !73
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef %8, float noundef %14, float noundef %14, ptr noundef nonnull %5, ptr noundef nonnull %15) #16
  %16 = load float, ptr %4, align 4, !tbaa !59
  %17 = load float, ptr %5, align 4, !tbaa !59
  %18 = fsub float %16, %17
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  store float %18, ptr %19, align 4, !tbaa !59
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 35
  store float %18, ptr %20, align 4, !tbaa !59
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %22 = call zeroext i8 @applyNumInput(ptr noundef nonnull %21, ptr noundef nonnull %20) #16
  %23 = load float, ptr %20, align 4, !tbaa !59
  store float %23, ptr %19, align 4, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #16
  %24 = call zeroext i8 @hasNumInput(ptr noundef nonnull %21) #16
  %25 = icmp eq i8 %24, 0
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %27 = load ptr, ptr %26, align 8, !tbaa !109
  br i1 %25, label %30, label %28

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.Scene, ptr %27, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %21, ptr noundef nonnull %3, ptr noundef nonnull %29) #16
  br label %107

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %32 = load i8, ptr %31, align 8, !tbaa !34
  switch i8 %32, label %61 [
    i8 12, label %33
    i8 2, label %43
    i8 13, label %52
  ]

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %35 = load ptr, ptr %34, align 8, !tbaa !70
  %36 = getelementptr inbounds %struct.ScrArea, ptr %35, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !71
  %38 = icmp eq ptr %37, null
  br i1 %38, label %61, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.SpaceAction, ptr %37, i64 0, i32 10
  %41 = load i8, ptr %40, align 1, !tbaa !391
  %42 = zext i8 %41 to i16
  br label %61

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %45 = load ptr, ptr %44, align 8, !tbaa !70
  %46 = getelementptr inbounds %struct.ScrArea, ptr %45, i64 0, i32 19
  %47 = load ptr, ptr %46, align 8, !tbaa !71
  %48 = icmp eq ptr %47, null
  br i1 %48, label %61, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.SpaceIpo, ptr %47, i64 0, i32 10
  %51 = load i16, ptr %50, align 2, !tbaa !392
  br label %61

52:                                               ; preds = %30
  %53 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %54 = load ptr, ptr %53, align 8, !tbaa !70
  %55 = getelementptr inbounds %struct.ScrArea, ptr %54, i64 0, i32 19
  %56 = load ptr, ptr %55, align 8, !tbaa !71
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.SpaceNla, ptr %56, i64 0, i32 6
  %60 = load i16, ptr %59, align 8, !tbaa !394
  br label %61

61:                                               ; preds = %30, %33, %39, %43, %49, %52, %58
  %62 = phi i16 [ %42, %39 ], [ 0, %33 ], [ %51, %49 ], [ 0, %43 ], [ %60, %58 ], [ 0, %52 ], [ 0, %30 ]
  %63 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !96
  %65 = and i32 %64, 8
  %66 = icmp eq i32 %65, 0
  %67 = icmp eq i16 %62, 0
  %68 = select i1 %67, i16 2, i16 0
  %69 = select i1 %66, i16 %62, i16 %68
  %70 = getelementptr inbounds %struct.Scene, ptr %27, i64 0, i32 22, i32 55
  %71 = load i16, ptr %70, align 4, !tbaa !281
  %72 = sitofp i16 %71 to double
  %73 = getelementptr inbounds %struct.Scene, ptr %27, i64 0, i32 22, i32 65
  %74 = load float, ptr %73, align 4, !tbaa !282
  %75 = fpext float %74 to double
  %76 = fdiv double %72, %75
  %77 = load float, ptr %19, align 4, !tbaa !59
  switch i16 %69, label %91 [
    i16 1, label %78
    i16 5, label %81
    i16 4, label %87
  ]

78:                                               ; preds = %61
  %79 = fadd float %77, 5.000000e-01
  %80 = call float @llvm.floor.f32(float %79)
  br label %91

81:                                               ; preds = %61
  %82 = fpext float %77 to double
  %83 = fdiv double %82, %76
  %84 = fadd double %83, 5.000000e-01
  %85 = fptrunc double %84 to float
  %86 = call float @llvm.floor.f32(float %85)
  br label %91

87:                                               ; preds = %61
  %88 = fpext float %77 to double
  %89 = fdiv double %88, %76
  %90 = fptrunc double %89 to float
  br label %91

91:                                               ; preds = %87, %81, %78, %61
  %92 = phi float [ %80, %78 ], [ %86, %81 ], [ %90, %87 ], [ %77, %61 ]
  switch i16 %69, label %104 [
    i16 2, label %93
    i16 4, label %97
    i16 5, label %101
  ]

93:                                               ; preds = %91
  %94 = fptosi float %92 to i32
  %95 = fpext float %92 to double
  %96 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 64, ptr noundef nonnull @.str.156, i32 noundef %94, double noundef %95) #16
  br label %107

97:                                               ; preds = %91
  %98 = fptosi float %92 to i32
  %99 = fpext float %92 to double
  %100 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 64, ptr noundef nonnull @.str.157, i32 noundef %98, double noundef %99) #16
  br label %107

101:                                              ; preds = %91
  %102 = fpext float %92 to double
  %103 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 64, ptr noundef nonnull @.str.158, double noundef %102) #16
  br label %107

104:                                              ; preds = %91
  %105 = fpext float %92 to double
  %106 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 64, ptr noundef nonnull @.str.83, double noundef %105) #16
  br label %107

107:                                              ; preds = %28, %93, %97, %101, %104
  %108 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 256, ptr noundef nonnull @.str.159, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #16
  %109 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %110 = load ptr, ptr %109, align 8, !tbaa !268
  %111 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 12
  %112 = load ptr, ptr %111, align 8, !tbaa !396
  %113 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %114 = load ptr, ptr %113, align 8, !tbaa !109
  %115 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %116 = load i8, ptr %115, align 8, !tbaa !34
  switch i8 %116, label %145 [
    i8 12, label %117
    i8 2, label %127
    i8 13, label %136
  ]

117:                                              ; preds = %107
  %118 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %119 = load ptr, ptr %118, align 8, !tbaa !70
  %120 = getelementptr inbounds %struct.ScrArea, ptr %119, i64 0, i32 19
  %121 = load ptr, ptr %120, align 8, !tbaa !71
  %122 = icmp eq ptr %121, null
  br i1 %122, label %145, label %123

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.SpaceAction, ptr %121, i64 0, i32 10
  %125 = load i8, ptr %124, align 1, !tbaa !391
  %126 = zext i8 %125 to i16
  br label %145

127:                                              ; preds = %107
  %128 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %129 = load ptr, ptr %128, align 8, !tbaa !70
  %130 = getelementptr inbounds %struct.ScrArea, ptr %129, i64 0, i32 19
  %131 = load ptr, ptr %130, align 8, !tbaa !71
  %132 = icmp eq ptr %131, null
  br i1 %132, label %145, label %133

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.SpaceIpo, ptr %131, i64 0, i32 10
  %135 = load i16, ptr %134, align 2, !tbaa !392
  br label %145

136:                                              ; preds = %107
  %137 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %138 = load ptr, ptr %137, align 8, !tbaa !70
  %139 = getelementptr inbounds %struct.ScrArea, ptr %138, i64 0, i32 19
  %140 = load ptr, ptr %139, align 8, !tbaa !71
  %141 = icmp eq ptr %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.SpaceNla, ptr %140, i64 0, i32 6
  %144 = load i16, ptr %143, align 8, !tbaa !394
  br label %145

145:                                              ; preds = %107, %117, %123, %127, %133, %136, %142
  %146 = phi i16 [ %126, %123 ], [ 0, %117 ], [ %135, %133 ], [ 0, %127 ], [ %144, %142 ], [ 0, %136 ], [ 0, %107 ]
  %147 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %148 = load i32, ptr %147, align 8, !tbaa !96
  %149 = and i32 %148, 8
  %150 = icmp eq i32 %149, 0
  %151 = icmp eq i16 %146, 0
  %152 = select i1 %151, i16 2, i16 0
  %153 = select i1 %150, i16 %146, i16 %152
  %154 = getelementptr inbounds %struct.Scene, ptr %114, i64 0, i32 22, i32 55
  %155 = load i16, ptr %154, align 4, !tbaa !281
  %156 = sitofp i16 %155 to double
  %157 = getelementptr inbounds %struct.Scene, ptr %114, i64 0, i32 22, i32 65
  %158 = load float, ptr %157, align 4, !tbaa !282
  %159 = fpext float %158 to double
  %160 = fdiv double %156, %159
  %161 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %162 = load i32, ptr %161, align 8, !tbaa !241
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %222

164:                                              ; preds = %145, %213
  %165 = phi ptr [ %218, %213 ], [ %110, %145 ]
  %166 = phi ptr [ %219, %213 ], [ %112, %145 ]
  %167 = phi i32 [ %217, %213 ], [ 0, %145 ]
  %168 = load i8, ptr %115, align 8, !tbaa !34
  %169 = icmp eq i8 %168, 13
  br i1 %169, label %173, label %170

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.TransData, ptr %165, i64 0, i32 15
  %172 = load ptr, ptr %171, align 8, !tbaa !397
  br label %173

173:                                              ; preds = %170, %164
  %174 = phi ptr [ %172, %170 ], [ null, %164 ]
  %175 = icmp eq ptr %174, null
  %176 = icmp eq i8 %168, 8
  %177 = or i1 %176, %175
  %178 = load float, ptr %19, align 4, !tbaa !59
  br i1 %177, label %197, label %179

179:                                              ; preds = %173
  switch i16 %153, label %190 [
    i16 5, label %180
    i16 1, label %187
  ]

180:                                              ; preds = %179
  %181 = fpext float %178 to double
  %182 = fdiv double %181, %160
  %183 = fadd double %182, 5.000000e-01
  %184 = call double @llvm.floor.f64(double %183)
  %185 = fmul double %160, %184
  %186 = fptrunc double %185 to float
  br label %190

187:                                              ; preds = %179
  %188 = fadd float %178, 5.000000e-01
  %189 = call float @llvm.floor.f32(float %188)
  br label %190

190:                                              ; preds = %187, %180, %179
  %191 = phi float [ %186, %180 ], [ %189, %187 ], [ %178, %179 ]
  %192 = getelementptr inbounds %struct.TransData, ptr %165, i64 0, i32 6
  %193 = load float, ptr %192, align 8, !tbaa !322
  %194 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %174, float noundef %193, i16 noundef signext 2) #16
  %195 = fadd float %191, %194
  %196 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %174, float noundef %195, i16 noundef signext 1) #16
  br label %213

197:                                              ; preds = %173
  switch i16 %153, label %208 [
    i16 5, label %198
    i16 1, label %205
  ]

198:                                              ; preds = %197
  %199 = fpext float %178 to double
  %200 = fdiv double %199, %160
  %201 = fadd double %200, 5.000000e-01
  %202 = call double @llvm.floor.f64(double %201)
  %203 = fmul double %160, %202
  %204 = fptrunc double %203 to float
  br label %208

205:                                              ; preds = %197
  %206 = fadd float %178, 5.000000e-01
  %207 = call float @llvm.floor.f32(float %206)
  br label %208

208:                                              ; preds = %205, %198, %197
  %209 = phi float [ %204, %198 ], [ %207, %205 ], [ %178, %197 ]
  %210 = getelementptr inbounds %struct.TransData, ptr %165, i64 0, i32 6
  %211 = load float, ptr %210, align 8, !tbaa !322
  %212 = fadd float %209, %211
  br label %213

213:                                              ; preds = %208, %190
  %214 = phi float [ %212, %208 ], [ %196, %190 ]
  %215 = getelementptr inbounds %struct.TransData, ptr %165, i64 0, i32 5
  %216 = load ptr, ptr %215, align 8, !tbaa !323
  store float %214, ptr %216, align 4, !tbaa !59
  call fastcc void @doAnimEdit_SnapFrame(ptr noundef %0, ptr noundef %165, ptr noundef %166, ptr noundef %174, i16 noundef signext %153)
  %217 = add nuw nsw i32 %167, 1
  %218 = getelementptr inbounds %struct.TransData, ptr %165, i64 1
  %219 = getelementptr inbounds %struct.TransData2D, ptr %166, i64 1
  %220 = load i32, ptr %161, align 8, !tbaa !241
  %221 = icmp slt i32 %217, %220
  br i1 %221, label %164, label %222, !llvm.loop !398

222:                                              ; preds = %213, %145
  call void @recalcData(ptr noundef %0) #16
  %223 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %224 = load ptr, ptr %223, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %224, ptr noundef nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void
}

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #5

declare float @BKE_nla_tweakedit_remap(ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @doAnimEdit_SnapFrame(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) unnamed_addr #0 {
  switch i16 %4, label %57 [
    i16 4, label %6
    i16 2, label %6
    i16 3, label %36
  ]

6:                                                ; preds = %5, %5
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 55
  %10 = load i16, ptr %9, align 4, !tbaa !281
  %11 = sitofp i16 %10 to double
  %12 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 65
  %13 = load float, ptr %12, align 4, !tbaa !282
  %14 = fpext float %13 to double
  %15 = fdiv double %11, %14
  %16 = icmp eq ptr %3, null
  %17 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !323
  %19 = load float, ptr %18, align 4, !tbaa !59
  br i1 %16, label %22, label %20

20:                                               ; preds = %6
  %21 = tail call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %3, float noundef %19, i16 noundef signext 2) #16
  br label %22

22:                                               ; preds = %6, %20
  %23 = phi float [ %21, %20 ], [ %19, %6 ]
  switch i16 %4, label %34 [
    i16 2, label %24
    i16 4, label %27
  ]

24:                                               ; preds = %22
  %25 = fadd float %23, 5.000000e-01
  %26 = tail call float @llvm.floor.f32(float %25)
  br label %34

27:                                               ; preds = %22
  %28 = fpext float %23 to double
  %29 = fdiv double %28, %15
  %30 = fadd double %29, 5.000000e-01
  %31 = tail call double @llvm.floor.f64(double %30)
  %32 = fmul double %15, %31
  %33 = fptrunc double %32 to float
  br label %34

34:                                               ; preds = %22, %27, %24
  %35 = phi float [ %26, %24 ], [ %33, %27 ], [ %23, %22 ]
  br i1 %16, label %53, label %50

36:                                               ; preds = %5
  %37 = icmp eq ptr %3, null
  %38 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !323
  %40 = load float, ptr %39, align 4, !tbaa !59
  br i1 %37, label %43, label %41

41:                                               ; preds = %36
  %42 = tail call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %3, float noundef %40, i16 noundef signext 2) #16
  br label %43

43:                                               ; preds = %36, %41
  %44 = phi float [ %42, %41 ], [ %40, %36 ]
  %45 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %46 = load ptr, ptr %45, align 8, !tbaa !109
  %47 = getelementptr inbounds %struct.Scene, ptr %46, i64 0, i32 24
  %48 = tail call i32 @ED_markers_find_nearest_marker_time(ptr noundef nonnull %47, float noundef %44) #16
  %49 = sitofp i32 %48 to float
  br i1 %37, label %53, label %50

50:                                               ; preds = %43, %34
  %51 = phi float [ %35, %34 ], [ %49, %43 ]
  %52 = tail call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %3, float noundef %51, i16 noundef signext 1) #16
  br label %53

53:                                               ; preds = %50, %43, %34
  %54 = phi float [ %35, %34 ], [ %49, %43 ], [ %52, %50 ]
  %55 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 5
  %56 = load ptr, ptr %55, align 8, !tbaa !323
  store float %54, ptr %56, align 4, !tbaa !59
  br label %57

57:                                               ; preds = %53, %5
  %58 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 16
  %59 = load i32, ptr %58, align 8, !tbaa !310
  %60 = and i32 %59, 131072
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.TransData2D, ptr %2, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !399
  %65 = icmp eq ptr %64, null
  br i1 %65, label %76, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.TransData2D, ptr %2, i64 0, i32 4
  %68 = load float, ptr %67, align 8, !tbaa !59
  %69 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !323
  %71 = load float, ptr %70, align 4, !tbaa !59
  %72 = fadd float %68, %71
  %73 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 6
  %74 = load float, ptr %73, align 8, !tbaa !322
  %75 = fsub float %72, %74
  store float %75, ptr %64, align 4, !tbaa !59
  br label %76

76:                                               ; preds = %66, %62, %57
  %77 = and i32 %59, 262144
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.TransData2D, ptr %2, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !401
  %82 = icmp eq ptr %81, null
  br i1 %82, label %93, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.TransData2D, ptr %2, i64 0, i32 5
  %85 = load float, ptr %84, align 8, !tbaa !59
  %86 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 5
  %87 = load ptr, ptr %86, align 8, !tbaa !323
  %88 = load float, ptr %87, align 4, !tbaa !59
  %89 = fadd float %85, %88
  %90 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 6
  %91 = load float, ptr %90, align 8, !tbaa !322
  %92 = fsub float %89, %91
  store float %92, ptr %81, align 4, !tbaa !59
  br label %93

93:                                               ; preds = %83, %79, %76
  ret void
}

declare i32 @ED_markers_find_nearest_marker_time(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @applyTimeSlide(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [192 x i8], align 16
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [256 x i8], align 16
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %10 = load ptr, ptr %9, align 8, !tbaa !218
  %11 = load float, ptr %10, align 4, !tbaa !59
  %12 = getelementptr inbounds float, ptr %10, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #16
  %14 = load i32, ptr %1, align 4, !tbaa !73
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds i32, ptr %1, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !73
  %18 = sitofp i32 %17 to float
  %19 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef %8, float noundef %15, float noundef %18, ptr noundef nonnull %4, ptr noundef nonnull %19) #16
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 22
  %21 = load i32, ptr %20, align 8, !tbaa !73
  %22 = sitofp i32 %21 to float
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 22, i64 1
  %24 = load i32, ptr %23, align 4, !tbaa !73
  %25 = sitofp i32 %24 to float
  %26 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef %8, float noundef %22, float noundef %25, ptr noundef nonnull %5, ptr noundef nonnull %26) #16
  %27 = load float, ptr %4, align 4, !tbaa !59
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  store float %27, ptr %28, align 4, !tbaa !59
  %29 = load float, ptr %5, align 4, !tbaa !59
  %30 = fsub float %27, %29
  %31 = fmul float %30, 2.000000e+00
  %32 = fsub float %13, %11
  %33 = fdiv float %31, %32
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 35
  store float %33, ptr %34, align 4, !tbaa !59
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %36 = call zeroext i8 @applyNumInput(ptr noundef nonnull %35, ptr noundef nonnull %34) #16
  %37 = load float, ptr %34, align 4, !tbaa !59
  %38 = fmul float %32, %37
  %39 = fmul float %38, 5.000000e-01
  %40 = load float, ptr %5, align 4, !tbaa !59
  %41 = fadd float %40, %39
  store float %41, ptr %28, align 4, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #16
  %42 = call zeroext i8 @hasNumInput(ptr noundef nonnull %35) #16
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %2
  %45 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %46 = load ptr, ptr %45, align 8, !tbaa !109
  %47 = getelementptr inbounds %struct.Scene, ptr %46, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %35, ptr noundef nonnull %3, ptr noundef nonnull %47) #16
  br label %66

48:                                               ; preds = %2
  %49 = load ptr, ptr %9, align 8, !tbaa !218
  %50 = load float, ptr %49, align 4, !tbaa !59
  %51 = getelementptr inbounds float, ptr %49, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !59
  %53 = load float, ptr %28, align 4, !tbaa !59
  %54 = fsub float %53, %40
  %55 = fmul float %54, 2.000000e+00
  %56 = fsub float %52, %50
  %57 = fdiv float %55, %56
  %58 = fcmp olt float %57, -1.000000e+00
  br i1 %58, label %62, label %59

59:                                               ; preds = %48
  %60 = fcmp ogt float %57, 1.000000e+00
  br i1 %60, label %61, label %62

61:                                               ; preds = %59
  br label %62

62:                                               ; preds = %61, %59, %48
  %63 = phi float [ 1.000000e+00, %61 ], [ %57, %59 ], [ -1.000000e+00, %48 ]
  %64 = fpext float %63 to double
  %65 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 64, ptr noundef nonnull @.str.83, double noundef %64) #16
  br label %66

66:                                               ; preds = %44, %62
  %67 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 256, ptr noundef nonnull @.str.160, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #16
  %68 = load float, ptr %5, align 4, !tbaa !59
  %69 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %70 = load ptr, ptr %69, align 8, !tbaa !268
  %71 = load ptr, ptr %9, align 8, !tbaa !218
  %72 = load float, ptr %71, align 4, !tbaa !59
  %73 = getelementptr inbounds float, ptr %71, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !59
  %75 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %76 = load i8, ptr %75, align 8, !tbaa !34
  %77 = icmp eq i8 %76, 12
  br i1 %77, label %78, label %85

78:                                               ; preds = %66
  %79 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %80 = load ptr, ptr %79, align 8, !tbaa !70
  %81 = getelementptr inbounds %struct.ScrArea, ptr %80, i64 0, i32 19
  %82 = load ptr, ptr %81, align 8, !tbaa !71
  %83 = load float, ptr %28, align 4, !tbaa !59
  %84 = getelementptr inbounds %struct.SpaceAction, ptr %82, i64 0, i32 12
  store float %83, ptr %84, align 4, !tbaa !402
  br label %85

85:                                               ; preds = %78, %66
  %86 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %87 = load i32, ptr %86, align 8, !tbaa !241
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %139

89:                                               ; preds = %85
  %90 = fcmp olt float %72, %68
  %91 = fcmp ogt float %74, %68
  %92 = select i1 %90, i1 %91, i1 false
  %93 = fsub float %74, %68
  %94 = fsub float %68, %72
  br label %95

95:                                               ; preds = %89, %134
  %96 = phi ptr [ %70, %89 ], [ %136, %134 ]
  %97 = phi i32 [ 0, %89 ], [ %135, %134 ]
  %98 = load i8, ptr %75, align 8, !tbaa !34
  %99 = icmp eq i8 %98, 13
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.TransData, ptr %96, i64 0, i32 15
  %102 = load ptr, ptr %101, align 8, !tbaa !397
  br label %103

103:                                              ; preds = %100, %95
  %104 = phi ptr [ %102, %100 ], [ null, %95 ]
  %105 = load float, ptr %28, align 4, !tbaa !59
  %106 = icmp eq ptr %104, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %104, float noundef %105, i16 noundef signext 1) #16
  br label %109

109:                                              ; preds = %107, %103
  %110 = phi float [ %108, %107 ], [ %105, %103 ]
  br i1 %92, label %111, label %134

111:                                              ; preds = %109
  %112 = fcmp olt float %110, %72
  %113 = fcmp ogt float %110, %74
  %114 = select i1 %113, float %74, float %110
  %115 = select i1 %112, float %72, float %114
  %116 = getelementptr inbounds %struct.TransData, ptr %96, i64 0, i32 6
  %117 = load float, ptr %116, align 8, !tbaa !322
  %118 = fcmp olt float %117, %68
  br i1 %118, label %119, label %125

119:                                              ; preds = %111
  %120 = fsub float %68, %117
  %121 = fsub float %115, %72
  %122 = fneg float %120
  %123 = fdiv float %122, %94
  %124 = call float @llvm.fmuladd.f32(float %123, float %121, float %115)
  br label %130

125:                                              ; preds = %111
  %126 = fsub float %117, %68
  %127 = fdiv float %126, %93
  %128 = fsub float %74, %115
  %129 = call float @llvm.fmuladd.f32(float %127, float %128, float %115)
  br label %130

130:                                              ; preds = %119, %125
  %131 = phi float [ %129, %125 ], [ %124, %119 ]
  %132 = getelementptr inbounds %struct.TransData, ptr %96, i64 0, i32 5
  %133 = load ptr, ptr %132, align 8, !tbaa !323
  store float %131, ptr %133, align 4, !tbaa !59
  br label %134

134:                                              ; preds = %130, %109
  %135 = add nuw nsw i32 %97, 1
  %136 = getelementptr inbounds %struct.TransData, ptr %96, i64 1
  %137 = load i32, ptr %86, align 8, !tbaa !241
  %138 = icmp slt i32 %135, %137
  br i1 %138, label %95, label %139, !llvm.loop !403

139:                                              ; preds = %134, %85
  call void @recalcData(ptr noundef %0) #16
  %140 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %141 = load ptr, ptr %140, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %141, ptr noundef nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @applyTimeScale(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca [192 x i8], align 16
  %4 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %6 = load float, ptr %5, align 4, !tbaa !59
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 35
  store float %6, ptr %7, align 4, !tbaa !59
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %9 = tail call zeroext i8 @applyNumInput(ptr noundef nonnull %8, ptr noundef nonnull %7) #16
  %10 = load float, ptr %7, align 4, !tbaa !59
  store float %10, ptr %5, align 4, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #16
  %11 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %8) #16
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %15 = load ptr, ptr %14, align 8, !tbaa !109
  %16 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef nonnull %16) #16
  br label %21

17:                                               ; preds = %2
  %18 = load float, ptr %5, align 4, !tbaa !59
  %19 = fpext float %18 to double
  %20 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 64, ptr noundef nonnull @.str.83, double noundef %19) #16
  br label %21

21:                                               ; preds = %13, %17
  %22 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.161, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #16
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %24 = load ptr, ptr %23, align 8, !tbaa !109
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !268
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !396
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %30 = load i8, ptr %29, align 8, !tbaa !34
  switch i8 %30, label %59 [
    i8 12, label %31
    i8 2, label %41
    i8 13, label %50
  ]

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %33 = load ptr, ptr %32, align 8, !tbaa !70
  %34 = getelementptr inbounds %struct.ScrArea, ptr %33, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !71
  %36 = icmp eq ptr %35, null
  br i1 %36, label %59, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.SpaceAction, ptr %35, i64 0, i32 10
  %39 = load i8, ptr %38, align 1, !tbaa !391
  %40 = zext i8 %39 to i16
  br label %59

41:                                               ; preds = %21
  %42 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %43 = load ptr, ptr %42, align 8, !tbaa !70
  %44 = getelementptr inbounds %struct.ScrArea, ptr %43, i64 0, i32 19
  %45 = load ptr, ptr %44, align 8, !tbaa !71
  %46 = icmp eq ptr %45, null
  br i1 %46, label %59, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.SpaceIpo, ptr %45, i64 0, i32 10
  %49 = load i16, ptr %48, align 2, !tbaa !392
  br label %59

50:                                               ; preds = %21
  %51 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %52 = load ptr, ptr %51, align 8, !tbaa !70
  %53 = getelementptr inbounds %struct.ScrArea, ptr %52, i64 0, i32 19
  %54 = load ptr, ptr %53, align 8, !tbaa !71
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.SpaceNla, ptr %54, i64 0, i32 6
  %58 = load i16, ptr %57, align 8, !tbaa !394
  br label %59

59:                                               ; preds = %21, %31, %37, %41, %47, %50, %56
  %60 = phi i16 [ %40, %37 ], [ 0, %31 ], [ %49, %47 ], [ 0, %41 ], [ %58, %56 ], [ 0, %50 ], [ 0, %21 ]
  %61 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !96
  %63 = and i32 %62, 8
  %64 = icmp eq i32 %63, 0
  %65 = icmp eq i16 %60, 0
  %66 = select i1 %65, i16 2, i16 0
  %67 = select i1 %64, i16 %60, i16 %66
  %68 = getelementptr inbounds %struct.Scene, ptr %24, i64 0, i32 22, i32 55
  %69 = load i16, ptr %68, align 4, !tbaa !281
  %70 = sitofp i16 %69 to double
  %71 = getelementptr inbounds %struct.Scene, ptr %24, i64 0, i32 22, i32 65
  %72 = load float, ptr %71, align 4, !tbaa !282
  %73 = fpext float %72 to double
  %74 = fdiv double %70, %73
  %75 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %76 = load i32, ptr %75, align 8, !tbaa !241
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %122

78:                                               ; preds = %59
  %79 = getelementptr inbounds %struct.Scene, ptr %24, i64 0, i32 22, i32 5
  br label %80

80:                                               ; preds = %78, %109
  %81 = phi ptr [ %26, %78 ], [ %118, %109 ]
  %82 = phi ptr [ %28, %78 ], [ %119, %109 ]
  %83 = phi i32 [ 0, %78 ], [ %117, %109 ]
  %84 = load i8, ptr %29, align 8, !tbaa !34
  %85 = icmp eq i8 %84, 13
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.TransData, ptr %81, i64 0, i32 15
  %88 = load ptr, ptr %87, align 8, !tbaa !397
  br label %89

89:                                               ; preds = %86, %80
  %90 = phi ptr [ %88, %86 ], [ null, %80 ]
  %91 = load i32, ptr %79, align 8, !tbaa !280
  %92 = sitofp i32 %91 to float
  %93 = load float, ptr %5, align 4, !tbaa !59
  switch i16 %67, label %104 [
    i16 5, label %94
    i16 1, label %101
  ]

94:                                               ; preds = %89
  %95 = fpext float %93 to double
  %96 = fdiv double %95, %74
  %97 = fadd double %96, 5.000000e-01
  %98 = call double @llvm.floor.f64(double %97)
  %99 = fmul double %74, %98
  %100 = fptrunc double %99 to float
  br label %104

101:                                              ; preds = %89
  %102 = fadd float %93, 5.000000e-01
  %103 = call float @llvm.floor.f32(float %102)
  br label %104

104:                                              ; preds = %101, %94, %89
  %105 = phi float [ %100, %94 ], [ %103, %101 ], [ %93, %89 ]
  %106 = icmp eq ptr %90, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %104
  %108 = call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %90, float noundef %92, i16 noundef signext 1) #16
  br label %109

109:                                              ; preds = %107, %104
  %110 = phi float [ %108, %107 ], [ %92, %104 ]
  %111 = getelementptr inbounds %struct.TransData, ptr %81, i64 0, i32 6
  %112 = load float, ptr %111, align 8, !tbaa !322
  %113 = fsub float %112, %110
  %114 = call float @llvm.fmuladd.f32(float %113, float %105, float %110)
  %115 = getelementptr inbounds %struct.TransData, ptr %81, i64 0, i32 5
  %116 = load ptr, ptr %115, align 8, !tbaa !323
  store float %114, ptr %116, align 4, !tbaa !59
  call fastcc void @doAnimEdit_SnapFrame(ptr noundef %0, ptr noundef %81, ptr noundef %82, ptr noundef %90, i16 noundef signext %67)
  %117 = add nuw nsw i32 %83, 1
  %118 = getelementptr inbounds %struct.TransData, ptr %81, i64 1
  %119 = getelementptr inbounds %struct.TransData2D, ptr %82, i64 1
  %120 = load i32, ptr %75, align 8, !tbaa !241
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %80, label %122, !llvm.loop !404

122:                                              ; preds = %109, %59
  call void @recalcData(ptr noundef %0) #16
  %123 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %124 = load ptr, ptr %123, align 8, !tbaa !70
  call void @ED_area_headerprint(ptr noundef %124, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nounwind }

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
!34 = !{!35, !37, i64 976}
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
!48 = !{!35, !41, i64 1248}
!49 = !{!50, !39, i64 214}
!50 = !{!"ARegion", !41, i64 0, !41, i64 8, !51, i64 16, !53, i64 176, !53, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !40, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !41, i64 240, !44, i64 248, !44, i64 264, !44, i64 280, !44, i64 296, !44, i64 312, !44, i64 328, !44, i64 344, !41, i64 360, !41, i64 368, !41, i64 376}
!51 = !{!"View2D", !52, i64 0, !52, i64 16, !53, i64 32, !53, i64 48, !53, i64 64, !37, i64 80, !37, i64 88, !40, i64 96, !40, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !41, i64 128, !36, i64 136, !36, i64 140, !41, i64 144, !41, i64 152}
!52 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!53 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!54 = !{!50, !41, i64 376}
!55 = !{!56, !37, i64 809}
!56 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !41, i64 640, !41, i64 648, !41, i64 656, !41, i64 664, !41, i64 672, !41, i64 680, !41, i64 688, !37, i64 696, !37, i64 760, !40, i64 776, !40, i64 780, !40, i64 784, !40, i64 788, !37, i64 792, !40, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !39, i64 824, !39, i64 826, !37, i64 828, !39, i64 844, !39, i64 846, !40, i64 848, !37, i64 852, !40, i64 864, !37, i64 868}
!57 = !{!35, !39, i64 972}
!58 = !{!35, !36, i64 16}
!59 = !{!40, !40, i64 0}
!60 = !{!35, !40, i64 1304}
!61 = !{!35, !41, i64 1224}
!62 = !{!53, !36, i64 4}
!63 = !{!53, !36, i64 0}
!64 = !{!53, !36, i64 12}
!65 = !{!53, !36, i64 8}
!66 = !{!52, !40, i64 4}
!67 = !{!52, !40, i64 0}
!68 = !{!52, !40, i64 12}
!69 = !{!52, !40, i64 8}
!70 = !{!35, !41, i64 1240}
!71 = !{!72, !41, i64 96}
!72 = !{!"ScrArea", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !53, i64 56, !37, i64 72, !37, i64 73, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !39, i64 84, !37, i64 86, !37, i64 87, !41, i64 88, !44, i64 96, !44, i64 112, !44, i64 128, !44, i64 144}
!73 = !{!36, !36, i64 0}
!74 = !{!75, !41, i64 40}
!75 = !{!"SpaceImage", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !36, i64 36, !41, i64 40, !76, i64 48, !41, i64 88, !77, i64 96, !78, i64 5360, !41, i64 10520, !37, i64 10528, !40, i64 10536, !40, i64 10540, !40, i64 10544, !40, i64 10548, !40, i64 10552, !37, i64 10556, !37, i64 10557, !39, i64 10558, !39, i64 10560, !39, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !79, i64 10568}
!76 = !{!"ImageUser", !41, i64 0, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !36, i64 36}
!77 = !{!"Scopes", !36, i64 0, !36, i64 4, !36, i64 8, !40, i64 12, !36, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !40, i64 32, !36, i64 36, !37, i64 40, !78, i64 64, !41, i64 5224, !41, i64 5232, !41, i64 5240, !41, i64 5248, !36, i64 5256, !36, i64 5260}
!78 = !{!"Histogram", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !40, i64 5128, !40, i64 5132, !39, i64 5136, !39, i64 5138, !36, i64 5140, !37, i64 5144}
!79 = !{!"MaskSpaceInfo", !41, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!80 = !{!81, !41, i64 64}
!81 = !{!"SpaceClip", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !82, i64 56, !41, i64 64, !83, i64 72, !36, i64 208, !39, i64 212, !39, i64 214, !36, i64 216, !37, i64 220, !40, i64 228, !40, i64 232, !36, i64 236, !37, i64 240, !37, i64 304, !36, i64 368, !39, i64 372, !39, i64 374, !36, i64 376, !36, i64 380, !37, i64 384, !79, i64 392}
!82 = !{!"MovieClipUser", !36, i64 0, !39, i64 4, !39, i64 6}
!83 = !{!"MovieClipScopes", !39, i64 0, !39, i64 2, !36, i64 4, !36, i64 8, !36, i64 12, !84, i64 16, !41, i64 80, !41, i64 88, !37, i64 96, !39, i64 104, !39, i64 106, !36, i64 108, !41, i64 112, !41, i64 120, !37, i64 128}
!84 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !36, i64 56, !36, i64 60}
!85 = !{!50, !39, i64 208}
!86 = !{!50, !39, i64 210}
!87 = !{!35, !36, i64 0}
!88 = !{!75, !36, i64 36}
!89 = !{!90, !41, i64 128}
!90 = !{!"wmKeyMap", !41, i64 0, !41, i64 8, !44, i64 16, !44, i64 32, !37, i64 48, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !41, i64 120, !41, i64 128}
!91 = !{!35, !36, i64 640}
!92 = !{!93, !39, i64 18}
!93 = !{!"wmEvent", !41, i64 0, !41, i64 8, !39, i64 16, !39, i64 18, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !39, i64 44, !39, i64 46, !36, i64 48, !36, i64 52, !45, i64 56, !36, i64 64, !36, i64 68, !39, i64 72, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !41, i64 88, !41, i64 96, !39, i64 104, !39, i64 106, !36, i64 108, !41, i64 112}
!94 = !{!93, !39, i64 16}
!95 = !{!35, !41, i64 1232}
!96 = !{!35, !36, i64 8}
!97 = !{!35, !36, i64 260}
!98 = !{!35, !39, i64 12}
!99 = !{!35, !36, i64 4}
!100 = !{!35, !41, i64 1312}
!101 = !{!102, !39, i64 136}
!102 = !{!"Object", !103, i64 0, !41, i64 120, !41, i64 128, !39, i64 136, !39, i64 138, !36, i64 140, !36, i64 144, !36, i64 148, !37, i64 152, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288, !41, i64 296, !41, i64 304, !104, i64 312, !41, i64 360, !44, i64 368, !44, i64 384, !44, i64 400, !44, i64 416, !36, i64 432, !36, i64 436, !41, i64 440, !41, i64 448, !36, i64 456, !36, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !40, i64 616, !40, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !36, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !36, i64 968, !36, i64 972, !36, i64 976, !36, i64 980, !36, i64 984, !40, i64 988, !40, i64 992, !40, i64 996, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !40, i64 1028, !40, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !40, i64 1048, !40, i64 1052, !44, i64 1056, !44, i64 1072, !44, i64 1088, !44, i64 1104, !40, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !36, i64 1144, !36, i64 1148, !41, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !44, i64 1176, !44, i64 1192, !44, i64 1208, !44, i64 1224, !41, i64 1240, !41, i64 1248, !41, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !40, i64 1268, !41, i64 1272, !41, i64 1280, !41, i64 1288, !41, i64 1296, !105, i64 1304, !105, i64 1312, !36, i64 1320, !36, i64 1324, !44, i64 1328, !44, i64 1344, !41, i64 1360, !41, i64 1368, !41, i64 1376, !37, i64 1384, !41, i64 1392, !44, i64 1400, !41, i64 1416}
!103 = !{!"ID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !39, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !41, i64 112}
!104 = !{!"bAnimVizSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44}
!105 = !{!"long", !37, i64 0}
!106 = !{!35, !41, i64 32}
!107 = !{!35, !39, i64 698}
!108 = !{!35, !39, i64 440}
!109 = !{!35, !41, i64 1256}
!110 = !{!111, !37, i64 4604}
!111 = !{!"Scene", !103, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !44, i64 152, !41, i64 168, !41, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !36, i64 232, !36, i64 236, !36, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !112, i64 280, !119, i64 4264, !44, i64 4296, !44, i64 4312, !41, i64 4328, !41, i64 4336, !41, i64 4344, !41, i64 4352, !41, i64 4360, !41, i64 4368, !39, i64 4376, !39, i64 4378, !36, i64 4380, !44, i64 4384, !120, i64 4400, !121, i64 4416, !124, i64 4600, !41, i64 4608, !125, i64 4616, !41, i64 4640, !105, i64 4648, !105, i64 4656, !114, i64 4664, !115, i64 4824, !126, i64 4888, !41, i64 4952}
!112 = !{!"RenderData", !113, i64 0, !41, i64 248, !41, i64 256, !116, i64 264, !117, i64 328, !36, i64 400, !36, i64 404, !36, i64 408, !40, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !39, i64 432, !39, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !36, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !36, i64 484, !36, i64 488, !39, i64 492, !39, i64 494, !36, i64 496, !36, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !36, i64 516, !36, i64 520, !36, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !52, i64 544, !52, i64 560, !53, i64 576, !44, i64 592, !39, i64 608, !39, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !36, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !40, i64 660, !40, i64 664, !39, i64 668, !39, i64 670, !40, i64 672, !40, i64 676, !37, i64 680, !36, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !36, i64 2520, !39, i64 2524, !39, i64 2526, !40, i64 2528, !40, i64 2532, !39, i64 2536, !39, i64 2538, !40, i64 2540, !39, i64 2544, !39, i64 2546, !36, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !40, i64 2560, !40, i64 2564, !41, i64 2568, !36, i64 2576, !40, i64 2580, !37, i64 2584, !118, i64 2616, !36, i64 3976, !36, i64 3980}
!113 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !40, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !114, i64 24, !115, i64 184}
!114 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !40, i64 136, !40, i64 140, !41, i64 144, !41, i64 152}
!115 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!116 = !{!"QuicktimeCodecSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !39, i64 48, !39, i64 50, !36, i64 52, !36, i64 56, !36, i64 60}
!117 = !{!"FFMpegCodecData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !40, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !41, i64 64}
!118 = !{!"BakeData", !113, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !40, i64 1280, !40, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!119 = !{!"AudioData", !36, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !36, i64 16, !39, i64 20, !39, i64 22, !40, i64 24, !40, i64 28}
!120 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!121 = !{!"GameData", !120, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !122, i64 40, !39, i64 64, !39, i64 66, !40, i64 68, !123, i64 72, !40, i64 128, !40, i64 132, !36, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180}
!122 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !40, i64 8, !40, i64 12, !41, i64 16}
!123 = !{!"RecastData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !36, i64 40, !40, i64 44, !40, i64 48, !39, i64 52, !39, i64 54}
!124 = !{!"UnitSettings", !40, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!125 = !{!"PhysicsSettings", !37, i64 0, !36, i64 12, !36, i64 16, !36, i64 20}
!126 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!127 = !{!35, !36, i64 444}
!128 = !{!111, !37, i64 4605}
!129 = !{!35, !37, i64 460}
!130 = !{!35, !39, i64 80}
!131 = !{!39, !39, i64 0}
!132 = !{!35, !39, i64 462}
!133 = !{!35, !39, i64 1154}
!134 = !{!93, !36, i64 24}
!135 = !{!93, !36, i64 52}
!136 = !{!35, !40, i64 644}
!137 = !{!138, !40, i64 256}
!138 = !{!"View3D", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !37, i64 56, !40, i64 72, !40, i64 76, !37, i64 80, !37, i64 81, !36, i64 84, !36, i64 88, !39, i64 92, !39, i64 94, !41, i64 96, !41, i64 104, !52, i64 112, !44, i64 128, !41, i64 144, !41, i64 152, !37, i64 160, !36, i64 224, !36, i64 228, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !37, i64 260, !37, i64 272, !39, i64 284, !39, i64 286, !39, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !44, i64 296, !44, i64 312, !44, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !41, i64 352, !41, i64 360, !41, i64 368}
!139 = !{!93, !39, i64 72}
!140 = !{!93, !39, i64 76}
!141 = !{!35, !39, i64 1158}
!142 = !{!35, !39, i64 1152}
!143 = !{!35, !41, i64 40}
!144 = !{!35, !41, i64 1288}
!145 = !{!56, !40, i64 848}
!146 = !{!147, !41, i64 0}
!147 = !{!"BMEditMesh", !41, i64 0, !41, i64 8, !36, i64 16, !41, i64 24, !36, i64 32, !41, i64 40, !41, i64 48, !105, i64 56, !41, i64 64, !36, i64 72, !41, i64 80, !36, i64 88, !39, i64 92, !39, i64 94, !41, i64 96, !36, i64 104}
!148 = !{!41, !41, i64 0}
!149 = !{!35, !41, i64 1264}
!150 = !{!151, !37, i64 49}
!151 = !{!"ToolSettings", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !39, i64 44, !39, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !40, i64 52, !39, i64 56, !37, i64 58, !37, i64 59, !152, i64 64, !154, i64 168, !40, i64 336, !40, i64 340, !39, i64 344, !39, i64 346, !37, i64 348, !37, i64 349, !39, i64 350, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !40, i64 368, !40, i64 372, !40, i64 376, !40, i64 380, !40, i64 384, !40, i64 388, !39, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !41, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !39, i64 434, !39, i64 436, !39, i64 438, !39, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !36, i64 448, !36, i64 452, !36, i64 456, !36, i64 460, !39, i64 464, !39, i64 466, !36, i64 468, !40, i64 472, !40, i64 476, !155, i64 480, !156, i64 608}
!152 = !{!"ImagePaintSettings", !153, i64 0, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !37, i64 48, !36, i64 52, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !37, i64 88, !40, i64 100}
!153 = !{!"Paint", !41, i64 0, !41, i64 8, !41, i64 16, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36}
!154 = !{!"ParticleEditSettings", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !41, i64 120, !40, i64 128, !40, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !41, i64 152, !41, i64 160}
!155 = !{!"UnifiedPaintSettings", !36, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !37, i64 16, !37, i64 28, !36, i64 40, !37, i64 44, !40, i64 52, !36, i64 56, !36, i64 60, !37, i64 64, !37, i64 65, !40, i64 72, !37, i64 76, !36, i64 84, !40, i64 88, !37, i64 92, !37, i64 100, !36, i64 108, !41, i64 112, !40, i64 120, !36, i64 124}
!156 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 21, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36}
!157 = !{!158, !36, i64 948}
!158 = !{!"BMesh", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 29, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !36, i64 88, !36, i64 92, !36, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !36, i64 128, !41, i64 136, !159, i64 144, !159, i64 344, !159, i64 544, !159, i64 744, !39, i64 944, !36, i64 948, !36, i64 952, !36, i64 956, !44, i64 960, !41, i64 976, !44, i64 984, !41, i64 1000}
!159 = !{!"CustomData", !41, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !41, i64 184, !41, i64 192}
!160 = !{!161, !37, i64 48}
!161 = !{!"EdgeSlideData", !41, i64 0, !36, i64 8, !41, i64 16, !37, i64 24, !37, i64 32, !41, i64 40, !37, i64 48, !41, i64 56, !40, i64 64, !37, i64 68, !37, i64 69, !36, i64 72}
!162 = !{!161, !37, i64 68}
!163 = !{!161, !36, i64 72}
!164 = !{!161, !37, i64 69}
!165 = !{!166, !37, i64 60}
!166 = !{!"BMIter", !37, i64 0, !41, i64 40, !41, i64 48, !36, i64 56, !37, i64 60}
!167 = !{!166, !41, i64 40}
!168 = !{!166, !41, i64 48}
!169 = !{!158, !41, i64 32}
!170 = !{!37, !37, i64 0}
!171 = !{!172, !37, i64 13}
!172 = !{!"BMHeader", !41, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!173 = !{!174, !41, i64 48}
!174 = !{!"BMVert", !172, i64 0, !41, i64 16, !37, i64 24, !37, i64 36, !41, i64 48}
!175 = distinct !{!175, !176, !177}
!176 = !{!"llvm.loop.mustprogress"}
!177 = !{!"llvm.loop.unroll.disable"}
!178 = distinct !{!178, !176, !177}
!179 = !{!158, !41, i64 40}
!180 = !{!181, !41, i64 40}
!181 = !{!"BMEdge", !172, i64 0, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !182, i64 48, !182, i64 64}
!182 = !{!"BMDiskLink", !41, i64 0, !41, i64 8}
!183 = !{!184, !41, i64 40}
!184 = !{!"BMLoop", !172, i64 0, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64}
!185 = distinct !{!185, !176, !177}
!186 = !{!158, !36, i64 0}
!187 = !{!172, !36, i64 8}
!188 = distinct !{!188, !176, !177}
!189 = !{!158, !37, i64 28}
!190 = distinct !{!190, !176, !177}
!191 = distinct !{!191, !177}
!192 = distinct !{!192, !176, !177}
!193 = !{!181, !41, i64 24}
!194 = !{!181, !41, i64 32}
!195 = distinct !{!195, !176, !177}
!196 = !{!184, !41, i64 24}
!197 = !{!198, !41, i64 16}
!198 = !{!"TransDataEdgeSlideVert", !41, i64 0, !41, i64 8, !41, i64 16, !37, i64 24, !40, i64 36, !37, i64 40, !37, i64 52, !36, i64 64}
!199 = !{!198, !36, i64 64}
!200 = !{!198, !41, i64 0}
!201 = !{!198, !41, i64 8}
!202 = distinct !{!202, !176, !177}
!203 = !{!102, !37, i64 1046}
!204 = !{!138, !39, i64 232}
!205 = !{!161, !41, i64 0}
!206 = !{!161, !36, i64 8}
!207 = distinct !{!207, !176, !177}
!208 = distinct !{!208, !176, !177}
!209 = distinct !{!209, !176, !177}
!210 = !{!161, !41, i64 16}
!211 = !{!161, !41, i64 56}
!212 = distinct !{!212, !176, !177}
!213 = distinct !{!213, !176, !177}
!214 = !{!198, !40, i64 36}
!215 = distinct !{!215, !176, !177}
!216 = !{!161, !41, i64 40}
!217 = !{!161, !40, i64 64}
!218 = !{!35, !41, i64 1136}
!219 = !{!35, !41, i64 1144}
!220 = !{!221, !37, i64 28}
!221 = !{!"VertSlideData", !41, i64 0, !36, i64 8, !41, i64 16, !40, i64 24, !37, i64 28, !37, i64 29, !36, i64 32}
!222 = !{!221, !36, i64 32}
!223 = !{!221, !37, i64 29}
!224 = distinct !{!224, !176, !177}
!225 = distinct !{!225, !176, !177}
!226 = !{!227, !41, i64 0}
!227 = !{!"TransDataVertSlideVert", !41, i64 0, !37, i64 8, !37, i64 20, !41, i64 32, !41, i64 40, !36, i64 48, !36, i64 52}
!228 = distinct !{!228, !176, !177}
!229 = !{!227, !41, i64 32}
!230 = !{!227, !41, i64 40}
!231 = !{!227, !36, i64 48}
!232 = distinct !{!232, !176, !177}
!233 = distinct !{!233, !176, !177}
!234 = !{!221, !41, i64 0}
!235 = !{!221, !36, i64 8}
!236 = !{!221, !41, i64 16}
!237 = !{!221, !40, i64 24}
!238 = distinct !{!238, !176, !177}
!239 = !{!227, !36, i64 52}
!240 = !{!35, !39, i64 974}
!241 = !{!35, !36, i64 48}
!242 = !{!243, !41, i64 112}
!243 = !{!"wmOperator", !41, i64 0, !41, i64 8, !37, i64 16, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !44, i64 128, !41, i64 144, !41, i64 152, !39, i64 160, !37, i64 162}
!244 = !{!151, !39, i64 438}
!245 = !{!151, !37, i64 443}
!246 = !{!151, !37, i64 442}
!247 = !{!151, !40, i64 336}
!248 = !{!151, !39, i64 440}
!249 = !{!151, !39, i64 434}
!250 = !{!138, !37, i64 292}
!251 = !{!50, !41, i64 240}
!252 = !{!35, !41, i64 1360}
!253 = !{!35, !41, i64 1368}
!254 = !{!35, !41, i64 1376}
!255 = !{!35, !41, i64 1384}
!256 = !{!243, !41, i64 88}
!257 = !{!258, !41, i64 128}
!258 = !{!"wmOperatorType", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !44, i64 112, !41, i64 128, !41, i64 136, !41, i64 144, !259, i64 152, !39, i64 184}
!259 = !{!"ExtensionRNA", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24}
!260 = !{!35, !41, i64 1280}
!261 = !{!262, !39, i64 152}
!262 = !{!"wmKeyMapItem", !41, i64 0, !41, i64 8, !37, i64 16, !41, i64 80, !37, i64 88, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !39, i64 164, !39, i64 166, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !41, i64 176}
!263 = !{!262, !39, i64 156}
!264 = !{!262, !39, i64 154}
!265 = !{!93, !39, i64 74}
!266 = !{!93, !39, i64 78}
!267 = distinct !{!267, !176, !177}
!268 = !{!35, !41, i64 56}
!269 = !{!35, !40, i64 20}
!270 = distinct !{!270, !176, !177}
!271 = !{!272, !40, i64 48}
!272 = !{!"BendCustomData", !37, i64 0, !37, i64 12, !37, i64 24, !37, i64 36, !40, i64 48}
!273 = !{!35, !41, i64 1128}
!274 = !{!102, !41, i64 296}
!275 = !{!276, !36, i64 196}
!276 = !{!"bArmature", !103, i64 0, !41, i64 120, !44, i64 128, !44, i64 144, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !39, i64 208, !39, i64 210, !36, i64 212, !36, i64 216, !36, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !36, i64 248, !36, i64 252}
!277 = !{!278, !39, i64 338}
!278 = !{!"SpaceAction", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !51, i64 56, !41, i64 216, !279, i64 224, !37, i64 336, !37, i64 337, !39, i64 338, !40, i64 340}
!279 = !{!"bDopeSheet", !41, i64 0, !44, i64 8, !41, i64 24, !37, i64 32, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108}
!280 = !{!111, !36, i64 680}
!281 = !{!111, !39, i64 820}
!282 = !{!111, !40, i64 900}
!283 = !{!138, !37, i64 344}
!284 = distinct !{!284, !176, !177}
!285 = distinct !{!285, !176, !177}
!286 = !{!111, !41, i64 168}
!287 = !{!288, !41, i64 32}
!288 = !{!"Base", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !39, i64 28, !39, i64 30, !41, i64 32}
!289 = !{!290, !39, i64 8978}
!290 = !{!"UserDef", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !36, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !36, i64 8484, !36, i64 8488, !36, i64 8492, !39, i64 8496, !39, i64 8498, !36, i64 8500, !36, i64 8504, !36, i64 8508, !36, i64 8512, !36, i64 8516, !36, i64 8520, !36, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !44, i64 8536, !44, i64 8552, !44, i64 8568, !44, i64 8584, !44, i64 8600, !44, i64 8616, !44, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !36, i64 8912, !36, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !40, i64 8956, !40, i64 8960, !36, i64 8964, !39, i64 8968, !39, i64 8970, !40, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !291, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !36, i64 10896, !36, i64 10900, !40, i64 10904, !40, i64 10908, !36, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !292, i64 10928}
!291 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!292 = !{!"WalkNavigation", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !39, i64 24, !37, i64 26}
!293 = !{!290, !39, i64 8948}
!294 = !{!35, !37, i64 977}
!295 = distinct !{!295, !176, !177}
!296 = !{!35, !41, i64 1272}
!297 = !{!111, !41, i64 264}
!298 = !{!151, !39, i64 344}
!299 = !{!290, !39, i64 8976}
!300 = !{!75, !39, i64 10562}
!301 = distinct !{!301, !176, !177}
!302 = distinct !{!302, !176, !177}
!303 = !{!184, !41, i64 32}
!304 = !{!184, !41, i64 64}
!305 = distinct !{!305, !176, !177}
!306 = distinct !{!306, !176, !177}
!307 = distinct !{!307, !176, !177}
!308 = distinct !{!308, !176, !177}
!309 = !{!35, !39, i64 296}
!310 = !{!311, !36, i64 216}
!311 = !{!"TransData", !40, i64 0, !40, i64 4, !40, i64 8, !41, i64 16, !37, i64 24, !41, i64 40, !40, i64 48, !37, i64 52, !37, i64 64, !37, i64 100, !37, i64 136, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !36, i64 216, !39, i64 220}
!312 = !{!311, !41, i64 16}
!313 = !{!311, !40, i64 8}
!314 = distinct !{!314, !176, !177}
!315 = !{!35, !41, i64 288}
!316 = distinct !{!316, !176, !177}
!317 = !{!35, !41, i64 280}
!318 = distinct !{!318, !176, !177}
!319 = distinct !{!319, !176, !177}
!320 = !{!311, !41, i64 192}
!321 = !{!311, !39, i64 220}
!322 = !{!311, !40, i64 48}
!323 = !{!311, !41, i64 40}
!324 = !{!325, !41, i64 128}
!325 = !{!"TransDataExtension", !37, i64 0, !37, i64 12, !37, i64 28, !41, i64 40, !37, i64 48, !41, i64 64, !37, i64 72, !41, i64 88, !40, i64 96, !41, i64 104, !37, i64 112, !41, i64 128, !37, i64 136, !37, i64 148, !37, i64 212, !37, i64 248, !37, i64 284, !36, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 364, !40, i64 376}
!326 = !{!311, !41, i64 184}
!327 = distinct !{!327, !176, !177}
!328 = !{!329, !39, i64 26}
!329 = !{!"bConstraint", !41, i64 0, !41, i64 8, !41, i64 16, !39, i64 24, !39, i64 26, !37, i64 28, !37, i64 29, !37, i64 30, !39, i64 94, !40, i64 96, !40, i64 100, !41, i64 104, !40, i64 112, !40, i64 116}
!330 = !{!329, !40, i64 96}
!331 = !{!329, !39, i64 24}
!332 = !{!329, !41, i64 16}
!333 = !{!334, !39, i64 26}
!334 = !{!"bSizeLimitConstraint", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !39, i64 24, !39, i64 26}
!335 = !{!329, !37, i64 28}
!336 = !{!337, !41, i64 128}
!337 = !{!"bConstraintTypeInfo", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 36, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128}
!338 = distinct !{!338, !176, !177}
!339 = !{!340, !39, i64 26}
!340 = !{!"bLocLimitConstraint", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !39, i64 24, !39, i64 26}
!341 = !{!342, !39, i64 80}
!342 = !{!"bDistLimitConstraint", !41, i64 0, !37, i64 8, !40, i64 72, !40, i64 76, !39, i64 80, !39, i64 82, !36, i64 84}
!343 = distinct !{!343, !176, !177}
!344 = distinct !{!344, !176, !177}
!345 = distinct !{!345, !176, !177}
!346 = distinct !{!346, !176, !177}
!347 = !{!325, !41, i64 64}
!348 = !{!325, !36, i64 320}
!349 = !{!325, !40, i64 96}
!350 = !{!325, !41, i64 104}
!351 = !{!325, !41, i64 88}
!352 = !{!325, !41, i64 40}
!353 = !{!354, !39, i64 26}
!354 = !{!"bRotLimitConstraint", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !39, i64 24, !39, i64 26}
!355 = distinct !{!355, !176, !177}
!356 = distinct !{!356, !176, !177}
!357 = !{!35, !41, i64 272}
!358 = !{!111, !39, i64 4606}
!359 = !{!111, !40, i64 4600}
!360 = distinct !{!360, !176, !177}
!361 = !{!151, !39, i64 56}
!362 = distinct !{!362, !176, !177}
!363 = distinct !{!363, !176, !177}
!364 = distinct !{!364, !176, !177}
!365 = distinct !{!365, !176, !177}
!366 = distinct !{!366, !176, !177}
!367 = distinct !{!367, !176, !177}
!368 = distinct !{!368, !176, !177}
!369 = distinct !{!369, !176, !177}
!370 = distinct !{!370, !176, !177}
!371 = distinct !{!371, !176, !177}
!372 = distinct !{!372, !176, !177}
!373 = !{!374, !36, i64 32}
!374 = !{!"BMFace", !172, i64 0, !41, i64 16, !41, i64 24, !36, i64 32, !37, i64 36, !39, i64 48}
!375 = !{!184, !41, i64 56}
!376 = !{!184, !41, i64 16}
!377 = distinct !{!377, !176, !177}
!378 = distinct !{!378, !176, !177}
!379 = distinct !{!379, !176, !177}
!380 = distinct !{!380, !176, !177}
!381 = distinct !{!381, !176, !177}
!382 = distinct !{!382, !176, !177}
!383 = distinct !{!383, !176, !177}
!384 = !{!35, !37, i64 608}
!385 = distinct !{!385, !176, !177}
!386 = distinct !{!386, !176, !177}
!387 = distinct !{!387, !176, !177}
!388 = !{!151, !39, i64 46}
!389 = distinct !{!389, !176, !177}
!390 = distinct !{!390, !176, !177}
!391 = !{!278, !37, i64 337}
!392 = !{!393, !39, i64 242}
!393 = !{!"SpaceIpo", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !51, i64 56, !41, i64 216, !44, i64 224, !39, i64 240, !39, i64 242, !36, i64 244, !40, i64 248, !36, i64 252}
!394 = !{!395, !39, i64 56}
!395 = !{!"SpaceNla", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !39, i64 56, !39, i64 58, !36, i64 60, !41, i64 64, !51, i64 72}
!396 = !{!35, !41, i64 72}
!397 = !{!311, !41, i64 208}
!398 = distinct !{!398, !176, !177}
!399 = !{!400, !41, i64 24}
!400 = !{!"TransData2D", !37, i64 0, !41, i64 16, !41, i64 24, !41, i64 32, !37, i64 40, !37, i64 48}
!401 = !{!400, !41, i64 32}
!402 = !{!278, !40, i64 340}
!403 = distinct !{!403, !176, !177}
!404 = distinct !{!404, !176, !177}
