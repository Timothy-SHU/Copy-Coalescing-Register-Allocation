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
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
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
%struct.EdgeSlideData = type { ptr, i32, ptr, [2 x i32], [2 x i32], ptr, i8, ptr, float, i8, i8, i32 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.TransData = type { float, float, float, ptr, [3 x float], ptr, float, [3 x float], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], ptr, ptr, ptr, ptr, ptr, i32, i16 }
%struct.BendCustomData = type { [3 x float], [3 x float], [3 x float], [3 x float], float }
%struct.SpaceAction = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.bDopeSheet, i8, i8, i16, float }
%struct.bDopeSheet = type { ptr, %struct.ListBase, ptr, [64 x i8], i32, i32, i32, i32 }
%struct.TransDataEdgeSlideVert = type { ptr, ptr, ptr, [3 x float], float, [3 x float], [3 x float], i32 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.VertSlideData = type { ptr, i32, ptr, float, i8, i8, i32 }
%struct.TransDataVertSlideVert = type { ptr, [3 x float], [2 x float], ptr, ptr, i32, i32 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { float, float }
%struct.TransDataExtension = type { [3 x float], [4 x float], [3 x float], ptr, [3 x float], ptr, [4 x float], ptr, float, ptr, [4 x float], ptr, [3 x float], [4 x [4 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.bConstraintOb = type { ptr, ptr, ptr, [4 x [4 x float]], [4 x [4 x float]], i16, i16 }
%struct.bConstraintTypeInfo = type { i16, i16, [32 x i8], [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bSizeLimitConstraint = type { float, float, float, float, float, float, i16, i16 }
%struct.bLocLimitConstraint = type { float, float, float, float, float, float, i16, i16 }
%struct.bDistLimitConstraint = type { ptr, [64 x i8], float, float, i16, i16, i32 }
%struct.bRotLimitConstraint = type { float, float, float, float, float, float, i16, i16 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.TransData2D = type { [3 x float], ptr, ptr, ptr, [2 x float], [2 x float] }
%struct.SpaceIpo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.ListBase, i16, i16, i32, float, i32 }
%struct.SpaceNla = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i16, i16, i32, ptr, %struct.View2D }

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

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void @copy_m4_m4(ptr noundef nonnull %16, ptr noundef nonnull %17) #20
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %15, i64 0, i32 2
  tail call void @copy_m4_m4(ptr noundef nonnull %18, ptr noundef nonnull %19) #20
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 29
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %15, i64 0, i32 3
  tail call void @copy_m4_m4(ptr noundef nonnull %20, ptr noundef nonnull %21) #20
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 30
  %23 = getelementptr inbounds %struct.RegionView3D, ptr %15, i64 0, i32 4
  tail call void @copy_m4_m4(ptr noundef nonnull %22, ptr noundef nonnull %23) #20
  %24 = getelementptr inbounds %struct.RegionView3D, ptr %15, i64 0, i32 25
  %25 = load i8, ptr %24, align 1, !tbaa !55
  %26 = zext i8 %25 to i16
  br label %32

27:                                               ; preds = %9, %5, %1
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 27
  tail call void @unit_m4(ptr noundef nonnull %28) #20
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28
  tail call void @unit_m4(ptr noundef nonnull %29) #20
  %30 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 29
  tail call void @unit_m4(ptr noundef nonnull %30) #20
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 30
  tail call void @unit_m4(ptr noundef nonnull %31) #20
  br label %32

32:                                               ; preds = %27, %13
  %33 = phi i16 [ 0, %27 ], [ %26, %13 ]
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 31
  store i16 %33, ptr %34, align 4, !tbaa !57
  tail call void @calculateCenter2D(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @calculateCenter2D(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @convertViewVec(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %11 = load i8, ptr %10, align 8, !tbaa !34
  switch i8 %11, label %107 [
    i8 1, label %12
    i8 6, label %33
    i8 2, label %66
    i8 13, label %66
    i8 16, label %69
    i8 8, label %69
    i8 20, label %73
  ]

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 8
  %16 = load i16, ptr %15, align 2, !tbaa !49
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %107

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !58
  %21 = and i32 %20, 256
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = insertelement <2 x i32> poison, i32 %2, i64 0
  %25 = insertelement <2 x i32> %24, i32 %3, i64 1
  %26 = sitofp <2 x i32> %25 to <2 x float>
  store <2 x float> %26, ptr %1, align 4, !tbaa !59
  br label %109

27:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %28 = insertelement <2 x i32> poison, i32 %2, i64 0
  %29 = insertelement <2 x i32> %28, i32 %3, i64 1
  %30 = sitofp <2 x i32> %29 to <2 x float>
  store <2 x float> %30, ptr %5, align 8, !tbaa !59
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 62
  %32 = load float, ptr %31, align 8, !tbaa !60
  call void @ED_view3d_win_to_delta(ptr noundef nonnull %14, ptr noundef nonnull %5, ptr noundef %1, float noundef %32) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %109

33:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !58
  %36 = and i32 %35, 128
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %40 = load ptr, ptr %39, align 8, !tbaa !61
  tail call fastcc void @convertViewVec2D_mask(ptr noundef %40, ptr noundef %1, i32 noundef %2, i32 noundef %3) #22
  %41 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %42 = load ptr, ptr %41, align 8, !tbaa !62
  %43 = getelementptr inbounds %struct.ScrArea, ptr %42, i64 0, i32 19
  %44 = load ptr, ptr %43, align 8, !tbaa !63
  call void @ED_space_image_get_aspect(ptr noundef %44, ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  br label %59

45:                                               ; preds = %33
  %46 = and i32 %35, 256
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = insertelement <2 x i32> poison, i32 %2, i64 0
  %50 = insertelement <2 x i32> %49, i32 %3, i64 1
  %51 = sitofp <2 x i32> %50 to <2 x float>
  store <2 x float> %51, ptr %1, align 4, !tbaa !59
  store float 1.000000e+00, ptr %7, align 4, !tbaa !59
  store float 1.000000e+00, ptr %6, align 4, !tbaa !59
  br label %59

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %54 = load ptr, ptr %53, align 8, !tbaa !61
  tail call fastcc void @convertViewVec2D(ptr noundef %54, ptr noundef %1, i32 noundef %2, i32 noundef %3) #22
  %55 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %56 = load ptr, ptr %55, align 8, !tbaa !62
  %57 = getelementptr inbounds %struct.ScrArea, ptr %56, i64 0, i32 19
  %58 = load ptr, ptr %57, align 8, !tbaa !63
  call void @ED_space_image_get_uv_aspect(ptr noundef %58, ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  br label %59

59:                                               ; preds = %48, %52, %38
  %60 = load float, ptr %6, align 4, !tbaa !59
  %61 = load float, ptr %7, align 4, !tbaa !59
  %62 = load <2 x float>, ptr %1, align 4, !tbaa !59
  %63 = insertelement <2 x float> poison, float %60, i64 0
  %64 = insertelement <2 x float> %63, float %61, i64 1
  %65 = fmul <2 x float> %64, %62
  store <2 x float> %65, ptr %1, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  br label %109

66:                                               ; preds = %4, %4
  %67 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %68 = load ptr, ptr %67, align 8, !tbaa !61
  tail call fastcc void @convertViewVec2D(ptr noundef %68, ptr noundef %1, i32 noundef %2, i32 noundef %3) #22
  br label %109

69:                                               ; preds = %4, %4
  %70 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %71 = load ptr, ptr %70, align 8, !tbaa !48
  %72 = getelementptr inbounds %struct.ARegion, ptr %71, i64 0, i32 2
  tail call fastcc void @convertViewVec2D(ptr noundef nonnull %72, ptr noundef %1, i32 noundef %2, i32 noundef %3) #22
  br label %109

73:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #21
  %74 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %75 = load i32, ptr %74, align 8, !tbaa !58
  %76 = and i32 %75, 128
  %77 = icmp eq i32 %76, 0
  %78 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %79 = load ptr, ptr %78, align 8, !tbaa !61
  br i1 %77, label %81, label %80

80:                                               ; preds = %73
  tail call fastcc void @convertViewVec2D_mask(ptr noundef %79, ptr noundef %1, i32 noundef %2, i32 noundef %3) #22
  br label %82

81:                                               ; preds = %73
  tail call fastcc void @convertViewVec2D(ptr noundef %79, ptr noundef %1, i32 noundef %2, i32 noundef %3) #22
  br label %82

82:                                               ; preds = %81, %80
  %83 = load i32, ptr %74, align 8, !tbaa !58
  %84 = and i32 %83, 64
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %88 = load ptr, ptr %87, align 8, !tbaa !62
  %89 = getelementptr inbounds %struct.ScrArea, ptr %88, i64 0, i32 19
  %90 = load ptr, ptr %89, align 8, !tbaa !63
  call void @ED_space_clip_get_aspect_dimension_aware(ptr noundef %90, ptr noundef nonnull %8, ptr noundef nonnull %9) #20
  br label %100

91:                                               ; preds = %82
  %92 = and i32 %83, 128
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %96 = load ptr, ptr %95, align 8, !tbaa !62
  %97 = getelementptr inbounds %struct.ScrArea, ptr %96, i64 0, i32 19
  %98 = load ptr, ptr %97, align 8, !tbaa !63
  call void @ED_space_clip_get_aspect(ptr noundef %98, ptr noundef nonnull %8, ptr noundef nonnull %9) #20
  br label %100

99:                                               ; preds = %91
  store float 1.000000e+00, ptr %9, align 4, !tbaa !59
  store float 1.000000e+00, ptr %8, align 4, !tbaa !59
  br label %100

100:                                              ; preds = %94, %99, %86
  %101 = load float, ptr %8, align 4, !tbaa !59
  %102 = load float, ptr %9, align 4, !tbaa !59
  %103 = load <2 x float>, ptr %1, align 4, !tbaa !59
  %104 = insertelement <2 x float> poison, float %101, i64 0
  %105 = insertelement <2 x float> %104, float %102, i64 1
  %106 = fmul <2 x float> %105, %103
  store <2 x float> %106, ptr %1, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #21
  br label %109

107:                                              ; preds = %4, %12
  %108 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.convertViewVec) #22
  tail call fastcc void @zero_v3(ptr noundef %1) #22
  br label %109

109:                                              ; preds = %59, %69, %107, %100, %66, %23, %27
  ret void
}

; Function Attrs: optsize
declare void @ED_view3d_win_to_delta(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @convertViewVec2D_mask(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 !PGOFuncName !65 {
  %5 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %6 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %5) #22
  %7 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %5) #22
  %8 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %9 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %8) #22
  %10 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %8) #22
  %11 = insertelement <2 x i32> poison, i32 %6, i64 0
  %12 = insertelement <2 x i32> %11, i32 %7, i64 1
  %13 = sitofp <2 x i32> %12 to <2 x float>
  %14 = insertelement <2 x float> poison, float %9, i64 0
  %15 = insertelement <2 x float> %14, float %10, i64 1
  %16 = fdiv <2 x float> %15, %13
  %17 = extractelement <2 x float> %16, i64 0
  %18 = extractelement <2 x float> %16, i64 1
  %19 = fcmp olt float %17, %18
  %20 = extractelement <2 x float> %13, i64 0
  %21 = extractelement <2 x float> %13, i64 1
  %22 = select i1 %19, float %20, float %21
  %23 = select i1 %19, float %9, float %10
  %24 = insertelement <2 x i32> poison, i32 %2, i64 0
  %25 = insertelement <2 x i32> %24, i32 %3, i64 1
  %26 = sitofp <2 x i32> %25 to <2 x float>
  %27 = insertelement <2 x float> poison, float %23, i64 0
  %28 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> zeroinitializer
  %29 = fmul <2 x float> %28, %26
  %30 = insertelement <2 x float> poison, float %22, i64 0
  %31 = shufflevector <2 x float> %30, <2 x float> poison, <2 x i32> zeroinitializer
  %32 = fdiv <2 x float> %29, %31
  store <2 x float> %32, ptr %1, align 4, !tbaa !59
  %33 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %33, align 4, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare void @ED_space_image_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @convertViewVec2D(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 !PGOFuncName !66 {
  %5 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 4
  %6 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %5) #22
  %7 = sitofp i32 %6 to float
  %8 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %5) #22
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %11 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %10) #22
  %12 = sitofp i32 %2 to float
  %13 = fmul float %11, %12
  %14 = fdiv float %13, %7
  store float %14, ptr %1, align 4, !tbaa !59
  %15 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %10) #22
  %16 = sitofp i32 %3 to float
  %17 = fmul float %15, %16
  %18 = fdiv float %17, %9
  %19 = getelementptr inbounds float, ptr %1, i64 1
  store float %18, ptr %19, align 4, !tbaa !59
  %20 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %20, align 4, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare void @ED_space_image_get_uv_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_space_clip_get_aspect_dimension_aware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_space_clip_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #5 !PGOFuncName !67 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !59
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !59
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @projectIntViewEx(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [2 x float], align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca [2 x i32], align 8
  %11 = alloca [2 x i32], align 8
  %12 = alloca [2 x i32], align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca [2 x float], align 8
  %16 = alloca [2 x float], align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %20 = load i8, ptr %19, align 8, !tbaa !34
  switch i8 %20, label %148 [
    i8 1, label %21
    i8 6, label %32
    i8 12, label %75
    i8 2, label %83
    i8 13, label %83
    i8 8, label %91
    i8 20, label %99
    i8 16, label %141
  ]

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 8
  %25 = load i16, ptr %24, align 2, !tbaa !49
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %148

27:                                               ; preds = %21
  %28 = tail call i32 @ED_view3d_project_int_global(ptr noundef nonnull %23, ptr noundef %1, ptr noundef %2, i32 noundef %3) #20
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %148, label %30

30:                                               ; preds = %27
  store i32 2140000000, ptr %2, align 4, !tbaa !68
  %31 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 2140000000, ptr %31, align 4, !tbaa !68
  br label %148

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !58
  %36 = and i32 %35, 128
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %33, align 8, !tbaa !62
  %40 = getelementptr inbounds %struct.ScrArea, ptr %39, i64 0, i32 19
  %41 = load ptr, ptr %40, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @ED_space_image_get_aspect(ptr noundef %41, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  call fastcc void @copy_v2_v2(ptr noundef nonnull %7, ptr noundef %1) #22
  %42 = load float, ptr %5, align 4, !tbaa !59
  %43 = load float, ptr %6, align 4, !tbaa !59
  %44 = load <2 x float>, ptr %7, align 8, !tbaa !59
  %45 = insertelement <2 x float> poison, float %42, i64 0
  %46 = insertelement <2 x float> %45, float %43, i64 1
  %47 = fdiv <2 x float> %44, %46
  store <2 x float> %47, ptr %7, align 8, !tbaa !59
  %48 = getelementptr inbounds %struct.SpaceImage, ptr %41, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !69
  %50 = getelementptr inbounds %struct.SpaceImage, ptr %41, i64 0, i32 6
  call void @BKE_mask_coord_to_image(ptr noundef %49, ptr noundef nonnull %50, ptr noundef nonnull %7, ptr noundef nonnull %7) #20
  %51 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %52 = load ptr, ptr %51, align 8, !tbaa !48
  call void @ED_image_point_pos__reverse(ptr noundef %41, ptr noundef %52, ptr noundef nonnull %7, ptr noundef nonnull %7) #20
  %53 = load <2 x float>, ptr %7, align 8, !tbaa !59
  %54 = fptosi <2 x float> %53 to <2 x i32>
  store <2 x i32> %54, ptr %2, align 4, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  br label %148

55:                                               ; preds = %32
  %56 = and i32 %35, 256
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load <2 x float>, ptr %1, align 4, !tbaa !59
  %60 = fptosi <2 x float> %59 to <2 x i32>
  store <2 x i32> %60, ptr %2, align 4, !tbaa !68
  br label %148

61:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #21
  %62 = load ptr, ptr %33, align 8, !tbaa !62
  %63 = getelementptr inbounds %struct.ScrArea, ptr %62, i64 0, i32 19
  %64 = load ptr, ptr %63, align 8, !tbaa !63
  call void @ED_space_image_get_uv_aspect(ptr noundef %64, ptr noundef nonnull %8, ptr noundef nonnull %9) #20
  %65 = load float, ptr %1, align 4, !tbaa !59
  %66 = load float, ptr %8, align 4, !tbaa !59
  %67 = fdiv float %65, %66
  %68 = getelementptr inbounds float, ptr %1, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !59
  %70 = load float, ptr %9, align 4, !tbaa !59
  %71 = fdiv float %69, %70
  %72 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %73 = load ptr, ptr %72, align 8, !tbaa !61
  %74 = getelementptr inbounds i32, ptr %2, i64 1
  call void @UI_view2d_view_to_region(ptr noundef %73, float noundef %67, float noundef %71, ptr noundef %2, ptr noundef nonnull %74) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #21
  br label %148

75:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #21
  store i64 0, ptr %10, align 8
  %76 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %77 = load ptr, ptr %76, align 8, !tbaa !61
  %78 = load float, ptr %1, align 4, !tbaa !59
  %79 = getelementptr inbounds float, ptr %1, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !59
  %81 = getelementptr inbounds [2 x i32], ptr %10, i64 0, i64 1
  call void @UI_view2d_view_to_region(ptr noundef %77, float noundef %78, float noundef %80, ptr noundef nonnull %10, ptr noundef nonnull %81) #20
  %82 = load <2 x i32>, ptr %10, align 8, !tbaa !68
  store <2 x i32> %82, ptr %2, align 4, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #21
  br label %148

83:                                               ; preds = %4, %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #21
  store i64 0, ptr %11, align 8
  %84 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %85 = load ptr, ptr %84, align 8, !tbaa !61
  %86 = load float, ptr %1, align 4, !tbaa !59
  %87 = getelementptr inbounds float, ptr %1, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !59
  %89 = getelementptr inbounds [2 x i32], ptr %11, i64 0, i64 1
  call void @UI_view2d_view_to_region(ptr noundef %85, float noundef %86, float noundef %88, ptr noundef nonnull %11, ptr noundef nonnull %89) #20
  %90 = load <2 x i32>, ptr %11, align 8, !tbaa !68
  store <2 x i32> %90, ptr %2, align 4, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #21
  br label %148

91:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #21
  store i64 0, ptr %12, align 8
  %92 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %93 = load ptr, ptr %92, align 8, !tbaa !61
  %94 = load float, ptr %1, align 4, !tbaa !59
  %95 = getelementptr inbounds float, ptr %1, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !59
  %97 = getelementptr inbounds [2 x i32], ptr %12, i64 0, i64 1
  call void @UI_view2d_view_to_region(ptr noundef %93, float noundef %94, float noundef %96, ptr noundef nonnull %12, ptr noundef nonnull %97) #20
  %98 = load <2 x i32>, ptr %12, align 8, !tbaa !68
  store <2 x i32> %98, ptr %2, align 4, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  br label %148

99:                                               ; preds = %4
  %100 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %101 = load ptr, ptr %100, align 8, !tbaa !62
  %102 = getelementptr inbounds %struct.ScrArea, ptr %101, i64 0, i32 19
  %103 = load ptr, ptr %102, align 8, !tbaa !63
  %104 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %105 = load i32, ptr %104, align 8, !tbaa !58
  %106 = and i32 %105, 128
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %127, label %108

108:                                              ; preds = %99
  %109 = tail call ptr @ED_space_clip_get_clip(ptr noundef %103) #20
  %110 = icmp eq ptr %109, null
  br i1 %110, label %125, label %111

111:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #21
  call void @ED_space_clip_get_aspect(ptr noundef %103, ptr noundef nonnull %13, ptr noundef nonnull %14) #20
  call fastcc void @copy_v2_v2(ptr noundef nonnull %15, ptr noundef %1) #22
  %112 = load float, ptr %13, align 4, !tbaa !59
  %113 = load float, ptr %14, align 4, !tbaa !59
  %114 = load <2 x float>, ptr %15, align 8, !tbaa !59
  %115 = insertelement <2 x float> poison, float %112, i64 0
  %116 = insertelement <2 x float> %115, float %113, i64 1
  %117 = fdiv <2 x float> %114, %116
  store <2 x float> %117, ptr %15, align 8, !tbaa !59
  %118 = getelementptr inbounds %struct.SpaceClip, ptr %103, i64 0, i32 10
  %119 = load ptr, ptr %118, align 8, !tbaa !75
  %120 = getelementptr inbounds %struct.SpaceClip, ptr %103, i64 0, i32 9
  call void @BKE_mask_coord_to_movieclip(ptr noundef %119, ptr noundef nonnull %120, ptr noundef nonnull %15, ptr noundef nonnull %15) #20
  %121 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %122 = load ptr, ptr %121, align 8, !tbaa !48
  call void @ED_clip_point_stable_pos__reverse(ptr noundef %103, ptr noundef %122, ptr noundef nonnull %15, ptr noundef nonnull %15) #20
  %123 = load <2 x float>, ptr %15, align 8, !tbaa !59
  %124 = fptosi <2 x float> %123 to <2 x i32>
  store <2 x i32> %124, ptr %2, align 4, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #21
  br label %148

125:                                              ; preds = %108
  store i32 0, ptr %2, align 4, !tbaa !68
  %126 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 0, ptr %126, align 4, !tbaa !68
  br label %148

127:                                              ; preds = %99
  %128 = and i32 %105, 64
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %148, label %130

130:                                              ; preds = %127
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #21
  call fastcc void @copy_v2_v2(ptr noundef nonnull %16, ptr noundef %1) #22
  call void @ED_space_clip_get_aspect_dimension_aware(ptr noundef %103, ptr noundef nonnull %17, ptr noundef nonnull %18) #20
  %131 = load float, ptr %17, align 4, !tbaa !59
  %132 = load float, ptr %16, align 4, !tbaa !59
  %133 = fdiv float %132, %131
  %134 = load float, ptr %18, align 4, !tbaa !59
  %135 = getelementptr inbounds [2 x float], ptr %16, i64 0, i64 1
  %136 = load float, ptr %135, align 4, !tbaa !59
  %137 = fdiv float %136, %134
  %138 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %139 = load ptr, ptr %138, align 8, !tbaa !61
  %140 = getelementptr inbounds i32, ptr %2, i64 1
  call void @UI_view2d_view_to_region(ptr noundef %139, float noundef %133, float noundef %137, ptr noundef %2, ptr noundef nonnull %140) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #21
  br label %148

141:                                              ; preds = %4
  %142 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %143 = load ptr, ptr %142, align 8, !tbaa !61
  %144 = load float, ptr %1, align 4, !tbaa !59
  %145 = getelementptr inbounds float, ptr %1, i64 1
  %146 = load float, ptr %145, align 4, !tbaa !59
  %147 = getelementptr inbounds i32, ptr %2, i64 1
  tail call void @UI_view2d_view_to_region(ptr noundef %143, float noundef %144, float noundef %146, ptr noundef %2, ptr noundef nonnull %147) #20
  br label %148

148:                                              ; preds = %4, %127, %130, %125, %111, %38, %61, %58, %83, %141, %91, %75, %21, %30, %27
  ret void
}

; Function Attrs: optsize
declare i32 @ED_view3d_project_int_global(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !80 {
  %3 = load float, ptr %1, align 4, !tbaa !59
  store float %3, ptr %0, align 4, !tbaa !59
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !59
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare void @BKE_mask_coord_to_image(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_image_point_pos__reverse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_view_to_region(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: optsize
declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_coord_to_movieclip(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_clip_point_stable_pos__reverse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @projectIntView(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @projectIntViewEx(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @projectFloatViewEx(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x i32], align 8
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %7 = load i8, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i8 %7, 1
  br i1 %8, label %9, label %34

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
  br label %37

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 8
  %23 = load i16, ptr %22, align 2, !tbaa !49
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = tail call i32 @ED_view3d_project_float_global(ptr noundef nonnull %21, ptr noundef %1, ptr noundef %2, i32 noundef %3) #20
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %20, align 8, !tbaa !48
  %30 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 5
  %31 = load <2 x i16>, ptr %30, align 8, !tbaa !81
  %32 = sitofp <2 x i16> %31 to <2 x float>
  %33 = fmul <2 x float> %32, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %33, ptr %2, align 4, !tbaa !59
  br label %37

34:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  store i64 0, ptr %5, align 8
  call void @projectIntView(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %5) #22
  %35 = load <2 x i32>, ptr %5, align 8, !tbaa !68
  %36 = sitofp <2 x i32> %35 to <2 x float>
  store <2 x float> %36, ptr %2, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %37

37:                                               ; preds = %14, %19, %25, %28, %34
  ret void
}

; Function Attrs: optsize
declare i32 @ED_view3d_project_float_global(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @projectFloatView(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @projectFloatViewEx(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @applyAspectRatio(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
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
  %12 = load i32, ptr %0, align 8, !tbaa !82
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %71

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !58
  %17 = and i32 %16, 256
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %71

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  %22 = getelementptr inbounds %struct.ScrArea, ptr %21, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %24 = getelementptr inbounds %struct.SpaceImage, ptr %23, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !83
  %26 = and i32 %25, 512
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  call void @ED_space_image_get_size(ptr noundef nonnull %23, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %29 = load i32, ptr %5, align 4, !tbaa !68
  %30 = load i32, ptr %6, align 4, !tbaa !68
  %31 = insertelement <2 x i32> poison, i32 %29, i64 0
  %32 = insertelement <2 x i32> %31, i32 %30, i64 1
  %33 = sitofp <2 x i32> %32 to <2 x float>
  %34 = load <2 x float>, ptr %1, align 4, !tbaa !59
  %35 = fmul <2 x float> %34, %33
  store <2 x float> %35, ptr %1, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  br label %36

36:                                               ; preds = %28, %19
  call void @ED_space_image_get_uv_aspect(ptr noundef nonnull %23, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %37 = load float, ptr %3, align 4, !tbaa !59
  %38 = load float, ptr %4, align 4, !tbaa !59
  %39 = load <2 x float>, ptr %1, align 4, !tbaa !59
  %40 = insertelement <2 x float> poison, float %37, i64 0
  %41 = insertelement <2 x float> %40, float %38, i64 1
  %42 = fdiv <2 x float> %39, %41
  store <2 x float> %42, ptr %1, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  br label %71

43:                                               ; preds = %2
  %44 = load i32, ptr %0, align 8, !tbaa !82
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
  %53 = load ptr, ptr %52, align 8, !tbaa !62
  %54 = getelementptr inbounds %struct.ScrArea, ptr %53, i64 0, i32 19
  %55 = load ptr, ptr %54, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #21
  %56 = and i32 %48, 64
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  call void @ED_space_clip_get_aspect_dimension_aware(ptr noundef %55, ptr noundef nonnull %7, ptr noundef nonnull %8) #20
  br label %63

59:                                               ; preds = %51
  %60 = and i32 %48, 128
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %59
  call void @ED_space_clip_get_aspect(ptr noundef %55, ptr noundef nonnull %7, ptr noundef nonnull %8) #20
  br label %63

63:                                               ; preds = %58, %62
  %64 = load float, ptr %7, align 4, !tbaa !59
  %65 = load float, ptr %8, align 4, !tbaa !59
  %66 = load <2 x float>, ptr %1, align 4, !tbaa !59
  %67 = insertelement <2 x float> poison, float %64, i64 0
  %68 = insertelement <2 x float> %67, float %65, i64 1
  %69 = fdiv <2 x float> %66, %68
  store <2 x float> %69, ptr %1, align 4, !tbaa !59
  br label %70

70:                                               ; preds = %63, %59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  br label %71

71:                                               ; preds = %2, %11, %14, %43, %70, %46, %36
  ret void
}

; Function Attrs: optsize
declare void @ED_space_image_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @removeAspectRatio(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %10 = load i8, ptr %9, align 8, !tbaa !34
  switch i8 %10, label %65 [
    i8 6, label %11
    i8 20, label %38
  ]

11:                                               ; preds = %2
  %12 = load i32, ptr %0, align 8, !tbaa !82
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %65

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  %17 = getelementptr inbounds %struct.ScrArea, ptr %16, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %19 = getelementptr inbounds %struct.SpaceImage, ptr %18, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !83
  %21 = and i32 %20, 512
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  call void @ED_space_image_get_size(ptr noundef nonnull %18, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %24 = load i32, ptr %5, align 4, !tbaa !68
  %25 = load i32, ptr %6, align 4, !tbaa !68
  %26 = insertelement <2 x i32> poison, i32 %24, i64 0
  %27 = insertelement <2 x i32> %26, i32 %25, i64 1
  %28 = sitofp <2 x i32> %27 to <2 x float>
  %29 = load <2 x float>, ptr %1, align 4, !tbaa !59
  %30 = fdiv <2 x float> %29, %28
  store <2 x float> %30, ptr %1, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  br label %31

31:                                               ; preds = %23, %14
  call void @ED_space_image_get_uv_aspect(ptr noundef nonnull %18, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %32 = load float, ptr %3, align 4, !tbaa !59
  %33 = load float, ptr %4, align 4, !tbaa !59
  %34 = load <2 x float>, ptr %1, align 4, !tbaa !59
  %35 = insertelement <2 x float> poison, float %32, i64 0
  %36 = insertelement <2 x float> %35, float %33, i64 1
  %37 = fmul <2 x float> %36, %34
  store <2 x float> %37, ptr %1, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  br label %65

38:                                               ; preds = %2
  %39 = load i32, ptr %0, align 8, !tbaa !82
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %65

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %43 = load i32, ptr %42, align 8, !tbaa !58
  %44 = and i32 %43, 192
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %48 = load ptr, ptr %47, align 8, !tbaa !62
  %49 = getelementptr inbounds %struct.ScrArea, ptr %48, i64 0, i32 19
  %50 = load ptr, ptr %49, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  store float 1.000000e+00, ptr %7, align 4, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #21
  store float 1.000000e+00, ptr %8, align 4, !tbaa !59
  %51 = and i32 %43, 64
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  call void @ED_space_clip_get_aspect_dimension_aware(ptr noundef %50, ptr noundef nonnull %7, ptr noundef nonnull %8) #20
  br label %58

54:                                               ; preds = %46
  %55 = and i32 %43, 128
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  call void @ED_space_clip_get_aspect(ptr noundef %50, ptr noundef nonnull %7, ptr noundef nonnull %8) #20
  br label %58

58:                                               ; preds = %54, %57, %53
  %59 = load float, ptr %7, align 4, !tbaa !59
  %60 = load float, ptr %8, align 4, !tbaa !59
  %61 = load <2 x float>, ptr %1, align 4, !tbaa !59
  %62 = insertelement <2 x float> poison, float %59, i64 0
  %63 = insertelement <2 x float> %62, float %60, i64 1
  %64 = fmul <2 x float> %63, %61
  store <2 x float> %64, ptr %1, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  br label %65

65:                                               ; preds = %2, %11, %38, %58, %41, %31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @transform_modal_keymap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_modalkeymap_get(ptr noundef %0, ptr noundef nonnull @.str.54) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %35

8:                                                ; preds = %4, %1
  %9 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef nonnull @.str.54, ptr noundef nonnull @transform_modal_keymap.modal_items) #20
  %10 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 218, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 1) #20
  %11 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 1, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #20
  %12 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 220, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #20
  %13 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 163, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 2) #20
  %14 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 103, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 3) #20
  %15 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 114, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 4) #20
  %16 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 115, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 5) #20
  %17 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 219, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 8) #20
  %18 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 212, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 6) #20
  %19 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 212, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 7) #20
  %20 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 215, i32 noundef 1, i32 noundef -1, i32 noundef 0, i32 noundef 6) #20
  %21 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 215, i32 noundef 2, i32 noundef -1, i32 noundef 0, i32 noundef 7) #20
  %22 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 16) #20
  %23 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 97, i32 noundef 1, i32 noundef 4, i32 noundef 0, i32 noundef 17) #20
  %24 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 168, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 20) #20
  %25 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 169, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 21) #20
  %26 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 11, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 20) #20
  %27 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 10, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 21) #20
  %28 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 14, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 26) #20
  %29 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 11, i32 noundef 1, i32 noundef 4, i32 noundef 0, i32 noundef 24) #20
  %30 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 10, i32 noundef 1, i32 noundef 4, i32 noundef 0, i32 noundef 25) #20
  %31 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 168, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 22) #20
  %32 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 169, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 23) #20
  %33 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 11, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 22) #20
  %34 = tail call ptr @WM_modalkeymap_add_item(ptr noundef %9, i32 noundef 10, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 23) #20
  br label %35

35:                                               ; preds = %4, %8
  %36 = phi ptr [ %9, %8 ], [ null, %4 ]
  ret ptr %36
}

; Function Attrs: optsize
declare ptr @WM_modalkeymap_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_modalkeymap_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_modalkeymap_add_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @transformEvent(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = tail call zeroext i8 @constraintModeToChar(ptr noundef %0) #20
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  %6 = tail call i32 @handleMouseInput(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1) #20
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 17
  %8 = load i32, ptr %7, align 8, !tbaa !86
  %9 = or i32 %8, %6
  store i32 %9, ptr %7, align 8, !tbaa !86
  %10 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %11 = load i16, ptr %10, align 2, !tbaa !87
  %12 = icmp eq i16 %11, 1
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %15 = load i16, ptr %14, align 8, !tbaa !89
  %16 = icmp eq i16 %15, 20514
  br i1 %16, label %17, label %29

17:                                               ; preds = %13, %2
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %19 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %18) #20
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 53
  %23 = load ptr, ptr %22, align 8, !tbaa !90
  %24 = tail call zeroext i8 @handleNumInput(ptr noundef %23, ptr noundef nonnull %18, ptr noundef nonnull %1) #20
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, ptr %7, align 8, !tbaa !86
  %28 = or i32 %27, 1
  store i32 %28, ptr %7, align 8, !tbaa !86
  br label %572

29:                                               ; preds = %21, %17, %13
  %30 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %31 = load i16, ptr %30, align 8, !tbaa !89
  switch i16 %31, label %346 [
    i16 4, label %32
    i16 20514, label %55
  ]

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !91
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %39 = load i32, ptr %38, align 4, !tbaa !92
  %40 = or i32 %39, 16
  store i32 %40, ptr %38, align 4, !tbaa !92
  br label %41

41:                                               ; preds = %37, %32
  %42 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61
  %43 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  tail call fastcc void @copy_v2_v2_int(ptr noundef nonnull %42, ptr noundef nonnull %43) #22
  %44 = load i32, ptr %7, align 8, !tbaa !86
  %45 = or i32 %44, 1
  store i32 %45, ptr %7, align 8, !tbaa !86
  %46 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %47 = load i16, ptr %46, align 4, !tbaa !93
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i16 1, ptr %46, align 4, !tbaa !93
  br label %50

50:                                               ; preds = %49, %41
  %51 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  tail call void @applyMouseInput(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %42, ptr noundef nonnull %51) #20
  %52 = tail call i32 @handleSnapping(ptr noundef nonnull %0, ptr noundef nonnull %1) #20
  %53 = load i32, ptr %7, align 8, !tbaa !86
  %54 = or i32 %53, %52
  store i32 %54, ptr %7, align 8, !tbaa !86
  br label %572

55:                                               ; preds = %29
  %56 = load i16, ptr %10, align 2, !tbaa !87
  switch i16 %56, label %572 [
    i16 1, label %57
    i16 2, label %59
    i16 3, label %61
    i16 4, label %114
    i16 5, label %129
    i16 6, label %161
    i16 7, label %167
    i16 8, label %173
    i16 9, label %179
    i16 10, label %187
    i16 11, label %195
    i16 12, label %203
    i16 13, label %217
    i16 14, label %231
    i16 15, label %245
    i16 16, label %253
    i16 17, label %256
    i16 26, label %259
    i16 20, label %291
    i16 21, label %316
    i16 24, label %327
    i16 25, label %327
    i16 22, label %330
    i16 23, label %338
  ]

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  store i16 3, ptr %58, align 4, !tbaa !93
  br label %572

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  store i16 2, ptr %60, align 4, !tbaa !93
  br label %572

61:                                               ; preds = %55
  %62 = load i32, ptr %0, align 8, !tbaa !82
  switch i32 %62, label %74 [
    i32 2, label %63
    i32 3, label %63
    i32 10, label %63
    i32 28, label %63
    i32 29, label %63
    i32 30, label %68
  ]

63:                                               ; preds = %61, %61, %61, %61, %61
  tail call void @resetTransModal(ptr noundef nonnull %0) #20
  tail call void @resetTransRestrictions(ptr noundef nonnull %0) #20
  tail call void @restoreTransObjects(ptr noundef nonnull %0) #20
  tail call fastcc void @initTranslation(ptr noundef nonnull %0) #22
  tail call void @initSnapping(ptr noundef nonnull %0, ptr noundef null) #20
  %64 = load i32, ptr %7, align 8, !tbaa !86
  %65 = or i32 %64, 1
  store i32 %65, ptr %7, align 8, !tbaa !86
  %66 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 53
  %67 = load ptr, ptr %66, align 8, !tbaa !90
  tail call void @WM_event_add_mousemove(ptr noundef %67) #20
  br label %572

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !94
  %71 = xor i32 %70, 16777216
  store i32 %71, ptr %69, align 4, !tbaa !94
  %72 = load i32, ptr %7, align 8, !tbaa !86
  %73 = or i32 %72, 1
  store i32 %73, ptr %7, align 8, !tbaa !86
  br label %572

74:                                               ; preds = %61
  %75 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %76 = load ptr, ptr %75, align 8, !tbaa !95
  %77 = icmp eq ptr %76, null
  br i1 %77, label %101, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.Object, ptr %76, i64 0, i32 3
  %80 = load i16, ptr %79, align 8, !tbaa !96
  %81 = icmp eq i16 %80, 1
  br i1 %81, label %82, label %101

82:                                               ; preds = %78
  %83 = icmp eq i32 %62, 1
  br i1 %83, label %84, label %572

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %86 = load i8, ptr %85, align 8, !tbaa !34
  %87 = icmp eq i8 %86, 1
  br i1 %87, label %88, label %572

88:                                               ; preds = %84
  tail call void @resetTransModal(ptr noundef nonnull %0) #20
  tail call void @resetTransRestrictions(ptr noundef nonnull %0) #20
  tail call void @restoreTransObjects(ptr noundef nonnull %0) #20
  tail call fastcc void @initEdgeSlide(ptr noundef nonnull %0) #22
  %89 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %90 = load i16, ptr %89, align 4, !tbaa !93
  %91 = icmp eq i16 %90, 3
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  store i16 0, ptr %89, align 4, !tbaa !93
  tail call fastcc void @initVertSlide(ptr noundef nonnull %0) #22
  %93 = load i16, ptr %89, align 4, !tbaa !93
  %94 = icmp eq i16 %93, 3
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i16 0, ptr %89, align 4, !tbaa !93
  tail call void @resetTransRestrictions(ptr noundef nonnull %0) #20
  tail call void @restoreTransObjects(ptr noundef nonnull %0) #20
  tail call fastcc void @initTranslation(ptr noundef nonnull %0) #22
  br label %96

96:                                               ; preds = %88, %95, %92
  tail call void @initSnapping(ptr noundef nonnull %0, ptr noundef null) #20
  %97 = load i32, ptr %7, align 8, !tbaa !86
  %98 = or i32 %97, 1
  store i32 %98, ptr %7, align 8, !tbaa !86
  %99 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 53
  %100 = load ptr, ptr %99, align 8, !tbaa !90
  tail call void @WM_event_add_mousemove(ptr noundef %100) #20
  br label %572

101:                                              ; preds = %78, %74
  %102 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %103 = load i32, ptr %102, align 8, !tbaa !58
  %104 = and i32 %103, 192
  %105 = icmp ne i32 %104, 0
  %106 = icmp eq i32 %62, 1
  %107 = and i1 %106, %105
  br i1 %107, label %108, label %572

108:                                              ; preds = %101
  tail call void @restoreTransObjects(ptr noundef nonnull %0) #20
  %109 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %110 = load i32, ptr %109, align 4, !tbaa !94
  %111 = xor i32 %110, 16777216
  store i32 %111, ptr %109, align 4, !tbaa !94
  %112 = load i32, ptr %7, align 8, !tbaa !86
  %113 = or i32 %112, 1
  store i32 %113, ptr %7, align 8, !tbaa !86
  br label %572

114:                                              ; preds = %55
  %115 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %116 = load i32, ptr %115, align 8, !tbaa !58
  %117 = and i32 %116, 193
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %572

119:                                              ; preds = %114
  %120 = load i32, ptr %0, align 8, !tbaa !82
  switch i32 %120, label %572 [
    i32 2, label %121
    i32 3, label %121
    i32 10, label %121
    i32 1, label %121
    i32 28, label %121
    i32 29, label %121
  ]

121:                                              ; preds = %119, %119, %119, %119, %119, %119
  tail call void @resetTransModal(ptr noundef nonnull %0) #20
  tail call void @resetTransRestrictions(ptr noundef nonnull %0) #20
  %122 = load i32, ptr %0, align 8, !tbaa !82
  %123 = icmp eq i32 %122, 2
  tail call void @restoreTransObjects(ptr noundef nonnull %0) #20
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  tail call fastcc void @initTrackball(ptr noundef nonnull %0) #22
  br label %126

125:                                              ; preds = %121
  tail call fastcc void @initRotation(ptr noundef nonnull %0) #22
  br label %126

126:                                              ; preds = %125, %124
  tail call void @initSnapping(ptr noundef nonnull %0, ptr noundef null) #20
  %127 = load i32, ptr %7, align 8, !tbaa !86
  %128 = or i32 %127, 1
  store i32 %128, ptr %7, align 8, !tbaa !86
  br label %572

129:                                              ; preds = %55
  %130 = load i32, ptr %0, align 8, !tbaa !82
  switch i32 %130, label %572 [
    i32 2, label %131
    i32 1, label %131
    i32 10, label %131
    i32 28, label %131
    i32 29, label %131
    i32 8, label %144
    i32 3, label %150
  ]

131:                                              ; preds = %129, %129, %129, %129, %129
  %132 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %133 = load i32, ptr %132, align 4, !tbaa !92
  %134 = and i32 %133, 1
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13
  %138 = load i16, ptr %137, align 8, !tbaa !101
  %139 = icmp eq i16 %138, 2
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  tail call void @stopConstraint(ptr noundef nonnull %0) #20
  br label %141

141:                                              ; preds = %140, %136, %131
  tail call void @resetTransModal(ptr noundef nonnull %0) #20
  tail call void @resetTransRestrictions(ptr noundef nonnull %0) #20
  tail call void @restoreTransObjects(ptr noundef nonnull %0) #20
  tail call fastcc void @initResize(ptr noundef nonnull %0) #22
  tail call void @initSnapping(ptr noundef nonnull %0, ptr noundef null) #20
  %142 = load i32, ptr %7, align 8, !tbaa !86
  %143 = or i32 %142, 1
  store i32 %143, ptr %7, align 8, !tbaa !86
  br label %572

144:                                              ; preds = %129
  %145 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %146 = load i32, ptr %145, align 4, !tbaa !94
  %147 = xor i32 %146, 16777216
  store i32 %147, ptr %145, align 4, !tbaa !94
  %148 = load i32, ptr %7, align 8, !tbaa !86
  %149 = or i32 %148, 1
  store i32 %149, ptr %7, align 8, !tbaa !86
  br label %572

150:                                              ; preds = %129
  %151 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %152 = load i32, ptr %151, align 8, !tbaa !58
  %153 = and i32 %152, 64
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %572, label %155

155:                                              ; preds = %150
  tail call void @restoreTransObjects(ptr noundef nonnull %0) #20
  %156 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %157 = load i32, ptr %156, align 4, !tbaa !94
  %158 = xor i32 %157, 16777216
  store i32 %158, ptr %156, align 4, !tbaa !94
  %159 = load i32, ptr %7, align 8, !tbaa !86
  %160 = or i32 %159, 1
  store i32 %160, ptr %7, align 8, !tbaa !86
  br label %572

161:                                              ; preds = %55
  %162 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %163 = load i32, ptr %162, align 8, !tbaa !91
  %164 = or i32 %163, 8
  store i32 %164, ptr %162, align 8, !tbaa !91
  %165 = load i32, ptr %7, align 8, !tbaa !86
  %166 = or i32 %165, 1
  store i32 %166, ptr %7, align 8, !tbaa !86
  br label %572

167:                                              ; preds = %55
  %168 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %169 = load i32, ptr %168, align 8, !tbaa !91
  %170 = and i32 %169, -9
  store i32 %170, ptr %168, align 8, !tbaa !91
  %171 = load i32, ptr %7, align 8, !tbaa !86
  %172 = or i32 %171, 1
  store i32 %172, ptr %7, align 8, !tbaa !86
  br label %572

173:                                              ; preds = %55
  %174 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %175 = load i32, ptr %174, align 8, !tbaa !91
  %176 = xor i32 %175, 4
  store i32 %176, ptr %174, align 8, !tbaa !91
  %177 = load i32, ptr %7, align 8, !tbaa !86
  %178 = or i32 %177, 1
  store i32 %178, ptr %7, align 8, !tbaa !86
  br label %572

179:                                              ; preds = %55
  %180 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %181 = load i32, ptr %180, align 4, !tbaa !94
  %182 = and i32 %181, 256
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %572

184:                                              ; preds = %179
  tail call fastcc void @transform_event_xyz_constraint(ptr noundef nonnull %0, i16 noundef signext 120, i8 noundef zeroext %4) #22
  %185 = load i32, ptr %7, align 8, !tbaa !86
  %186 = or i32 %185, 1
  store i32 %186, ptr %7, align 8, !tbaa !86
  br label %572

187:                                              ; preds = %55
  %188 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %189 = load i32, ptr %188, align 4, !tbaa !94
  %190 = and i32 %189, 256
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %572

192:                                              ; preds = %187
  tail call fastcc void @transform_event_xyz_constraint(ptr noundef nonnull %0, i16 noundef signext 121, i8 noundef zeroext %4) #22
  %193 = load i32, ptr %7, align 8, !tbaa !86
  %194 = or i32 %193, 1
  store i32 %194, ptr %7, align 8, !tbaa !86
  br label %572

195:                                              ; preds = %55
  %196 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %197 = load i32, ptr %196, align 4, !tbaa !94
  %198 = and i32 %197, 256
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %572

200:                                              ; preds = %195
  tail call fastcc void @transform_event_xyz_constraint(ptr noundef nonnull %0, i16 noundef signext 122, i8 noundef zeroext %4) #22
  %201 = load i32, ptr %7, align 8, !tbaa !86
  %202 = or i32 %201, 1
  store i32 %202, ptr %7, align 8, !tbaa !86
  br label %572

203:                                              ; preds = %55
  %204 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %205 = load i32, ptr %204, align 4, !tbaa !94
  %206 = and i32 %205, 33024
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %572

208:                                              ; preds = %203
  %209 = icmp eq i8 %4, 88
  br i1 %209, label %210, label %211

210:                                              ; preds = %208
  tail call void @stopConstraint(ptr noundef nonnull %0) #20
  br label %214

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 43
  %213 = load i16, ptr %212, align 2, !tbaa !102
  tail call void @setUserConstraint(ptr noundef nonnull %0, i16 noundef signext %213, i32 noundef 12, ptr noundef nonnull @.str.55) #20
  br label %214

214:                                              ; preds = %211, %210
  %215 = load i32, ptr %7, align 8, !tbaa !86
  %216 = or i32 %215, 1
  store i32 %216, ptr %7, align 8, !tbaa !86
  br label %572

217:                                              ; preds = %55
  %218 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %219 = load i32, ptr %218, align 4, !tbaa !94
  %220 = and i32 %219, 33024
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %572

222:                                              ; preds = %217
  %223 = icmp eq i8 %4, 89
  br i1 %223, label %224, label %225

224:                                              ; preds = %222
  tail call void @stopConstraint(ptr noundef nonnull %0) #20
  br label %228

225:                                              ; preds = %222
  %226 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 43
  %227 = load i16, ptr %226, align 2, !tbaa !102
  tail call void @setUserConstraint(ptr noundef nonnull %0, i16 noundef signext %227, i32 noundef 10, ptr noundef nonnull @.str.56) #20
  br label %228

228:                                              ; preds = %225, %224
  %229 = load i32, ptr %7, align 8, !tbaa !86
  %230 = or i32 %229, 1
  store i32 %230, ptr %7, align 8, !tbaa !86
  br label %572

231:                                              ; preds = %55
  %232 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %233 = load i32, ptr %232, align 4, !tbaa !94
  %234 = and i32 %233, 33024
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %572

236:                                              ; preds = %231
  %237 = icmp eq i8 %4, 90
  br i1 %237, label %238, label %239

238:                                              ; preds = %236
  tail call void @stopConstraint(ptr noundef nonnull %0) #20
  br label %242

239:                                              ; preds = %236
  %240 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 43
  %241 = load i16, ptr %240, align 2, !tbaa !102
  tail call void @setUserConstraint(ptr noundef nonnull %0, i16 noundef signext %241, i32 noundef 6, ptr noundef nonnull @.str.57) #20
  br label %242

242:                                              ; preds = %239, %238
  %243 = load i32, ptr %7, align 8, !tbaa !86
  %244 = or i32 %243, 1
  store i32 %244, ptr %7, align 8, !tbaa !86
  br label %572

245:                                              ; preds = %55
  %246 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %247 = load i32, ptr %246, align 4, !tbaa !94
  %248 = and i32 %247, 256
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %572

250:                                              ; preds = %245
  tail call void @stopConstraint(ptr noundef nonnull %0) #20
  %251 = load i32, ptr %7, align 8, !tbaa !86
  %252 = or i32 %251, 1
  store i32 %252, ptr %7, align 8, !tbaa !86
  br label %572

253:                                              ; preds = %55
  tail call void @addSnapPoint(ptr noundef nonnull %0) #20
  %254 = load i32, ptr %7, align 8, !tbaa !86
  %255 = or i32 %254, 1
  store i32 %255, ptr %7, align 8, !tbaa !86
  br label %572

256:                                              ; preds = %55
  tail call void @removeSnapPoint(ptr noundef nonnull %0) #20
  %257 = load i32, ptr %7, align 8, !tbaa !86
  %258 = or i32 %257, 1
  store i32 %258, ptr %7, align 8, !tbaa !86
  br label %572

259:                                              ; preds = %55
  %260 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %261 = load i32, ptr %260, align 4, !tbaa !94
  %262 = and i32 %261, 2048
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %572, label %264

264:                                              ; preds = %259
  %265 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  %266 = load i32, ptr %265, align 8, !tbaa !103
  %267 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 13
  %268 = load i32, ptr %267, align 4, !tbaa !104
  %269 = sub nsw i32 %266, %268
  %270 = sitofp i32 %269 to float
  %271 = tail call float @llvm.fmuladd.f32(float %270, float 0x3F747AE140000000, float 1.000000e+00)
  %272 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 18
  %273 = load float, ptr %272, align 4, !tbaa !105
  %274 = fmul float %273, %271
  store float %274, ptr %272, align 4, !tbaa !105
  %275 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %276 = load i8, ptr %275, align 8, !tbaa !34
  %277 = icmp eq i8 %276, 1
  br i1 %277, label %278, label %288

278:                                              ; preds = %264
  %279 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 31
  %280 = load i16, ptr %279, align 4, !tbaa !57
  %281 = icmp eq i16 %280, 0
  br i1 %281, label %288, label %282

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %284 = load ptr, ptr %283, align 8, !tbaa !61
  %285 = getelementptr inbounds %struct.View3D, ptr %284, i64 0, i32 33
  %286 = load float, ptr %285, align 8, !tbaa !106
  %287 = tail call fastcc float @min_ff(float noundef %274, float noundef %286) #22
  store float %287, ptr %272, align 4, !tbaa !105
  br label %288

288:                                              ; preds = %282, %278, %264
  tail call void @calculatePropRatio(ptr noundef nonnull %0) #20
  %289 = load i32, ptr %7, align 8, !tbaa !86
  %290 = or i32 %289, 1
  store i32 %290, ptr %7, align 8, !tbaa !86
  br label %572

291:                                              ; preds = %55
  %292 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %293 = load i32, ptr %292, align 4, !tbaa !94
  %294 = and i32 %293, 2048
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %572, label %296

296:                                              ; preds = %291
  %297 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 18
  %298 = load float, ptr %297, align 4, !tbaa !105
  %299 = fmul float %298, 0x3FF19999A0000000
  store float %299, ptr %297, align 4, !tbaa !105
  %300 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %301 = load i8, ptr %300, align 8, !tbaa !34
  %302 = icmp eq i8 %301, 1
  br i1 %302, label %303, label %313

303:                                              ; preds = %296
  %304 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 31
  %305 = load i16, ptr %304, align 4, !tbaa !57
  %306 = icmp eq i16 %305, 0
  br i1 %306, label %313, label %307

307:                                              ; preds = %303
  %308 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %309 = load ptr, ptr %308, align 8, !tbaa !61
  %310 = getelementptr inbounds %struct.View3D, ptr %309, i64 0, i32 33
  %311 = load float, ptr %310, align 8, !tbaa !106
  %312 = tail call fastcc float @min_ff(float noundef %299, float noundef %311) #22
  store float %312, ptr %297, align 4, !tbaa !105
  br label %313

313:                                              ; preds = %307, %303, %296
  tail call void @calculatePropRatio(ptr noundef nonnull %0) #20
  %314 = load i32, ptr %7, align 8, !tbaa !86
  %315 = or i32 %314, 1
  store i32 %315, ptr %7, align 8, !tbaa !86
  br label %572

316:                                              ; preds = %55
  %317 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %318 = load i32, ptr %317, align 4, !tbaa !94
  %319 = and i32 %318, 2048
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %572, label %321

321:                                              ; preds = %316
  %322 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 18
  %323 = load float, ptr %322, align 4, !tbaa !105
  %324 = fmul float %323, 0x3FED1745C0000000
  store float %324, ptr %322, align 4, !tbaa !105
  tail call void @calculatePropRatio(ptr noundef nonnull %0) #20
  %325 = load i32, ptr %7, align 8, !tbaa !86
  %326 = or i32 %325, 1
  store i32 %326, ptr %7, align 8, !tbaa !86
  br label %572

327:                                              ; preds = %55, %55
  %328 = load i32, ptr %7, align 8, !tbaa !86
  %329 = or i32 %328, 1
  store i32 %329, ptr %7, align 8, !tbaa !86
  br label %572

330:                                              ; preds = %55
  %331 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %332 = load i32, ptr %331, align 4, !tbaa !94
  %333 = and i32 %332, 262144
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %572, label %335

335:                                              ; preds = %330
  tail call void @transform_autoik_update(ptr noundef nonnull %0, i16 noundef signext 1) #20
  %336 = load i32, ptr %7, align 8, !tbaa !86
  %337 = or i32 %336, 1
  store i32 %337, ptr %7, align 8, !tbaa !86
  br label %572

338:                                              ; preds = %55
  %339 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %340 = load i32, ptr %339, align 4, !tbaa !94
  %341 = and i32 %340, 262144
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %572, label %343

343:                                              ; preds = %338
  tail call void @transform_autoik_update(ptr noundef nonnull %0, i16 noundef signext -1) #20
  %344 = load i32, ptr %7, align 8, !tbaa !86
  %345 = or i32 %344, 1
  store i32 %345, ptr %7, align 8, !tbaa !86
  br label %572

346:                                              ; preds = %29
  %347 = load i16, ptr %10, align 2, !tbaa !87
  switch i16 %347, label %572 [
    i16 1, label %348
    i16 2, label %534
  ]

348:                                              ; preds = %346
  switch i16 %31, label %529 [
    i16 3, label %349
    i16 217, label %351
    i16 216, label %351
    i16 221, label %357
    i16 2, label %359
    i16 218, label %392
    i16 163, label %394
    i16 220, label %394
    i16 103, label %396
    i16 115, label %401
    i16 114, label %406
    i16 99, label %421
    i16 120, label %442
    i16 121, label %442
    i16 122, label %442
    i16 111, label %448
    i16 164, label %466
    i16 168, label %493
    i16 11, label %493
    i16 162, label %500
    i16 169, label %513
    i16 10, label %513
    i16 213, label %520
    i16 214, label %520
  ]

349:                                              ; preds = %348
  %350 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  store i16 3, ptr %350, align 4, !tbaa !93
  br label %529

351:                                              ; preds = %348, %348
  %352 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %353 = load i32, ptr %352, align 8, !tbaa !91
  %354 = or i32 %353, 16
  store i32 %354, ptr %352, align 8, !tbaa !91
  %355 = load i32, ptr %7, align 8, !tbaa !86
  %356 = or i32 %355, 1
  store i32 %356, ptr %7, align 8, !tbaa !86
  br label %529

357:                                              ; preds = %348
  %358 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  store i16 2, ptr %358, align 4, !tbaa !93
  br label %529

359:                                              ; preds = %348
  %360 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %361 = load i32, ptr %360, align 4, !tbaa !94
  %362 = and i32 %361, 256
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %529

364:                                              ; preds = %359
  %365 = and i32 %361, 16
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %371, label %367

367:                                              ; preds = %364
  %368 = load i32, ptr %0, align 8, !tbaa !82
  switch i32 %368, label %389 [
    i32 1, label %369
    i32 2, label %370
  ]

369:                                              ; preds = %367
  tail call void @setLocalConstraint(ptr noundef nonnull %0, i32 noundef 8, ptr noundef nonnull @.str.58) #20
  br label %389

370:                                              ; preds = %367
  tail call void @restoreTransObjects(ptr noundef nonnull %0) #20
  tail call fastcc void @initTrackball(ptr noundef nonnull %0) #22
  br label %389

371:                                              ; preds = %364
  %372 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %373 = load i32, ptr %372, align 8, !tbaa !91
  %374 = or i32 %373, 1
  store i32 %374, ptr %372, align 8, !tbaa !91
  %375 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %376 = load i32, ptr %375, align 4, !tbaa !92
  %377 = and i32 %376, 1
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %380, label %379

379:                                              ; preds = %371
  tail call void @stopConstraint(ptr noundef nonnull %0) #20
  br label %389

380:                                              ; preds = %371
  %381 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 17
  %382 = load i16, ptr %381, align 8, !tbaa !108
  %383 = icmp eq i16 %382, 0
  br i1 %383, label %386, label %384

384:                                              ; preds = %380
  %385 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 37
  tail call void @initSelectConstraint(ptr noundef nonnull %0, ptr noundef nonnull %385) #20
  br label %388

386:                                              ; preds = %380
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #21
  %387 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %387, ptr noundef nonnull align 1 dereferenceable(7) @.str.59, i64 7, i1 false) #20
  call void @unit_m3(ptr noundef nonnull %3) #20
  call void @initSelectConstraint(ptr noundef nonnull %0, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #21
  br label %388

388:                                              ; preds = %386, %384
  call void @postSelectConstraint(ptr noundef nonnull %0) #20
  br label %389

389:                                              ; preds = %367, %379, %388, %369, %370
  %390 = load i32, ptr %7, align 8, !tbaa !86
  %391 = or i32 %390, 1
  store i32 %391, ptr %7, align 8, !tbaa !86
  br label %529

392:                                              ; preds = %348
  %393 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  store i16 3, ptr %393, align 4, !tbaa !93
  br label %529

394:                                              ; preds = %348, %348
  %395 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  store i16 2, ptr %395, align 4, !tbaa !93
  br label %529

396:                                              ; preds = %348
  %397 = load i32, ptr %0, align 8, !tbaa !82
  switch i32 %397, label %529 [
    i32 2, label %398
    i32 3, label %398
    i32 10, label %398
  ]

398:                                              ; preds = %396, %396, %396
  tail call void @resetTransModal(ptr noundef nonnull %0) #20
  tail call void @resetTransRestrictions(ptr noundef nonnull %0) #20
  tail call void @restoreTransObjects(ptr noundef nonnull %0) #20
  tail call fastcc void @initTranslation(ptr noundef nonnull %0) #22
  tail call void @initSnapping(ptr noundef nonnull %0, ptr noundef null) #20
  %399 = load i32, ptr %7, align 8, !tbaa !86
  %400 = or i32 %399, 1
  store i32 %400, ptr %7, align 8, !tbaa !86
  br label %529

401:                                              ; preds = %348
  %402 = load i32, ptr %0, align 8, !tbaa !82
  switch i32 %402, label %529 [
    i32 2, label %403
    i32 1, label %403
    i32 10, label %403
  ]

403:                                              ; preds = %401, %401, %401
  tail call void @resetTransModal(ptr noundef nonnull %0) #20
  tail call void @resetTransRestrictions(ptr noundef nonnull %0) #20
  tail call void @restoreTransObjects(ptr noundef nonnull %0) #20
  tail call fastcc void @initResize(ptr noundef nonnull %0) #22
  tail call void @initSnapping(ptr noundef nonnull %0, ptr noundef null) #20
  %404 = load i32, ptr %7, align 8, !tbaa !86
  %405 = or i32 %404, 1
  store i32 %405, ptr %7, align 8, !tbaa !86
  br label %529

406:                                              ; preds = %348
  %407 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %408 = load i32, ptr %407, align 8, !tbaa !58
  %409 = and i32 %408, 1
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %529

411:                                              ; preds = %406
  %412 = load i32, ptr %0, align 8, !tbaa !82
  switch i32 %412, label %529 [
    i32 2, label %413
    i32 3, label %413
    i32 10, label %413
    i32 1, label %413
  ]

413:                                              ; preds = %411, %411, %411, %411
  tail call void @resetTransModal(ptr noundef nonnull %0) #20
  tail call void @resetTransRestrictions(ptr noundef nonnull %0) #20
  %414 = load i32, ptr %0, align 8, !tbaa !82
  %415 = icmp eq i32 %414, 2
  tail call void @restoreTransObjects(ptr noundef nonnull %0) #20
  br i1 %415, label %416, label %417

416:                                              ; preds = %413
  tail call fastcc void @initTrackball(ptr noundef nonnull %0) #22
  br label %418

417:                                              ; preds = %413
  tail call fastcc void @initRotation(ptr noundef nonnull %0) #22
  br label %418

418:                                              ; preds = %417, %416
  tail call void @initSnapping(ptr noundef nonnull %0, ptr noundef null) #20
  %419 = load i32, ptr %7, align 8, !tbaa !86
  %420 = or i32 %419, 1
  store i32 %420, ptr %7, align 8, !tbaa !86
  br label %529

421:                                              ; preds = %348
  %422 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 19
  %423 = load i16, ptr %422, align 4, !tbaa !109
  %424 = icmp eq i16 %423, 0
  br i1 %424, label %434, label %425

425:                                              ; preds = %421
  %426 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %427 = load i32, ptr %426, align 8, !tbaa !58
  %428 = and i32 %427, 4
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %529

430:                                              ; preds = %425
  %431 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %432 = load i32, ptr %431, align 4, !tbaa !94
  %433 = xor i32 %432, 4096
  store i32 %433, ptr %431, align 4, !tbaa !94
  tail call void @sort_trans_data_dist(ptr noundef nonnull %0) #20
  tail call void @calculatePropRatio(ptr noundef nonnull %0) #20
  store i32 1, ptr %7, align 8, !tbaa !86
  br label %529

434:                                              ; preds = %421
  %435 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %436 = load i32, ptr %435, align 4, !tbaa !94
  %437 = and i32 %436, 256
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %529

439:                                              ; preds = %434
  tail call void @stopConstraint(ptr noundef nonnull %0) #20
  %440 = load i32, ptr %7, align 8, !tbaa !86
  %441 = or i32 %440, 1
  store i32 %441, ptr %7, align 8, !tbaa !86
  br label %529

442:                                              ; preds = %348, %348, %348
  %443 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %444 = load i32, ptr %443, align 4, !tbaa !94
  %445 = and i32 %444, 256
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %529

447:                                              ; preds = %442
  tail call fastcc void @transform_event_xyz_constraint(ptr noundef nonnull %0, i16 noundef signext %31, i8 noundef zeroext %4) #22
  br label %529

448:                                              ; preds = %348
  %449 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %450 = load i32, ptr %449, align 4, !tbaa !94
  %451 = and i32 %450, 2048
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %529, label %453

453:                                              ; preds = %448
  %454 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 17
  %455 = load i16, ptr %454, align 8, !tbaa !108
  %456 = icmp eq i16 %455, 0
  br i1 %456, label %529, label %457

457:                                              ; preds = %453
  %458 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 45
  %459 = load i16, ptr %458, align 2, !tbaa !110
  %460 = sext i16 %459 to i32
  %461 = add nsw i32 %460, 1
  %462 = srem i32 %461, 7
  %463 = trunc i32 %462 to i16
  store i16 %463, ptr %458, align 2, !tbaa !110
  tail call void @calculatePropRatio(ptr noundef nonnull %0) #20
  %464 = load i32, ptr %7, align 8, !tbaa !86
  %465 = or i32 %464, 1
  store i32 %465, ptr %7, align 8, !tbaa !86
  br label %529

466:                                              ; preds = %348
  %467 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 19
  %468 = load i16, ptr %467, align 4, !tbaa !109
  %469 = icmp eq i16 %468, 0
  br i1 %469, label %529, label %470

470:                                              ; preds = %466
  %471 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %472 = load i32, ptr %471, align 4, !tbaa !94
  %473 = and i32 %472, 2048
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %529, label %475

475:                                              ; preds = %470
  %476 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 18
  %477 = load float, ptr %476, align 4, !tbaa !105
  %478 = fmul float %477, 0x3FF19999A0000000
  store float %478, ptr %476, align 4, !tbaa !105
  %479 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %480 = load i8, ptr %479, align 8, !tbaa !34
  %481 = icmp eq i8 %480, 1
  br i1 %481, label %482, label %492

482:                                              ; preds = %475
  %483 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 31
  %484 = load i16, ptr %483, align 4, !tbaa !57
  %485 = icmp eq i16 %484, 0
  br i1 %485, label %492, label %486

486:                                              ; preds = %482
  %487 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %488 = load ptr, ptr %487, align 8, !tbaa !61
  %489 = getelementptr inbounds %struct.View3D, ptr %488, i64 0, i32 33
  %490 = load float, ptr %489, align 8, !tbaa !106
  %491 = tail call fastcc float @min_ff(float noundef %478, float noundef %490) #22
  store float %491, ptr %476, align 4, !tbaa !105
  br label %492

492:                                              ; preds = %486, %482, %475
  tail call void @calculatePropRatio(ptr noundef nonnull %0) #20
  store i32 1, ptr %7, align 8, !tbaa !86
  br label %529

493:                                              ; preds = %348, %348
  %494 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %495 = load i32, ptr %494, align 4, !tbaa !94
  %496 = and i32 %495, 262144
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %499, label %498

498:                                              ; preds = %493
  tail call void @transform_autoik_update(ptr noundef nonnull %0, i16 noundef signext 1) #20
  br label %499

499:                                              ; preds = %493, %498
  store i32 1, ptr %7, align 8, !tbaa !86
  br label %529

500:                                              ; preds = %348
  %501 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 19
  %502 = load i16, ptr %501, align 4, !tbaa !109
  %503 = icmp eq i16 %502, 0
  br i1 %503, label %529, label %504

504:                                              ; preds = %500
  %505 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %506 = load i32, ptr %505, align 4, !tbaa !94
  %507 = and i32 %506, 2048
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %529, label %509

509:                                              ; preds = %504
  %510 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 18
  %511 = load float, ptr %510, align 4, !tbaa !105
  %512 = fmul float %511, 0x3FED1745C0000000
  store float %512, ptr %510, align 4, !tbaa !105
  tail call void @calculatePropRatio(ptr noundef nonnull %0) #20
  store i32 1, ptr %7, align 8, !tbaa !86
  br label %529

513:                                              ; preds = %348, %348
  %514 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %515 = load i32, ptr %514, align 4, !tbaa !94
  %516 = and i32 %515, 262144
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %519, label %518

518:                                              ; preds = %513
  tail call void @transform_autoik_update(ptr noundef nonnull %0, i16 noundef signext -1) #20
  br label %519

519:                                              ; preds = %513, %518
  store i32 1, ptr %7, align 8, !tbaa !86
  br label %529

520:                                              ; preds = %348, %348
  %521 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %522 = load i8, ptr %521, align 8, !tbaa !34
  switch i8 %522, label %529 [
    i8 8, label %523
    i8 1, label %523
  ]

523:                                              ; preds = %520, %520
  %524 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %525 = load i32, ptr %524, align 4, !tbaa !94
  %526 = or i32 %525, 16777216
  store i32 %526, ptr %524, align 4, !tbaa !94
  %527 = load i32, ptr %7, align 8, !tbaa !86
  %528 = or i32 %527, 1
  store i32 %528, ptr %7, align 8, !tbaa !86
  br label %529

529:                                              ; preds = %520, %411, %401, %396, %348, %523, %500, %504, %509, %466, %470, %492, %448, %453, %457, %442, %447, %430, %425, %439, %434, %406, %418, %403, %398, %359, %389, %519, %499, %394, %392, %357, %351, %349
  %530 = phi i8 [ 0, %348 ], [ 1, %523 ], [ 1, %519 ], [ 1, %509 ], [ 0, %504 ], [ 0, %500 ], [ 1, %499 ], [ 1, %492 ], [ 0, %470 ], [ 0, %466 ], [ 1, %457 ], [ 0, %453 ], [ 0, %448 ], [ 0, %442 ], [ 1, %447 ], [ 0, %425 ], [ 1, %430 ], [ 0, %434 ], [ 1, %439 ], [ 0, %406 ], [ 1, %418 ], [ 1, %403 ], [ 1, %398 ], [ 1, %394 ], [ 1, %392 ], [ 1, %389 ], [ 0, %359 ], [ 1, %357 ], [ 1, %351 ], [ 1, %349 ], [ 0, %396 ], [ 0, %401 ], [ 0, %411 ], [ 0, %520 ]
  %531 = call i32 @handleSnapping(ptr noundef nonnull %0, ptr noundef nonnull %1) #20
  %532 = load i32, ptr %7, align 8, !tbaa !86
  %533 = or i32 %532, %531
  store i32 %533, ptr %7, align 8, !tbaa !86
  br label %572

534:                                              ; preds = %346
  switch i16 %31, label %558 [
    i16 217, label %535
    i16 216, label %535
    i16 2, label %539
    i16 213, label %548
    i16 214, label %548
  ]

535:                                              ; preds = %534, %534
  %536 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %537 = load i32, ptr %536, align 8, !tbaa !91
  %538 = and i32 %537, -17
  store i32 %538, ptr %536, align 8, !tbaa !91
  br label %555

539:                                              ; preds = %534
  %540 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %541 = load i32, ptr %540, align 4, !tbaa !94
  %542 = and i32 %541, 256
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %544, label %558

544:                                              ; preds = %539
  %545 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %546 = load i32, ptr %545, align 8, !tbaa !91
  %547 = and i32 %546, -2
  store i32 %547, ptr %545, align 8, !tbaa !91
  tail call void @postSelectConstraint(ptr noundef nonnull %0) #20
  br label %555

548:                                              ; preds = %534, %534
  %549 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %550 = load i8, ptr %549, align 8, !tbaa !34
  switch i8 %550, label %558 [
    i8 8, label %551
    i8 1, label %551
  ]

551:                                              ; preds = %548, %548
  %552 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %553 = load i32, ptr %552, align 4, !tbaa !94
  %554 = and i32 %553, -16777217
  store i32 %554, ptr %552, align 4, !tbaa !94
  br label %555

555:                                              ; preds = %535, %544, %551
  %556 = load i32, ptr %7, align 8, !tbaa !86
  %557 = or i32 %556, 1
  store i32 %557, ptr %7, align 8, !tbaa !86
  br label %558

558:                                              ; preds = %555, %548, %534, %539
  %559 = phi i8 [ 0, %534 ], [ 0, %539 ], [ 0, %548 ], [ 1, %555 ]
  %560 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %561 = load i32, ptr %560, align 4, !tbaa !94
  %562 = and i32 %561, 8388608
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %572, label %564

564:                                              ; preds = %558
  %565 = load i16, ptr %30, align 8, !tbaa !89
  %566 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 42
  %567 = load i16, ptr %566, align 8, !tbaa !111
  %568 = icmp eq i16 %565, %567
  br i1 %568, label %569, label %572

569:                                              ; preds = %564
  switch i16 %565, label %572 [
    i16 1, label %570
    i16 3, label %570
  ]

570:                                              ; preds = %569, %569
  %571 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  store i16 2, ptr %571, align 4, !tbaa !93
  br label %572

572:                                              ; preds = %569, %346, %129, %119, %50, %529, %558, %570, %564, %57, %59, %161, %167, %173, %253, %256, %327, %68, %101, %108, %82, %84, %96, %63, %126, %114, %144, %150, %155, %141, %184, %179, %192, %187, %200, %195, %214, %203, %228, %217, %242, %231, %250, %245, %288, %259, %313, %291, %321, %316, %335, %330, %343, %338, %55, %26
  %573 = phi i8 [ 1, %26 ], [ 1, %50 ], [ 0, %55 ], [ 1, %343 ], [ 0, %338 ], [ 1, %335 ], [ 0, %330 ], [ 1, %327 ], [ 1, %321 ], [ 0, %316 ], [ 1, %313 ], [ 0, %291 ], [ 1, %288 ], [ 0, %259 ], [ 1, %256 ], [ 1, %253 ], [ 1, %250 ], [ 0, %245 ], [ 1, %242 ], [ 0, %231 ], [ 1, %228 ], [ 0, %217 ], [ 1, %214 ], [ 0, %203 ], [ 1, %200 ], [ 0, %195 ], [ 1, %192 ], [ 0, %187 ], [ 0, %179 ], [ 1, %184 ], [ 1, %173 ], [ 1, %167 ], [ 1, %161 ], [ 1, %141 ], [ 1, %144 ], [ 1, %155 ], [ 0, %150 ], [ 0, %114 ], [ 1, %126 ], [ 1, %63 ], [ 1, %68 ], [ 1, %96 ], [ 0, %84 ], [ 0, %82 ], [ 1, %108 ], [ 0, %101 ], [ 1, %59 ], [ 1, %57 ], [ %530, %529 ], [ %559, %570 ], [ %559, %564 ], [ %559, %558 ], [ 0, %119 ], [ 0, %129 ], [ 0, %346 ], [ %559, %569 ]
  %574 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 8
  %575 = load ptr, ptr %574, align 8, !tbaa !112
  %576 = icmp eq ptr %575, null
  br i1 %576, label %587, label %577

577:                                              ; preds = %572
  %578 = icmp eq i8 %573, 0
  br i1 %578, label %583, label %579

579:                                              ; preds = %577
  %580 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %581 = load i16, ptr %580, align 8, !tbaa !89
  %582 = icmp eq i16 %581, 4
  br i1 %582, label %583, label %612

583:                                              ; preds = %579, %577
  %584 = call i32 %575(ptr noundef nonnull %0, ptr noundef nonnull %1) #20
  %585 = load i32, ptr %7, align 8, !tbaa !86
  %586 = or i32 %585, %584
  store i32 %586, ptr %7, align 8, !tbaa !86
  br label %587

587:                                              ; preds = %583, %572
  %588 = icmp eq i8 %573, 0
  br i1 %588, label %589, label %612

589:                                              ; preds = %587
  %590 = load i32, ptr %7, align 8, !tbaa !86
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %592, label %612

592:                                              ; preds = %589
  %593 = load i16, ptr %10, align 2, !tbaa !87
  %594 = icmp eq i16 %593, 1
  br i1 %594, label %599, label %595

595:                                              ; preds = %592
  %596 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %597 = load i16, ptr %596, align 8, !tbaa !89
  %598 = icmp eq i16 %597, 20514
  br i1 %598, label %599, label %611

599:                                              ; preds = %595, %592
  %600 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 53
  %601 = load ptr, ptr %600, align 8, !tbaa !90
  %602 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %603 = call zeroext i8 @handleNumInput(ptr noundef %601, ptr noundef nonnull %602, ptr noundef nonnull %1) #20
  %604 = icmp eq i8 %603, 0
  %605 = load i32, ptr %7, align 8, !tbaa !86
  %606 = freeze i32 %605
  br i1 %604, label %609, label %607

607:                                              ; preds = %599
  %608 = or i32 %606, 1
  store i32 %608, ptr %7, align 8, !tbaa !86
  br label %612

609:                                              ; preds = %599
  %610 = icmp eq i32 %606, 0
  br i1 %610, label %611, label %612

611:                                              ; preds = %595, %609
  br label %612

612:                                              ; preds = %589, %611, %609, %579, %587, %607
  %613 = phi i32 [ 0, %607 ], [ 0, %587 ], [ 0, %579 ], [ 8, %611 ], [ 0, %609 ], [ 0, %589 ]
  ret i32 %613
}

; Function Attrs: optsize
declare zeroext i8 @constraintModeToChar(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @handleMouseInput(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @hasNumInput(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @handleNumInput(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2_int(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !113 {
  %3 = load i32, ptr %1, align 4, !tbaa !68
  store i32 %3, ptr %0, align 4, !tbaa !68
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !68
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %5, ptr %6, align 4, !tbaa !68
  ret void
}

; Function Attrs: optsize
declare void @applyMouseInput(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @handleSnapping(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @resetTransModal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @resetTransRestrictions(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @restoreTransObjects(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initTranslation(ptr noundef %0) unnamed_addr #0 !PGOFuncName !114 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %3 = load i8, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i8 %3, 12
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 60
  %7 = load ptr, ptr %6, align 8, !tbaa !115
  tail call void @BKE_report(ptr noundef %7, i32 noundef 32, ptr noundef nonnull @.str.96) #20
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  store i16 3, ptr %8, align 4, !tbaa !93
  br label %9

9:                                                ; preds = %5, %1
  store i32 1, ptr %0, align 8, !tbaa !82
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyTranslation, ptr %10, align 8, !tbaa !116
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %11, i32 noundef 1) #20
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !94
  %14 = and i32 %13, 32768
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i16 2, i16 1
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 %16, ptr %17, align 2, !tbaa !117
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 4
  store i16 0, ptr %19, align 2, !tbaa !118
  store i16 %16, ptr %18, align 8, !tbaa !119
  %20 = load i8, ptr %2, align 8, !tbaa !34
  switch i8 %20, label %44 [
    i8 1, label %21
    i8 6, label %34
    i8 20, label %34
    i8 16, label %37
  ]

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 30
  %25 = load ptr, ptr %24, align 8, !tbaa !54
  %26 = icmp eq ptr %25, null
  br i1 %26, label %47, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store float 0.000000e+00, ptr %28, align 4, !tbaa !59
  %29 = getelementptr inbounds %struct.RegionView3D, ptr %25, i64 0, i32 36
  %30 = load float, ptr %29, align 8, !tbaa !120
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 1
  store float %30, ptr %31, align 4, !tbaa !59
  %32 = fmul float %30, 0x3FB99999A0000000
  %33 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float %32, ptr %33, align 4, !tbaa !59
  br label %47

34:                                               ; preds = %9, %9
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store <2 x float> <float 0.000000e+00, float 1.250000e-01>, ptr %35, align 4, !tbaa !59
  %36 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 6.250000e-02, ptr %36, align 4, !tbaa !59
  br label %47

37:                                               ; preds = %9
  %38 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store float 0.000000e+00, ptr %38, align 4, !tbaa !59
  %39 = tail call float @ED_node_grid_size() #20
  %40 = fmul float %39, 5.000000e+00
  %41 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 1
  store float %40, ptr %41, align 4, !tbaa !59
  %42 = tail call float @ED_node_grid_size() #20
  %43 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float %42, ptr %43, align 4, !tbaa !59
  br label %47

44:                                               ; preds = %9
  %45 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  %46 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 1.000000e+00, ptr %46, align 4, !tbaa !59
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %45, align 4, !tbaa !59
  br label %47

47:                                               ; preds = %21, %27, %34, %44, %37
  %48 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  %49 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !59
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %48, float noundef %50) #22
  %51 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %52 = load ptr, ptr %51, align 8, !tbaa !121
  %53 = getelementptr inbounds %struct.Scene, ptr %52, i64 0, i32 38, i32 1
  %54 = load i8, ptr %53, align 4, !tbaa !122
  %55 = zext i8 %54 to i32
  %56 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %55, ptr %56, align 4, !tbaa !139
  %57 = load i8, ptr %2, align 8, !tbaa !34
  %58 = icmp eq i8 %57, 1
  %59 = zext i1 %58 to i32
  %60 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 %59, ptr %60, align 8
  %61 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2, i64 1
  store i32 %59, ptr %61, align 4
  %62 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2, i64 2
  store i32 %59, ptr %62, align 8
  ret void
}

; Function Attrs: optsize
declare void @initSnapping(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_mousemove(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initEdgeSlide(ptr noundef %0) unnamed_addr #0 !PGOFuncName !140 {
  store i32 28, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyEdgeSlide, ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 8
  store ptr @handleEventEdgeSlide, ptr %3, align 8, !tbaa !112
  %4 = tail call fastcc zeroext i8 @createEdgeSlideVerts(ptr noundef nonnull %0) #22
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  store i16 3, ptr %7, align 4, !tbaa !93
  br label %32

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %10 = load ptr, ptr %9, align 8, !tbaa !141
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 41
  store ptr @freeEdgeSlideVerts, ptr %13, align 8, !tbaa !142
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  %15 = getelementptr inbounds %struct.EdgeSlideData, ptr %10, i64 0, i32 4
  %16 = getelementptr inbounds %struct.EdgeSlideData, ptr %10, i64 0, i32 3
  tail call void @setCustomPoints(ptr noundef nonnull %0, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16) #20
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %14, i32 noundef 13) #20
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 0, ptr %17, align 2, !tbaa !117
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 0, ptr %18, align 8, !tbaa !119
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store <2 x float> <float 0.000000e+00, float 0x3FB99999A0000000>, ptr %19, align 4, !tbaa !59
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %20, align 4, !tbaa !59
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %21, float noundef 0x3FB99999A0000000) #22
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %23 = load ptr, ptr %22, align 8, !tbaa !121
  %24 = getelementptr inbounds %struct.Scene, ptr %23, i64 0, i32 38, i32 1
  %25 = load i8, ptr %24, align 4, !tbaa !122
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %26, ptr %27, align 4, !tbaa !139
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %28, align 8, !tbaa !68
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !94
  %31 = or i32 %30, 4194560
  store i32 %31, ptr %29, align 4, !tbaa !94
  br label %32

32:                                               ; preds = %8, %12, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initVertSlide(ptr noundef %0) unnamed_addr #0 !PGOFuncName !143 {
  store i32 29, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyVertSlide, ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 8
  store ptr @handleEventVertSlide, ptr %3, align 8, !tbaa !112
  %4 = tail call fastcc zeroext i8 @createVertSlideVerts(ptr noundef nonnull %0) #22, !range !144
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  store i16 3, ptr %7, align 4, !tbaa !93
  br label %30

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %10 = load ptr, ptr %9, align 8, !tbaa !141
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 41
  store ptr @freeVertSlideVerts, ptr %13, align 8, !tbaa !142
  tail call fastcc void @calcVertSlideCustomPoints(ptr noundef nonnull %0) #22
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %14, i32 noundef 12) #20
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 0, ptr %15, align 2, !tbaa !117
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 0, ptr %16, align 8, !tbaa !119
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store <2 x float> <float 0.000000e+00, float 0x3FB99999A0000000>, ptr %17, align 4, !tbaa !59
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %18, align 4, !tbaa !59
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %19, float noundef 0x3FB99999A0000000) #22
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %21 = load ptr, ptr %20, align 8, !tbaa !121
  %22 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 38, i32 1
  %23 = load i8, ptr %22, align 4, !tbaa !122
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %24, ptr %25, align 4, !tbaa !139
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %26, align 8, !tbaa !68
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !94
  %29 = or i32 %28, 4194560
  store i32 %29, ptr %27, align 4, !tbaa !94
  br label %30

30:                                               ; preds = %8, %12, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initTrackball(ptr noundef %0) unnamed_addr #0 !PGOFuncName !145 {
  store i32 10, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyTrackball, ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 7) #20
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 1, ptr %4, align 2, !tbaa !117
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 1, ptr %5, align 8, !tbaa !119
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store <2 x float> <float 0.000000e+00, float 0x3FB6571840000000>, ptr %6, align 4, !tbaa !59
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3F91DF46A0000000, ptr %7, align 4, !tbaa !59
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %8, float noundef 0x3F91DF46A0000000) #22
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 38, i32 1
  %12 = load i8, ptr %11, align 4, !tbaa !122
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %13, ptr %14, align 4, !tbaa !139
  %15 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 38, i32 2
  %16 = load i8, ptr %15, align 1, !tbaa !146
  %17 = icmp eq i8 %16, 2
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 3
  store i8 %18, ptr %19, align 4, !tbaa !147
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 5, ptr %20, align 8, !tbaa !68
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2, i64 1
  store i32 5, ptr %21, align 4, !tbaa !68
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !94
  %24 = or i32 %23, 256
  store i32 %24, ptr %22, align 4, !tbaa !94
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initRotation(ptr noundef %0) unnamed_addr #0 !PGOFuncName !148 {
  store i32 2, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyRotation, ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @setInputPostFct(ptr noundef nonnull %3, ptr noundef nonnull @postInputRotation) #20
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 5) #20
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 0, ptr %4, align 2, !tbaa !117
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 0, ptr %5, align 8, !tbaa !119
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store <2 x float> <float 0.000000e+00, float 0x3FB6571840000000>, ptr %6, align 4, !tbaa !59
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3F91DF46A0000000, ptr %7, align 4, !tbaa !59
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %8, float noundef 0x3F91DF46A0000000) #22
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 38, i32 1
  %12 = load i8, ptr %11, align 4, !tbaa !122
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %13, ptr %14, align 4, !tbaa !139
  %15 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 38, i32 2
  %16 = load i8, ptr %15, align 1, !tbaa !146
  %17 = icmp eq i8 %16, 2
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 3
  store i8 %18, ptr %19, align 4, !tbaa !147
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 5, ptr %20, align 8, !tbaa !68
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !94
  %23 = and i32 %22, 32768
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %1
  %26 = or i32 %22, 256
  store i32 %26, ptr %21, align 4, !tbaa !94
  br label %27

27:                                               ; preds = %25, %1
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !58
  %30 = and i32 %29, 256
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 49
  br i1 %31, label %35, label %33

33:                                               ; preds = %27
  store <2 x float> zeroinitializer, ptr %32, align 4, !tbaa !59
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 49, i64 2
  store float -1.000000e+00, ptr %34, align 4, !tbaa !59
  br label %38

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2
  tail call fastcc void @negate_v3_v3(ptr noundef nonnull %32, ptr noundef nonnull %36) #22
  %37 = tail call fastcc float @normalize_v3(ptr noundef nonnull %32) #22
  br label %38

38:                                               ; preds = %35, %33
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 50
  %40 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 49
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %39, ptr noundef nonnull %40) #22
  ret void
}

; Function Attrs: optsize
declare void @stopConstraint(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initResize(ptr noundef %0) unnamed_addr #0 !PGOFuncName !149 {
  store i32 3, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyResize, ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 3) #20
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !94
  %6 = or i32 %5, 512
  store i32 %6, ptr %4, align 4, !tbaa !94
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 4
  %8 = load <4 x i16>, ptr %7, align 2, !tbaa !81
  %9 = or <4 x i16> %8, <i16 1, i16 1, i16 1, i16 1>
  store <4 x i16> %9, ptr %7, align 2, !tbaa !81
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %11 = load ptr, ptr %10, align 8, !tbaa !95
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = or i32 %5, 1536
  store i32 %14, ptr %4, align 4, !tbaa !94
  br label %15

15:                                               ; preds = %13, %1
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 2, ptr %17, align 2, !tbaa !117
  store i16 2, ptr %16, align 8, !tbaa !119
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store <2 x float> <float 0.000000e+00, float 0x3FB99999A0000000>, ptr %18, align 4, !tbaa !59
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %19, align 4, !tbaa !59
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %20, float noundef 0x3FB99999A0000000) #22
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %22 = load ptr, ptr %21, align 8, !tbaa !121
  %23 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 38, i32 1
  %24 = load i8, ptr %23, align 4, !tbaa !122
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %25, ptr %26, align 4, !tbaa !139
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %27, align 8, !tbaa !68
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2, i64 1
  store i32 0, ptr %28, align 4, !tbaa !68
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2, i64 2
  store i32 0, ptr %29, align 8, !tbaa !68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @transform_event_xyz_constraint(ptr noundef %0, i16 noundef signext %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !150 {
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !94
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %60

8:                                                ; preds = %3
  %9 = and i32 %5, 32768
  switch i16 %1, label %60 [
    i16 120, label %13
    i16 121, label %10
    i16 122, label %11
  ]

10:                                               ; preds = %8
  br label %13

11:                                               ; preds = %8
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %26, label %56

13:                                               ; preds = %8, %10
  %14 = phi ptr [ @.str.74, %10 ], [ @.str.72, %8 ]
  %15 = phi ptr [ @.str.75, %10 ], [ @.str.73, %8 ]
  %16 = phi ptr [ @.str.56, %10 ], [ @.str.55, %8 ]
  %17 = phi i32 [ 89, %10 ], [ 88, %8 ]
  %18 = phi i32 [ 4, %10 ], [ 2, %8 ]
  %19 = xor i32 %18, 14
  %20 = icmp eq i32 %9, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %13
  %22 = zext i8 %2 to i32
  %23 = icmp eq i32 %17, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call void @stopConstraint(ptr noundef nonnull %0) #20
  br label %56

25:                                               ; preds = %21
  tail call void @setUserConstraint(ptr noundef nonnull %0, i16 noundef signext 0, i32 noundef %18, ptr noundef nonnull %14) #20
  br label %56

26:                                               ; preds = %13, %11
  %27 = phi ptr [ @.str.77, %11 ], [ %15, %13 ]
  %28 = phi ptr [ @.str.57, %11 ], [ %16, %13 ]
  %29 = phi i32 [ 90, %11 ], [ %17, %13 ]
  %30 = phi i32 [ 8, %11 ], [ %18, %13 ]
  %31 = phi i32 [ 6, %11 ], [ %19, %13 ]
  %32 = zext i8 %2 to i32
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13
  %36 = load i16, ptr %35, align 8, !tbaa !101
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @stopConstraint(ptr noundef nonnull %0) #20
  br label %56

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 43
  %41 = load i16, ptr %40, align 2, !tbaa !102
  %42 = tail call i16 @llvm.umax.i16(i16 %41, i16 1)
  %43 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !91
  %45 = and i32 %44, 16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  tail call void @setUserConstraint(ptr noundef nonnull %0, i16 noundef signext %42, i32 noundef %30, ptr noundef nonnull %27) #20
  br label %56

48:                                               ; preds = %39
  tail call void @setUserConstraint(ptr noundef nonnull %0, i16 noundef signext %42, i32 noundef %31, ptr noundef nonnull %28) #20
  br label %56

49:                                               ; preds = %26
  %50 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !91
  %52 = and i32 %51, 16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  tail call void @setUserConstraint(ptr noundef nonnull %0, i16 noundef signext 0, i32 noundef %30, ptr noundef nonnull %27) #20
  br label %56

55:                                               ; preds = %49
  tail call void @setUserConstraint(ptr noundef nonnull %0, i16 noundef signext 0, i32 noundef %31, ptr noundef nonnull %28) #20
  br label %56

56:                                               ; preds = %11, %47, %48, %54, %55, %38, %24, %25
  %57 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 17
  %58 = load i32, ptr %57, align 8, !tbaa !86
  %59 = or i32 %58, 1
  store i32 %59, ptr %57, align 8, !tbaa !86
  br label %60

60:                                               ; preds = %56, %8, %3
  ret void
}

; Function Attrs: optsize
declare void @setUserConstraint(ptr noundef, i16 noundef signext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @addSnapPoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @removeSnapPoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #8 !PGOFuncName !151 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare void @calculatePropRatio(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @transform_autoik_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @setLocalConstraint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @initSelectConstraint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unit_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @postSelectConstraint(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sort_trans_data_dist(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @calculateTransformCenter(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !152
  %6 = tail call ptr %5(i64 noundef 1392, ptr noundef nonnull @.str.60) #20
  %7 = getelementptr inbounds %struct.TransInfo, ptr %6, i64 0, i32 3
  store i16 1, ptr %7, align 4, !tbaa !93
  %8 = getelementptr inbounds %struct.TransInfo, ptr %6, i64 0, i32 4
  store i32 4, ptr %8, align 8, !tbaa !58
  store i32 0, ptr %6, align 8, !tbaa !82
  tail call void @initTransInfo(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null, ptr noundef null) #20
  %9 = getelementptr inbounds %struct.TransInfo, ptr %6, i64 0, i32 32
  store i16 0, ptr %9, align 2, !tbaa !153
  tail call void @createTransData(ptr noundef %0, ptr noundef nonnull %6) #20
  %10 = trunc i32 %1 to i16
  store i16 %10, ptr %9, align 2, !tbaa !153
  %11 = getelementptr inbounds %struct.TransInfo, ptr %6, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !154
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %4
  tail call void @calculateCenter(ptr noundef nonnull %6) #20
  %15 = icmp eq ptr %3, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.TransInfo, ptr %6, i64 0, i32 21
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %3, ptr noundef nonnull %17) #22
  br label %18

18:                                               ; preds = %16, %14
  %19 = icmp eq ptr %2, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.TransInfo, ptr %6, i64 0, i32 13, i32 5
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %21) #22
  br label %22

22:                                               ; preds = %4, %18, %20
  %23 = phi i8 [ 1, %20 ], [ 1, %18 ], [ 0, %4 ]
  tail call void @special_aftertrans_update(ptr noundef %0, ptr noundef nonnull %6) #20
  tail call void @postTrans(ptr noundef %0, ptr noundef nonnull %6) #20
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !152
  tail call void %24(ptr noundef nonnull %6) #20
  ret i8 %23
}

; Function Attrs: optsize
declare void @initTransInfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @createTransData(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @calculateCenter(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !155 {
  %3 = load float, ptr %1, align 4, !tbaa !59
  store float %3, ptr %0, align 4, !tbaa !59
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !59
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !59
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !59
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare void @special_aftertrans_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @postTrans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @saveTransform(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca [3 x i32], align 4
  %5 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  %6 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !156
  %8 = tail call ptr @RNA_struct_find_property(ptr noundef %7, ptr noundef nonnull @.str.61) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %6, align 8, !tbaa !156
  %12 = load i32, ptr %1, align 8, !tbaa !82
  tail call void @RNA_property_enum_set(ptr noundef %11, ptr noundef nonnull %8, i32 noundef %12) #20
  br label %13

13:                                               ; preds = %10, %3
  %14 = load ptr, ptr %6, align 8, !tbaa !156
  %15 = tail call ptr @RNA_struct_find_property(ptr noundef %14, ptr noundef nonnull @.str.62) #20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !94
  %20 = and i32 %19, 1048576
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 48
  %23 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 47
  %24 = select i1 %21, ptr %23, ptr %22
  %25 = tail call zeroext i8 @RNA_property_array_check(ptr noundef nonnull %15) #20
  %26 = icmp eq i8 %25, 0
  %27 = load ptr, ptr %6, align 8, !tbaa !156
  br i1 %26, label %29, label %28

28:                                               ; preds = %17
  tail call void @RNA_property_float_set_array(ptr noundef %27, ptr noundef nonnull %15, ptr noundef nonnull %24) #20
  br label %31

29:                                               ; preds = %17
  %30 = load float, ptr %24, align 4, !tbaa !59
  tail call void @RNA_property_float_set(ptr noundef %27, ptr noundef nonnull %15, float noundef %30) #20
  br label %31

31:                                               ; preds = %28, %29, %13
  %32 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !94
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
  %49 = load ptr, ptr %6, align 8, !tbaa !156
  %50 = tail call ptr @RNA_struct_find_property(ptr noundef %49, ptr noundef nonnull @.str.63) #20
  %51 = icmp eq ptr %50, null
  br i1 %51, label %71, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %6, align 8, !tbaa !156
  %54 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %53, ptr noundef nonnull %50) #20
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  %58 = load ptr, ptr %57, align 8, !tbaa !95
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = trunc i32 %40 to i16
  %62 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 56
  store i16 %61, ptr %62, align 2, !tbaa !158
  br label %71

63:                                               ; preds = %56
  %64 = load i32, ptr %44, align 8, !tbaa !58
  %65 = and i32 %64, 128
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 59
  store i8 %39, ptr %68, align 1, !tbaa !165
  br label %71

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 58
  store i8 %39, ptr %70, align 2, !tbaa !166
  br label %71

71:                                               ; preds = %60, %69, %67, %52, %48
  %72 = load ptr, ptr %6, align 8, !tbaa !156
  %73 = tail call ptr @RNA_struct_find_property(ptr noundef %72, ptr noundef nonnull @.str.64) #20
  %74 = icmp eq ptr %73, null
  br i1 %74, label %83, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %6, align 8, !tbaa !156
  %77 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %76, ptr noundef nonnull %73) #20
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 18
  %81 = load float, ptr %80, align 4, !tbaa !105
  %82 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 19
  store float %81, ptr %82, align 8, !tbaa !167
  br label %83

83:                                               ; preds = %79, %75, %71
  %84 = load ptr, ptr %6, align 8, !tbaa !156
  %85 = tail call ptr @RNA_struct_find_property(ptr noundef %84, ptr noundef nonnull @.str.65) #20
  %86 = icmp eq ptr %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %6, align 8, !tbaa !156
  %89 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %88, ptr noundef nonnull %85) #20
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 45
  %93 = load i16, ptr %92, align 2, !tbaa !110
  %94 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 57
  store i16 %93, ptr %94, align 8, !tbaa !168
  br label %95

95:                                               ; preds = %83, %87, %91, %43
  %96 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 2
  %97 = load i32, ptr %96, align 8, !tbaa !91
  %98 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 54
  %99 = load i16, ptr %98, align 2, !tbaa !169
  %100 = and i16 %99, -2
  %101 = trunc i32 %97 to i16
  %102 = lshr i16 %101, 2
  %103 = and i16 %102, 1
  %104 = or disjoint i16 %100, %103
  store i16 %104, ptr %98, align 2, !tbaa !169
  %105 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  %106 = load i8, ptr %105, align 8, !tbaa !34
  %107 = icmp eq i8 %106, 1
  br i1 %107, label %108, label %123

108:                                              ; preds = %95
  %109 = load ptr, ptr %6, align 8, !tbaa !156
  %110 = tail call ptr @RNA_struct_find_property(ptr noundef %109, ptr noundef nonnull @.str.66) #20
  %111 = icmp eq ptr %110, null
  br i1 %111, label %123, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr %6, align 8, !tbaa !156
  %114 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %113, ptr noundef nonnull %110) #20
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 52
  %118 = load ptr, ptr %117, align 8, !tbaa !61
  %119 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 43
  %120 = load i16, ptr %119, align 2, !tbaa !102
  %121 = trunc i16 %120 to i8
  %122 = getelementptr inbounds %struct.View3D, ptr %118, i64 0, i32 41
  store i8 %121, ptr %122, align 4, !tbaa !170
  br label %123

123:                                              ; preds = %95, %116, %112, %108, %38
  %124 = load ptr, ptr %6, align 8, !tbaa !156
  %125 = tail call ptr @RNA_struct_find_property(ptr noundef %124, ptr noundef nonnull @.str.63) #20
  %126 = icmp eq ptr %125, null
  br i1 %126, label %136, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr %6, align 8, !tbaa !156
  tail call void @RNA_enum_set(ptr noundef %128, ptr noundef nonnull @.str.63, i32 noundef %40) #20
  %129 = load ptr, ptr %6, align 8, !tbaa !156
  %130 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 45
  %131 = load i16, ptr %130, align 2, !tbaa !110
  %132 = sext i16 %131 to i32
  tail call void @RNA_enum_set(ptr noundef %129, ptr noundef nonnull @.str.65, i32 noundef %132) #20
  %133 = load ptr, ptr %6, align 8, !tbaa !156
  %134 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 18
  %135 = load float, ptr %134, align 4, !tbaa !105
  tail call void @RNA_float_set(ptr noundef %133, ptr noundef nonnull @.str.64, float noundef %135) #20
  br label %136

136:                                              ; preds = %127, %123
  %137 = load ptr, ptr %6, align 8, !tbaa !156
  %138 = tail call ptr @RNA_struct_find_property(ptr noundef %137, ptr noundef nonnull @.str.67) #20
  %139 = icmp eq ptr %138, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %136
  %141 = load ptr, ptr %6, align 8, !tbaa !156
  %142 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 49
  tail call void @RNA_property_float_set_array(ptr noundef %141, ptr noundef nonnull %138, ptr noundef nonnull %142) #20
  br label %143

143:                                              ; preds = %140, %136
  %144 = load ptr, ptr %6, align 8, !tbaa !156
  %145 = tail call ptr @RNA_struct_find_property(ptr noundef %144, ptr noundef nonnull @.str.68) #20
  %146 = icmp eq ptr %145, null
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = load ptr, ptr %6, align 8, !tbaa !156
  %149 = load i32, ptr %32, align 4, !tbaa !94
  %150 = and i32 %149, 524288
  tail call void @RNA_property_boolean_set(ptr noundef %148, ptr noundef nonnull %145, i32 noundef %150) #20
  br label %151

151:                                              ; preds = %147, %143
  %152 = load ptr, ptr %6, align 8, !tbaa !156
  %153 = tail call ptr @RNA_struct_find_property(ptr noundef %152, ptr noundef nonnull @.str.69) #20
  %154 = icmp eq ptr %153, null
  br i1 %154, label %185, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 13, i32 7
  %157 = load i32, ptr %156, align 4, !tbaa !92
  %158 = and i32 %157, 1
  %159 = icmp eq i32 %158, 0
  %160 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 43
  %161 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 13
  %162 = select i1 %159, ptr %160, ptr %161
  %163 = load ptr, ptr %6, align 8, !tbaa !156
  %164 = load i16, ptr %162, align 2, !tbaa !81
  %165 = sext i16 %164 to i32
  tail call void @RNA_enum_set(ptr noundef %163, ptr noundef nonnull @.str.66, i32 noundef %165) #20
  %166 = load i32, ptr %156, align 4, !tbaa !92
  %167 = and i32 %166, 1
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %183, label %169

169:                                              ; preds = %155
  %170 = and i32 %166, 2
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %169
  store i32 1, ptr %4, align 4, !tbaa !68
  br label %173

173:                                              ; preds = %172, %169
  %174 = and i32 %166, 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %173
  %177 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 1
  store i32 1, ptr %177, align 4, !tbaa !68
  br label %178

178:                                              ; preds = %176, %173
  %179 = and i32 %166, 8
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %178
  %182 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 2
  store i32 1, ptr %182, align 4, !tbaa !68
  br label %183

183:                                              ; preds = %178, %181, %155
  %184 = load ptr, ptr %6, align 8, !tbaa !156
  call void @RNA_property_boolean_set_array(ptr noundef %184, ptr noundef nonnull %153, ptr noundef nonnull %4) #20
  br label %185

185:                                              ; preds = %183, %151
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_property_array_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_boolean_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @initTransform(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x i32], align 4
  %8 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 53
  store ptr %0, ptr %8, align 8, !tbaa !90
  %9 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 3
  store i16 0, ptr %9, align 4, !tbaa !93
  %10 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !156
  %12 = tail call ptr @RNA_struct_find_property(ptr noundef %11, ptr noundef nonnull @.str.70) #20
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %5
  %15 = load ptr, ptr %10, align 8, !tbaa !156
  %16 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %15, ptr noundef nonnull %12) #20
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %10, align 8, !tbaa !156
  %20 = tail call i32 @RNA_property_boolean_get(ptr noundef %19, ptr noundef nonnull %12) #20
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %18, %14, %5
  %24 = phi i32 [ 0, %14 ], [ 0, %5 ], [ %22, %18 ]
  %25 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  store i32 %24, ptr %25, align 8, !tbaa !58
  store i32 %4, ptr %1, align 8, !tbaa !82
  %26 = icmp eq ptr %3, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 42
  store i16 -1, ptr %28, align 8, !tbaa !111
  br label %36

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %31 = load i16, ptr %30, align 8, !tbaa !89
  %32 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 42
  store i16 %31, ptr %32, align 8, !tbaa !111
  switch i16 %31, label %36 [
    i16 20485, label %33
    i16 20483, label %34
    i16 0, label %35
  ]

33:                                               ; preds = %29
  store i16 3, ptr %32, align 8, !tbaa !111
  br label %36

34:                                               ; preds = %29
  store i16 1, ptr %32, align 8, !tbaa !111
  br label %36

35:                                               ; preds = %29
  store i16 1, ptr %32, align 8, !tbaa !111
  br label %36

36:                                               ; preds = %29, %33, %34, %27, %35
  tail call void @initTransInfo(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3) #20
  %37 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  %38 = load i8, ptr %37, align 8, !tbaa !34
  switch i8 %38, label %92 [
    i8 1, label %39
    i8 6, label %59
    i8 20, label %70
    i8 16, label %81
  ]

39:                                               ; preds = %36
  tail call void @initTransformOrientation(ptr noundef %0, ptr noundef nonnull %1) #20
  %40 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %41 = load ptr, ptr %40, align 8, !tbaa !48
  %42 = getelementptr inbounds %struct.ARegion, ptr %41, i64 0, i32 20
  %43 = load ptr, ptr %42, align 8, !tbaa !171
  %44 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %43, ptr noundef nonnull @drawTransformApply, ptr noundef nonnull %1, i32 noundef 2) #20
  %45 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 65
  store ptr %44, ptr %45, align 8, !tbaa !172
  %46 = load ptr, ptr %40, align 8, !tbaa !48
  %47 = getelementptr inbounds %struct.ARegion, ptr %46, i64 0, i32 20
  %48 = load ptr, ptr %47, align 8, !tbaa !171
  %49 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %48, ptr noundef nonnull @drawTransformView, ptr noundef nonnull %1, i32 noundef 0) #20
  %50 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 66
  store ptr %49, ptr %50, align 8, !tbaa !173
  %51 = load ptr, ptr %40, align 8, !tbaa !48
  %52 = getelementptr inbounds %struct.ARegion, ptr %51, i64 0, i32 20
  %53 = load ptr, ptr %52, align 8, !tbaa !171
  %54 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %53, ptr noundef nonnull @drawTransformPixel, ptr noundef nonnull %1, i32 noundef 1) #20
  %55 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 67
  store ptr %54, ptr %55, align 8, !tbaa !174
  %56 = tail call ptr @CTX_wm_manager(ptr noundef %0) #20
  %57 = tail call ptr @WM_paint_cursor_activate(ptr noundef %56, ptr noundef nonnull @helpline_poll, ptr noundef nonnull @drawHelpline, ptr noundef nonnull %1) #20
  %58 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 68
  store ptr %57, ptr %58, align 8, !tbaa !175
  br label %94

59:                                               ; preds = %36
  %60 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 37
  tail call void @unit_m3(ptr noundef nonnull %60) #20
  %61 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %62 = load ptr, ptr %61, align 8, !tbaa !48
  %63 = getelementptr inbounds %struct.ARegion, ptr %62, i64 0, i32 20
  %64 = load ptr, ptr %63, align 8, !tbaa !171
  %65 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %64, ptr noundef nonnull @drawTransformView, ptr noundef nonnull %1, i32 noundef 0) #20
  %66 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 66
  store ptr %65, ptr %66, align 8, !tbaa !173
  %67 = tail call ptr @CTX_wm_manager(ptr noundef %0) #20
  %68 = tail call ptr @WM_paint_cursor_activate(ptr noundef %67, ptr noundef nonnull @helpline_poll, ptr noundef nonnull @drawHelpline, ptr noundef nonnull %1) #20
  %69 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 68
  store ptr %68, ptr %69, align 8, !tbaa !175
  br label %94

70:                                               ; preds = %36
  %71 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 37
  tail call void @unit_m3(ptr noundef nonnull %71) #20
  %72 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %73 = load ptr, ptr %72, align 8, !tbaa !48
  %74 = getelementptr inbounds %struct.ARegion, ptr %73, i64 0, i32 20
  %75 = load ptr, ptr %74, align 8, !tbaa !171
  %76 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %75, ptr noundef nonnull @drawTransformView, ptr noundef nonnull %1, i32 noundef 0) #20
  %77 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 66
  store ptr %76, ptr %77, align 8, !tbaa !173
  %78 = tail call ptr @CTX_wm_manager(ptr noundef %0) #20
  %79 = tail call ptr @WM_paint_cursor_activate(ptr noundef %78, ptr noundef nonnull @helpline_poll, ptr noundef nonnull @drawHelpline, ptr noundef nonnull %1) #20
  %80 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 68
  store ptr %79, ptr %80, align 8, !tbaa !175
  br label %94

81:                                               ; preds = %36
  %82 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 37
  tail call void @unit_m3(ptr noundef nonnull %82) #20
  %83 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %84 = load ptr, ptr %83, align 8, !tbaa !48
  %85 = getelementptr inbounds %struct.ARegion, ptr %84, i64 0, i32 20
  %86 = load ptr, ptr %85, align 8, !tbaa !171
  %87 = tail call ptr @ED_region_draw_cb_activate(ptr noundef %86, ptr noundef nonnull @drawTransformView, ptr noundef nonnull %1, i32 noundef 0) #20
  %88 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 66
  store ptr %87, ptr %88, align 8, !tbaa !173
  %89 = tail call ptr @CTX_wm_manager(ptr noundef %0) #20
  %90 = tail call ptr @WM_paint_cursor_activate(ptr noundef %89, ptr noundef nonnull @helpline_poll, ptr noundef nonnull @drawHelpline, ptr noundef nonnull %1) #20
  %91 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 68
  store ptr %90, ptr %91, align 8, !tbaa !175
  br label %94

92:                                               ; preds = %36
  %93 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 37
  tail call void @unit_m3(ptr noundef nonnull %93) #20
  br label %94

94:                                               ; preds = %59, %81, %92, %70, %39
  tail call void @createTransData(ptr noundef %0, ptr noundef nonnull %1) #20
  %95 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  %96 = load i32, ptr %95, align 8, !tbaa !154
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  tail call void @postTrans(ptr noundef %0, ptr noundef nonnull %1) #20
  br label %281

99:                                               ; preds = %94
  br i1 %26, label %157, label %100

100:                                              ; preds = %99
  %101 = tail call ptr @CTX_wm_manager(ptr noundef %0) #20
  %102 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !176
  %104 = getelementptr inbounds %struct.wmOperatorType, ptr %103, i64 0, i32 15
  %105 = load ptr, ptr %104, align 8, !tbaa !177
  %106 = tail call ptr @WM_keymap_active(ptr noundef %101, ptr noundef %105) #20
  %107 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 59
  store ptr %106, ptr %107, align 8, !tbaa !180
  %108 = add i32 %4, -1
  %109 = icmp ult i32 %108, 3
  br i1 %109, label %110, label %157

110:                                              ; preds = %100
  %111 = getelementptr inbounds %struct.wmKeyMap, ptr %106, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !152
  %113 = icmp eq ptr %112, null
  br i1 %113, label %157, label %114

114:                                              ; preds = %110, %154
  %115 = phi ptr [ %155, %154 ], [ %112, %110 ]
  %116 = getelementptr inbounds %struct.wmKeyMapItem, ptr %115, i64 0, i32 5
  %117 = load i16, ptr %116, align 8, !tbaa !181
  %118 = icmp eq i16 %117, 6
  br i1 %118, label %119, label %154

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.wmKeyMapItem, ptr %115, i64 0, i32 7
  %121 = load i16, ptr %120, align 4, !tbaa !183
  %122 = icmp eq i16 %121, 1
  br i1 %122, label %123, label %154

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.wmKeyMapItem, ptr %115, i64 0, i32 6
  %125 = load i16, ptr %124, align 2, !tbaa !184
  switch i16 %125, label %130 [
    i16 212, label %126
    i16 215, label %126
  ]

126:                                              ; preds = %123, %123
  %127 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 18
  %128 = load i16, ptr %127, align 2, !tbaa !185
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %137, label %150

130:                                              ; preds = %123
  %131 = and i16 %125, -2
  %132 = icmp eq i16 %131, 216
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 17
  %135 = load i16, ptr %134, align 8, !tbaa !108
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %157, label %150

137:                                              ; preds = %126, %130
  %138 = add i16 %125, -213
  %139 = icmp ult i16 %138, 2
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 19
  %142 = load i16, ptr %141, align 4, !tbaa !109
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %157, label %150

144:                                              ; preds = %137
  %145 = icmp eq i16 %125, 172
  br i1 %145, label %146, label %157

146:                                              ; preds = %144
  %147 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 20
  %148 = load i16, ptr %147, align 2, !tbaa !186
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %146, %140, %133, %126
  %151 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 2
  %152 = load i32, ptr %151, align 8, !tbaa !91
  %153 = or i32 %152, 8
  store i32 %153, ptr %151, align 8, !tbaa !91
  br label %157

154:                                              ; preds = %114, %119
  %155 = load ptr, ptr %115, align 8, !tbaa !152
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %114, !llvm.loop !187

157:                                              ; preds = %154, %110, %133, %140, %150, %146, %144, %100, %99
  tail call void @initSnapping(ptr noundef nonnull %1, ptr noundef %2) #20
  %158 = load i32, ptr %1, align 8, !tbaa !82
  tail call void @calculatePropRatio(ptr noundef nonnull %1) #20
  tail call void @calculateCenter(ptr noundef nonnull %1) #20
  %159 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 16
  %160 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 21
  %161 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22
  tail call void @initMouseInput(ptr noundef nonnull %1, ptr noundef nonnull %159, ptr noundef nonnull %160, ptr noundef nonnull %161) #20
  switch i32 %158, label %207 [
    i32 1, label %162
    i32 2, label %163
    i32 3, label %164
    i32 4, label %165
    i32 5, label %166
    i32 6, label %167
    i32 7, label %168
    i32 8, label %169
    i32 9, label %170
    i32 16, label %171
    i32 17, label %172
    i32 10, label %173
    i32 11, label %174
    i32 12, label %175
    i32 14, label %176
    i32 15, label %186
    i32 28, label %187
    i32 29, label %188
    i32 18, label %189
    i32 19, label %190
    i32 20, label %191
    i32 21, label %192
    i32 23, label %193
    i32 22, label %198
    i32 24, label %202
    i32 13, label %203
    i32 26, label %204
    i32 27, label %205
    i32 30, label %206
  ]

162:                                              ; preds = %157
  tail call fastcc void @initTranslation(ptr noundef nonnull %1) #22
  br label %207

163:                                              ; preds = %157
  tail call fastcc void @initRotation(ptr noundef nonnull %1) #22
  br label %207

164:                                              ; preds = %157
  tail call fastcc void @initResize(ptr noundef nonnull %1) #22
  br label %207

165:                                              ; preds = %157
  tail call fastcc void @initSkinResize(ptr noundef nonnull %1) #22
  br label %207

166:                                              ; preds = %157
  tail call fastcc void @initToSphere(ptr noundef nonnull %1) #22
  br label %207

167:                                              ; preds = %157
  tail call fastcc void @initShear(ptr noundef nonnull %1) #22
  br label %207

168:                                              ; preds = %157
  tail call fastcc void @initBend(ptr noundef nonnull %1) #22
  br label %207

169:                                              ; preds = %157
  tail call fastcc void @initShrinkFatten(ptr noundef nonnull %1) #22
  br label %207

170:                                              ; preds = %157
  tail call fastcc void @initTilt(ptr noundef nonnull %1) #22
  br label %207

171:                                              ; preds = %157
  tail call fastcc void @initCurveShrinkFatten(ptr noundef nonnull %1) #22
  br label %207

172:                                              ; preds = %157
  tail call fastcc void @initMaskShrinkFatten(ptr noundef nonnull %1) #22
  br label %207

173:                                              ; preds = %157
  tail call fastcc void @initTrackball(ptr noundef nonnull %1) #22
  br label %207

174:                                              ; preds = %157
  tail call fastcc void @initPushPull(ptr noundef nonnull %1) #22
  br label %207

175:                                              ; preds = %157
  tail call fastcc void @initCrease(ptr noundef nonnull %1) #22
  br label %207

176:                                              ; preds = %157
  %177 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 39
  %178 = load ptr, ptr %177, align 8, !tbaa !189
  %179 = getelementptr inbounds %struct.Object, ptr %178, i64 0, i32 19
  %180 = load ptr, ptr %179, align 8, !tbaa !190
  %181 = getelementptr inbounds %struct.bArmature, ptr %180, i64 0, i32 9
  %182 = load i32, ptr %181, align 4, !tbaa !191
  %183 = icmp eq i32 %182, 3
  br i1 %183, label %184, label %185

184:                                              ; preds = %176
  tail call fastcc void @initBoneEnvelope(ptr noundef nonnull %1) #22
  br label %207

185:                                              ; preds = %176
  tail call fastcc void @initBoneSize(ptr noundef nonnull %1) #22
  br label %207

186:                                              ; preds = %157
  tail call fastcc void @initBoneEnvelope(ptr noundef nonnull %1) #22
  br label %207

187:                                              ; preds = %157
  tail call fastcc void @initEdgeSlide(ptr noundef nonnull %1) #22
  br label %207

188:                                              ; preds = %157
  tail call fastcc void @initVertSlide(ptr noundef nonnull %1) #22
  br label %207

189:                                              ; preds = %157
  tail call fastcc void @initBoneRoll(ptr noundef nonnull %1) #22
  br label %207

190:                                              ; preds = %157
  tail call fastcc void @initTimeTranslate(ptr noundef nonnull %1) #22
  br label %207

191:                                              ; preds = %157
  tail call fastcc void @initTimeSlide(ptr noundef nonnull %1) #22
  br label %207

192:                                              ; preds = %157
  tail call fastcc void @initTimeScale(ptr noundef nonnull %1) #22
  br label %207

193:                                              ; preds = %157
  %194 = load i8, ptr %37, align 8, !tbaa !34
  switch i8 %194, label %196 [
    i8 2, label %195
    i8 13, label %195
  ]

195:                                              ; preds = %193, %193
  tail call fastcc void @initTranslation(ptr noundef nonnull %1) #22
  br label %197

196:                                              ; preds = %193
  tail call fastcc void @initTimeTranslate(ptr noundef nonnull %1) #22
  br label %197

197:                                              ; preds = %196, %195
  store i32 23, ptr %1, align 8, !tbaa !82
  br label %207

198:                                              ; preds = %157
  %199 = load i8, ptr %37, align 8, !tbaa !34
  switch i8 %199, label %201 [
    i8 2, label %200
    i8 13, label %200
  ]

200:                                              ; preds = %198, %198
  tail call fastcc void @initTranslation(ptr noundef nonnull %1) #22
  br label %207

201:                                              ; preds = %198
  tail call fastcc void @initTimeTranslate(ptr noundef nonnull %1) #22
  br label %207

202:                                              ; preds = %157
  tail call fastcc void @initBakeTime(ptr noundef nonnull %1) #22
  br label %207

203:                                              ; preds = %157
  tail call fastcc void @initMirror(ptr noundef nonnull %1) #22
  br label %207

204:                                              ; preds = %157
  tail call fastcc void @initBevelWeight(ptr noundef nonnull %1) #22
  br label %207

205:                                              ; preds = %157
  tail call fastcc void @initAlign(ptr noundef nonnull %1) #22
  br label %207

206:                                              ; preds = %157
  tail call fastcc void @initSeqSlide(ptr noundef nonnull %1) #22
  br label %207

207:                                              ; preds = %184, %185, %200, %201, %157, %206, %205, %204, %203, %202, %197, %192, %191, %190, %189, %188, %187, %186, %175, %174, %173, %172, %171, %170, %169, %168, %167, %166, %165, %164, %163, %162
  %208 = load i16, ptr %9, align 4, !tbaa !93
  %209 = icmp eq i16 %208, 3
  br i1 %209, label %210, label %211

210:                                              ; preds = %207
  tail call void @postTrans(ptr noundef %0, ptr noundef nonnull %1) #20
  br label %281

211:                                              ; preds = %207
  %212 = load ptr, ptr %10, align 8, !tbaa !156
  %213 = tail call ptr @RNA_struct_find_property(ptr noundef %212, ptr noundef nonnull @.str.62) #20
  %214 = icmp eq ptr %213, null
  br i1 %214, label %232, label %215

215:                                              ; preds = %211
  %216 = load ptr, ptr %10, align 8, !tbaa !156
  %217 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %216, ptr noundef nonnull %213) #20
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %232, label %219

219:                                              ; preds = %215
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %220 = tail call zeroext i8 @RNA_property_array_check(ptr noundef nonnull %213) #20
  %221 = icmp eq i8 %220, 0
  %222 = load ptr, ptr %10, align 8, !tbaa !156
  br i1 %221, label %224, label %223

223:                                              ; preds = %219
  call void @RNA_float_get_array(ptr noundef %222, ptr noundef nonnull @.str.62, ptr noundef nonnull %6) #20
  br label %226

224:                                              ; preds = %219
  %225 = tail call float @RNA_float_get(ptr noundef %222, ptr noundef nonnull @.str.62) #20
  store float %225, ptr %6, align 16, !tbaa !59
  br label %226

226:                                              ; preds = %224, %223
  %227 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 47
  call fastcc void @copy_v4_v4(ptr noundef nonnull %227, ptr noundef nonnull %6) #22
  %228 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 48
  call fastcc void @copy_v4_v4(ptr noundef nonnull %228, ptr noundef nonnull %6) #22
  %229 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %230 = load i32, ptr %229, align 4, !tbaa !94
  %231 = or i32 %230, 1048576
  store i32 %231, ptr %229, align 4, !tbaa !94
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  br label %232

232:                                              ; preds = %226, %215, %211
  %233 = load ptr, ptr %10, align 8, !tbaa !156
  %234 = call ptr @RNA_struct_find_property(ptr noundef %233, ptr noundef nonnull @.str.67) #20
  %235 = icmp eq ptr %234, null
  br i1 %235, label %245, label %236

236:                                              ; preds = %232
  %237 = load ptr, ptr %10, align 8, !tbaa !156
  %238 = call zeroext i8 @RNA_property_is_set(ptr noundef %237, ptr noundef nonnull %234) #20
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %245, label %240

240:                                              ; preds = %236
  %241 = load ptr, ptr %10, align 8, !tbaa !156
  %242 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 49
  call void @RNA_property_float_get_array(ptr noundef %241, ptr noundef nonnull %234, ptr noundef nonnull %242) #20
  %243 = call fastcc float @normalize_v3(ptr noundef nonnull %242) #22
  %244 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 50
  call fastcc void @copy_v3_v3(ptr noundef nonnull %244, ptr noundef nonnull %242) #22
  br label %245

245:                                              ; preds = %240, %236, %232
  %246 = load ptr, ptr %10, align 8, !tbaa !156
  %247 = call ptr @RNA_struct_find_property(ptr noundef %246, ptr noundef nonnull @.str.69) #20
  %248 = icmp eq ptr %247, null
  br i1 %248, label %280, label %249

249:                                              ; preds = %245
  %250 = load ptr, ptr %10, align 8, !tbaa !156
  %251 = call zeroext i8 @RNA_property_is_set(ptr noundef %250, ptr noundef nonnull %247) #20
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %280, label %253

253:                                              ; preds = %249
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  %254 = load ptr, ptr %10, align 8, !tbaa !156
  call void @RNA_property_boolean_get_array(ptr noundef %254, ptr noundef nonnull %247, ptr noundef nonnull %7) #20
  %255 = load i32, ptr %7, align 4, !tbaa !68
  %256 = icmp ne i32 %255, 0
  %257 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 1
  %258 = load i32, ptr %257, align 4
  %259 = icmp ne i32 %258, 0
  %260 = select i1 %256, i1 true, i1 %259
  %261 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 2
  %262 = load i32, ptr %261, align 4
  %263 = icmp ne i32 %262, 0
  %264 = select i1 %260, i1 true, i1 %263
  br i1 %264, label %265, label %279

265:                                              ; preds = %253
  %266 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 13, i32 7
  %267 = load i32, ptr %266, align 4, !tbaa !92
  %268 = icmp eq i32 %255, 0
  %269 = select i1 %268, i32 1, i32 3
  %270 = or i32 %267, %269
  %271 = icmp eq i32 %258, 0
  %272 = or i32 %270, 4
  %273 = select i1 %271, i32 %270, i32 %272
  %274 = icmp eq i32 %262, 0
  %275 = or i32 %273, 8
  %276 = select i1 %274, i32 %273, i32 %275
  store i32 %276, ptr %266, align 4, !tbaa !92
  %277 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 43
  %278 = load i16, ptr %277, align 2, !tbaa !102
  call void @setUserConstraint(ptr noundef nonnull %1, i16 noundef signext %278, i32 noundef %276, ptr noundef nonnull @.str.71) #20
  br label %279

279:                                              ; preds = %253, %265
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  br label %280

280:                                              ; preds = %279, %249, %245
  store ptr null, ptr %8, align 8, !tbaa !90
  br label %281

281:                                              ; preds = %280, %210, %98
  %282 = phi i8 [ 0, %98 ], [ 0, %210 ], [ 1, %280 ]
  ret i8 %282
}

; Function Attrs: optsize
declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @initTransformOrientation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_region_draw_cb_activate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @drawTransformApply(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !193 {
  %4 = getelementptr inbounds %struct.TransInfo, ptr %2, i64 0, i32 17
  %5 = load i32, ptr %4, align 8, !tbaa !86
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = or i32 %5, 1
  store i32 %9, ptr %4, align 8, !tbaa !86
  tail call void @transformApply(ptr noundef %0, ptr noundef nonnull %2) #22
  br label %10

10:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @drawTransformView(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !194 {
  tail call void @drawConstraint(ptr noundef %2) #20
  tail call void @drawPropCircle(ptr noundef %0, ptr noundef %2) #20
  tail call void @drawSnapping(ptr noundef %0, ptr noundef %2) #20
  tail call fastcc void @drawEdgeSlide(ptr noundef %0, ptr noundef %2) #22
  tail call fastcc void @drawVertSlide(ptr noundef %0, ptr noundef %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @drawTransformPixel(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !195 {
  %4 = getelementptr inbounds %struct.TransInfo, ptr %2, i64 0, i32 56
  %5 = load ptr, ptr %4, align 8, !tbaa !121
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !196
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !197
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi ptr [ %11, %9 ], [ null, %3 ]
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2, !tbaa !199
  %15 = and i16 %14, 128
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.TransInfo, ptr %2, i64 0, i32 55
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.TransInfo, ptr %2, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !94
  %24 = and i32 %23, 5
  %25 = icmp ne i32 %24, 0
  %26 = icmp ne ptr %13, null
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = tail call i32 @autokeyframe_cfra_can_key(ptr noundef nonnull %5, ptr noundef nonnull %13) #20
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call fastcc void @drawAutoKeyWarning(ptr noundef %1) #22
  br label %32

32:                                               ; preds = %17, %28, %31, %21, %12
  ret void
}

; Function Attrs: optsize
declare ptr @WM_paint_cursor_activate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @helpline_poll(ptr noundef %0) #0 !PGOFuncName !203 {
  %2 = tail call ptr @CTX_wm_region(ptr noundef %0) #20
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

; Function Attrs: noinline nounwind optsize uwtable
define internal void @drawHelpline(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !PGOFuncName !204 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [3 x i8], align 1
  %8 = alloca [3 x i8], align 1
  %9 = getelementptr inbounds %struct.TransInfo, ptr %3, i64 0, i32 34
  %10 = load i8, ptr %9, align 1, !tbaa !205
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %107, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.TransInfo, ptr %3, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !94
  %15 = and i32 %14, 128
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %107

17:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %18 = getelementptr inbounds %struct.TransInfo, ptr %3, i64 0, i32 20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %18) #22
  %19 = and i32 %14, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.TransInfo, ptr %3, i64 0, i32 63
  %23 = load ptr, ptr %22, align 8, !tbaa !95
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %32

25:                                               ; preds = %17
  %26 = and i32 %14, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.TransInfo, ptr %3, i64 0, i32 39
  %30 = load ptr, ptr %29, align 8, !tbaa !189
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28, %21
  %33 = phi ptr [ %23, %21 ], [ %30, %28 ]
  %34 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %34, ptr noundef nonnull %5) #20
  br label %35

35:                                               ; preds = %32, %28, %21, %25
  call void @projectFloatViewEx(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 8) #22
  call void @glPushMatrix() #20
  %36 = load i8, ptr %9, align 1, !tbaa !205
  switch i8 %36, label %106 [
    i8 1, label %37
    i8 3, label %53
    i8 4, label %56
    i8 2, label %59
    i8 5, label %103
  ]

37:                                               ; preds = %35
  call void @UI_ThemeColor(i32 noundef 192) #20
  call void @setlinestyle(i32 noundef 3) #20
  call void @glBegin(i32 noundef 3) #20
  %38 = getelementptr inbounds %struct.TransInfo, ptr %3, i64 0, i32 61
  call void @glVertex2iv(ptr noundef nonnull %38) #20
  call void @glVertex2fv(ptr noundef nonnull %6) #20
  call void @glEnd() #20
  %39 = sitofp i32 %1 to float
  %40 = sitofp i32 %2 to float
  call void @glTranslatef(float noundef %39, float noundef %40, float noundef 0.000000e+00) #20
  %41 = load float, ptr %6, align 4, !tbaa !59
  %42 = load i32, ptr %38, align 8, !tbaa !68
  %43 = sitofp i32 %42 to float
  %44 = fsub float %41, %43
  %45 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !59
  %47 = getelementptr inbounds %struct.TransInfo, ptr %3, i64 0, i32 61, i64 1
  %48 = load i32, ptr %47, align 4, !tbaa !68
  %49 = sitofp i32 %48 to float
  %50 = fsub float %46, %49
  %51 = call float @atan2f(float noundef %44, float noundef %50) #20
  %52 = fmul float %51, 0xC04CA5DC20000000
  call void @glRotatef(float noundef %52, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #20
  call void @setlinestyle(i32 noundef 0) #20
  call void @glLineWidth(float noundef 3.000000e+00) #20
  call fastcc void @drawArrow(i32 noundef 0) #22
  call fastcc void @drawArrow(i32 noundef 1) #22
  call void @glLineWidth(float noundef 1.000000e+00) #20
  br label %106

53:                                               ; preds = %35
  call void @UI_ThemeColor(i32 noundef 192) #20
  %54 = sitofp i32 %1 to float
  %55 = sitofp i32 %2 to float
  call void @glTranslatef(float noundef %54, float noundef %55, float noundef 0.000000e+00) #20
  call void @glLineWidth(float noundef 3.000000e+00) #20
  call fastcc void @drawArrow(i32 noundef 3) #22
  call fastcc void @drawArrow(i32 noundef 2) #22
  call void @glLineWidth(float noundef 1.000000e+00) #20
  br label %106

56:                                               ; preds = %35
  call void @UI_ThemeColor(i32 noundef 192) #20
  %57 = sitofp i32 %1 to float
  %58 = sitofp i32 %2 to float
  call void @glTranslatef(float noundef %57, float noundef %58, float noundef 0.000000e+00) #20
  call void @glLineWidth(float noundef 3.000000e+00) #20
  call fastcc void @drawArrow(i32 noundef 0) #22
  call fastcc void @drawArrow(i32 noundef 1) #22
  call void @glLineWidth(float noundef 1.000000e+00) #20
  br label %106

59:                                               ; preds = %35
  %60 = getelementptr inbounds %struct.TransInfo, ptr %3, i64 0, i32 61
  %61 = load i32, ptr %60, align 8, !tbaa !68
  %62 = sitofp i32 %61 to float
  %63 = load float, ptr %6, align 4, !tbaa !59
  %64 = fsub float %62, %63
  %65 = getelementptr inbounds %struct.TransInfo, ptr %3, i64 0, i32 61, i64 1
  %66 = load i32, ptr %65, align 4, !tbaa !68
  %67 = sitofp i32 %66 to float
  %68 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !59
  %70 = fsub float %67, %69
  %71 = call float @atan2f(float noundef %70, float noundef %64) #20
  %72 = call float @hypotf(float noundef %64, float noundef %70) #20
  %73 = fdiv float 1.500000e+01, %72
  %74 = call fastcc float @min_ff(float noundef %73, float noundef 0x3FE921FB60000000) #22
  %75 = fdiv float 5.000000e+00, %72
  %76 = call fastcc float @min_ff(float noundef %75, float noundef 0x3FD0C15240000000) #22
  call void @UI_ThemeColor(i32 noundef 192) #20
  call void @setlinestyle(i32 noundef 3) #20
  call void @glBegin(i32 noundef 3) #20
  call void @glVertex2iv(ptr noundef nonnull %60) #20
  call void @glVertex2fv(ptr noundef nonnull %6) #20
  call void @glEnd() #20
  %77 = load float, ptr %6, align 4, !tbaa !59
  %78 = load i32, ptr %60, align 8, !tbaa !68
  %79 = sitofp i32 %78 to float
  %80 = fsub float %77, %79
  %81 = sitofp i32 %1 to float
  %82 = fadd float %80, %81
  %83 = load float, ptr %68, align 4, !tbaa !59
  %84 = load i32, ptr %65, align 4, !tbaa !68
  %85 = sitofp i32 %84 to float
  %86 = fsub float %83, %85
  %87 = sitofp i32 %2 to float
  %88 = fadd float %86, %87
  call void @glTranslatef(float noundef %82, float noundef %88, float noundef 0.000000e+00) #20
  call void @setlinestyle(i32 noundef 0) #20
  call void @glLineWidth(float noundef 3.000000e+00) #20
  %89 = fsub float %71, %74
  %90 = fsub float %71, %76
  call fastcc void @drawArc(float noundef %72, float noundef %89, float noundef %90) #22
  %91 = fadd float %71, %76
  %92 = fadd float %71, %74
  call fastcc void @drawArc(float noundef %72, float noundef %91, float noundef %92) #22
  call void @glPushMatrix() #20
  %93 = call float @cosf(float noundef %89) #20
  %94 = fmul float %72, %93
  %95 = call float @sinf(float noundef %89) #20
  %96 = fmul float %72, %95
  call void @glTranslatef(float noundef %94, float noundef %96, float noundef 0.000000e+00) #20
  %97 = fmul float %89, 0x404CA5DC20000000
  call void @glRotatef(float noundef %97, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #20
  call fastcc void @drawArrowHead(i32 noundef 1) #22
  call void @glPopMatrix() #20
  %98 = call float @cosf(float noundef %92) #20
  %99 = fmul float %72, %98
  %100 = call float @sinf(float noundef %92) #20
  %101 = fmul float %72, %100
  call void @glTranslatef(float noundef %99, float noundef %101, float noundef 0.000000e+00) #20
  %102 = fmul float %92, 0x404CA5DC20000000
  call void @glRotatef(float noundef %102, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #20
  call fastcc void @drawArrowHead(i32 noundef 0) #22
  call void @glLineWidth(float noundef 1.000000e+00) #20
  br label %106

103:                                              ; preds = %35
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %8) #21
  call void @UI_GetThemeColor3ubv(i32 noundef 24, ptr noundef nonnull %7) #20
  %104 = sitofp i32 %1 to float
  %105 = sitofp i32 %2 to float
  call void @glTranslatef(float noundef %104, float noundef %105, float noundef 0.000000e+00) #20
  call void @glLineWidth(float noundef 3.000000e+00) #20
  call void @UI_make_axis_color(ptr noundef nonnull %7, ptr noundef nonnull %8, i8 noundef zeroext 88) #20
  call void @glColor3ubv(ptr noundef nonnull %8) #20
  call fastcc void @drawArrow(i32 noundef 3) #22
  call fastcc void @drawArrow(i32 noundef 2) #22
  call void @UI_make_axis_color(ptr noundef nonnull %7, ptr noundef nonnull %8, i8 noundef zeroext 89) #20
  call void @glColor3ubv(ptr noundef nonnull %8) #20
  call fastcc void @drawArrow(i32 noundef 0) #22
  call fastcc void @drawArrow(i32 noundef 1) #22
  call void @glLineWidth(float noundef 1.000000e+00) #20
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #21
  br label %106

106:                                              ; preds = %35, %103, %59, %56, %53, %37
  call void @glPopMatrix() #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  br label %107

107:                                              ; preds = %106, %12, %4
  ret void
}

; Function Attrs: optsize
declare ptr @WM_keymap_active(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @initMouseInput(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initSkinResize(ptr noundef %0) unnamed_addr #0 !PGOFuncName !206 {
  store i32 4, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applySkinResize, ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 3) #20
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !94
  %6 = or i32 %5, 512
  store i32 %6, ptr %4, align 4, !tbaa !94
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 4
  %8 = load <4 x i16>, ptr %7, align 2, !tbaa !81
  %9 = or <4 x i16> %8, <i16 1, i16 1, i16 1, i16 1>
  store <4 x i16> %9, ptr %7, align 2, !tbaa !81
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %11 = load ptr, ptr %10, align 8, !tbaa !95
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = or i32 %5, 1536
  store i32 %14, ptr %4, align 4, !tbaa !94
  br label %15

15:                                               ; preds = %13, %1
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 2, ptr %17, align 2, !tbaa !117
  store i16 2, ptr %16, align 8, !tbaa !119
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store <2 x float> <float 0.000000e+00, float 0x3FB99999A0000000>, ptr %18, align 4, !tbaa !59
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %19, align 4, !tbaa !59
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %20, float noundef 0x3FB99999A0000000) #22
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %22 = load ptr, ptr %21, align 8, !tbaa !121
  %23 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 38, i32 1
  %24 = load i8, ptr %23, align 4, !tbaa !122
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %25, ptr %26, align 4, !tbaa !139
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %27, align 8, !tbaa !68
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2, i64 1
  store i32 0, ptr %28, align 4, !tbaa !68
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2, i64 2
  store i32 0, ptr %29, align 8, !tbaa !68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initToSphere(ptr noundef %0) unnamed_addr #0 !PGOFuncName !207 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !208
  store i32 5, ptr %0, align 8, !tbaa !82
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyToSphere, ptr %4, align 8, !tbaa !116
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 8) #20
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 0, ptr %6, align 2, !tbaa !117
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 0, ptr %7, align 8, !tbaa !119
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store <2 x float> <float 0.000000e+00, float 0x3FB99999A0000000>, ptr %8, align 4, !tbaa !59
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %9, align 4, !tbaa !59
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %10, float noundef 0x3FB99999A0000000) #22
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 38, i32 1
  %14 = load i8, ptr %13, align 4, !tbaa !122
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %15, ptr %16, align 4, !tbaa !139
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %17, align 8, !tbaa !68
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 5
  %19 = load i16, ptr %18, align 8, !tbaa !81
  %20 = or i16 %19, 3
  store i16 %20, ptr %18, align 8, !tbaa !81
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !94
  %23 = or i32 %22, 256
  store i32 %23, ptr %21, align 4, !tbaa !94
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !154
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 5
  %29 = load float, ptr %28, align 4, !tbaa !209
  br label %44

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 5
  br label %33

33:                                               ; preds = %30, %33
  %34 = phi i32 [ 0, %30 ], [ %40, %33 ]
  %35 = phi ptr [ %3, %30 ], [ %41, %33 ]
  %36 = getelementptr inbounds %struct.TransData, ptr %35, i64 0, i32 4
  %37 = tail call fastcc float @len_v3v3(ptr noundef nonnull %31, ptr noundef nonnull %36) #22
  %38 = load float, ptr %32, align 4, !tbaa !209
  %39 = fadd float %37, %38
  store float %39, ptr %32, align 4, !tbaa !209
  %40 = add nuw nsw i32 %34, 1
  %41 = getelementptr inbounds %struct.TransData, ptr %35, i64 1
  %42 = load i32, ptr %24, align 8, !tbaa !154
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %33, label %44, !llvm.loop !210

44:                                               ; preds = %33, %27
  %45 = phi float [ %29, %27 ], [ %39, %33 ]
  %46 = phi i32 [ %25, %27 ], [ %42, %33 ]
  %47 = sitofp i32 %46 to float
  %48 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 5
  %49 = fdiv float %45, %47
  store float %49, ptr %48, align 4, !tbaa !209
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initShear(ptr noundef %0) unnamed_addr #0 !PGOFuncName !211 {
  store i32 6, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyShear, ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 8
  store ptr @handleEventShear, ptr %3, align 8, !tbaa !112
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @setInputPostFct(ptr noundef nonnull %4, ptr noundef nonnull @postInputShear) #20
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 9) #20
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 0, ptr %5, align 2, !tbaa !117
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 0, ptr %6, align 8, !tbaa !119
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store <2 x float> <float 0.000000e+00, float 0x3FB99999A0000000>, ptr %7, align 4, !tbaa !59
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %8, align 4, !tbaa !59
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %9, float noundef 0x3FB99999A0000000) #22
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %11 = load ptr, ptr %10, align 8, !tbaa !121
  %12 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 38, i32 1
  %13 = load i8, ptr %12, align 4, !tbaa !122
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %14, ptr %15, align 4, !tbaa !139
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %16, align 8, !tbaa !68
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !94
  %19 = or i32 %18, 256
  store i32 %19, ptr %17, align 4, !tbaa !94
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initBend(ptr noundef %0) unnamed_addr #0 !PGOFuncName !212 {
  %2 = alloca [2 x float], align 8
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61
  %5 = load <2 x i32>, ptr %4, align 8, !tbaa !68
  %6 = sitofp <2 x i32> %5 to <2 x float>
  store <2 x float> %6, ptr %2, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  store i32 7, ptr %0, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @Bend, ptr %7, align 8, !tbaa !116
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 8
  store ptr @handleEventBend, ptr %8, align 8, !tbaa !112
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @setInputPostFct(ptr noundef nonnull %9, ptr noundef nonnull @postInputRotation) #20
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %9, i32 noundef 6) #20
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 1, ptr %10, align 2, !tbaa !117
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 1, ptr %11, align 8, !tbaa !119
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store <2 x float> <float 0.000000e+00, float 0x3FB6571840000000>, ptr %12, align 4, !tbaa !59
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3F91DF46A0000000, ptr %13, align 4, !tbaa !59
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %14, float noundef 0x3FB6571840000000) #22
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %16 = load ptr, ptr %15, align 8, !tbaa !121
  %17 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 38, i32 1
  %18 = load i8, ptr %17, align 4, !tbaa !122
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %19, ptr %20, align 4, !tbaa !139
  %21 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 38, i32 2
  %22 = load i8, ptr %21, align 1, !tbaa !146
  %23 = icmp eq i8 %22, 2
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 3
  store i8 %24, ptr %25, align 4, !tbaa !147
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 5, ptr %26, align 8, !tbaa !68
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2, i64 1
  store i32 1, ptr %27, align 4, !tbaa !68
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !94
  %30 = or i32 %29, 256
  store i32 %30, ptr %28, align 4, !tbaa !94
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  tail call void @calculateCenterCursor(ptr noundef nonnull %0, ptr noundef nonnull %31) #20
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 5
  store float 0.000000e+00, ptr %32, align 4, !tbaa !209
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !152
  %34 = tail call ptr %33(i64 noundef 52, ptr noundef nonnull @__func__.initBend) #20
  %35 = load ptr, ptr %15, align 8, !tbaa !121
  %36 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %37 = load ptr, ptr %36, align 8, !tbaa !61
  %38 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %35, ptr noundef %37) #20
  tail call fastcc void @copy_v3_v3(ptr noundef %34, ptr noundef %38) #22
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %40 = load ptr, ptr %39, align 8, !tbaa !48
  %41 = getelementptr inbounds %struct.BendCustomData, ptr %34, i64 0, i32 1
  call void @ED_view3d_win_to_3d(ptr noundef %40, ptr noundef %38, ptr noundef nonnull %2, ptr noundef nonnull %41) #20
  %42 = getelementptr inbounds %struct.BendCustomData, ptr %34, i64 0, i32 2
  %43 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %42, ptr noundef nonnull %43) #22
  %44 = load i32, ptr %28, align 4, !tbaa !94
  %45 = and i32 %44, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %1
  %48 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %49 = load ptr, ptr %48, align 8, !tbaa !95
  %50 = getelementptr inbounds %struct.Object, ptr %49, i64 0, i32 47, i64 3
  call fastcc void @sub_v3_v3(ptr noundef %34, ptr noundef nonnull %50) #22
  %51 = load ptr, ptr %48, align 8, !tbaa !95
  %52 = getelementptr inbounds %struct.Object, ptr %51, i64 0, i32 47, i64 3
  call fastcc void @sub_v3_v3(ptr noundef nonnull %41, ptr noundef nonnull %52) #22
  br label %53

53:                                               ; preds = %47, %1
  %54 = call fastcc float @normalize_v3(ptr noundef nonnull %42) #22
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %41, ptr noundef %34) #22
  %55 = getelementptr inbounds %struct.BendCustomData, ptr %34, i64 0, i32 3
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %55, ptr noundef nonnull %3, ptr noundef nonnull %42) #22
  %56 = call fastcc float @normalize_v3(ptr noundef nonnull %55) #22
  %57 = call fastcc float @len_v3v3(ptr noundef nonnull %41, ptr noundef %34) #22
  %58 = getelementptr inbounds %struct.BendCustomData, ptr %34, i64 0, i32 4
  store float %57, ptr %58, align 4, !tbaa !213
  %59 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  store ptr %34, ptr %59, align 8, !tbaa !141
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initShrinkFatten(ptr noundef %0) unnamed_addr #0 !PGOFuncName !215 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !96
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %10, label %9

9:                                                ; preds = %5, %1
  tail call fastcc void @initResize(ptr noundef nonnull %0) #22
  br label %28

10:                                               ; preds = %5
  store i32 8, ptr %0, align 8, !tbaa !82
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyShrinkFatten, ptr %11, align 8, !tbaa !116
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %12, i32 noundef 11) #20
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 0, ptr %13, align 2, !tbaa !117
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 0, ptr %14, align 8, !tbaa !119
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %15, align 4, !tbaa !59
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3FB99999A0000000, ptr %16, align 4, !tbaa !59
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %17, float noundef 1.000000e+00) #22
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %19 = load ptr, ptr %18, align 8, !tbaa !121
  %20 = getelementptr inbounds %struct.Scene, ptr %19, i64 0, i32 38, i32 1
  %21 = load i8, ptr %20, align 4, !tbaa !122
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %22, ptr %23, align 4, !tbaa !139
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 1, ptr %24, align 8, !tbaa !68
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !94
  %27 = or i32 %26, 256
  store i32 %27, ptr %25, align 4, !tbaa !94
  br label %28

28:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initTilt(ptr noundef %0) unnamed_addr #0 !PGOFuncName !216 {
  store i32 9, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyTilt, ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 5) #20
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 0, ptr %4, align 2, !tbaa !117
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 0, ptr %5, align 8, !tbaa !119
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store <2 x float> <float 0.000000e+00, float 0x3FB6571840000000>, ptr %6, align 4, !tbaa !59
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3F91DF46A0000000, ptr %7, align 4, !tbaa !59
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %8, float noundef 0x3F91DF46A0000000) #22
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 38, i32 1
  %12 = load i8, ptr %11, align 4, !tbaa !122
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %13, ptr %14, align 4, !tbaa !139
  %15 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 38, i32 2
  %16 = load i8, ptr %15, align 1, !tbaa !146
  %17 = icmp eq i8 %16, 2
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 3
  store i8 %18, ptr %19, align 4, !tbaa !147
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 5, ptr %20, align 8, !tbaa !68
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !94
  %23 = or i32 %22, 4194560
  store i32 %23, ptr %21, align 4, !tbaa !94
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initCurveShrinkFatten(ptr noundef %0) unnamed_addr #0 !PGOFuncName !217 {
  store i32 16, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyCurveShrinkFatten, ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2) #20
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 0, ptr %4, align 2, !tbaa !117
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 0, ptr %5, align 8, !tbaa !119
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store <2 x float> <float 0.000000e+00, float 0x3FB99999A0000000>, ptr %6, align 4, !tbaa !59
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %7, align 4, !tbaa !59
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %8, float noundef 0x3FB99999A0000000) #22
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 38, i32 1
  %12 = load i8, ptr %11, align 4, !tbaa !122
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %13, ptr %14, align 4, !tbaa !139
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %15, align 8, !tbaa !68
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !94
  %18 = or i32 %17, 1280
  store i32 %18, ptr %16, align 4, !tbaa !94
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initMaskShrinkFatten(ptr noundef %0) unnamed_addr #0 !PGOFuncName !218 {
  store i32 17, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyMaskShrinkFatten, ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2) #20
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 0, ptr %4, align 2, !tbaa !117
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 0, ptr %5, align 8, !tbaa !119
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store <2 x float> <float 0.000000e+00, float 0x3FB99999A0000000>, ptr %6, align 4, !tbaa !59
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %7, align 4, !tbaa !59
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %8, float noundef 0x3FB99999A0000000) #22
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 38, i32 1
  %12 = load i8, ptr %11, align 4, !tbaa !122
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %13, ptr %14, align 4, !tbaa !139
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %15, align 8, !tbaa !68
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !94
  %18 = or i32 %17, 1280
  store i32 %18, ptr %16, align 4, !tbaa !94
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initPushPull(ptr noundef %0) unnamed_addr #0 !PGOFuncName !219 {
  store i32 11, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyPushPull, ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 11) #20
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 0, ptr %4, align 2, !tbaa !117
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 0, ptr %5, align 8, !tbaa !119
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %6, align 4, !tbaa !59
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3FB99999A0000000, ptr %7, align 4, !tbaa !59
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %8, float noundef 1.000000e+00) #22
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 38, i32 1
  %12 = load i8, ptr %11, align 4, !tbaa !122
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %13, ptr %14, align 4, !tbaa !139
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 1, ptr %15, align 8, !tbaa !68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initCrease(ptr noundef %0) unnamed_addr #0 !PGOFuncName !220 {
  store i32 12, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyCrease, ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 4) #20
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 0, ptr %4, align 2, !tbaa !117
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 0, ptr %5, align 8, !tbaa !119
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store <2 x float> <float 0.000000e+00, float 0x3FB99999A0000000>, ptr %6, align 4, !tbaa !59
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %7, align 4, !tbaa !59
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %8, float noundef 0x3FB99999A0000000) #22
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 38, i32 1
  %12 = load i8, ptr %11, align 4, !tbaa !122
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %13, ptr %14, align 4, !tbaa !139
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %15, align 8, !tbaa !68
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !94
  %18 = or i32 %17, 4194560
  store i32 %18, ptr %16, align 4, !tbaa !94
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initBoneEnvelope(ptr noundef %0) unnamed_addr #0 !PGOFuncName !221 {
  store i32 15, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyBoneEnvelope, ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2) #20
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 0, ptr %4, align 2, !tbaa !117
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 0, ptr %5, align 8, !tbaa !119
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store <2 x float> <float 0.000000e+00, float 0x3FB99999A0000000>, ptr %6, align 4, !tbaa !59
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %7, align 4, !tbaa !59
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %8, float noundef 0x3FB99999A0000000) #22
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 38, i32 1
  %12 = load i8, ptr %11, align 4, !tbaa !122
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %13, ptr %14, align 4, !tbaa !139
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %15, align 8, !tbaa !68
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !94
  %18 = or i32 %17, 4194560
  store i32 %18, ptr %16, align 4, !tbaa !94
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initBoneSize(ptr noundef %0) unnamed_addr #0 !PGOFuncName !222 {
  store i32 14, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyBoneSize, ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 3) #20
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 2, ptr %4, align 2, !tbaa !117
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 2, ptr %5, align 8, !tbaa !119
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 4
  %7 = load <4 x i16>, ptr %6, align 2, !tbaa !81
  %8 = or <4 x i16> %7, <i16 1, i16 1, i16 1, i16 1>
  store <4 x i16> %8, ptr %6, align 2, !tbaa !81
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store <2 x float> <float 0.000000e+00, float 0x3FB99999A0000000>, ptr %9, align 4, !tbaa !59
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %10, align 4, !tbaa !59
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %11, float noundef 0x3FB99999A0000000) #22
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %13 = load ptr, ptr %12, align 8, !tbaa !121
  %14 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 38, i32 1
  %15 = load i8, ptr %14, align 4, !tbaa !122
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %16, ptr %17, align 4, !tbaa !139
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %18, align 8, !tbaa !68
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2, i64 1
  store i32 0, ptr %19, align 4, !tbaa !68
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2, i64 2
  store i32 0, ptr %20, align 8, !tbaa !68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initBoneRoll(ptr noundef %0) unnamed_addr #0 !PGOFuncName !223 {
  store i32 18, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyBoneRoll, ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 5) #20
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 0, ptr %4, align 2, !tbaa !117
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 0, ptr %5, align 8, !tbaa !119
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store <2 x float> <float 0.000000e+00, float 0x3FB6571840000000>, ptr %6, align 4, !tbaa !59
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3F91DF46A0000000, ptr %7, align 4, !tbaa !59
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %8, float noundef 0x3FB6571840000000) #22
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 38, i32 1
  %12 = load i8, ptr %11, align 4, !tbaa !122
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %13, ptr %14, align 4, !tbaa !139
  %15 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 38, i32 2
  %16 = load i8, ptr %15, align 1, !tbaa !146
  %17 = icmp eq i8 %16, 2
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 3
  store i8 %18, ptr %19, align 4, !tbaa !147
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 5, ptr %20, align 8, !tbaa !68
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !94
  %23 = or i32 %22, 4194560
  store i32 %23, ptr %21, align 4, !tbaa !94
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initTimeTranslate(ptr noundef %0) unnamed_addr #0 !PGOFuncName !224 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %3 = load i8, ptr %2, align 8, !tbaa !34
  switch i8 %3, label %4 [
    i8 12, label %6
    i8 8, label %6
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  store i16 3, ptr %5, align 4, !tbaa !93
  br label %6

6:                                                ; preds = %1, %1, %4
  store i32 19, ptr %0, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyTimeTranslate, ptr %7, align 8, !tbaa !116
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %8, i32 noundef 0) #20
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 0, ptr %9, align 2, !tbaa !117
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 4
  store i16 0, ptr %11, align 2, !tbaa !118
  store i16 0, ptr %10, align 8, !tbaa !119
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 1.000000e+00, ptr %13, align 4, !tbaa !59
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %12, align 4, !tbaa !59
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %14, float noundef 1.000000e+00) #22
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %16 = load ptr, ptr %15, align 8, !tbaa !121
  %17 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 38, i32 1
  %18 = load i8, ptr %17, align 4, !tbaa !122
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %19, ptr %20, align 4, !tbaa !139
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %21, align 8, !tbaa !68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initTimeSlide(ptr noundef %0) unnamed_addr #0 !PGOFuncName !225 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %3 = load i8, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i8 %3, 12
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = getelementptr inbounds %struct.SpaceAction, ptr %9, i64 0, i32 11
  %11 = load i16, ptr %10, align 2, !tbaa !226
  %12 = or i16 %11, 1
  store i16 %12, ptr %10, align 2, !tbaa !226
  br label %15

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  store i16 3, ptr %14, align 4, !tbaa !93
  br label %15

15:                                               ; preds = %13, %5
  store i32 20, ptr %0, align 8, !tbaa !82
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyTimeSlide, ptr %16, align 8, !tbaa !116
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !94
  %19 = or i32 %18, 131072
  store i32 %19, ptr %17, align 4, !tbaa !94
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %20, i32 noundef 0) #20
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 0, ptr %21, align 2, !tbaa !117
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 4
  store i16 0, ptr %23, align 2, !tbaa !118
  store i16 0, ptr %22, align 8, !tbaa !119
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 1.000000e+00, ptr %25, align 4, !tbaa !59
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %24, align 4, !tbaa !59
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %26, float noundef 1.000000e+00) #22
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %28 = load ptr, ptr %27, align 8, !tbaa !121
  %29 = getelementptr inbounds %struct.Scene, ptr %28, i64 0, i32 38, i32 1
  %30 = load i8, ptr %29, align 4, !tbaa !122
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %31, ptr %32, align 4, !tbaa !139
  %33 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %33, align 8, !tbaa !68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initTimeScale(ptr noundef %0) unnamed_addr #0 !PGOFuncName !229 {
  %2 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %4 = load i8, ptr %3, align 8, !tbaa !34
  %5 = add i8 %4, -14
  %6 = icmp ult i8 %5, -2
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  store i16 3, ptr %8, align 4, !tbaa !93
  br label %9

9:                                                ; preds = %7, %1
  store i32 21, ptr %0, align 8, !tbaa !82
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyTimeScale, ptr %10, align 8, !tbaa !116
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !230
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  store float %15, ptr %16, align 4, !tbaa !59
  call void @projectFloatView(ptr noundef nonnull %0, ptr noundef nonnull %16, ptr noundef nonnull %2) #22
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 22
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 22, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !68
  %20 = sitofp i32 %19 to float
  %21 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  store float %20, ptr %21, align 4, !tbaa !59
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  call void @initMouseInput(ptr noundef nonnull %0, ptr noundef nonnull %22, ptr noundef nonnull %2, ptr noundef nonnull %17) #20
  call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %22, i32 noundef 3) #20
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !94
  %25 = or i32 %24, 512
  store i32 %25, ptr %23, align 4, !tbaa !94
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 5
  %28 = load i16, ptr %27, align 8, !tbaa !81
  %29 = or i16 %28, 1
  store i16 %29, ptr %27, align 8, !tbaa !81
  %30 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 0, ptr %30, align 2, !tbaa !117
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 4
  store i16 0, ptr %31, align 2, !tbaa !118
  store i16 0, ptr %26, align 8, !tbaa !119
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  %33 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 1.000000e+00, ptr %33, align 4, !tbaa !59
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %32, align 4, !tbaa !59
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  call fastcc void @copy_v3_fl(ptr noundef nonnull %34, float noundef 1.000000e+00) #22
  %35 = load ptr, ptr %11, align 8, !tbaa !121
  %36 = getelementptr inbounds %struct.Scene, ptr %35, i64 0, i32 38, i32 1
  %37 = load i8, ptr %36, align 4, !tbaa !122
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %38, ptr %39, align 4, !tbaa !139
  %40 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %40, align 8, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initBakeTime(ptr noundef %0) unnamed_addr #0 !PGOFuncName !231 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyBakeTime, ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #20
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 0, ptr %4, align 2, !tbaa !117
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 0, ptr %5, align 8, !tbaa !119
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %6, align 4, !tbaa !59
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3FB99999A0000000, ptr %7, align 4, !tbaa !59
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %8, float noundef 1.000000e+00) #22
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 38, i32 1
  %12 = load i8, ptr %11, align 4, !tbaa !122
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %13, ptr %14, align 4, !tbaa !139
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %15, align 8, !tbaa !68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initMirror(ptr noundef %0) unnamed_addr #0 !PGOFuncName !232 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyMirror, ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #20
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !94
  %6 = or i32 %5, 512
  store i32 %6, ptr %4, align 4, !tbaa !94
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %8 = load ptr, ptr %7, align 8, !tbaa !95
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = or i32 %5, 1536
  store i32 %11, ptr %4, align 4, !tbaa !94
  br label %12

12:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initBevelWeight(ptr noundef %0) unnamed_addr #0 !PGOFuncName !233 {
  store i32 26, ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyBevelWeight, ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 4) #20
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 0, ptr %4, align 2, !tbaa !117
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  store i16 0, ptr %5, align 8, !tbaa !119
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store <2 x float> <float 0.000000e+00, float 0x3FB99999A0000000>, ptr %6, align 4, !tbaa !59
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 0x3F847AE160000000, ptr %7, align 4, !tbaa !59
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %8, float noundef 0x3FB99999A0000000) #22
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 38, i32 1
  %12 = load i8, ptr %11, align 4, !tbaa !122
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %13, ptr %14, align 4, !tbaa !139
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %15, align 8, !tbaa !68
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !94
  %18 = or i32 %17, 4194560
  store i32 %18, ptr %16, align 4, !tbaa !94
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initAlign(ptr noundef %0) unnamed_addr #0 !PGOFuncName !234 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !94
  %4 = or i32 %3, 256
  store i32 %4, ptr %2, align 4, !tbaa !94
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applyAlign, ptr %5, align 8, !tbaa !116
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initSeqSlide(ptr noundef %0) unnamed_addr #0 !PGOFuncName !235 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 7
  store ptr @applySeqSlide, ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1) #20
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 24
  store i16 1, ptr %4, align 2, !tbaa !117
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 4
  store i16 0, ptr %6, align 2, !tbaa !118
  store i16 1, ptr %5, align 8, !tbaa !119
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25
  store float 0.000000e+00, ptr %7, align 4, !tbaa !59
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 55
  %11 = load i16, ptr %10, align 4, !tbaa !236
  %12 = sitofp i16 %11 to float
  %13 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 65
  %14 = load float, ptr %13, align 4, !tbaa !237
  %15 = fdiv float %12, %14
  %16 = tail call float @llvm.floor.f32(float %15)
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 1
  store float %16, ptr %17, align 4, !tbaa !59
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 2
  store float 1.000000e+01, ptr %18, align 4, !tbaa !59
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 8
  tail call fastcc void @copy_v3_fl(ptr noundef nonnull %19, float noundef %16) #22
  %20 = load ptr, ptr %8, align 8, !tbaa !121
  %21 = getelementptr inbounds %struct.Scene, ptr %20, i64 0, i32 38, i32 1
  %22 = load i8, ptr %21, align 4, !tbaa !122
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 1
  store i32 %23, ptr %24, align 4, !tbaa !139
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2
  store i32 0, ptr %25, align 8, !tbaa !68
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 2, i64 1
  store i32 0, ptr %26, align 4, !tbaa !68
  ret void
}

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !238 {
  %3 = load float, ptr %1, align 4, !tbaa !59
  store float %3, ptr %0, align 4, !tbaa !59
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !59
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !59
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !59
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !59
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !59
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare void @RNA_property_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #9 !PGOFuncName !239 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #22
  ret float %2
}

; Function Attrs: optsize
declare void @RNA_property_boolean_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @transformApply(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 53
  store ptr %0, ptr %3, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 17
  %5 = load i32, ptr %4, align 8, !tbaa !86
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 65
  %10 = load ptr, ptr %9, align 8, !tbaa !172
  %11 = icmp ne ptr %10, null
  %12 = and i32 %5, 2
  %13 = icmp eq i32 %12, 0
  %14 = or i1 %13, %11
  br i1 %14, label %22, label %15

15:                                               ; preds = %8, %2
  tail call void @selectConstraint(ptr noundef nonnull %1) #20
  %16 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !116
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 61
  tail call void %17(ptr noundef nonnull %1, ptr noundef nonnull %20) #20
  tail call fastcc void @viewRedrawForce(ptr noundef %0, ptr noundef nonnull %1) #22
  br label %21

21:                                               ; preds = %19, %15
  store i32 0, ptr %4, align 8, !tbaa !86
  br label %24

22:                                               ; preds = %8
  br i1 %13, label %24, label %23

23:                                               ; preds = %22
  tail call fastcc void @viewRedrawForce(ptr noundef %0, ptr noundef nonnull %1) #22
  br label %24

24:                                               ; preds = %22, %23, %21
  %25 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !58
  %27 = and i32 %26, 16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 3
  store i16 2, ptr %30, align 4, !tbaa !93
  br label %31

31:                                               ; preds = %29, %24
  store ptr null, ptr %3, align 8, !tbaa !90
  ret void
}

; Function Attrs: optsize
declare void @selectConstraint(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @viewRedrawForce(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !240 {
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
  %11 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  %12 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  tail call void @WM_paint_cursor_tag_redraw(ptr noundef %11, ptr noundef %13) #20
  br label %86

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !94
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 85065728, i32 85196800
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef %19, ptr noundef null) #20
  %20 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 58
  %21 = load ptr, ptr %20, align 8, !tbaa !241
  %22 = icmp eq ptr %21, null
  br i1 %22, label %86, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %25 = load ptr, ptr %24, align 8, !tbaa !121
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 20
  %29 = load ptr, ptr %28, align 8, !tbaa !242
  %30 = getelementptr inbounds %struct.ToolSettings, ptr %29, i64 0, i32 21
  %31 = load i16, ptr %30, align 8, !tbaa !243
  %32 = and i16 %31, 1
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %86, label %38

34:                                               ; preds = %23
  %35 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !244
  %36 = and i16 %35, 1
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %86, label %38

38:                                               ; preds = %34, %27
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85524480, ptr noundef null) #20
  br label %86

39:                                               ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #20
  br label %86

40:                                               ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #20
  br label %86

41:                                               ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #20
  br label %86

42:                                               ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252772352, ptr noundef null) #20
  br label %86

43:                                               ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67502080, ptr noundef null) #20
  br label %86

44:                                               ; preds = %2
  %45 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %46 = load i32, ptr %45, align 8, !tbaa !58
  %47 = and i32 %46, 128
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #20
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %50) #20
  br label %86

51:                                               ; preds = %44
  %52 = and i32 %46, 256
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = tail call ptr @CTX_wm_window(ptr noundef %0) #20
  %56 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %57 = load ptr, ptr %56, align 8, !tbaa !48
  tail call void @WM_paint_cursor_tag_redraw(ptr noundef %55, ptr noundef %57) #20
  br label %86

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %60 = load ptr, ptr %59, align 8, !tbaa !62
  %61 = getelementptr inbounds %struct.ScrArea, ptr %60, i64 0, i32 19
  %62 = load ptr, ptr %61, align 8, !tbaa !63
  %63 = getelementptr inbounds %struct.SpaceImage, ptr %62, i64 0, i32 21
  %64 = load i16, ptr %63, align 2, !tbaa !245
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  %68 = load ptr, ptr %67, align 8, !tbaa !95
  %69 = getelementptr inbounds %struct.Object, ptr %68, i64 0, i32 19
  %70 = load ptr, ptr %69, align 8, !tbaa !190
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %70) #20
  br label %86

71:                                               ; preds = %58
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %60) #20
  br label %86

72:                                               ; preds = %2
  %73 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %74 = load ptr, ptr %73, align 8, !tbaa !62
  %75 = getelementptr inbounds %struct.ScrArea, ptr %74, i64 0, i32 19
  %76 = load ptr, ptr %75, align 8, !tbaa !63
  %77 = tail call zeroext i8 @ED_space_clip_check_show_trackedit(ptr noundef %76) #20
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %72
  %80 = tail call ptr @ED_space_clip_get_clip(ptr noundef %76) #20
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #20
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %80) #20
  br label %86

81:                                               ; preds = %72
  %82 = tail call zeroext i8 @ED_space_clip_check_show_maskedit(ptr noundef %76) #20
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #20
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 352321537, ptr noundef %85) #20
  br label %86

86:                                               ; preds = %79, %84, %81, %2, %66, %71, %39, %41, %43, %49, %54, %42, %40, %10, %38, %34, %27, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @transformEnd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 53
  store ptr %0, ptr %3, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 3
  %5 = load i16, ptr %4, align 4, !tbaa !93
  switch i16 %5, label %11 [
    i16 0, label %13
    i16 1, label %13
    i16 3, label %6
  ]

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 8, !tbaa !82
  %8 = icmp eq i32 %7, 28
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call fastcc void @doEdgeSlide(ptr noundef nonnull %1, float noundef 0.000000e+00) #22
  br label %10

10:                                               ; preds = %9, %6
  tail call void @restoreTransObjects(ptr noundef nonnull %1) #20
  br label %11

11:                                               ; preds = %2, %10
  %12 = phi i32 [ 2, %10 ], [ 4, %2 ]
  tail call void @special_aftertrans_update(ptr noundef %0, ptr noundef nonnull %1) #20
  tail call void @postTrans(ptr noundef %0, ptr noundef nonnull %1) #20
  tail call fastcc void @viewRedrawPost(ptr noundef %0, ptr noundef nonnull %1) #22
  tail call fastcc void @viewRedrawForce(ptr noundef %0, ptr noundef nonnull %1) #22
  br label %13

13:                                               ; preds = %2, %2, %11
  %14 = phi i32 [ %12, %11 ], [ 1, %2 ], [ 1, %2 ]
  store ptr null, ptr %3, align 8, !tbaa !90
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @doEdgeSlide(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #0 !PGOFuncName !246 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %7 = load ptr, ptr %6, align 8, !tbaa !141
  %8 = load ptr, ptr %7, align 8, !tbaa !247
  %9 = getelementptr inbounds %struct.EdgeSlideData, ptr %7, i64 0, i32 8
  store float %1, ptr %9, align 8, !tbaa !249
  %10 = getelementptr inbounds %struct.EdgeSlideData, ptr %7, i64 0, i32 9
  %11 = load i8, ptr %10, align 4, !tbaa !250
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %13, label %35

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.EdgeSlideData, ptr %7, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !251
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %77

17:                                               ; preds = %13
  %18 = fcmp ogt float %1, 0.000000e+00
  %19 = fneg float %1
  %20 = select i1 %18, float %1, float %19
  br label %21

21:                                               ; preds = %17, %21
  %22 = phi ptr [ %8, %17 ], [ %32, %21 ]
  %23 = phi i32 [ 0, %17 ], [ %31, %21 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  %24 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %22, i64 0, i32 2
  %25 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %22, i64 0, i32 3
  %26 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %22, i64 0, i32 6
  %27 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %22, i64 0, i32 5
  %28 = select i1 %18, ptr %27, ptr %26
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %28) #22
  call fastcc void @mul_v3_fl(ptr noundef nonnull %3, float noundef %20) #22
  %29 = load ptr, ptr %24, align 8, !tbaa !252
  %30 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 2
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %30, ptr noundef nonnull %25, ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  %31 = add nuw nsw i32 %23, 1
  %32 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %22, i64 1
  %33 = load i32, ptr %14, align 8, !tbaa !251
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %21, label %77, !llvm.loop !254

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.EdgeSlideData, ptr %7, i64 0, i32 11
  %37 = load i32, ptr %36, align 8, !tbaa !255
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %8, i64 %38, i32 4
  %40 = load float, ptr %39, align 4, !tbaa !256
  %41 = getelementptr inbounds %struct.EdgeSlideData, ptr %7, i64 0, i32 10
  %42 = load i8, ptr %41, align 1, !tbaa !257
  %43 = icmp eq i8 %42, 0
  %44 = fneg float %1
  %45 = select i1 %43, float %44, float %1
  %46 = fadd float %45, 1.000000e+00
  %47 = fmul float %46, 5.000000e-01
  %48 = fmul float %40, %47
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  %49 = getelementptr inbounds %struct.EdgeSlideData, ptr %7, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !251
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %35, %71
  %53 = phi ptr [ %73, %71 ], [ %8, %35 ]
  %54 = phi i32 [ %72, %71 ], [ 0, %35 ]
  %55 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %53, i64 0, i32 4
  %56 = load float, ptr %55, align 4, !tbaa !256
  %57 = fcmp ogt float %56, 0x3E80000000000000
  br i1 %57, label %58, label %71

58:                                               ; preds = %52
  %59 = call fastcc float @min_ff(float noundef %56, float noundef %48) #22
  %60 = fdiv float %59, %56
  %61 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %53, i64 0, i32 3
  %62 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %53, i64 0, i32 5
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %61, ptr noundef nonnull %62) #22
  %63 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %53, i64 0, i32 6
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %61, ptr noundef nonnull %63) #22
  %64 = load i8, ptr %41, align 1, !tbaa !257
  %65 = icmp eq i8 %64, 0
  %66 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %53, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !252
  %68 = getelementptr inbounds %struct.BMVert, ptr %67, i64 0, i32 2
  br i1 %65, label %70, label %69

69:                                               ; preds = %58
  call fastcc void @interp_line_v3_v3v3v3(ptr noundef nonnull %68, ptr noundef nonnull %5, ptr noundef nonnull %61, ptr noundef nonnull %4, float noundef %60) #22
  br label %71

70:                                               ; preds = %58
  call fastcc void @interp_line_v3_v3v3v3(ptr noundef nonnull %68, ptr noundef nonnull %4, ptr noundef nonnull %61, ptr noundef nonnull %5, float noundef %60) #22
  br label %71

71:                                               ; preds = %69, %70, %52
  %72 = add nuw nsw i32 %54, 1
  %73 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %53, i64 1
  %74 = load i32, ptr %49, align 8, !tbaa !251
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %52, label %76, !llvm.loop !258

76:                                               ; preds = %71, %35
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  br label %77

77:                                               ; preds = %21, %13, %76
  call void @projectEdgeSlideData(ptr noundef %0, i8 noundef zeroext 0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @viewRedrawPost(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !259 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  tail call void @ED_area_headerprint(ptr noundef %4, ptr noundef null) #20
  %5 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  %6 = load i8, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %8, label %37

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !242
  %15 = getelementptr inbounds %struct.ToolSettings, ptr %14, i64 0, i32 21
  %16 = load i16, ptr %15, align 8, !tbaa !243
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %24, label %23

19:                                               ; preds = %8
  %20 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !244
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %12
  tail call void @WM_main_add_notifier(i32 noundef 239468545, ptr noundef null) #20
  br label %24

24:                                               ; preds = %23, %19, %12
  %25 = load i32, ptr %1, align 8, !tbaa !82
  %26 = icmp eq i32 %25, 28
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 57
  %29 = load ptr, ptr %28, align 8, !tbaa !260
  %30 = getelementptr inbounds %struct.ToolSettings, ptr %29, i64 0, i32 10
  %31 = load i8, ptr %30, align 1, !tbaa !261
  %32 = and i8 %31, 4
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef null) #20
  br label %35

35:                                               ; preds = %34, %27, %24
  %36 = tail call ptr @CTX_data_scene(ptr noundef %0) #20
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 68288512, ptr noundef %36) #20
  br label %37

37:                                               ; preds = %35, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @projectEdgeSlideData(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %6 = load ptr, ptr %5, align 8, !tbaa !141
  %7 = getelementptr inbounds %struct.EdgeSlideData, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !262
  %9 = getelementptr inbounds %struct.EdgeSlideData, ptr %6, i64 0, i32 6
  %10 = load i8, ptr %9, align 8, !tbaa !263
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %176, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.EdgeSlideData, ptr %6, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !251
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %176

16:                                               ; preds = %12
  %17 = load ptr, ptr %6, align 8, !tbaa !247
  %18 = getelementptr inbounds %struct.EdgeSlideData, ptr %6, i64 0, i32 2
  %19 = getelementptr inbounds %struct.EdgeSlideData, ptr %6, i64 0, i32 8
  %20 = icmp eq i8 %1, 0
  %21 = getelementptr inbounds %struct.EdgeSlideData, ptr %6, i64 0, i32 7
  br label %22

22:                                               ; preds = %16, %171
  %23 = phi ptr [ %17, %16 ], [ %172, %171 ]
  %24 = phi i32 [ 0, %16 ], [ %173, %171 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  %25 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %23, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !252
  %27 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 6, ptr noundef %26) #22
  %28 = icmp eq ptr %27, null
  br i1 %28, label %171, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %23, i64 0, i32 1
  br label %31

31:                                               ; preds = %29, %168
  %32 = phi ptr [ %27, %29 ], [ %169, %168 ]
  %33 = load ptr, ptr %18, align 8, !tbaa !264
  %34 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !265
  %36 = call ptr @BLI_ghash_lookup(ptr noundef %33, ptr noundef %35) #20
  %37 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !268
  %39 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %38, i8 noundef zeroext 1) #22, !range !269
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !270
  %44 = getelementptr inbounds %struct.BMLoop, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !268
  %46 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %45, i8 noundef zeroext 1) #22, !range !269
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %80, label %48

48:                                               ; preds = %41, %31
  %49 = phi ptr [ %32, %31 ], [ %43, %41 ]
  %50 = load float, ptr %19, align 8, !tbaa !249
  %51 = fcmp olt float %50, 0.000000e+00
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.BMLoop, ptr %49, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !271
  %55 = getelementptr inbounds %struct.BMLoop, ptr %54, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !265
  %57 = load ptr, ptr %30, align 8, !tbaa !272
  %58 = call zeroext i8 @BM_vert_in_face(ptr noundef %56, ptr noundef %57) #20
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %77, label %70

60:                                               ; preds = %48
  %61 = fcmp ogt float %50, 0.000000e+00
  br i1 %61, label %62, label %77

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.BMLoop, ptr %49, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !271
  %65 = getelementptr inbounds %struct.BMLoop, ptr %64, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !265
  %67 = load ptr, ptr %23, align 8, !tbaa !273
  %68 = call zeroext i8 @BM_vert_in_face(ptr noundef %66, ptr noundef %67) #20
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %62, %52
  %71 = phi ptr [ %53, %52 ], [ %63, %62 ]
  %72 = load ptr, ptr %18, align 8, !tbaa !264
  %73 = load ptr, ptr %71, align 8, !tbaa !271
  %74 = getelementptr inbounds %struct.BMLoop, ptr %73, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !265
  %76 = call ptr @BLI_ghash_lookup(ptr noundef %72, ptr noundef %75) #20
  br label %77

77:                                               ; preds = %70, %60, %62, %52
  %78 = phi ptr [ %36, %52 ], [ %36, %62 ], [ %36, %60 ], [ %76, %70 ]
  %79 = icmp eq ptr %78, null
  br i1 %79, label %168, label %156

80:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #21
  %81 = load ptr, ptr %25, align 8, !tbaa !252
  %82 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 4, ptr noundef %81) #22
  %83 = icmp eq ptr %82, null
  br i1 %83, label %154, label %84

84:                                               ; preds = %80, %88
  %85 = phi ptr [ %89, %88 ], [ %82, %80 ]
  %86 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %85, i8 noundef zeroext 1) #22, !range !269
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #22
  %90 = icmp eq ptr %89, null
  br i1 %90, label %154, label %84, !llvm.loop !274

91:                                               ; preds = %84
  %92 = load float, ptr %19, align 8, !tbaa !249
  %93 = fcmp olt float %92, 0.000000e+00
  br i1 %93, label %94, label %111

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.BMEdge, ptr %85, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !275
  %97 = getelementptr inbounds %struct.BMLoop, ptr %96, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !265
  %99 = load ptr, ptr %30, align 8, !tbaa !272
  %100 = call zeroext i8 @BM_vert_in_face(ptr noundef %98, ptr noundef %99) #20
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %134

102:                                              ; preds = %94
  %103 = load ptr, ptr %95, align 8, !tbaa !275
  %104 = getelementptr inbounds %struct.BMLoop, ptr %103, i64 0, i32 4
  %105 = load ptr, ptr %104, align 8, !tbaa !271
  %106 = getelementptr inbounds %struct.BMLoop, ptr %105, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !265
  %108 = load ptr, ptr %30, align 8, !tbaa !272
  %109 = call zeroext i8 @BM_vert_in_face(ptr noundef %107, ptr noundef %108) #20
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %154, label %130

111:                                              ; preds = %91
  %112 = fcmp ogt float %92, 0.000000e+00
  br i1 %112, label %113, label %154

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.BMEdge, ptr %85, i64 0, i32 4
  %115 = load ptr, ptr %114, align 8, !tbaa !275
  %116 = getelementptr inbounds %struct.BMLoop, ptr %115, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !265
  %118 = load ptr, ptr %23, align 8, !tbaa !273
  %119 = call zeroext i8 @BM_vert_in_face(ptr noundef %117, ptr noundef %118) #20
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %113
  %122 = load ptr, ptr %114, align 8, !tbaa !275
  %123 = getelementptr inbounds %struct.BMLoop, ptr %122, i64 0, i32 4
  %124 = load ptr, ptr %123, align 8, !tbaa !271
  %125 = getelementptr inbounds %struct.BMLoop, ptr %124, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !265
  %127 = load ptr, ptr %23, align 8, !tbaa !273
  %128 = call zeroext i8 @BM_vert_in_face(ptr noundef %126, ptr noundef %127) #20
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %154, label %130

130:                                              ; preds = %121, %102
  %131 = phi ptr [ %95, %102 ], [ %114, %121 ]
  %132 = load ptr, ptr %131, align 8, !tbaa !275
  %133 = getelementptr inbounds %struct.BMLoop, ptr %132, i64 0, i32 4
  br label %134

134:                                              ; preds = %130, %113, %94
  %135 = phi ptr [ %95, %94 ], [ %114, %113 ], [ %133, %130 ]
  %136 = load ptr, ptr %135, align 8, !tbaa !152
  %137 = icmp eq ptr %136, null
  br i1 %137, label %154, label %138

138:                                              ; preds = %134
  %139 = load ptr, ptr %25, align 8, !tbaa !252
  %140 = call ptr @BM_loop_other_edge_loop(ptr noundef nonnull %136, ptr noundef %139) #20
  %141 = getelementptr inbounds %struct.BMLoop, ptr %140, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !268
  %143 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %142) #22, !range !144
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %138
  %146 = getelementptr inbounds %struct.BMLoop, ptr %140, i64 0, i32 4
  %147 = load ptr, ptr %146, align 8, !tbaa !271
  br label %148

148:                                              ; preds = %138, %145
  %149 = phi ptr [ %147, %145 ], [ %32, %138 ]
  %150 = load ptr, ptr %18, align 8, !tbaa !264
  %151 = getelementptr inbounds %struct.BMLoop, ptr %149, i64 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !265
  %153 = call ptr @BLI_ghash_lookup(ptr noundef %150, ptr noundef %152) #20
  br label %154

154:                                              ; preds = %88, %80, %111, %121, %102, %134, %148
  %155 = phi ptr [ %153, %148 ], [ %36, %134 ], [ %36, %102 ], [ %36, %121 ], [ %36, %111 ], [ %36, %80 ], [ %36, %88 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #21
  br label %156

156:                                              ; preds = %77, %154
  %157 = phi ptr [ %78, %77 ], [ %155, %154 ]
  %158 = load ptr, ptr %8, align 8, !tbaa !278
  call void @BM_loop_interp_from_face(ptr noundef %158, ptr noundef nonnull %32, ptr noundef %157, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  br i1 %20, label %164, label %159

159:                                              ; preds = %156
  %160 = load ptr, ptr %8, align 8, !tbaa !278
  call void @BM_loop_interp_multires(ptr noundef %160, ptr noundef nonnull %32, ptr noundef %157) #20
  %161 = icmp eq ptr %36, %157
  br i1 %161, label %164, label %162

162:                                              ; preds = %159
  %163 = load ptr, ptr %8, align 8, !tbaa !278
  call void @BM_loop_interp_multires(ptr noundef %163, ptr noundef nonnull %32, ptr noundef %36) #20
  br label %164

164:                                              ; preds = %159, %162, %156
  %165 = load ptr, ptr %21, align 8, !tbaa !280
  %166 = load ptr, ptr %8, align 8, !tbaa !278
  %167 = load ptr, ptr %34, align 8, !tbaa !265
  call void @BM_elem_attrs_copy(ptr noundef %165, ptr noundef %166, ptr noundef %36, ptr noundef %167) #20
  br label %168

168:                                              ; preds = %77, %164
  %169 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #22
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %31, !llvm.loop !281

171:                                              ; preds = %168, %22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  %172 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %23, i64 1
  %173 = add nuw nsw i32 %24, 1
  %174 = load i32, ptr %13, align 8, !tbaa !251
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %22, label %176, !llvm.loop !282

176:                                              ; preds = %171, %12, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !283 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #22
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #22
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #10 !PGOFuncName !284 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !285
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: optsize
declare zeroext i8 @BM_vert_in_face(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !286 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !287
  %4 = tail call ptr %3(ptr noundef %0) #20
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @BM_loop_other_edge_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_boundary(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !289 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !275
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !271
  %8 = icmp eq ptr %7, %3
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: optsize
declare void @BM_loop_interp_from_face(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_loop_interp_multires(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @freeEdgeSlideTempFaces(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.EdgeSlideData, ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 8, !tbaa !263
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.EdgeSlideData, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !280
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @BM_mesh_free(ptr noundef nonnull %7) #20
  store ptr null, ptr %6, align 8, !tbaa !280
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.EdgeSlideData, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !264
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @BLI_ghash_free(ptr noundef nonnull %12, ptr noundef null, ptr noundef null) #20
  store ptr null, ptr %11, align 8, !tbaa !264
  br label %15

15:                                               ; preds = %10, %14, %1
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @freeEdgeSlideVerts(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  tail call void @freeEdgeSlideTempFaces(ptr noundef nonnull %3) #22
  %6 = getelementptr inbounds %struct.EdgeSlideData, ptr %3, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !262
  %8 = load ptr, ptr %7, align 8, !tbaa !278
  tail call void @bmesh_edit_end(ptr noundef %8, i32 noundef 1) #20
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !152
  %10 = load ptr, ptr %3, align 8, !tbaa !247
  tail call void %9(ptr noundef %10) #20
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !152
  tail call void %11(ptr noundef nonnull %3) #20
  store ptr null, ptr %2, align 8, !tbaa !141
  tail call void @recalcData(ptr noundef nonnull %0) #20
  br label %12

12:                                               ; preds = %1, %5
  ret void
}

; Function Attrs: optsize
declare void @bmesh_edit_end(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @recalcData(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @freeVertSlideVerts(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.VertSlideData, ptr %3, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !290
  %8 = icmp sgt i32 %7, 0
  %9 = load ptr, ptr %3, align 8, !tbaa !292
  br i1 %8, label %10, label %25

10:                                               ; preds = %5, %10
  %11 = phi i32 [ %19, %10 ], [ 0, %5 ]
  %12 = phi ptr [ %20, %10 ], [ %9, %5 ]
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !152
  %14 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %12, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !293
  tail call void %13(ptr noundef %15) #20
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !152
  %17 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %12, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !295
  tail call void %16(ptr noundef %18) #20
  %19 = add nuw nsw i32 %11, 1
  %20 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %12, i64 1
  %21 = load i32, ptr %6, align 8, !tbaa !290
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %10, label %23, !llvm.loop !296

23:                                               ; preds = %10
  %24 = load ptr, ptr %3, align 8, !tbaa !292
  br label %25

25:                                               ; preds = %23, %5
  %26 = phi ptr [ %24, %23 ], [ %9, %5 ]
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !152
  tail call void %27(ptr noundef %26) #20
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !152
  tail call void %28(ptr noundef nonnull %3) #20
  store ptr null, ptr %2, align 8, !tbaa !141
  tail call void @recalcData(ptr noundef %0) #20
  br label %29

29:                                               ; preds = %1, %25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @checkUseAxisMatrix(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !94
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 32
  %8 = load i16, ptr %7, align 2, !tbaa !153
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %12 = load ptr, ptr %11, align 8, !tbaa !95
  %13 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !96
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !297 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !298
  %4 = load i32, ptr %0, align 4, !tbaa !299
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !300 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !301
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !302
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !303 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !304
  %4 = load float, ptr %0, align 4, !tbaa !305
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !306 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !307
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !308
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: optsize
declare void @drawConstraint(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @drawPropCircle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @drawSnapping(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawEdgeSlide(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !309 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = load i32, ptr %1, align 8, !tbaa !82
  %7 = icmp eq i32 %6, 28
  br i1 %7, label %8, label %75

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  %10 = load ptr, ptr %9, align 8, !tbaa !141
  %11 = icmp eq ptr %10, null
  br i1 %11, label %75, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.EdgeSlideData, ptr %10, i64 0, i32 9
  %14 = load i8, ptr %13, align 4, !tbaa !250
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %75

16:                                               ; preds = %12
  %17 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  %18 = load ptr, ptr %10, align 8, !tbaa !247
  %19 = getelementptr inbounds %struct.EdgeSlideData, ptr %10, i64 0, i32 11
  %20 = load i32, ptr %19, align 8, !tbaa !255
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %18, i64 %21
  %23 = getelementptr inbounds %struct.EdgeSlideData, ptr %10, i64 0, i32 8
  %24 = load float, ptr %23, align 8, !tbaa !249
  %25 = fadd float %24, 1.000000e+00
  %26 = fmul float %25, 5.000000e-01
  %27 = tail call float @UI_GetThemeValuef(i32 noundef 48) #20
  %28 = fadd float %27, 1.500000e+00
  %29 = fadd float %28, -5.000000e-01
  %30 = tail call float @UI_GetThemeValuef(i32 noundef 37) #20
  %31 = fadd float %30, 5.000000e-01
  %32 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %18, i64 %21, i32 3
  %33 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %18, i64 %21, i32 5
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %32, ptr noundef nonnull %33) #22
  %34 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %18, i64 %21, i32 6
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %32, ptr noundef nonnull %34) #22
  %35 = icmp eq ptr %17, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %16
  %37 = getelementptr inbounds %struct.View3D, ptr %17, i64 0, i32 47
  %38 = load i8, ptr %37, align 8, !tbaa !310
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @glDisable(i32 noundef 2929) #20
  br label %41

41:                                               ; preds = %40, %36, %16
  tail call void @glEnable(i32 noundef 3042) #20
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #20
  tail call void @glPushAttrib(i32 noundef 7) #20
  tail call void @glPushMatrix() #20
  %42 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  %43 = load ptr, ptr %42, align 8, !tbaa !95
  %44 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 47
  tail call void @glMultMatrixf(ptr noundef nonnull %44) #20
  tail call void @glLineWidth(float noundef %31) #20
  tail call void @UI_ThemeColorShadeAlpha(i32 noundef 39, i32 noundef 80, i32 noundef -30) #20
  tail call void @glBegin(i32 noundef 1) #20
  %45 = load ptr, ptr %22, align 8, !tbaa !273
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.BMVert, ptr %45, i64 0, i32 2
  tail call void @glVertex3fv(ptr noundef nonnull %48) #20
  tail call void @glVertex3fv(ptr noundef nonnull %32) #20
  br label %49

49:                                               ; preds = %47, %41
  %50 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %18, i64 %21, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !272
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.BMVert, ptr %51, i64 0, i32 2
  tail call void @glVertex3fv(ptr noundef nonnull %54) #20
  tail call void @glVertex3fv(ptr noundef nonnull %32) #20
  br label %55

55:                                               ; preds = %53, %49
  tail call void @bglEnd() #20
  tail call void @UI_ThemeColorShadeAlpha(i32 noundef 28, i32 noundef -30, i32 noundef -30) #20
  tail call void @glPointSize(float noundef %28) #20
  tail call void @bglBegin(i32 noundef 0) #20
  %56 = getelementptr inbounds %struct.EdgeSlideData, ptr %10, i64 0, i32 10
  %57 = load i8, ptr %56, align 1, !tbaa !257
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %50, align 8, !tbaa !272
  %61 = icmp eq ptr %60, null
  br i1 %61, label %68, label %65

62:                                               ; preds = %55
  %63 = load ptr, ptr %22, align 8, !tbaa !273
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %62, %59
  %66 = phi ptr [ %60, %59 ], [ %63, %62 ]
  %67 = getelementptr inbounds %struct.BMVert, ptr %66, i64 0, i32 2
  tail call void @bglVertex3fv(ptr noundef nonnull %67) #20
  br label %68

68:                                               ; preds = %65, %62, %59
  tail call void @bglEnd() #20
  tail call void @UI_ThemeColorShadeAlpha(i32 noundef 28, i32 noundef 255, i32 noundef -30) #20
  tail call void @glPointSize(float noundef %29) #20
  tail call void @bglBegin(i32 noundef 0) #20
  call fastcc void @interp_line_v3_v3v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %32, ptr noundef nonnull %3, float noundef %26) #22
  call void @bglVertex3fv(ptr noundef nonnull %5) #20
  call void @bglEnd() #20
  call void @glPopMatrix() #20
  call void @glPopAttrib() #20
  call void @glDisable(i32 noundef 3042) #20
  br i1 %35, label %74, label %69

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.View3D, ptr %17, i64 0, i32 47
  %71 = load i8, ptr %70, align 8, !tbaa !310
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  call void @glEnable(i32 noundef 2929) #20
  br label %74

74:                                               ; preds = %73, %69, %68
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  br label %75

75:                                               ; preds = %8, %12, %74, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawVertSlide(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !311 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = load i32, ptr %1, align 8, !tbaa !82
  %6 = icmp eq i32 %5, 29
  br i1 %6, label %7, label %96

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  %9 = load ptr, ptr %8, align 8, !tbaa !141
  %10 = icmp eq ptr %9, null
  br i1 %10, label %96, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #20
  %13 = load ptr, ptr %9, align 8, !tbaa !292
  %14 = getelementptr inbounds %struct.VertSlideData, ptr %9, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !312
  %16 = sext i32 %15 to i64
  %17 = tail call float @UI_GetThemeValuef(i32 noundef 48) #20
  %18 = fadd float %17, 1.500000e+00
  %19 = tail call float @UI_GetThemeValuef(i32 noundef 37) #20
  %20 = fadd float %19, 5.000000e-01
  %21 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !94
  %23 = and i32 %22, 16777216
  %24 = icmp eq i32 %23, 0
  %25 = icmp eq ptr %12, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.View3D, ptr %12, i64 0, i32 47
  %28 = load i8, ptr %27, align 8, !tbaa !310
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @glDisable(i32 noundef 2929) #20
  br label %31

31:                                               ; preds = %30, %26, %11
  tail call void @glEnable(i32 noundef 3042) #20
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #20
  tail call void @glPushAttrib(i32 noundef 7) #20
  tail call void @glPushMatrix() #20
  %32 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  %33 = load ptr, ptr %32, align 8, !tbaa !95
  %34 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 47
  tail call void @glMultMatrixf(ptr noundef nonnull %34) #20
  tail call void @glLineWidth(float noundef %20) #20
  tail call void @UI_ThemeColorShadeAlpha(i32 noundef 39, i32 noundef 80, i32 noundef -160) #20
  tail call void @glBegin(i32 noundef 1) #20
  %35 = getelementptr inbounds %struct.VertSlideData, ptr %9, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !290
  %37 = icmp sgt i32 %36, 0
  br i1 %24, label %38, label %55

38:                                               ; preds = %31
  br i1 %37, label %39, label %72

39:                                               ; preds = %38
  %40 = load ptr, ptr %9, align 8, !tbaa !292
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi i32 [ %51, %41 ], [ 0, %39 ]
  %43 = phi ptr [ %52, %41 ], [ %40, %39 ]
  %44 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %43, i64 0, i32 1
  tail call void @glVertex3fv(ptr noundef nonnull %44) #20
  %45 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %43, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !295
  %47 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %43, i64 0, i32 6
  %48 = load i32, ptr %47, align 4, !tbaa !313
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [3 x float], ptr %46, i64 %49
  tail call void @glVertex3fv(ptr noundef %50) #20
  %51 = add nuw nsw i32 %42, 1
  %52 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %43, i64 1
  %53 = load i32, ptr %35, align 8, !tbaa !290
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %41, label %72, !llvm.loop !314

55:                                               ; preds = %31
  br i1 %37, label %56, label %72

56:                                               ; preds = %55
  %57 = load ptr, ptr %9, align 8, !tbaa !292
  br label %58

58:                                               ; preds = %56, %58
  %59 = phi i32 [ %68, %58 ], [ 0, %56 ]
  %60 = phi ptr [ %69, %58 ], [ %57, %56 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  %61 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %60, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !295
  %63 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %60, i64 0, i32 6
  %64 = load i32, ptr %63, align 4, !tbaa !313
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [3 x float], ptr %62, i64 %65
  %67 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %60, i64 0, i32 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %66, ptr noundef nonnull %67) #22
  call fastcc void @mul_v3_fl(ptr noundef nonnull %3, float noundef 1.000000e+02) #22
  call fastcc void @negate_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #22
  call fastcc void @add_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %67) #22
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %67) #22
  call void @glVertex3fv(ptr noundef nonnull %3) #20
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  %68 = add nuw nsw i32 %59, 1
  %69 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %60, i64 1
  %70 = load i32, ptr %35, align 8, !tbaa !290
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %58, label %72, !llvm.loop !315

72:                                               ; preds = %58, %41, %55, %38
  call void @bglEnd() #20
  call void @glPointSize(float noundef %18) #20
  call void @bglBegin(i32 noundef 0) #20
  %73 = getelementptr inbounds %struct.VertSlideData, ptr %9, i64 0, i32 5
  %74 = load i8, ptr %73, align 1, !tbaa !316
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.VertSlideData, ptr %9, i64 0, i32 4
  %78 = load i8, ptr %77, align 4, !tbaa !317
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %13, i64 %16, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !295
  %83 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %13, i64 %16, i32 6
  %84 = load i32, ptr %83, align 4, !tbaa !313
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [3 x float], ptr %82, i64 %85
  br label %89

87:                                               ; preds = %76, %72
  %88 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %13, i64 %16, i32 1
  br label %89

89:                                               ; preds = %87, %80
  %90 = phi ptr [ %86, %80 ], [ %88, %87 ]
  call void @bglVertex3fv(ptr noundef %90) #20
  call void @bglEnd() #20
  call void @glPopMatrix() #20
  call void @glPopAttrib() #20
  call void @glDisable(i32 noundef 3042) #20
  br i1 %25, label %96, label %91

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.View3D, ptr %12, i64 0, i32 47
  %93 = load i8, ptr %92, align 8, !tbaa !310
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  call void @glEnable(i32 noundef 2929) #20
  br label %96

96:                                               ; preds = %7, %95, %91, %89, %2
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @UI_GetThemeValuef(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !318 {
  %4 = load float, ptr %1, align 4, !tbaa !59
  %5 = load float, ptr %2, align 4, !tbaa !59
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !59
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !59
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !59
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !59
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !59
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !59
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPushAttrib(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glMultMatrixf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLineWidth(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColorShadeAlpha(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bglEnd() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPointSize(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bglBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bglVertex3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @interp_line_v3_v3v3v3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) unnamed_addr #0 !PGOFuncName !319 {
  %6 = tail call float @line_point_factor_v3(ptr noundef %2, ptr noundef %1, ptr noundef %3) #20
  %7 = fsub float %4, %6
  %8 = tail call float @llvm.fabs.f32(float %7)
  %9 = fcmp olt float %8, 0x3E80000000000000
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef %2) #22
  br label %18

11:                                               ; preds = %5
  %12 = fcmp olt float %7, 0.000000e+00
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = fdiv float %4, %6
  tail call void @interp_v3_v3v3(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %14) #20
  br label %18

15:                                               ; preds = %11
  %16 = fsub float 1.000000e+00, %6
  %17 = fdiv float %7, %16
  tail call void @interp_v3_v3v3(ptr noundef %0, ptr noundef %2, ptr noundef %3, float noundef %17) #20
  br label %18

18:                                               ; preds = %13, %15, %10
  ret void
}

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPopAttrib() local_unnamed_addr #2

; Function Attrs: optsize
declare float @line_point_factor_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !320 {
  %4 = load float, ptr %1, align 4, !tbaa !59
  %5 = load float, ptr %2, align 4, !tbaa !59
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !59
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !59
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !59
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !59
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !59
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !59
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #3 !PGOFuncName !321 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !59
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !59
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !59
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !322 {
  %3 = load float, ptr %1, align 4, !tbaa !59
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !59
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !59
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !59
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !59
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !323 {
  %3 = load float, ptr %1, align 4, !tbaa !59
  %4 = load float, ptr %0, align 4, !tbaa !59
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !59
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !59
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !59
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !59
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !59
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !59
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare i32 @autokeyframe_cfra_can_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawAutoKeyWarning(ptr noundef %0) unnamed_addr #0 !PGOFuncName !324 {
  %2 = alloca %struct.rcti, align 4
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @ED_region_visible_rect(ptr noundef %0, ptr noundef nonnull %2) #20
  %4 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  call void @BLF_width_and_height_default(ptr noundef nonnull @.str.78, i64 noundef 1024, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %5 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !298
  %7 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !325
  %8 = sext i16 %7 to i32
  %9 = load float, ptr %3, align 4, !tbaa !59
  %10 = fptosi float %9 to i32
  %11 = add i32 %8, %10
  %12 = sub i32 %6, %11
  %13 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !301
  %15 = sub nsw i32 %14, %8
  call void @UI_ThemeColorShade(i32 noundef 4, i32 noundef -50) #20
  %16 = sitofp i32 %12 to float
  %17 = sitofp i32 %15 to float
  call void @BLF_draw_default_ascii(float noundef %16, float noundef %17, float noundef 0.000000e+00, ptr noundef nonnull @.str.78, i64 noundef 1024) #20
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #20
  call void @glEnable(i32 noundef 3042) #20
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !325
  %19 = sext i16 %18 to i32
  %20 = sub nsw i32 %12, %19
  %21 = load float, ptr %4, align 4, !tbaa !59
  %22 = fptosi float %21 to i32
  %23 = sdiv i32 %22, -2
  %24 = add i32 %23, %15
  %25 = sitofp i32 %20 to float
  %26 = sitofp i32 %24 to float
  call void @UI_icon_draw(float noundef %25, float noundef %26, i32 noundef 494) #20
  call void @glDisable(i32 noundef 3042) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #21
  ret void
}

; Function Attrs: optsize
declare void @ED_region_visible_rect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_width_and_height_default(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_draw_default_ascii(float noundef, float noundef, float noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_icon_draw(float noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @setlinestyle(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2iv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glRotatef(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawArrow(i32 noundef %0) unnamed_addr #0 !PGOFuncName !326 {
  switch i32 %0, label %14 [
    i32 2, label %2
    i32 3, label %3
    i32 1, label %8
    i32 0, label %9
  ]

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %1, %2
  %4 = phi i16 [ 10, %1 ], [ -10, %2 ]
  %5 = phi i16 [ 5, %1 ], [ -5, %2 ]
  tail call void @glBegin(i32 noundef 1) #20
  tail call void @glVertex2s(i16 noundef signext %5, i16 noundef signext 0) #20
  %6 = add nsw i16 %5, %4
  tail call void @glVertex2s(i16 noundef signext %6, i16 noundef signext 0) #20
  tail call void @glVertex2s(i16 noundef signext %6, i16 noundef signext 0) #20
  %7 = sub nsw i16 0, %5
  tail call void @glVertex2s(i16 noundef signext %4, i16 noundef signext %7) #20
  tail call void @glVertex2s(i16 noundef signext %6, i16 noundef signext 0) #20
  tail call void @glVertex2s(i16 noundef signext %4, i16 noundef signext %5) #20
  br label %15

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %1, %8
  %10 = phi i16 [ 10, %1 ], [ -10, %8 ]
  %11 = phi i16 [ 5, %1 ], [ -5, %8 ]
  tail call void @glBegin(i32 noundef 1) #20
  tail call void @glVertex2s(i16 noundef signext 0, i16 noundef signext %11) #20
  %12 = add nsw i16 %11, %10
  tail call void @glVertex2s(i16 noundef signext 0, i16 noundef signext %12) #20
  tail call void @glVertex2s(i16 noundef signext 0, i16 noundef signext %12) #20
  %13 = sub nsw i16 0, %11
  tail call void @glVertex2s(i16 noundef signext %13, i16 noundef signext %10) #20
  tail call void @glVertex2s(i16 noundef signext 0, i16 noundef signext %12) #20
  tail call void @glVertex2s(i16 noundef signext %11, i16 noundef signext %10) #20
  br label %15

14:                                               ; preds = %1
  unreachable

15:                                               ; preds = %9, %3
  tail call void @glEnd() #20
  ret void
}

; Function Attrs: nounwind optsize
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawArc(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #0 !PGOFuncName !327 {
  %4 = fsub float %2, %1
  %5 = fdiv float %4, 1.000000e+01
  tail call void @glBegin(i32 noundef 3) #20
  br label %6

6:                                                ; preds = %3, %6
  %7 = phi i32 [ 0, %3 ], [ %14, %6 ]
  %8 = phi float [ %1, %3 ], [ %13, %6 ]
  %9 = tail call float @cosf(float noundef %8) #20
  %10 = fmul float %9, %0
  %11 = tail call float @sinf(float noundef %8) #20
  %12 = fmul float %11, %0
  tail call void @glVertex2f(float noundef %10, float noundef %12) #20
  %13 = fadd float %5, %8
  %14 = add nuw nsw i32 %7, 1
  %15 = icmp eq i32 %14, 10
  br i1 %15, label %16, label %6, !llvm.loop !328

16:                                               ; preds = %6
  %17 = tail call float @cosf(float noundef %2) #20
  %18 = fmul float %17, %0
  %19 = tail call float @sinf(float noundef %2) #20
  %20 = fmul float %19, %0
  tail call void @glVertex2f(float noundef %18, float noundef %20) #20
  tail call void @glEnd() #20
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawArrowHead(i32 noundef %0) unnamed_addr #0 !PGOFuncName !329 {
  %2 = icmp eq i32 %0, 0
  %3 = select i1 %2, i16 -5, i16 5
  %4 = select i1 %2, i16 5, i16 -5
  tail call void @glBegin(i32 noundef 1) #20
  tail call void @glVertex2s(i16 noundef signext 0, i16 noundef signext 0) #20
  tail call void @glVertex2s(i16 noundef signext %3, i16 noundef signext %3) #20
  tail call void @glVertex2s(i16 noundef signext 0, i16 noundef signext 0) #20
  tail call void @glVertex2s(i16 noundef signext %4, i16 noundef signext %3) #20
  tail call void @glEnd() #20
  ret void
}

; Function Attrs: optsize
declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_make_axis_color(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor3ubv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2s(i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !330 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #22
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #20
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #22
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #22
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !331 {
  %3 = load float, ptr %0, align 4, !tbaa !59
  %4 = load float, ptr %1, align 4, !tbaa !59
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !59
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !59
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !59
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !59
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !332 {
  %4 = load float, ptr %1, align 4, !tbaa !59
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !59
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !59
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !59
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !59
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_paint_cursor_tag_redraw(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_space_clip_check_show_trackedit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_space_clip_check_show_maskedit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Bend(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !333 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [256 x i8], align 16
  %7 = alloca %union.anon.0, align 4
  %8 = alloca [128 x i8], align 16
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x float], align 4
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #21
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %14 = load ptr, ptr %13, align 8, !tbaa !141
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !94
  %17 = and i32 %16, 16777216
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  call fastcc void @copy_v2_v2(ptr noundef nonnull %7, ptr noundef nonnull %20) #22
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14
  %22 = load i16, ptr %21, align 8, !tbaa !334
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 25, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !59
  %27 = getelementptr inbounds %struct.BendCustomData, ptr %14, i64 0, i32 4
  %28 = load float, ptr %27, align 4, !tbaa !213
  %29 = fmul float %26, %28
  %30 = fdiv float %29, 0x3FB99999A0000000
  %31 = getelementptr inbounds %struct.anon, ptr %7, i64 0, i32 1
  %32 = load float, ptr %31, align 4, !tbaa !335
  %33 = fmul float %32, %30
  store float %33, ptr %31, align 4, !tbaa !335
  call void @snapGridIncrement(ptr noundef nonnull %0, ptr noundef nonnull %7) #20
  %34 = load float, ptr %31, align 4, !tbaa !335
  %35 = fdiv float %34, %30
  store float %35, ptr %31, align 4, !tbaa !335
  br label %36

36:                                               ; preds = %24, %2
  %37 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %38 = call zeroext i8 @applyNumInput(ptr noundef nonnull %37, ptr noundef nonnull %7) #20
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.anon, ptr %7, i64 0, i32 1
  %42 = load float, ptr %41, align 4, !tbaa !335
  %43 = getelementptr inbounds %struct.BendCustomData, ptr %14, i64 0, i32 4
  %44 = load float, ptr %43, align 4, !tbaa !213
  %45 = fdiv float %42, %44
  store float %45, ptr %41, align 4, !tbaa !335
  br label %46

46:                                               ; preds = %40, %36
  %47 = call zeroext i8 @hasNumInput(ptr noundef nonnull %37) #20
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #21
  %50 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %51 = load ptr, ptr %50, align 8, !tbaa !121
  %52 = getelementptr inbounds %struct.Scene, ptr %51, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %37, ptr noundef nonnull %8, ptr noundef nonnull %52) #20
  %53 = getelementptr inbounds [128 x i8], ptr %8, i64 0, i64 64
  %54 = call ptr @WM_bool_as_string(i8 noundef zeroext %19) #20
  %55 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 256, ptr noundef nonnull @.str.79, ptr noundef nonnull %8, ptr noundef nonnull %53, ptr noundef %54) #20
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #21
  br label %68

56:                                               ; preds = %46
  %57 = load float, ptr %7, align 4, !tbaa !335
  %58 = fmul float %57, 0x404CA5DC20000000
  %59 = fpext float %58 to double
  %60 = getelementptr inbounds %struct.anon, ptr %7, i64 0, i32 1
  %61 = load float, ptr %60, align 4, !tbaa !335
  %62 = getelementptr inbounds %struct.BendCustomData, ptr %14, i64 0, i32 4
  %63 = load float, ptr %62, align 4, !tbaa !213
  %64 = fmul float %61, %63
  %65 = fpext float %64 to double
  %66 = call ptr @WM_bool_as_string(i8 noundef zeroext %19) #20
  %67 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 256, ptr noundef nonnull @.str.80, double noundef %59, double noundef %65, ptr noundef %66) #20
  br label %68

68:                                               ; preds = %56, %49
  call fastcc void @copy_v2_v2(ptr noundef nonnull %20, ptr noundef nonnull %7) #22
  %69 = load float, ptr %7, align 4, !tbaa !335
  %70 = fneg float %69
  store float %70, ptr %7, align 4, !tbaa !335
  %71 = getelementptr inbounds %struct.BendCustomData, ptr %14, i64 0, i32 4
  %72 = load float, ptr %71, align 4, !tbaa !213
  %73 = getelementptr inbounds %struct.anon, ptr %7, i64 0, i32 1
  %74 = load float, ptr %73, align 4, !tbaa !335
  %75 = fmul float %72, %74
  store float %75, ptr %73, align 4, !tbaa !335
  %76 = getelementptr inbounds %struct.BendCustomData, ptr %14, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %76) #22
  call void @dist_ensure_v3_v3fl(ptr noundef nonnull %5, ptr noundef %14, float noundef %75) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %14) #22
  %77 = load float, ptr %7, align 4, !tbaa !335
  %78 = fcmp ogt float %77, 0.000000e+00
  %79 = getelementptr inbounds %struct.BendCustomData, ptr %14, i64 0, i32 3
  %80 = load float, ptr %73, align 4, !tbaa !335
  br i1 %78, label %81, label %85

81:                                               ; preds = %68
  %82 = fneg float %80
  %83 = fsub float 0x3FF921FB60000000, %77
  %84 = call fastcc float @shell_angle_to_dist(float noundef %83) #22
  br label %88

85:                                               ; preds = %68
  %86 = fadd float %77, 0x3FF921FB60000000
  %87 = call fastcc float @shell_angle_to_dist(float noundef %86) #22
  br label %88

88:                                               ; preds = %85, %81
  %89 = phi float [ %87, %85 ], [ %82, %81 ]
  %90 = phi float [ %80, %85 ], [ %84, %81 ]
  %91 = fmul float %90, %89
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %4, ptr noundef nonnull %79, float noundef %91) #22
  %92 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %93 = load i32, ptr %92, align 8, !tbaa !154
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %139

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.BendCustomData, ptr %14, i64 0, i32 2
  br label %97

97:                                               ; preds = %95, %134
  %98 = phi ptr [ %12, %95 ], [ %136, %134 ]
  %99 = phi i32 [ 0, %95 ], [ %135, %134 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #21
  %100 = getelementptr inbounds %struct.TransData, ptr %98, i64 0, i32 16
  %101 = load i32, ptr %100, align 8, !tbaa !336
  %102 = and i32 %101, 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %133

104:                                              ; preds = %97
  %105 = and i32 %101, 2048
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %134

107:                                              ; preds = %104
  %108 = load float, ptr %7, align 4, !tbaa !335
  %109 = fcmp oeq float %108, 0.000000e+00
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.TransData, ptr %98, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !338
  %113 = getelementptr inbounds %struct.TransData, ptr %98, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef %112, ptr noundef nonnull %113) #22
  br label %134

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.TransData, ptr %98, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %115) #22
  %116 = getelementptr inbounds %struct.TransData, ptr %98, i64 0, i32 8
  call void @mul_m3_v3(ptr noundef nonnull %116, ptr noundef nonnull %3) #20
  %117 = call float @line_point_factor_v3(ptr noundef nonnull %3, ptr noundef %14, ptr noundef nonnull %5) #20
  br i1 %18, label %118, label %123

118:                                              ; preds = %114
  %119 = fcmp olt float %117, 0.000000e+00
  br i1 %119, label %123, label %120

120:                                              ; preds = %118
  %121 = fcmp ogt float %117, 1.000000e+00
  br i1 %121, label %122, label %123

122:                                              ; preds = %120
  br label %123

123:                                              ; preds = %118, %122, %120, %114
  %124 = phi float [ 1.000000e+00, %122 ], [ %117, %120 ], [ %117, %114 ], [ 0.000000e+00, %118 ]
  %125 = getelementptr inbounds %struct.TransData, ptr %98, i64 0, i32 2
  %126 = load float, ptr %125, align 8, !tbaa !339
  %127 = fmul float %124, %126
  %128 = load float, ptr %7, align 4, !tbaa !335
  %129 = fmul float %128, %127
  call void @axis_angle_normalized_to_mat3(ptr noundef nonnull %9, ptr noundef nonnull %96, float noundef %129) #20
  call void @interp_v3_v3v3(ptr noundef nonnull %10, ptr noundef %14, ptr noundef nonnull %5, float noundef %127) #20
  call fastcc void @sub_v3_v3(ptr noundef nonnull %10, ptr noundef %14) #22
  call fastcc void @sub_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %10) #22
  call fastcc void @sub_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #22
  call void @mul_m3_v3(ptr noundef nonnull %9, ptr noundef nonnull %3) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #22
  %130 = getelementptr inbounds %struct.TransData, ptr %98, i64 0, i32 9
  call void @mul_m3_v3(ptr noundef nonnull %130, ptr noundef nonnull %3) #20
  %131 = getelementptr inbounds %struct.TransData, ptr %98, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !338
  call fastcc void @copy_v3_v3(ptr noundef %132, ptr noundef nonnull %3) #22
  br label %134

133:                                              ; preds = %97
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #21
  br label %139

134:                                              ; preds = %110, %123, %104
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #21
  %135 = add nuw nsw i32 %99, 1
  %136 = getelementptr inbounds %struct.TransData, ptr %98, i64 1
  %137 = load i32, ptr %92, align 8, !tbaa !154
  %138 = icmp slt i32 %135, %137
  br i1 %138, label %97, label %139, !llvm.loop !340

139:                                              ; preds = %134, %88, %133
  call void @recalcData(ptr noundef nonnull %0) #20
  %140 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %141 = load ptr, ptr %140, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %141, ptr noundef nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @handleEventBend(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #10 !PGOFuncName !341 {
  %3 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !89
  %5 = icmp eq i16 %4, 2
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %8 = load i16, ptr %7, align 2, !tbaa !87
  %9 = icmp eq i16 %8, 1
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %2 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: optsize
declare void @setInputPostFct(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @postInputRotation(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !342 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %4 = load i32, ptr %3, align 4, !tbaa !92
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !343
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 49
  tail call void %9(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %12, ptr noundef %1) #20
  br label %13

13:                                               ; preds = %11, %7, %2
  ret void
}

; Function Attrs: optsize
declare void @initMouseInputMode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v3_fl(ptr nocapture noundef writeonly %0, float noundef %1) unnamed_addr #5 !PGOFuncName !344 {
  store float %1, ptr %0, align 4, !tbaa !59
  %3 = getelementptr inbounds float, ptr %0, i64 1
  store float %1, ptr %3, align 4, !tbaa !59
  %4 = getelementptr inbounds float, ptr %0, i64 2
  store float %1, ptr %4, align 4, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare void @calculateCenterCursor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_win_to_3d(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !345 {
  %3 = load float, ptr %1, align 4, !tbaa !59
  %4 = load float, ptr %0, align 4, !tbaa !59
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !59
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !59
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !59
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !59
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !59
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !59
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !346 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !59
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !59
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !59
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !59
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !59
  %15 = load float, ptr %8, align 4, !tbaa !59
  %16 = load float, ptr %2, align 4, !tbaa !59
  %17 = load float, ptr %1, align 4, !tbaa !59
  %18 = load float, ptr %6, align 4, !tbaa !59
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !59
  %23 = load float, ptr %1, align 4, !tbaa !59
  %24 = load float, ptr %10, align 4, !tbaa !59
  %25 = load float, ptr %4, align 4, !tbaa !59
  %26 = load float, ptr %2, align 4, !tbaa !59
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !347 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #22
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  ret float %4
}

; Function Attrs: optsize
declare void @snapGridIncrement(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @applyNumInput(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @outputNumInput(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_bool_as_string(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dist_ensure_v3_v3fl(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !348 {
  %4 = load float, ptr %1, align 4, !tbaa !59
  %5 = load float, ptr %0, align 4, !tbaa !59
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !59
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !59
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !59
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !59
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !59
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !59
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @shell_angle_to_dist(float noundef %0) unnamed_addr #14 !PGOFuncName !349 {
  %2 = fcmp olt float %0, 0x3E45798EE0000000
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = tail call float @cosf(float noundef %0) #20
  %5 = fdiv float 1.000000e+00, %4
  %6 = tail call float @llvm.fabs.f32(float %5)
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi float [ %6, %3 ], [ 1.000000e+00, %1 ]
  ret float %8
}

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @axis_angle_normalized_to_mat3(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !350 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #22
  %3 = tail call float @sqrtf(float noundef %2) #20
  ret float %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyShear(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !351 {
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
  %14 = load ptr, ptr %13, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %10) #21
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 27
  call void @copy_m3_m4(ptr noundef nonnull %7, ptr noundef nonnull %15) #20
  %16 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %8, ptr noundef nonnull %7) #20
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %18 = load float, ptr %17, align 4, !tbaa !59
  store float %18, ptr %9, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %9) #20
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %20 = call zeroext i8 @applyNumInput(ptr noundef nonnull %19, ptr noundef nonnull %9) #20
  %21 = call zeroext i8 @hasNumInput(ptr noundef nonnull %19) #20
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #21
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %25 = load ptr, ptr %24, align 8, !tbaa !121
  %26 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %19, ptr noundef nonnull %11, ptr noundef nonnull %26) #20
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %28 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %10, i64 noundef 256, ptr noundef nonnull @.str.81, ptr noundef nonnull %11, ptr noundef nonnull %27) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #21
  br label %34

29:                                               ; preds = %2
  %30 = load float, ptr %9, align 4, !tbaa !59
  %31 = fpext float %30 to double
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %33 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %10, i64 noundef 256, ptr noundef nonnull @.str.82, double noundef %31, ptr noundef nonnull %32) #20
  br label %34

34:                                               ; preds = %29, %23
  %35 = load float, ptr %9, align 4, !tbaa !59
  store float %35, ptr %17, align 4, !tbaa !59
  call void @unit_m3(ptr noundef nonnull %4) #20
  %36 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %37 = load ptr, ptr %36, align 8, !tbaa !141
  %38 = icmp eq ptr %37, null
  %39 = load float, ptr %9, align 4, !tbaa !59
  %40 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %41 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1
  %42 = select i1 %38, ptr %41, ptr %40
  store float %39, ptr %42, align 4, !tbaa !59
  call void @mul_m3_m3m3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %7) #20
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %5) #20
  %43 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !154
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %80

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %48 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  br label %49

49:                                               ; preds = %46, %75
  %50 = phi i32 [ %44, %46 ], [ %76, %75 ]
  %51 = phi i32 [ 0, %46 ], [ %77, %75 ]
  %52 = phi ptr [ %14, %46 ], [ %78, %75 ]
  %53 = getelementptr inbounds %struct.TransData, ptr %52, i64 0, i32 16
  %54 = load i32, ptr %53, align 8, !tbaa !336
  %55 = and i32 %54, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %49
  %58 = and i32 %54, 2048
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = load ptr, ptr %47, align 8, !tbaa !95
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #21
  %64 = getelementptr inbounds %struct.TransData, ptr %52, i64 0, i32 8
  call void @mul_m3_m3m3(ptr noundef nonnull %12, ptr noundef nonnull %6, ptr noundef nonnull %64) #20
  %65 = getelementptr inbounds %struct.TransData, ptr %52, i64 0, i32 9
  call void @mul_m3_m3m3(ptr noundef nonnull %5, ptr noundef nonnull %65, ptr noundef nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #21
  br label %67

66:                                               ; preds = %60
  call void @copy_m3_m3(ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  br label %67

67:                                               ; preds = %66, %63
  %68 = getelementptr inbounds %struct.TransData, ptr %52, i64 0, i32 7
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %68, ptr noundef nonnull %48) #22
  call void @mul_m3_v3(ptr noundef nonnull %5, ptr noundef nonnull %3) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %48) #22
  call fastcc void @sub_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %68) #22
  %69 = getelementptr inbounds %struct.TransData, ptr %52, i64 0, i32 2
  %70 = load float, ptr %69, align 8, !tbaa !339
  call fastcc void @mul_v3_fl(ptr noundef nonnull %3, float noundef %70) #22
  %71 = getelementptr inbounds %struct.TransData, ptr %52, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !338
  %73 = getelementptr inbounds %struct.TransData, ptr %52, i64 0, i32 4
  call fastcc void @add_v3_v3v3(ptr noundef %72, ptr noundef nonnull %73, ptr noundef nonnull %3) #22
  %74 = load i32, ptr %43, align 8, !tbaa !154
  br label %75

75:                                               ; preds = %57, %67
  %76 = phi i32 [ %50, %57 ], [ %74, %67 ]
  %77 = add nuw nsw i32 %51, 1
  %78 = getelementptr inbounds %struct.TransData, ptr %52, i64 1
  %79 = icmp slt i32 %77, %76
  br i1 %79, label %49, label %80, !llvm.loop !352

80:                                               ; preds = %75, %49, %34
  call void @recalcData(ptr noundef nonnull %0) #20
  %81 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %82 = load ptr, ptr %81, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %82, ptr noundef nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @handleEventShear(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !353 {
  %3 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !89
  switch i16 %4, label %30 [
    i16 2, label %5
    i16 120, label %16
    i16 121, label %23
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %7 = load i16, ptr %6, align 2, !tbaa !87
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %30

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %11 = load ptr, ptr %10, align 8, !tbaa !141
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  %14 = select i1 %12, i32 11, i32 9
  %15 = select i1 %12, ptr inttoptr (i64 1 to ptr), ptr null
  tail call void @initMouseInputMode(ptr noundef nonnull %0, ptr noundef nonnull %13, i32 noundef %14) #20
  store ptr %15, ptr %10, align 8, !tbaa !141
  br label %30

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %18 = load i16, ptr %17, align 2, !tbaa !87
  %19 = icmp eq i16 %18, 1
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef %0, ptr noundef nonnull %21, i32 noundef 9) #20
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  store ptr null, ptr %22, align 8, !tbaa !141
  br label %30

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %25 = load i16, ptr %24, align 2, !tbaa !87
  %26 = icmp eq i16 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  tail call void @initMouseInputMode(ptr noundef %0, ptr noundef nonnull %28, i32 noundef 11) #20
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  store ptr inttoptr (i64 1 to ptr), ptr %29, align 8, !tbaa !141
  br label %30

30:                                               ; preds = %2, %5, %16, %20, %27, %23, %9
  %31 = phi i32 [ 1, %9 ], [ 1, %20 ], [ 1, %27 ], [ 0, %23 ], [ 0, %16 ], [ 0, %5 ], [ 0, %2 ]
  ret i32 %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @postInputShear(ptr nocapture readnone %0, ptr nocapture noundef %1) #3 !PGOFuncName !354 {
  tail call fastcc void @mul_v3_fl(ptr noundef %1, float noundef 0x3FA99999A0000000) #22
  ret void
}

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyResize(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !355 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #21
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !94
  %8 = and i32 %7, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !92
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 22
  %16 = load i32, ptr %15, align 8, !tbaa !68
  %17 = load i32, ptr %1, align 4, !tbaa !68
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 22, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !68
  %20 = getelementptr inbounds i32, ptr %1, i64 1
  %21 = load i32, ptr %20, align 4, !tbaa !68
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
  call void @snapGridIncrement(ptr noundef nonnull %0, ptr noundef nonnull %3) #20
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %36 = call zeroext i8 @applyNumInput(ptr noundef nonnull %35, ptr noundef nonnull %3) #20
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  call void @constraintNumInput(ptr noundef nonnull %0, ptr noundef nonnull %3) #20
  br label %39

39:                                               ; preds = %38, %31
  call void @applySnapping(ptr noundef nonnull %0, ptr noundef nonnull %3) #20
  %40 = load i32, ptr %6, align 4, !tbaa !94
  %41 = and i32 %40, 1048576
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 48
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %44) #22
  br label %45

45:                                               ; preds = %43, %39
  %46 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  call fastcc void @copy_v3_v3(ptr noundef nonnull %46, ptr noundef nonnull %3) #22
  call void @size_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %3) #20
  %47 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 10
  %48 = load ptr, ptr %47, align 8, !tbaa !356
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  call void %48(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %4) #20
  br label %51

51:                                               ; preds = %50, %45
  %52 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 36
  call void @copy_m3_m3(ptr noundef nonnull %52, ptr noundef nonnull %4) #20
  call fastcc void @headerResize(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %5) #22
  %53 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %54 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %55 = load i32, ptr %54, align 8, !tbaa !154
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %51
  %58 = load ptr, ptr %53, align 8, !tbaa !208
  br label %59

59:                                               ; preds = %57, %72
  %60 = phi i32 [ %73, %72 ], [ %55, %57 ]
  %61 = phi i32 [ %74, %72 ], [ 0, %57 ]
  %62 = phi ptr [ %75, %72 ], [ %58, %57 ]
  %63 = getelementptr inbounds %struct.TransData, ptr %62, i64 0, i32 16
  %64 = load i32, ptr %63, align 8, !tbaa !336
  %65 = and i32 %64, 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %59
  %68 = and i32 %64, 2048
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  call fastcc void @ElementResize(ptr noundef nonnull %0, ptr noundef nonnull %62, ptr noundef nonnull %4) #22
  %71 = load i32, ptr %54, align 8, !tbaa !154
  br label %72

72:                                               ; preds = %67, %70
  %73 = phi i32 [ %60, %67 ], [ %71, %70 ]
  %74 = add nuw nsw i32 %61, 1
  %75 = getelementptr inbounds %struct.TransData, ptr %62, i64 1
  %76 = icmp slt i32 %74, %73
  br i1 %76, label %59, label %77, !llvm.loop !357

77:                                               ; preds = %72, %59, %51
  %78 = load i32, ptr %6, align 4, !tbaa !94
  %79 = and i32 %78, 65536
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %105, label %81

81:                                               ; preds = %77
  %82 = call zeroext i8 @clipUVTransform(ptr noundef nonnull %0, ptr noundef nonnull %3, i8 noundef zeroext 1) #20
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %105, label %84

84:                                               ; preds = %81
  call void @size_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %3) #20
  %85 = load ptr, ptr %47, align 8, !tbaa !356
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  call void %85(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %4) #20
  br label %88

88:                                               ; preds = %87, %84
  %89 = load i32, ptr %54, align 8, !tbaa !154
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %88
  %92 = load ptr, ptr %53, align 8, !tbaa !208
  br label %93

93:                                               ; preds = %91, %93
  %94 = phi i32 [ %96, %93 ], [ 0, %91 ]
  %95 = phi ptr [ %97, %93 ], [ %92, %91 ]
  call fastcc void @ElementResize(ptr noundef nonnull %0, ptr noundef %95, ptr noundef nonnull %4) #22
  %96 = add nuw nsw i32 %94, 1
  %97 = getelementptr inbounds %struct.TransData, ptr %95, i64 1
  %98 = load i32, ptr %54, align 8, !tbaa !154
  %99 = icmp slt i32 %96, %98
  br i1 %99, label %93, label %100, !llvm.loop !358

100:                                              ; preds = %93, %88
  %101 = load i32, ptr %6, align 4, !tbaa !94
  %102 = and i32 %101, 33560576
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  call void @clipUVData(ptr noundef nonnull %0) #20
  br label %105

105:                                              ; preds = %100, %104, %81, %77
  call void @recalcData(ptr noundef nonnull %0) #20
  %106 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %107 = load ptr, ptr %106, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %107, ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare void @constraintNumInput(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @applySnapping(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @size_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @headerResize(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !359 {
  %4 = alloca [192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #21
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %6 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %5) #20
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %11) #20
  br label %26

12:                                               ; preds = %3
  %13 = load float, ptr %1, align 4, !tbaa !59
  %14 = fpext float %13 to double
  %15 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.83, double noundef %14) #20
  %16 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 64
  %17 = getelementptr inbounds float, ptr %1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !59
  %19 = fpext float %18 to double
  %20 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %16, i64 noundef 64, ptr noundef nonnull @.str.83, double noundef %19) #20
  %21 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 128
  %22 = getelementptr inbounds float, ptr %1, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !59
  %24 = fpext float %23 to double
  %25 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %21, i64 noundef 64, ptr noundef nonnull @.str.83, double noundef %24) #20
  br label %26

26:                                               ; preds = %12, %8
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %28 = load i32, ptr %27, align 4, !tbaa !92
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %26
  %32 = load i16, ptr %5, align 8, !tbaa !119
  switch i16 %32, label %63 [
    i16 0, label %33
    i16 1, label %37
    i16 2, label %42
  ]

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %36 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.84, ptr noundef nonnull %4, ptr noundef nonnull %34, ptr noundef nonnull %35) #20
  br label %63

37:                                               ; preds = %31
  %38 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 64
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %40 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %41 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.85, ptr noundef nonnull %4, ptr noundef nonnull %38, ptr noundef nonnull %39, ptr noundef nonnull %40) #20
  br label %63

42:                                               ; preds = %31
  %43 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 64
  %44 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 128
  %45 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %46 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %47 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.86, ptr noundef nonnull %4, ptr noundef nonnull %43, ptr noundef nonnull %44, ptr noundef nonnull %45, ptr noundef nonnull %46) #20
  br label %63

48:                                               ; preds = %26
  %49 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !94
  %51 = and i32 %50, 32768
  %52 = icmp eq i32 %51, 0
  %53 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 64
  br i1 %52, label %58, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %56 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %57 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.87, ptr noundef nonnull %4, ptr noundef nonnull %53, ptr noundef nonnull %55, ptr noundef nonnull %56) #20
  br label %63

58:                                               ; preds = %48
  %59 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 128
  %60 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %61 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %62 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.88, ptr noundef nonnull %4, ptr noundef nonnull %53, ptr noundef nonnull %59, ptr noundef nonnull %60, ptr noundef nonnull %61) #20
  br label %63

63:                                               ; preds = %54, %58, %33, %37, %42, %31
  %64 = phi i64 [ 0, %31 ], [ %47, %42 ], [ %41, %37 ], [ %36, %33 ], [ %57, %54 ], [ %62, %58 ]
  %65 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !94
  %67 = and i32 %66, 33560576
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds i8, ptr %2, i64 %64
  %71 = sub i64 256, %64
  %72 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 18
  %73 = load float, ptr %72, align 4, !tbaa !105
  %74 = fpext float %73 to double
  %75 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %70, i64 noundef %71, ptr noundef nonnull @.str.89, double noundef %74) #20
  br label %76

76:                                               ; preds = %69, %63
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ElementResize(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !360 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !94
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 8
  call void @mul_m3_m3m3(ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %15) #20
  %16 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 9
  call void @mul_m3_m3m3(ptr noundef nonnull %4, ptr noundef nonnull %16, ptr noundef nonnull %5) #20
  br label %18

17:                                               ; preds = %3
  call void @copy_m3_m3(ptr noundef nonnull %4, ptr noundef %2) #20
  br label %18

18:                                               ; preds = %17, %14
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !356
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  call void %20(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4) #20
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 32
  %25 = load i16, ptr %24, align 2, !tbaa !153
  %26 = call fastcc zeroext i8 @transdata_check_local_center(ptr noundef nonnull %0, i16 noundef signext %25) #22, !range !144
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7
  br label %46

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !58
  %33 = and i32 %32, 64
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 16
  %37 = load i32, ptr %36, align 8, !tbaa !336
  %38 = and i32 %37, 256
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7
  br label %46

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  br label %46

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  br label %46

46:                                               ; preds = %44, %42, %40, %28
  %47 = phi ptr [ %45, %44 ], [ %43, %42 ], [ %41, %40 ], [ %29, %28 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %47) #22
  %48 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 13
  %49 = load ptr, ptr %48, align 8, !tbaa !361
  %50 = icmp eq ptr %49, null
  br i1 %50, label %132, label %51

51:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #21
  %52 = load i32, ptr %10, align 4, !tbaa !94
  %53 = and i32 %52, 13
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #21
  %56 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 10
  call void @mul_m3_m3m3(ptr noundef nonnull %9, ptr noundef nonnull %4, ptr noundef nonnull %56) #20
  call fastcc void @TransMat3ToSize(ptr noundef nonnull %9, ptr noundef nonnull %56, ptr noundef nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #21
  br label %58

57:                                               ; preds = %51
  call void @mat3_to_size(ptr noundef nonnull %8, ptr noundef nonnull %4) #20
  br label %58

58:                                               ; preds = %57, %55
  %59 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 17
  %60 = load i16, ptr %59, align 4, !tbaa !362
  call fastcc void @protectedSizeBits(i16 noundef signext %60, ptr noundef nonnull %8) #22
  %61 = load i32, ptr %10, align 4, !tbaa !94
  %62 = and i32 %61, 16384
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %131

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 16
  %66 = load i32, ptr %65, align 8, !tbaa !336
  %67 = and i32 %66, 32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %98, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %71 = load i32, ptr %70, align 4, !tbaa !92
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  %74 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 6
  %75 = load float, ptr %74, align 8, !tbaa !363
  br i1 %73, label %76, label %95

76:                                               ; preds = %69
  %77 = load float, ptr %8, align 4, !tbaa !59
  %78 = fadd float %77, -1.000000e+00
  %79 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 2
  %80 = load float, ptr %79, align 8, !tbaa !339
  %81 = call float @llvm.fmuladd.f32(float %78, float %80, float 1.000000e+00)
  %82 = fmul float %75, %81
  %83 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 5
  %84 = load ptr, ptr %83, align 8, !tbaa !364
  store float %82, ptr %84, align 4, !tbaa !59
  %85 = load ptr, ptr %48, align 8, !tbaa !361
  %86 = getelementptr inbounds %struct.TransDataExtension, ptr %85, i64 0, i32 12
  %87 = load float, ptr %86, align 8, !tbaa !59
  %88 = getelementptr inbounds %struct.TransDataExtension, ptr %85, i64 0, i32 11
  %89 = load ptr, ptr %88, align 8, !tbaa !365
  store float %87, ptr %89, align 4, !tbaa !59
  %90 = getelementptr inbounds %struct.TransDataExtension, ptr %85, i64 0, i32 12, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !59
  %92 = getelementptr inbounds float, ptr %89, i64 1
  store float %91, ptr %92, align 4, !tbaa !59
  %93 = getelementptr inbounds %struct.TransDataExtension, ptr %85, i64 0, i32 12, i64 2
  %94 = load float, ptr %93, align 8, !tbaa !59
  br label %127

95:                                               ; preds = %69
  %96 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 5
  %97 = load ptr, ptr %96, align 8, !tbaa !364
  store float %75, ptr %97, align 4, !tbaa !59
  br label %98

98:                                               ; preds = %64, %95
  %99 = load ptr, ptr %48, align 8, !tbaa !361
  %100 = getelementptr inbounds %struct.TransDataExtension, ptr %99, i64 0, i32 12
  %101 = load float, ptr %100, align 8, !tbaa !59
  %102 = load float, ptr %8, align 4, !tbaa !59
  %103 = fadd float %102, -1.000000e+00
  %104 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 2
  %105 = load float, ptr %104, align 8, !tbaa !339
  %106 = call float @llvm.fmuladd.f32(float %103, float %105, float 1.000000e+00)
  %107 = fmul float %101, %106
  %108 = getelementptr inbounds %struct.TransDataExtension, ptr %99, i64 0, i32 11
  %109 = load ptr, ptr %108, align 8, !tbaa !365
  store float %107, ptr %109, align 4, !tbaa !59
  %110 = getelementptr inbounds %struct.TransDataExtension, ptr %99, i64 0, i32 12, i64 1
  %111 = load float, ptr %110, align 4, !tbaa !59
  %112 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %113 = load float, ptr %112, align 4, !tbaa !59
  %114 = fadd float %113, -1.000000e+00
  %115 = load float, ptr %104, align 8, !tbaa !339
  %116 = call float @llvm.fmuladd.f32(float %114, float %115, float 1.000000e+00)
  %117 = fmul float %111, %116
  %118 = getelementptr inbounds float, ptr %109, i64 1
  store float %117, ptr %118, align 4, !tbaa !59
  %119 = getelementptr inbounds %struct.TransDataExtension, ptr %99, i64 0, i32 12, i64 2
  %120 = load float, ptr %119, align 8, !tbaa !59
  %121 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %122 = load float, ptr %121, align 4, !tbaa !59
  %123 = fadd float %122, -1.000000e+00
  %124 = load float, ptr %104, align 8, !tbaa !339
  %125 = call float @llvm.fmuladd.f32(float %123, float %124, float 1.000000e+00)
  %126 = fmul float %120, %125
  br label %127

127:                                              ; preds = %98, %76
  %128 = phi ptr [ %89, %76 ], [ %109, %98 ]
  %129 = phi float [ %94, %76 ], [ %126, %98 ]
  %130 = getelementptr inbounds float, ptr %128, i64 2
  store float %129, ptr %130, align 4, !tbaa !59
  br label %131

131:                                              ; preds = %127, %58
  call fastcc void @constraintSizeLim(ptr noundef nonnull %1) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #21
  br label %132

132:                                              ; preds = %131, %46
  %133 = load i32, ptr %10, align 4, !tbaa !94
  %134 = and i32 %133, 64
  %135 = icmp eq i32 %134, 0
  %136 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7
  %137 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4
  %138 = select i1 %135, ptr %136, ptr %137
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %138, ptr noundef nonnull %6) #22
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %7) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %6) #22
  %139 = load i32, ptr %10, align 4, !tbaa !94
  %140 = and i32 %139, 64
  %141 = icmp eq i32 %140, 0
  %142 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7
  %143 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4
  %144 = select i1 %141, ptr %142, ptr %143
  call fastcc void @sub_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %144) #22
  %145 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 2
  %146 = load float, ptr %145, align 8, !tbaa !339
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %146) #22
  %147 = and i32 %139, 5
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %132
  %150 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 9
  call void @mul_m3_v3(ptr noundef nonnull %150, ptr noundef nonnull %7) #20
  br label %151

151:                                              ; preds = %149, %132
  %152 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 17
  %153 = load i16, ptr %152, align 4, !tbaa !362
  call fastcc void @protectedTransBits(i16 noundef signext %153, ptr noundef nonnull %7) #22
  %154 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !338
  %156 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4
  call fastcc void @add_v3_v3v3(ptr noundef %155, ptr noundef nonnull %156, ptr noundef nonnull %7) #22
  call fastcc void @constraintTransLim(ptr noundef nonnull %0, ptr noundef nonnull %1) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #21
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @clipUVTransform(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @clipUVData(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @transdata_check_local_center(ptr nocapture noundef readonly %0, i16 noundef signext %1) unnamed_addr #11 !PGOFuncName !367 {
  %3 = icmp eq i16 %1, 2
  br i1 %3, label %4, label %26

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !94
  %7 = and i32 %6, 5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %11 = load ptr, ptr %10, align 8, !tbaa !95
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 3
  %15 = load i16, ptr %14, align 8, !tbaa !96
  switch i16 %15, label %16 [
    i16 1, label %26
    i16 2, label %26
    i16 5, label %26
    i16 25, label %26
  ]

16:                                               ; preds = %13, %9
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %18 = load i8, ptr %17, align 8, !tbaa !34
  %19 = icmp eq i8 %18, 2
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !58
  %23 = and i32 %22, 448
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i8
  br label %26

26:                                               ; preds = %13, %13, %13, %13, %4, %16, %20, %2
  %27 = phi i8 [ 0, %2 ], [ 1, %16 ], [ 1, %13 ], [ 1, %4 ], [ %25, %20 ], [ 1, %13 ], [ 1, %13 ], [ 1, %13 ]
  ret i8 %27
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @TransMat3ToSize(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #9 !PGOFuncName !368 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %0) #22
  %5 = call fastcc float @normalize_v3(ptr noundef nonnull %4) #22
  store float %5, ptr %2, align 4, !tbaa !59
  %6 = getelementptr inbounds [3 x float], ptr %0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %6) #22
  %7 = call fastcc float @normalize_v3(ptr noundef nonnull %4) #22
  %8 = getelementptr inbounds float, ptr %2, i64 1
  store float %7, ptr %8, align 4, !tbaa !59
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %9) #22
  %10 = call fastcc float @normalize_v3(ptr noundef nonnull %4) #22
  %11 = getelementptr inbounds float, ptr %2, i64 2
  store float %10, ptr %11, align 4, !tbaa !59
  %12 = tail call fastcc i32 @tx_vec_sign_flip(ptr noundef %0, ptr noundef %1) #22, !range !369
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load float, ptr %2, align 4, !tbaa !59
  %16 = fneg float %15
  store float %16, ptr %2, align 4, !tbaa !59
  br label %17

17:                                               ; preds = %14, %3
  %18 = getelementptr inbounds [3 x float], ptr %1, i64 1
  %19 = tail call fastcc i32 @tx_vec_sign_flip(ptr noundef nonnull %6, ptr noundef nonnull %18) #22, !range !369
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load float, ptr %8, align 4, !tbaa !59
  %23 = fneg float %22
  store float %23, ptr %8, align 4, !tbaa !59
  br label %24

24:                                               ; preds = %21, %17
  %25 = getelementptr inbounds [3 x float], ptr %1, i64 2
  %26 = tail call fastcc i32 @tx_vec_sign_flip(ptr noundef nonnull %9, ptr noundef nonnull %25) #22, !range !369
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = fneg float %10
  store float %29, ptr %11, align 4, !tbaa !59
  br label %30

30:                                               ; preds = %28, %24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  ret void
}

; Function Attrs: optsize
declare void @mat3_to_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @protectedSizeBits(i16 noundef signext %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 !PGOFuncName !370 {
  %3 = zext i16 %0 to i32
  %4 = and i32 %3, 64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  store float 1.000000e+00, ptr %1, align 4, !tbaa !59
  br label %7

7:                                                ; preds = %6, %2
  %8 = and i32 %3, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds float, ptr %1, i64 1
  store float 1.000000e+00, ptr %11, align 4, !tbaa !59
  br label %12

12:                                               ; preds = %10, %7
  %13 = and i32 %3, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds float, ptr %1, i64 2
  store float 1.000000e+00, ptr %16, align 4, !tbaa !59
  br label %17

17:                                               ; preds = %15, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @constraintSizeLim(ptr noundef %0) unnamed_addr #0 !PGOFuncName !371 {
  %2 = alloca %struct.bConstraintOb, align 8
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !372
  %7 = icmp eq ptr %6, null
  br i1 %7, label %85, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !361
  %11 = icmp eq ptr %10, null
  br i1 %11, label %85, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @BKE_constraint_typeinfo_from_type(i32 noundef 7) #20
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %2, i8 0, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  %14 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 16
  %15 = load i32, ptr %14, align 8, !tbaa !336
  %16 = and i32 %15, 32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %84

18:                                               ; preds = %12
  %19 = load ptr, ptr %9, align 8, !tbaa !361
  %20 = getelementptr inbounds %struct.TransDataExtension, ptr %19, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !365
  br label %22

22:                                               ; preds = %18, %22
  %23 = phi i64 [ 0, %18 ], [ %30, %22 ]
  %24 = getelementptr inbounds float, ptr %21, i64 %23
  %25 = load float, ptr %24, align 4, !tbaa !59
  %26 = tail call fastcc float @signf(float noundef %25) #22
  %27 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %23
  store float %26, ptr %27, align 4, !tbaa !59
  %28 = tail call float @llvm.fabs.f32(float %25)
  %29 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %23
  store float %28, ptr %29, align 4, !tbaa !59
  %30 = add nuw nsw i64 %23, 1
  %31 = icmp eq i64 %30, 3
  br i1 %31, label %32, label %22, !llvm.loop !373

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.bConstraintOb, ptr %2, i64 0, i32 3
  call void @size_to_mat4(ptr noundef nonnull %33, ptr noundef nonnull %4) #20
  %34 = load ptr, ptr %5, align 8, !tbaa !152
  %35 = icmp eq ptr %34, null
  br i1 %35, label %73, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 8
  %38 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %13, i64 0, i32 11
  %39 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 9
  br label %40

40:                                               ; preds = %36, %70
  %41 = phi ptr [ %34, %36 ], [ %71, %70 ]
  %42 = getelementptr inbounds %struct.bConstraint, ptr %41, i64 0, i32 4
  %43 = load i16, ptr %42, align 2, !tbaa !374
  %44 = and i16 %43, 516
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.bConstraint, ptr %41, i64 0, i32 9
  %48 = load float, ptr %47, align 8, !tbaa !376
  %49 = fcmp oeq float %48, 0.000000e+00
  br i1 %49, label %70, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.bConstraint, ptr %41, i64 0, i32 3
  %52 = load i16, ptr %51, align 8, !tbaa !377
  %53 = icmp eq i16 %52, 7
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.bConstraint, ptr %41, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !378
  %57 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %56, i64 0, i32 7
  %58 = load i16, ptr %57, align 2, !tbaa !379
  %59 = and i16 %58, 2
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.bConstraint, ptr %41, i64 0, i32 5
  %63 = load i8, ptr %62, align 4, !tbaa !381
  switch i8 %63, label %70 [
    i8 0, label %64
    i8 1, label %65
  ]

64:                                               ; preds = %61
  call void @mul_m4_m3m4(ptr noundef nonnull %33, ptr noundef nonnull %37, ptr noundef nonnull %33) #20
  br label %65

65:                                               ; preds = %61, %64
  %66 = load ptr, ptr %38, align 8, !tbaa !382
  call void %66(ptr noundef nonnull %41, ptr noundef nonnull %2, ptr noundef null) #20
  %67 = load i8, ptr %62, align 4, !tbaa !381
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  call void @mul_m4_m3m4(ptr noundef nonnull %33, ptr noundef nonnull %39, ptr noundef nonnull %33) #20
  br label %70

70:                                               ; preds = %54, %61, %69, %65, %50, %46, %40
  %71 = load ptr, ptr %41, align 8, !tbaa !152
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %40, !llvm.loop !384

73:                                               ; preds = %70, %32
  %74 = load i32, ptr %14, align 8, !tbaa !336
  %75 = and i32 %74, 32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load ptr, ptr %9, align 8, !tbaa !361
  %79 = getelementptr inbounds %struct.TransDataExtension, ptr %78, i64 0, i32 11
  %80 = load ptr, ptr %79, align 8, !tbaa !365
  call void @mat4_to_size(ptr noundef %80, ptr noundef nonnull %33) #20
  %81 = load ptr, ptr %9, align 8, !tbaa !361
  %82 = getelementptr inbounds %struct.TransDataExtension, ptr %81, i64 0, i32 11
  %83 = load ptr, ptr %82, align 8, !tbaa !365
  call fastcc void @mul_v3_v3(ptr noundef %83, ptr noundef nonnull %3) #22
  br label %84

84:                                               ; preds = %73, %12, %77
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %2) #21
  br label %85

85:                                               ; preds = %84, %8, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @protectedTransBits(i16 noundef signext %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 !PGOFuncName !385 {
  %3 = zext i16 %0 to i32
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  store float 0.000000e+00, ptr %1, align 4, !tbaa !59
  br label %7

7:                                                ; preds = %6, %2
  %8 = and i32 %3, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %11, align 4, !tbaa !59
  br label %12

12:                                               ; preds = %10, %7
  %13 = and i32 %3, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %16, align 4, !tbaa !59
  br label %17

17:                                               ; preds = %15, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @constraintTransLim(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !386 {
  %3 = alloca %struct.bConstraintOb, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !372
  %7 = icmp eq ptr %6, null
  br i1 %7, label %73, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @BKE_constraint_typeinfo_from_type(i32 noundef 6) #20
  %10 = tail call ptr @BKE_constraint_typeinfo_from_type(i32 noundef 14) #20
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %3, i8 0, i64 160, i1 false)
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !230
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds %struct.bConstraintOb, ptr %3, i64 0, i32 3
  call void @unit_m4(ptr noundef nonnull %16) #20
  %17 = getelementptr inbounds %struct.bConstraintOb, ptr %3, i64 0, i32 3, i64 3
  %18 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !338
  call fastcc void @copy_v3_v3(ptr noundef nonnull %17, ptr noundef %19) #22
  %20 = load ptr, ptr %5, align 8, !tbaa !152
  %21 = icmp eq ptr %20, null
  br i1 %21, label %71, label %22

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 8
  %24 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 9
  br label %25

25:                                               ; preds = %22, %66
  %26 = phi ptr [ %20, %22 ], [ %67, %66 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %27 = getelementptr inbounds %struct.bConstraint, ptr %26, i64 0, i32 4
  %28 = load i16, ptr %27, align 2, !tbaa !374
  %29 = and i16 %28, 516
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %66

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.bConstraint, ptr %26, i64 0, i32 9
  %33 = load float, ptr %32, align 8, !tbaa !376
  %34 = fcmp oeq float %33, 0.000000e+00
  br i1 %34, label %66, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.bConstraint, ptr %26, i64 0, i32 3
  %37 = load i16, ptr %36, align 8, !tbaa !377
  switch i16 %37, label %66 [
    i16 6, label %38
    i16 14, label %45
  ]

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.bConstraint, ptr %26, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !378
  %41 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %40, i64 0, i32 7
  %42 = load i16, ptr %41, align 2, !tbaa !387
  %43 = and i16 %42, 2
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %66, label %52

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.bConstraint, ptr %26, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !378
  %48 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %47, i64 0, i32 4
  %49 = load i16, ptr %48, align 8, !tbaa !389
  %50 = and i16 %49, 2
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %45, %38
  %53 = phi ptr [ %9, %38 ], [ %10, %45 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %66, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.bConstraint, ptr %26, i64 0, i32 5
  %57 = load i8, ptr %56, align 4, !tbaa !381
  switch i8 %57, label %66 [
    i8 0, label %58
    i8 1, label %59
  ]

58:                                               ; preds = %55
  call void @mul_m4_m3m4(ptr noundef nonnull %16, ptr noundef nonnull %23, ptr noundef nonnull %16) #20
  br label %59

59:                                               ; preds = %55, %58
  call void @BKE_constraint_targets_for_solving_get(ptr noundef nonnull %26, ptr noundef nonnull %3, ptr noundef nonnull %4, float noundef %15) #20
  %60 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %53, i64 0, i32 11
  %61 = load ptr, ptr %60, align 8, !tbaa !382
  call void %61(ptr noundef nonnull %26, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %62 = load i8, ptr %56, align 4, !tbaa !381
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  call void @mul_m4_m3m4(ptr noundef nonnull %16, ptr noundef nonnull %24, ptr noundef nonnull %16) #20
  br label %65

65:                                               ; preds = %64, %59
  call void @BLI_freelistN(ptr noundef nonnull %4) #20
  br label %66

66:                                               ; preds = %35, %52, %65, %55, %31, %25, %38, %45
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  %67 = load ptr, ptr %26, align 8, !tbaa !152
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %25, !llvm.loop !391

69:                                               ; preds = %66
  %70 = load ptr, ptr %18, align 8, !tbaa !338
  br label %71

71:                                               ; preds = %69, %8
  %72 = phi ptr [ %70, %69 ], [ %19, %8 ]
  call fastcc void @copy_v3_v3(ptr noundef %72, ptr noundef nonnull %17) #22
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %3) #21
  br label %73

73:                                               ; preds = %71, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @tx_vec_sign_flip(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !392 {
  %3 = load float, ptr %0, align 4, !tbaa !59
  %4 = tail call fastcc i32 @tx_sign(float noundef %3) #22, !range !393
  %5 = load float, ptr %1, align 4, !tbaa !59
  %6 = tail call fastcc i32 @tx_sign(float noundef %5) #22, !range !393
  %7 = and i32 %6, %4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds float, ptr %0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !59
  %12 = tail call fastcc i32 @tx_sign(float noundef %11) #22, !range !393
  %13 = getelementptr inbounds float, ptr %1, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !59
  %15 = tail call fastcc i32 @tx_sign(float noundef %14) #22, !range !393
  %16 = and i32 %15, %12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds float, ptr %0, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !59
  %21 = tail call fastcc i32 @tx_sign(float noundef %20) #22, !range !393
  %22 = getelementptr inbounds float, ptr %1, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !59
  %24 = tail call fastcc i32 @tx_sign(float noundef %23) #22, !range !393
  %25 = and i32 %24, %21
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  br label %28

28:                                               ; preds = %18, %9, %2
  %29 = phi i32 [ 1, %9 ], [ 1, %2 ], [ %27, %18 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @tx_sign(float noundef %0) unnamed_addr #8 !PGOFuncName !394 {
  %2 = fcmp olt float %0, 0xBEE4F8B580000000
  %3 = fcmp ogt float %0, 0x3EE4F8B580000000
  %4 = select i1 %3, i32 2, i32 3
  %5 = select i1 %2, i32 1, i32 %4
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @BKE_constraint_typeinfo_from_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @signf(float noundef %0) unnamed_addr #8 !PGOFuncName !395 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = select i1 %2, float -1.000000e+00, float 1.000000e+00
  ret float %3
}

; Function Attrs: optsize
declare void @size_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_m3m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mat4_to_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !396 {
  %3 = load float, ptr %1, align 4, !tbaa !59
  %4 = load float, ptr %0, align 4, !tbaa !59
  %5 = fmul float %3, %4
  store float %5, ptr %0, align 4, !tbaa !59
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !59
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !59
  %10 = fmul float %7, %9
  store float %10, ptr %8, align 4, !tbaa !59
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !59
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !59
  %15 = fmul float %12, %14
  store float %15, ptr %13, align 4, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare void @BKE_constraint_targets_for_solving_get(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applySkinResize(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !397 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [256 x i8], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #21
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %10 = load float, ptr %9, align 4, !tbaa !59
  %11 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float %10, ptr %11, align 4, !tbaa !59
  %12 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float %10, ptr %12, align 4, !tbaa !59
  store float %10, ptr %3, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %3) #20
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %14 = call zeroext i8 @applyNumInput(ptr noundef nonnull %13, ptr noundef nonnull %3) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  call void @constraintNumInput(ptr noundef nonnull %0, ptr noundef nonnull %3) #20
  br label %17

17:                                               ; preds = %16, %2
  call void @applySnapping(ptr noundef nonnull %0, ptr noundef nonnull %3) #20
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !94
  %20 = and i32 %19, 1048576
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 48
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %23) #22
  br label %24

24:                                               ; preds = %22, %17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %3) #22
  call void @size_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %3) #20
  call fastcc void @headerResize(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %5) #22
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !154
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %84

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !208
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 10
  %32 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  br label %33

33:                                               ; preds = %28, %79
  %34 = phi i32 [ %26, %28 ], [ %80, %79 ]
  %35 = phi i32 [ 0, %28 ], [ %81, %79 ]
  %36 = phi ptr [ %30, %28 ], [ %82, %79 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #21
  %37 = getelementptr inbounds %struct.TransData, ptr %36, i64 0, i32 16
  %38 = load i32, ptr %37, align 8, !tbaa !336
  %39 = and i32 %38, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %78

41:                                               ; preds = %33
  %42 = and i32 %38, 2048
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %79

44:                                               ; preds = %41
  %45 = load i32, ptr %18, align 4, !tbaa !94
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.TransData, ptr %36, i64 0, i32 8
  call void @mul_m3_m3m3(ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %49) #20
  %50 = getelementptr inbounds %struct.TransData, ptr %36, i64 0, i32 9
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %50, ptr noundef nonnull %7) #20
  br label %52

51:                                               ; preds = %44
  call void @copy_m3_m3(ptr noundef nonnull %6, ptr noundef nonnull %4) #20
  br label %52

52:                                               ; preds = %51, %48
  %53 = load ptr, ptr %31, align 8, !tbaa !356
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  call void %53(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %6) #20
  br label %56

56:                                               ; preds = %55, %52
  call void @mat3_to_size(ptr noundef nonnull %8, ptr noundef nonnull %6) #20
  %57 = getelementptr inbounds %struct.TransData, ptr %36, i64 0, i32 13
  %58 = load ptr, ptr %57, align 8, !tbaa !361
  %59 = getelementptr inbounds %struct.TransDataExtension, ptr %58, i64 0, i32 12
  %60 = load float, ptr %59, align 8, !tbaa !59
  %61 = load float, ptr %8, align 4, !tbaa !59
  %62 = fadd float %61, -1.000000e+00
  %63 = getelementptr inbounds %struct.TransData, ptr %36, i64 0, i32 2
  %64 = load float, ptr %63, align 8, !tbaa !339
  %65 = call float @llvm.fmuladd.f32(float %62, float %64, float 1.000000e+00)
  %66 = fmul float %60, %65
  %67 = getelementptr inbounds %struct.TransData, ptr %36, i64 0, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !364
  store float %66, ptr %68, align 4, !tbaa !59
  %69 = getelementptr inbounds %struct.TransDataExtension, ptr %58, i64 0, i32 12, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !59
  %71 = load float, ptr %32, align 4, !tbaa !59
  %72 = fadd float %71, -1.000000e+00
  %73 = load float, ptr %63, align 8, !tbaa !339
  %74 = call float @llvm.fmuladd.f32(float %72, float %73, float 1.000000e+00)
  %75 = fmul float %70, %74
  %76 = getelementptr inbounds float, ptr %68, i64 1
  store float %75, ptr %76, align 4, !tbaa !59
  %77 = load i32, ptr %25, align 8, !tbaa !154
  br label %79

78:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #21
  br label %84

79:                                               ; preds = %56, %41
  %80 = phi i32 [ %77, %56 ], [ %34, %41 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #21
  %81 = add nuw nsw i32 %35, 1
  %82 = getelementptr inbounds %struct.TransData, ptr %36, i64 1
  %83 = icmp slt i32 %81, %80
  br i1 %83, label %33, label %84, !llvm.loop !398

84:                                               ; preds = %79, %24, %78
  call void @recalcData(ptr noundef nonnull %0) #20
  %85 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %86 = load ptr, ptr %85, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %86, ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyToSphere(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !399 {
  %3 = alloca [3 x float], align 4
  %4 = alloca float, align 4
  %5 = alloca [256 x i8], align 16
  %6 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #21
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !208
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %10 = load float, ptr %9, align 4, !tbaa !59
  store float %10, ptr %4, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %4) #20
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %12 = call zeroext i8 @applyNumInput(ptr noundef nonnull %11, ptr noundef nonnull %4) #20
  %13 = load float, ptr %4, align 4, !tbaa !59
  %14 = fcmp olt float %13, 0.000000e+00
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store float 0.000000e+00, ptr %4, align 4, !tbaa !59
  br label %19

16:                                               ; preds = %2
  %17 = fcmp ogt float %13, 1.000000e+00
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  store float 1.000000e+00, ptr %4, align 4, !tbaa !59
  br label %19

19:                                               ; preds = %16, %18, %15
  %20 = phi float [ %13, %16 ], [ 1.000000e+00, %18 ], [ 0.000000e+00, %15 ]
  store float %20, ptr %9, align 4, !tbaa !59
  %21 = call zeroext i8 @hasNumInput(ptr noundef nonnull %11) #20
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #21
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %25 = load ptr, ptr %24, align 8, !tbaa !121
  %26 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %11, ptr noundef nonnull %6, ptr noundef nonnull %26) #20
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %28 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 256, ptr noundef nonnull @.str.90, ptr noundef nonnull %6, ptr noundef nonnull %27) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #21
  br label %34

29:                                               ; preds = %19
  %30 = load float, ptr %4, align 4, !tbaa !59
  %31 = fpext float %30 to double
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %33 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 256, ptr noundef nonnull @.str.91, double noundef %31, ptr noundef nonnull %32) #20
  br label %34

34:                                               ; preds = %29, %23
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %36 = load i32, ptr %35, align 8, !tbaa !154
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %40 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 5
  br label %41

41:                                               ; preds = %38, %66
  %42 = phi i32 [ %36, %38 ], [ %67, %66 ]
  %43 = phi i32 [ 0, %38 ], [ %68, %66 ]
  %44 = phi ptr [ %8, %38 ], [ %69, %66 ]
  %45 = getelementptr inbounds %struct.TransData, ptr %44, i64 0, i32 16
  %46 = load i32, ptr %45, align 8, !tbaa !336
  %47 = and i32 %46, 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %41
  %50 = and i32 %46, 2048
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.TransData, ptr %44, i64 0, i32 4
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %53, ptr noundef nonnull %39) #22
  %54 = call fastcc float @normalize_v3(ptr noundef nonnull %3) #22
  %55 = load float, ptr %4, align 4, !tbaa !59
  %56 = getelementptr inbounds %struct.TransData, ptr %44, i64 0, i32 2
  %57 = load float, ptr %56, align 8, !tbaa !339
  %58 = fmul float %55, %57
  %59 = fsub float 1.000000e+00, %58
  %60 = load float, ptr %40, align 4, !tbaa !209
  %61 = fmul float %60, %58
  %62 = call float @llvm.fmuladd.f32(float %54, float %59, float %61)
  call fastcc void @mul_v3_fl(ptr noundef nonnull %3, float noundef %62) #22
  %63 = getelementptr inbounds %struct.TransData, ptr %44, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !338
  call fastcc void @add_v3_v3v3(ptr noundef %64, ptr noundef nonnull %39, ptr noundef nonnull %3) #22
  %65 = load i32, ptr %35, align 8, !tbaa !154
  br label %66

66:                                               ; preds = %52, %49
  %67 = phi i32 [ %65, %52 ], [ %42, %49 ]
  %68 = add nuw nsw i32 %43, 1
  %69 = getelementptr inbounds %struct.TransData, ptr %44, i64 1
  %70 = icmp slt i32 %68, %67
  br i1 %70, label %41, label %71, !llvm.loop !400

71:                                               ; preds = %66, %41, %34
  call void @recalcData(ptr noundef nonnull %0) #20
  %72 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %73 = load ptr, ptr %72, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %73, ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyRotation(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !401 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca float, align 4
  %5 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %7 = load float, ptr %6, align 4, !tbaa !59
  store float %7, ptr %4, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %4) #20
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !92
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !343
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 49
  call void %14(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %17, ptr noundef null) #20
  br label %21

18:                                               ; preds = %12, %2
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 49
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 50
  call fastcc void @copy_v3_v3(ptr noundef nonnull %19, ptr noundef nonnull %20) #22
  br label %21

21:                                               ; preds = %18, %16
  call void @applySnapping(ptr noundef nonnull %0, ptr noundef nonnull %4) #20
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %23 = call zeroext i8 @applyNumInput(ptr noundef nonnull %22, ptr noundef nonnull %4) #20
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load float, ptr %4, align 4, !tbaa !59
  %27 = call float @angle_wrap_rad(float noundef %26) #20
  store float %27, ptr %4, align 4, !tbaa !59
  br label %28

28:                                               ; preds = %25, %21
  %29 = call zeroext i8 @hasNumInput(ptr noundef nonnull %22) #20
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #21
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %33 = load ptr, ptr %32, align 8, !tbaa !121
  %34 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %22, ptr noundef nonnull %5, ptr noundef nonnull %34) #20
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %36 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %37 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.92, ptr noundef nonnull %5, ptr noundef nonnull %35, ptr noundef nonnull %36) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #21
  br label %45

38:                                               ; preds = %28
  %39 = load float, ptr %4, align 4, !tbaa !59
  %40 = fmul float %39, 0x404CA5DC20000000
  %41 = fpext float %40 to double
  %42 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %43 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %44 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.93, double noundef %41, ptr noundef nonnull %42, ptr noundef nonnull %43) #20
  br label %45

45:                                               ; preds = %38, %31
  %46 = phi i64 [ %37, %31 ], [ %44, %38 ]
  %47 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !94
  %49 = and i32 %48, 33560576
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds i8, ptr %3, i64 %46
  %53 = sub i64 256, %46
  %54 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 18
  %55 = load float, ptr %54, align 4, !tbaa !105
  %56 = fpext float %55 to double
  %57 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %52, i64 noundef %53, ptr noundef nonnull @.str.89, double noundef %56) #20
  br label %58

58:                                               ; preds = %51, %45
  %59 = load float, ptr %4, align 4, !tbaa !59
  store float %59, ptr %6, align 4, !tbaa !59
  %60 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 49
  call fastcc void @applyRotationValue(ptr noundef nonnull %0, float noundef %59, ptr noundef nonnull %60) #22
  call void @recalcData(ptr noundef nonnull %0) #20
  %61 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %62 = load ptr, ptr %61, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %62, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare float @angle_wrap_rad(float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @applyRotationValue(ptr noundef %0, float noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !402 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #21
  call void @axis_angle_normalized_to_mat3(ptr noundef nonnull %4, ptr noundef %2, float noundef %1) #20
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !154
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %45

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 11
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 32
  br label %14

14:                                               ; preds = %10, %40
  %15 = phi i32 [ %8, %10 ], [ %41, %40 ]
  %16 = phi i32 [ 0, %10 ], [ %42, %40 ]
  %17 = phi ptr [ %6, %10 ], [ %43, %40 ]
  %18 = getelementptr inbounds %struct.TransData, ptr %17, i64 0, i32 16
  %19 = load i32, ptr %18, align 8, !tbaa !336
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %14
  %23 = and i32 %19, 2048
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load ptr, ptr %11, align 8, !tbaa !343
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  call void %26(ptr noundef nonnull %0, ptr noundef nonnull %17, ptr noundef %2, ptr noundef null) #20
  br label %33

29:                                               ; preds = %25
  %30 = load i32, ptr %12, align 4, !tbaa !94
  %31 = and i32 %30, 2048
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29, %28
  %34 = getelementptr inbounds %struct.TransData, ptr %17, i64 0, i32 2
  %35 = load float, ptr %34, align 8, !tbaa !339
  %36 = fmul float %35, %1
  call void @axis_angle_normalized_to_mat3(ptr noundef nonnull %4, ptr noundef %2, float noundef %36) #20
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i16, ptr %13, align 2, !tbaa !153
  call fastcc void @ElementRotation(ptr noundef nonnull %0, ptr noundef nonnull %17, ptr noundef nonnull %4, i16 noundef signext %38) #22
  %39 = load i32, ptr %7, align 8, !tbaa !154
  br label %40

40:                                               ; preds = %22, %37
  %41 = phi i32 [ %15, %22 ], [ %39, %37 ]
  %42 = add nuw nsw i32 %16, 1
  %43 = getelementptr inbounds %struct.TransData, ptr %17, i64 1
  %44 = icmp slt i32 %42, %41
  br i1 %44, label %14, label %45, !llvm.loop !403

45:                                               ; preds = %40, %14, %3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ElementRotation(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) unnamed_addr #0 !PGOFuncName !404 {
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
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #21
  %19 = tail call fastcc zeroext i8 @transdata_check_local_center(ptr noundef %0, i16 noundef signext %3) #22, !range !144
  %20 = icmp eq i8 %19, 0
  %21 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 7
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %23 = select i1 %20, ptr %22, ptr %21
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !94
  %26 = and i32 %25, 64
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %54, label %28

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 8
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %29) #20
  %30 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 9
  call void @mul_m3_m3m3(ptr noundef nonnull %7, ptr noundef nonnull %30, ptr noundef nonnull %6) #20
  %31 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %31, ptr noundef nonnull %23) #22
  call void @mul_m3_v3(ptr noundef nonnull %7, ptr noundef nonnull %5) #20
  %32 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !338
  call fastcc void @add_v3_v3v3(ptr noundef %33, ptr noundef nonnull %5, ptr noundef nonnull %23) #22
  %34 = load ptr, ptr %32, align 8, !tbaa !338
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %34, ptr noundef nonnull %31) #22
  %35 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 17
  %36 = load i16, ptr %35, align 4, !tbaa !362
  call fastcc void @protectedTransBits(i16 noundef signext %36, ptr noundef nonnull %5) #22
  call fastcc void @add_v3_v3v3(ptr noundef %34, ptr noundef nonnull %31, ptr noundef nonnull %5) #22
  %37 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 16
  %38 = load i32, ptr %37, align 8, !tbaa !336
  %39 = and i32 %38, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %241, label %41

41:                                               ; preds = %28
  call void @_va_mul_m3_series_4(ptr noundef nonnull %9, ptr noundef nonnull %30, ptr noundef %2, ptr noundef nonnull %29) #20
  call void @mat3_to_quat(ptr noundef nonnull %10, ptr noundef nonnull %9) #20
  %42 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 13
  %43 = load ptr, ptr %42, align 8, !tbaa !361
  %44 = getelementptr inbounds %struct.TransDataExtension, ptr %43, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !405
  %46 = icmp eq ptr %45, null
  br i1 %46, label %241, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.TransDataExtension, ptr %43, i64 0, i32 6
  call void @mul_qt_qtqt(ptr noundef nonnull %45, ptr noundef nonnull %10, ptr noundef nonnull %48) #20
  %49 = load i16, ptr %35, align 4, !tbaa !362
  %50 = load ptr, ptr %42, align 8, !tbaa !361
  %51 = getelementptr inbounds %struct.TransDataExtension, ptr %50, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !405
  %53 = getelementptr inbounds %struct.TransDataExtension, ptr %50, i64 0, i32 6
  call fastcc void @protectedQuaternionBits(i16 noundef signext %49, ptr noundef %52, ptr noundef nonnull %53) #22
  br label %241

54:                                               ; preds = %4
  %55 = and i32 %25, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %154, label %57

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #21
  %58 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %59 = load ptr, ptr %58, align 8, !tbaa !189
  %60 = getelementptr inbounds %struct.Object, ptr %59, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %11, ptr noundef nonnull %60) #20
  %61 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %12, ptr noundef nonnull %11) #20
  %62 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 16
  %63 = load i32, ptr %62, align 8, !tbaa !336
  %64 = and i32 %63, 8192
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %57
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %21, ptr noundef nonnull %23) #22
  call void @mul_m3_v3(ptr noundef nonnull %11, ptr noundef nonnull %5) #20
  call void @mul_m3_v3(ptr noundef %2, ptr noundef nonnull %5) #20
  call void @mul_m3_v3(ptr noundef nonnull %12, ptr noundef nonnull %5) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %23) #22
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %21) #22
  %67 = load i32, ptr %62, align 8, !tbaa !336
  %68 = and i32 %67, 524288
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = and i32 %67, 1048576
  %72 = icmp eq i32 %71, 0
  call void @mul_m3_v3(ptr noundef nonnull %11, ptr noundef nonnull %5) #20
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 13
  %75 = load ptr, ptr %74, align 8, !tbaa !361
  %76 = getelementptr inbounds %struct.TransDataExtension, ptr %75, i64 0, i32 14
  br label %79

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 9
  br label %79

79:                                               ; preds = %77, %73
  %80 = phi ptr [ %76, %73 ], [ %78, %77 ]
  call void @mul_m3_v3(ptr noundef nonnull %80, ptr noundef nonnull %5) #20
  br label %81

81:                                               ; preds = %79, %66
  %82 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 17
  %83 = load i16, ptr %82, align 4, !tbaa !362
  call fastcc void @protectedTransBits(i16 noundef signext %83, ptr noundef nonnull %5) #22
  %84 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !338
  %86 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4
  call fastcc void @add_v3_v3v3(ptr noundef %85, ptr noundef nonnull %86, ptr noundef nonnull %5) #22
  call fastcc void @constraintTransLim(ptr noundef nonnull %0, ptr noundef nonnull %1) #22
  br label %87

87:                                               ; preds = %81, %57
  %88 = load i32, ptr %24, align 4, !tbaa !94
  %89 = and i32 %88, 16384
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %153

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 13
  %93 = load ptr, ptr %92, align 8, !tbaa !361
  %94 = getelementptr inbounds %struct.TransDataExtension, ptr %93, i64 0, i32 17
  %95 = load i32, ptr %94, align 8, !tbaa !406
  switch i32 %95, label %131 [
    i32 0, label %96
    i32 -1, label %109
  ]

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.TransDataExtension, ptr %93, i64 0, i32 16
  %98 = getelementptr inbounds %struct.TransDataExtension, ptr %93, i64 0, i32 15
  call void @_va_mul_m3_series_4(ptr noundef nonnull %9, ptr noundef nonnull %97, ptr noundef %2, ptr noundef nonnull %98) #20
  call void @mat3_to_quat(ptr noundef nonnull %10, ptr noundef nonnull %9) #20
  %99 = load ptr, ptr %92, align 8, !tbaa !361
  %100 = getelementptr inbounds %struct.TransDataExtension, ptr %99, i64 0, i32 5
  %101 = load ptr, ptr %100, align 8, !tbaa !405
  %102 = getelementptr inbounds %struct.TransDataExtension, ptr %99, i64 0, i32 6
  call void @mul_qt_qtqt(ptr noundef %101, ptr noundef nonnull %10, ptr noundef nonnull %102) #20
  %103 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 17
  %104 = load i16, ptr %103, align 4, !tbaa !362
  %105 = load ptr, ptr %92, align 8, !tbaa !361
  %106 = getelementptr inbounds %struct.TransDataExtension, ptr %105, i64 0, i32 5
  %107 = load ptr, ptr %106, align 8, !tbaa !405
  %108 = getelementptr inbounds %struct.TransDataExtension, ptr %105, i64 0, i32 6
  call fastcc void @protectedQuaternionBits(i16 noundef signext %104, ptr noundef %107, ptr noundef nonnull %108) #22
  br label %152

109:                                              ; preds = %91
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #21
  %110 = getelementptr inbounds %struct.TransDataExtension, ptr %93, i64 0, i32 10
  %111 = getelementptr inbounds %struct.TransDataExtension, ptr %93, i64 0, i32 8
  %112 = load float, ptr %111, align 8, !tbaa !407
  call void @axis_angle_to_quat(ptr noundef nonnull %13, ptr noundef nonnull %110, float noundef %112) #20
  %113 = load ptr, ptr %92, align 8, !tbaa !361
  %114 = getelementptr inbounds %struct.TransDataExtension, ptr %113, i64 0, i32 16
  %115 = getelementptr inbounds %struct.TransDataExtension, ptr %113, i64 0, i32 15
  call void @_va_mul_m3_series_4(ptr noundef nonnull %9, ptr noundef nonnull %114, ptr noundef %2, ptr noundef nonnull %115) #20
  call void @mat3_to_quat(ptr noundef nonnull %10, ptr noundef nonnull %9) #20
  call void @mul_qt_qtqt(ptr noundef nonnull %14, ptr noundef nonnull %10, ptr noundef nonnull %13) #20
  %116 = load ptr, ptr %92, align 8, !tbaa !361
  %117 = getelementptr inbounds %struct.TransDataExtension, ptr %116, i64 0, i32 9
  %118 = load ptr, ptr %117, align 8, !tbaa !408
  %119 = getelementptr inbounds %struct.TransDataExtension, ptr %116, i64 0, i32 7
  %120 = load ptr, ptr %119, align 8, !tbaa !409
  call void @quat_to_axis_angle(ptr noundef %118, ptr noundef %120, ptr noundef nonnull %14) #20
  %121 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 17
  %122 = load i16, ptr %121, align 4, !tbaa !362
  %123 = load ptr, ptr %92, align 8, !tbaa !361
  %124 = getelementptr inbounds %struct.TransDataExtension, ptr %123, i64 0, i32 9
  %125 = load ptr, ptr %124, align 8, !tbaa !408
  %126 = getelementptr inbounds %struct.TransDataExtension, ptr %123, i64 0, i32 7
  %127 = load ptr, ptr %126, align 8, !tbaa !409
  %128 = getelementptr inbounds %struct.TransDataExtension, ptr %123, i64 0, i32 10
  %129 = getelementptr inbounds %struct.TransDataExtension, ptr %123, i64 0, i32 8
  %130 = load float, ptr %129, align 8, !tbaa !407
  call fastcc void @protectedAxisAngleBits(i16 noundef signext %122, ptr noundef %125, ptr noundef %127, ptr noundef nonnull %128, float noundef %130) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #21
  br label %152

131:                                              ; preds = %91
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %15) #21
  %132 = getelementptr inbounds %struct.TransDataExtension, ptr %93, i64 0, i32 15
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %132) #20
  %133 = load ptr, ptr %92, align 8, !tbaa !361
  %134 = getelementptr inbounds %struct.TransDataExtension, ptr %133, i64 0, i32 16
  call void @mul_m3_m3m3(ptr noundef nonnull %7, ptr noundef nonnull %134, ptr noundef nonnull %6) #20
  %135 = load ptr, ptr %92, align 8, !tbaa !361
  %136 = getelementptr inbounds %struct.TransDataExtension, ptr %135, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %136) #22
  %137 = getelementptr inbounds %struct.TransDataExtension, ptr %135, i64 0, i32 17
  %138 = load i32, ptr %137, align 8, !tbaa !406
  %139 = trunc i32 %138 to i16
  call void @eulO_to_mat3(ptr noundef nonnull %15, ptr noundef nonnull %8, i16 noundef signext %139) #20
  call void @mul_m3_m3m3(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %15) #20
  %140 = load ptr, ptr %92, align 8, !tbaa !361
  %141 = getelementptr inbounds %struct.TransDataExtension, ptr %140, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !410
  %143 = getelementptr inbounds %struct.TransDataExtension, ptr %140, i64 0, i32 17
  %144 = load i32, ptr %143, align 8, !tbaa !406
  %145 = trunc i32 %144 to i16
  call void @mat3_to_compatible_eulO(ptr noundef nonnull %8, ptr noundef %142, i16 noundef signext %145, ptr noundef nonnull %9) #20
  %146 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 17
  %147 = load i16, ptr %146, align 4, !tbaa !362
  %148 = load ptr, ptr %92, align 8, !tbaa !361
  %149 = getelementptr inbounds %struct.TransDataExtension, ptr %148, i64 0, i32 4
  call fastcc void @protectedRotateBits(i16 noundef signext %147, ptr noundef nonnull %8, ptr noundef nonnull %149) #22
  %150 = getelementptr inbounds %struct.TransDataExtension, ptr %148, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !410
  call fastcc void @copy_v3_v3(ptr noundef %151, ptr noundef nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %15) #21
  br label %152

152:                                              ; preds = %109, %131, %96
  call fastcc void @constraintRotLim(ptr noundef nonnull %1) #22
  br label %153

153:                                              ; preds = %152, %87
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #21
  br label %241

154:                                              ; preds = %54
  %155 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 16
  %156 = load i32, ptr %155, align 8, !tbaa !336
  %157 = and i32 %156, 8192
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %154
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %21, ptr noundef nonnull %23) #22
  call void @mul_m3_v3(ptr noundef %2, ptr noundef nonnull %5) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %23) #22
  call fastcc void @sub_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %21) #22
  %160 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 9
  call void @mul_m3_v3(ptr noundef nonnull %160, ptr noundef nonnull %5) #20
  %161 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 17
  %162 = load i16, ptr %161, align 4, !tbaa !362
  call fastcc void @protectedTransBits(i16 noundef signext %162, ptr noundef nonnull %5) #22
  %163 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !338
  %165 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4
  call fastcc void @add_v3_v3v3(ptr noundef %164, ptr noundef nonnull %165, ptr noundef nonnull %5) #22
  br label %166

166:                                              ; preds = %159, %154
  call fastcc void @constraintTransLim(ptr noundef nonnull %0, ptr noundef nonnull %1) #22
  %167 = load i32, ptr %24, align 4, !tbaa !94
  %168 = and i32 %167, 16384
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %241

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 13
  %172 = load ptr, ptr %171, align 8, !tbaa !361
  %173 = getelementptr inbounds %struct.TransDataExtension, ptr %172, i64 0, i32 17
  %174 = load i32, ptr %173, align 8, !tbaa !406
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %170
  %177 = load i32, ptr %155, align 8, !tbaa !336
  %178 = and i32 %177, 8
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %197, label %180

180:                                              ; preds = %176, %170
  %181 = getelementptr inbounds %struct.TransDataExtension, ptr %172, i64 0, i32 5
  %182 = load ptr, ptr %181, align 8, !tbaa !405
  %183 = icmp eq ptr %182, null
  br i1 %183, label %240, label %184

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 9
  %186 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 8
  call void @_va_mul_m3_series_4(ptr noundef nonnull %9, ptr noundef nonnull %185, ptr noundef %2, ptr noundef nonnull %186) #20
  call void @mat3_to_quat(ptr noundef nonnull %10, ptr noundef nonnull %9) #20
  %187 = load ptr, ptr %171, align 8, !tbaa !361
  %188 = getelementptr inbounds %struct.TransDataExtension, ptr %187, i64 0, i32 5
  %189 = load ptr, ptr %188, align 8, !tbaa !405
  %190 = getelementptr inbounds %struct.TransDataExtension, ptr %187, i64 0, i32 6
  call void @mul_qt_qtqt(ptr noundef %189, ptr noundef nonnull %10, ptr noundef nonnull %190) #20
  %191 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 17
  %192 = load i16, ptr %191, align 4, !tbaa !362
  %193 = load ptr, ptr %171, align 8, !tbaa !361
  %194 = getelementptr inbounds %struct.TransDataExtension, ptr %193, i64 0, i32 5
  %195 = load ptr, ptr %194, align 8, !tbaa !405
  %196 = getelementptr inbounds %struct.TransDataExtension, ptr %193, i64 0, i32 6
  call fastcc void @protectedQuaternionBits(i16 noundef signext %192, ptr noundef %195, ptr noundef nonnull %196) #22
  br label %240

197:                                              ; preds = %176
  %198 = icmp eq i32 %174, -1
  br i1 %198, label %199, label %220

199:                                              ; preds = %197
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #21
  %200 = getelementptr inbounds %struct.TransDataExtension, ptr %172, i64 0, i32 10
  %201 = getelementptr inbounds %struct.TransDataExtension, ptr %172, i64 0, i32 8
  %202 = load float, ptr %201, align 8, !tbaa !407
  call void @axis_angle_to_quat(ptr noundef nonnull %16, ptr noundef nonnull %200, float noundef %202) #20
  %203 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 9
  %204 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 8
  call void @_va_mul_m3_series_4(ptr noundef nonnull %9, ptr noundef nonnull %203, ptr noundef %2, ptr noundef nonnull %204) #20
  call void @mat3_to_quat(ptr noundef nonnull %10, ptr noundef nonnull %9) #20
  call void @mul_qt_qtqt(ptr noundef nonnull %17, ptr noundef nonnull %10, ptr noundef nonnull %16) #20
  %205 = load ptr, ptr %171, align 8, !tbaa !361
  %206 = getelementptr inbounds %struct.TransDataExtension, ptr %205, i64 0, i32 9
  %207 = load ptr, ptr %206, align 8, !tbaa !408
  %208 = getelementptr inbounds %struct.TransDataExtension, ptr %205, i64 0, i32 7
  %209 = load ptr, ptr %208, align 8, !tbaa !409
  call void @quat_to_axis_angle(ptr noundef %207, ptr noundef %209, ptr noundef nonnull %17) #20
  %210 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 17
  %211 = load i16, ptr %210, align 4, !tbaa !362
  %212 = load ptr, ptr %171, align 8, !tbaa !361
  %213 = getelementptr inbounds %struct.TransDataExtension, ptr %212, i64 0, i32 9
  %214 = load ptr, ptr %213, align 8, !tbaa !408
  %215 = getelementptr inbounds %struct.TransDataExtension, ptr %212, i64 0, i32 7
  %216 = load ptr, ptr %215, align 8, !tbaa !409
  %217 = getelementptr inbounds %struct.TransDataExtension, ptr %212, i64 0, i32 10
  %218 = getelementptr inbounds %struct.TransDataExtension, ptr %212, i64 0, i32 8
  %219 = load float, ptr %218, align 8, !tbaa !407
  call fastcc void @protectedAxisAngleBits(i16 noundef signext %211, ptr noundef %214, ptr noundef %216, ptr noundef nonnull %217, float noundef %219) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #21
  br label %240

220:                                              ; preds = %197
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %18) #21
  %221 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 8
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %221) #20
  %222 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 9
  call void @mul_m3_m3m3(ptr noundef nonnull %7, ptr noundef nonnull %222, ptr noundef nonnull %6) #20
  %223 = load ptr, ptr %171, align 8, !tbaa !361
  %224 = getelementptr inbounds %struct.TransDataExtension, ptr %223, i64 0, i32 4
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %224, ptr noundef %223) #22
  %225 = getelementptr inbounds %struct.TransDataExtension, ptr %223, i64 0, i32 17
  %226 = load i32, ptr %225, align 8, !tbaa !406
  %227 = trunc i32 %226 to i16
  call void @eulO_to_mat3(ptr noundef nonnull %18, ptr noundef nonnull %8, i16 noundef signext %227) #20
  call void @mul_m3_m3m3(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %18) #20
  %228 = load ptr, ptr %171, align 8, !tbaa !361
  %229 = getelementptr inbounds %struct.TransDataExtension, ptr %228, i64 0, i32 3
  %230 = load ptr, ptr %229, align 8, !tbaa !410
  %231 = getelementptr inbounds %struct.TransDataExtension, ptr %228, i64 0, i32 17
  %232 = load i32, ptr %231, align 8, !tbaa !406
  %233 = trunc i32 %232 to i16
  call void @mat3_to_compatible_eulO(ptr noundef nonnull %8, ptr noundef %230, i16 noundef signext %233, ptr noundef nonnull %9) #20
  %234 = load ptr, ptr %171, align 8, !tbaa !361
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef %234) #22
  %235 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 17
  %236 = load i16, ptr %235, align 4, !tbaa !362
  %237 = getelementptr inbounds %struct.TransDataExtension, ptr %234, i64 0, i32 4
  call fastcc void @protectedRotateBits(i16 noundef signext %236, ptr noundef nonnull %8, ptr noundef nonnull %237) #22
  %238 = getelementptr inbounds %struct.TransDataExtension, ptr %234, i64 0, i32 3
  %239 = load ptr, ptr %238, align 8, !tbaa !410
  call fastcc void @copy_v3_v3(ptr noundef %239, ptr noundef nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %18) #21
  br label %240

240:                                              ; preds = %199, %220, %180, %184
  call fastcc void @constraintRotLim(ptr noundef nonnull %1) #22
  br label %241

241:                                              ; preds = %153, %240, %166, %28, %47, %41
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  ret void
}

; Function Attrs: optsize
declare void @_va_mul_m3_series_4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mat3_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @protectedQuaternionBits(i16 noundef signext %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !411 {
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
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #21
  %41 = call float @normalize_qt_qt(ptr noundef nonnull %6, ptr noundef %1) #20
  %42 = call float @normalize_qt_qt(ptr noundef nonnull %7, ptr noundef %2) #20
  call void @quat_to_eul(ptr noundef nonnull %4, ptr noundef nonnull %6) #20
  call void @quat_to_eul(ptr noundef nonnull %5, ptr noundef nonnull %7) #20
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
  call void @eul_to_quat(ptr noundef %1, ptr noundef nonnull %4) #20
  call void @mul_qt_fl(ptr noundef %1, float noundef %41) #20
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
  call void @mul_qt_fl(ptr noundef nonnull %1, float noundef -1.000000e+00) #20
  br label %73

73:                                               ; preds = %72, %69, %67
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  br label %74

74:                                               ; preds = %33, %36, %3, %73
  ret void
}

; Function Attrs: optsize
declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @quat_to_axis_angle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @protectedAxisAngleBits(i16 noundef signext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) unnamed_addr #0 !PGOFuncName !412 {
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
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  %38 = load float, ptr %2, align 4, !tbaa !59
  call void @axis_angle_to_eulO(ptr noundef nonnull %6, i16 noundef signext 1, ptr noundef %1, float noundef %38) #20
  call void @axis_angle_to_eulO(ptr noundef nonnull %7, i16 noundef signext 1, ptr noundef %3, float noundef %4) #20
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
  call void @eulO_to_axis_angle(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %6, i16 noundef signext 1) #20
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
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  br label %72

72:                                               ; preds = %30, %33, %5, %71
  ret void
}

; Function Attrs: optsize
declare void @eulO_to_mat3(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mat3_to_compatible_eulO(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @protectedRotateBits(i16 noundef signext %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !413 {
  %4 = zext i16 %0 to i32
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load float, ptr %2, align 4, !tbaa !59
  store float %8, ptr %1, align 4, !tbaa !59
  br label %9

9:                                                ; preds = %7, %3
  %10 = and i32 %4, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds float, ptr %2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !59
  %15 = getelementptr inbounds float, ptr %1, i64 1
  store float %14, ptr %15, align 4, !tbaa !59
  br label %16

16:                                               ; preds = %12, %9
  %17 = and i32 %4, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds float, ptr %2, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !59
  %22 = getelementptr inbounds float, ptr %1, i64 2
  store float %21, ptr %22, align 4, !tbaa !59
  br label %23

23:                                               ; preds = %19, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @constraintRotLim(ptr noundef %0) unnamed_addr #0 !PGOFuncName !414 {
  %2 = alloca %struct.bConstraintOb, align 8
  %3 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !372
  %5 = icmp eq ptr %4, null
  br i1 %5, label %81, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @BKE_constraint_typeinfo_from_type(i32 noundef 5) #20
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %2) #21
  %8 = load ptr, ptr %3, align 8, !tbaa !152
  %9 = icmp eq ptr %8, null
  br i1 %9, label %80, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bConstraintOb, ptr %2, i64 0, i32 3
  %12 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 8
  %13 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %7, i64 0, i32 11
  %14 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 9
  br label %15

15:                                               ; preds = %10, %55
  %16 = phi ptr [ %8, %10 ], [ %57, %55 ]
  %17 = phi i8 [ 0, %10 ], [ %56, %55 ]
  %18 = getelementptr inbounds %struct.bConstraint, ptr %16, i64 0, i32 4
  %19 = load i16, ptr %18, align 2, !tbaa !374
  %20 = and i16 %19, 516
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.bConstraint, ptr %16, i64 0, i32 9
  %24 = load float, ptr %23, align 8, !tbaa !376
  %25 = fcmp oeq float %24, 0.000000e+00
  br i1 %25, label %55, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.bConstraint, ptr %16, i64 0, i32 3
  %28 = load i16, ptr %27, align 8, !tbaa !377
  %29 = icmp eq i16 %28, 5
  br i1 %29, label %30, label %55

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.bConstraint, ptr %16, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !378
  %33 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %32, i64 0, i32 7
  %34 = load i16, ptr %33, align 2, !tbaa !415
  %35 = and i16 %34, 2
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.bConstraint, ptr %16, i64 0, i32 5
  %39 = load i8, ptr %38, align 4, !tbaa !381
  %40 = icmp ult i8 %39, 2
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = icmp eq i8 %17, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  call fastcc void @constraintob_from_transdata(ptr noundef nonnull %2, ptr noundef %0) #22
  %44 = load i8, ptr %38, align 4, !tbaa !381
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i8 [ %44, %43 ], [ %39, %41 ]
  %47 = phi i8 [ 1, %43 ], [ %17, %41 ]
  %48 = icmp eq i8 %46, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  call void @mul_m4_m3m4(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %11) #20
  br label %50

50:                                               ; preds = %49, %45
  %51 = load ptr, ptr %13, align 8, !tbaa !382
  call void %51(ptr noundef nonnull %16, ptr noundef nonnull %2, ptr noundef null) #20
  %52 = load i8, ptr %38, align 4, !tbaa !381
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  call void @mul_m4_m3m4(ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef nonnull %11) #20
  br label %55

55:                                               ; preds = %37, %30, %54, %50, %26, %22, %15
  %56 = phi i8 [ %17, %15 ], [ %17, %22 ], [ %17, %26 ], [ %17, %30 ], [ %17, %37 ], [ %47, %54 ], [ %47, %50 ]
  %57 = load ptr, ptr %16, align 8, !tbaa !152
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %15, !llvm.loop !417

59:                                               ; preds = %55
  %60 = icmp eq i8 %56, 0
  br i1 %60, label %80, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 13
  %63 = load ptr, ptr %62, align 8, !tbaa !361
  %64 = getelementptr inbounds %struct.TransDataExtension, ptr %63, i64 0, i32 17
  %65 = load i32, ptr %64, align 8, !tbaa !406
  switch i32 %65, label %75 [
    i32 0, label %66
    i32 -1, label %70
  ]

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.TransDataExtension, ptr %63, i64 0, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !405
  %69 = getelementptr inbounds %struct.bConstraintOb, ptr %2, i64 0, i32 3
  call void @mat4_to_quat(ptr noundef %68, ptr noundef nonnull %69) #20
  br label %80

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.TransDataExtension, ptr %63, i64 0, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !405
  %73 = getelementptr inbounds float, ptr %72, i64 1
  %74 = getelementptr inbounds %struct.bConstraintOb, ptr %2, i64 0, i32 3
  call void @mat4_to_axis_angle(ptr noundef nonnull %73, ptr noundef %72, ptr noundef nonnull %74) #20
  br label %80

75:                                               ; preds = %61
  %76 = getelementptr inbounds %struct.TransDataExtension, ptr %63, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !410
  %78 = trunc i32 %65 to i16
  %79 = getelementptr inbounds %struct.bConstraintOb, ptr %2, i64 0, i32 3
  call void @mat4_to_eulO(ptr noundef %77, i16 noundef signext %78, ptr noundef nonnull %79) #20
  br label %80

80:                                               ; preds = %6, %66, %75, %70, %59
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %2) #21
  br label %81

81:                                               ; preds = %80, %1
  ret void
}

; Function Attrs: optsize
declare float @normalize_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @quat_to_eul(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @eul_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_qt_fl(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @axis_angle_to_eulO(ptr noundef, i16 noundef signext, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @eulO_to_axis_angle(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @constraintob_from_transdata(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !418 {
  %3 = alloca [4 x float], align 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, i8 0, i64 160, i1 false)
  %4 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !361
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.TransDataExtension, ptr %5, i64 0, i32 17
  %9 = load i32, ptr %8, align 8, !tbaa !406
  switch i32 %9, label %21 [
    i32 0, label %10
    i32 -1, label %15
  ]

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %11 = getelementptr inbounds %struct.TransDataExtension, ptr %5, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !405
  %13 = call float @normalize_qt_qt(ptr noundef nonnull %3, ptr noundef %12) #20
  %14 = getelementptr inbounds %struct.bConstraintOb, ptr %0, i64 0, i32 3
  call void @quat_to_mat4(ptr noundef nonnull %14, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  br label %26

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.bConstraintOb, ptr %0, i64 0, i32 3
  %17 = getelementptr inbounds %struct.TransDataExtension, ptr %5, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !405
  %19 = getelementptr inbounds float, ptr %18, i64 1
  %20 = load float, ptr %18, align 4, !tbaa !59
  tail call void @axis_angle_to_mat4(ptr noundef nonnull %16, ptr noundef nonnull %19, float noundef %20) #20
  br label %26

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.bConstraintOb, ptr %0, i64 0, i32 3
  %23 = getelementptr inbounds %struct.TransDataExtension, ptr %5, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !410
  %25 = trunc i32 %9 to i16
  tail call void @eulO_to_mat4(ptr noundef nonnull %22, ptr noundef %24, i16 noundef signext %25) #20
  br label %26

26:                                               ; preds = %10, %21, %15, %2
  ret void
}

; Function Attrs: optsize
declare void @mat4_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mat4_to_axis_angle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mat4_to_eulO(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @quat_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @axis_angle_to_mat4(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @eulO_to_mat4(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyTrackball(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !419 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [2 x float], align 8
  %10 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 30
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %11) #22
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 30, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %12) #22
  %13 = call fastcc float @normalize_v3(ptr noundef nonnull %4) #22
  %14 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #22
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %16 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  %17 = load <2 x float>, ptr %15, align 4, !tbaa !59
  store <2 x float> %17, ptr %9, align 8, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %9) #20
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %19 = call zeroext i8 @applyNumInput(ptr noundef nonnull %18, ptr noundef nonnull %9) #20
  %20 = call zeroext i8 @hasNumInput(ptr noundef nonnull %18) #20
  %21 = icmp eq i8 %20, 0
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  br i1 %21, label %29, label %23

23:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #21
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %25 = load ptr, ptr %24, align 8, !tbaa !121
  %26 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %18, ptr noundef nonnull %10, ptr noundef nonnull %26) #20
  %27 = getelementptr inbounds [128 x i8], ptr %10, i64 0, i64 64
  %28 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.94, ptr noundef nonnull %10, ptr noundef nonnull %27, ptr noundef nonnull %22) #20
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #21
  br label %37

29:                                               ; preds = %2
  %30 = load float, ptr %9, align 8, !tbaa !59
  %31 = fmul float %30, 0x404CA5DC20000000
  %32 = fpext float %31 to double
  %33 = load float, ptr %16, align 4, !tbaa !59
  %34 = fmul float %33, 0x404CA5DC20000000
  %35 = fpext float %34 to double
  %36 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.95, double noundef %32, double noundef %35, ptr noundef nonnull %22) #20
  br label %37

37:                                               ; preds = %29, %23
  %38 = phi i64 [ %28, %23 ], [ %36, %29 ]
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !94
  %41 = and i32 %40, 33560576
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds i8, ptr %3, i64 %38
  %45 = sub i64 256, %38
  %46 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 18
  %47 = load float, ptr %46, align 4, !tbaa !105
  %48 = fpext float %47 to double
  %49 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %44, i64 noundef %45, ptr noundef nonnull @.str.89, double noundef %48) #20
  br label %50

50:                                               ; preds = %43, %37
  %51 = load float, ptr %9, align 8, !tbaa !59
  call void @axis_angle_normalized_to_mat3(ptr noundef nonnull %8, ptr noundef nonnull %4, float noundef %51) #20
  %52 = load float, ptr %16, align 4, !tbaa !59
  call void @axis_angle_normalized_to_mat3(ptr noundef nonnull %7, ptr noundef nonnull %5, float noundef %52) #20
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7) #20
  call fastcc void @applyTrackballValue(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %9) #22
  call void @recalcData(ptr noundef nonnull %0) #20
  %53 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %54 = load ptr, ptr %53, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %54, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @applyTrackballValue(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !420 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #21
  %10 = load float, ptr %3, align 4, !tbaa !59
  call void @axis_angle_normalized_to_mat3(ptr noundef nonnull %6, ptr noundef %1, float noundef %10) #20
  %11 = getelementptr inbounds float, ptr %3, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !59
  call void @axis_angle_normalized_to_mat3(ptr noundef nonnull %7, ptr noundef %2, float noundef %12) #20
  call void @mul_m3_m3m3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !154
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 32
  br label %19

19:                                               ; preds = %16, %45
  %20 = phi i32 [ %14, %16 ], [ %46, %45 ]
  %21 = phi i32 [ 0, %16 ], [ %47, %45 ]
  %22 = phi ptr [ %9, %16 ], [ %48, %45 ]
  %23 = getelementptr inbounds %struct.TransData, ptr %22, i64 0, i32 16
  %24 = load i32, ptr %23, align 8, !tbaa !336
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %19
  %28 = and i32 %24, 2048
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load i32, ptr %17, align 4, !tbaa !94
  %32 = and i32 %31, 2048
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.TransData, ptr %22, i64 0, i32 2
  %36 = load float, ptr %35, align 8, !tbaa !339
  %37 = load float, ptr %3, align 4, !tbaa !59
  %38 = fmul float %36, %37
  call void @axis_angle_normalized_to_mat3(ptr noundef nonnull %6, ptr noundef %1, float noundef %38) #20
  %39 = load float, ptr %35, align 8, !tbaa !339
  %40 = load float, ptr %11, align 4, !tbaa !59
  %41 = fmul float %39, %40
  call void @axis_angle_normalized_to_mat3(ptr noundef nonnull %7, ptr noundef %2, float noundef %41) #20
  call void @mul_m3_m3m3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  br label %42

42:                                               ; preds = %34, %30
  %43 = load i16, ptr %18, align 2, !tbaa !153
  call fastcc void @ElementRotation(ptr noundef nonnull %0, ptr noundef nonnull %22, ptr noundef nonnull %5, i16 noundef signext %43) #22
  %44 = load i32, ptr %13, align 8, !tbaa !154
  br label %45

45:                                               ; preds = %27, %42
  %46 = phi i32 [ %20, %27 ], [ %44, %42 ]
  %47 = add nuw nsw i32 %21, 1
  %48 = getelementptr inbounds %struct.TransData, ptr %22, i64 1
  %49 = icmp slt i32 %47, %46
  br i1 %49, label %19, label %50, !llvm.loop !421

50:                                               ; preds = %45, %19, %4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #21
  ret void
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyTranslation(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !422 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #21
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %7 = load i32, ptr %6, align 4, !tbaa !92
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %13 = tail call zeroext i8 @applyNumInput(ptr noundef nonnull %11, ptr noundef nonnull %12) #20
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @removeAspectRatio(ptr noundef nonnull %0, ptr noundef nonnull %12) #22
  br label %16

16:                                               ; preds = %15, %10
  tail call void @applySnapping(ptr noundef nonnull %0, ptr noundef nonnull %12) #20
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !423
  call void %18(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %12, ptr noundef nonnull %5, ptr noundef nonnull %4) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %5) #22
  call fastcc void @headerTranslation(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  br label %26

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  tail call void @snapGridIncrement(ptr noundef nonnull %0, ptr noundef nonnull %20) #20
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %22 = tail call zeroext i8 @applyNumInput(ptr noundef nonnull %21, ptr noundef nonnull %20) #20
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void @removeAspectRatio(ptr noundef nonnull %0, ptr noundef nonnull %20) #22
  br label %25

25:                                               ; preds = %24, %19
  tail call void @applySnapping(ptr noundef nonnull %0, ptr noundef nonnull %20) #20
  call fastcc void @headerTranslation(ptr noundef nonnull %0, ptr noundef nonnull %20, ptr noundef nonnull %3) #22
  br label %26

26:                                               ; preds = %25, %16
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  call fastcc void @applyTranslationValue(ptr noundef nonnull %0, ptr noundef nonnull %27) #22
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !94
  %30 = and i32 %29, 65536
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %26
  %33 = call zeroext i8 @clipUVTransform(ptr noundef nonnull %0, ptr noundef nonnull %27, i8 noundef zeroext 0) #20
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  call fastcc void @applyTranslationValue(ptr noundef nonnull %0, ptr noundef nonnull %27) #22
  %36 = load i32, ptr %28, align 4, !tbaa !94
  %37 = and i32 %36, 33560576
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  call void @clipUVData(ptr noundef nonnull %0) #20
  br label %40

40:                                               ; preds = %35, %39, %32, %26
  call void @recalcData(ptr noundef nonnull %0) #20
  %41 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %42 = load ptr, ptr %41, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %42, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare float @ED_node_grid_size() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @headerTranslation(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !424 {
  %4 = alloca [192 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = alloca [64 x i8], align 16
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #21
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %9 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %8) #20
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %13 = load ptr, ptr %12, align 8, !tbaa !121
  %14 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %14) #20
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15, i32 6
  %16 = call fastcc float @len_v3(ptr noundef nonnull %15) #22
  br label %66

17:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %1) #22
  call void @applyAspectRatio(ptr noundef %0, ptr noundef nonnull %7) #22
  %18 = tail call fastcc float @len_v3(ptr noundef %1) #22
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !94
  %21 = and i32 %20, 32768
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %25 = load ptr, ptr %24, align 8, !tbaa !121
  %26 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 38, i32 1
  %27 = load i8, ptr %26, align 4, !tbaa !122
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.Scene, ptr %25, i64 0, i32 38, i32 3
  %31 = load i16, ptr %30, align 2, !tbaa !425
  %32 = trunc i16 %31 to i8
  %33 = and i8 %32, 1
  br label %34

34:                                               ; preds = %29, %34
  %35 = phi i64 [ 0, %29 ], [ %49, %34 ]
  %36 = shl nuw nsw i64 %35, 6
  %37 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 %36
  %38 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %35
  %39 = load float, ptr %38, align 4, !tbaa !59
  %40 = load ptr, ptr %24, align 8, !tbaa !121
  %41 = getelementptr inbounds %struct.Scene, ptr %40, i64 0, i32 38
  %42 = load float, ptr %41, align 8, !tbaa !426
  %43 = fmul float %39, %42
  %44 = fpext float %43 to double
  %45 = getelementptr inbounds %struct.Scene, ptr %40, i64 0, i32 38, i32 1
  %46 = load i8, ptr %45, align 4, !tbaa !122
  %47 = zext i8 %46 to i32
  %48 = call i64 @bUnit_AsString(ptr noundef nonnull %37, i32 noundef 64, double noundef %44, i32 noundef 4, i32 noundef %47, i32 noundef 1, i8 noundef zeroext %33, i8 noundef zeroext 1) #20
  %49 = add nuw nsw i64 %35, 1
  %50 = icmp eq i64 %49, 3
  br i1 %50, label %65, label %34, !llvm.loop !427

51:                                               ; preds = %23, %17
  %52 = load float, ptr %7, align 4, !tbaa !59
  %53 = fpext float %52 to double
  %54 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.83, double noundef %53) #20
  %55 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 64
  %56 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !59
  %58 = fpext float %57 to double
  %59 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %55, i64 noundef 64, ptr noundef nonnull @.str.83, double noundef %58) #20
  %60 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 128
  %61 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %62 = load float, ptr %61, align 4, !tbaa !59
  %63 = fpext float %62 to double
  %64 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %60, i64 noundef 64, ptr noundef nonnull @.str.83, double noundef %63) #20
  br label %65

65:                                               ; preds = %34, %51
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  br label %66

66:                                               ; preds = %65, %11
  %67 = phi float [ %16, %11 ], [ %18, %65 ]
  %68 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !94
  %70 = and i32 %69, 32768
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %74 = load ptr, ptr %73, align 8, !tbaa !121
  %75 = getelementptr inbounds %struct.Scene, ptr %74, i64 0, i32 38, i32 1
  %76 = load i8, ptr %75, align 4, !tbaa !122
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %72
  %79 = zext i8 %76 to i32
  %80 = getelementptr inbounds %struct.Scene, ptr %74, i64 0, i32 38
  %81 = getelementptr inbounds %struct.Scene, ptr %74, i64 0, i32 38, i32 3
  %82 = load i16, ptr %81, align 2, !tbaa !425
  %83 = trunc i16 %82 to i8
  %84 = and i8 %83, 1
  %85 = load float, ptr %80, align 8, !tbaa !426
  %86 = fmul float %67, %85
  %87 = fpext float %86 to double
  %88 = call i64 @bUnit_AsString(ptr noundef nonnull %5, i32 noundef 64, double noundef %87, i32 noundef 4, i32 noundef %79, i32 noundef 1, i8 noundef zeroext %84, i8 noundef zeroext 0) #20
  br label %98

89:                                               ; preds = %72, %66
  %90 = fcmp ogt float %67, 1.000000e+10
  %91 = fcmp olt float %67, -1.000000e+10
  %92 = or i1 %90, %91
  %93 = fpext float %67 to double
  br i1 %92, label %94, label %96

94:                                               ; preds = %89
  %95 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 64, ptr noundef nonnull @.str.97, double noundef %93) #20
  br label %98

96:                                               ; preds = %89
  %97 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 64, ptr noundef nonnull @.str.83, double noundef %93) #20
  br label %98

98:                                               ; preds = %94, %96, %78
  %99 = load i32, ptr %68, align 4, !tbaa !94
  %100 = and i32 %99, 262144
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 57
  %104 = load ptr, ptr %103, align 8, !tbaa !260
  %105 = getelementptr inbounds %struct.ToolSettings, ptr %104, i64 0, i32 14
  %106 = load i16, ptr %105, align 8, !tbaa !428
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %102
  %109 = sext i16 %106 to i32
  %110 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 64, ptr noundef nonnull @.str.98, i32 noundef %109) #20
  br label %113

111:                                              ; preds = %102
  store i8 0, ptr %6, align 16, !tbaa !335
  br label %113

112:                                              ; preds = %98
  store i8 0, ptr %6, align 16, !tbaa !335
  br label %113

113:                                              ; preds = %108, %111, %112
  %114 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %115 = load i32, ptr %114, align 4, !tbaa !92
  %116 = and i32 %115, 1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %135, label %118

118:                                              ; preds = %113
  %119 = load i16, ptr %8, align 8, !tbaa !119
  switch i16 %119, label %149 [
    i16 0, label %120
    i16 1, label %124
    i16 2, label %129
  ]

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %122 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %123 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.99, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %121, ptr noundef nonnull %122, ptr noundef nonnull %6) #20
  br label %149

124:                                              ; preds = %118
  %125 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 64
  %126 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %127 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %128 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.100, ptr noundef nonnull %4, ptr noundef nonnull %125, ptr noundef nonnull %5, ptr noundef nonnull %126, ptr noundef nonnull %127, ptr noundef nonnull %6) #20
  br label %149

129:                                              ; preds = %118
  %130 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 64
  %131 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 128
  %132 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %133 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %134 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.101, ptr noundef nonnull %4, ptr noundef nonnull %130, ptr noundef nonnull %131, ptr noundef nonnull %5, ptr noundef nonnull %132, ptr noundef nonnull %133, ptr noundef nonnull %6) #20
  br label %149

135:                                              ; preds = %113
  %136 = load i32, ptr %68, align 4, !tbaa !94
  %137 = and i32 %136, 32768
  %138 = icmp eq i32 %137, 0
  %139 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 64
  br i1 %138, label %144, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %142 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %143 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.102, ptr noundef nonnull %4, ptr noundef nonnull %139, ptr noundef nonnull %5, ptr noundef nonnull %141, ptr noundef nonnull %142) #20
  br label %149

144:                                              ; preds = %135
  %145 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 128
  %146 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %147 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %148 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.103, ptr noundef nonnull %4, ptr noundef nonnull %139, ptr noundef nonnull %145, ptr noundef nonnull %5, ptr noundef nonnull %146, ptr noundef nonnull %147, ptr noundef nonnull %6) #20
  br label %149

149:                                              ; preds = %140, %144, %120, %124, %129, %118
  %150 = phi i64 [ 0, %118 ], [ %134, %129 ], [ %128, %124 ], [ %123, %120 ], [ %143, %140 ], [ %148, %144 ]
  %151 = load i32, ptr %68, align 4, !tbaa !94
  %152 = and i32 %151, 33560576
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %149
  %155 = getelementptr inbounds i8, ptr %2, i64 %150
  %156 = sub i64 256, %150
  %157 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 18
  %158 = load float, ptr %157, align 4, !tbaa !105
  %159 = fpext float %158 to double
  %160 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %155, i64 noundef %156, ptr noundef nonnull @.str.89, double noundef %159) #20
  br label %161

161:                                              ; preds = %154, %149
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @applyTranslationValue(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !429 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x float], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x float], align 4
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !154
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %68

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 14, i32 11
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 9
  br label %18

18:                                               ; preds = %14, %63
  %19 = phi i32 [ %12, %14 ], [ %64, %63 ]
  %20 = phi ptr [ %10, %14 ], [ %66, %63 ]
  %21 = phi i32 [ 0, %14 ], [ %65, %63 ]
  %22 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 16
  %23 = load i32, ptr %22, align 8, !tbaa !336
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %68

26:                                               ; preds = %18
  %27 = and i32 %23, 2048
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %26
  %30 = call zeroext i8 @usingSnappingNormal(ptr noundef nonnull %0) #20
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %29
  %33 = call zeroext i8 @validSnappingNormal(ptr noundef nonnull %0) #20
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #21
  %36 = load i32, ptr %15, align 4, !tbaa !94
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 10, i64 1
  %40 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 10, i64 2
  %41 = select i1 %38, ptr %40, ptr %39
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %41, ptr noundef nonnull %16) #22
  %42 = call fastcc float @dot_v3v3(ptr noundef nonnull %41, ptr noundef nonnull %16) #22
  %43 = call fastcc float @saacos(float noundef %42) #22
  call void @axis_angle_to_quat(ptr noundef nonnull %5, ptr noundef nonnull %4, float noundef %43) #20
  call void @quat_to_mat3(ptr noundef nonnull %6, ptr noundef nonnull %5) #20
  call fastcc void @ElementRotation(ptr noundef nonnull %0, ptr noundef nonnull %20, ptr noundef nonnull %6, i16 noundef signext 2) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  br label %45

44:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #21
  call void @unit_m3(ptr noundef nonnull %7) #20
  call fastcc void @ElementRotation(ptr noundef nonnull %0, ptr noundef nonnull %20, ptr noundef nonnull %7, i16 noundef signext 2) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #21
  br label %45

45:                                               ; preds = %35, %44, %29
  %46 = load ptr, ptr %17, align 8, !tbaa !423
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #21
  call void %46(ptr noundef nonnull %0, ptr noundef nonnull %20, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #21
  br label %50

49:                                               ; preds = %45
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef %1) #22
  br label %50

50:                                               ; preds = %49, %48
  %51 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 9
  call void @mul_m3_v3(ptr noundef nonnull %51, ptr noundef nonnull %3) #20
  %52 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 2
  %53 = load float, ptr %52, align 8, !tbaa !339
  call fastcc void @mul_v3_fl(ptr noundef nonnull %3, float noundef %53) #22
  %54 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 17
  %55 = load i16, ptr %54, align 4, !tbaa !362
  call fastcc void @protectedTransBits(i16 noundef signext %55, ptr noundef nonnull %3) #22
  %56 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !338
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 4
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %57, ptr noundef nonnull %60, ptr noundef nonnull %3) #22
  br label %61

61:                                               ; preds = %59, %50
  call fastcc void @constraintTransLim(ptr noundef nonnull %0, ptr noundef nonnull %20) #22
  %62 = load i32, ptr %11, align 8, !tbaa !154
  br label %63

63:                                               ; preds = %26, %61
  %64 = phi i32 [ %19, %26 ], [ %62, %61 ]
  %65 = add nuw nsw i32 %21, 1
  %66 = getelementptr inbounds %struct.TransData, ptr %20, i64 1
  %67 = icmp slt i32 %65, %64
  br i1 %67, label %18, label %68, !llvm.loop !430

68:                                               ; preds = %63, %18, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare i64 @bUnit_AsString(ptr noundef, i32 noundef, double noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @usingSnappingNormal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @validSnappingNormal(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @saacos(float noundef %0) unnamed_addr #14 !PGOFuncName !431 {
  %2 = fcmp ugt float %0, -1.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 1.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call float @acosf(float noundef %0) #20
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi float [ %6, %5 ], [ 0x400921FB60000000, %1 ], [ 0.000000e+00, %3 ]
  ret float %8
}

; Function Attrs: optsize
declare void @quat_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyShrinkFatten(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !432 {
  %3 = alloca float, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #21
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !208
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %9 = load float, ptr %8, align 4, !tbaa !59
  %10 = fneg float %9
  store float %10, ptr %3, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %3) #20
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %12 = call zeroext i8 @applyNumInput(ptr noundef nonnull %11, ptr noundef nonnull %3) #20
  %13 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %4, ptr noundef nonnull @.str.104, i64 noundef 256) #20
  %14 = call zeroext i8 @hasNumInput(ptr noundef nonnull %11) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #21
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %18 = load ptr, ptr %17, align 8, !tbaa !121
  %19 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %11, ptr noundef nonnull %5, ptr noundef nonnull %19) #20
  %20 = getelementptr inbounds i8, ptr %4, i64 %13
  %21 = sub i64 256, %13
  %22 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %20, i64 noundef %21, ptr noundef nonnull @.str.105, ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #21
  br label %29

23:                                               ; preds = %2
  %24 = getelementptr inbounds i8, ptr %4, i64 %13
  %25 = sub i64 256, %13
  %26 = load float, ptr %3, align 4, !tbaa !59
  %27 = fpext float %26 to double
  %28 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %24, i64 noundef %25, ptr noundef nonnull @.str.106, double noundef %27) #20
  br label %29

29:                                               ; preds = %23, %16
  %30 = phi i64 [ %22, %16 ], [ %28, %23 ]
  %31 = add i64 %30, %13
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %33 = load i8, ptr %32, align 8, !tbaa !335
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds i8, ptr %4, i64 %31
  %37 = sub i64 256, %31
  %38 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %36, i64 noundef %37, ptr noundef nonnull @.str.105, ptr noundef nonnull %32) #20
  %39 = add i64 %38, %31
  br label %40

40:                                               ; preds = %35, %29
  %41 = phi i64 [ %39, %35 ], [ %31, %29 ]
  %42 = getelementptr inbounds i8, ptr %4, i64 %41
  %43 = sub i64 256, %41
  %44 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %42, i64 noundef %43, ptr noundef nonnull @.str.107) #20
  %45 = add i64 %44, %41
  %46 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 59
  %47 = load ptr, ptr %46, align 8, !tbaa !180
  %48 = icmp eq ptr %47, null
  br i1 %48, label %59, label %49

49:                                               ; preds = %40
  %50 = call ptr @WM_modalkeymap_find_propvalue(ptr noundef nonnull %47, i32 noundef 5) #20
  %51 = icmp eq ptr %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds i8, ptr %4, i64 %45
  %54 = trunc i64 %45 to i32
  %55 = sub i32 256, %54
  %56 = call i32 @WM_keymap_item_to_string(ptr noundef nonnull %50, ptr noundef nonnull %53, i32 noundef %55) #20
  %57 = sext i32 %56 to i64
  %58 = add i64 %45, %57
  br label %59

59:                                               ; preds = %49, %52, %40
  %60 = phi i64 [ %45, %40 ], [ %58, %52 ], [ %45, %49 ]
  %61 = getelementptr inbounds i8, ptr %4, i64 %60
  %62 = sub i64 256, %60
  %63 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %64 = load i32, ptr %63, align 4, !tbaa !94
  %65 = lshr i32 %64, 24
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  %68 = call ptr @WM_bool_as_string(i8 noundef zeroext %67) #20
  %69 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %61, i64 noundef %62, ptr noundef nonnull @.str.108, ptr noundef %68) #20
  %70 = load float, ptr %3, align 4, !tbaa !59
  %71 = fneg float %70
  store float %71, ptr %8, align 4, !tbaa !59
  %72 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %73 = load i32, ptr %72, align 8, !tbaa !154
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %114

75:                                               ; preds = %59, %109
  %76 = phi i32 [ %110, %109 ], [ %73, %59 ]
  %77 = phi i32 [ %111, %109 ], [ 0, %59 ]
  %78 = phi ptr [ %112, %109 ], [ %7, %59 ]
  %79 = getelementptr inbounds %struct.TransData, ptr %78, i64 0, i32 16
  %80 = load i32, ptr %79, align 8, !tbaa !336
  %81 = and i32 %80, 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %114

83:                                               ; preds = %75
  %84 = and i32 %80, 2048
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %83
  %87 = load float, ptr %3, align 4, !tbaa !59
  %88 = getelementptr inbounds %struct.TransData, ptr %78, i64 0, i32 2
  %89 = load float, ptr %88, align 8, !tbaa !339
  %90 = fmul float %87, %89
  %91 = getelementptr inbounds %struct.TransData, ptr %78, i64 0, i32 13
  %92 = load ptr, ptr %91, align 8, !tbaa !361
  %93 = icmp eq ptr %92, null
  br i1 %93, label %102, label %94

94:                                               ; preds = %86
  %95 = load i32, ptr %63, align 4, !tbaa !94
  %96 = and i32 %95, 16777216
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.TransDataExtension, ptr %92, i64 0, i32 12
  %100 = load float, ptr %99, align 8, !tbaa !59
  %101 = fmul float %90, %100
  br label %102

102:                                              ; preds = %98, %94, %86
  %103 = phi float [ %101, %98 ], [ %90, %94 ], [ %90, %86 ]
  %104 = getelementptr inbounds %struct.TransData, ptr %78, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !338
  %106 = getelementptr inbounds %struct.TransData, ptr %78, i64 0, i32 4
  %107 = getelementptr inbounds %struct.TransData, ptr %78, i64 0, i32 10, i64 2
  call fastcc void @madd_v3_v3v3fl(ptr noundef %105, ptr noundef nonnull %106, ptr noundef nonnull %107, float noundef %103) #22
  %108 = load i32, ptr %72, align 8, !tbaa !154
  br label %109

109:                                              ; preds = %102, %83
  %110 = phi i32 [ %108, %102 ], [ %76, %83 ]
  %111 = add nuw nsw i32 %77, 1
  %112 = getelementptr inbounds %struct.TransData, ptr %78, i64 1
  %113 = icmp slt i32 %111, %110
  br i1 %113, label %75, label %114, !llvm.loop !433

114:                                              ; preds = %109, %75, %59
  call void @recalcData(ptr noundef nonnull %0) #20
  %115 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %116 = load ptr, ptr %115, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %116, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare i64 @BLI_strncpy_rlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_modalkeymap_find_propvalue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_keymap_item_to_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #3 !PGOFuncName !434 {
  %5 = load float, ptr %1, align 4, !tbaa !59
  %6 = load float, ptr %2, align 4, !tbaa !59
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !59
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !59
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !59
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !59
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !59
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !59
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !59
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyTilt(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !435 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca float, align 4
  %5 = alloca [64 x i8], align 16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %9 = load float, ptr %8, align 4, !tbaa !59
  store float %9, ptr %4, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %4) #20
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %11 = call zeroext i8 @applyNumInput(ptr noundef nonnull %10, ptr noundef nonnull %4) #20
  %12 = call zeroext i8 @hasNumInput(ptr noundef nonnull %10) #20
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #21
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %16 = load ptr, ptr %15, align 8, !tbaa !121
  %17 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef nonnull %17) #20
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %19 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.109, ptr noundef nonnull %5, ptr noundef nonnull %18) #20
  %20 = load float, ptr %4, align 4, !tbaa !59
  store float %20, ptr %8, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #21
  br label %27

21:                                               ; preds = %2
  %22 = load float, ptr %4, align 4, !tbaa !59
  %23 = fmul float %22, 0x404CA5DC20000000
  %24 = fpext float %23 to double
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %26 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.110, double noundef %24, ptr noundef nonnull %25) #20
  br label %27

27:                                               ; preds = %21, %14
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %29 = load i32, ptr %28, align 8, !tbaa !154
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %27, %52
  %32 = phi i32 [ %53, %52 ], [ 0, %27 ]
  %33 = phi ptr [ %54, %52 ], [ %7, %27 ]
  %34 = getelementptr inbounds %struct.TransData, ptr %33, i64 0, i32 16
  %35 = load i32, ptr %34, align 8, !tbaa !336
  %36 = and i32 %35, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %31
  %39 = and i32 %35, 2048
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.TransData, ptr %33, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !364
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.TransData, ptr %33, i64 0, i32 6
  %47 = load float, ptr %46, align 8, !tbaa !363
  %48 = load float, ptr %4, align 4, !tbaa !59
  %49 = getelementptr inbounds %struct.TransData, ptr %33, i64 0, i32 2
  %50 = load float, ptr %49, align 8, !tbaa !339
  %51 = call float @llvm.fmuladd.f32(float %48, float %50, float %47)
  store float %51, ptr %43, align 4, !tbaa !59
  br label %52

52:                                               ; preds = %41, %45, %38
  %53 = add nuw nsw i32 %32, 1
  %54 = getelementptr inbounds %struct.TransData, ptr %33, i64 1
  %55 = icmp eq i32 %53, %29
  br i1 %55, label %56, label %31, !llvm.loop !436

56:                                               ; preds = %52, %31, %27
  call void @recalcData(ptr noundef nonnull %0) #20
  %57 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %58 = load ptr, ptr %57, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %58, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyCurveShrinkFatten(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !437 {
  %3 = alloca float, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #21
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %9 = load float, ptr %8, align 4, !tbaa !59
  store float %9, ptr %3, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %3) #20
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %11 = call zeroext i8 @applyNumInput(ptr noundef nonnull %10, ptr noundef nonnull %3) #20
  %12 = call zeroext i8 @hasNumInput(ptr noundef nonnull %10) #20
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #21
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %16 = load ptr, ptr %15, align 8, !tbaa !121
  %17 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef nonnull %17) #20
  %18 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.111, ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #21
  br label %23

19:                                               ; preds = %2
  %20 = load float, ptr %3, align 4, !tbaa !59
  %21 = fpext float %20 to double
  %22 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.112, double noundef %21) #20
  br label %23

23:                                               ; preds = %19, %14
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !154
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %23, %54
  %28 = phi i32 [ %55, %54 ], [ 0, %23 ]
  %29 = phi ptr [ %56, %54 ], [ %7, %23 ]
  %30 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 16
  %31 = load i32, ptr %30, align 8, !tbaa !336
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %27
  %35 = and i32 %31, 2048
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !364
  %40 = icmp eq ptr %39, null
  br i1 %40, label %54, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 6
  %43 = load float, ptr %42, align 8, !tbaa !363
  %44 = load float, ptr %3, align 4, !tbaa !59
  %45 = fmul float %43, %44
  store float %45, ptr %39, align 4, !tbaa !59
  %46 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 2
  %47 = load float, ptr %46, align 8, !tbaa !339
  %48 = fsub float 1.000000e+00, %47
  %49 = load float, ptr %42, align 8, !tbaa !363
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
  br i1 %57, label %58, label %27, !llvm.loop !438

58:                                               ; preds = %54, %27, %23
  call void @recalcData(ptr noundef nonnull %0) #20
  %59 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %60 = load ptr, ptr %59, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %60, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyMaskShrinkFatten(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !439 {
  %3 = alloca float, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #21
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %7 = load float, ptr %6, align 4, !tbaa !59
  store float %7, ptr %3, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %3) #20
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %9 = call zeroext i8 @applyNumInput(ptr noundef nonnull %8, ptr noundef nonnull %3) #20
  %10 = call zeroext i8 @hasNumInput(ptr noundef nonnull %8) #20
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #21
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %14 = load ptr, ptr %13, align 8, !tbaa !121
  %15 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %15) #20
  %16 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.113, ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #21
  br label %21

17:                                               ; preds = %2
  %18 = load float, ptr %3, align 4, !tbaa !59
  %19 = fpext float %18 to double
  %20 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.114, double noundef %19) #20
  br label %21

21:                                               ; preds = %17, %12
  %22 = load float, ptr %3, align 4, !tbaa !59
  %23 = fcmp ogt float %22, 1.000000e+00
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !154
  br i1 %23, label %26, label %55

26:                                               ; preds = %21
  %27 = icmp sgt i32 %25, 0
  br i1 %27, label %28, label %96

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !208
  br label %31

31:                                               ; preds = %28, %47
  %32 = phi i8 [ %48, %47 ], [ 1, %28 ]
  %33 = phi i32 [ %49, %47 ], [ 0, %28 ]
  %34 = phi ptr [ %50, %47 ], [ %30, %28 ]
  %35 = getelementptr inbounds %struct.TransData, ptr %34, i64 0, i32 16
  %36 = load i32, ptr %35, align 8, !tbaa !336
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %31
  %40 = and i32 %36, 2048
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.TransData, ptr %34, i64 0, i32 6
  %44 = load float, ptr %43, align 8, !tbaa !363
  %45 = fcmp ult float %44, 0x3F50624DE0000000
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %42, %46, %39
  %48 = phi i8 [ %32, %39 ], [ 0, %46 ], [ %32, %42 ]
  %49 = add nuw nsw i32 %33, 1
  %50 = getelementptr inbounds %struct.TransData, ptr %34, i64 1
  %51 = icmp eq i32 %49, %25
  br i1 %51, label %52, label %31, !llvm.loop !440

52:                                               ; preds = %47, %31
  %53 = phi i8 [ %48, %47 ], [ %32, %31 ]
  %54 = icmp eq i8 %53, 0
  br label %55

55:                                               ; preds = %21, %52
  %56 = phi i1 [ %54, %52 ], [ true, %21 ]
  %57 = icmp sgt i32 %25, 0
  br i1 %57, label %58, label %96

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %60 = load ptr, ptr %59, align 8, !tbaa !208
  br label %61

61:                                               ; preds = %58, %92
  %62 = phi i32 [ 0, %58 ], [ %93, %92 ]
  %63 = phi ptr [ %60, %58 ], [ %94, %92 ]
  %64 = getelementptr inbounds %struct.TransData, ptr %63, i64 0, i32 16
  %65 = load i32, ptr %64, align 8, !tbaa !336
  %66 = and i32 %65, 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %96

68:                                               ; preds = %61
  %69 = and i32 %65, 2048
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.TransData, ptr %63, i64 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !364
  %74 = icmp eq ptr %73, null
  br i1 %74, label %92, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.TransData, ptr %63, i64 0, i32 6
  %77 = load float, ptr %76, align 8, !tbaa !363
  %78 = load float, ptr %3, align 4, !tbaa !59
  %79 = fmul float %77, %78
  %80 = fadd float %78, -1.000000e+00
  %81 = call float @llvm.fmuladd.f32(float %80, float 0x3F847AE140000000, float %77)
  %82 = select i1 %56, float %79, float %81
  store float %82, ptr %73, align 4, !tbaa !59
  %83 = getelementptr inbounds %struct.TransData, ptr %63, i64 0, i32 2
  %84 = load float, ptr %83, align 8, !tbaa !339
  %85 = fsub float 1.000000e+00, %84
  %86 = getelementptr inbounds %struct.TransData, ptr %63, i64 0, i32 6
  %87 = load float, ptr %86, align 8, !tbaa !363
  %88 = fmul float %85, %87
  %89 = call float @llvm.fmuladd.f32(float %82, float %84, float %88)
  store float %89, ptr %73, align 4, !tbaa !59
  %90 = fcmp ugt float %89, 0.000000e+00
  br i1 %90, label %92, label %91

91:                                               ; preds = %75
  store float 0x3F50624DE0000000, ptr %73, align 4, !tbaa !59
  br label %92

92:                                               ; preds = %71, %91, %75, %68
  %93 = add nuw nsw i32 %62, 1
  %94 = getelementptr inbounds %struct.TransData, ptr %63, i64 1
  %95 = icmp eq i32 %93, %25
  br i1 %95, label %96, label %61, !llvm.loop !441

96:                                               ; preds = %92, %61, %26, %55
  call void @recalcData(ptr noundef nonnull %0) #20
  %97 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %98 = load ptr, ptr %97, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %98, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyPushPull(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !442 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca float, align 4
  %6 = alloca [256 x i8], align 16
  %7 = alloca [64 x i8], align 16
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #21
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !208
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %12 = load float, ptr %11, align 4, !tbaa !59
  store float %12, ptr %5, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %5) #20
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %14 = call zeroext i8 @applyNumInput(ptr noundef nonnull %13, ptr noundef nonnull %5) #20
  %15 = call zeroext i8 @hasNumInput(ptr noundef nonnull %13) #20
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #21
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %19 = load ptr, ptr %18, align 8, !tbaa !121
  %20 = getelementptr inbounds %struct.Scene, ptr %19, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %13, ptr noundef nonnull %7, ptr noundef nonnull %20) #20
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %23 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 256, ptr noundef nonnull @.str.115, ptr noundef nonnull %7, ptr noundef nonnull %21, ptr noundef nonnull %22) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #21
  br label %30

24:                                               ; preds = %2
  %25 = load float, ptr %5, align 4, !tbaa !59
  %26 = fpext float %25 to double
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %29 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 256, ptr noundef nonnull @.str.116, double noundef %26, ptr noundef nonnull %27, ptr noundef nonnull %28) #20
  br label %30

30:                                               ; preds = %24, %17
  %31 = load float, ptr %5, align 4, !tbaa !59
  store float %31, ptr %11, align 4, !tbaa !59
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 11
  %33 = load ptr, ptr %32, align 8, !tbaa !343
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %37 = load i32, ptr %36, align 4, !tbaa !92
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  call void %33(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %4, ptr noundef null) #20
  br label %41

41:                                               ; preds = %40, %35, %30
  %42 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %43 = load i32, ptr %42, align 8, !tbaa !154
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %86

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %47 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  br label %48

48:                                               ; preds = %45, %81
  %49 = phi i32 [ %43, %45 ], [ %82, %81 ]
  %50 = phi ptr [ %10, %45 ], [ %84, %81 ]
  %51 = phi i32 [ 0, %45 ], [ %83, %81 ]
  %52 = getelementptr inbounds %struct.TransData, ptr %50, i64 0, i32 16
  %53 = load i32, ptr %52, align 8, !tbaa !336
  %54 = and i32 %53, 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %86

56:                                               ; preds = %48
  %57 = and i32 %53, 2048
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.TransData, ptr %50, i64 0, i32 7
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %46, ptr noundef nonnull %60) #22
  %61 = load ptr, ptr %32, align 8, !tbaa !343
  %62 = icmp eq ptr %61, null
  br i1 %62, label %72, label %63

63:                                               ; preds = %59
  %64 = load i32, ptr %47, align 4, !tbaa !92
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  call void %61(ptr noundef nonnull %0, ptr noundef nonnull %50, ptr noundef nonnull %4, ptr noundef null) #20
  %68 = call zeroext i8 @isLockConstraint(ptr noundef nonnull %0) #20
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #21
  call void @project_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  call fastcc void @sub_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #21
  br label %72

71:                                               ; preds = %67
  call void @project_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  br label %72

72:                                               ; preds = %70, %71, %63, %59
  %73 = call fastcc float @normalize_v3(ptr noundef nonnull %3) #22
  %74 = load float, ptr %5, align 4, !tbaa !59
  call fastcc void @mul_v3_fl(ptr noundef nonnull %3, float noundef %74) #22
  %75 = getelementptr inbounds %struct.TransData, ptr %50, i64 0, i32 2
  %76 = load float, ptr %75, align 8, !tbaa !339
  call fastcc void @mul_v3_fl(ptr noundef nonnull %3, float noundef %76) #22
  %77 = getelementptr inbounds %struct.TransData, ptr %50, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !338
  %79 = getelementptr inbounds %struct.TransData, ptr %50, i64 0, i32 4
  call fastcc void @add_v3_v3v3(ptr noundef %78, ptr noundef nonnull %79, ptr noundef nonnull %3) #22
  %80 = load i32, ptr %42, align 8, !tbaa !154
  br label %81

81:                                               ; preds = %56, %72
  %82 = phi i32 [ %49, %56 ], [ %80, %72 ]
  %83 = add nuw nsw i32 %51, 1
  %84 = getelementptr inbounds %struct.TransData, ptr %50, i64 1
  %85 = icmp slt i32 %83, %82
  br i1 %85, label %48, label %86, !llvm.loop !443

86:                                               ; preds = %81, %48, %41
  call void @recalcData(ptr noundef nonnull %0) #20
  %87 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %88 = load ptr, ptr %87, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %88, ptr noundef nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @isLockConstraint(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyBevelWeight(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !444 {
  %3 = alloca float, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #21
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %9 = load float, ptr %8, align 4, !tbaa !59
  %10 = fcmp ogt float %9, 1.000000e+00
  %11 = select i1 %10, float 1.000000e+00, float %9
  store float %11, ptr %3, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %3) #20
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %13 = call zeroext i8 @applyNumInput(ptr noundef nonnull %12, ptr noundef nonnull %3) #20
  %14 = call zeroext i8 @hasNumInput(ptr noundef nonnull %12) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #21
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %18 = load ptr, ptr %17, align 8, !tbaa !121
  %19 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %12, ptr noundef nonnull %5, ptr noundef nonnull %19) #20
  %20 = load float, ptr %3, align 4, !tbaa !59
  %21 = fcmp ult float %20, 0.000000e+00
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %23 = select i1 %21, ptr @.str.118, ptr @.str.117
  %24 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull %23, ptr noundef nonnull %5, ptr noundef nonnull %22) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #21
  br label %34

25:                                               ; preds = %2
  %26 = load float, ptr %3, align 4, !tbaa !59
  %27 = fcmp ult float %26, 0.000000e+00
  %28 = fpext float %26 to double
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  br i1 %27, label %32, label %30

30:                                               ; preds = %25
  %31 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.119, double noundef %28, ptr noundef nonnull %29) #20
  br label %34

32:                                               ; preds = %25
  %33 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.120, double noundef %28, ptr noundef nonnull %29) #20
  br label %34

34:                                               ; preds = %30, %32, %16
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %36 = load i32, ptr %35, align 8, !tbaa !154
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %34, %61
  %39 = phi i32 [ %62, %61 ], [ 0, %34 ]
  %40 = phi ptr [ %63, %61 ], [ %7, %34 ]
  %41 = getelementptr inbounds %struct.TransData, ptr %40, i64 0, i32 16
  %42 = load i32, ptr %41, align 8, !tbaa !336
  %43 = and i32 %42, 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.TransData, ptr %40, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !364
  %48 = icmp eq ptr %47, null
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.TransData, ptr %40, i64 0, i32 6
  %51 = load float, ptr %50, align 8, !tbaa !363
  %52 = load float, ptr %3, align 4, !tbaa !59
  %53 = getelementptr inbounds %struct.TransData, ptr %40, i64 0, i32 2
  %54 = load float, ptr %53, align 8, !tbaa !339
  %55 = call float @llvm.fmuladd.f32(float %52, float %54, float %51)
  store float %55, ptr %47, align 4, !tbaa !59
  %56 = fcmp olt float %55, 0.000000e+00
  br i1 %56, label %59, label %57

57:                                               ; preds = %49
  %58 = fcmp ogt float %55, 1.000000e+00
  br i1 %58, label %59, label %61

59:                                               ; preds = %57, %49
  %60 = phi float [ 0.000000e+00, %49 ], [ 1.000000e+00, %57 ]
  store float %60, ptr %47, align 4, !tbaa !59
  br label %61

61:                                               ; preds = %59, %45, %57
  %62 = add nuw nsw i32 %39, 1
  %63 = getelementptr inbounds %struct.TransData, ptr %40, i64 1
  %64 = icmp eq i32 %62, %36
  br i1 %64, label %65, label %38, !llvm.loop !445

65:                                               ; preds = %61, %38, %34
  call void @recalcData(ptr noundef nonnull %0) #20
  %66 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %67 = load ptr, ptr %66, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %67, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyCrease(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !446 {
  %3 = alloca float, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #21
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %9 = load float, ptr %8, align 4, !tbaa !59
  %10 = fcmp ogt float %9, 1.000000e+00
  %11 = select i1 %10, float 1.000000e+00, float %9
  store float %11, ptr %3, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %3) #20
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %13 = call zeroext i8 @applyNumInput(ptr noundef nonnull %12, ptr noundef nonnull %3) #20
  %14 = call zeroext i8 @hasNumInput(ptr noundef nonnull %12) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #21
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %18 = load ptr, ptr %17, align 8, !tbaa !121
  %19 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %12, ptr noundef nonnull %5, ptr noundef nonnull %19) #20
  %20 = load float, ptr %3, align 4, !tbaa !59
  %21 = fcmp ult float %20, 0.000000e+00
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %23 = select i1 %21, ptr @.str.122, ptr @.str.121
  %24 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull %23, ptr noundef nonnull %5, ptr noundef nonnull %22) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #21
  br label %34

25:                                               ; preds = %2
  %26 = load float, ptr %3, align 4, !tbaa !59
  %27 = fcmp ult float %26, 0.000000e+00
  %28 = fpext float %26 to double
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  br i1 %27, label %32, label %30

30:                                               ; preds = %25
  %31 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.123, double noundef %28, ptr noundef nonnull %29) #20
  br label %34

32:                                               ; preds = %25
  %33 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.124, double noundef %28, ptr noundef nonnull %29) #20
  br label %34

34:                                               ; preds = %30, %32, %16
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %36 = load i32, ptr %35, align 8, !tbaa !154
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %34, %64
  %39 = phi i32 [ %65, %64 ], [ 0, %34 ]
  %40 = phi ptr [ %66, %64 ], [ %7, %34 ]
  %41 = getelementptr inbounds %struct.TransData, ptr %40, i64 0, i32 16
  %42 = load i32, ptr %41, align 8, !tbaa !336
  %43 = and i32 %42, 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %38
  %46 = and i32 %42, 2048
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.TransData, ptr %40, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !364
  %51 = icmp eq ptr %50, null
  br i1 %51, label %64, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.TransData, ptr %40, i64 0, i32 6
  %54 = load float, ptr %53, align 8, !tbaa !363
  %55 = load float, ptr %3, align 4, !tbaa !59
  %56 = getelementptr inbounds %struct.TransData, ptr %40, i64 0, i32 2
  %57 = load float, ptr %56, align 8, !tbaa !339
  %58 = call float @llvm.fmuladd.f32(float %55, float %57, float %54)
  store float %58, ptr %50, align 4, !tbaa !59
  %59 = fcmp olt float %58, 0.000000e+00
  br i1 %59, label %62, label %60

60:                                               ; preds = %52
  %61 = fcmp ogt float %58, 1.000000e+00
  br i1 %61, label %62, label %64

62:                                               ; preds = %60, %52
  %63 = phi float [ 0.000000e+00, %52 ], [ 1.000000e+00, %60 ]
  store float %63, ptr %50, align 4, !tbaa !59
  br label %64

64:                                               ; preds = %62, %48, %60, %45
  %65 = add nuw nsw i32 %39, 1
  %66 = getelementptr inbounds %struct.TransData, ptr %40, i64 1
  %67 = icmp eq i32 %65, %36
  br i1 %67, label %68, label %38, !llvm.loop !447

68:                                               ; preds = %64, %38, %34
  call void @recalcData(ptr noundef nonnull %0) #20
  %69 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %70 = load ptr, ptr %69, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %70, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyBoneSize(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !448 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [256 x i8], align 16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #21
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !94
  %10 = and i32 %9, 128
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %14 = load i32, ptr %13, align 4, !tbaa !92
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 22
  %18 = load i32, ptr %17, align 8, !tbaa !68
  %19 = load i32, ptr %1, align 4, !tbaa !68
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 22, i64 1
  %21 = load i32, ptr %20, align 4, !tbaa !68
  %22 = getelementptr inbounds i32, ptr %1, i64 1
  %23 = load i32, ptr %22, align 4, !tbaa !68
  %24 = add i32 %18, %21
  %25 = add i32 %19, %23
  %26 = sub i32 %24, %25
  %27 = sitofp i32 %26 to float
  %28 = fdiv float %27, 1.000000e+02
  %29 = fsub float 1.000000e+00, %28
  br label %33

30:                                               ; preds = %12, %2
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %32 = load float, ptr %31, align 4, !tbaa !59
  br label %33

33:                                               ; preds = %30, %16
  %34 = phi float [ %29, %16 ], [ %32, %30 ]
  %35 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float %34, ptr %35, align 4, !tbaa !59
  %36 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float %34, ptr %36, align 4, !tbaa !59
  store float %34, ptr %3, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef nonnull %0, ptr noundef nonnull %3) #20
  %37 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %38 = call zeroext i8 @applyNumInput(ptr noundef nonnull %37, ptr noundef nonnull %3) #20
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  call void @constraintNumInput(ptr noundef nonnull %0, ptr noundef nonnull %3) #20
  br label %41

41:                                               ; preds = %40, %33
  call void @size_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %3) #20
  %42 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 10
  %43 = load ptr, ptr %42, align 8, !tbaa !356
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  call void %43(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %4) #20
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 36
  call void @copy_m3_m3(ptr noundef nonnull %47, ptr noundef nonnull %4) #20
  call fastcc void @headerBoneSize(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %5) #22
  %48 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %49 = load i32, ptr %48, align 8, !tbaa !154
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %46, %64
  %52 = phi i32 [ %65, %64 ], [ %49, %46 ]
  %53 = phi i32 [ %66, %64 ], [ 0, %46 ]
  %54 = phi ptr [ %67, %64 ], [ %7, %46 ]
  %55 = getelementptr inbounds %struct.TransData, ptr %54, i64 0, i32 16
  %56 = load i32, ptr %55, align 8, !tbaa !336
  %57 = and i32 %56, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %51
  %60 = and i32 %56, 2048
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  call fastcc void @ElementBoneSize(ptr noundef nonnull %0, ptr noundef nonnull %54, ptr noundef nonnull %4) #22
  %63 = load i32, ptr %48, align 8, !tbaa !154
  br label %64

64:                                               ; preds = %59, %62
  %65 = phi i32 [ %52, %59 ], [ %63, %62 ]
  %66 = add nuw nsw i32 %53, 1
  %67 = getelementptr inbounds %struct.TransData, ptr %54, i64 1
  %68 = icmp slt i32 %66, %65
  br i1 %68, label %51, label %69, !llvm.loop !449

69:                                               ; preds = %64, %51, %46
  call void @recalcData(ptr noundef nonnull %0) #20
  %70 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %71 = load ptr, ptr %70, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %71, ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @headerBoneSize(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !450 {
  %4 = alloca [192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #21
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %6 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %5) #20
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %11) #20
  br label %26

12:                                               ; preds = %3
  %13 = load float, ptr %1, align 4, !tbaa !59
  %14 = fpext float %13 to double
  %15 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.83, double noundef %14) #20
  %16 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 64
  %17 = getelementptr inbounds float, ptr %1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !59
  %19 = fpext float %18 to double
  %20 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %16, i64 noundef 64, ptr noundef nonnull @.str.83, double noundef %19) #20
  %21 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 128
  %22 = getelementptr inbounds float, ptr %1, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !59
  %24 = fpext float %23 to double
  %25 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %21, i64 noundef 64, ptr noundef nonnull @.str.83, double noundef %24) #20
  br label %26

26:                                               ; preds = %12, %8
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %28 = load i32, ptr %27, align 4, !tbaa !92
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %26
  %32 = load i16, ptr %5, align 8, !tbaa !119
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %36 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %37 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.125, ptr noundef nonnull %4, ptr noundef nonnull %35, ptr noundef nonnull %36) #20
  br label %50

38:                                               ; preds = %31
  %39 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 64
  %40 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 128
  %41 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %42 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %43 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.126, ptr noundef nonnull %4, ptr noundef nonnull %39, ptr noundef nonnull %40, ptr noundef nonnull %41, ptr noundef nonnull %42) #20
  br label %50

44:                                               ; preds = %26
  %45 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 64
  %46 = getelementptr inbounds [192 x i8], ptr %4, i64 0, i64 128
  %47 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %48 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %49 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.127, ptr noundef nonnull %4, ptr noundef nonnull %45, ptr noundef nonnull %46, ptr noundef nonnull %47, ptr noundef nonnull %48) #20
  br label %50

50:                                               ; preds = %34, %38, %44
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ElementBoneSize(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !451 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #21
  %7 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 8
  call void @mul_m3_m3m3(ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %7) #20
  %8 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 9
  call void @mul_m3_m3m3(ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef nonnull %5) #20
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !356
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  call void %10(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4) #20
  br label %13

13:                                               ; preds = %12, %3
  %14 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4
  %15 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 4, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !59
  call void @size_to_mat3(ptr noundef nonnull %6, ptr noundef nonnull %14) #20
  call void @mul_m3_m3m3(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %6) #20
  %17 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !338
  call void @mat3_to_size(ptr noundef %18, ptr noundef nonnull %4) #20
  %19 = load ptr, ptr %17, align 8, !tbaa !338
  %20 = getelementptr inbounds float, ptr %19, i64 1
  store float %16, ptr %20, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyBoneEnvelope(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !452 {
  %3 = alloca float, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #21
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %9 = load float, ptr %8, align 4, !tbaa !59
  store float %9, ptr %3, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %3) #20
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %11 = call zeroext i8 @applyNumInput(ptr noundef nonnull %10, ptr noundef nonnull %3) #20
  %12 = call zeroext i8 @hasNumInput(ptr noundef nonnull %10) #20
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #21
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %16 = load ptr, ptr %15, align 8, !tbaa !121
  %17 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef nonnull %17) #20
  %18 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.128, ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #21
  br label %23

19:                                               ; preds = %2
  %20 = load float, ptr %3, align 4, !tbaa !59
  %21 = fpext float %20 to double
  %22 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.129, double noundef %21) #20
  br label %23

23:                                               ; preds = %19, %14
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !154
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %23, %48
  %28 = phi i32 [ %49, %48 ], [ 0, %23 ]
  %29 = phi ptr [ %50, %48 ], [ %7, %23 ]
  %30 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 16
  %31 = load i32, ptr %30, align 8, !tbaa !336
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %27
  %35 = and i32 %31, 2048
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !364
  %40 = icmp eq ptr %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.TransData, ptr %29, i64 0, i32 6
  %43 = load float, ptr %42, align 8, !tbaa !363
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
  br i1 %51, label %52, label %27, !llvm.loop !453

52:                                               ; preds = %48, %27, %23
  call void @recalcData(ptr noundef nonnull %0) #20
  %53 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %54 = load ptr, ptr %53, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %54, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !454 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !455
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %20 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
    i8 5, label %18
    i8 6, label %19
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !456
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !287
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !457
  br label %21

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !456
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !287
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !460
  br label %21

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !456
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !287
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !461
  br label %21

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !456
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !287
  br label %21

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !456
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !287
  br label %21

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !456
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !287
  br label %21

20:                                               ; preds = %4
  unreachable

21:                                               ; preds = %19, %18, %17, %14, %11, %8
  %22 = phi ptr [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %23 = phi ptr [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %22, ptr %0, align 8, !tbaa !335
  tail call void %23(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyEdgeSlide(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !462 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca float, align 4
  %5 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %7 = load ptr, ptr %6, align 8, !tbaa !141
  %8 = getelementptr inbounds %struct.EdgeSlideData, ptr %7, i64 0, i32 10
  %9 = load i8, ptr %8, align 1, !tbaa !257
  %10 = getelementptr inbounds %struct.EdgeSlideData, ptr %7, i64 0, i32 9
  %11 = load i8, ptr %10, align 4, !tbaa !250
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %13 = load float, ptr %12, align 4, !tbaa !59
  store float %13, ptr %4, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %4) #20
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
  %22 = call zeroext i8 @applyNumInput(ptr noundef nonnull %21, ptr noundef nonnull %4) #20
  %23 = call zeroext i8 @hasNumInput(ptr noundef nonnull %21) #20
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #21
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %27 = load ptr, ptr %26, align 8, !tbaa !121
  %28 = getelementptr inbounds %struct.Scene, ptr %27, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %21, ptr noundef nonnull %5, ptr noundef nonnull %28) #20
  %29 = icmp eq i8 %11, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = call ptr @WM_bool_as_string(i8 noundef zeroext 0) #20
  %32 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.130, ptr noundef nonnull %5, ptr noundef %31) #20
  br label %37

33:                                               ; preds = %25
  %34 = call ptr @WM_bool_as_string(i8 noundef zeroext 1) #20
  %35 = call ptr @WM_bool_as_string(i8 noundef zeroext %9) #20
  %36 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.131, ptr noundef nonnull %5, ptr noundef %34, ptr noundef %35) #20
  br label %37

37:                                               ; preds = %33, %30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #21
  br label %49

38:                                               ; preds = %20
  %39 = icmp eq i8 %11, 0
  %40 = load float, ptr %4, align 4, !tbaa !59
  %41 = fpext float %40 to double
  br i1 %39, label %45, label %42

42:                                               ; preds = %38
  %43 = call ptr @WM_bool_as_string(i8 noundef zeroext 0) #20
  %44 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.132, double noundef %41, ptr noundef %43) #20
  br label %49

45:                                               ; preds = %38
  %46 = call ptr @WM_bool_as_string(i8 noundef zeroext 1) #20
  %47 = call ptr @WM_bool_as_string(i8 noundef zeroext %9) #20
  %48 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.133, double noundef %41, ptr noundef %46, ptr noundef %47) #20
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
  %57 = phi float [ %50, %53 ], [ 1.000000e+00, %55 ], [ -1.000000e+00, %52 ]
  store float %57, ptr %12, align 4, !tbaa !59
  call fastcc void @doEdgeSlide(ptr noundef nonnull %0, float noundef %57) #22
  call void @recalcData(ptr noundef nonnull %0) #20
  %58 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %59 = load ptr, ptr %58, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %59, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @handleEventEdgeSlide(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #15 !PGOFuncName !463 {
  %3 = load i32, ptr %0, align 8, !tbaa !82
  %4 = icmp eq i32 %3, 28
  br i1 %4, label %5, label %52

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %7 = load ptr, ptr %6, align 8, !tbaa !141
  %8 = icmp eq ptr %7, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !89
  switch i16 %11, label %52 [
    i16 101, label %12
    i16 102, label %21
    i16 20514, label %34
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %14 = load i16, ptr %13, align 2, !tbaa !87
  %15 = icmp eq i16 %14, 1
  br i1 %15, label %16, label %52

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.EdgeSlideData, ptr %7, i64 0, i32 9
  %18 = load i8, ptr %17, align 4, !tbaa !250
  %19 = icmp eq i8 %18, 0
  %20 = zext i1 %19 to i8
  store i8 %20, ptr %17, align 4, !tbaa !250
  br label %52

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %23 = load i16, ptr %22, align 2, !tbaa !87
  %24 = icmp eq i16 %23, 1
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.EdgeSlideData, ptr %7, i64 0, i32 9
  %27 = load i8, ptr %26, align 4, !tbaa !250
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.EdgeSlideData, ptr %7, i64 0, i32 10
  %31 = load i8, ptr %30, align 1, !tbaa !257
  %32 = icmp eq i8 %31, 0
  %33 = zext i1 %32 to i8
  store i8 %33, ptr %30, align 1, !tbaa !257
  br label %52

34:                                               ; preds = %9
  %35 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %36 = load i16, ptr %35, align 2, !tbaa !87
  switch i16 %36, label %52 [
    i16 25, label %37
    i16 24, label %45
  ]

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.EdgeSlideData, ptr %7, i64 0, i32 11
  %39 = load i32, ptr %38, align 8, !tbaa !255
  %40 = add nsw i32 %39, -1
  %41 = getelementptr inbounds %struct.EdgeSlideData, ptr %7, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !251
  %43 = add nsw i32 %40, %42
  %44 = srem i32 %43, %42
  store i32 %44, ptr %38, align 8, !tbaa !255
  br label %52

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.EdgeSlideData, ptr %7, i64 0, i32 11
  %47 = load i32, ptr %46, align 8, !tbaa !255
  %48 = add nsw i32 %47, 1
  %49 = getelementptr inbounds %struct.EdgeSlideData, ptr %7, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !251
  %51 = srem i32 %48, %50
  store i32 %51, ptr %46, align 8, !tbaa !255
  br label %52

52:                                               ; preds = %5, %9, %37, %45, %34, %21, %12, %2, %16, %29, %25
  %53 = phi i32 [ 1, %25 ], [ 1, %29 ], [ 1, %16 ], [ 0, %2 ], [ 0, %12 ], [ 0, %21 ], [ 0, %34 ], [ 0, %45 ], [ 0, %37 ], [ 0, %9 ], [ 0, %5 ]
  ret i32 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @createEdgeSlideVerts(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !464 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [2 x float], align 8
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [3 x float], align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca %struct.BMIter, align 8
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca %struct.BMIter, align 8
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  %17 = tail call ptr @BKE_editmesh_from_object(ptr noundef %16) #20
  %18 = load ptr, ptr %17, align 8, !tbaa !278
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #21
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !152
  %20 = tail call ptr %19(i64 noundef 80, ptr noundef nonnull @.str.134) #20
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61, i64 1
  %25 = load <2 x i32>, ptr %23, align 8, !tbaa !68
  %26 = sitofp <2 x i32> %25 to <2 x float>
  store <2 x float> %26, ptr %4, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %28 = load i8, ptr %27, align 8, !tbaa !34
  %29 = icmp eq i8 %28, 1
  br i1 %29, label %30, label %43

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %32 = load ptr, ptr %31, align 8, !tbaa !62
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ScrArea, ptr %32, i64 0, i32 19
  %36 = load ptr, ptr %35, align 8, !tbaa !63
  br label %37

37:                                               ; preds = %30, %34
  %38 = phi ptr [ %36, %34 ], [ null, %30 ]
  %39 = icmp eq ptr %22, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 30
  %42 = load ptr, ptr %41, align 8, !tbaa !54
  br label %43

43:                                               ; preds = %40, %37, %1
  %44 = phi ptr [ null, %1 ], [ %42, %40 ], [ null, %37 ]
  %45 = phi ptr [ null, %1 ], [ %38, %40 ], [ %38, %37 ]
  %46 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 57
  %47 = load ptr, ptr %46, align 8, !tbaa !260
  %48 = getelementptr inbounds %struct.ToolSettings, ptr %47, i64 0, i32 10
  %49 = load i8, ptr %48, align 1, !tbaa !261
  %50 = and i8 %49, 4
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.BMesh, ptr %18, i64 0, i32 29
  %54 = load i32, ptr %53, align 4, !tbaa !465
  %55 = icmp slt i32 %54, 2
  br i1 %55, label %57, label %56

56:                                               ; preds = %52, %43
  br label %57

57:                                               ; preds = %52, %56
  %58 = phi i8 [ 0, %56 ], [ 1, %52 ]
  %59 = getelementptr inbounds %struct.EdgeSlideData, ptr %20, i64 0, i32 6
  store i8 %58, ptr %59, align 8, !tbaa !263
  %60 = getelementptr inbounds %struct.EdgeSlideData, ptr %20, i64 0, i32 9
  store i8 1, ptr %60, align 4, !tbaa !250
  %61 = getelementptr inbounds %struct.EdgeSlideData, ptr %20, i64 0, i32 11
  store i32 0, ptr %61, align 8, !tbaa !255
  %62 = getelementptr inbounds %struct.EdgeSlideData, ptr %20, i64 0, i32 10
  store i8 0, ptr %62, align 1, !tbaa !257
  %63 = icmp eq ptr %44, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  call void @unit_m4(ptr noundef nonnull %3) #20
  br label %67

65:                                               ; preds = %57
  %66 = load ptr, ptr %15, align 8, !tbaa !95
  call void @ED_view3d_ob_project_mat_get(ptr noundef nonnull %44, ptr noundef %66, ptr noundef nonnull %3) #20
  br label %67

67:                                               ; preds = %65, %64
  %68 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %18, i8 noundef zeroext 1, ptr noundef null) #22
  %69 = icmp eq ptr %68, null
  br i1 %69, label %100, label %70

70:                                               ; preds = %67, %97
  %71 = phi ptr [ %98, %97 ], [ %68, %67 ]
  %72 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %71, i8 noundef zeroext 1) #22, !range !269
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %97, label %74

74:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #21
  %75 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %71) #22
  %76 = icmp eq ptr %75, null
  br i1 %76, label %94, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.BMVert, ptr %71, i64 0, i32 4
  br label %79

79:                                               ; preds = %77, %86
  %80 = phi ptr [ %75, %77 ], [ %88, %86 ]
  %81 = phi i32 [ 0, %77 ], [ %87, %86 ]
  %82 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %80, i8 noundef zeroext 1) #22, !range !269
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %79
  store ptr %80, ptr %78, align 8, !tbaa !466
  %85 = add nsw i32 %81, 1
  br label %86

86:                                               ; preds = %79, %84
  %87 = phi i32 [ %85, %84 ], [ %81, %79 ]
  %88 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %8) #22
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %79, !llvm.loop !468

90:                                               ; preds = %86
  %91 = icmp ne i32 %87, 0
  %92 = icmp slt i32 %87, 3
  %93 = and i1 %91, %92
  br i1 %93, label %96, label %94

94:                                               ; preds = %74, %90
  %95 = load ptr, ptr @MEM_freeN, align 8, !tbaa !152
  call void %95(ptr noundef %20) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #21
  br label %623

96:                                               ; preds = %90
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #21
  br label %97

97:                                               ; preds = %96, %70
  %98 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #22
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %70, !llvm.loop !469

100:                                              ; preds = %97, %67
  %101 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %18, i8 noundef zeroext 2, ptr noundef null) #22
  %102 = icmp eq ptr %101, null
  br i1 %102, label %118, label %103

103:                                              ; preds = %100, %115
  %104 = phi ptr [ %116, %115 ], [ %101, %100 ]
  %105 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %104, i8 noundef zeroext 1) #22, !range !269
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %103
  %108 = call fastcc zeroext i8 @BM_edge_is_manifold(ptr noundef nonnull %104) #22, !range !144
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef nonnull %104) #22, !range !144
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load ptr, ptr @MEM_freeN, align 8, !tbaa !152
  call void %114(ptr noundef %20) #20
  br label %623

115:                                              ; preds = %103, %110, %107
  %116 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #22
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %103, !llvm.loop !470

118:                                              ; preds = %115, %100
  %119 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !152
  %120 = load i32, ptr %18, align 8, !tbaa !471
  %121 = sext i32 %120 to i64
  %122 = shl nsw i64 %121, 2
  %123 = call ptr %119(i64 noundef %122, ptr noundef nonnull @__func__.createEdgeSlideVerts) #20
  %124 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef nonnull %18, i8 noundef zeroext 1, ptr noundef null) #22
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct.BMesh, ptr %18, i64 0, i32 7
  %128 = load i8, ptr %127, align 4, !tbaa !472
  %129 = and i8 %128, -2
  store i8 %129, ptr %127, align 4, !tbaa !472
  br label %152

130:                                              ; preds = %118, %139
  %131 = phi i64 [ %145, %139 ], [ 0, %118 ]
  %132 = phi ptr [ %144, %139 ], [ %124, %118 ]
  %133 = phi i32 [ %141, %139 ], [ 0, %118 ]
  %134 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %132, i8 noundef zeroext 1) #22, !range !269
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %130
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %132) #22
  %137 = add nsw i32 %133, 1
  br label %139

138:                                              ; preds = %130
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %132) #22
  br label %139

139:                                              ; preds = %138, %136
  %140 = phi i32 [ -1, %138 ], [ %133, %136 ]
  %141 = phi i32 [ %133, %138 ], [ %137, %136 ]
  %142 = getelementptr inbounds i32, ptr %123, i64 %131
  store i32 %140, ptr %142, align 4
  %143 = trunc i64 %131 to i32
  call fastcc void @_bm_elem_index_set(ptr noundef nonnull %132, i32 noundef %143) #22
  %144 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #22
  %145 = add nuw i64 %131, 1
  %146 = icmp eq ptr %144, null
  br i1 %146, label %147, label %130, !llvm.loop !473

147:                                              ; preds = %139
  %148 = getelementptr inbounds %struct.BMesh, ptr %18, i64 0, i32 7
  %149 = load i8, ptr %148, align 4, !tbaa !472
  %150 = and i8 %149, -2
  store i8 %150, ptr %148, align 4, !tbaa !472
  %151 = icmp eq i32 %141, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %126, %147
  %153 = load ptr, ptr @MEM_freeN, align 8, !tbaa !152
  call void %153(ptr noundef %20) #20
  %154 = load ptr, ptr @MEM_freeN, align 8, !tbaa !152
  call void %154(ptr noundef %123) #20
  br label %623

155:                                              ; preds = %147
  %156 = load ptr, ptr @MEM_callocN, align 8, !tbaa !152
  %157 = sext i32 %141 to i64
  %158 = mul nsw i64 %157, 72
  %159 = call ptr %156(i64 noundef %158, ptr noundef nonnull @.str.135) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #21
  %160 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef nonnull %18, i8 noundef zeroext 1, ptr noundef null) #22
  %161 = icmp eq ptr %160, null
  br i1 %161, label %417, label %162

162:                                              ; preds = %155, %413
  %163 = phi ptr [ %415, %413 ], [ %160, %155 ]
  %164 = phi i32 [ %414, %413 ], [ 0, %155 ]
  br label %165

165:                                              ; preds = %162, %169
  %166 = phi ptr [ %163, %162 ], [ %170, %169 ]
  %167 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %166, i8 noundef zeroext 16) #22, !range !269
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #22
  %171 = icmp eq ptr %170, null
  br i1 %171, label %417, label %165, !llvm.loop !474

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.BMVert, ptr %166, i64 0, i32 4
  %174 = load ptr, ptr %173, align 8, !tbaa !466
  %175 = icmp eq ptr %174, null
  br i1 %175, label %413, label %176

176:                                              ; preds = %172, %188
  %177 = phi ptr [ %185, %188 ], [ %166, %172 ]
  %178 = phi ptr [ %179, %188 ], [ %174, %172 ]
  %179 = call fastcc ptr @get_other_edge(ptr noundef %177, ptr noundef nonnull %178) #22
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.BMVert, ptr %177, i64 0, i32 4
  %183 = load ptr, ptr %182, align 8, !tbaa !466
  br label %191

184:                                              ; preds = %176
  %185 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %179, ptr noundef %177) #22
  %186 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %185, i8 noundef zeroext 16) #22, !range !269
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %184
  %189 = load ptr, ptr %173, align 8, !tbaa !466
  %190 = icmp eq ptr %179, %189
  br i1 %190, label %191, label %176, !llvm.loop !475

191:                                              ; preds = %184, %188, %181
  %192 = phi ptr [ %177, %181 ], [ %177, %184 ], [ %185, %188 ]
  %193 = phi ptr [ %183, %181 ], [ %179, %188 ], [ %179, %184 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef %192) #22
  %194 = getelementptr inbounds %struct.BMEdge, ptr %193, i64 0, i32 4
  %195 = load ptr, ptr %194, align 8, !tbaa !275
  %196 = getelementptr inbounds %struct.BMLoop, ptr %195, i64 0, i32 4
  %197 = load ptr, ptr %196, align 8, !tbaa !271
  %198 = call fastcc ptr @get_other_edge(ptr noundef %192, ptr noundef %193) #22
  %199 = icmp eq ptr %198, null
  br i1 %199, label %202, label %200

200:                                              ; preds = %191
  %201 = call fastcc ptr @get_next_loop(ptr noundef %192, ptr noundef nonnull %195, ptr noundef nonnull %193, ptr noundef nonnull %198, ptr noundef nonnull %9) #22
  br label %219

202:                                              ; preds = %191
  %203 = call ptr @BM_loop_other_edge_loop(ptr noundef nonnull %195, ptr noundef %192) #20
  %204 = getelementptr inbounds %struct.BMLoop, ptr %203, i64 0, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !268
  %206 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %205) #22, !range !144
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %202
  %209 = call i32 @BM_vert_edge_count_nonwire(ptr noundef %192) #20
  %210 = icmp eq i32 %209, 2
  %211 = load ptr, ptr %204, align 8, !tbaa !268
  br i1 %210, label %212, label %214

212:                                              ; preds = %208
  %213 = call fastcc ptr @get_next_loop(ptr noundef %192, ptr noundef nonnull %195, ptr noundef nonnull %193, ptr noundef %211, ptr noundef nonnull %9) #22
  br label %219

214:                                              ; preds = %208, %202
  %215 = phi ptr [ %211, %208 ], [ %205, %202 ]
  %216 = call fastcc ptr @BM_edge_other_vert(ptr noundef %215, ptr noundef %192) #22
  %217 = getelementptr inbounds %struct.BMVert, ptr %216, i64 0, i32 2
  %218 = getelementptr inbounds %struct.BMVert, ptr %192, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %217, ptr noundef nonnull %218) #22
  br label %219

219:                                              ; preds = %212, %214, %200
  %220 = icmp eq ptr %197, %195
  br i1 %220, label %243, label %221

221:                                              ; preds = %219
  %222 = call fastcc ptr @get_other_edge(ptr noundef %192, ptr noundef nonnull %193) #22
  %223 = icmp eq ptr %222, null
  br i1 %223, label %226, label %224

224:                                              ; preds = %221
  %225 = call fastcc ptr @get_next_loop(ptr noundef %192, ptr noundef %197, ptr noundef nonnull %193, ptr noundef nonnull %222, ptr noundef nonnull %10) #22
  br label %243

226:                                              ; preds = %221
  %227 = call ptr @BM_loop_other_edge_loop(ptr noundef %197, ptr noundef %192) #20
  %228 = getelementptr inbounds %struct.BMLoop, ptr %227, i64 0, i32 2
  %229 = load ptr, ptr %228, align 8, !tbaa !268
  %230 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %229) #22, !range !144
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %226
  %233 = call i32 @BM_vert_edge_count_nonwire(ptr noundef %192) #20
  %234 = icmp eq i32 %233, 2
  %235 = load ptr, ptr %228, align 8, !tbaa !268
  br i1 %234, label %236, label %238

236:                                              ; preds = %232
  %237 = call fastcc ptr @get_next_loop(ptr noundef %192, ptr noundef %197, ptr noundef nonnull %193, ptr noundef %235, ptr noundef nonnull %10) #22
  br label %243

238:                                              ; preds = %232, %226
  %239 = phi ptr [ %235, %232 ], [ %229, %226 ]
  %240 = call fastcc ptr @BM_edge_other_vert(ptr noundef %239, ptr noundef %192) #22
  %241 = getelementptr inbounds %struct.BMVert, ptr %240, i64 0, i32 2
  %242 = getelementptr inbounds %struct.BMVert, ptr %192, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %241, ptr noundef nonnull %242) #22
  br label %243

243:                                              ; preds = %219, %224, %238, %236
  %244 = phi ptr [ %197, %236 ], [ %197, %238 ], [ %197, %224 ], [ null, %219 ]
  %245 = getelementptr inbounds %struct.BMVert, ptr %192, i64 0, i32 4
  br label %246

246:                                              ; preds = %407, %243
  %247 = phi ptr [ %244, %243 ], [ %403, %407 ]
  %248 = phi ptr [ null, %243 ], [ %250, %407 ]
  %249 = phi ptr [ null, %243 ], [ %247, %407 ]
  %250 = phi ptr [ %195, %243 ], [ %404, %407 ]
  %251 = phi ptr [ %192, %243 ], [ %286, %407 ]
  %252 = phi ptr [ %193, %243 ], [ %287, %407 ]
  %253 = call fastcc i32 @_bm_elem_index_get(ptr noundef %251) #22
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, ptr %123, i64 %254
  %256 = load i32, ptr %255, align 4, !tbaa !68
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %159, i64 %257, i32 2
  store ptr %251, ptr %258, align 8, !tbaa !252
  %259 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %159, i64 %257, i32 3
  %260 = getelementptr inbounds %struct.BMVert, ptr %251, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %259, ptr noundef nonnull %260) #22
  %261 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %159, i64 %257, i32 7
  store i32 %164, ptr %261, align 8, !tbaa !476
  %262 = icmp ne ptr %250, null
  %263 = icmp ne ptr %248, null
  %264 = or i1 %263, %262
  br i1 %264, label %265, label %273

265:                                              ; preds = %246
  %266 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %159, i64 %257
  %267 = select i1 %262, ptr %250, ptr %248
  %268 = call ptr @BM_loop_other_edge_loop(ptr noundef %267, ptr noundef %251) #20
  %269 = getelementptr inbounds %struct.BMLoop, ptr %268, i64 0, i32 2
  %270 = load ptr, ptr %269, align 8, !tbaa !268
  %271 = call fastcc ptr @BM_edge_other_vert(ptr noundef %270, ptr noundef %251) #22
  store ptr %271, ptr %266, align 8, !tbaa !273
  %272 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %159, i64 %257, i32 5
  call fastcc void @copy_v3_v3(ptr noundef nonnull %272, ptr noundef nonnull %9) #22
  br label %273

273:                                              ; preds = %246, %265
  %274 = icmp ne ptr %247, null
  %275 = icmp ne ptr %249, null
  %276 = or i1 %274, %275
  br i1 %276, label %277, label %285

277:                                              ; preds = %273
  %278 = select i1 %274, ptr %247, ptr %249
  %279 = call ptr @BM_loop_other_edge_loop(ptr noundef %278, ptr noundef %251) #20
  %280 = getelementptr inbounds %struct.BMLoop, ptr %279, i64 0, i32 2
  %281 = load ptr, ptr %280, align 8, !tbaa !268
  %282 = call fastcc ptr @BM_edge_other_vert(ptr noundef %281, ptr noundef %251) #22
  %283 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %159, i64 %257, i32 1
  store ptr %282, ptr %283, align 8, !tbaa !272
  %284 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %159, i64 %257, i32 6
  call fastcc void @copy_v3_v3(ptr noundef nonnull %284, ptr noundef nonnull %10) #22
  br label %285

285:                                              ; preds = %273, %277
  %286 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %252, ptr noundef %251) #22
  %287 = call fastcc ptr @get_other_edge(ptr noundef %286, ptr noundef nonnull %252) #22
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %340

289:                                              ; preds = %285
  %290 = call fastcc i32 @_bm_elem_index_get(ptr noundef %286) #22
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, ptr %123, i64 %291
  %293 = load i32, ptr %292, align 4, !tbaa !68
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %159, i64 %294, i32 2
  store ptr %286, ptr %295, align 8, !tbaa !252
  %296 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %159, i64 %294, i32 3
  %297 = getelementptr inbounds %struct.BMVert, ptr %286, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %296, ptr noundef nonnull %297) #22
  %298 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %159, i64 %294, i32 7
  store i32 %164, ptr %298, align 8, !tbaa !476
  br i1 %262, label %299, label %319

299:                                              ; preds = %289
  %300 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %159, i64 %294
  %301 = call ptr @BM_loop_other_edge_loop(ptr noundef nonnull %250, ptr noundef %286) #20
  %302 = getelementptr inbounds %struct.BMLoop, ptr %301, i64 0, i32 2
  %303 = load ptr, ptr %302, align 8, !tbaa !268
  %304 = call fastcc ptr @BM_edge_other_vert(ptr noundef %303, ptr noundef %286) #22
  store ptr %304, ptr %300, align 8, !tbaa !273
  %305 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %303) #22, !range !144
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %307, label %314

307:                                              ; preds = %299
  %308 = call i32 @BM_vert_edge_count_nonwire(ptr noundef %286) #20
  %309 = icmp eq i32 %308, 2
  %310 = load ptr, ptr %302, align 8, !tbaa !268
  br i1 %309, label %311, label %314

311:                                              ; preds = %307
  %312 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %159, i64 %294, i32 5
  %313 = call fastcc ptr @get_next_loop(ptr noundef %286, ptr noundef nonnull %250, ptr noundef nonnull %252, ptr noundef %310, ptr noundef nonnull %312) #22
  br label %319

314:                                              ; preds = %307, %299
  %315 = phi ptr [ %310, %307 ], [ %303, %299 ]
  %316 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %159, i64 %294, i32 5
  %317 = call fastcc ptr @BM_edge_other_vert(ptr noundef %315, ptr noundef %286) #22
  %318 = getelementptr inbounds %struct.BMVert, ptr %317, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %316, ptr noundef nonnull %318, ptr noundef nonnull %297) #22
  br label %319

319:                                              ; preds = %311, %314, %289
  br i1 %274, label %320, label %401

320:                                              ; preds = %319
  %321 = call ptr @BM_loop_other_edge_loop(ptr noundef nonnull %247, ptr noundef %286) #20
  %322 = getelementptr inbounds %struct.BMLoop, ptr %321, i64 0, i32 2
  %323 = load ptr, ptr %322, align 8, !tbaa !268
  %324 = call fastcc ptr @BM_edge_other_vert(ptr noundef %323, ptr noundef %286) #22
  %325 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %159, i64 %294, i32 1
  store ptr %324, ptr %325, align 8, !tbaa !272
  %326 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef %323) #22, !range !144
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %328, label %335

328:                                              ; preds = %320
  %329 = call i32 @BM_vert_edge_count_nonwire(ptr noundef %286) #20
  %330 = icmp eq i32 %329, 2
  %331 = load ptr, ptr %322, align 8, !tbaa !268
  br i1 %330, label %332, label %335

332:                                              ; preds = %328
  %333 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %159, i64 %294, i32 6
  %334 = call fastcc ptr @get_next_loop(ptr noundef %286, ptr noundef nonnull %247, ptr noundef nonnull %252, ptr noundef %331, ptr noundef nonnull %333) #22
  br label %401

335:                                              ; preds = %328, %320
  %336 = phi ptr [ %331, %328 ], [ %323, %320 ]
  %337 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %159, i64 %294, i32 6
  %338 = call fastcc ptr @BM_edge_other_vert(ptr noundef %336, ptr noundef %286) #22
  %339 = getelementptr inbounds %struct.BMVert, ptr %338, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %337, ptr noundef nonnull %339, ptr noundef nonnull %297) #22
  br label %401

340:                                              ; preds = %285
  br i1 %262, label %341, label %343

341:                                              ; preds = %340
  %342 = call fastcc ptr @get_next_loop(ptr noundef %286, ptr noundef nonnull %250, ptr noundef nonnull %252, ptr noundef nonnull %287, ptr noundef nonnull %9) #22
  br label %344

343:                                              ; preds = %340
  call fastcc void @zero_v3(ptr noundef nonnull %9) #22
  br label %344

344:                                              ; preds = %343, %341
  %345 = phi ptr [ %342, %341 ], [ null, %343 ]
  %346 = icmp ne ptr %345, null
  br i1 %274, label %348, label %347

347:                                              ; preds = %344
  call fastcc void @zero_v3(ptr noundef nonnull %10) #22
  br label %352

348:                                              ; preds = %344
  %349 = call fastcc ptr @get_next_loop(ptr noundef %286, ptr noundef nonnull %247, ptr noundef nonnull %252, ptr noundef nonnull %287, ptr noundef nonnull %10) #22
  %350 = icmp ne ptr %349, null
  %351 = select i1 %346, i1 %350, i1 false
  br i1 %351, label %402, label %352

352:                                              ; preds = %347, %348
  %353 = phi i1 [ false, %347 ], [ %350, %348 ]
  %354 = phi ptr [ null, %347 ], [ %349, %348 ]
  %355 = select i1 %346, i1 true, i1 %353
  br i1 %355, label %356, label %371

356:                                              ; preds = %352
  %357 = icmp eq ptr %345, null
  %358 = select i1 %357, i1 %353, i1 false
  br i1 %358, label %359, label %363

359:                                              ; preds = %356
  %360 = getelementptr inbounds %struct.BMLoop, ptr %354, i64 0, i32 4
  %361 = load ptr, ptr %360, align 8, !tbaa !271
  %362 = icmp eq ptr %361, %354
  br i1 %362, label %394, label %387

363:                                              ; preds = %356
  %364 = icmp eq ptr %354, null
  %365 = and i1 %346, %364
  br i1 %365, label %366, label %387

366:                                              ; preds = %363
  %367 = getelementptr inbounds %struct.BMLoop, ptr %345, i64 0, i32 4
  %368 = load ptr, ptr %367, align 8, !tbaa !271
  %369 = icmp eq ptr %368, %345
  %370 = select i1 %369, ptr null, ptr %368
  br label %387

371:                                              ; preds = %352
  %372 = getelementptr inbounds %struct.BMEdge, ptr %287, i64 0, i32 4
  %373 = load ptr, ptr %372, align 8, !tbaa !275
  %374 = icmp eq ptr %373, null
  br i1 %374, label %402, label %375

375:                                              ; preds = %371
  br i1 %262, label %376, label %381

376:                                              ; preds = %375
  %377 = getelementptr inbounds %struct.BMLoop, ptr %373, i64 0, i32 4
  %378 = load ptr, ptr %377, align 8, !tbaa !271
  %379 = icmp eq ptr %378, %373
  %380 = select i1 %379, ptr null, ptr %378
  br label %394

381:                                              ; preds = %375
  br i1 %274, label %382, label %402

382:                                              ; preds = %381
  %383 = getelementptr inbounds %struct.BMLoop, ptr %373, i64 0, i32 4
  %384 = load ptr, ptr %383, align 8, !tbaa !271
  %385 = icmp eq ptr %384, %373
  %386 = select i1 %385, ptr null, ptr %384
  br label %387

387:                                              ; preds = %366, %359, %382, %363
  %388 = phi ptr [ %354, %363 ], [ %373, %382 ], [ %354, %359 ], [ %370, %366 ]
  %389 = phi ptr [ %345, %363 ], [ %386, %382 ], [ %361, %359 ], [ %345, %366 ]
  %390 = icmp eq ptr %389, null
  %391 = select i1 %262, i1 true, i1 %390
  br i1 %391, label %394, label %392

392:                                              ; preds = %387
  %393 = call fastcc ptr @get_next_loop(ptr noundef %286, ptr noundef nonnull %389, ptr noundef nonnull %287, ptr noundef nonnull %252, ptr noundef nonnull %9) #22
  br label %394

394:                                              ; preds = %359, %376, %392, %387
  %395 = phi ptr [ %389, %392 ], [ %389, %387 ], [ %373, %376 ], [ null, %359 ]
  %396 = phi ptr [ %388, %392 ], [ %388, %387 ], [ %380, %376 ], [ %354, %359 ]
  %397 = icmp eq ptr %396, null
  %398 = select i1 %274, i1 true, i1 %397
  br i1 %398, label %402, label %399

399:                                              ; preds = %394
  %400 = call fastcc ptr @get_next_loop(ptr noundef %286, ptr noundef nonnull %396, ptr noundef nonnull %287, ptr noundef nonnull %252, ptr noundef nonnull %10) #22
  br label %402

401:                                              ; preds = %319, %335, %332
  call fastcc void @_bm_elem_flag_disable(ptr noundef %286) #22
  call fastcc void @_bm_elem_flag_disable(ptr noundef %251) #22
  br label %411

402:                                              ; preds = %381, %371, %348, %399, %394
  %403 = phi ptr [ %349, %348 ], [ %396, %399 ], [ %396, %394 ], [ null, %371 ], [ null, %381 ]
  %404 = phi ptr [ %345, %348 ], [ %395, %399 ], [ %395, %394 ], [ null, %371 ], [ null, %381 ]
  call fastcc void @_bm_elem_flag_disable(ptr noundef %286) #22
  call fastcc void @_bm_elem_flag_disable(ptr noundef %251) #22
  %405 = load ptr, ptr %245, align 8, !tbaa !466
  %406 = icmp eq ptr %287, %405
  br i1 %406, label %411, label %407

407:                                              ; preds = %402
  %408 = icmp ne ptr %404, null
  %409 = icmp ne ptr %403, null
  %410 = select i1 %408, i1 true, i1 %409
  br i1 %410, label %246, label %411, !llvm.loop !477

411:                                              ; preds = %402, %407, %401
  %412 = add nsw i32 %164, 1
  br label %413

413:                                              ; preds = %172, %411
  %414 = phi i32 [ %412, %411 ], [ %164, %172 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #21
  %415 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef nonnull %18, i8 noundef zeroext 1, ptr noundef null) #22
  %416 = icmp eq ptr %415, null
  br i1 %416, label %417, label %162

417:                                              ; preds = %413, %169, %155
  %418 = phi i32 [ 0, %155 ], [ %164, %169 ], [ %414, %413 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #21
  %419 = icmp eq ptr %45, null
  br i1 %419, label %431, label %420

420:                                              ; preds = %417
  %421 = load ptr, ptr %15, align 8, !tbaa !95
  %422 = getelementptr inbounds %struct.Object, ptr %421, i64 0, i32 87
  %423 = load i8, ptr %422, align 2, !tbaa !478
  %424 = icmp ugt i8 %423, 2
  br i1 %424, label %425, label %431

425:                                              ; preds = %420
  %426 = getelementptr inbounds %struct.View3D, ptr %45, i64 0, i32 24
  %427 = load i16, ptr %426, align 8, !tbaa !479
  %428 = icmp sgt i16 %427, 2
  br i1 %428, label %429, label %431

429:                                              ; preds = %425
  %430 = call ptr @BKE_bmbvh_new_from_editmesh(ptr noundef nonnull %17, i32 noundef 4, ptr noundef null, i8 noundef zeroext 0) #20
  br label %431

431:                                              ; preds = %417, %420, %425, %429
  %432 = phi i1 [ true, %429 ], [ false, %425 ], [ false, %420 ], [ false, %417 ]
  %433 = phi ptr [ %430, %429 ], [ null, %425 ], [ null, %420 ], [ null, %417 ]
  store ptr %159, ptr %20, align 8, !tbaa !247
  %434 = getelementptr inbounds %struct.EdgeSlideData, ptr %20, i64 0, i32 1
  store i32 %141, ptr %434, align 8, !tbaa !251
  call fastcc void @zero_v3(ptr noundef nonnull %7) #22
  %435 = load ptr, ptr @MEM_callocN, align 8, !tbaa !152
  %436 = sext i32 %418 to i64
  %437 = mul nsw i64 %436, 12
  %438 = call ptr %435(i64 noundef %437, ptr noundef nonnull @.str.136) #20
  %439 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !152
  %440 = shl nsw i64 %436, 2
  %441 = call ptr %439(i64 noundef %440, ptr noundef nonnull @.str.137) #20
  call void @fill_vn_fl(ptr noundef %441, i32 noundef %418, float noundef -1.000000e+00) #20
  %442 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef nonnull %18, i8 noundef zeroext 2, ptr noundef null) #22
  %443 = icmp eq ptr %442, null
  br i1 %443, label %526, label %444

444:                                              ; preds = %431, %522
  %445 = phi ptr [ %524, %522 ], [ %442, %431 ]
  %446 = phi float [ %523, %522 ], [ -1.000000e+00, %431 ]
  %447 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %445, i8 noundef zeroext 1) #22, !range !269
  %448 = icmp eq i8 %447, 0
  br i1 %448, label %522, label %449

449:                                              ; preds = %444
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #21
  %450 = getelementptr inbounds %struct.BMEdge, ptr %445, i64 0, i32 2
  %451 = getelementptr inbounds %struct.BMEdge, ptr %445, i64 0, i32 3
  br label %452

452:                                              ; preds = %449, %519
  %453 = phi float [ %446, %449 ], [ %520, %519 ]
  %454 = phi i1 [ true, %449 ], [ false, %519 ]
  %455 = select i1 %454, ptr %451, ptr %450
  %456 = load ptr, ptr %455, align 8, !tbaa !152
  %457 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %11, ptr noundef null, i8 noundef zeroext 4, ptr noundef %456) #22
  %458 = icmp eq ptr %457, null
  br i1 %458, label %519, label %459

459:                                              ; preds = %452
  %460 = getelementptr inbounds %struct.BMVert, ptr %456, i64 0, i32 2
  br label %461

461:                                              ; preds = %459, %515
  %462 = phi ptr [ %457, %459 ], [ %517, %515 ]
  %463 = phi float [ %453, %459 ], [ %516, %515 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #21
  %464 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %462, i8 noundef zeroext 1) #22, !range !269
  %465 = icmp eq i8 %464, 0
  br i1 %465, label %466, label %515

466:                                              ; preds = %461
  br i1 %432, label %467, label %471

467:                                              ; preds = %466
  %468 = load ptr, ptr %15, align 8, !tbaa !95
  %469 = call zeroext i8 @BMBVH_EdgeVisible(ptr noundef %433, ptr noundef nonnull %462, ptr noundef %22, ptr noundef %45, ptr noundef %468) #20
  %470 = icmp eq i8 %469, 0
  br i1 %470, label %515, label %471

471:                                              ; preds = %467, %466
  %472 = call fastcc i32 @_bm_elem_index_get(ptr noundef %456) #22
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, ptr %123, i64 %473
  %475 = load i32, ptr %474, align 4, !tbaa !68
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %159, i64 %476
  %478 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %159, i64 %476, i32 1
  %479 = load ptr, ptr %478, align 8, !tbaa !272
  %480 = icmp eq ptr %479, null
  br i1 %480, label %483, label %481

481:                                              ; preds = %471
  %482 = getelementptr inbounds %struct.BMVert, ptr %479, i64 0, i32 2
  br label %485

483:                                              ; preds = %471
  %484 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %159, i64 %476, i32 6
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %460, ptr noundef nonnull %484) #22
  br label %485

485:                                              ; preds = %483, %481
  %486 = phi ptr [ %13, %483 ], [ %482, %481 ]
  call void @ED_view3d_project_float_v3_m4(ptr noundef %22, ptr noundef nonnull %486, ptr noundef nonnull %13, ptr noundef nonnull %3) #20
  %487 = load ptr, ptr %477, align 8, !tbaa !273
  %488 = icmp eq ptr %487, null
  br i1 %488, label %491, label %489

489:                                              ; preds = %485
  %490 = getelementptr inbounds %struct.BMVert, ptr %487, i64 0, i32 2
  br label %493

491:                                              ; preds = %485
  %492 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %159, i64 %476, i32 5
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %460, ptr noundef nonnull %492) #22
  br label %493

493:                                              ; preds = %491, %489
  %494 = phi ptr [ %12, %491 ], [ %490, %489 ]
  call void @ED_view3d_project_float_v3_m4(ptr noundef %22, ptr noundef nonnull %494, ptr noundef nonnull %12, ptr noundef nonnull %3) #20
  %495 = call float @dist_to_line_segment_v2(ptr noundef nonnull %4, ptr noundef nonnull %13, ptr noundef nonnull %12) #20
  %496 = fcmp oeq float %463, -1.000000e+00
  br i1 %496, label %502, label %497

497:                                              ; preds = %493
  %498 = fcmp olt float %495, %463
  br i1 %498, label %499, label %503

499:                                              ; preds = %497
  %500 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %13, ptr noundef nonnull %12) #22
  %501 = fcmp ogt float %500, 0x3FB99999A0000000
  br i1 %501, label %502, label %503

502:                                              ; preds = %499, %493
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %13, ptr noundef nonnull %12) #22
  br label %503

503:                                              ; preds = %502, %499, %497
  %504 = phi float [ %495, %502 ], [ %463, %499 ], [ %463, %497 ]
  %505 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %159, i64 %476, i32 7
  %506 = load i32, ptr %505, align 8, !tbaa !476
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds float, ptr %441, i64 %507
  %509 = load float, ptr %508, align 4, !tbaa !59
  %510 = fcmp oeq float %509, -1.000000e+00
  %511 = fcmp olt float %495, %509
  %512 = select i1 %510, i1 true, i1 %511
  br i1 %512, label %513, label %515

513:                                              ; preds = %503
  store float %495, ptr %508, align 4, !tbaa !59
  %514 = getelementptr inbounds [3 x float], ptr %438, i64 %507
  call fastcc void @sub_v3_v3v3(ptr noundef %514, ptr noundef nonnull %13, ptr noundef nonnull %12) #22
  br label %515

515:                                              ; preds = %513, %503, %467, %461
  %516 = phi float [ %463, %461 ], [ %463, %467 ], [ %504, %503 ], [ %504, %513 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #21
  %517 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %11) #22
  %518 = icmp eq ptr %517, null
  br i1 %518, label %519, label %461, !llvm.loop !480

519:                                              ; preds = %515, %452
  %520 = phi float [ %453, %452 ], [ %516, %515 ]
  br i1 %454, label %452, label %521, !llvm.loop !481

521:                                              ; preds = %519
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #21
  br label %522

522:                                              ; preds = %444, %521
  %523 = phi float [ %520, %521 ], [ %446, %444 ]
  %524 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #22
  %525 = icmp eq ptr %524, null
  br i1 %525, label %526, label %444, !llvm.loop !482

526:                                              ; preds = %522, %431
  %527 = call fastcc float @len_squared_v2(ptr noundef nonnull %7) #22
  %528 = fcmp olt float %527, 0x3FB99999A0000000
  br i1 %528, label %529, label %530

529:                                              ; preds = %526
  store <2 x float> <float 0.000000e+00, float 1.000000e+02>, ptr %7, align 8, !tbaa !59
  br label %530

530:                                              ; preds = %529, %526
  call void @bmesh_edit_begin(ptr noundef nonnull %18, i32 noundef 1) #20
  %531 = getelementptr inbounds %struct.EdgeSlideData, ptr %20, i64 0, i32 6
  %532 = load i8, ptr %531, align 8, !tbaa !263
  %533 = icmp eq i8 %532, 0
  br i1 %533, label %539, label %534

534:                                              ; preds = %530
  %535 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.createEdgeSlideVerts) #20
  %536 = getelementptr inbounds %struct.EdgeSlideData, ptr %20, i64 0, i32 2
  store ptr %535, ptr %536, align 8, !tbaa !264
  %537 = call ptr @BM_mesh_create(ptr noundef nonnull @bm_mesh_allocsize_default) #20
  %538 = getelementptr inbounds %struct.EdgeSlideData, ptr %20, i64 0, i32 7
  store ptr %537, ptr %538, align 8, !tbaa !280
  call void @BM_mesh_copy_init_customdata(ptr noundef %537, ptr noundef nonnull %18, ptr noundef null) #20
  br label %539

539:                                              ; preds = %534, %530
  %540 = load i32, ptr %434, align 8, !tbaa !251
  %541 = icmp sgt i32 %540, 0
  br i1 %541, label %542, label %585

542:                                              ; preds = %539
  %543 = load ptr, ptr %20, align 8, !tbaa !247
  %544 = getelementptr inbounds %struct.EdgeSlideData, ptr %20, i64 0, i32 2
  %545 = getelementptr inbounds %struct.EdgeSlideData, ptr %20, i64 0, i32 7
  br label %546

546:                                              ; preds = %542, %580
  %547 = phi ptr [ %543, %542 ], [ %582, %580 ]
  %548 = phi i32 [ 0, %542 ], [ %581, %580 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #21
  %549 = load i8, ptr %531, align 8, !tbaa !263
  %550 = icmp eq i8 %549, 0
  br i1 %550, label %568, label %551

551:                                              ; preds = %546
  %552 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %547, i64 0, i32 2
  %553 = load ptr, ptr %552, align 8, !tbaa !252
  %554 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %14, ptr noundef null, i8 noundef zeroext 5, ptr noundef %553) #22
  %555 = icmp eq ptr %554, null
  br i1 %555, label %568, label %556

556:                                              ; preds = %551, %565
  %557 = phi ptr [ %566, %565 ], [ %554, %551 ]
  %558 = load ptr, ptr %544, align 8, !tbaa !264
  %559 = call zeroext i8 @BLI_ghash_haskey(ptr noundef %558, ptr noundef nonnull %557) #20
  %560 = icmp eq i8 %559, 0
  br i1 %560, label %561, label %565

561:                                              ; preds = %556
  %562 = load ptr, ptr %545, align 8, !tbaa !280
  %563 = call ptr @BM_face_copy(ptr noundef %562, ptr noundef nonnull %18, ptr noundef nonnull %557, i8 noundef zeroext 1, i8 noundef zeroext 1) #20
  %564 = load ptr, ptr %544, align 8, !tbaa !264
  call void @BLI_ghash_insert(ptr noundef %564, ptr noundef nonnull %557, ptr noundef %563) #20
  br label %565

565:                                              ; preds = %556, %561
  %566 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %14) #22
  %567 = icmp eq ptr %566, null
  br i1 %567, label %568, label %556, !llvm.loop !483

568:                                              ; preds = %565, %551, %546
  %569 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %547, i64 0, i32 7
  %570 = load i32, ptr %569, align 8, !tbaa !476
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds [3 x float], ptr %438, i64 %571
  %573 = call fastcc float @dot_v3v3(ptr noundef %572, ptr noundef nonnull %7) #22
  %574 = fcmp olt float %573, 0.000000e+00
  br i1 %574, label %575, label %580

575:                                              ; preds = %568
  %576 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %547, i64 0, i32 5
  %577 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %547, i64 0, i32 6
  call fastcc void @swap_v3_v3(ptr noundef nonnull %576, ptr noundef nonnull %577) #22
  %578 = load <2 x ptr>, ptr %547, align 8, !tbaa !152
  %579 = shufflevector <2 x ptr> %578, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %579, ptr %547, align 8, !tbaa !152
  br label %580

580:                                              ; preds = %575, %568
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #21
  %581 = add nuw nsw i32 %548, 1
  %582 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %547, i64 1
  %583 = load i32, ptr %434, align 8, !tbaa !251
  %584 = icmp slt i32 %581, %583
  br i1 %584, label %546, label %585, !llvm.loop !484

585:                                              ; preds = %580, %539
  br i1 %63, label %587, label %586

586:                                              ; preds = %585
  call fastcc void @calcNonProportionalEdgeSlide(ptr noundef %0, ptr noundef nonnull %20, ptr noundef nonnull %4) #22
  br label %587

587:                                              ; preds = %586, %585
  %588 = getelementptr inbounds %struct.EdgeSlideData, ptr %20, i64 0, i32 5
  store ptr %17, ptr %588, align 8, !tbaa !262
  call fastcc void @zero_v2(ptr noundef nonnull %5) #22
  call fastcc void @copy_v2_v2(ptr noundef nonnull %6, ptr noundef nonnull %7) #22
  call fastcc void @mul_v2_fl(ptr noundef nonnull %6, float noundef 5.000000e-01) #22
  %589 = load i32, ptr %23, align 8, !tbaa !68
  %590 = sitofp i32 %589 to float
  %591 = load float, ptr %5, align 4, !tbaa !59
  %592 = fadd float %591, %590
  %593 = fptosi float %592 to i32
  %594 = getelementptr inbounds %struct.EdgeSlideData, ptr %20, i64 0, i32 3
  store i32 %593, ptr %594, align 8, !tbaa !68
  %595 = load i32, ptr %24, align 4, !tbaa !68
  %596 = sitofp i32 %595 to float
  %597 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %598 = load float, ptr %597, align 4, !tbaa !59
  %599 = fadd float %598, %596
  %600 = fptosi float %599 to i32
  %601 = getelementptr inbounds %struct.EdgeSlideData, ptr %20, i64 0, i32 3, i64 1
  store i32 %600, ptr %601, align 4, !tbaa !68
  %602 = load i32, ptr %23, align 8, !tbaa !68
  %603 = sitofp i32 %602 to float
  %604 = load float, ptr %6, align 4, !tbaa !59
  %605 = fadd float %604, %603
  %606 = fptosi float %605 to i32
  %607 = getelementptr inbounds %struct.EdgeSlideData, ptr %20, i64 0, i32 4
  store i32 %606, ptr %607, align 8, !tbaa !68
  %608 = load i32, ptr %24, align 4, !tbaa !68
  %609 = sitofp i32 %608 to float
  %610 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %611 = load float, ptr %610, align 4, !tbaa !59
  %612 = fadd float %611, %609
  %613 = fptosi float %612 to i32
  %614 = getelementptr inbounds %struct.EdgeSlideData, ptr %20, i64 0, i32 4, i64 1
  store i32 %613, ptr %614, align 4, !tbaa !68
  %615 = getelementptr inbounds %struct.EdgeSlideData, ptr %20, i64 0, i32 8
  store float 0.000000e+00, ptr %615, align 8, !tbaa !249
  %616 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  store ptr %20, ptr %616, align 8, !tbaa !141
  %617 = load ptr, ptr @MEM_freeN, align 8, !tbaa !152
  call void %617(ptr noundef %123) #20
  %618 = icmp eq ptr %433, null
  br i1 %618, label %620, label %619

619:                                              ; preds = %587
  call void @BKE_bmbvh_free(ptr noundef nonnull %433) #20
  br label %620

620:                                              ; preds = %619, %587
  %621 = load ptr, ptr @MEM_freeN, align 8, !tbaa !152
  call void %621(ptr noundef %438) #20
  %622 = load ptr, ptr @MEM_freeN, align 8, !tbaa !152
  call void %622(ptr noundef %441) #20
  br label %623

623:                                              ; preds = %94, %620, %152, %113
  %624 = phi i8 [ 0, %94 ], [ 0, %113 ], [ 1, %620 ], [ 0, %152 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #21
  ret i8 %624
}

; Function Attrs: optsize
declare void @setCustomPoints(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_ob_project_mat_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_manifold(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !485 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !275
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !271
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.BMLoop, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !271
  %12 = icmp eq ptr %11, %3
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = phi i8 [ 0, %5 ], [ 0, %1 ], [ %13, %9 ]
  ret i8 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !486 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !285
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !285
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !487 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !285
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !285
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !488 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !489
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @get_other_edge(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #0 !PGOFuncName !490 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  %4 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 4, ptr noundef %0) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2, %12
  %7 = phi ptr [ %13, %12 ], [ %4, %2 ]
  %8 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %7, i8 noundef zeroext 1) #22, !range !269
  %9 = icmp eq i8 %8, 0
  %10 = icmp eq ptr %7, %1
  %11 = or i1 %10, %9
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !491

15:                                               ; preds = %6, %12, %2
  %16 = phi ptr [ null, %2 ], [ null, %12 ], [ %7, %6 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #10 !PGOFuncName !492 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !493
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !494
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_next_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !PGOFuncName !495 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  %10 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 2
  br label %11

11:                                               ; preds = %73, %5
  %12 = phi ptr [ %1, %5 ], [ %75, %73 ]
  %13 = phi float [ 0.000000e+00, %5 ], [ %63, %73 ]
  %14 = phi i32 [ 0, %5 ], [ %64, %73 ]
  %15 = tail call ptr @BM_loop_other_edge_loop(ptr noundef %12, ptr noundef %0) #20
  %16 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !268
  %18 = icmp eq ptr %17, %3
  br i1 %18, label %19, label %59

19:                                               ; preds = %11
  %20 = icmp eq i32 %14, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = sitofp i32 %14 to float
  %23 = fdiv float %13, %22
  call fastcc void @len_v3_ensure(ptr noundef nonnull %6, float noundef %23) #22
  br label %58

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.BMLoop, ptr %1, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !265
  %27 = tail call ptr @BM_face_vert_share_loop(ptr noundef %26, ptr noundef %0) #20
  %28 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !265
  %30 = getelementptr inbounds %struct.BMFace, ptr %29, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !496
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !498
  %36 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !498
  %38 = getelementptr inbounds %struct.BMLoop, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !499
  %40 = getelementptr inbounds %struct.BMVert, ptr %39, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %40, ptr noundef nonnull %10) #22
  br label %58

41:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #21
  call void @BM_loop_calc_face_direction(ptr noundef nonnull %27, ptr noundef nonnull %7) #20
  %42 = load ptr, ptr %28, align 8, !tbaa !265
  %43 = getelementptr inbounds %struct.BMFace, ptr %42, i64 0, i32 4
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %43, ptr noundef nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #21
  %44 = call fastcc zeroext i8 @bm_loop_calc_opposite_co(ptr noundef nonnull %27, ptr noundef nonnull %7, ptr noundef nonnull %8) #22, !range !144
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !499
  %49 = getelementptr inbounds %struct.BMVert, ptr %48, i64 0, i32 2
  %50 = call fastcc float @len_v3v3(ptr noundef nonnull %49, ptr noundef nonnull %8) #22
  br label %56

51:                                               ; preds = %41
  %52 = call float @BM_edge_calc_length(ptr noundef %2) #20
  %53 = call float @BM_edge_calc_length(ptr noundef %3) #20
  %54 = fadd float %52, %53
  %55 = fmul float %54, 5.000000e-01
  br label %56

56:                                               ; preds = %51, %46
  %57 = phi float [ %50, %46 ], [ %55, %51 ]
  call fastcc void @len_v3_ensure(ptr noundef nonnull %6, float noundef %57) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #21
  br label %58

58:                                               ; preds = %33, %56, %21
  call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef nonnull %6) #22
  br label %82

59:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #21
  %60 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef %17, ptr noundef %0) #22
  %61 = getelementptr inbounds %struct.BMVert, ptr %60, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %61, ptr noundef nonnull %10) #22
  %62 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #22
  %63 = fadd float %13, %62
  call fastcc void @add_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %9) #22
  %64 = add nuw nsw i32 %14, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #21
  %65 = tail call ptr @BM_loop_other_edge_loop(ptr noundef nonnull %15, ptr noundef %0) #20
  %66 = getelementptr inbounds %struct.BMLoop, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !268
  %68 = icmp eq ptr %67, %3
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = sitofp i32 %64 to float
  %71 = fdiv float %63, %70
  call fastcc void @len_v3_ensure(ptr noundef nonnull %6, float noundef %71) #22
  call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef nonnull %6) #22
  %72 = tail call ptr @BM_loop_other_edge_loop(ptr noundef nonnull %15, ptr noundef %0) #20
  br label %82

73:                                               ; preds = %59
  %74 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !271
  %76 = icmp eq ptr %15, %75
  %77 = icmp eq ptr %75, %1
  %78 = or i1 %76, %77
  br i1 %78, label %79, label %11, !llvm.loop !500

79:                                               ; preds = %73
  %80 = sitofp i32 %64 to float
  %81 = fdiv float %63, %80
  call fastcc void @len_v3_ensure(ptr noundef nonnull %6, float noundef %81) #22
  call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef nonnull %6) #22
  br label %82

82:                                               ; preds = %79, %69, %58
  %83 = phi ptr [ %15, %58 ], [ %72, %69 ], [ null, %79 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #21
  ret ptr %83
}

; Function Attrs: optsize
declare i32 @BM_vert_edge_count_nonwire(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !501 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !489
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @BKE_bmbvh_new_from_editmesh(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fill_vn_fl(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BMBVH_EdgeVisible(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_project_float_v3_m4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @dist_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !502 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #22
  %4 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v2(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !503 {
  %2 = load float, ptr %0, align 4, !tbaa !59
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !59
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  ret float %6
}

; Function Attrs: optsize
declare void @bmesh_edit_begin(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_mesh_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_copy_init_customdata(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_ghash_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_copy(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @swap_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #3 !PGOFuncName !504 {
  %3 = load float, ptr %0, align 4, !tbaa !59
  %4 = load float, ptr %1, align 4, !tbaa !59
  store float %4, ptr %0, align 4, !tbaa !59
  store float %3, ptr %1, align 4, !tbaa !59
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !59
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !59
  store float %8, ptr %5, align 4, !tbaa !59
  store float %6, ptr %7, align 4, !tbaa !59
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !59
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !59
  store float %12, ptr %9, align 4, !tbaa !59
  store float %10, ptr %11, align 4, !tbaa !59
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calcNonProportionalEdgeSlide(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !505 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [2 x float], align 4
  %6 = load ptr, ptr %1, align 8, !tbaa !247
  %7 = getelementptr inbounds %struct.EdgeSlideData, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !251
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %52

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %14 = load i8, ptr %13, align 8, !tbaa !34
  %15 = icmp ne i8 %14, 1
  %16 = icmp eq ptr %12, null
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 30
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %10, %18
  call void @unit_m4(ptr noundef nonnull %4) #20
  br label %26

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %25 = load ptr, ptr %24, align 8, !tbaa !95
  call void @ED_view3d_ob_project_mat_get(ptr noundef nonnull %20, ptr noundef %25, ptr noundef nonnull %4) #20
  br label %26

26:                                               ; preds = %23, %22
  %27 = load i32, ptr %7, align 8, !tbaa !251
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.EdgeSlideData, ptr %1, i64 0, i32 11
  br label %31

31:                                               ; preds = %29, %45
  %32 = phi float [ 0x47EFFFFFE0000000, %29 ], [ %46, %45 ]
  %33 = phi i32 [ 0, %29 ], [ %47, %45 ]
  %34 = phi ptr [ %6, %29 ], [ %48, %45 ]
  %35 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %34, i64 0, i32 5
  %36 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %34, i64 0, i32 6
  %37 = call fastcc float @len_v3v3(ptr noundef nonnull %35, ptr noundef nonnull %36) #22
  %38 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %34, i64 0, i32 4
  store float %37, ptr %38, align 4, !tbaa !256
  %39 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %34, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !252
  %41 = getelementptr inbounds %struct.BMVert, ptr %40, i64 0, i32 2
  call void @ED_view3d_project_float_v2_m4(ptr noundef %12, ptr noundef nonnull %41, ptr noundef nonnull %5, ptr noundef nonnull %4) #20
  %42 = call fastcc float @len_squared_v2v2(ptr noundef %2, ptr noundef nonnull %5) #22
  %43 = fcmp olt float %42, %32
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  store i32 %33, ptr %30, align 8, !tbaa !255
  br label %45

45:                                               ; preds = %31, %44
  %46 = phi float [ %42, %44 ], [ %32, %31 ]
  %47 = add nuw nsw i32 %33, 1
  %48 = getelementptr inbounds %struct.TransDataEdgeSlideVert, ptr %34, i64 1
  %49 = load i32, ptr %7, align 8, !tbaa !251
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %31, label %51, !llvm.loop !506

51:                                               ; preds = %45, %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #21
  br label %54

52:                                               ; preds = %3
  %53 = getelementptr inbounds %struct.EdgeSlideData, ptr %1, i64 0, i32 11
  store i32 0, ptr %53, align 8, !tbaa !255
  br label %54

54:                                               ; preds = %52, %51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #5 !PGOFuncName !507 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #3 !PGOFuncName !508 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !59
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare void @BKE_bmbvh_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @len_v3_ensure(ptr nocapture noundef %0, float noundef %1) unnamed_addr #9 !PGOFuncName !509 {
  %3 = tail call fastcc float @normalize_v3(ptr noundef %0) #22
  tail call fastcc void @mul_v3_fl(ptr noundef %0, float noundef %1) #22
  ret void
}

; Function Attrs: optsize
declare ptr @BM_face_vert_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_loop_calc_face_direction(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bm_loop_calc_opposite_co(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !510 {
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !498
  %7 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !270
  %9 = getelementptr inbounds %struct.BMLoop, ptr %0, i64 0, i32 1
  br label %10

10:                                               ; preds = %42, %3
  %11 = phi float [ 0x47EFFFFFE0000000, %3 ], [ %43, %42 ]
  %12 = phi ptr [ %6, %3 ], [ %44, %42 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  %13 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !499
  %15 = getelementptr inbounds %struct.BMVert, ptr %14, i64 0, i32 2
  %16 = getelementptr inbounds %struct.BMLoop, ptr %12, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !498
  %18 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !499
  %20 = getelementptr inbounds %struct.BMVert, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %9, align 8, !tbaa !499
  %22 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2
  %23 = call zeroext i8 @isect_line_plane_v3(ptr noundef nonnull %4, ptr noundef nonnull %15, ptr noundef nonnull %20, ptr noundef nonnull %22, ptr noundef %1) #20
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %10
  %26 = load ptr, ptr %13, align 8, !tbaa !499
  %27 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %16, align 8, !tbaa !498
  %29 = getelementptr inbounds %struct.BMLoop, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !499
  %31 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 2
  %32 = call float @line_point_factor_v3(ptr noundef nonnull %4, ptr noundef nonnull %27, ptr noundef nonnull %31) #20
  %33 = fcmp ogt float %32, 0xBE80000000000000
  %34 = fcmp olt float %32, 0x3FF0000020000000
  %35 = and i1 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load ptr, ptr %9, align 8, !tbaa !499
  %38 = getelementptr inbounds %struct.BMVert, ptr %37, i64 0, i32 2
  %39 = call fastcc float @len_v3v3(ptr noundef nonnull %38, ptr noundef nonnull %4) #22
  %40 = fcmp olt float %39, %11
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %4) #22
  br label %42

42:                                               ; preds = %25, %41, %36, %10
  %43 = phi float [ %11, %10 ], [ %11, %25 ], [ %39, %41 ], [ %11, %36 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  %44 = load ptr, ptr %16, align 8, !tbaa !498
  %45 = icmp eq ptr %44, %8
  br i1 %45, label %46, label %10, !llvm.loop !511

46:                                               ; preds = %42
  %47 = fcmp une float %43, 0x47EFFFFFE0000000
  %48 = zext i1 %47 to i8
  ret i8 %48
}

; Function Attrs: optsize
declare float @BM_edge_calc_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @isect_line_plane_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !512 {
  %4 = load float, ptr %1, align 4, !tbaa !59
  %5 = load float, ptr %2, align 4, !tbaa !59
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !59
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !59
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !59
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !513 {
  %3 = load float, ptr %0, align 4, !tbaa !59
  %4 = load float, ptr %1, align 4, !tbaa !59
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !59
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !59
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: optsize
declare void @ED_view3d_project_float_v2_m4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyVertSlide(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !514 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca float, align 4
  %5 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %7 = load ptr, ptr %6, align 8, !tbaa !141
  %8 = getelementptr inbounds %struct.VertSlideData, ptr %7, i64 0, i32 5
  %9 = load i8, ptr %8, align 1, !tbaa !316
  %10 = getelementptr inbounds %struct.VertSlideData, ptr %7, i64 0, i32 4
  %11 = load i8, ptr %10, align 4, !tbaa !317
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !94
  %14 = and i32 %13, 16777216
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %18 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %17) #20
  %19 = icmp eq i8 %18, 0
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %21 = load float, ptr %20, align 4, !tbaa !59
  store float %21, ptr %4, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef nonnull %0, ptr noundef nonnull %4) #20
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
  call void @snapGridIncrement(ptr noundef nonnull %0, ptr noundef nonnull %4) #20
  br label %32

32:                                               ; preds = %29, %25, %28, %26, %16
  %33 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %34 = call zeroext i8 @applyNumInput(ptr noundef nonnull %33, ptr noundef nonnull %4) #20
  %35 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %3, ptr noundef nonnull @.str.138, i64 noundef 256) #20
  %36 = call zeroext i8 @hasNumInput(ptr noundef nonnull %33) #20
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #21
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %40 = load ptr, ptr %39, align 8, !tbaa !121
  %41 = getelementptr inbounds %struct.Scene, ptr %40, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %33, ptr noundef nonnull %5, ptr noundef nonnull %41) #20
  %42 = getelementptr inbounds i8, ptr %3, i64 %35
  %43 = sub i64 256, %35
  %44 = call i64 @BLI_strncpy_rlen(ptr noundef nonnull %42, ptr noundef nonnull %5, i64 noundef %43) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #21
  br label %51

45:                                               ; preds = %32
  %46 = getelementptr inbounds i8, ptr %3, i64 %35
  %47 = sub i64 256, %35
  %48 = load float, ptr %4, align 4, !tbaa !59
  %49 = fpext float %48 to double
  %50 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %46, i64 noundef %47, ptr noundef nonnull @.str.139, double noundef %49) #20
  br label %51

51:                                               ; preds = %45, %38
  %52 = phi i64 [ %44, %38 ], [ %50, %45 ]
  %53 = add i64 %52, %35
  %54 = getelementptr inbounds i8, ptr %3, i64 %53
  %55 = sub i64 256, %53
  %56 = icmp eq i8 %11, 0
  %57 = zext i1 %56 to i8
  %58 = call ptr @WM_bool_as_string(i8 noundef zeroext %57) #20
  %59 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %54, i64 noundef %55, ptr noundef nonnull @.str.140, ptr noundef %58) #20
  %60 = add i64 %59, %53
  br i1 %56, label %61, label %67

61:                                               ; preds = %51
  %62 = getelementptr inbounds i8, ptr %3, i64 %60
  %63 = sub i64 256, %60
  %64 = call ptr @WM_bool_as_string(i8 noundef zeroext %9) #20
  %65 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %62, i64 noundef %63, ptr noundef nonnull @.str.141, ptr noundef %64) #20
  %66 = add i64 %65, %60
  br label %67

67:                                               ; preds = %61, %51
  %68 = phi i64 [ %60, %51 ], [ %66, %61 ]
  %69 = zext i1 %15 to i8
  %70 = getelementptr inbounds i8, ptr %3, i64 %68
  %71 = sub i64 256, %68
  %72 = call ptr @WM_bool_as_string(i8 noundef zeroext %69) #20
  %73 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %70, i64 noundef %71, ptr noundef nonnull @.str.142, ptr noundef %72) #20
  %74 = load float, ptr %4, align 4, !tbaa !59
  call fastcc void @doVertSlide(ptr noundef nonnull %0, float noundef %74) #22
  call void @recalcData(ptr noundef nonnull %0) #20
  %75 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %76 = load ptr, ptr %75, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %76, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @handleEventVertSlide(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !515 {
  %3 = load i32, ptr %0, align 8, !tbaa !82
  %4 = icmp eq i32 %3, 29
  br i1 %4, label %5, label %50

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %7 = load ptr, ptr %6, align 8, !tbaa !141
  %8 = icmp eq ptr %7, null
  br i1 %8, label %50, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !89
  switch i16 %11, label %50 [
    i16 101, label %12
    i16 102, label %24
    i16 99, label %33
    i16 4, label %41
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %14 = load i16, ptr %13, align 2, !tbaa !87
  %15 = icmp eq i16 %14, 1
  br i1 %15, label %16, label %50

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.VertSlideData, ptr %7, i64 0, i32 4
  %18 = load i8, ptr %17, align 4, !tbaa !317
  %19 = icmp eq i8 %18, 0
  %20 = zext i1 %19 to i8
  store i8 %20, ptr %17, align 4, !tbaa !317
  %21 = getelementptr inbounds %struct.VertSlideData, ptr %7, i64 0, i32 5
  %22 = load i8, ptr %21, align 1, !tbaa !316
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %50, label %48

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %26 = load i16, ptr %25, align 2, !tbaa !87
  %27 = icmp eq i16 %26, 1
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.VertSlideData, ptr %7, i64 0, i32 5
  %30 = load i8, ptr %29, align 1, !tbaa !316
  %31 = icmp eq i8 %30, 0
  %32 = zext i1 %31 to i8
  store i8 %32, ptr %29, align 1, !tbaa !316
  br label %48

33:                                               ; preds = %9
  %34 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %35 = load i16, ptr %34, align 2, !tbaa !87
  %36 = icmp eq i16 %35, 1
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !94
  %40 = xor i32 %39, 16777216
  store i32 %40, ptr %38, align 4, !tbaa !94
  br label %48

41:                                               ; preds = %9
  %42 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !94
  %44 = and i32 %43, 16777216
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  tail call fastcc void @calcVertSlideMouseActiveEdges(ptr noundef nonnull %0, ptr noundef nonnull %47) #22
  br label %48

48:                                               ; preds = %41, %46, %16, %37, %28
  %49 = phi i32 [ 1, %28 ], [ 1, %37 ], [ 1, %16 ], [ 0, %46 ], [ 0, %41 ]
  tail call fastcc void @calcVertSlideCustomPoints(ptr noundef nonnull %0) #22
  br label %50

50:                                               ; preds = %48, %5, %9, %33, %24, %12, %2, %16
  %51 = phi i32 [ 1, %16 ], [ 0, %2 ], [ 0, %12 ], [ 0, %24 ], [ 0, %33 ], [ 0, %9 ], [ 0, %5 ], [ %49, %48 ]
  ret i32 %51
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @createVertSlideVerts(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !516 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca [4 x [4 x float]], align 16
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = tail call ptr @BKE_editmesh_from_object(ptr noundef %6) #20
  %8 = load ptr, ptr %7, align 8, !tbaa !278
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !152
  %10 = tail call ptr %9(i64 noundef 40, ptr noundef nonnull @.str.134) #20
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #21
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %14 = load i8, ptr %13, align 8, !tbaa !34
  %15 = icmp ne i8 %14, 1
  %16 = icmp eq ptr %12, null
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.VertSlideData, ptr %10, i64 0, i32 4
  store i8 1, ptr %19, align 4, !tbaa !317
  %20 = getelementptr inbounds %struct.VertSlideData, ptr %10, i64 0, i32 6
  store i32 0, ptr %20, align 8, !tbaa !312
  %21 = getelementptr inbounds %struct.VertSlideData, ptr %10, i64 0, i32 5
  store i8 0, ptr %21, align 1, !tbaa !316
  br label %29

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 30
  %24 = load ptr, ptr %23, align 8, !tbaa !54
  %25 = getelementptr inbounds %struct.VertSlideData, ptr %10, i64 0, i32 4
  store i8 1, ptr %25, align 4, !tbaa !317
  %26 = getelementptr inbounds %struct.VertSlideData, ptr %10, i64 0, i32 6
  store i32 0, ptr %26, align 8, !tbaa !312
  %27 = getelementptr inbounds %struct.VertSlideData, ptr %10, i64 0, i32 5
  store i8 0, ptr %27, align 1, !tbaa !316
  %28 = icmp eq ptr %24, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %18, %22
  call void @unit_m4(ptr noundef nonnull %4) #20
  br label %32

30:                                               ; preds = %22
  %31 = load ptr, ptr %5, align 8, !tbaa !95
  call void @ED_view3d_ob_project_mat_get(ptr noundef nonnull %24, ptr noundef %31, ptr noundef nonnull %4) #20
  br label %32

32:                                               ; preds = %30, %29
  %33 = phi i1 [ false, %30 ], [ true, %29 ]
  %34 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %8, i8 noundef zeroext 1, ptr noundef null) #22
  %35 = icmp eq ptr %34, null
  br i1 %35, label %64, label %36

36:                                               ; preds = %32, %58
  %37 = phi i32 [ %59, %58 ], [ 0, %32 ]
  %38 = phi ptr [ %60, %58 ], [ %34, %32 ]
  %39 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %38, i8 noundef zeroext 1) #22, !range !269
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.BMVert, ptr %38, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !466
  %44 = icmp eq ptr %43, null
  br i1 %44, label %57, label %45

45:                                               ; preds = %41
  %46 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %38) #22
  %47 = icmp eq ptr %46, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %45, %52
  %49 = phi ptr [ %53, %52 ], [ %46, %45 ]
  %50 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %49, i8 noundef zeroext 2) #22, !range !269
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #22
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %48, !llvm.loop !517

55:                                               ; preds = %48
  call fastcc void @_bm_elem_flag_enable(ptr noundef nonnull %38) #22
  %56 = add nsw i32 %37, 1
  br label %58

57:                                               ; preds = %52, %45, %41, %36
  call fastcc void @_bm_elem_flag_disable(ptr noundef nonnull %38) #22
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ %37, %57 ]
  %60 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #22
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %36, !llvm.loop !518

62:                                               ; preds = %58
  %63 = icmp eq i32 %59, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %32, %62
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !152
  call void %65(ptr noundef %10) #20
  br label %153

66:                                               ; preds = %62
  %67 = load ptr, ptr @MEM_callocN, align 8, !tbaa !152
  %68 = sext i32 %59 to i64
  %69 = mul nsw i64 %68, 56
  %70 = call ptr %67(i64 noundef %69, ptr noundef nonnull @.str.135) #20
  %71 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %2, ptr noundef %8, i8 noundef zeroext 1, ptr noundef null) #22
  %72 = icmp eq ptr %71, null
  br i1 %72, label %145, label %73

73:                                               ; preds = %66, %141
  %74 = phi i32 [ %142, %141 ], [ 0, %66 ]
  %75 = phi ptr [ %143, %141 ], [ %71, %66 ]
  %76 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %75, i8 noundef zeroext 16) #22, !range !269
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %141, label %78

78:                                               ; preds = %73
  %79 = sext i32 %74 to i64
  %80 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %70, i64 %79
  store ptr %75, ptr %80, align 8, !tbaa !519
  %81 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %70, i64 %79, i32 1
  %82 = getelementptr inbounds %struct.BMVert, ptr %75, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %81, ptr noundef nonnull %82) #22
  %83 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %75) #22
  %84 = icmp eq ptr %83, null
  br i1 %84, label %94, label %85

85:                                               ; preds = %78, %85
  %86 = phi i32 [ %91, %85 ], [ 0, %78 ]
  %87 = phi ptr [ %92, %85 ], [ %83, %78 ]
  %88 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %87, i8 noundef zeroext 2) #22, !range !269
  %89 = icmp eq i8 %88, 0
  %90 = zext i1 %89 to i32
  %91 = add nuw nsw i32 %86, %90
  %92 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #22
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %85, !llvm.loop !520

94:                                               ; preds = %85, %78
  %95 = phi i32 [ 0, %78 ], [ %91, %85 ]
  %96 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !152
  %97 = zext nneg i32 %95 to i64
  %98 = mul nuw nsw i64 %97, 12
  %99 = call ptr %96(i64 noundef %98, ptr noundef nonnull @__func__.createVertSlideVerts) #20
  %100 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %70, i64 %79, i32 3
  store ptr %99, ptr %100, align 8, !tbaa !295
  %101 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !152
  %102 = shl nuw nsw i64 %97, 3
  %103 = call ptr %101(i64 noundef %102, ptr noundef nonnull @__func__.createVertSlideVerts) #20
  %104 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %70, i64 %79, i32 4
  store ptr %103, ptr %104, align 8, !tbaa !293
  %105 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %70, i64 %79, i32 5
  store i32 %95, ptr %105, align 8, !tbaa !521
  %106 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 4, ptr noundef nonnull %75) #22
  %107 = icmp eq ptr %106, null
  br i1 %107, label %135, label %108

108:                                              ; preds = %94, %131
  %109 = phi i32 [ %132, %131 ], [ 0, %94 ]
  %110 = phi ptr [ %133, %131 ], [ %106, %94 ]
  %111 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %110, i8 noundef zeroext 2) #22, !range !269
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %131

113:                                              ; preds = %108
  %114 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %110, ptr noundef nonnull %75) #22
  %115 = load ptr, ptr %100, align 8, !tbaa !295
  %116 = sext i32 %109 to i64
  %117 = getelementptr inbounds [3 x float], ptr %115, i64 %116
  %118 = getelementptr inbounds %struct.BMVert, ptr %114, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef %117, ptr noundef nonnull %118) #22
  br i1 %16, label %124, label %119

119:                                              ; preds = %113
  %120 = load ptr, ptr %100, align 8, !tbaa !295
  %121 = getelementptr inbounds [3 x float], ptr %120, i64 %116
  %122 = load ptr, ptr %104, align 8, !tbaa !293
  %123 = getelementptr inbounds [2 x float], ptr %122, i64 %116
  call void @ED_view3d_project_float_v2_m4(ptr noundef nonnull %12, ptr noundef %121, ptr noundef %123, ptr noundef nonnull %4) #20
  br label %129

124:                                              ; preds = %113
  %125 = load ptr, ptr %104, align 8, !tbaa !293
  %126 = getelementptr inbounds [2 x float], ptr %125, i64 %116
  %127 = load ptr, ptr %100, align 8, !tbaa !295
  %128 = getelementptr inbounds [3 x float], ptr %127, i64 %116
  call fastcc void @copy_v2_v2(ptr noundef %126, ptr noundef %128) #22
  br label %129

129:                                              ; preds = %124, %119
  %130 = add nsw i32 %109, 1
  br label %131

131:                                              ; preds = %108, %129
  %132 = phi i32 [ %109, %108 ], [ %130, %129 ]
  %133 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #22
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %108, !llvm.loop !522

135:                                              ; preds = %131, %94
  %136 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %70, i64 %79, i32 2
  br i1 %16, label %138, label %137

137:                                              ; preds = %135
  call void @ED_view3d_project_float_v2_m4(ptr noundef nonnull %12, ptr noundef nonnull %81, ptr noundef nonnull %136, ptr noundef nonnull %4) #20
  br label %139

138:                                              ; preds = %135
  call fastcc void @copy_v2_v2(ptr noundef nonnull %136, ptr noundef nonnull %81) #22
  br label %139

139:                                              ; preds = %138, %137
  %140 = add nsw i32 %74, 1
  br label %141

141:                                              ; preds = %73, %139
  %142 = phi i32 [ %140, %139 ], [ %74, %73 ]
  %143 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %2) #22
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %73, !llvm.loop !523

145:                                              ; preds = %141, %66
  %146 = phi i32 [ 0, %66 ], [ %142, %141 ]
  store ptr %70, ptr %10, align 8, !tbaa !292
  %147 = getelementptr inbounds %struct.VertSlideData, ptr %10, i64 0, i32 1
  store i32 %146, ptr %147, align 8, !tbaa !290
  %148 = getelementptr inbounds %struct.VertSlideData, ptr %10, i64 0, i32 2
  store ptr %7, ptr %148, align 8, !tbaa !524
  %149 = getelementptr inbounds %struct.VertSlideData, ptr %10, i64 0, i32 3
  store float 0.000000e+00, ptr %149, align 8, !tbaa !525
  %150 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  store ptr %10, ptr %150, align 8, !tbaa !141
  br i1 %33, label %153, label %151

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 61
  call fastcc void @calcVertSlideMouseActiveVert(ptr noundef nonnull %0, ptr noundef nonnull %152) #22
  call fastcc void @calcVertSlideMouseActiveEdges(ptr noundef nonnull %0, ptr noundef nonnull %152) #22
  br label %153

153:                                              ; preds = %145, %151, %64
  %154 = phi i8 [ 0, %64 ], [ 1, %151 ], [ 1, %145 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #21
  ret i8 %154
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calcVertSlideCustomPoints(ptr noundef %0) unnamed_addr #0 !PGOFuncName !526 {
  %2 = alloca [2 x i32], align 8
  %3 = alloca [2 x i32], align 8
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %5 = load ptr, ptr %4, align 8, !tbaa !141
  %6 = load ptr, ptr %5, align 8, !tbaa !292
  %7 = getelementptr inbounds %struct.VertSlideData, ptr %5, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !312
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %6, i64 %9, i32 2
  %11 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %6, i64 %9, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !293
  %13 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %6, i64 %9, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !313
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [2 x float], ptr %12, i64 %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %17 = load <2 x float>, ptr %10, align 4, !tbaa !59
  %18 = fptosi <2 x float> %17 to <2 x i32>
  store <2 x i32> %18, ptr %2, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %19 = load <2 x float>, ptr %16, align 4, !tbaa !59
  %20 = fptosi <2 x float> %19 to <2 x i32>
  store <2 x i32> %20, ptr %3, align 8, !tbaa !68
  %21 = getelementptr inbounds %struct.VertSlideData, ptr %5, i64 0, i32 5
  %22 = load i8, ptr %21, align 1, !tbaa !316
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.VertSlideData, ptr %5, i64 0, i32 4
  %26 = load i8, ptr %25, align 4, !tbaa !317
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  call void @setCustomPoints(ptr noundef nonnull %0, ptr noundef nonnull %29, ptr noundef nonnull %2, ptr noundef nonnull %3) #20
  br label %32

30:                                               ; preds = %24, %1
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16
  call void @setCustomPoints(ptr noundef nonnull %0, ptr noundef nonnull %31, ptr noundef nonnull %3, ptr noundef nonnull %2) #20
  br label %32

32:                                               ; preds = %30, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @doVertSlide(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #0 !PGOFuncName !527 {
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %5 = load ptr, ptr %4, align 8, !tbaa !141
  %6 = load ptr, ptr %5, align 8, !tbaa !292
  %7 = getelementptr inbounds %struct.VertSlideData, ptr %5, i64 0, i32 3
  store float %1, ptr %7, align 8, !tbaa !525
  %8 = getelementptr inbounds %struct.VertSlideData, ptr %5, i64 0, i32 4
  %9 = load i8, ptr %8, align 4, !tbaa !317
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.VertSlideData, ptr %5, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !290
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %81

15:                                               ; preds = %11, %15
  %16 = phi ptr [ %28, %15 ], [ %6, %11 ]
  %17 = phi i32 [ %27, %15 ], [ 0, %11 ]
  %18 = load ptr, ptr %16, align 8, !tbaa !519
  %19 = getelementptr inbounds %struct.BMVert, ptr %18, i64 0, i32 2
  %20 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %16, i64 0, i32 1
  %21 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %16, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !295
  %23 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %16, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !313
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [3 x float], ptr %22, i64 %25
  tail call void @interp_v3_v3v3(ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef %26, float noundef %1) #20
  %27 = add nuw nsw i32 %17, 1
  %28 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %16, i64 1
  %29 = load i32, ptr %12, align 8, !tbaa !290
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %15, label %81, !llvm.loop !528

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.VertSlideData, ptr %5, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !312
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %6, i64 %34, i32 1
  %36 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %6, i64 %34, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !295
  %38 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %6, i64 %34, i32 6
  %39 = load i32, ptr %38, align 4, !tbaa !313
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [3 x float], ptr %37, i64 %40
  %42 = tail call fastcc float @len_v3v3(ptr noundef nonnull %35, ptr noundef %41) #22
  %43 = fmul float %42, %1
  %44 = getelementptr inbounds %struct.VertSlideData, ptr %5, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !290
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %81

47:                                               ; preds = %31
  %48 = getelementptr inbounds %struct.VertSlideData, ptr %5, i64 0, i32 5
  %49 = fneg float %43
  br label %50

50:                                               ; preds = %47, %76
  %51 = phi ptr [ %6, %47 ], [ %78, %76 ]
  %52 = phi i32 [ 0, %47 ], [ %77, %76 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  %53 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %51, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !295
  %55 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %51, i64 0, i32 6
  %56 = load i32, ptr %55, align 4, !tbaa !313
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [3 x float], ptr %54, i64 %57
  %59 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %51, i64 0, i32 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %58, ptr noundef nonnull %59) #22
  %60 = call fastcc float @normalize_v3(ptr noundef nonnull %3) #22
  %61 = fcmp ogt float %60, 0x3E80000000000000
  br i1 %61, label %62, label %73

62:                                               ; preds = %50
  %63 = load i8, ptr %48, align 1, !tbaa !316
  %64 = icmp eq i8 %63, 0
  %65 = load ptr, ptr %51, align 8, !tbaa !519
  %66 = getelementptr inbounds %struct.BMVert, ptr %65, i64 0, i32 2
  br i1 %64, label %72, label %67

67:                                               ; preds = %62
  %68 = load ptr, ptr %53, align 8, !tbaa !295
  %69 = load i32, ptr %55, align 4, !tbaa !313
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [3 x float], ptr %68, i64 %70
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %66, ptr noundef %71, ptr noundef nonnull %3, float noundef %49) #22
  br label %76

72:                                               ; preds = %62
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %66, ptr noundef nonnull %59, ptr noundef nonnull %3, float noundef %43) #22
  br label %76

73:                                               ; preds = %50
  %74 = load ptr, ptr %51, align 8, !tbaa !519
  %75 = getelementptr inbounds %struct.BMVert, ptr %74, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %75, ptr noundef nonnull %59) #22
  br label %76

76:                                               ; preds = %67, %72, %73
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  %77 = add nuw nsw i32 %52, 1
  %78 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %51, i64 1
  %79 = load i32, ptr %44, align 8, !tbaa !290
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %50, label %81, !llvm.loop !529

81:                                               ; preds = %76, %15, %31, %11
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @calcVertSlideMouseActiveEdges(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #16 !PGOFuncName !530 {
  %3 = alloca [2 x float], align 8
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %7 = load ptr, ptr %6, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %8 = load <2 x i32>, ptr %1, align 4, !tbaa !68
  %9 = sitofp <2 x i32> %8 to <2 x float>
  store <2 x float> %9, ptr %3, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %10 = load ptr, ptr %7, align 8, !tbaa !292
  %11 = getelementptr inbounds %struct.VertSlideData, ptr %7, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !312
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %10, i64 %13, i32 2
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %14, ptr noundef nonnull %3) #22
  call fastcc void @normalize_v2(ptr noundef nonnull %4) #22
  %15 = getelementptr inbounds %struct.VertSlideData, ptr %7, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !290
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %53

18:                                               ; preds = %2
  %19 = load ptr, ptr %7, align 8, !tbaa !292
  br label %20

20:                                               ; preds = %18, %48
  %21 = phi ptr [ %50, %48 ], [ %19, %18 ]
  %22 = phi i32 [ %49, %48 ], [ 0, %18 ]
  %23 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %21, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !521
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %48

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %21, i64 0, i32 2
  %28 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %21, i64 0, i32 4
  br label %29

29:                                               ; preds = %26, %29
  %30 = phi i64 [ 0, %26 ], [ %40, %29 ]
  %31 = phi i32 [ -1, %26 ], [ %39, %29 ]
  %32 = phi float [ 0xC7EFFFFFE0000000, %26 ], [ %37, %29 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %33 = load ptr, ptr %28, align 8, !tbaa !293
  %34 = getelementptr inbounds [2 x float], ptr %33, i64 %30
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %5, ptr noundef nonnull %27, ptr noundef %34) #22
  call fastcc void @normalize_v2(ptr noundef nonnull %5) #22
  %35 = call fastcc float @dot_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %36 = fcmp ogt float %35, %32
  %37 = select i1 %36, float %35, float %32
  %38 = trunc i64 %30 to i32
  %39 = select i1 %36, i32 %38, i32 %31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  %40 = add nuw nsw i64 %30, 1
  %41 = load i32, ptr %23, align 8, !tbaa !521
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %29, label %44, !llvm.loop !531

44:                                               ; preds = %29
  %45 = icmp eq i32 %39, -1
  br i1 %45, label %48, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %21, i64 0, i32 6
  store i32 %39, ptr %47, align 4, !tbaa !313
  br label %48

48:                                               ; preds = %44, %46, %20
  %49 = add nuw nsw i32 %22, 1
  %50 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %21, i64 1
  %51 = load i32, ptr %15, align 8, !tbaa !290
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %20, label %53, !llvm.loop !532

53:                                               ; preds = %48, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2(ptr nocapture noundef %0) unnamed_addr #9 !PGOFuncName !533 {
  tail call fastcc void @normalize_v2_v2(ptr noundef %0, ptr noundef %0) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !534 {
  %3 = tail call fastcc float @dot_v2v2(ptr noundef %1, ptr noundef %1) #22
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #20
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v2_v2fl(ptr noundef %0, ptr noundef %1, float noundef %7) #22
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v2(ptr noundef %0) #22
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !535 {
  %4 = load float, ptr %1, align 4, !tbaa !59
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !59
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !59
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !59
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @calcVertSlideMouseActiveVert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #17 !PGOFuncName !536 {
  %3 = alloca [2 x float], align 8
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %5 = load ptr, ptr %4, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %6 = load <2 x i32>, ptr %1, align 4, !tbaa !68
  %7 = sitofp <2 x i32> %6 to <2 x float>
  store <2 x float> %7, ptr %3, align 8, !tbaa !59
  %8 = getelementptr inbounds %struct.VertSlideData, ptr %5, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !290
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !tbaa !292
  %13 = getelementptr inbounds %struct.VertSlideData, ptr %5, i64 0, i32 6
  br label %14

14:                                               ; preds = %11, %22
  %15 = phi i32 [ 0, %11 ], [ %24, %22 ]
  %16 = phi float [ 0x47EFFFFFE0000000, %11 ], [ %23, %22 ]
  %17 = phi ptr [ %12, %11 ], [ %25, %22 ]
  %18 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %17, i64 0, i32 2
  %19 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %18) #22
  %20 = fcmp olt float %19, %16
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 %15, ptr %13, align 8, !tbaa !312
  br label %22

22:                                               ; preds = %14, %21
  %23 = phi float [ %19, %21 ], [ %16, %14 ]
  %24 = add nuw nsw i32 %15, 1
  %25 = getelementptr inbounds %struct.TransDataVertSlideVert, ptr %17, i64 1
  %26 = icmp eq i32 %24, %9
  br i1 %26, label %27, label %14, !llvm.loop !537

27:                                               ; preds = %22, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyBoneRoll(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !538 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca float, align 4
  %5 = alloca [64 x i8], align 16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %9 = load float, ptr %8, align 4, !tbaa !59
  store float %9, ptr %4, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef %0, ptr noundef nonnull %4) #20
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %11 = call zeroext i8 @applyNumInput(ptr noundef nonnull %10, ptr noundef nonnull %4) #20
  %12 = call zeroext i8 @hasNumInput(ptr noundef nonnull %10) #20
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #21
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %16 = load ptr, ptr %15, align 8, !tbaa !121
  %17 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef nonnull %17) #20
  %18 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.143, ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #21
  br label %24

19:                                               ; preds = %2
  %20 = load float, ptr %4, align 4, !tbaa !59
  %21 = fmul float %20, 0x404CA5DC20000000
  %22 = fpext float %21 to double
  %23 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull @.str.144, double noundef %22) #20
  br label %24

24:                                               ; preds = %19, %14
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !154
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %24, %45
  %29 = phi i32 [ %46, %45 ], [ 0, %24 ]
  %30 = phi ptr [ %47, %45 ], [ %7, %24 ]
  %31 = getelementptr inbounds %struct.TransData, ptr %30, i64 0, i32 16
  %32 = load i32, ptr %31, align 8, !tbaa !336
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %28
  %36 = and i32 %32, 2048
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.TransData, ptr %30, i64 0, i32 6
  %40 = load float, ptr %39, align 8, !tbaa !363
  %41 = load float, ptr %4, align 4, !tbaa !59
  %42 = fsub float %40, %41
  %43 = getelementptr inbounds %struct.TransData, ptr %30, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !364
  store float %42, ptr %44, align 4, !tbaa !59
  br label %45

45:                                               ; preds = %35, %38
  %46 = add nuw nsw i32 %29, 1
  %47 = getelementptr inbounds %struct.TransData, ptr %30, i64 1
  %48 = icmp eq i32 %46, %26
  br i1 %48, label %49, label %28, !llvm.loop !539

49:                                               ; preds = %45, %28, %24
  call void @recalcData(ptr noundef nonnull %0) #20
  %50 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %51 = load ptr, ptr %50, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %51, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyBakeTime(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !540 {
  %3 = alloca float, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #21
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16, i32 3
  %9 = load i8, ptr %8, align 8, !tbaa !541
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 21
  %12 = load float, ptr %11, align 8, !tbaa !59
  br i1 %10, label %25, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 16, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !68
  %16 = sitofp i32 %15 to float
  %17 = fsub float %12, %16
  %18 = fmul float %17, 0x3FB99999A0000000
  %19 = load i32, ptr %1, align 4, !tbaa !68
  %20 = sitofp i32 %19 to float
  %21 = fneg float %20
  %22 = tail call float @llvm.fmuladd.f32(float %12, float 0x3FB99999A0000000, float %21)
  %23 = fsub float %22, %18
  %24 = tail call float @llvm.fmuladd.f32(float %23, float 0x3FB99999A0000000, float %18)
  br label %30

25:                                               ; preds = %2
  %26 = load i32, ptr %1, align 4, !tbaa !68
  %27 = sitofp i32 %26 to float
  %28 = fsub float %12, %27
  %29 = fmul float %28, 0x3FB99999A0000000
  br label %30

30:                                               ; preds = %25, %13
  %31 = phi float [ %29, %25 ], [ %24, %13 ]
  store float %31, ptr %3, align 4, !tbaa !59
  call void @snapGridIncrement(ptr noundef nonnull %0, ptr noundef nonnull %3) #20
  %32 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %33 = call zeroext i8 @applyNumInput(ptr noundef nonnull %32, ptr noundef nonnull %3) #20
  %34 = call zeroext i8 @hasNumInput(ptr noundef nonnull %32) #20
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #21
  %37 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %38 = load ptr, ptr %37, align 8, !tbaa !121
  %39 = getelementptr inbounds %struct.Scene, ptr %38, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %32, ptr noundef nonnull %5, ptr noundef nonnull %39) #20
  %40 = load float, ptr %3, align 4, !tbaa !59
  %41 = fcmp ult float %40, 0.000000e+00
  %42 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  %43 = select i1 %41, ptr @.str.146, ptr @.str.145
  %44 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull %43, ptr noundef nonnull %5, ptr noundef nonnull %42) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #21
  br label %54

45:                                               ; preds = %30
  %46 = load float, ptr %3, align 4, !tbaa !59
  %47 = fcmp ult float %46, 0.000000e+00
  %48 = fpext float %46 to double
  %49 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  br i1 %47, label %52, label %50

50:                                               ; preds = %45
  %51 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.147, double noundef %48, ptr noundef nonnull %49) #20
  br label %54

52:                                               ; preds = %45
  %53 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 256, ptr noundef nonnull @.str.148, double noundef %48, ptr noundef nonnull %49) #20
  br label %54

54:                                               ; preds = %50, %52, %36
  %55 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !154
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %101

58:                                               ; preds = %54, %97
  %59 = phi ptr [ %99, %97 ], [ %7, %54 ]
  %60 = phi i32 [ %98, %97 ], [ 0, %54 ]
  %61 = getelementptr inbounds %struct.TransData, ptr %59, i64 0, i32 16
  %62 = load i32, ptr %61, align 8, !tbaa !336
  %63 = and i32 %62, 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %101

65:                                               ; preds = %58
  %66 = and i32 %62, 2048
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %97

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.TransData, ptr %59, i64 0, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !364
  %71 = icmp eq ptr %70, null
  br i1 %71, label %97, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.TransData, ptr %59, i64 0, i32 6
  %74 = load float, ptr %73, align 8, !tbaa !363
  %75 = load float, ptr %3, align 4, !tbaa !59
  %76 = getelementptr inbounds %struct.TransData, ptr %59, i64 0, i32 2
  %77 = load float, ptr %76, align 8, !tbaa !339
  %78 = call float @llvm.fmuladd.f32(float %75, float %77, float %74)
  store float %78, ptr %70, align 4, !tbaa !59
  %79 = getelementptr inbounds %struct.TransData, ptr %59, i64 0, i32 13
  %80 = load ptr, ptr %79, align 8, !tbaa !361
  %81 = getelementptr inbounds %struct.TransDataExtension, ptr %80, i64 0, i32 11
  %82 = load ptr, ptr %81, align 8, !tbaa !365
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
  %89 = phi float [ %85, %87 ], [ %78, %84 ], [ %78, %72 ]
  %90 = getelementptr inbounds %struct.TransDataExtension, ptr %80, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !405
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = load float, ptr %91, align 4, !tbaa !59
  %95 = fcmp ogt float %89, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store float %94, ptr %70, align 4, !tbaa !59
  br label %97

97:                                               ; preds = %68, %96, %93, %88, %65
  %98 = add nuw nsw i32 %60, 1
  %99 = getelementptr inbounds %struct.TransData, ptr %59, i64 1
  %100 = icmp eq i32 %98, %56
  br i1 %100, label %101, label %58, !llvm.loop !542

101:                                              ; preds = %97, %58, %54
  call void @recalcData(ptr noundef nonnull %0) #20
  %102 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %103 = load ptr, ptr %102, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %103, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyMirror(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !543 {
  %3 = alloca [3 x float], align 8
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #21
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %7 = load i32, ptr %6, align 4, !tbaa !92
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  br i1 %9, label %46, label %11

11:                                               ; preds = %2
  store float -1.000000e+00, ptr %10, align 8, !tbaa !59
  store <2 x float> <float -1.000000e+00, float -1.000000e+00>, ptr %3, align 8, !tbaa !59
  call void @size_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %3) #20
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !356
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  call void %13(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %4) #20
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %18 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 256, ptr noundef nonnull @.str.149, ptr noundef nonnull %17) #20
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !154
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !208
  br label %25

25:                                               ; preds = %22, %38
  %26 = phi i32 [ %39, %38 ], [ %20, %22 ]
  %27 = phi i32 [ %40, %38 ], [ 0, %22 ]
  %28 = phi ptr [ %41, %38 ], [ %24, %22 ]
  %29 = getelementptr inbounds %struct.TransData, ptr %28, i64 0, i32 16
  %30 = load i32, ptr %29, align 8, !tbaa !336
  %31 = and i32 %30, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = and i32 %30, 2048
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  call fastcc void @ElementResize(ptr noundef nonnull %0, ptr noundef nonnull %28, ptr noundef nonnull %4) #22
  %37 = load i32, ptr %19, align 8, !tbaa !154
  br label %38

38:                                               ; preds = %33, %36
  %39 = phi i32 [ %26, %33 ], [ %37, %36 ]
  %40 = add nuw nsw i32 %27, 1
  %41 = getelementptr inbounds %struct.TransData, ptr %28, i64 1
  %42 = icmp slt i32 %40, %39
  br i1 %42, label %25, label %43, !llvm.loop !544

43:                                               ; preds = %38, %25, %16
  call void @recalcData(ptr noundef nonnull %0) #20
  %44 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %45 = load ptr, ptr %44, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %45, ptr noundef nonnull %5) #20
  br label %80

46:                                               ; preds = %2
  store float 1.000000e+00, ptr %10, align 8, !tbaa !59
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %3, align 8, !tbaa !59
  call void @size_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %3) #20
  %47 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %48 = load i32, ptr %47, align 8, !tbaa !154
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !208
  br label %53

53:                                               ; preds = %50, %66
  %54 = phi i32 [ %67, %66 ], [ %48, %50 ]
  %55 = phi i32 [ %68, %66 ], [ 0, %50 ]
  %56 = phi ptr [ %69, %66 ], [ %52, %50 ]
  %57 = getelementptr inbounds %struct.TransData, ptr %56, i64 0, i32 16
  %58 = load i32, ptr %57, align 8, !tbaa !336
  %59 = and i32 %58, 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %53
  %62 = and i32 %58, 2048
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  call fastcc void @ElementResize(ptr noundef nonnull %0, ptr noundef nonnull %56, ptr noundef nonnull %4) #22
  %65 = load i32, ptr %47, align 8, !tbaa !154
  br label %66

66:                                               ; preds = %61, %64
  %67 = phi i32 [ %54, %61 ], [ %65, %64 ]
  %68 = add nuw nsw i32 %55, 1
  %69 = getelementptr inbounds %struct.TransData, ptr %56, i64 1
  %70 = icmp slt i32 %68, %67
  br i1 %70, label %53, label %71, !llvm.loop !545

71:                                               ; preds = %66, %53, %46
  call void @recalcData(ptr noundef nonnull %0) #20
  %72 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %73 = load i32, ptr %72, align 4, !tbaa !94
  %74 = and i32 %73, 32768
  %75 = icmp eq i32 %74, 0
  %76 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %77 = load ptr, ptr %76, align 8, !tbaa !62
  br i1 %75, label %79, label %78

78:                                               ; preds = %71
  call void @ED_area_headerprint(ptr noundef %77, ptr noundef nonnull @.str.150) #20
  br label %80

79:                                               ; preds = %71
  call void @ED_area_headerprint(ptr noundef %77, ptr noundef nonnull @.str.151) #20
  br label %80

80:                                               ; preds = %78, %79, %43
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyAlign(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !546 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %8) #22
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !154
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 57
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 37
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 32
  br label %17

17:                                               ; preds = %12, %46
  %18 = phi i32 [ %10, %12 ], [ %47, %46 ]
  %19 = phi i32 [ 0, %12 ], [ %48, %46 ]
  %20 = phi ptr [ %7, %12 ], [ %49, %46 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #21
  %21 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 16
  %22 = load i32, ptr %21, align 8, !tbaa !336
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %17
  %26 = and i32 %22, 2048
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load i32, ptr %13, align 4, !tbaa !94
  %30 = and i32 %29, 5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load ptr, ptr %14, align 8, !tbaa !260
  %34 = getelementptr inbounds %struct.ToolSettings, ptr %33, i64 0, i32 8
  %35 = load i16, ptr %34, align 2, !tbaa !547
  %36 = and i16 %35, 4
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32, %28
  %39 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %39) #22
  br label %40

40:                                               ; preds = %38, %32
  %41 = getelementptr inbounds %struct.TransData, ptr %20, i64 0, i32 10
  %42 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %5, ptr noundef nonnull %41) #20
  call void @mul_m3_m3m3(ptr noundef nonnull %4, ptr noundef nonnull %15, ptr noundef nonnull %5) #20
  %43 = load i16, ptr %16, align 2, !tbaa !153
  call fastcc void @ElementRotation(ptr noundef nonnull %0, ptr noundef nonnull %20, ptr noundef nonnull %4, i16 noundef signext %43) #22
  %44 = load i32, ptr %9, align 8, !tbaa !154
  br label %46

45:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #21
  br label %51

46:                                               ; preds = %40, %25
  %47 = phi i32 [ %44, %40 ], [ %18, %25 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #21
  %48 = add nuw nsw i32 %19, 1
  %49 = getelementptr inbounds %struct.TransData, ptr %20, i64 1
  %50 = icmp slt i32 %48, %47
  br i1 %50, label %17, label %51, !llvm.loop !548

51:                                               ; preds = %46, %2, %45
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %3) #22
  call void @recalcData(ptr noundef nonnull %0) #20
  %52 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %53 = load ptr, ptr %52, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %53, ptr noundef nonnull @.str.152) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applySeqSlide(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !549 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #21
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 7
  %7 = load i32, ptr %6, align 4, !tbaa !92
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #21
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !423
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  call void %12(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %13, ptr noundef nonnull %5, ptr noundef nonnull %4) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  br label %18

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  tail call void @snapGridIncrement(ptr noundef nonnull %0, ptr noundef nonnull %15) #20
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %17 = tail call zeroext i8 @applyNumInput(ptr noundef nonnull %16, ptr noundef nonnull %15) #20
  br label %18

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %20 = load <2 x float>, ptr %19, align 4, !tbaa !59
  %21 = fadd <2 x float> %20, <float 5.000000e-01, float 5.000000e-01>
  %22 = call <2 x float> @llvm.floor.v2f32(<2 x float> %21)
  store <2 x float> %22, ptr %19, align 4, !tbaa !59
  call fastcc void @headerSeqSlide(ptr noundef nonnull %0, ptr noundef nonnull %19, ptr noundef nonnull %3) #22
  call fastcc void @applySeqSlideValue(ptr noundef nonnull %0, ptr noundef nonnull %19) #22
  call void @recalcData(ptr noundef nonnull %0) #20
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %24 = load ptr, ptr %23, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %24, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @headerSeqSlide(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !550 {
  %4 = alloca [192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #21
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %6 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %5) #20
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %11) #20
  br label %19

12:                                               ; preds = %3
  %13 = load float, ptr %1, align 4, !tbaa !59
  %14 = fpext float %13 to double
  %15 = getelementptr inbounds float, ptr %1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !59
  %17 = fpext float %16 to double
  %18 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.153, double noundef %14, double noundef %17) #20
  br label %19

19:                                               ; preds = %12, %8
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 1
  %21 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.154, ptr noundef nonnull %4, ptr noundef nonnull %20) #20
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 59
  %23 = load ptr, ptr %22, align 8, !tbaa !180
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %19
  %26 = call ptr @WM_modalkeymap_find_propvalue(ptr noundef nonnull %23, i32 noundef 3) #20
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds i8, ptr %2, i64 %21
  %30 = trunc i64 %21 to i32
  %31 = sub i32 256, %30
  %32 = call i32 @WM_keymap_item_to_string(ptr noundef nonnull %26, ptr noundef %29, i32 noundef %31) #20
  %33 = sext i32 %32 to i64
  %34 = add i64 %21, %33
  br label %35

35:                                               ; preds = %25, %28, %19
  %36 = phi i64 [ %21, %19 ], [ %34, %28 ], [ %21, %25 ]
  %37 = getelementptr inbounds i8, ptr %2, i64 %36
  %38 = sub i64 256, %36
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !94
  %41 = lshr i32 %40, 24
  %42 = trunc i32 %41 to i8
  %43 = and i8 %42, 1
  %44 = call ptr @WM_bool_as_string(i8 noundef zeroext %43) #20
  %45 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %37, i64 noundef %38, ptr noundef nonnull @.str.155, ptr noundef %44) #20
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #21
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @applySeqSlideValue(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #17 !PGOFuncName !551 {
  %3 = alloca [2 x float], align 4
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !154
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !208
  %10 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  br label %11

11:                                               ; preds = %7, %36
  %12 = phi i32 [ 0, %7 ], [ %37, %36 ]
  %13 = phi ptr [ %9, %7 ], [ %38, %36 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %14 = getelementptr inbounds %struct.TransData, ptr %13, i64 0, i32 16
  %15 = load i32, ptr %14, align 8, !tbaa !336
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %11
  %19 = and i32 %15, 2048
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  call fastcc void @copy_v2_v2(ptr noundef nonnull %3, ptr noundef %1) #22
  %22 = getelementptr inbounds %struct.TransData, ptr %13, i64 0, i32 2
  %23 = load float, ptr %22, align 8, !tbaa !339
  call fastcc void @mul_v2_fl(ptr noundef nonnull %3, float noundef %23) #22
  %24 = getelementptr inbounds %struct.TransData, ptr %13, i64 0, i32 4
  %25 = load float, ptr %24, align 8, !tbaa !59
  %26 = load float, ptr %3, align 4, !tbaa !59
  %27 = fadd float %25, %26
  %28 = getelementptr inbounds %struct.TransData, ptr %13, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !338
  store float %27, ptr %29, align 4, !tbaa !59
  %30 = getelementptr inbounds %struct.TransData, ptr %13, i64 0, i32 4, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !59
  %32 = load float, ptr %10, align 4, !tbaa !59
  %33 = fadd float %31, %32
  %34 = getelementptr inbounds float, ptr %29, i64 1
  store float %33, ptr %34, align 4, !tbaa !59
  br label %36

35:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  br label %40

36:                                               ; preds = %21, %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  %37 = add nuw nsw i32 %12, 1
  %38 = getelementptr inbounds %struct.TransData, ptr %13, i64 1
  %39 = icmp eq i32 %37, %5
  br i1 %39, label %40, label %11, !llvm.loop !552

40:                                               ; preds = %36, %2, %35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyTimeTranslate(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !553 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 4
  %5 = alloca [256 x i8], align 16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #21
  %8 = load i32, ptr %1, align 4, !tbaa !68
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef %7, float noundef %9, float noundef %9, ptr noundef nonnull %3, ptr noundef nonnull %10) #20
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 22
  %12 = load i32, ptr %11, align 8, !tbaa !68
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef %7, float noundef %13, float noundef %13, ptr noundef nonnull %4, ptr noundef nonnull %14) #20
  %15 = load float, ptr %3, align 4, !tbaa !59
  %16 = load float, ptr %4, align 4, !tbaa !59
  %17 = fsub float %15, %16
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  store float %17, ptr %18, align 4, !tbaa !59
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 35
  store float %17, ptr %19, align 4, !tbaa !59
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %21 = call zeroext i8 @applyNumInput(ptr noundef nonnull %20, ptr noundef nonnull %19) #20
  %22 = load float, ptr %19, align 4, !tbaa !59
  store float %22, ptr %18, align 4, !tbaa !59
  call fastcc void @headerTimeTranslate(ptr noundef %0, ptr noundef nonnull %5) #22
  call fastcc void @applyTimeTranslateValue(ptr noundef %0) #22
  call void @recalcData(ptr noundef %0) #20
  %23 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %24 = load ptr, ptr %23, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %24, ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @headerTimeTranslate(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !554 {
  %3 = alloca [192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %5 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %4) #20
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %8 = load ptr, ptr %7, align 8, !tbaa !121
  br i1 %6, label %11, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %10) #20
  br label %48

11:                                               ; preds = %2
  %12 = tail call fastcc signext i16 @getAnimEdit_SnapMode(ptr noundef %0) #22
  %13 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 55
  %14 = load i16, ptr %13, align 4, !tbaa !236
  %15 = sitofp i16 %14 to double
  %16 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 65
  %17 = load float, ptr %16, align 4, !tbaa !237
  %18 = fpext float %17 to double
  %19 = fdiv double %15, %18
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %21 = load float, ptr %20, align 4, !tbaa !59
  switch i16 %12, label %44 [
    i16 1, label %22
    i16 5, label %25
    i16 4, label %33
    i16 2, label %40
  ]

22:                                               ; preds = %11
  %23 = fadd float %21, 5.000000e-01
  %24 = tail call float @llvm.floor.f32(float %23)
  br label %44

25:                                               ; preds = %11
  %26 = fpext float %21 to double
  %27 = fdiv double %26, %19
  %28 = fadd double %27, 5.000000e-01
  %29 = fptrunc double %28 to float
  %30 = tail call float @llvm.floor.f32(float %29)
  %31 = fpext float %30 to double
  %32 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 64, ptr noundef nonnull @.str.158, double noundef %31) #20
  br label %48

33:                                               ; preds = %11
  %34 = fpext float %21 to double
  %35 = fdiv double %34, %19
  %36 = fptrunc double %35 to float
  %37 = fptosi float %36 to i32
  %38 = fpext float %36 to double
  %39 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 64, ptr noundef nonnull @.str.157, i32 noundef %37, double noundef %38) #20
  br label %48

40:                                               ; preds = %11
  %41 = fptosi float %21 to i32
  %42 = fpext float %21 to double
  %43 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 64, ptr noundef nonnull @.str.156, i32 noundef %41, double noundef %42) #20
  br label %48

44:                                               ; preds = %11, %22
  %45 = phi float [ %24, %22 ], [ %21, %11 ]
  %46 = fpext float %45 to double
  %47 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 64, ptr noundef nonnull @.str.83, double noundef %46) #20
  br label %48

48:                                               ; preds = %40, %25, %44, %33, %9
  %49 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %1, i64 noundef 256, ptr noundef nonnull @.str.159, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @applyTimeTranslateValue(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !555 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  %4 = tail call fastcc signext i16 @getAnimEdit_SnapMode(ptr noundef %0) #22
  %5 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 55
  %6 = load i16, ptr %5, align 4, !tbaa !236
  %7 = sitofp i16 %6 to double
  %8 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 65
  %9 = load float, ptr %8, align 4, !tbaa !237
  %10 = fpext float %9 to double
  %11 = fdiv double %7, %10
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !154
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %81

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !556
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !208
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  br label %22

22:                                               ; preds = %15, %71
  %23 = phi ptr [ %19, %15 ], [ %77, %71 ]
  %24 = phi ptr [ %17, %15 ], [ %78, %71 ]
  %25 = phi i32 [ 0, %15 ], [ %76, %71 ]
  %26 = load i8, ptr %20, align 8, !tbaa !34
  %27 = icmp eq i8 %26, 13
  br i1 %27, label %53, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 15
  %30 = load ptr, ptr %29, align 8, !tbaa !557
  %31 = icmp eq ptr %30, null
  br i1 %31, label %53, label %32

32:                                               ; preds = %28
  %33 = icmp eq i8 %26, 8
  br i1 %33, label %53, label %34

34:                                               ; preds = %32
  %35 = load float, ptr %21, align 4, !tbaa !59
  switch i16 %4, label %46 [
    i16 5, label %36
    i16 1, label %43
  ]

36:                                               ; preds = %34
  %37 = fpext float %35 to double
  %38 = fdiv double %37, %11
  %39 = fadd double %38, 5.000000e-01
  %40 = tail call double @llvm.floor.f64(double %39)
  %41 = fmul double %11, %40
  %42 = fptrunc double %41 to float
  br label %46

43:                                               ; preds = %34
  %44 = fadd float %35, 5.000000e-01
  %45 = tail call float @llvm.floor.f32(float %44)
  br label %46

46:                                               ; preds = %34, %43, %36
  %47 = phi float [ %42, %36 ], [ %45, %43 ], [ %35, %34 ]
  %48 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 6
  %49 = load float, ptr %48, align 8, !tbaa !363
  %50 = tail call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %30, float noundef %49, i16 noundef signext 2) #20
  %51 = fadd float %47, %50
  %52 = tail call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %30, float noundef %51, i16 noundef signext 1) #20
  br label %71

53:                                               ; preds = %22, %32, %28
  %54 = phi ptr [ %30, %32 ], [ null, %28 ], [ null, %22 ]
  %55 = load float, ptr %21, align 4, !tbaa !59
  switch i16 %4, label %66 [
    i16 5, label %56
    i16 1, label %63
  ]

56:                                               ; preds = %53
  %57 = fpext float %55 to double
  %58 = fdiv double %57, %11
  %59 = fadd double %58, 5.000000e-01
  %60 = tail call double @llvm.floor.f64(double %59)
  %61 = fmul double %11, %60
  %62 = fptrunc double %61 to float
  br label %66

63:                                               ; preds = %53
  %64 = fadd float %55, 5.000000e-01
  %65 = tail call float @llvm.floor.f32(float %64)
  br label %66

66:                                               ; preds = %53, %63, %56
  %67 = phi float [ %62, %56 ], [ %65, %63 ], [ %55, %53 ]
  %68 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 6
  %69 = load float, ptr %68, align 8, !tbaa !363
  %70 = fadd float %67, %69
  br label %71

71:                                               ; preds = %66, %46
  %72 = phi float [ %70, %66 ], [ %52, %46 ]
  %73 = phi ptr [ %54, %66 ], [ %30, %46 ]
  %74 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !364
  store float %72, ptr %75, align 4, !tbaa !59
  tail call fastcc void @doAnimEdit_SnapFrame(ptr noundef nonnull %0, ptr noundef nonnull %23, ptr noundef %24, ptr noundef %73, i16 noundef signext %4) #22
  %76 = add nuw nsw i32 %25, 1
  %77 = getelementptr inbounds %struct.TransData, ptr %23, i64 1
  %78 = getelementptr inbounds %struct.TransData2D, ptr %24, i64 1
  %79 = load i32, ptr %12, align 8, !tbaa !154
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %22, label %81, !llvm.loop !558

81:                                               ; preds = %71, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc signext i16 @getAnimEdit_SnapMode(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !559 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %3 = load i8, ptr %2, align 8, !tbaa !34
  switch i8 %3, label %37 [
    i8 12, label %4
    i8 2, label %14
    i8 13, label %23
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = icmp eq ptr %8, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.SpaceAction, ptr %8, i64 0, i32 10
  %12 = load i8, ptr %11, align 1, !tbaa !560
  %13 = zext i8 %12 to i16
  br label %32

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  %17 = getelementptr inbounds %struct.ScrArea, ptr %16, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  %19 = icmp eq ptr %18, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.SpaceIpo, ptr %18, i64 0, i32 10
  %22 = load i16, ptr %21, align 2, !tbaa !561
  br label %32

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %25 = load ptr, ptr %24, align 8, !tbaa !62
  %26 = getelementptr inbounds %struct.ScrArea, ptr %25, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !63
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.SpaceNla, ptr %27, i64 0, i32 6
  %31 = load i16, ptr %30, align 8, !tbaa !563
  br label %32

32:                                               ; preds = %29, %20, %10
  %33 = phi i16 [ %13, %10 ], [ %22, %20 ], [ %31, %29 ]
  %34 = freeze i16 %33
  %35 = icmp eq i16 %34, 0
  %36 = select i1 %35, i16 2, i16 0
  br label %37

37:                                               ; preds = %1, %23, %14, %4, %32
  %38 = phi i16 [ %34, %32 ], [ 0, %4 ], [ 0, %14 ], [ 0, %23 ], [ 0, %1 ]
  %39 = phi i16 [ %36, %32 ], [ 2, %4 ], [ 2, %14 ], [ 2, %23 ], [ 2, %1 ]
  %40 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !91
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i16 %38, i16 %39
  ret i16 %44
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #7

; Function Attrs: optsize
declare float @BKE_nla_tweakedit_remap(ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @doAnimEdit_SnapFrame(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4) unnamed_addr #0 !PGOFuncName !565 {
  switch i16 %4, label %64 [
    i16 4, label %6
    i16 2, label %6
    i16 3, label %41
  ]

6:                                                ; preds = %5, %5
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %8 = load ptr, ptr %7, align 8, !tbaa !121
  %9 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 55
  %10 = load i16, ptr %9, align 4, !tbaa !236
  %11 = sitofp i16 %10 to double
  %12 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 65
  %13 = load float, ptr %12, align 4, !tbaa !237
  %14 = fpext float %13 to double
  %15 = fdiv double %11, %14
  %16 = icmp eq ptr %3, null
  %17 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !364
  %19 = load float, ptr %18, align 4, !tbaa !59
  br i1 %16, label %22, label %20

20:                                               ; preds = %6
  %21 = tail call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %3, float noundef %19, i16 noundef signext 2) #20
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
  br i1 %16, label %39, label %36

36:                                               ; preds = %34
  %37 = tail call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %3, float noundef %35, i16 noundef signext 1) #20
  %38 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 5
  br label %60

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 5
  br label %60

41:                                               ; preds = %5
  %42 = icmp eq ptr %3, null
  %43 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !364
  %45 = load float, ptr %44, align 4, !tbaa !59
  br i1 %42, label %54, label %46

46:                                               ; preds = %41
  %47 = tail call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %3, float noundef %45, i16 noundef signext 2) #20
  %48 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %49 = load ptr, ptr %48, align 8, !tbaa !121
  %50 = getelementptr inbounds %struct.Scene, ptr %49, i64 0, i32 24
  %51 = tail call i32 @ED_markers_find_nearest_marker_time(ptr noundef nonnull %50, float noundef %47) #20
  %52 = sitofp i32 %51 to float
  %53 = tail call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %3, float noundef %52, i16 noundef signext 1) #20
  br label %60

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %56 = load ptr, ptr %55, align 8, !tbaa !121
  %57 = getelementptr inbounds %struct.Scene, ptr %56, i64 0, i32 24
  %58 = tail call i32 @ED_markers_find_nearest_marker_time(ptr noundef nonnull %57, float noundef %45) #20
  %59 = sitofp i32 %58 to float
  br label %60

60:                                               ; preds = %39, %36, %54, %46
  %61 = phi ptr [ %43, %46 ], [ %43, %54 ], [ %38, %36 ], [ %40, %39 ]
  %62 = phi float [ %53, %46 ], [ %59, %54 ], [ %37, %36 ], [ %35, %39 ]
  %63 = load ptr, ptr %61, align 8, !tbaa !364
  store float %62, ptr %63, align 4, !tbaa !59
  br label %64

64:                                               ; preds = %60, %5
  %65 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 16
  %66 = load i32, ptr %65, align 8, !tbaa !336
  %67 = and i32 %66, 131072
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.TransData2D, ptr %2, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !566
  %72 = icmp eq ptr %71, null
  br i1 %72, label %83, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.TransData2D, ptr %2, i64 0, i32 4
  %75 = load float, ptr %74, align 8, !tbaa !59
  %76 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !364
  %78 = load float, ptr %77, align 4, !tbaa !59
  %79 = fadd float %75, %78
  %80 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 6
  %81 = load float, ptr %80, align 8, !tbaa !363
  %82 = fsub float %79, %81
  store float %82, ptr %71, align 4, !tbaa !59
  br label %83

83:                                               ; preds = %73, %69, %64
  %84 = and i32 %66, 262144
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %100, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.TransData2D, ptr %2, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !568
  %89 = icmp eq ptr %88, null
  br i1 %89, label %100, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.TransData2D, ptr %2, i64 0, i32 5
  %92 = load float, ptr %91, align 8, !tbaa !59
  %93 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 5
  %94 = load ptr, ptr %93, align 8, !tbaa !364
  %95 = load float, ptr %94, align 4, !tbaa !59
  %96 = fadd float %92, %95
  %97 = getelementptr inbounds %struct.TransData, ptr %1, i64 0, i32 6
  %98 = load float, ptr %97, align 8, !tbaa !363
  %99 = fsub float %96, %98
  store float %99, ptr %88, align 4, !tbaa !59
  br label %100

100:                                              ; preds = %90, %86, %83
  ret void
}

; Function Attrs: optsize
declare i32 @ED_markers_find_nearest_marker_time(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyTimeSlide(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !569 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 4
  %5 = alloca [256 x i8], align 16
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %9 = load ptr, ptr %8, align 8, !tbaa !141
  %10 = load float, ptr %9, align 4, !tbaa !59
  %11 = getelementptr inbounds float, ptr %9, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #21
  %13 = load i32, ptr %1, align 4, !tbaa !68
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds i32, ptr %1, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !68
  %17 = sitofp i32 %16 to float
  %18 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef %7, float noundef %14, float noundef %17, ptr noundef nonnull %3, ptr noundef nonnull %18) #20
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 22
  %20 = load i32, ptr %19, align 8, !tbaa !68
  %21 = sitofp i32 %20 to float
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 22, i64 1
  %23 = load i32, ptr %22, align 4, !tbaa !68
  %24 = sitofp i32 %23 to float
  %25 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef %7, float noundef %21, float noundef %24, ptr noundef nonnull %4, ptr noundef nonnull %25) #20
  %26 = load float, ptr %3, align 4, !tbaa !59
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  store float %26, ptr %27, align 4, !tbaa !59
  %28 = load float, ptr %4, align 4, !tbaa !59
  %29 = fsub float %26, %28
  %30 = fmul float %29, 2.000000e+00
  %31 = fsub float %12, %10
  %32 = fdiv float %30, %31
  %33 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 35
  store float %32, ptr %33, align 4, !tbaa !59
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %35 = call zeroext i8 @applyNumInput(ptr noundef nonnull %34, ptr noundef nonnull %33) #20
  %36 = load float, ptr %33, align 4, !tbaa !59
  %37 = fmul float %31, %36
  %38 = fmul float %37, 5.000000e-01
  %39 = load float, ptr %4, align 4, !tbaa !59
  %40 = fadd float %39, %38
  store float %40, ptr %27, align 4, !tbaa !59
  call fastcc void @headerTimeSlide(ptr noundef %0, float noundef %39, ptr noundef nonnull %5) #22
  %41 = load float, ptr %4, align 4, !tbaa !59
  call fastcc void @applyTimeSlideValue(ptr noundef %0, float noundef %41) #22
  call void @recalcData(ptr noundef %0) #20
  %42 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %43 = load ptr, ptr %42, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %43, ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @headerTimeSlide(ptr noundef %0, float noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !570 {
  %4 = alloca [192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #21
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %6 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %5) #20
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %11) #20
  br label %32

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %14 = load ptr, ptr %13, align 8, !tbaa !141
  %15 = load float, ptr %14, align 4, !tbaa !59
  %16 = getelementptr inbounds float, ptr %14, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !59
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %19 = load float, ptr %18, align 4, !tbaa !59
  %20 = fsub float %19, %1
  %21 = fmul float %20, 2.000000e+00
  %22 = fsub float %17, %15
  %23 = fdiv float %21, %22
  %24 = fcmp olt float %23, -1.000000e+00
  br i1 %24, label %28, label %25

25:                                               ; preds = %12
  %26 = fcmp ogt float %23, 1.000000e+00
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %12, %25, %27
  %29 = phi float [ 1.000000e+00, %27 ], [ %23, %25 ], [ -1.000000e+00, %12 ]
  %30 = fpext float %29 to double
  %31 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.83, double noundef %30) #20
  br label %32

32:                                               ; preds = %28, %8
  %33 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 256, ptr noundef nonnull @.str.160, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @applyTimeSlideValue(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #0 !PGOFuncName !571 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !208
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %6 = load ptr, ptr %5, align 8, !tbaa !141
  %7 = load float, ptr %6, align 4, !tbaa !59
  %8 = getelementptr inbounds float, ptr %6, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !59
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %11 = load i8, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i8 %11, 12
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %15 = load ptr, ptr %14, align 8, !tbaa !62
  %16 = getelementptr inbounds %struct.ScrArea, ptr %15, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !63
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %19 = load float, ptr %18, align 4, !tbaa !59
  %20 = getelementptr inbounds %struct.SpaceAction, ptr %17, i64 0, i32 12
  store float %19, ptr %20, align 4, !tbaa !572
  br label %21

21:                                               ; preds = %13, %2
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !154
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %76

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %27 = fcmp olt float %7, %1
  %28 = fcmp ogt float %9, %1
  %29 = select i1 %27, i1 %28, i1 false
  %30 = fsub float %9, %1
  %31 = fsub float %1, %7
  br label %32

32:                                               ; preds = %25, %71
  %33 = phi ptr [ %4, %25 ], [ %73, %71 ]
  %34 = phi i32 [ 0, %25 ], [ %72, %71 ]
  %35 = load i8, ptr %10, align 8, !tbaa !34
  %36 = icmp eq i8 %35, 13
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load float, ptr %26, align 4, !tbaa !59
  br label %46

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.TransData, ptr %33, i64 0, i32 15
  %41 = load ptr, ptr %40, align 8, !tbaa !557
  %42 = load float, ptr %26, align 4, !tbaa !59
  %43 = icmp eq ptr %41, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = tail call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %41, float noundef %42, i16 noundef signext 1) #20
  br label %46

46:                                               ; preds = %37, %44, %39
  %47 = phi float [ %45, %44 ], [ %42, %39 ], [ %38, %37 ]
  br i1 %29, label %48, label %71

48:                                               ; preds = %46
  %49 = fcmp olt float %47, %7
  %50 = fcmp ogt float %47, %9
  %51 = select i1 %50, float %9, float %47
  %52 = select i1 %49, float %7, float %51
  %53 = getelementptr inbounds %struct.TransData, ptr %33, i64 0, i32 6
  %54 = load float, ptr %53, align 8, !tbaa !363
  %55 = fcmp olt float %54, %1
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = fsub float %1, %54
  %58 = fsub float %52, %7
  %59 = fneg float %57
  %60 = fdiv float %59, %31
  %61 = tail call float @llvm.fmuladd.f32(float %60, float %58, float %52)
  br label %67

62:                                               ; preds = %48
  %63 = fsub float %54, %1
  %64 = fdiv float %63, %30
  %65 = fsub float %9, %52
  %66 = tail call float @llvm.fmuladd.f32(float %64, float %65, float %52)
  br label %67

67:                                               ; preds = %62, %56
  %68 = phi float [ %61, %56 ], [ %66, %62 ]
  %69 = getelementptr inbounds %struct.TransData, ptr %33, i64 0, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !364
  store float %68, ptr %70, align 4, !tbaa !59
  br label %71

71:                                               ; preds = %67, %46
  %72 = add nuw nsw i32 %34, 1
  %73 = getelementptr inbounds %struct.TransData, ptr %33, i64 1
  %74 = load i32, ptr %22, align 8, !tbaa !154
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %32, label %76, !llvm.loop !573

76:                                               ; preds = %71, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @applyTimeScale(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !574 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %5 = load float, ptr %4, align 4, !tbaa !59
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 35
  store float %5, ptr %6, align 4, !tbaa !59
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %8 = tail call zeroext i8 @applyNumInput(ptr noundef nonnull %7, ptr noundef nonnull %6) #20
  %9 = load float, ptr %6, align 4, !tbaa !59
  store float %9, ptr %4, align 4, !tbaa !59
  call fastcc void @headerTimeScale(ptr noundef %0, ptr noundef nonnull %3) #22
  call fastcc void @applyTimeScaleValue(ptr noundef %0) #22
  call void @recalcData(ptr noundef %0) #20
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  call void @ED_area_headerprint(ptr noundef %11, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @headerTimeScale(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !575 {
  %3 = alloca [192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #21
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 15
  %5 = tail call zeroext i8 @hasNumInput(ptr noundef nonnull %4) #20
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 38
  call void @outputNumInput(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %10) #20
  br label %16

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  %13 = load float, ptr %12, align 4, !tbaa !59
  %14 = fpext float %13 to double
  %15 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 64, ptr noundef nonnull @.str.83, double noundef %14) #20
  br label %16

16:                                               ; preds = %11, %7
  %17 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %1, i64 noundef 256, ptr noundef nonnull @.str.161, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @applyTimeScaleValue(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !576 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  %4 = tail call fastcc signext i16 @getAnimEdit_SnapMode(ptr noundef %0) #22
  %5 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 55
  %6 = load i16, ptr %5, align 4, !tbaa !236
  %7 = sitofp i16 %6 to double
  %8 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 65
  %9 = load float, ptr %8, align 4, !tbaa !237
  %10 = fpext float %9 to double
  %11 = fdiv double %7, %10
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !154
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %65

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !556
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !208
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %21 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 47
  br label %23

23:                                               ; preds = %15, %52
  %24 = phi ptr [ %19, %15 ], [ %61, %52 ]
  %25 = phi ptr [ %17, %15 ], [ %62, %52 ]
  %26 = phi i32 [ 0, %15 ], [ %60, %52 ]
  %27 = load i8, ptr %20, align 8, !tbaa !34
  %28 = icmp eq i8 %27, 13
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.TransData, ptr %24, i64 0, i32 15
  %31 = load ptr, ptr %30, align 8, !tbaa !557
  br label %32

32:                                               ; preds = %23, %29
  %33 = phi ptr [ %31, %29 ], [ null, %23 ]
  %34 = load i32, ptr %21, align 8, !tbaa !230
  %35 = sitofp i32 %34 to float
  %36 = load float, ptr %22, align 4, !tbaa !59
  switch i16 %4, label %47 [
    i16 5, label %37
    i16 1, label %44
  ]

37:                                               ; preds = %32
  %38 = fpext float %36 to double
  %39 = fdiv double %38, %11
  %40 = fadd double %39, 5.000000e-01
  %41 = tail call double @llvm.floor.f64(double %40)
  %42 = fmul double %11, %41
  %43 = fptrunc double %42 to float
  br label %47

44:                                               ; preds = %32
  %45 = fadd float %36, 5.000000e-01
  %46 = tail call float @llvm.floor.f32(float %45)
  br label %47

47:                                               ; preds = %32, %44, %37
  %48 = phi float [ %43, %37 ], [ %46, %44 ], [ %36, %32 ]
  %49 = icmp eq ptr %33, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = tail call float @BKE_nla_tweakedit_remap(ptr noundef nonnull %33, float noundef %35, i16 noundef signext 1) #20
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi float [ %51, %50 ], [ %35, %47 ]
  %54 = getelementptr inbounds %struct.TransData, ptr %24, i64 0, i32 6
  %55 = load float, ptr %54, align 8, !tbaa !363
  %56 = fsub float %55, %53
  %57 = tail call float @llvm.fmuladd.f32(float %56, float %48, float %53)
  %58 = getelementptr inbounds %struct.TransData, ptr %24, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !364
  store float %57, ptr %59, align 4, !tbaa !59
  tail call fastcc void @doAnimEdit_SnapFrame(ptr noundef nonnull %0, ptr noundef %24, ptr noundef %25, ptr noundef %33, i16 noundef signext %4) #22
  %60 = add nuw nsw i32 %26, 1
  %61 = getelementptr inbounds %struct.TransData, ptr %24, i64 1
  %62 = getelementptr inbounds %struct.TransData2D, ptr %25, i64 1
  %63 = load i32, ptr %12, align 8, !tbaa !154
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %23, label %65, !llvm.loop !577

65:                                               ; preds = %52, %1
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #19

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind optsize }
attributes #21 = { nounwind }
attributes #22 = { optsize }

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
!62 = !{!35, !41, i64 1240}
!63 = !{!64, !41, i64 96}
!64 = !{!"ScrArea", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !53, i64 56, !37, i64 72, !37, i64 73, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !39, i64 84, !37, i64 86, !37, i64 87, !41, i64 88, !44, i64 96, !44, i64 112, !44, i64 128, !44, i64 144}
!65 = !{!"transform.c:convertViewVec2D_mask"}
!66 = !{!"transform.c:convertViewVec2D"}
!67 = !{!"transform.c:zero_v3"}
!68 = !{!36, !36, i64 0}
!69 = !{!70, !41, i64 40}
!70 = !{!"SpaceImage", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !36, i64 36, !41, i64 40, !71, i64 48, !41, i64 88, !72, i64 96, !73, i64 5360, !41, i64 10520, !37, i64 10528, !40, i64 10536, !40, i64 10540, !40, i64 10544, !40, i64 10548, !40, i64 10552, !37, i64 10556, !37, i64 10557, !39, i64 10558, !39, i64 10560, !39, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !74, i64 10568}
!71 = !{!"ImageUser", !41, i64 0, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !36, i64 36}
!72 = !{!"Scopes", !36, i64 0, !36, i64 4, !36, i64 8, !40, i64 12, !36, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !40, i64 32, !36, i64 36, !37, i64 40, !73, i64 64, !41, i64 5224, !41, i64 5232, !41, i64 5240, !41, i64 5248, !36, i64 5256, !36, i64 5260}
!73 = !{!"Histogram", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !40, i64 5128, !40, i64 5132, !39, i64 5136, !39, i64 5138, !36, i64 5140, !37, i64 5144}
!74 = !{!"MaskSpaceInfo", !41, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!75 = !{!76, !41, i64 64}
!76 = !{!"SpaceClip", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !77, i64 56, !41, i64 64, !78, i64 72, !36, i64 208, !39, i64 212, !39, i64 214, !36, i64 216, !37, i64 220, !40, i64 228, !40, i64 232, !36, i64 236, !37, i64 240, !37, i64 304, !36, i64 368, !39, i64 372, !39, i64 374, !36, i64 376, !36, i64 380, !37, i64 384, !74, i64 392}
!77 = !{!"MovieClipUser", !36, i64 0, !39, i64 4, !39, i64 6}
!78 = !{!"MovieClipScopes", !39, i64 0, !39, i64 2, !36, i64 4, !36, i64 8, !36, i64 12, !79, i64 16, !41, i64 80, !41, i64 88, !37, i64 96, !39, i64 104, !39, i64 106, !36, i64 108, !41, i64 112, !41, i64 120, !37, i64 128}
!79 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !36, i64 56, !36, i64 60}
!80 = !{!"transform.c:copy_v2_v2"}
!81 = !{!39, !39, i64 0}
!82 = !{!35, !36, i64 0}
!83 = !{!70, !36, i64 36}
!84 = !{!85, !41, i64 128}
!85 = !{!"wmKeyMap", !41, i64 0, !41, i64 8, !44, i64 16, !44, i64 32, !37, i64 48, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !41, i64 120, !41, i64 128}
!86 = !{!35, !36, i64 640}
!87 = !{!88, !39, i64 18}
!88 = !{!"wmEvent", !41, i64 0, !41, i64 8, !39, i64 16, !39, i64 18, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !39, i64 44, !39, i64 46, !36, i64 48, !36, i64 52, !45, i64 56, !36, i64 64, !36, i64 68, !39, i64 72, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !41, i64 88, !41, i64 96, !39, i64 104, !39, i64 106, !36, i64 108, !41, i64 112}
!89 = !{!88, !39, i64 16}
!90 = !{!35, !41, i64 1232}
!91 = !{!35, !36, i64 8}
!92 = !{!35, !36, i64 260}
!93 = !{!35, !39, i64 12}
!94 = !{!35, !36, i64 4}
!95 = !{!35, !41, i64 1312}
!96 = !{!97, !39, i64 136}
!97 = !{!"Object", !98, i64 0, !41, i64 120, !41, i64 128, !39, i64 136, !39, i64 138, !36, i64 140, !36, i64 144, !36, i64 148, !37, i64 152, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288, !41, i64 296, !41, i64 304, !99, i64 312, !41, i64 360, !44, i64 368, !44, i64 384, !44, i64 400, !44, i64 416, !36, i64 432, !36, i64 436, !41, i64 440, !41, i64 448, !36, i64 456, !36, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !40, i64 616, !40, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !36, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !36, i64 968, !36, i64 972, !36, i64 976, !36, i64 980, !36, i64 984, !40, i64 988, !40, i64 992, !40, i64 996, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !40, i64 1028, !40, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !40, i64 1048, !40, i64 1052, !44, i64 1056, !44, i64 1072, !44, i64 1088, !44, i64 1104, !40, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !36, i64 1144, !36, i64 1148, !41, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !44, i64 1176, !44, i64 1192, !44, i64 1208, !44, i64 1224, !41, i64 1240, !41, i64 1248, !41, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !40, i64 1268, !41, i64 1272, !41, i64 1280, !41, i64 1288, !41, i64 1296, !100, i64 1304, !100, i64 1312, !36, i64 1320, !36, i64 1324, !44, i64 1328, !44, i64 1344, !41, i64 1360, !41, i64 1368, !41, i64 1376, !37, i64 1384, !41, i64 1392, !44, i64 1400, !41, i64 1416}
!98 = !{!"ID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !39, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !41, i64 112}
!99 = !{!"bAnimVizSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44}
!100 = !{!"long", !37, i64 0}
!101 = !{!35, !39, i64 80}
!102 = !{!35, !39, i64 1154}
!103 = !{!88, !36, i64 24}
!104 = !{!88, !36, i64 52}
!105 = !{!35, !40, i64 644}
!106 = !{!107, !40, i64 256}
!107 = !{!"View3D", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !37, i64 56, !40, i64 72, !40, i64 76, !37, i64 80, !37, i64 81, !36, i64 84, !36, i64 88, !39, i64 92, !39, i64 94, !41, i64 96, !41, i64 104, !52, i64 112, !44, i64 128, !41, i64 144, !41, i64 152, !37, i64 160, !36, i64 224, !36, i64 228, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !37, i64 260, !37, i64 272, !39, i64 284, !39, i64 286, !39, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !44, i64 296, !44, i64 312, !44, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !41, i64 352, !41, i64 360, !41, i64 368}
!108 = !{!88, !39, i64 72}
!109 = !{!88, !39, i64 76}
!110 = !{!35, !39, i64 1158}
!111 = !{!35, !39, i64 1152}
!112 = !{!35, !41, i64 40}
!113 = !{!"transform.c:copy_v2_v2_int"}
!114 = !{!"transform.c:initTranslation"}
!115 = !{!35, !41, i64 1288}
!116 = !{!35, !41, i64 32}
!117 = !{!35, !39, i64 698}
!118 = !{!35, !39, i64 462}
!119 = !{!35, !39, i64 440}
!120 = !{!56, !40, i64 848}
!121 = !{!35, !41, i64 1256}
!122 = !{!123, !37, i64 4604}
!123 = !{!"Scene", !98, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !44, i64 152, !41, i64 168, !41, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !36, i64 232, !36, i64 236, !36, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !124, i64 280, !131, i64 4264, !44, i64 4296, !44, i64 4312, !41, i64 4328, !41, i64 4336, !41, i64 4344, !41, i64 4352, !41, i64 4360, !41, i64 4368, !39, i64 4376, !39, i64 4378, !36, i64 4380, !44, i64 4384, !132, i64 4400, !133, i64 4416, !136, i64 4600, !41, i64 4608, !137, i64 4616, !41, i64 4640, !100, i64 4648, !100, i64 4656, !126, i64 4664, !127, i64 4824, !138, i64 4888, !41, i64 4952}
!124 = !{!"RenderData", !125, i64 0, !41, i64 248, !41, i64 256, !128, i64 264, !129, i64 328, !36, i64 400, !36, i64 404, !36, i64 408, !40, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !39, i64 432, !39, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !36, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !36, i64 484, !36, i64 488, !39, i64 492, !39, i64 494, !36, i64 496, !36, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !36, i64 516, !36, i64 520, !36, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !52, i64 544, !52, i64 560, !53, i64 576, !44, i64 592, !39, i64 608, !39, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !36, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !40, i64 660, !40, i64 664, !39, i64 668, !39, i64 670, !40, i64 672, !40, i64 676, !37, i64 680, !36, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !36, i64 2520, !39, i64 2524, !39, i64 2526, !40, i64 2528, !40, i64 2532, !39, i64 2536, !39, i64 2538, !40, i64 2540, !39, i64 2544, !39, i64 2546, !36, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !40, i64 2560, !40, i64 2564, !41, i64 2568, !36, i64 2576, !40, i64 2580, !37, i64 2584, !130, i64 2616, !36, i64 3976, !36, i64 3980}
!125 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !40, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !126, i64 24, !127, i64 184}
!126 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !40, i64 136, !40, i64 140, !41, i64 144, !41, i64 152}
!127 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!128 = !{!"QuicktimeCodecSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !39, i64 48, !39, i64 50, !36, i64 52, !36, i64 56, !36, i64 60}
!129 = !{!"FFMpegCodecData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !40, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !41, i64 64}
!130 = !{!"BakeData", !125, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !40, i64 1280, !40, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!131 = !{!"AudioData", !36, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !36, i64 16, !39, i64 20, !39, i64 22, !40, i64 24, !40, i64 28}
!132 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!133 = !{!"GameData", !132, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !134, i64 40, !39, i64 64, !39, i64 66, !40, i64 68, !135, i64 72, !40, i64 128, !40, i64 132, !36, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180}
!134 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !40, i64 8, !40, i64 12, !41, i64 16}
!135 = !{!"RecastData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !36, i64 40, !40, i64 44, !40, i64 48, !39, i64 52, !39, i64 54}
!136 = !{!"UnitSettings", !40, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!137 = !{!"PhysicsSettings", !37, i64 0, !36, i64 12, !36, i64 16, !36, i64 20}
!138 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!139 = !{!35, !36, i64 444}
!140 = !{!"transform.c:initEdgeSlide"}
!141 = !{!35, !41, i64 1136}
!142 = !{!35, !41, i64 1144}
!143 = !{!"transform.c:initVertSlide"}
!144 = !{i8 0, i8 2}
!145 = !{!"transform.c:initTrackball"}
!146 = !{!123, !37, i64 4605}
!147 = !{!35, !37, i64 460}
!148 = !{!"transform.c:initRotation"}
!149 = !{!"transform.c:initResize"}
!150 = !{!"transform.c:transform_event_xyz_constraint"}
!151 = !{!"transform.c:min_ff"}
!152 = !{!41, !41, i64 0}
!153 = !{!35, !39, i64 974}
!154 = !{!35, !36, i64 48}
!155 = !{!"transform.c:copy_v3_v3"}
!156 = !{!157, !41, i64 112}
!157 = !{!"wmOperator", !41, i64 0, !41, i64 8, !37, i64 16, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !44, i64 128, !41, i64 144, !41, i64 152, !39, i64 160, !37, i64 162}
!158 = !{!159, !39, i64 438}
!159 = !{!"ToolSettings", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !39, i64 44, !39, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !40, i64 52, !39, i64 56, !37, i64 58, !37, i64 59, !160, i64 64, !162, i64 168, !40, i64 336, !40, i64 340, !39, i64 344, !39, i64 346, !37, i64 348, !37, i64 349, !39, i64 350, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !40, i64 368, !40, i64 372, !40, i64 376, !40, i64 380, !40, i64 384, !40, i64 388, !39, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !41, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !39, i64 434, !39, i64 436, !39, i64 438, !39, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !36, i64 448, !36, i64 452, !36, i64 456, !36, i64 460, !39, i64 464, !39, i64 466, !36, i64 468, !40, i64 472, !40, i64 476, !163, i64 480, !164, i64 608}
!160 = !{!"ImagePaintSettings", !161, i64 0, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !37, i64 48, !36, i64 52, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !37, i64 88, !40, i64 100}
!161 = !{!"Paint", !41, i64 0, !41, i64 8, !41, i64 16, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36}
!162 = !{!"ParticleEditSettings", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !41, i64 120, !40, i64 128, !40, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !41, i64 152, !41, i64 160}
!163 = !{!"UnifiedPaintSettings", !36, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !37, i64 16, !37, i64 28, !36, i64 40, !37, i64 44, !40, i64 52, !36, i64 56, !36, i64 60, !37, i64 64, !37, i64 65, !40, i64 72, !37, i64 76, !36, i64 84, !40, i64 88, !37, i64 92, !37, i64 100, !36, i64 108, !41, i64 112, !40, i64 120, !36, i64 124}
!164 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 21, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36}
!165 = !{!159, !37, i64 443}
!166 = !{!159, !37, i64 442}
!167 = !{!159, !40, i64 336}
!168 = !{!159, !39, i64 440}
!169 = !{!159, !39, i64 434}
!170 = !{!107, !37, i64 292}
!171 = !{!50, !41, i64 240}
!172 = !{!35, !41, i64 1360}
!173 = !{!35, !41, i64 1368}
!174 = !{!35, !41, i64 1376}
!175 = !{!35, !41, i64 1384}
!176 = !{!157, !41, i64 88}
!177 = !{!178, !41, i64 128}
!178 = !{!"wmOperatorType", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !44, i64 112, !41, i64 128, !41, i64 136, !41, i64 144, !179, i64 152, !39, i64 184}
!179 = !{!"ExtensionRNA", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24}
!180 = !{!35, !41, i64 1280}
!181 = !{!182, !39, i64 152}
!182 = !{!"wmKeyMapItem", !41, i64 0, !41, i64 8, !37, i64 16, !41, i64 80, !37, i64 88, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !39, i64 164, !39, i64 166, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !41, i64 176}
!183 = !{!182, !39, i64 156}
!184 = !{!182, !39, i64 154}
!185 = !{!88, !39, i64 74}
!186 = !{!88, !39, i64 78}
!187 = distinct !{!187, !188}
!188 = !{!"llvm.loop.mustprogress"}
!189 = !{!35, !41, i64 1128}
!190 = !{!97, !41, i64 296}
!191 = !{!192, !36, i64 196}
!192 = !{!"bArmature", !98, i64 0, !41, i64 120, !44, i64 128, !44, i64 144, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !39, i64 208, !39, i64 210, !36, i64 212, !36, i64 216, !36, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !36, i64 248, !36, i64 252}
!193 = !{!"transform.c:drawTransformApply"}
!194 = !{!"transform.c:drawTransformView"}
!195 = !{!"transform.c:drawTransformPixel"}
!196 = !{!123, !41, i64 168}
!197 = !{!198, !41, i64 32}
!198 = !{!"Base", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !39, i64 28, !39, i64 30, !41, i64 32}
!199 = !{!200, !39, i64 8978}
!200 = !{!"UserDef", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !36, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !36, i64 8484, !36, i64 8488, !36, i64 8492, !39, i64 8496, !39, i64 8498, !36, i64 8500, !36, i64 8504, !36, i64 8508, !36, i64 8512, !36, i64 8516, !36, i64 8520, !36, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !44, i64 8536, !44, i64 8552, !44, i64 8568, !44, i64 8584, !44, i64 8600, !44, i64 8616, !44, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !36, i64 8912, !36, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !40, i64 8956, !40, i64 8960, !36, i64 8964, !39, i64 8968, !39, i64 8970, !40, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !201, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !36, i64 10896, !36, i64 10900, !40, i64 10904, !40, i64 10908, !36, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !202, i64 10928}
!201 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!202 = !{!"WalkNavigation", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !39, i64 24, !37, i64 26}
!203 = !{!"transform.c:helpline_poll"}
!204 = !{!"transform.c:drawHelpline"}
!205 = !{!35, !37, i64 977}
!206 = !{!"transform.c:initSkinResize"}
!207 = !{!"transform.c:initToSphere"}
!208 = !{!35, !41, i64 56}
!209 = !{!35, !40, i64 20}
!210 = distinct !{!210, !188}
!211 = !{!"transform.c:initShear"}
!212 = !{!"transform.c:initBend"}
!213 = !{!214, !40, i64 48}
!214 = !{!"BendCustomData", !37, i64 0, !37, i64 12, !37, i64 24, !37, i64 36, !40, i64 48}
!215 = !{!"transform.c:initShrinkFatten"}
!216 = !{!"transform.c:initTilt"}
!217 = !{!"transform.c:initCurveShrinkFatten"}
!218 = !{!"transform.c:initMaskShrinkFatten"}
!219 = !{!"transform.c:initPushPull"}
!220 = !{!"transform.c:initCrease"}
!221 = !{!"transform.c:initBoneEnvelope"}
!222 = !{!"transform.c:initBoneSize"}
!223 = !{!"transform.c:initBoneRoll"}
!224 = !{!"transform.c:initTimeTranslate"}
!225 = !{!"transform.c:initTimeSlide"}
!226 = !{!227, !39, i64 338}
!227 = !{!"SpaceAction", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !51, i64 56, !41, i64 216, !228, i64 224, !37, i64 336, !37, i64 337, !39, i64 338, !40, i64 340}
!228 = !{!"bDopeSheet", !41, i64 0, !44, i64 8, !41, i64 24, !37, i64 32, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108}
!229 = !{!"transform.c:initTimeScale"}
!230 = !{!123, !36, i64 680}
!231 = !{!"transform.c:initBakeTime"}
!232 = !{!"transform.c:initMirror"}
!233 = !{!"transform.c:initBevelWeight"}
!234 = !{!"transform.c:initAlign"}
!235 = !{!"transform.c:initSeqSlide"}
!236 = !{!123, !39, i64 820}
!237 = !{!123, !40, i64 900}
!238 = !{!"transform.c:copy_v4_v4"}
!239 = !{!"transform.c:normalize_v3"}
!240 = !{!"transform.c:viewRedrawForce"}
!241 = !{!35, !41, i64 1272}
!242 = !{!123, !41, i64 264}
!243 = !{!159, !39, i64 344}
!244 = !{!200, !39, i64 8976}
!245 = !{!70, !39, i64 10562}
!246 = !{!"transform.c:doEdgeSlide"}
!247 = !{!248, !41, i64 0}
!248 = !{!"EdgeSlideData", !41, i64 0, !36, i64 8, !41, i64 16, !37, i64 24, !37, i64 32, !41, i64 40, !37, i64 48, !41, i64 56, !40, i64 64, !37, i64 68, !37, i64 69, !36, i64 72}
!249 = !{!248, !40, i64 64}
!250 = !{!248, !37, i64 68}
!251 = !{!248, !36, i64 8}
!252 = !{!253, !41, i64 16}
!253 = !{!"TransDataEdgeSlideVert", !41, i64 0, !41, i64 8, !41, i64 16, !37, i64 24, !40, i64 36, !37, i64 40, !37, i64 52, !36, i64 64}
!254 = distinct !{!254, !188}
!255 = !{!248, !36, i64 72}
!256 = !{!253, !40, i64 36}
!257 = !{!248, !37, i64 69}
!258 = distinct !{!258, !188}
!259 = !{!"transform.c:viewRedrawPost"}
!260 = !{!35, !41, i64 1264}
!261 = !{!159, !37, i64 49}
!262 = !{!248, !41, i64 40}
!263 = !{!248, !37, i64 48}
!264 = !{!248, !41, i64 16}
!265 = !{!266, !41, i64 32}
!266 = !{!"BMLoop", !267, i64 0, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64}
!267 = !{!"BMHeader", !41, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!268 = !{!266, !41, i64 24}
!269 = !{i8 0, i8 17}
!270 = !{!266, !41, i64 64}
!271 = !{!266, !41, i64 40}
!272 = !{!253, !41, i64 8}
!273 = !{!253, !41, i64 0}
!274 = distinct !{!274, !188}
!275 = !{!276, !41, i64 40}
!276 = !{!"BMEdge", !267, i64 0, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !277, i64 48, !277, i64 64}
!277 = !{!"BMDiskLink", !41, i64 0, !41, i64 8}
!278 = !{!279, !41, i64 0}
!279 = !{!"BMEditMesh", !41, i64 0, !41, i64 8, !36, i64 16, !41, i64 24, !36, i64 32, !41, i64 40, !41, i64 48, !100, i64 56, !41, i64 64, !36, i64 72, !41, i64 80, !36, i64 88, !39, i64 92, !39, i64 94, !41, i64 96, !36, i64 104}
!280 = !{!248, !41, i64 56}
!281 = distinct !{!281, !188}
!282 = distinct !{!282, !188}
!283 = !{!"transform.c:BM_iter_new"}
!284 = !{!"transform.c:_bm_elem_flag_test"}
!285 = !{!267, !37, i64 13}
!286 = !{!"transform.c:BM_iter_step"}
!287 = !{!288, !41, i64 48}
!288 = !{!"BMIter", !37, i64 0, !41, i64 40, !41, i64 48, !36, i64 56, !37, i64 60}
!289 = !{!"transform.c:BM_edge_is_boundary"}
!290 = !{!291, !36, i64 8}
!291 = !{!"VertSlideData", !41, i64 0, !36, i64 8, !41, i64 16, !40, i64 24, !37, i64 28, !37, i64 29, !36, i64 32}
!292 = !{!291, !41, i64 0}
!293 = !{!294, !41, i64 40}
!294 = !{!"TransDataVertSlideVert", !41, i64 0, !37, i64 8, !37, i64 20, !41, i64 32, !41, i64 40, !36, i64 48, !36, i64 52}
!295 = !{!294, !41, i64 32}
!296 = distinct !{!296, !188}
!297 = !{!"transform.c:BLI_rcti_size_x"}
!298 = !{!53, !36, i64 4}
!299 = !{!53, !36, i64 0}
!300 = !{!"transform.c:BLI_rcti_size_y"}
!301 = !{!53, !36, i64 12}
!302 = !{!53, !36, i64 8}
!303 = !{!"transform.c:BLI_rctf_size_x"}
!304 = !{!52, !40, i64 4}
!305 = !{!52, !40, i64 0}
!306 = !{!"transform.c:BLI_rctf_size_y"}
!307 = !{!52, !40, i64 12}
!308 = !{!52, !40, i64 8}
!309 = !{!"transform.c:drawEdgeSlide"}
!310 = !{!107, !37, i64 344}
!311 = !{!"transform.c:drawVertSlide"}
!312 = !{!291, !36, i64 32}
!313 = !{!294, !36, i64 52}
!314 = distinct !{!314, !188}
!315 = distinct !{!315, !188}
!316 = !{!291, !37, i64 29}
!317 = !{!291, !37, i64 28}
!318 = !{!"transform.c:add_v3_v3v3"}
!319 = !{!"transform.c:interp_line_v3_v3v3v3"}
!320 = !{!"transform.c:sub_v3_v3v3"}
!321 = !{!"transform.c:mul_v3_fl"}
!322 = !{!"transform.c:negate_v3_v3"}
!323 = !{!"transform.c:add_v3_v3"}
!324 = !{!"transform.c:drawAutoKeyWarning"}
!325 = !{!200, !39, i64 8948}
!326 = !{!"transform.c:drawArrow"}
!327 = !{!"transform.c:drawArc"}
!328 = distinct !{!328, !188}
!329 = !{!"transform.c:drawArrowHead"}
!330 = !{!"transform.c:normalize_v3_v3"}
!331 = !{!"transform.c:dot_v3v3"}
!332 = !{!"transform.c:mul_v3_v3fl"}
!333 = !{!"transform.c:Bend"}
!334 = !{!35, !39, i64 296}
!335 = !{!37, !37, i64 0}
!336 = !{!337, !36, i64 216}
!337 = !{!"TransData", !40, i64 0, !40, i64 4, !40, i64 8, !41, i64 16, !37, i64 24, !41, i64 40, !40, i64 48, !37, i64 52, !37, i64 64, !37, i64 100, !37, i64 136, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !36, i64 216, !39, i64 220}
!338 = !{!337, !41, i64 16}
!339 = !{!337, !40, i64 8}
!340 = distinct !{!340, !188}
!341 = !{!"transform.c:handleEventBend"}
!342 = !{!"transform.c:postInputRotation"}
!343 = !{!35, !41, i64 288}
!344 = !{!"transform.c:copy_v3_fl"}
!345 = !{!"transform.c:sub_v3_v3"}
!346 = !{!"transform.c:cross_v3_v3v3"}
!347 = !{!"transform.c:len_v3v3"}
!348 = !{!"transform.c:madd_v3_v3fl"}
!349 = !{!"transform.c:shell_angle_to_dist"}
!350 = !{!"transform.c:len_v3"}
!351 = !{!"transform.c:applyShear"}
!352 = distinct !{!352, !188}
!353 = !{!"transform.c:handleEventShear"}
!354 = !{!"transform.c:postInputShear"}
!355 = !{!"transform.c:applyResize"}
!356 = !{!35, !41, i64 280}
!357 = distinct !{!357, !188}
!358 = distinct !{!358, !188}
!359 = !{!"transform.c:headerResize"}
!360 = !{!"transform.c:ElementResize"}
!361 = !{!337, !41, i64 192}
!362 = !{!337, !39, i64 220}
!363 = !{!337, !40, i64 48}
!364 = !{!337, !41, i64 40}
!365 = !{!366, !41, i64 128}
!366 = !{!"TransDataExtension", !37, i64 0, !37, i64 12, !37, i64 28, !41, i64 40, !37, i64 48, !41, i64 64, !37, i64 72, !41, i64 88, !40, i64 96, !41, i64 104, !37, i64 112, !41, i64 128, !37, i64 136, !37, i64 148, !37, i64 212, !37, i64 248, !37, i64 284, !36, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 364, !40, i64 376}
!367 = !{!"transform.c:transdata_check_local_center"}
!368 = !{!"transform.c:TransMat3ToSize"}
!369 = !{i32 0, i32 2}
!370 = !{!"transform.c:protectedSizeBits"}
!371 = !{!"transform.c:constraintSizeLim"}
!372 = !{!337, !41, i64 184}
!373 = distinct !{!373, !188}
!374 = !{!375, !39, i64 26}
!375 = !{!"bConstraint", !41, i64 0, !41, i64 8, !41, i64 16, !39, i64 24, !39, i64 26, !37, i64 28, !37, i64 29, !37, i64 30, !39, i64 94, !40, i64 96, !40, i64 100, !41, i64 104, !40, i64 112, !40, i64 116}
!376 = !{!375, !40, i64 96}
!377 = !{!375, !39, i64 24}
!378 = !{!375, !41, i64 16}
!379 = !{!380, !39, i64 26}
!380 = !{!"bSizeLimitConstraint", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !39, i64 24, !39, i64 26}
!381 = !{!375, !37, i64 28}
!382 = !{!383, !41, i64 128}
!383 = !{!"bConstraintTypeInfo", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 36, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128}
!384 = distinct !{!384, !188}
!385 = !{!"transform.c:protectedTransBits"}
!386 = !{!"transform.c:constraintTransLim"}
!387 = !{!388, !39, i64 26}
!388 = !{!"bLocLimitConstraint", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !39, i64 24, !39, i64 26}
!389 = !{!390, !39, i64 80}
!390 = !{!"bDistLimitConstraint", !41, i64 0, !37, i64 8, !40, i64 72, !40, i64 76, !39, i64 80, !39, i64 82, !36, i64 84}
!391 = distinct !{!391, !188}
!392 = !{!"transform.c:tx_vec_sign_flip"}
!393 = !{i32 1, i32 4}
!394 = !{!"transform.c:tx_sign"}
!395 = !{!"transform.c:signf"}
!396 = !{!"transform.c:mul_v3_v3"}
!397 = !{!"transform.c:applySkinResize"}
!398 = distinct !{!398, !188}
!399 = !{!"transform.c:applyToSphere"}
!400 = distinct !{!400, !188}
!401 = !{!"transform.c:applyRotation"}
!402 = !{!"transform.c:applyRotationValue"}
!403 = distinct !{!403, !188}
!404 = !{!"transform.c:ElementRotation"}
!405 = !{!366, !41, i64 64}
!406 = !{!366, !36, i64 320}
!407 = !{!366, !40, i64 96}
!408 = !{!366, !41, i64 104}
!409 = !{!366, !41, i64 88}
!410 = !{!366, !41, i64 40}
!411 = !{!"transform.c:protectedQuaternionBits"}
!412 = !{!"transform.c:protectedAxisAngleBits"}
!413 = !{!"transform.c:protectedRotateBits"}
!414 = !{!"transform.c:constraintRotLim"}
!415 = !{!416, !39, i64 26}
!416 = !{!"bRotLimitConstraint", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !39, i64 24, !39, i64 26}
!417 = distinct !{!417, !188}
!418 = !{!"transform.c:constraintob_from_transdata"}
!419 = !{!"transform.c:applyTrackball"}
!420 = !{!"transform.c:applyTrackballValue"}
!421 = distinct !{!421, !188}
!422 = !{!"transform.c:applyTranslation"}
!423 = !{!35, !41, i64 272}
!424 = !{!"transform.c:headerTranslation"}
!425 = !{!123, !39, i64 4606}
!426 = !{!123, !40, i64 4600}
!427 = distinct !{!427, !188}
!428 = !{!159, !39, i64 56}
!429 = !{!"transform.c:applyTranslationValue"}
!430 = distinct !{!430, !188}
!431 = !{!"transform.c:saacos"}
!432 = !{!"transform.c:applyShrinkFatten"}
!433 = distinct !{!433, !188}
!434 = !{!"transform.c:madd_v3_v3v3fl"}
!435 = !{!"transform.c:applyTilt"}
!436 = distinct !{!436, !188}
!437 = !{!"transform.c:applyCurveShrinkFatten"}
!438 = distinct !{!438, !188}
!439 = !{!"transform.c:applyMaskShrinkFatten"}
!440 = distinct !{!440, !188}
!441 = distinct !{!441, !188}
!442 = !{!"transform.c:applyPushPull"}
!443 = distinct !{!443, !188}
!444 = !{!"transform.c:applyBevelWeight"}
!445 = distinct !{!445, !188}
!446 = !{!"transform.c:applyCrease"}
!447 = distinct !{!447, !188}
!448 = !{!"transform.c:applyBoneSize"}
!449 = distinct !{!449, !188}
!450 = !{!"transform.c:headerBoneSize"}
!451 = !{!"transform.c:ElementBoneSize"}
!452 = !{!"transform.c:applyBoneEnvelope"}
!453 = distinct !{!453, !188}
!454 = !{!"transform.c:BM_iter_init"}
!455 = !{!288, !37, i64 60}
!456 = !{!288, !41, i64 40}
!457 = !{!458, !41, i64 32}
!458 = !{!"BMesh", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 29, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !36, i64 88, !36, i64 92, !36, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !36, i64 128, !41, i64 136, !459, i64 144, !459, i64 344, !459, i64 544, !459, i64 744, !39, i64 944, !36, i64 948, !36, i64 952, !36, i64 956, !44, i64 960, !41, i64 976, !44, i64 984, !41, i64 1000}
!459 = !{!"CustomData", !41, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !41, i64 184, !41, i64 192}
!460 = !{!458, !41, i64 40}
!461 = !{!458, !41, i64 56}
!462 = !{!"transform.c:applyEdgeSlide"}
!463 = !{!"transform.c:handleEventEdgeSlide"}
!464 = !{!"transform.c:createEdgeSlideVerts"}
!465 = !{!458, !36, i64 948}
!466 = !{!467, !41, i64 48}
!467 = !{!"BMVert", !267, i64 0, !41, i64 16, !37, i64 24, !37, i64 36, !41, i64 48}
!468 = distinct !{!468, !188}
!469 = distinct !{!469, !188}
!470 = distinct !{!470, !188}
!471 = !{!458, !36, i64 0}
!472 = !{!458, !37, i64 28}
!473 = distinct !{!473, !188}
!474 = distinct !{!474, !188}
!475 = distinct !{!475, !188}
!476 = !{!253, !36, i64 64}
!477 = distinct !{!477, !188}
!478 = !{!97, !37, i64 1046}
!479 = !{!107, !39, i64 232}
!480 = distinct !{!480, !188}
!481 = distinct !{!481, !188}
!482 = distinct !{!482, !188}
!483 = distinct !{!483, !188}
!484 = distinct !{!484, !188}
!485 = !{!"transform.c:BM_edge_is_manifold"}
!486 = !{!"transform.c:_bm_elem_flag_enable"}
!487 = !{!"transform.c:_bm_elem_flag_disable"}
!488 = !{!"transform.c:_bm_elem_index_set"}
!489 = !{!267, !36, i64 8}
!490 = !{!"transform.c:get_other_edge"}
!491 = distinct !{!491, !188}
!492 = !{!"transform.c:BM_edge_other_vert"}
!493 = !{!276, !41, i64 24}
!494 = !{!276, !41, i64 32}
!495 = !{!"transform.c:get_next_loop"}
!496 = !{!497, !36, i64 32}
!497 = !{!"BMFace", !267, i64 0, !41, i64 16, !41, i64 24, !36, i64 32, !37, i64 36, !39, i64 48}
!498 = !{!266, !41, i64 56}
!499 = !{!266, !41, i64 16}
!500 = distinct !{!500, !188}
!501 = !{!"transform.c:_bm_elem_index_get"}
!502 = !{!"transform.c:len_squared_v2v2"}
!503 = !{!"transform.c:len_squared_v2"}
!504 = !{!"transform.c:swap_v3_v3"}
!505 = !{!"transform.c:calcNonProportionalEdgeSlide"}
!506 = distinct !{!506, !188}
!507 = !{!"transform.c:zero_v2"}
!508 = !{!"transform.c:mul_v2_fl"}
!509 = !{!"transform.c:len_v3_ensure"}
!510 = !{!"transform.c:bm_loop_calc_opposite_co"}
!511 = distinct !{!511, !188}
!512 = !{!"transform.c:sub_v2_v2v2"}
!513 = !{!"transform.c:dot_v2v2"}
!514 = !{!"transform.c:applyVertSlide"}
!515 = !{!"transform.c:handleEventVertSlide"}
!516 = !{!"transform.c:createVertSlideVerts"}
!517 = distinct !{!517, !188}
!518 = distinct !{!518, !188}
!519 = !{!294, !41, i64 0}
!520 = distinct !{!520, !188}
!521 = !{!294, !36, i64 48}
!522 = distinct !{!522, !188}
!523 = distinct !{!523, !188}
!524 = !{!291, !41, i64 16}
!525 = !{!291, !40, i64 24}
!526 = !{!"transform.c:calcVertSlideCustomPoints"}
!527 = !{!"transform.c:doVertSlide"}
!528 = distinct !{!528, !188}
!529 = distinct !{!529, !188}
!530 = !{!"transform.c:calcVertSlideMouseActiveEdges"}
!531 = distinct !{!531, !188}
!532 = distinct !{!532, !188}
!533 = !{!"transform.c:normalize_v2"}
!534 = !{!"transform.c:normalize_v2_v2"}
!535 = !{!"transform.c:mul_v2_v2fl"}
!536 = !{!"transform.c:calcVertSlideMouseActiveVert"}
!537 = distinct !{!537, !188}
!538 = !{!"transform.c:applyBoneRoll"}
!539 = distinct !{!539, !188}
!540 = !{!"transform.c:applyBakeTime"}
!541 = !{!35, !37, i64 608}
!542 = distinct !{!542, !188}
!543 = !{!"transform.c:applyMirror"}
!544 = distinct !{!544, !188}
!545 = distinct !{!545, !188}
!546 = !{!"transform.c:applyAlign"}
!547 = !{!159, !39, i64 46}
!548 = distinct !{!548, !188}
!549 = !{!"transform.c:applySeqSlide"}
!550 = !{!"transform.c:headerSeqSlide"}
!551 = !{!"transform.c:applySeqSlideValue"}
!552 = distinct !{!552, !188}
!553 = !{!"transform.c:applyTimeTranslate"}
!554 = !{!"transform.c:headerTimeTranslate"}
!555 = !{!"transform.c:applyTimeTranslateValue"}
!556 = !{!35, !41, i64 72}
!557 = !{!337, !41, i64 208}
!558 = distinct !{!558, !188}
!559 = !{!"transform.c:getAnimEdit_SnapMode"}
!560 = !{!227, !37, i64 337}
!561 = !{!562, !39, i64 242}
!562 = !{!"SpaceIpo", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !51, i64 56, !41, i64 216, !44, i64 224, !39, i64 240, !39, i64 242, !36, i64 244, !40, i64 248, !36, i64 252}
!563 = !{!564, !39, i64 56}
!564 = !{!"SpaceNla", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !39, i64 56, !39, i64 58, !36, i64 60, !41, i64 64, !51, i64 72}
!565 = !{!"transform.c:doAnimEdit_SnapFrame"}
!566 = !{!567, !41, i64 24}
!567 = !{!"TransData2D", !37, i64 0, !41, i64 16, !41, i64 24, !41, i64 32, !37, i64 40, !37, i64 48}
!568 = !{!567, !41, i64 32}
!569 = !{!"transform.c:applyTimeSlide"}
!570 = !{!"transform.c:headerTimeSlide"}
!571 = !{!"transform.c:applyTimeSlideValue"}
!572 = !{!227, !40, i64 340}
!573 = distinct !{!573, !188}
!574 = !{!"transform.c:applyTimeScale"}
!575 = !{!"transform.c:headerTimeScale"}
!576 = !{!"transform.c:applyTimeScaleValue"}
!577 = distinct !{!577, !188}
