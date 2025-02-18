; ModuleID = 'blender/source/blender/editors/space_view3d/view3d_select.c'
source_filename = "blender/source/blender/editors/space_view3d/view3d_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.StructRNA = type opaque
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.SelMenuItemF = type { [64 x i8], i32 }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bglMats = type { [16 x double], [16 x double], [4 x i32] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.LassoSelectUserData = type { ptr, ptr, ptr, %struct.rctf, ptr, i32, i8, i32, i8, i8 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.BoxSelectUserData = type { ptr, ptr, ptr, %struct.rctf, i8, i32, i8, i8 }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.MetaElem = type { ptr, ptr, ptr, i16, i16, i16, i16, float, float, float, [4 x float], float, float, float, float, float, float, float, ptr, ptr }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.CircleSelectUserData = type { ptr, i8, [2 x i32], [2 x float], float, float, i8 }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.LinkNode = type { ptr, ptr }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str = private unnamed_addr constant [13 x i8] c"Lasso Select\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Select items using lasso selection\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"VIEW3D_OT_select_lasso\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@RNA_OperatorMousePath = external global %struct.StructRNA, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"deselect\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Deselect\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Deselect rather than select items\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Extend\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"Extend selection instead of deselecting everything first\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Select Menu\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Menu object selection\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"VIEW3D_OT_select_menu\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@DummyRNA_NULL_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.16 = private unnamed_addr constant [12 x i8] c"Object Name\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"Toggle\00", align 1
@.str.19 = private unnamed_addr constant [57 x i8] c"Toggle selection instead of deselecting everything first\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"Border Select\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"Select items using border selection\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"VIEW3D_OT_select_border\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"Activate/Select\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"Activate/select item(s)\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"VIEW3D_OT_select\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"Center\00", align 1
@.str.28 = private unnamed_addr constant [82 x i8] c"Use the object center when selecting, in editmode used to extend object selection\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"enumerate\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"Enumerate\00", align 1
@.str.31 = private unnamed_addr constant [48 x i8] c"List objects under the mouse (object mode only)\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"Use object selection (editmode only)\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"Mouse location\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"Circle Select\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"Select items using circle selection\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"VIEW3D_OT_select_circle\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"Radius\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"gesture_mode\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"Event Type\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@bm_vertoffs = external local_unnamed_addr global i32, align 4
@bm_wireoffs = external local_unnamed_addr global i32, align 4
@bm_solidoffs = external local_unnamed_addr global i32, align 4
@object_mouse_select_menu_data = internal global [22 x %struct.SelMenuItemF] zeroinitializer, align 16
@mixed_bones_object_selectbuffer.last_mval.0 = internal unnamed_addr global i32 -100, align 4
@mixed_bones_object_selectbuffer.last_mval.1 = internal unnamed_addr global i32 -100, align 4
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.49 = private unnamed_addr constant [6 x i8] c"selar\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.50 = private unnamed_addr constant [17 x i8] c"selection buffer\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local float @ED_view3d_select_dist_px() local_unnamed_addr #0 {
  %1 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !34
  %2 = fmul float %1, 7.500000e+01
  ret float %2
}

; Function Attrs: nounwind uwtable
define dso_local void @view3d_set_viewcontext(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #1 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 0, i64 64, i1 false)
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 3
  store ptr %3, ptr %4, align 8, !tbaa !45
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  store ptr %5, ptr %1, align 8, !tbaa !47
  %6 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #12
  %7 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 4
  store ptr %6, ptr %7, align 8, !tbaa !48
  %8 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #12
  %9 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 5
  store ptr %8, ptr %9, align 8, !tbaa !49
  %10 = tail call ptr @CTX_data_active_object(ptr noundef %0) #12
  %11 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !50
  %12 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %13 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @view3d_get_transformation(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #1 {
  %5 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #12
  %6 = icmp eq ptr %2, null
  %7 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 1
  br i1 %6, label %10, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %9) #12
  br label %11

10:                                               ; preds = %4
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %7) #12
  br label %11

11:                                               ; preds = %10, %8
  br label %12

12:                                               ; preds = %11, %28
  %13 = phi i64 [ %29, %28 ], [ 0, %11 ]
  %14 = shl nuw nsw i64 %13, 2
  br label %15

15:                                               ; preds = %12, %15
  %16 = phi i64 [ 0, %12 ], [ %26, %15 ]
  %17 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 %13, i64 %16
  %18 = load float, ptr %17, align 4, !tbaa !52
  %19 = fpext float %18 to double
  %20 = add nuw nsw i64 %16, %14
  %21 = getelementptr inbounds %struct.bglMats, ptr %3, i64 0, i32 1, i64 %20
  store double %19, ptr %21, align 8, !tbaa !53
  %22 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %13, i64 %16
  %23 = load float, ptr %22, align 4, !tbaa !52
  %24 = fpext float %23 to double
  %25 = getelementptr inbounds [16 x double], ptr %3, i64 0, i64 %20
  store double %24, ptr %25, align 8, !tbaa !53
  %26 = add nuw nsw i64 %16, 1
  %27 = icmp eq i64 %26, 4
  br i1 %27, label %28, label %15, !llvm.loop !55

28:                                               ; preds = %15
  %29 = add nuw nsw i64 %13, 1
  %30 = icmp eq i64 %29, 4
  br i1 %30, label %31, label %12, !llvm.loop !58

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !59
  %34 = getelementptr inbounds %struct.bglMats, ptr %3, i64 0, i32 2
  store i32 %33, ptr %34, align 8, !tbaa !64
  %35 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !65
  %37 = getelementptr inbounds %struct.bglMats, ptr %3, i64 0, i32 2, i64 1
  store i32 %36, ptr %37, align 4, !tbaa !64
  %38 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %39 = load i16, ptr %38, align 8, !tbaa !66
  %40 = sext i16 %39 to i32
  %41 = getelementptr inbounds %struct.bglMats, ptr %3, i64 0, i32 2, i64 2
  store i32 %40, ptr %41, align 8, !tbaa !64
  %42 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %43 = load i16, ptr %42, align 2, !tbaa !67
  %44 = sext i16 %43 to i32
  %45 = getelementptr inbounds %struct.bglMats, ptr %3, i64 0, i32 2, i64 3
  store i32 %44, ptr %45, align 4, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @VIEW3D_OT_select_lasso(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str, ptr %0, align 8, !tbaa !68
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !71
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !72
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_lasso_invoke, ptr %4, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_lasso_modal, ptr %5, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_lasso_select_exec, ptr %6, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view3d_selectable_data, ptr %7, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_lasso_cancel, ptr %8, align 8, !tbaa !77
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %9, align 8, !tbaa !78
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  %12 = tail call ptr @RNA_def_collection_runtime(ptr noundef %11, ptr noundef nonnull @.str.3, ptr noundef nonnull @RNA_OperatorMousePath, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #12
  %13 = load ptr, ptr %10, align 8, !tbaa !79
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #12
  %15 = load ptr, ptr %10, align 8, !tbaa !79
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #12
  ret void
}

declare i32 @WM_gesture_lasso_invoke(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @WM_gesture_lasso_modal(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @view3d_lasso_select_exec(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.LassoSelectUserData, align 8
  %6 = alloca %struct.rcti, align 4
  %7 = alloca %struct.LassoSelectUserData, align 8
  %8 = alloca %struct.rcti, align 4
  %9 = alloca %struct.LassoSelectUserData, align 8
  %10 = alloca %struct.rcti, align 4
  %11 = alloca %struct.LassoSelectUserData, align 8
  %12 = alloca %struct.rcti, align 4
  %13 = alloca %struct.LassoSelectUserData, align 8
  %14 = alloca %struct.rcti, align 4
  %15 = alloca %struct.ViewContext, align 8
  %16 = alloca %struct.LassoSelectUserData, align 8
  %17 = alloca %struct.rcti, align 4
  %18 = alloca %struct.rcti, align 4
  %19 = alloca %struct.LassoSelectUserData, align 8
  %20 = alloca %struct.rcti, align 4
  %21 = alloca %struct.ViewContext, align 8
  %22 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %21) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #12
  %23 = call ptr @WM_gesture_lasso_path_to_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %22) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %543, label %25

25:                                               ; preds = %2
  call void @view3d_operator_needs_opengl(ptr noundef %0) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %21, i8 0, i64 64, i1 false)
  %26 = call ptr @CTX_wm_region(ptr noundef %0) #12
  %27 = getelementptr inbounds %struct.ViewContext, ptr %21, i64 0, i32 3
  store ptr %26, ptr %27, align 8, !tbaa !45
  %28 = call ptr @CTX_data_scene(ptr noundef %0) #12
  store ptr %28, ptr %21, align 8, !tbaa !47
  %29 = call ptr @CTX_wm_view3d(ptr noundef %0) #12
  %30 = getelementptr inbounds %struct.ViewContext, ptr %21, i64 0, i32 4
  store ptr %29, ptr %30, align 8, !tbaa !48
  %31 = call ptr @CTX_wm_region_view3d(ptr noundef %0) #12
  %32 = getelementptr inbounds %struct.ViewContext, ptr %21, i64 0, i32 5
  store ptr %31, ptr %32, align 8, !tbaa !49
  %33 = call ptr @CTX_data_active_object(ptr noundef %0) #12
  %34 = getelementptr inbounds %struct.ViewContext, ptr %21, i64 0, i32 1
  store ptr %33, ptr %34, align 8, !tbaa !50
  %35 = call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %36 = getelementptr inbounds %struct.ViewContext, ptr %21, i64 0, i32 2
  store ptr %35, ptr %36, align 8, !tbaa !51
  %37 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !80
  %39 = call i32 @RNA_boolean_get(ptr noundef %38, ptr noundef nonnull @.str.9) #12
  %40 = trunc i32 %39 to i8
  %41 = load ptr, ptr %37, align 8, !tbaa !80
  %42 = call i32 @RNA_boolean_get(ptr noundef %41, ptr noundef nonnull @.str.6) #12
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i8
  %45 = load i32, ptr %22, align 4, !tbaa !64
  %46 = trunc i32 %45 to i16
  %47 = call ptr @CTX_data_active_object(ptr noundef %0) #12
  %48 = load ptr, ptr %36, align 8, !tbaa !51
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %319

50:                                               ; preds = %25
  %51 = call zeroext i8 @BKE_paint_select_face_test(ptr noundef %47) #12
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %109, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %34, align 8, !tbaa !50
  %55 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 19
  %56 = load ptr, ptr %55, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #12
  %57 = icmp eq ptr %56, null
  br i1 %57, label %108, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.Mesh, ptr %56, i64 0, i32 30
  %60 = load i32, ptr %59, align 8, !tbaa !87
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %108, label %62

62:                                               ; preds = %58
  %63 = icmp eq i8 %40, 0
  %64 = and i1 %63, %43
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  call void @paintface_deselect_all_visible(ptr noundef %54, i32 noundef 2, i8 noundef zeroext 0) #12
  br label %66

66:                                               ; preds = %65, %62
  %67 = load i32, ptr %59, align 8, !tbaa !87
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr @bm_vertoffs, align 4, !tbaa !64
  %69 = shl i32 %45, 16
  %70 = ashr exact i32 %69, 16
  call void @BLI_lasso_boundbox(ptr noundef nonnull %20, ptr noundef %23, i32 noundef %70) #12
  %71 = load i32, ptr %20, align 4, !tbaa !90
  %72 = trunc i32 %71 to i16
  %73 = getelementptr inbounds %struct.rcti, ptr %20, i64 0, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !91
  %75 = trunc i32 %74 to i16
  %76 = getelementptr inbounds %struct.rcti, ptr %20, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !92
  %78 = trunc i32 %77 to i16
  %79 = getelementptr inbounds %struct.rcti, ptr %20, i64 0, i32 3
  %80 = load i32, ptr %79, align 4, !tbaa !93
  %81 = trunc i32 %80 to i16
  %82 = call zeroext i8 @EDBM_backbuf_border_mask_init(ptr noundef nonnull %21, ptr noundef %23, i16 noundef signext %46, i16 noundef signext %72, i16 noundef signext %75, i16 noundef signext %78, i16 noundef signext %81) #12
  %83 = getelementptr inbounds %struct.Mesh, ptr %56, i64 0, i32 7
  %84 = load ptr, ptr %83, align 8, !tbaa !94
  %85 = icmp eq ptr %84, null
  br i1 %85, label %107, label %86

86:                                               ; preds = %66
  %87 = load i32, ptr %59, align 8, !tbaa !87
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %107, label %89

89:                                               ; preds = %86
  %90 = select i1 %43, i8 2, i8 0
  br label %91

91:                                               ; preds = %89, %102
  %92 = phi i32 [ %103, %102 ], [ 1, %89 ]
  %93 = phi ptr [ %104, %102 ], [ %84, %89 ]
  %94 = call zeroext i8 @EDBM_backbuf_check(i32 noundef %92) #12
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.MPoly, ptr %93, i64 0, i32 3
  %98 = load i8, ptr %97, align 2, !tbaa !95
  %99 = and i8 %98, -3
  %100 = or disjoint i8 %99, %90
  %101 = getelementptr inbounds %struct.MPoly, ptr %93, i64 0, i32 3
  store i8 %100, ptr %101, align 2, !tbaa !95
  br label %102

102:                                              ; preds = %96, %91
  %103 = add i32 %92, 1
  %104 = getelementptr inbounds %struct.MPoly, ptr %93, i64 1
  %105 = load i32, ptr %59, align 8, !tbaa !87
  %106 = icmp ugt i32 %103, %105
  br i1 %106, label %107, label %91, !llvm.loop !97

107:                                              ; preds = %102, %66, %86
  call void @EDBM_backbuf_free() #12
  call void @paintface_flush_flags(ptr noundef %54) #12
  br label %108

108:                                              ; preds = %107, %58, %53
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #12
  br label %541

109:                                              ; preds = %50
  %110 = call zeroext i8 @BKE_paint_select_vert_test(ptr noundef %47) #12
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %190, label %112

112:                                              ; preds = %109
  %113 = load ptr, ptr %30, align 8, !tbaa !48
  %114 = getelementptr inbounds %struct.View3D, ptr %113, i64 0, i32 28
  %115 = load i16, ptr %114, align 8, !tbaa !98
  %116 = and i16 %115, 4096
  %117 = load ptr, ptr %34, align 8, !tbaa !50
  %118 = getelementptr inbounds %struct.Object, ptr %117, i64 0, i32 19
  %119 = load ptr, ptr %118, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #12
  %120 = icmp eq ptr %119, null
  br i1 %120, label %189, label %121

121:                                              ; preds = %112
  %122 = getelementptr inbounds %struct.Mesh, ptr %119, i64 0, i32 26
  %123 = load i32, ptr %122, align 8, !tbaa !100
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %189, label %125

125:                                              ; preds = %121
  %126 = icmp eq i8 %40, 0
  %127 = and i1 %126, %43
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  call void @paintvert_deselect_all_visible(ptr noundef %117, i32 noundef 2, i8 noundef zeroext 0) #12
  br label %129

129:                                              ; preds = %128, %125
  %130 = shl i32 %45, 16
  %131 = ashr exact i32 %130, 16
  call void @BLI_lasso_boundbox(ptr noundef nonnull %18, ptr noundef %23, i32 noundef %131) #12
  %132 = icmp eq i16 %116, 0
  br i1 %132, label %174, label %133

133:                                              ; preds = %129
  %134 = load i32, ptr %122, align 8, !tbaa !100
  %135 = add nsw i32 %134, 1
  store i32 %135, ptr @bm_vertoffs, align 4, !tbaa !64
  %136 = load i32, ptr %18, align 4, !tbaa !90
  %137 = trunc i32 %136 to i16
  %138 = getelementptr inbounds %struct.rcti, ptr %18, i64 0, i32 2
  %139 = load i32, ptr %138, align 4, !tbaa !91
  %140 = trunc i32 %139 to i16
  %141 = getelementptr inbounds %struct.rcti, ptr %18, i64 0, i32 1
  %142 = load i32, ptr %141, align 4, !tbaa !92
  %143 = trunc i32 %142 to i16
  %144 = getelementptr inbounds %struct.rcti, ptr %18, i64 0, i32 3
  %145 = load i32, ptr %144, align 4, !tbaa !93
  %146 = trunc i32 %145 to i16
  %147 = call zeroext i8 @EDBM_backbuf_border_mask_init(ptr noundef nonnull %21, ptr noundef %23, i16 noundef signext %46, i16 noundef signext %137, i16 noundef signext %140, i16 noundef signext %143, i16 noundef signext %146) #12
  %148 = getelementptr inbounds %struct.Mesh, ptr %119, i64 0, i32 15
  %149 = load ptr, ptr %148, align 8, !tbaa !101
  %150 = icmp eq ptr %149, null
  br i1 %150, label %173, label %151

151:                                              ; preds = %133
  %152 = load i32, ptr %122, align 8, !tbaa !100
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %173, label %154

154:                                              ; preds = %151, %168
  %155 = phi i32 [ %169, %168 ], [ 1, %151 ]
  %156 = phi ptr [ %170, %168 ], [ %149, %151 ]
  %157 = call zeroext i8 @EDBM_backbuf_check(i32 noundef %155) #12
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %168, label %159

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.MVert, ptr %156, i64 0, i32 2
  %161 = load i8, ptr %160, align 2, !tbaa !102
  %162 = and i8 %161, 16
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %159
  %165 = or i8 %161, 1
  %166 = and i8 %161, -18
  %167 = select i1 %43, i8 %165, i8 %166
  store i8 %167, ptr %160, align 2, !tbaa !102
  br label %168

168:                                              ; preds = %164, %159, %154
  %169 = add i32 %155, 1
  %170 = getelementptr inbounds %struct.MVert, ptr %156, i64 1
  %171 = load i32, ptr %122, align 8, !tbaa !100
  %172 = icmp ugt i32 %169, %171
  br i1 %172, label %173, label %154, !llvm.loop !104

173:                                              ; preds = %168, %133, %151
  call void @EDBM_backbuf_free() #12
  br label %186

174:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %19) #12
  store ptr %21, ptr %19, align 8, !tbaa !105
  %175 = getelementptr inbounds %struct.LassoSelectUserData, ptr %19, i64 0, i32 1
  store ptr %18, ptr %175, align 8, !tbaa !107
  %176 = getelementptr inbounds %struct.LassoSelectUserData, ptr %19, i64 0, i32 3
  %177 = getelementptr inbounds %struct.LassoSelectUserData, ptr %19, i64 0, i32 2
  store ptr %176, ptr %177, align 8, !tbaa !108
  call void @BLI_rctf_rcti_copy(ptr noundef nonnull %176, ptr noundef nonnull %18) #12
  %178 = getelementptr inbounds %struct.LassoSelectUserData, ptr %19, i64 0, i32 4
  store ptr %23, ptr %178, align 8, !tbaa !109
  %179 = getelementptr inbounds %struct.LassoSelectUserData, ptr %19, i64 0, i32 5
  store i32 %131, ptr %179, align 8, !tbaa !110
  %180 = getelementptr inbounds %struct.LassoSelectUserData, ptr %19, i64 0, i32 6
  store i8 %44, ptr %180, align 4, !tbaa !111
  %181 = getelementptr inbounds %struct.LassoSelectUserData, ptr %19, i64 0, i32 7
  store i32 0, ptr %181, align 8, !tbaa !112
  %182 = getelementptr inbounds %struct.LassoSelectUserData, ptr %19, i64 0, i32 8
  store i8 0, ptr %182, align 4, !tbaa !113
  %183 = getelementptr inbounds %struct.LassoSelectUserData, ptr %19, i64 0, i32 9
  store i8 0, ptr %183, align 1, !tbaa !114
  %184 = load ptr, ptr %34, align 8, !tbaa !50
  %185 = load ptr, ptr %32, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %184, ptr noundef %185) #12
  call void @meshobject_foreachScreenVert(ptr noundef nonnull %21, ptr noundef nonnull @do_lasso_select_meshobject__doSelectVert, ptr noundef nonnull %19, i32 noundef 7) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %19) #12
  br label %186

186:                                              ; preds = %174, %173
  br i1 %43, label %188, label %187

187:                                              ; preds = %186
  call void @BKE_mesh_mselect_validate(ptr noundef nonnull %119) #12
  br label %188

188:                                              ; preds = %187, %186
  call void @paintvert_flush_flags(ptr noundef %117) #12
  br label %189

189:                                              ; preds = %188, %121, %112
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #12
  br label %541

190:                                              ; preds = %109
  %191 = icmp eq ptr %47, null
  br i1 %191, label %202, label %192

192:                                              ; preds = %190
  %193 = getelementptr inbounds %struct.Object, ptr %47, i64 0, i32 27
  %194 = load i32, ptr %193, align 8, !tbaa !115
  %195 = and i32 %194, 28
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %541

197:                                              ; preds = %192
  %198 = and i32 %194, 32
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %197
  %201 = call i32 @PE_lasso_select(ptr noundef %0, ptr noundef %23, i16 noundef signext %46, i8 noundef zeroext %40, i8 noundef zeroext %44) #12
  br label %541

202:                                              ; preds = %197, %190
  %203 = icmp eq i8 %40, 0
  %204 = and i1 %203, %43
  br i1 %204, label %205, label %231

205:                                              ; preds = %202
  %206 = load ptr, ptr %21, align 8, !tbaa !47
  %207 = getelementptr inbounds %struct.Scene, ptr %206, i64 0, i32 5
  %208 = load ptr, ptr %207, align 8, !tbaa !116
  %209 = icmp eq ptr %208, null
  br i1 %209, label %231, label %210

210:                                              ; preds = %205
  %211 = load ptr, ptr %30, align 8, !tbaa !48
  %212 = getelementptr inbounds %struct.View3D, ptr %211, i64 0, i32 22
  br label %213

213:                                              ; preds = %210, %228
  %214 = phi ptr [ %208, %210 ], [ %229, %228 ]
  %215 = getelementptr inbounds %struct.Base, ptr %214, i64 0, i32 2
  %216 = load i32, ptr %215, align 8, !tbaa !117
  %217 = load i32, ptr %212, align 8, !tbaa !119
  %218 = and i32 %217, %216
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %228, label %220

220:                                              ; preds = %213
  %221 = getelementptr inbounds %struct.Base, ptr %214, i64 0, i32 7
  %222 = load ptr, ptr %221, align 8, !tbaa !120
  %223 = getelementptr inbounds %struct.Object, ptr %222, i64 0, i32 102
  %224 = load i8, ptr %223, align 8, !tbaa !121
  %225 = and i8 %224, 3
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %220
  call void @ED_base_object_select(ptr noundef nonnull %214, i16 noundef signext 0) #12
  br label %228

228:                                              ; preds = %227, %220, %213
  %229 = load ptr, ptr %214, align 8, !tbaa !116
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %213, !llvm.loop !122

231:                                              ; preds = %228, %205, %202
  %232 = load ptr, ptr %21, align 8, !tbaa !47
  %233 = getelementptr inbounds %struct.Scene, ptr %232, i64 0, i32 5
  %234 = load ptr, ptr %233, align 8, !tbaa !116
  %235 = icmp eq ptr %234, null
  br i1 %235, label %317, label %236

236:                                              ; preds = %231
  %237 = shl i32 %45, 16
  %238 = ashr exact i32 %237, 16
  %239 = zext i1 %43 to i16
  %240 = getelementptr inbounds %struct.ViewContext, ptr %15, i64 0, i32 1
  %241 = getelementptr inbounds %struct.LassoSelectUserData, ptr %16, i64 0, i32 1
  %242 = getelementptr inbounds %struct.LassoSelectUserData, ptr %16, i64 0, i32 3
  %243 = getelementptr inbounds %struct.LassoSelectUserData, ptr %16, i64 0, i32 2
  %244 = getelementptr inbounds %struct.LassoSelectUserData, ptr %16, i64 0, i32 4
  %245 = getelementptr inbounds %struct.LassoSelectUserData, ptr %16, i64 0, i32 5
  %246 = getelementptr inbounds %struct.LassoSelectUserData, ptr %16, i64 0, i32 6
  %247 = getelementptr inbounds %struct.LassoSelectUserData, ptr %16, i64 0, i32 7
  %248 = getelementptr inbounds %struct.LassoSelectUserData, ptr %16, i64 0, i32 8
  %249 = getelementptr inbounds %struct.LassoSelectUserData, ptr %16, i64 0, i32 9
  br label %250

250:                                              ; preds = %236, %314
  %251 = phi ptr [ %234, %236 ], [ %315, %314 ]
  %252 = getelementptr inbounds %struct.Base, ptr %251, i64 0, i32 2
  %253 = load i32, ptr %252, align 8, !tbaa !117
  %254 = load ptr, ptr %30, align 8, !tbaa !48
  %255 = getelementptr inbounds %struct.View3D, ptr %254, i64 0, i32 22
  %256 = load i32, ptr %255, align 8, !tbaa !119
  %257 = and i32 %256, %253
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %314, label %259

259:                                              ; preds = %250
  %260 = getelementptr inbounds %struct.Base, ptr %251, i64 0, i32 7
  %261 = load ptr, ptr %260, align 8, !tbaa !120
  %262 = getelementptr inbounds %struct.Object, ptr %261, i64 0, i32 102
  %263 = load i8, ptr %262, align 8, !tbaa !121
  %264 = and i8 %263, 3
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %266, label %314

266:                                              ; preds = %259
  %267 = load ptr, ptr %27, align 8, !tbaa !45
  %268 = call i32 @ED_view3d_project_base(ptr noundef %267, ptr noundef nonnull %251) #12
  %269 = getelementptr inbounds %struct.Base, ptr %251, i64 0, i32 5
  %270 = load i16, ptr %269, align 4, !tbaa !123
  %271 = sext i16 %270 to i32
  %272 = getelementptr inbounds %struct.Base, ptr %251, i64 0, i32 6
  %273 = load i16, ptr %272, align 2, !tbaa !124
  %274 = sext i16 %273 to i32
  %275 = call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %23, i32 noundef %238, i32 noundef %271, i32 noundef %274, i32 noundef 12000) #12
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %283, label %277

277:                                              ; preds = %266
  call void @ED_base_object_select(ptr noundef nonnull %251, i16 noundef signext %239) #12
  %278 = getelementptr inbounds %struct.Base, ptr %251, i64 0, i32 4
  %279 = load i32, ptr %278, align 8, !tbaa !125
  %280 = trunc i32 %279 to i16
  %281 = load ptr, ptr %260, align 8, !tbaa !120
  %282 = getelementptr inbounds %struct.Object, ptr %281, i64 0, i32 53
  store i16 %280, ptr %282, align 4, !tbaa !126
  br label %283

283:                                              ; preds = %277, %266
  %284 = load ptr, ptr %34, align 8, !tbaa !50
  %285 = load ptr, ptr %260, align 8, !tbaa !120
  %286 = icmp eq ptr %284, %285
  br i1 %286, label %287, label %314

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.Object, ptr %285, i64 0, i32 27
  %289 = load i32, ptr %288, align 8, !tbaa !115
  %290 = and i32 %289, 64
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %314, label %292

292:                                              ; preds = %287
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #12
  %293 = getelementptr inbounds %struct.Object, ptr %285, i64 0, i32 3
  %294 = load i16, ptr %293, align 8, !tbaa !127
  %295 = icmp eq i16 %294, 25
  br i1 %295, label %296, label %313

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.Object, ptr %285, i64 0, i32 18
  %298 = load ptr, ptr %297, align 8, !tbaa !128
  %299 = icmp eq ptr %298, null
  br i1 %299, label %313, label %300

300:                                              ; preds = %296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef nonnull align 8 dereferenceable(64) %21, i64 64, i1 false), !tbaa.struct !129
  store ptr %285, ptr %240, align 8, !tbaa !50
  call void @BLI_lasso_boundbox(ptr noundef nonnull %17, ptr noundef %23, i32 noundef %238) #12
  store ptr %21, ptr %16, align 8, !tbaa !105
  store ptr %17, ptr %241, align 8, !tbaa !107
  store ptr %242, ptr %243, align 8, !tbaa !108
  call void @BLI_rctf_rcti_copy(ptr noundef nonnull %242, ptr noundef nonnull %17) #12
  store ptr %23, ptr %244, align 8, !tbaa !109
  store i32 %238, ptr %245, align 8, !tbaa !110
  store i8 %44, ptr %246, align 4, !tbaa !111
  store i32 0, ptr %247, align 8, !tbaa !112
  store i8 0, ptr %248, align 4, !tbaa !113
  store i8 0, ptr %249, align 1, !tbaa !114
  %301 = load ptr, ptr %34, align 8, !tbaa !50
  %302 = load ptr, ptr %32, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %301, ptr noundef %302) #12
  call void @pose_foreachScreenBone(ptr noundef nonnull %15, ptr noundef nonnull @do_lasso_select_pose__doSelectBone, ptr noundef nonnull %16, i32 noundef 7) #12
  %303 = load i8, ptr %249, align 1, !tbaa !114
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %313, label %305

305:                                              ; preds = %300
  %306 = getelementptr inbounds %struct.Object, ptr %285, i64 0, i32 19
  %307 = load ptr, ptr %306, align 8, !tbaa !82
  %308 = getelementptr inbounds %struct.bArmature, ptr %307, i64 0, i32 8
  %309 = load i32, ptr %308, align 8, !tbaa !131
  %310 = and i32 %309, 16384
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %313, label %312

312:                                              ; preds = %305
  call void @DAG_id_tag_update(ptr noundef %285, i16 noundef signext 2) #12
  br label %313

313:                                              ; preds = %312, %305, %300, %296, %292
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #12
  br label %314

314:                                              ; preds = %313, %287, %283, %259, %250
  %315 = load ptr, ptr %251, align 8, !tbaa !116
  %316 = icmp eq ptr %315, null
  br i1 %316, label %317, label %250, !llvm.loop !133

317:                                              ; preds = %314, %231
  %318 = load ptr, ptr %21, align 8, !tbaa !47
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %318) #12
  br label %541

319:                                              ; preds = %25
  %320 = getelementptr inbounds %struct.Object, ptr %48, i64 0, i32 3
  %321 = load i16, ptr %320, align 8, !tbaa !127
  switch i16 %321, label %537 [
    i16 1, label %322
    i16 2, label %443
    i16 3, label %443
    i16 22, label %469
    i16 25, label %488
    i16 5, label %517
  ]

322:                                              ; preds = %319
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #12
  %323 = load ptr, ptr %21, align 8, !tbaa !47
  %324 = getelementptr inbounds %struct.Scene, ptr %323, i64 0, i32 20
  %325 = load ptr, ptr %324, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #12
  %326 = call ptr @BKE_editmesh_from_object(ptr noundef nonnull %48) #12
  %327 = getelementptr inbounds %struct.ViewContext, ptr %21, i64 0, i32 6
  store ptr %326, ptr %327, align 8, !tbaa !151
  %328 = shl i32 %45, 16
  %329 = ashr exact i32 %328, 16
  call void @BLI_lasso_boundbox(ptr noundef nonnull %14, ptr noundef %23, i32 noundef %329) #12
  store ptr %21, ptr %13, align 8, !tbaa !105
  %330 = getelementptr inbounds %struct.LassoSelectUserData, ptr %13, i64 0, i32 1
  store ptr %14, ptr %330, align 8, !tbaa !107
  %331 = getelementptr inbounds %struct.LassoSelectUserData, ptr %13, i64 0, i32 3
  %332 = getelementptr inbounds %struct.LassoSelectUserData, ptr %13, i64 0, i32 2
  store ptr %331, ptr %332, align 8, !tbaa !108
  call void @BLI_rctf_rcti_copy(ptr noundef nonnull %331, ptr noundef nonnull %14) #12
  %333 = getelementptr inbounds %struct.LassoSelectUserData, ptr %13, i64 0, i32 4
  store ptr %23, ptr %333, align 8, !tbaa !109
  %334 = getelementptr inbounds %struct.LassoSelectUserData, ptr %13, i64 0, i32 5
  store i32 %329, ptr %334, align 8, !tbaa !110
  %335 = getelementptr inbounds %struct.LassoSelectUserData, ptr %13, i64 0, i32 6
  store i8 %44, ptr %335, align 4, !tbaa !111
  %336 = getelementptr inbounds %struct.LassoSelectUserData, ptr %13, i64 0, i32 7
  store i32 0, ptr %336, align 8, !tbaa !112
  %337 = getelementptr inbounds %struct.LassoSelectUserData, ptr %13, i64 0, i32 8
  store i8 0, ptr %337, align 4, !tbaa !113
  %338 = getelementptr inbounds %struct.LassoSelectUserData, ptr %13, i64 0, i32 9
  store i8 0, ptr %338, align 1, !tbaa !114
  %339 = icmp eq i8 %40, 0
  %340 = and i1 %339, %43
  br i1 %340, label %341, label %343

341:                                              ; preds = %322
  %342 = load ptr, ptr %327, align 8, !tbaa !151
  call void @EDBM_flag_disable_all(ptr noundef %342, i8 noundef zeroext 1) #12
  br label %343

343:                                              ; preds = %341, %322
  %344 = load ptr, ptr %36, align 8, !tbaa !51
  %345 = load ptr, ptr %32, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %344, ptr noundef %345) #12
  %346 = load ptr, ptr %32, align 8, !tbaa !49
  %347 = getelementptr inbounds %struct.RegionView3D, ptr %346, i64 0, i32 1
  call void @glLoadMatrixf(ptr noundef nonnull %347) #12
  %348 = load i32, ptr %14, align 4, !tbaa !90
  %349 = trunc i32 %348 to i16
  %350 = getelementptr inbounds %struct.rcti, ptr %14, i64 0, i32 2
  %351 = load i32, ptr %350, align 4, !tbaa !91
  %352 = trunc i32 %351 to i16
  %353 = getelementptr inbounds %struct.rcti, ptr %14, i64 0, i32 1
  %354 = load i32, ptr %353, align 4, !tbaa !92
  %355 = trunc i32 %354 to i16
  %356 = getelementptr inbounds %struct.rcti, ptr %14, i64 0, i32 3
  %357 = load i32, ptr %356, align 4, !tbaa !93
  %358 = trunc i32 %357 to i16
  %359 = call zeroext i8 @EDBM_backbuf_border_mask_init(ptr noundef nonnull %21, ptr noundef %23, i16 noundef signext %46, i16 noundef signext %349, i16 noundef signext %352, i16 noundef signext %355, i16 noundef signext %358) #12
  %360 = getelementptr inbounds %struct.ToolSettings, ptr %325, i64 0, i32 8
  %361 = load i16, ptr %360, align 2, !tbaa !152
  %362 = and i16 %361, 1
  %363 = icmp eq i16 %362, 0
  br i1 %363, label %397, label %364

364:                                              ; preds = %343
  %365 = icmp eq i8 %359, 0
  br i1 %365, label %396, label %366

366:                                              ; preds = %364
  %367 = load ptr, ptr %327, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  %368 = load i32, ptr @bm_wireoffs, align 4, !tbaa !64
  %369 = load ptr, ptr %367, align 8, !tbaa !159
  %370 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %370, align 4, !tbaa !161
  %371 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %371, align 8, !tbaa !163
  %372 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %372, align 8, !tbaa !164
  %373 = getelementptr inbounds %struct.BMesh, ptr %369, i64 0, i32 9
  %374 = load ptr, ptr %373, align 8, !tbaa !165
  store ptr %374, ptr %4, align 8, !tbaa !130
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #12
  %375 = load ptr, ptr %372, align 8, !tbaa !164
  %376 = call ptr %375(ptr noundef nonnull %4) #12
  %377 = icmp eq ptr %376, null
  br i1 %377, label %395, label %378

378:                                              ; preds = %366, %390
  %379 = phi i32 [ %391, %390 ], [ %368, %366 ]
  %380 = phi ptr [ %393, %390 ], [ %376, %366 ]
  %381 = getelementptr inbounds %struct.BMHeader, ptr %380, i64 0, i32 3
  %382 = load i8, ptr %381, align 1, !tbaa !167
  %383 = and i8 %382, 2
  %384 = icmp eq i8 %383, 0
  br i1 %384, label %385, label %390

385:                                              ; preds = %378
  %386 = call zeroext i8 @EDBM_backbuf_check(i32 noundef %379) #12
  %387 = icmp eq i8 %386, 0
  br i1 %387, label %390, label %388

388:                                              ; preds = %385
  %389 = load ptr, ptr %367, align 8, !tbaa !159
  call void @BM_vert_select_set(ptr noundef %389, ptr noundef nonnull %380, i8 noundef zeroext %44) #12
  br label %390

390:                                              ; preds = %388, %385, %378
  %391 = add i32 %379, 1
  %392 = load ptr, ptr %372, align 8, !tbaa !164
  %393 = call ptr %392(ptr noundef nonnull %4) #12
  %394 = icmp eq ptr %393, null
  br i1 %394, label %395, label %378, !llvm.loop !169

395:                                              ; preds = %390, %366
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  br label %397

396:                                              ; preds = %364
  call void @mesh_foreachScreenVert(ptr noundef nonnull %21, ptr noundef nonnull @do_lasso_select_mesh__doSelectVert, ptr noundef nonnull %13, i32 noundef 7) #12
  br label %397

397:                                              ; preds = %396, %395, %343
  %398 = load i16, ptr %360, align 2, !tbaa !152
  %399 = and i16 %398, 2
  %400 = icmp eq i16 %399, 0
  br i1 %400, label %405, label %401

401:                                              ; preds = %397
  store i32 0, ptr %336, align 8, !tbaa !112
  call void @mesh_foreachScreenEdge(ptr noundef nonnull %21, ptr noundef nonnull @do_lasso_select_mesh__doSelectEdge, ptr noundef nonnull %13, i32 noundef 4) #12
  %402 = load i8, ptr %337, align 4, !tbaa !113
  %403 = icmp eq i8 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %401
  store i32 1, ptr %336, align 8, !tbaa !112
  call void @mesh_foreachScreenEdge(ptr noundef nonnull %21, ptr noundef nonnull @do_lasso_select_mesh__doSelectEdge, ptr noundef nonnull %13, i32 noundef 4) #12
  br label %405

405:                                              ; preds = %404, %401, %397
  %406 = load i16, ptr %360, align 2, !tbaa !152
  %407 = and i16 %406, 4
  %408 = icmp eq i16 %407, 0
  br i1 %408, label %441, label %409

409:                                              ; preds = %405
  %410 = icmp eq i8 %359, 0
  br i1 %410, label %440, label %411

411:                                              ; preds = %409
  %412 = load ptr, ptr %327, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %413 = load ptr, ptr %412, align 8, !tbaa !159
  %414 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %414, align 4, !tbaa !161
  %415 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %415, align 8, !tbaa !163
  %416 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %416, align 8, !tbaa !164
  %417 = getelementptr inbounds %struct.BMesh, ptr %413, i64 0, i32 12
  %418 = load ptr, ptr %417, align 8, !tbaa !170
  store ptr %418, ptr %3, align 8, !tbaa !130
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #12
  %419 = load ptr, ptr %416, align 8, !tbaa !164
  %420 = call ptr %419(ptr noundef nonnull %3) #12
  %421 = icmp eq ptr %420, null
  br i1 %421, label %439, label %422

422:                                              ; preds = %411, %434
  %423 = phi i32 [ %435, %434 ], [ 1, %411 ]
  %424 = phi ptr [ %437, %434 ], [ %420, %411 ]
  %425 = getelementptr inbounds %struct.BMHeader, ptr %424, i64 0, i32 3
  %426 = load i8, ptr %425, align 1, !tbaa !167
  %427 = and i8 %426, 2
  %428 = icmp eq i8 %427, 0
  br i1 %428, label %429, label %434

429:                                              ; preds = %422
  %430 = call zeroext i8 @EDBM_backbuf_check(i32 noundef %423) #12
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %434, label %432

432:                                              ; preds = %429
  %433 = load ptr, ptr %412, align 8, !tbaa !159
  call void @BM_face_select_set(ptr noundef %433, ptr noundef nonnull %424, i8 noundef zeroext %44) #12
  br label %434

434:                                              ; preds = %432, %429, %422
  %435 = add i32 %423, 1
  %436 = load ptr, ptr %416, align 8, !tbaa !164
  %437 = call ptr %436(ptr noundef nonnull %3) #12
  %438 = icmp eq ptr %437, null
  br i1 %438, label %439, label %422, !llvm.loop !171

439:                                              ; preds = %434, %411
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  br label %441

440:                                              ; preds = %409
  call void @mesh_foreachScreenFace(ptr noundef nonnull %21, ptr noundef nonnull @do_lasso_select_mesh__doSelectFace, ptr noundef nonnull %13, i32 noundef 7) #12
  br label %441

441:                                              ; preds = %440, %439, %405
  call void @EDBM_backbuf_free() #12
  %442 = load ptr, ptr %327, align 8, !tbaa !151
  call void @EDBM_selectmode_flush(ptr noundef %442) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #12
  br label %537

443:                                              ; preds = %319, %319
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #12
  %444 = shl i32 %45, 16
  %445 = ashr exact i32 %444, 16
  call void @BLI_lasso_boundbox(ptr noundef nonnull %12, ptr noundef %23, i32 noundef %445) #12
  store ptr %21, ptr %11, align 8, !tbaa !105
  %446 = getelementptr inbounds %struct.LassoSelectUserData, ptr %11, i64 0, i32 1
  store ptr %12, ptr %446, align 8, !tbaa !107
  %447 = getelementptr inbounds %struct.LassoSelectUserData, ptr %11, i64 0, i32 3
  %448 = getelementptr inbounds %struct.LassoSelectUserData, ptr %11, i64 0, i32 2
  store ptr %447, ptr %448, align 8, !tbaa !108
  call void @BLI_rctf_rcti_copy(ptr noundef nonnull %447, ptr noundef nonnull %12) #12
  %449 = getelementptr inbounds %struct.LassoSelectUserData, ptr %11, i64 0, i32 4
  store ptr %23, ptr %449, align 8, !tbaa !109
  %450 = getelementptr inbounds %struct.LassoSelectUserData, ptr %11, i64 0, i32 5
  store i32 %445, ptr %450, align 8, !tbaa !110
  %451 = getelementptr inbounds %struct.LassoSelectUserData, ptr %11, i64 0, i32 6
  store i8 %44, ptr %451, align 4, !tbaa !111
  %452 = getelementptr inbounds %struct.LassoSelectUserData, ptr %11, i64 0, i32 7
  store i32 0, ptr %452, align 8, !tbaa !112
  %453 = getelementptr inbounds %struct.LassoSelectUserData, ptr %11, i64 0, i32 8
  store i8 0, ptr %453, align 4, !tbaa !113
  %454 = getelementptr inbounds %struct.LassoSelectUserData, ptr %11, i64 0, i32 9
  store i8 0, ptr %454, align 1, !tbaa !114
  %455 = icmp eq i8 %40, 0
  %456 = and i1 %455, %43
  br i1 %456, label %457, label %463

457:                                              ; preds = %443
  %458 = load ptr, ptr %36, align 8, !tbaa !51
  %459 = getelementptr inbounds %struct.Object, ptr %458, i64 0, i32 19
  %460 = load ptr, ptr %459, align 8, !tbaa !82
  %461 = getelementptr inbounds %struct.Curve, ptr %460, i64 0, i32 4
  %462 = load ptr, ptr %461, align 8, !tbaa !172
  call void @ED_curve_deselect_all(ptr noundef %462) #12
  br label %463

463:                                              ; preds = %457, %443
  %464 = load ptr, ptr %36, align 8, !tbaa !51
  %465 = load ptr, ptr %32, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %464, ptr noundef %465) #12
  call void @nurbs_foreachScreenVert(ptr noundef nonnull %21, ptr noundef nonnull @do_lasso_select_curve__doSelect, ptr noundef nonnull %11, i32 noundef 7) #12
  %466 = load ptr, ptr %36, align 8, !tbaa !51
  %467 = getelementptr inbounds %struct.Object, ptr %466, i64 0, i32 19
  %468 = load ptr, ptr %467, align 8, !tbaa !82
  call void @BKE_curve_nurb_vert_active_validate(ptr noundef %468) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #12
  br label %537

469:                                              ; preds = %319
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #12
  %470 = shl i32 %45, 16
  %471 = ashr exact i32 %470, 16
  call void @BLI_lasso_boundbox(ptr noundef nonnull %10, ptr noundef %23, i32 noundef %471) #12
  store ptr %21, ptr %9, align 8, !tbaa !105
  %472 = getelementptr inbounds %struct.LassoSelectUserData, ptr %9, i64 0, i32 1
  store ptr %10, ptr %472, align 8, !tbaa !107
  %473 = getelementptr inbounds %struct.LassoSelectUserData, ptr %9, i64 0, i32 3
  %474 = getelementptr inbounds %struct.LassoSelectUserData, ptr %9, i64 0, i32 2
  store ptr %473, ptr %474, align 8, !tbaa !108
  call void @BLI_rctf_rcti_copy(ptr noundef nonnull %473, ptr noundef nonnull %10) #12
  %475 = getelementptr inbounds %struct.LassoSelectUserData, ptr %9, i64 0, i32 4
  store ptr %23, ptr %475, align 8, !tbaa !109
  %476 = getelementptr inbounds %struct.LassoSelectUserData, ptr %9, i64 0, i32 5
  store i32 %471, ptr %476, align 8, !tbaa !110
  %477 = getelementptr inbounds %struct.LassoSelectUserData, ptr %9, i64 0, i32 6
  store i8 %44, ptr %477, align 4, !tbaa !111
  %478 = getelementptr inbounds %struct.LassoSelectUserData, ptr %9, i64 0, i32 7
  store i32 0, ptr %478, align 8, !tbaa !112
  %479 = getelementptr inbounds %struct.LassoSelectUserData, ptr %9, i64 0, i32 8
  store i8 0, ptr %479, align 4, !tbaa !113
  %480 = getelementptr inbounds %struct.LassoSelectUserData, ptr %9, i64 0, i32 9
  store i8 0, ptr %480, align 1, !tbaa !114
  %481 = icmp eq i8 %40, 0
  %482 = and i1 %481, %43
  br i1 %482, label %483, label %485

483:                                              ; preds = %469
  %484 = load ptr, ptr %36, align 8, !tbaa !51
  call void @ED_setflagsLatt(ptr noundef %484, i32 noundef 0) #12
  br label %485

485:                                              ; preds = %483, %469
  %486 = load ptr, ptr %36, align 8, !tbaa !51
  %487 = load ptr, ptr %32, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %486, ptr noundef %487) #12
  call void @lattice_foreachScreenVert(ptr noundef nonnull %21, ptr noundef nonnull @do_lasso_select_lattice__doSelect, ptr noundef nonnull %9, i32 noundef 7) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #12
  br label %537

488:                                              ; preds = %319
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #12
  %489 = shl i32 %45, 16
  %490 = ashr exact i32 %489, 16
  call void @BLI_lasso_boundbox(ptr noundef nonnull %8, ptr noundef %23, i32 noundef %490) #12
  store ptr %21, ptr %7, align 8, !tbaa !105
  %491 = getelementptr inbounds %struct.LassoSelectUserData, ptr %7, i64 0, i32 1
  store ptr %8, ptr %491, align 8, !tbaa !107
  %492 = getelementptr inbounds %struct.LassoSelectUserData, ptr %7, i64 0, i32 3
  %493 = getelementptr inbounds %struct.LassoSelectUserData, ptr %7, i64 0, i32 2
  store ptr %492, ptr %493, align 8, !tbaa !108
  call void @BLI_rctf_rcti_copy(ptr noundef nonnull %492, ptr noundef nonnull %8) #12
  %494 = getelementptr inbounds %struct.LassoSelectUserData, ptr %7, i64 0, i32 4
  store ptr %23, ptr %494, align 8, !tbaa !109
  %495 = getelementptr inbounds %struct.LassoSelectUserData, ptr %7, i64 0, i32 5
  store i32 %490, ptr %495, align 8, !tbaa !110
  %496 = getelementptr inbounds %struct.LassoSelectUserData, ptr %7, i64 0, i32 6
  store i8 %44, ptr %496, align 4, !tbaa !111
  %497 = getelementptr inbounds %struct.LassoSelectUserData, ptr %7, i64 0, i32 7
  store i32 0, ptr %497, align 8, !tbaa !112
  %498 = getelementptr inbounds %struct.LassoSelectUserData, ptr %7, i64 0, i32 8
  store i8 0, ptr %498, align 4, !tbaa !113
  %499 = getelementptr inbounds %struct.LassoSelectUserData, ptr %7, i64 0, i32 9
  store i8 0, ptr %499, align 1, !tbaa !114
  %500 = load ptr, ptr %36, align 8, !tbaa !51
  %501 = load ptr, ptr %32, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %500, ptr noundef %501) #12
  %502 = icmp eq i8 %40, 0
  %503 = and i1 %502, %43
  br i1 %503, label %504, label %506

504:                                              ; preds = %488
  %505 = load ptr, ptr %36, align 8, !tbaa !51
  call void @ED_armature_deselect_all_visible(ptr noundef %505) #12
  br label %506

506:                                              ; preds = %504, %488
  call void @armature_foreachScreenBone(ptr noundef nonnull %21, ptr noundef nonnull @do_lasso_select_armature__doSelectBone, ptr noundef nonnull %7, i32 noundef 7) #12
  %507 = load i8, ptr %499, align 1, !tbaa !114
  %508 = icmp eq i8 %507, 0
  br i1 %508, label %516, label %509

509:                                              ; preds = %506
  %510 = load ptr, ptr %36, align 8, !tbaa !51
  %511 = getelementptr inbounds %struct.Object, ptr %510, i64 0, i32 19
  %512 = load ptr, ptr %511, align 8, !tbaa !82
  %513 = getelementptr inbounds %struct.bArmature, ptr %512, i64 0, i32 4
  %514 = load ptr, ptr %513, align 8, !tbaa !175
  call void @ED_armature_sync_selection(ptr noundef %514) #12
  call void @ED_armature_validate_active(ptr noundef %512) #12
  %515 = load ptr, ptr %36, align 8, !tbaa !51
  call void @WM_main_add_notifier(i32 noundef 85327872, ptr noundef %515) #12
  br label %516

516:                                              ; preds = %509, %506
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #12
  br label %537

517:                                              ; preds = %319
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  %518 = icmp eq i8 %40, 0
  %519 = and i1 %518, %43
  br i1 %519, label %520, label %523

520:                                              ; preds = %517
  %521 = getelementptr inbounds %struct.Object, ptr %48, i64 0, i32 19
  %522 = load ptr, ptr %521, align 8, !tbaa !82
  call void @BKE_mball_deselect_all(ptr noundef %522) #12
  br label %523

523:                                              ; preds = %520, %517
  %524 = shl i32 %45, 16
  %525 = ashr exact i32 %524, 16
  call void @BLI_lasso_boundbox(ptr noundef nonnull %6, ptr noundef %23, i32 noundef %525) #12
  store ptr %21, ptr %5, align 8, !tbaa !105
  %526 = getelementptr inbounds %struct.LassoSelectUserData, ptr %5, i64 0, i32 1
  store ptr %6, ptr %526, align 8, !tbaa !107
  %527 = getelementptr inbounds %struct.LassoSelectUserData, ptr %5, i64 0, i32 3
  %528 = getelementptr inbounds %struct.LassoSelectUserData, ptr %5, i64 0, i32 2
  store ptr %527, ptr %528, align 8, !tbaa !108
  call void @BLI_rctf_rcti_copy(ptr noundef nonnull %527, ptr noundef nonnull %6) #12
  %529 = getelementptr inbounds %struct.LassoSelectUserData, ptr %5, i64 0, i32 4
  store ptr %23, ptr %529, align 8, !tbaa !109
  %530 = getelementptr inbounds %struct.LassoSelectUserData, ptr %5, i64 0, i32 5
  store i32 %525, ptr %530, align 8, !tbaa !110
  %531 = getelementptr inbounds %struct.LassoSelectUserData, ptr %5, i64 0, i32 6
  store i8 %44, ptr %531, align 4, !tbaa !111
  %532 = getelementptr inbounds %struct.LassoSelectUserData, ptr %5, i64 0, i32 7
  store i32 0, ptr %532, align 8, !tbaa !112
  %533 = getelementptr inbounds %struct.LassoSelectUserData, ptr %5, i64 0, i32 8
  store i8 0, ptr %533, align 4, !tbaa !113
  %534 = getelementptr inbounds %struct.LassoSelectUserData, ptr %5, i64 0, i32 9
  store i8 0, ptr %534, align 1, !tbaa !114
  %535 = load ptr, ptr %36, align 8, !tbaa !51
  %536 = load ptr, ptr %32, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %535, ptr noundef %536) #12
  call void @mball_foreachScreenElem(ptr noundef nonnull %21, ptr noundef nonnull @do_lasso_select_mball__doSelectElem, ptr noundef nonnull %5, i32 noundef 7) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #12
  br label %537

537:                                              ; preds = %523, %516, %485, %463, %441, %319
  %538 = load ptr, ptr %36, align 8, !tbaa !51
  %539 = getelementptr inbounds %struct.Object, ptr %538, i64 0, i32 19
  %540 = load ptr, ptr %539, align 8, !tbaa !82
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %540) #12
  br label %541

541:                                              ; preds = %108, %189, %192, %200, %317, %537
  %542 = load ptr, ptr @MEM_freeN, align 8, !tbaa !116
  call void %542(ptr noundef nonnull %23) #12
  br label %543

543:                                              ; preds = %2, %541
  %544 = phi i32 [ 4, %541 ], [ 8, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %21) #12
  ret i32 %544
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view3d_selectable_data(ptr noundef %0) #1 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #12
  %3 = tail call i32 @ED_operator_region_view3d_active(ptr noundef %0) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = icmp eq ptr %2, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %9 = load i32, ptr %8, align 8, !tbaa !115
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !127
  %15 = icmp eq i16 %14, 4
  br i1 %15, label %23, label %22

16:                                               ; preds = %7
  %17 = and i32 %9, 28
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = tail call zeroext i8 @BKE_paint_select_elem_test(ptr noundef nonnull %2) #12
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %12, %19, %16, %5
  br label %23

23:                                               ; preds = %19, %12, %1, %22
  %24 = phi i32 [ 1, %22 ], [ 0, %1 ], [ 0, %12 ], [ 0, %19 ]
  ret i32 %24
}

declare void @WM_gesture_lasso_cancel(ptr noundef, ptr noundef) #3

declare ptr @RNA_def_collection_runtime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @VIEW3D_OT_select_menu(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !68
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !71
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !72
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_select_menu_exec, ptr %5, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !79
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.15, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5) #12
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @object_select_menu_enum_itemf) #12
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 537395200) #12
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !176
  %11 = load ptr, ptr %7, align 8, !tbaa !79
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.17, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #12
  ret void
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_select_menu_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.15) #12
  %8 = load ptr, ptr %5, align 8, !tbaa !80
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.17) #12
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [22 x %struct.SelMenuItemF], ptr @object_mouse_select_menu_data, i64 0, i64 %10
  %12 = and i32 %9, 255
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  %15 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %3) #12
  %16 = load ptr, ptr %3, align 8, !tbaa !116
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %14, %28
  %19 = phi ptr [ %30, %28 ], [ %16, %14 ]
  %20 = phi i8 [ %29, %28 ], [ 0, %14 ]
  %21 = getelementptr inbounds %struct.CollectionPointerLink, ptr %19, i64 0, i32 2, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !177
  %23 = getelementptr inbounds %struct.Base, ptr %22, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !125
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  call void @ED_base_object_select(ptr noundef %22, i16 noundef signext 0) #12
  br label %28

28:                                               ; preds = %27, %18
  %29 = phi i8 [ 1, %27 ], [ %20, %18 ]
  %30 = load ptr, ptr %19, align 8, !tbaa !116
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %18, !llvm.loop !181

32:                                               ; preds = %28, %14
  %33 = phi i8 [ 0, %14 ], [ %29, %28 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  br label %34

34:                                               ; preds = %32, %2
  %35 = phi i8 [ 0, %2 ], [ %33, %32 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  %36 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %4) #12
  %37 = load ptr, ptr %4, align 8, !tbaa !116
  %38 = icmp eq ptr %37, null
  br i1 %38, label %54, label %39

39:                                               ; preds = %34, %50
  %40 = phi ptr [ %52, %50 ], [ %37, %34 ]
  %41 = phi i8 [ %51, %50 ], [ %35, %34 ]
  %42 = getelementptr inbounds %struct.CollectionPointerLink, ptr %40, i64 0, i32 2, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !177
  %44 = getelementptr inbounds %struct.Base, ptr %43, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !120
  %46 = getelementptr inbounds %struct.ID, ptr %45, i64 0, i32 4, i64 2
  %47 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %46) #13
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  call void @ED_base_object_activate(ptr noundef %0, ptr noundef %43) #12
  call void @ED_base_object_select(ptr noundef %43, i16 noundef signext 1) #12
  br label %50

50:                                               ; preds = %49, %39
  %51 = phi i8 [ 1, %49 ], [ %41, %39 ]
  %52 = load ptr, ptr %40, align 8, !tbaa !116
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %39, !llvm.loop !182

54:                                               ; preds = %50, %34
  %55 = phi i8 [ %35, %34 ], [ %51, %50 ]
  call void @BLI_freelistN(ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1496) @object_mouse_select_menu_data, i8 0, i64 1496, i1 false)
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = call ptr @CTX_data_scene(ptr noundef %0) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %58) #12
  br label %59

59:                                               ; preds = %54, %57
  %60 = phi i32 [ 4, %57 ], [ 2, %54 ]
  ret i32 %60
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @object_select_menu_enum_itemf(ptr noundef readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #1 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.EnumPropertyItem, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store ptr null, ptr %5, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !tbaa !64
  %8 = icmp eq ptr %0, null
  %9 = load i8, ptr @object_mouse_select_menu_data, align 16
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %29, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 3
  %14 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 1
  %15 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 2
  br label %16

16:                                               ; preds = %12, %21
  %17 = phi i64 [ 0, %12 ], [ %25, %21 ]
  %18 = getelementptr inbounds [22 x %struct.SelMenuItemF], ptr @object_mouse_select_menu_data, i64 0, i64 %17
  %19 = load i8, ptr %18, align 4, !tbaa !130
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  store ptr %18, ptr %13, align 8, !tbaa !183
  store ptr %18, ptr %14, align 8, !tbaa !185
  %22 = trunc i64 %17 to i32
  store i32 %22, ptr %6, align 8, !tbaa !186
  %23 = getelementptr inbounds [22 x %struct.SelMenuItemF], ptr @object_mouse_select_menu_data, i64 0, i64 %17, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !187
  store i32 %24, ptr %15, align 8, !tbaa !189
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6) #12
  %25 = add nuw nsw i64 %17, 1
  %26 = icmp eq i64 %25, 22
  br i1 %26, label %27, label %16, !llvm.loop !190

27:                                               ; preds = %21, %16
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %7) #12
  store i8 1, ptr %3, align 1, !tbaa !130
  %28 = load ptr, ptr %5, align 8, !tbaa !116
  br label %29

29:                                               ; preds = %4, %27
  %30 = phi ptr [ %28, %27 ], [ @DummyRNA_NULL_items, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret ptr %30
}

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_view3d_give_base_under_cursor(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = alloca %struct.ViewContext, align 8
  %4 = alloca [40000 x i32], align 16
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 160000, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #12
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %7 = getelementptr inbounds %struct.ViewContext, ptr %3, i64 0, i32 3
  store ptr %6, ptr %7, align 8, !tbaa !45
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  store ptr %8, ptr %3, align 8, !tbaa !47
  %9 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #12
  %10 = getelementptr inbounds %struct.ViewContext, ptr %3, i64 0, i32 4
  store ptr %9, ptr %10, align 8, !tbaa !48
  %11 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #12
  %12 = getelementptr inbounds %struct.ViewContext, ptr %3, i64 0, i32 5
  store ptr %11, ptr %12, align 8, !tbaa !49
  %13 = tail call ptr @CTX_data_active_object(ptr noundef %0) #12
  %14 = getelementptr inbounds %struct.ViewContext, ptr %3, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !50
  %15 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %16 = getelementptr inbounds %struct.ViewContext, ptr %3, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !51
  %17 = call fastcc signext i16 @mixed_bones_object_selectbuffer(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %5, i8 noundef zeroext 0)
  %18 = icmp sgt i16 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %2
  %20 = zext nneg i16 %17 to i32
  %21 = zext nneg i16 %17 to i64
  br label %25

22:                                               ; preds = %25
  %23 = add nuw nsw i64 %26, 1
  %24 = icmp eq i64 %23, %21
  br i1 %24, label %32, label %25, !llvm.loop !191

25:                                               ; preds = %19, %22
  %26 = phi i64 [ 0, %19 ], [ %23, %22 ]
  %27 = shl i64 %26, 2
  %28 = or disjoint i64 %27, 3
  %29 = getelementptr inbounds i32, ptr %4, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !64
  %31 = icmp ult i32 %30, 65536
  br i1 %31, label %22, label %32

32:                                               ; preds = %22, %25
  %33 = phi i8 [ 1, %25 ], [ 0, %22 ]
  %34 = load ptr, ptr %3, align 8, !tbaa !47
  %35 = getelementptr inbounds %struct.Scene, ptr %34, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !192
  %37 = load i8, ptr %5, align 1, !tbaa !130
  %38 = call fastcc ptr @mouse_select_eval_buffer(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %20, ptr noundef %36, i8 noundef zeroext %33, i8 noundef zeroext %37)
  br label %39

39:                                               ; preds = %32, %2
  %40 = phi ptr [ %38, %32 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 160000, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret ptr %40
}

declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc signext i16 @mixed_bones_object_selectbuffer(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef writeonly %3, i8 noundef zeroext %4) unnamed_addr #1 {
  %6 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 24
  %10 = load i16, ptr %9, align 8, !tbaa !193
  %11 = icmp sgt i16 %10, 2
  br i1 %11, label %12, label %25

12:                                               ; preds = %5
  %13 = load i32, ptr @mixed_bones_object_selectbuffer.last_mval.0, align 4, !tbaa !64
  %14 = load i32, ptr %2, align 4, !tbaa !64
  %15 = sub nsw i32 %13, %14
  %16 = load i32, ptr @mixed_bones_object_selectbuffer.last_mval.1, align 4, !tbaa !64
  %17 = getelementptr inbounds i32, ptr %2, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !64
  %19 = sub nsw i32 %16, %18
  %20 = tail call i32 @llvm.abs.i32(i32 %15, i1 true)
  %21 = tail call i32 @llvm.abs.i32(i32 %19, i1 true)
  %22 = add nuw nsw i32 %21, %20
  %23 = icmp ugt i32 %22, 2
  %24 = zext i1 %23 to i8
  br label %25

25:                                               ; preds = %12, %5
  %26 = phi i1 [ false, %5 ], [ %23, %12 ]
  %27 = phi i8 [ 0, %5 ], [ %24, %12 ]
  %28 = load i32, ptr %2, align 4, !tbaa !64
  store i32 %28, ptr @mixed_bones_object_selectbuffer.last_mval.0, align 4, !tbaa !64
  %29 = getelementptr inbounds i32, ptr %2, i64 1
  %30 = load i32, ptr %29, align 4, !tbaa !64
  store i32 %30, ptr @mixed_bones_object_selectbuffer.last_mval.1, align 4, !tbaa !64
  %31 = icmp eq ptr %3, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store i8 %27, ptr %3, align 1, !tbaa !130
  br label %33

33:                                               ; preds = %32, %25
  %34 = icmp eq i8 %4, 0
  %35 = and i1 %34, %26
  %36 = zext i1 %35 to i8
  %37 = load i32, ptr %2, align 4, !tbaa !64
  %38 = add nsw i32 %37, -14
  %39 = add nsw i32 %37, 14
  %40 = load i32, ptr %29, align 4, !tbaa !64
  %41 = add nsw i32 %40, -14
  %42 = add nsw i32 %40, 14
  call void @BLI_rcti_init(ptr noundef nonnull %6, i32 noundef %38, i32 noundef %39, i32 noundef %41, i32 noundef %42) #12
  %43 = call signext i16 @view3d_opengl_select(ptr noundef %0, ptr noundef %1, i32 noundef 10000, ptr noundef nonnull %6, i8 noundef zeroext %36) #12
  %44 = sext i16 %43 to i32
  %45 = icmp eq i16 %43, 1
  br i1 %45, label %169, label %46

46:                                               ; preds = %33
  %47 = icmp sgt i16 %43, 0
  br i1 %47, label %48, label %169

48:                                               ; preds = %46
  %49 = zext nneg i32 %44 to i64
  %50 = zext nneg i32 %44 to i64
  %51 = getelementptr inbounds i32, ptr %1, i64 3
  %52 = load i32, ptr %51, align 4, !tbaa !64
  %53 = icmp ult i32 %52, 65536
  br i1 %53, label %54, label %67

54:                                               ; preds = %48, %58
  %55 = phi i64 [ %56, %58 ], [ 0, %48 ]
  %56 = add nuw nsw i64 %55, 1
  %57 = icmp eq i64 %56, %50
  br i1 %57, label %65, label %58, !llvm.loop !191

58:                                               ; preds = %54
  %59 = shl i64 %56, 2
  %60 = and i64 %59, 4294967292
  %61 = or disjoint i64 %60, 3
  %62 = getelementptr inbounds i32, ptr %1, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !64
  %64 = icmp ult i32 %63, 65536
  br i1 %64, label %54, label %65, !llvm.loop !191

65:                                               ; preds = %54, %58
  %66 = icmp ult i64 %56, %49
  br label %67

67:                                               ; preds = %65, %48
  %68 = phi i1 [ true, %48 ], [ %66, %65 ]
  %69 = shl nuw nsw i32 %44, 2
  %70 = load i32, ptr %2, align 4, !tbaa !64
  %71 = add nsw i32 %70, -9
  %72 = add nsw i32 %70, 9
  %73 = load i32, ptr %29, align 4, !tbaa !64
  %74 = add nsw i32 %73, -9
  %75 = add nsw i32 %73, 9
  call void @BLI_rcti_init(ptr noundef nonnull %6, i32 noundef %71, i32 noundef %72, i32 noundef %74, i32 noundef %75) #12
  %76 = zext nneg i32 %69 to i64
  %77 = getelementptr inbounds i32, ptr %1, i64 %76
  %78 = sub nsw i32 10000, %69
  %79 = call signext i16 @view3d_opengl_select(ptr noundef %0, ptr noundef nonnull %77, i32 noundef %78, ptr noundef nonnull %6, i8 noundef zeroext %36) #12
  %80 = sext i16 %79 to i32
  %81 = icmp eq i16 %79, 1
  br i1 %81, label %82, label %83

82:                                               ; preds = %67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %77, i64 16, i1 false)
  br label %169

83:                                               ; preds = %67
  %84 = icmp sgt i16 %79, 0
  br i1 %84, label %85, label %136

85:                                               ; preds = %83
  %86 = zext nneg i32 %80 to i64
  br label %90

87:                                               ; preds = %90
  %88 = add nuw nsw i64 %91, 1
  %89 = icmp eq i64 %88, %86
  br i1 %89, label %98, label %90, !llvm.loop !191

90:                                               ; preds = %85, %87
  %91 = phi i64 [ 0, %85 ], [ %88, %87 ]
  %92 = shl i64 %91, 2
  %93 = and i64 %92, 4294967292
  %94 = or disjoint i64 %93, 3
  %95 = getelementptr inbounds i32, ptr %77, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !64
  %97 = icmp ult i32 %96, 65536
  br i1 %97, label %87, label %98

98:                                               ; preds = %87, %90
  %99 = phi i8 [ 1, %90 ], [ 0, %87 ]
  %100 = add nuw nsw i32 %80, %44
  %101 = shl nuw nsw i32 %100, 2
  %102 = load i32, ptr %2, align 4, !tbaa !64
  %103 = add nsw i32 %102, -5
  %104 = add nsw i32 %102, 5
  %105 = load i32, ptr %29, align 4, !tbaa !64
  %106 = add nsw i32 %105, -5
  %107 = add nsw i32 %105, 5
  call void @BLI_rcti_init(ptr noundef nonnull %6, i32 noundef %103, i32 noundef %104, i32 noundef %106, i32 noundef %107) #12
  %108 = zext nneg i32 %101 to i64
  %109 = getelementptr inbounds i32, ptr %1, i64 %108
  %110 = sub nsw i32 10000, %101
  %111 = call signext i16 @view3d_opengl_select(ptr noundef %0, ptr noundef %109, i32 noundef %110, ptr noundef nonnull %6, i8 noundef zeroext %36) #12
  %112 = sext i16 %111 to i32
  %113 = icmp eq i16 %111, 1
  br i1 %113, label %114, label %115

114:                                              ; preds = %98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %109, i64 16, i1 false)
  br label %169

115:                                              ; preds = %98
  %116 = icmp sgt i16 %111, 0
  br i1 %116, label %117, label %136

117:                                              ; preds = %115
  %118 = zext nneg i32 %112 to i64
  %119 = zext nneg i32 %112 to i64
  %120 = getelementptr inbounds i32, ptr %109, i64 3
  %121 = load i32, ptr %120, align 4, !tbaa !64
  %122 = icmp ult i32 %121, 65536
  br i1 %122, label %123, label %136

123:                                              ; preds = %117, %127
  %124 = phi i64 [ %125, %127 ], [ 0, %117 ]
  %125 = add nuw nsw i64 %124, 1
  %126 = icmp eq i64 %125, %119
  br i1 %126, label %134, label %127, !llvm.loop !191

127:                                              ; preds = %123
  %128 = shl i64 %125, 2
  %129 = and i64 %128, 4294967292
  %130 = or disjoint i64 %129, 3
  %131 = getelementptr inbounds i32, ptr %109, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !64
  %133 = icmp ult i32 %132, 65536
  br i1 %133, label %123, label %134, !llvm.loop !191

134:                                              ; preds = %127, %123
  %135 = icmp uge i64 %125, %118
  br label %136

136:                                              ; preds = %134, %117, %83, %115
  %137 = phi i16 [ %111, %115 ], [ 0, %83 ], [ %111, %117 ], [ %111, %134 ]
  %138 = phi i8 [ %99, %115 ], [ 0, %83 ], [ %99, %117 ], [ %99, %134 ]
  %139 = phi i1 [ true, %115 ], [ true, %83 ], [ false, %117 ], [ %135, %134 ]
  br i1 %139, label %149, label %140

140:                                              ; preds = %136
  %141 = add nsw i32 %80, %44
  %142 = shl nsw i32 %141, 2
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, ptr %1, i64 %143
  %145 = sext i16 %137 to i32
  %146 = shl nsw i32 %145, 2
  %147 = sext i32 %146 to i64
  %148 = shl nsw i64 %147, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %144, i64 %148, i1 false)
  br label %169

149:                                              ; preds = %136
  %150 = icmp eq i8 %138, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %149
  %152 = shl nsw i32 %80, 2
  %153 = sext i32 %152 to i64
  %154 = shl nsw i64 %153, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr nonnull align 4 %77, i64 %154, i1 false)
  br label %169

155:                                              ; preds = %149
  br i1 %68, label %169, label %156

156:                                              ; preds = %155
  %157 = icmp sgt i16 %137, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %156
  %159 = add nsw i32 %80, %44
  %160 = shl nsw i32 %159, 2
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, ptr %1, i64 %161
  %163 = zext nneg i16 %137 to i64
  %164 = shl nuw nsw i64 %163, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %162, i64 %164, i1 false)
  br label %169

165:                                              ; preds = %156
  br i1 %84, label %166, label %169

166:                                              ; preds = %165
  %167 = shl nuw nsw i32 %80, 4
  %168 = zext nneg i32 %167 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr nonnull align 4 %77, i64 %168, i1 false)
  br label %169

169:                                              ; preds = %165, %155, %33, %46, %166, %158, %151, %140, %114, %82
  %170 = phi i16 [ %79, %82 ], [ %111, %114 ], [ %137, %140 ], [ %79, %151 ], [ %137, %158 ], [ %79, %166 ], [ 0, %46 ], [ %43, %33 ], [ %43, %155 ], [ %43, %165 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  ret i16 %170
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @mouse_select_eval_buffer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef readonly %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #5 {
  %7 = load ptr, ptr %0, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = icmp eq i8 %5, 0
  br i1 %10, label %108, label %11

11:                                               ; preds = %6
  %12 = icmp eq i8 %4, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %11
  %14 = icmp sgt i32 %2, 0
  br i1 %14, label %15, label %80

15:                                               ; preds = %13
  %16 = zext nneg i32 %2 to i64
  br label %17

17:                                               ; preds = %15, %34
  %18 = phi i64 [ 0, %15 ], [ %37, %34 ]
  %19 = phi i32 [ 0, %15 ], [ %36, %34 ]
  %20 = phi i32 [ -1, %15 ], [ %35, %34 ]
  %21 = shl nsw i64 %18, 2
  %22 = or disjoint i64 %21, 1
  %23 = getelementptr inbounds i32, ptr %1, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !64
  %25 = icmp ugt i32 %20, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = or disjoint i64 %21, 3
  %28 = getelementptr inbounds i32, ptr %1, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !64
  %30 = icmp ult i32 %29, 65536
  %31 = and i32 %29, 65535
  %32 = select i1 %30, i32 %20, i32 %24
  %33 = select i1 %30, i32 %19, i32 %31
  br label %34

34:                                               ; preds = %26, %17
  %35 = phi i32 [ %20, %17 ], [ %32, %26 ]
  %36 = phi i32 [ %19, %17 ], [ %33, %26 ]
  %37 = add nuw nsw i64 %18, 1
  %38 = icmp eq i64 %37, %16
  br i1 %38, label %80, label %17, !llvm.loop !194

39:                                               ; preds = %11
  %40 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !195
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.Base, ptr %41, i64 0, i32 4
  %45 = load i32, ptr %44, align 8, !tbaa !125
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  %48 = icmp sgt i32 %2, 1
  %49 = and i1 %48, %47
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.Base, ptr %41, i64 0, i32 3
  %52 = load i32, ptr %51, align 4, !tbaa !196
  br label %53

53:                                               ; preds = %50, %43, %39
  %54 = phi i32 [ %52, %50 ], [ 0, %43 ], [ 0, %39 ]
  %55 = icmp sgt i32 %2, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %53
  %57 = zext nneg i32 %2 to i64
  br label %58

58:                                               ; preds = %56, %75
  %59 = phi i64 [ 0, %56 ], [ %78, %75 ]
  %60 = phi i32 [ 0, %56 ], [ %77, %75 ]
  %61 = phi i32 [ -1, %56 ], [ %76, %75 ]
  %62 = shl nsw i64 %59, 2
  %63 = or disjoint i64 %62, 1
  %64 = getelementptr inbounds i32, ptr %1, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !64
  %66 = icmp ugt i32 %61, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %58
  %68 = or disjoint i64 %62, 3
  %69 = getelementptr inbounds i32, ptr %1, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !64
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %54, %71
  %73 = select i1 %72, i32 %61, i32 %65
  %74 = select i1 %72, i32 %60, i32 %71
  br label %75

75:                                               ; preds = %67, %58
  %76 = phi i32 [ %61, %58 ], [ %73, %67 ]
  %77 = phi i32 [ %60, %58 ], [ %74, %67 ]
  %78 = add nuw nsw i64 %59, 1
  %79 = icmp eq i64 %78, %57
  br i1 %79, label %80, label %58, !llvm.loop !197

80:                                               ; preds = %34, %75, %13, %53
  %81 = phi i32 [ 0, %53 ], [ 0, %13 ], [ %77, %75 ], [ %36, %34 ]
  %82 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !116
  %84 = icmp eq ptr %83, null
  br i1 %84, label %189, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.View3D, ptr %9, i64 0, i32 22
  %87 = load i32, ptr %86, align 8, !tbaa !119
  br label %88

88:                                               ; preds = %85, %105
  %89 = phi ptr [ %83, %85 ], [ %106, %105 ]
  %90 = getelementptr inbounds %struct.Base, ptr %89, i64 0, i32 2
  %91 = load i32, ptr %90, align 8, !tbaa !117
  %92 = and i32 %87, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %105, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.Base, ptr %89, i64 0, i32 7
  %96 = load ptr, ptr %95, align 8, !tbaa !120
  %97 = getelementptr inbounds %struct.Object, ptr %96, i64 0, i32 102
  %98 = load i8, ptr %97, align 8, !tbaa !121
  %99 = and i8 %98, 3
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.Base, ptr %89, i64 0, i32 3
  %103 = load i32, ptr %102, align 4, !tbaa !196
  %104 = icmp eq i32 %103, %81
  br i1 %104, label %189, label %105

105:                                              ; preds = %101, %94, %88
  %106 = load ptr, ptr %89, align 8, !tbaa !116
  %107 = icmp eq ptr %106, null
  br i1 %107, label %189, label %88, !llvm.loop !198

108:                                              ; preds = %6
  %109 = icmp eq ptr %3, null
  br i1 %109, label %189, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 5
  %112 = getelementptr inbounds %struct.View3D, ptr %9, i64 0, i32 22
  %113 = icmp slt i32 %2, 1
  %114 = icmp eq i8 %4, 0
  %115 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 5
  %116 = zext i32 %2 to i64
  br label %117

117:                                              ; preds = %110, %184
  %118 = phi ptr [ %185, %184 ], [ %3, %110 ]
  %119 = getelementptr inbounds %struct.Base, ptr %118, i64 0, i32 7
  %120 = load ptr, ptr %119, align 8, !tbaa !120
  %121 = getelementptr inbounds %struct.Object, ptr %120, i64 0, i32 102
  %122 = load i8, ptr %121, align 8, !tbaa !121
  %123 = and i8 %122, 2
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %117
  %126 = load ptr, ptr %118, align 8, !tbaa !199
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load ptr, ptr %111, align 8, !tbaa !192
  br label %130

130:                                              ; preds = %128, %125
  %131 = phi ptr [ %129, %128 ], [ %126, %125 ]
  %132 = icmp eq ptr %131, %3
  br i1 %132, label %189, label %133

133:                                              ; preds = %130, %117
  %134 = phi ptr [ %131, %130 ], [ %118, %117 ]
  %135 = getelementptr inbounds %struct.Base, ptr %134, i64 0, i32 2
  %136 = load i32, ptr %135, align 8, !tbaa !117
  %137 = load i32, ptr %112, align 8, !tbaa !119
  %138 = and i32 %137, %136
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %176, label %140

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.Base, ptr %134, i64 0, i32 7
  %142 = load ptr, ptr %141, align 8, !tbaa !120
  %143 = getelementptr inbounds %struct.Object, ptr %142, i64 0, i32 102
  %144 = load i8, ptr %143, align 8, !tbaa !121
  %145 = and i8 %144, 3
  %146 = icmp ne i8 %145, 0
  %147 = or i1 %146, %113
  br i1 %147, label %176, label %148

148:                                              ; preds = %140
  %149 = getelementptr inbounds %struct.Base, ptr %134, i64 0, i32 3
  br label %150

150:                                              ; preds = %148, %172
  %151 = phi i64 [ 0, %148 ], [ %174, %172 ]
  %152 = phi ptr [ null, %148 ], [ %173, %172 ]
  br i1 %114, label %160, label %153

153:                                              ; preds = %150
  %154 = shl i64 %151, 2
  %155 = and i64 %154, 4294967292
  %156 = or disjoint i64 %155, 3
  %157 = getelementptr inbounds i32, ptr %1, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !64
  %159 = icmp ult i32 %158, 65536
  br i1 %159, label %172, label %166

160:                                              ; preds = %150
  %161 = shl i64 %151, 2
  %162 = and i64 %161, 4294967292
  %163 = or disjoint i64 %162, 3
  %164 = getelementptr inbounds i32, ptr %1, i64 %163
  %165 = load i32, ptr %164, align 4, !tbaa !64
  br label %166

166:                                              ; preds = %153, %160
  %167 = phi i32 [ %165, %160 ], [ %158, %153 ]
  %168 = load i32, ptr %149, align 4, !tbaa !196
  %169 = and i32 %167, 65535
  %170 = icmp eq i32 %168, %169
  %171 = select i1 %170, ptr %134, ptr %152
  br label %172

172:                                              ; preds = %166, %153
  %173 = phi ptr [ %152, %153 ], [ %171, %166 ]
  %174 = add nuw nsw i64 %151, 1
  %175 = icmp eq i64 %174, %116
  br i1 %175, label %176, label %150, !llvm.loop !200

176:                                              ; preds = %172, %140, %133
  %177 = phi ptr [ null, %140 ], [ null, %133 ], [ %173, %172 ]
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %189

179:                                              ; preds = %176
  %180 = load ptr, ptr %134, align 8, !tbaa !199
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = load ptr, ptr %115, align 8, !tbaa !192
  br label %184

184:                                              ; preds = %182, %179
  %185 = phi ptr [ %183, %182 ], [ %180, %179 ]
  %186 = icmp ne ptr %185, %3
  %187 = icmp ne ptr %185, null
  %188 = and i1 %186, %187
  br i1 %188, label %117, label %189, !llvm.loop !201

189:                                              ; preds = %101, %105, %130, %176, %184, %80, %108
  %190 = phi ptr [ null, %108 ], [ %83, %80 ], [ null, %130 ], [ %177, %176 ], [ null, %184 ], [ %106, %105 ], [ %89, %101 ]
  ret ptr %190
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @edge_inside_circle(ptr noundef %0, float noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = fmul float %1, %1
  %6 = tail call float @dist_squared_to_line_segment_v2(ptr noundef %0, ptr noundef %2, ptr noundef %3) #12
  %7 = fcmp olt float %6, %5
  %8 = zext i1 %7 to i8
  ret i8 %8
}

declare float @dist_squared_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @VIEW3D_OT_select_border(ptr noundef %0) local_unnamed_addr #1 {
  store ptr @.str.20, ptr %0, align 8, !tbaa !68
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.21, ptr %2, align 8, !tbaa !71
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %3, align 8, !tbaa !72
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_borderselect_exec, ptr %5, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view3d_selectable_data, ptr %7, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %8, align 8, !tbaa !77
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %9, align 8, !tbaa !78
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #12
  ret void
}

declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @view3d_borderselect_exec(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.BoxSelectUserData, align 8
  %7 = alloca %struct.BoxSelectUserData, align 8
  %8 = alloca [40000 x i32], align 16
  %9 = alloca [40000 x i32], align 16
  %10 = alloca %struct.BoxSelectUserData, align 8
  %11 = alloca %struct.BoxSelectUserData, align 8
  %12 = alloca %struct.ViewContext, align 8
  %13 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #12
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %12, i8 0, i64 64, i1 false)
  %14 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %15 = getelementptr inbounds %struct.ViewContext, ptr %12, i64 0, i32 3
  store ptr %14, ptr %15, align 8, !tbaa !45
  %16 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  store ptr %16, ptr %12, align 8, !tbaa !47
  %17 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #12
  %18 = getelementptr inbounds %struct.ViewContext, ptr %12, i64 0, i32 4
  store ptr %17, ptr %18, align 8, !tbaa !48
  %19 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #12
  %20 = getelementptr inbounds %struct.ViewContext, ptr %12, i64 0, i32 5
  store ptr %19, ptr %20, align 8, !tbaa !49
  %21 = tail call ptr @CTX_data_active_object(ptr noundef %0) #12
  %22 = getelementptr inbounds %struct.ViewContext, ptr %12, i64 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !50
  %23 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %24 = getelementptr inbounds %struct.ViewContext, ptr %12, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !51
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !80
  %27 = tail call i32 @RNA_int_get(ptr noundef %26, ptr noundef nonnull @.str.47) #12
  %28 = icmp eq i32 %27, 3
  %29 = zext i1 %28 to i8
  call void @WM_operator_properties_border_to_rcti(ptr noundef %1, ptr noundef nonnull %13) #12
  %30 = load ptr, ptr %25, align 8, !tbaa !80
  %31 = call i32 @RNA_boolean_get(ptr noundef %30, ptr noundef nonnull @.str.9) #12
  %32 = trunc i32 %31 to i8
  %33 = load ptr, ptr %24, align 8, !tbaa !51
  %34 = icmp eq ptr %33, null
  br i1 %34, label %389, label %35

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 3
  %37 = load i16, ptr %36, align 8, !tbaa !127
  switch i16 %37, label %701 [
    i16 1, label %38
    i16 2, label %158
    i16 3, label %158
    i16 5, label %183
    i16 25, label %242
    i16 22, label %371
  ]

38:                                               ; preds = %35
  %39 = call ptr @BKE_editmesh_from_object(ptr noundef nonnull %33) #12
  %40 = getelementptr inbounds %struct.ViewContext, ptr %12, i64 0, i32 6
  store ptr %39, ptr %40, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #12
  %41 = load ptr, ptr %12, align 8, !tbaa !47
  %42 = getelementptr inbounds %struct.Scene, ptr %41, i64 0, i32 20
  %43 = load ptr, ptr %42, align 8, !tbaa !134
  store ptr %12, ptr %11, align 8, !tbaa !202
  %44 = getelementptr inbounds %struct.BoxSelectUserData, ptr %11, i64 0, i32 1
  store ptr %13, ptr %44, align 8, !tbaa !204
  %45 = getelementptr inbounds %struct.BoxSelectUserData, ptr %11, i64 0, i32 3
  %46 = getelementptr inbounds %struct.BoxSelectUserData, ptr %11, i64 0, i32 2
  store ptr %45, ptr %46, align 8, !tbaa !205
  call void @BLI_rctf_rcti_copy(ptr noundef nonnull %45, ptr noundef nonnull %13) #12
  %47 = getelementptr inbounds %struct.BoxSelectUserData, ptr %11, i64 0, i32 4
  store i8 %29, ptr %47, align 8, !tbaa !206
  %48 = getelementptr inbounds %struct.BoxSelectUserData, ptr %11, i64 0, i32 5
  store i32 0, ptr %48, align 4, !tbaa !207
  %49 = getelementptr inbounds %struct.BoxSelectUserData, ptr %11, i64 0, i32 6
  store i8 0, ptr %49, align 8, !tbaa !208
  %50 = getelementptr inbounds %struct.BoxSelectUserData, ptr %11, i64 0, i32 7
  store i8 0, ptr %50, align 1, !tbaa !209
  %51 = icmp eq i8 %32, 0
  %52 = and i1 %28, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = load ptr, ptr %40, align 8, !tbaa !151
  call void @EDBM_flag_disable_all(ptr noundef %54, i8 noundef zeroext 1) #12
  br label %55

55:                                               ; preds = %53, %38
  %56 = load ptr, ptr %24, align 8, !tbaa !51
  %57 = load ptr, ptr %20, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %56, ptr noundef %57) #12
  %58 = load ptr, ptr %20, align 8, !tbaa !49
  %59 = getelementptr inbounds %struct.RegionView3D, ptr %58, i64 0, i32 1
  call void @glLoadMatrixf(ptr noundef nonnull %59) #12
  %60 = load i32, ptr %13, align 4, !tbaa !90
  %61 = trunc i32 %60 to i16
  %62 = getelementptr inbounds %struct.rcti, ptr %13, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !91
  %64 = trunc i32 %63 to i16
  %65 = getelementptr inbounds %struct.rcti, ptr %13, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !92
  %67 = trunc i32 %66 to i16
  %68 = getelementptr inbounds %struct.rcti, ptr %13, i64 0, i32 3
  %69 = load i32, ptr %68, align 4, !tbaa !93
  %70 = trunc i32 %69 to i16
  %71 = call zeroext i8 @EDBM_backbuf_border_init(ptr noundef nonnull %12, i16 noundef signext %61, i16 noundef signext %64, i16 noundef signext %67, i16 noundef signext %70) #12
  %72 = getelementptr inbounds %struct.ToolSettings, ptr %43, i64 0, i32 8
  %73 = load i16, ptr %72, align 2, !tbaa !152
  %74 = and i16 %73, 1
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %109, label %76

76:                                               ; preds = %55
  %77 = icmp eq i8 %71, 0
  br i1 %77, label %108, label %78

78:                                               ; preds = %76
  %79 = load ptr, ptr %40, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  %80 = load i32, ptr @bm_wireoffs, align 4, !tbaa !64
  %81 = load ptr, ptr %79, align 8, !tbaa !159
  %82 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %82, align 4, !tbaa !161
  %83 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %83, align 8, !tbaa !163
  %84 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %84, align 8, !tbaa !164
  %85 = getelementptr inbounds %struct.BMesh, ptr %81, i64 0, i32 9
  %86 = load ptr, ptr %85, align 8, !tbaa !165
  store ptr %86, ptr %4, align 8, !tbaa !130
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #12
  %87 = load ptr, ptr %84, align 8, !tbaa !164
  %88 = call ptr %87(ptr noundef nonnull %4) #12
  %89 = icmp eq ptr %88, null
  br i1 %89, label %107, label %90

90:                                               ; preds = %78, %102
  %91 = phi i32 [ %103, %102 ], [ %80, %78 ]
  %92 = phi ptr [ %105, %102 ], [ %88, %78 ]
  %93 = getelementptr inbounds %struct.BMHeader, ptr %92, i64 0, i32 3
  %94 = load i8, ptr %93, align 1, !tbaa !167
  %95 = and i8 %94, 2
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = call zeroext i8 @EDBM_backbuf_check(i32 noundef %91) #12
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr %79, align 8, !tbaa !159
  call void @BM_vert_select_set(ptr noundef %101, ptr noundef nonnull %92, i8 noundef zeroext %29) #12
  br label %102

102:                                              ; preds = %100, %97, %90
  %103 = add i32 %91, 1
  %104 = load ptr, ptr %84, align 8, !tbaa !164
  %105 = call ptr %104(ptr noundef nonnull %4) #12
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %90, !llvm.loop !169

107:                                              ; preds = %102, %78
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  br label %109

108:                                              ; preds = %76
  call void @mesh_foreachScreenVert(ptr noundef nonnull %12, ptr noundef nonnull @do_mesh_box_select__doSelectVert, ptr noundef nonnull %11, i32 noundef 7) #12
  br label %109

109:                                              ; preds = %108, %107, %55
  %110 = load i16, ptr %72, align 2, !tbaa !152
  %111 = and i16 %110, 2
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  store i32 0, ptr %48, align 4, !tbaa !207
  call void @mesh_foreachScreenEdge(ptr noundef nonnull %12, ptr noundef nonnull @do_mesh_box_select__doSelectEdge, ptr noundef nonnull %11, i32 noundef 4) #12
  %114 = load i8, ptr %49, align 8, !tbaa !208
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 1, ptr %48, align 4, !tbaa !207
  call void @mesh_foreachScreenEdge(ptr noundef nonnull %12, ptr noundef nonnull @do_mesh_box_select__doSelectEdge, ptr noundef nonnull %11, i32 noundef 4) #12
  br label %117

117:                                              ; preds = %116, %113, %109
  %118 = load i16, ptr %72, align 2, !tbaa !152
  %119 = and i16 %118, 4
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %153, label %121

121:                                              ; preds = %117
  %122 = icmp eq i8 %71, 0
  br i1 %122, label %152, label %123

123:                                              ; preds = %121
  %124 = load ptr, ptr %40, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %125 = load ptr, ptr %124, align 8, !tbaa !159
  %126 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %126, align 4, !tbaa !161
  %127 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %127, align 8, !tbaa !163
  %128 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %128, align 8, !tbaa !164
  %129 = getelementptr inbounds %struct.BMesh, ptr %125, i64 0, i32 12
  %130 = load ptr, ptr %129, align 8, !tbaa !170
  store ptr %130, ptr %3, align 8, !tbaa !130
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #12
  %131 = load ptr, ptr %128, align 8, !tbaa !164
  %132 = call ptr %131(ptr noundef nonnull %3) #12
  %133 = icmp eq ptr %132, null
  br i1 %133, label %151, label %134

134:                                              ; preds = %123, %146
  %135 = phi i32 [ %147, %146 ], [ 1, %123 ]
  %136 = phi ptr [ %149, %146 ], [ %132, %123 ]
  %137 = getelementptr inbounds %struct.BMHeader, ptr %136, i64 0, i32 3
  %138 = load i8, ptr %137, align 1, !tbaa !167
  %139 = and i8 %138, 2
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %134
  %142 = call zeroext i8 @EDBM_backbuf_check(i32 noundef %135) #12
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %141
  %145 = load ptr, ptr %124, align 8, !tbaa !159
  call void @BM_face_select_set(ptr noundef %145, ptr noundef nonnull %136, i8 noundef zeroext %29) #12
  br label %146

146:                                              ; preds = %144, %141, %134
  %147 = add i32 %135, 1
  %148 = load ptr, ptr %128, align 8, !tbaa !164
  %149 = call ptr %148(ptr noundef nonnull %3) #12
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %134, !llvm.loop !171

151:                                              ; preds = %146, %123
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  br label %153

152:                                              ; preds = %121
  call void @mesh_foreachScreenFace(ptr noundef nonnull %12, ptr noundef nonnull @do_mesh_box_select__doSelectFace, ptr noundef nonnull %11, i32 noundef 7) #12
  br label %153

153:                                              ; preds = %117, %151, %152
  call void @EDBM_backbuf_free() #12
  %154 = load ptr, ptr %40, align 8, !tbaa !151
  call void @EDBM_selectmode_flush(ptr noundef %154) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #12
  %155 = load ptr, ptr %24, align 8, !tbaa !51
  %156 = getelementptr inbounds %struct.Object, ptr %155, i64 0, i32 19
  %157 = load ptr, ptr %156, align 8, !tbaa !82
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %157) #12
  br label %701

158:                                              ; preds = %35, %35
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #12
  store ptr %12, ptr %10, align 8, !tbaa !202
  %159 = getelementptr inbounds %struct.BoxSelectUserData, ptr %10, i64 0, i32 1
  store ptr %13, ptr %159, align 8, !tbaa !204
  %160 = getelementptr inbounds %struct.BoxSelectUserData, ptr %10, i64 0, i32 3
  %161 = getelementptr inbounds %struct.BoxSelectUserData, ptr %10, i64 0, i32 2
  store ptr %160, ptr %161, align 8, !tbaa !205
  call void @BLI_rctf_rcti_copy(ptr noundef nonnull %160, ptr noundef nonnull %13) #12
  %162 = getelementptr inbounds %struct.BoxSelectUserData, ptr %10, i64 0, i32 4
  store i8 %29, ptr %162, align 8, !tbaa !206
  %163 = getelementptr inbounds %struct.BoxSelectUserData, ptr %10, i64 0, i32 5
  store i32 0, ptr %163, align 4, !tbaa !207
  %164 = getelementptr inbounds %struct.BoxSelectUserData, ptr %10, i64 0, i32 6
  store i8 0, ptr %164, align 8, !tbaa !208
  %165 = getelementptr inbounds %struct.BoxSelectUserData, ptr %10, i64 0, i32 7
  store i8 0, ptr %165, align 1, !tbaa !209
  %166 = icmp eq i8 %32, 0
  %167 = and i1 %28, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %158
  %169 = load ptr, ptr %24, align 8, !tbaa !51
  %170 = getelementptr inbounds %struct.Object, ptr %169, i64 0, i32 19
  %171 = load ptr, ptr %170, align 8, !tbaa !82
  %172 = getelementptr inbounds %struct.Curve, ptr %171, i64 0, i32 4
  %173 = load ptr, ptr %172, align 8, !tbaa !172
  call void @ED_curve_deselect_all(ptr noundef %173) #12
  br label %174

174:                                              ; preds = %158, %168
  %175 = load ptr, ptr %24, align 8, !tbaa !51
  %176 = load ptr, ptr %20, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %175, ptr noundef %176) #12
  call void @nurbs_foreachScreenVert(ptr noundef nonnull %12, ptr noundef nonnull @do_nurbs_box_select__doSelect, ptr noundef nonnull %10, i32 noundef 7) #12
  %177 = load ptr, ptr %24, align 8, !tbaa !51
  %178 = getelementptr inbounds %struct.Object, ptr %177, i64 0, i32 19
  %179 = load ptr, ptr %178, align 8, !tbaa !82
  call void @BKE_curve_nurb_vert_active_validate(ptr noundef %179) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #12
  %180 = load ptr, ptr %24, align 8, !tbaa !51
  %181 = getelementptr inbounds %struct.Object, ptr %180, i64 0, i32 19
  %182 = load ptr, ptr %181, align 8, !tbaa !82
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %182) #12
  br label %701

183:                                              ; preds = %35
  %184 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 19
  %185 = load ptr, ptr %184, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 160000, ptr nonnull %9) #12
  %186 = call signext i16 @view3d_opengl_select(ptr noundef nonnull %12, ptr noundef nonnull %9, i32 noundef 10000, ptr noundef nonnull %13, i8 noundef zeroext 0) #12
  %187 = icmp eq i8 %32, 0
  %188 = and i1 %28, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  call void @BKE_mball_deselect_all(ptr noundef %185) #12
  br label %190

190:                                              ; preds = %189, %183
  %191 = getelementptr inbounds %struct.MetaBall, ptr %185, i64 0, i32 4
  %192 = load ptr, ptr %191, align 8, !tbaa !210
  %193 = load ptr, ptr %192, align 8, !tbaa !116
  %194 = icmp eq ptr %193, null
  br i1 %194, label %238, label %195

195:                                              ; preds = %190
  %196 = sext i16 %186 to i64
  %197 = icmp sgt i16 %186, 0
  br label %198

198:                                              ; preds = %195, %235
  %199 = phi ptr [ %193, %195 ], [ %236, %235 ]
  br i1 %197, label %200, label %235

200:                                              ; preds = %198
  %201 = getelementptr inbounds %struct.MetaElem, ptr %199, i64 0, i32 5
  %202 = load i16, ptr %201, align 4, !tbaa !212
  %203 = sext i16 %202 to i32
  %204 = getelementptr inbounds %struct.MetaElem, ptr %199, i64 0, i32 6
  br label %208

205:                                              ; preds = %223
  %206 = add nuw nsw i64 %209, 1
  %207 = icmp eq i64 %206, %196
  br i1 %207, label %235, label %208, !llvm.loop !214

208:                                              ; preds = %200, %205
  %209 = phi i64 [ 0, %200 ], [ %206, %205 ]
  %210 = shl nsw i64 %209, 2
  %211 = or disjoint i64 %210, 3
  %212 = getelementptr inbounds [40000 x i32], ptr %9, i64 0, i64 %211
  %213 = load i32, ptr %212, align 4, !tbaa !64
  %214 = icmp eq i32 %213, %203
  br i1 %214, label %215, label %223

215:                                              ; preds = %208
  %216 = getelementptr inbounds %struct.MetaElem, ptr %199, i64 0, i32 4
  %217 = load i16, ptr %216, align 2, !tbaa !215
  %218 = or i16 %217, 16
  store i16 %218, ptr %216, align 2, !tbaa !215
  br i1 %28, label %219, label %221

219:                                              ; preds = %215
  %220 = or i16 %217, 17
  store i16 %220, ptr %216, align 2, !tbaa !215
  br label %235

221:                                              ; preds = %215
  %222 = and i16 %218, -2
  store i16 %222, ptr %216, align 2, !tbaa !215
  br label %235

223:                                              ; preds = %208
  %224 = load i16, ptr %204, align 2, !tbaa !216
  %225 = sext i16 %224 to i32
  %226 = icmp eq i32 %213, %225
  br i1 %226, label %227, label %205

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.MetaElem, ptr %199, i64 0, i32 4
  %229 = load i16, ptr %228, align 2, !tbaa !215
  %230 = and i16 %229, -17
  store i16 %230, ptr %228, align 2, !tbaa !215
  br i1 %28, label %231, label %233

231:                                              ; preds = %227
  %232 = or i16 %230, 1
  store i16 %232, ptr %228, align 2, !tbaa !215
  br label %235

233:                                              ; preds = %227
  %234 = and i16 %229, -18
  store i16 %234, ptr %228, align 2, !tbaa !215
  br label %235

235:                                              ; preds = %205, %198, %233, %231, %221, %219
  %236 = load ptr, ptr %199, align 8, !tbaa !116
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %198, !llvm.loop !217

238:                                              ; preds = %235, %190
  call void @llvm.lifetime.end.p0(i64 160000, ptr nonnull %9) #12
  %239 = load ptr, ptr %24, align 8, !tbaa !51
  %240 = getelementptr inbounds %struct.Object, ptr %239, i64 0, i32 19
  %241 = load ptr, ptr %240, align 8, !tbaa !82
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %241) #12
  br label %701

242:                                              ; preds = %35
  %243 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 19
  %244 = load ptr, ptr %243, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 160000, ptr nonnull %8) #12
  %245 = call signext i16 @view3d_opengl_select(ptr noundef nonnull %12, ptr noundef nonnull %8, i32 noundef 10000, ptr noundef nonnull %13, i8 noundef zeroext 0) #12
  %246 = getelementptr inbounds %struct.bArmature, ptr %244, i64 0, i32 4
  %247 = load ptr, ptr %246, align 8, !tbaa !175
  %248 = load ptr, ptr %247, align 8, !tbaa !116
  %249 = icmp eq ptr %248, null
  br i1 %249, label %257, label %250

250:                                              ; preds = %242, %250
  %251 = phi ptr [ %255, %250 ], [ %248, %242 ]
  %252 = getelementptr inbounds %struct.EditBone, ptr %251, i64 0, i32 9
  %253 = load i32, ptr %252, align 4, !tbaa !218
  %254 = and i32 %253, -129
  store i32 %254, ptr %252, align 4, !tbaa !218
  %255 = load ptr, ptr %251, align 8, !tbaa !116
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %250, !llvm.loop !220

257:                                              ; preds = %250, %242
  %258 = icmp eq i8 %32, 0
  %259 = and i1 %28, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %257
  %261 = load ptr, ptr %24, align 8, !tbaa !51
  call void @ED_armature_deselect_all_visible(ptr noundef %261) #12
  br label %262

262:                                              ; preds = %260, %257
  %263 = sext i16 %245 to i32
  %264 = icmp sgt i16 %245, 0
  br i1 %264, label %265, label %306

265:                                              ; preds = %262
  %266 = zext nneg i32 %263 to i64
  br label %267

267:                                              ; preds = %265, %303
  %268 = phi i64 [ 0, %265 ], [ %304, %303 ]
  %269 = shl nsw i64 %268, 2
  %270 = or disjoint i64 %269, 3
  %271 = getelementptr inbounds [40000 x i32], ptr %8, i64 0, i64 %270
  %272 = load i32, ptr %271, align 4, !tbaa !64
  %273 = icmp eq i32 %272, -1
  br i1 %273, label %303, label %274

274:                                              ; preds = %267
  %275 = load ptr, ptr %246, align 8, !tbaa !175
  %276 = and i32 %272, -1879048193
  %277 = call ptr @BLI_findlink(ptr noundef %275, i32 noundef %276) #12
  br i1 %28, label %278, label %283

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.EditBone, ptr %277, i64 0, i32 9
  %280 = load i32, ptr %279, align 4, !tbaa !218
  %281 = and i32 %280, 2097152
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %303

283:                                              ; preds = %278, %274
  %284 = and i32 %272, 536870912
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %293, label %286

286:                                              ; preds = %283
  %287 = getelementptr inbounds %struct.EditBone, ptr %277, i64 0, i32 9
  %288 = load i32, ptr %287, align 4, !tbaa !218
  %289 = and i32 %288, -133
  %290 = or disjoint i32 %289, 128
  %291 = or i32 %288, 132
  %292 = select i1 %28, i32 %291, i32 %290
  store i32 %292, ptr %287, align 4, !tbaa !218
  br label %293

293:                                              ; preds = %286, %283
  %294 = and i32 %272, 268435456
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %303, label %296

296:                                              ; preds = %293
  %297 = getelementptr inbounds %struct.EditBone, ptr %277, i64 0, i32 9
  %298 = load i32, ptr %297, align 4, !tbaa !218
  %299 = and i32 %298, -131
  %300 = or disjoint i32 %299, 128
  %301 = or i32 %298, 130
  %302 = select i1 %28, i32 %301, i32 %300
  store i32 %302, ptr %297, align 4, !tbaa !218
  br label %303

303:                                              ; preds = %296, %293, %278, %267
  %304 = add nuw nsw i64 %268, 1
  %305 = icmp eq i64 %304, %266
  br i1 %305, label %306, label %267, !llvm.loop !221

306:                                              ; preds = %303, %262
  %307 = load ptr, ptr %246, align 8, !tbaa !175
  %308 = load ptr, ptr %307, align 8, !tbaa !116
  %309 = icmp eq ptr %308, null
  br i1 %309, label %310, label %314

310:                                              ; preds = %331, %306
  %311 = icmp sgt i16 %245, 0
  br i1 %311, label %312, label %365

312:                                              ; preds = %310
  %313 = zext nneg i32 %263 to i64
  br label %334

314:                                              ; preds = %306, %331
  %315 = phi ptr [ %332, %331 ], [ %308, %306 ]
  %316 = getelementptr inbounds %struct.EditBone, ptr %315, i64 0, i32 3
  %317 = load ptr, ptr %316, align 8, !tbaa !222
  %318 = icmp eq ptr %317, null
  br i1 %318, label %331, label %319

319:                                              ; preds = %314
  %320 = getelementptr inbounds %struct.EditBone, ptr %315, i64 0, i32 9
  %321 = load i32, ptr %320, align 4, !tbaa !218
  %322 = and i32 %321, 16
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %331, label %324

324:                                              ; preds = %319
  %325 = getelementptr inbounds %struct.EditBone, ptr %317, i64 0, i32 9
  %326 = load i32, ptr %325, align 4, !tbaa !218
  %327 = and i32 %326, 128
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %331, label %329

329:                                              ; preds = %324
  %330 = or i32 %321, 128
  store i32 %330, ptr %320, align 4, !tbaa !218
  br label %331

331:                                              ; preds = %329, %324, %319, %314
  %332 = load ptr, ptr %315, align 8, !tbaa !116
  %333 = icmp eq ptr %332, null
  br i1 %333, label %310, label %314, !llvm.loop !223

334:                                              ; preds = %312, %362
  %335 = phi i64 [ 0, %312 ], [ %363, %362 ]
  %336 = shl nsw i64 %335, 2
  %337 = or disjoint i64 %336, 3
  %338 = getelementptr inbounds [40000 x i32], ptr %8, i64 0, i64 %337
  %339 = load i32, ptr %338, align 4, !tbaa !64
  %340 = icmp eq i32 %339, -1
  br i1 %340, label %362, label %341

341:                                              ; preds = %334
  %342 = load ptr, ptr %246, align 8, !tbaa !175
  %343 = and i32 %339, -1879048193
  %344 = call ptr @BLI_findlink(ptr noundef %342, i32 noundef %343) #12
  %345 = and i32 %339, 1073741824
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %362, label %347

347:                                              ; preds = %341
  br i1 %28, label %348, label %353

348:                                              ; preds = %347
  %349 = getelementptr inbounds %struct.EditBone, ptr %344, i64 0, i32 9
  %350 = load i32, ptr %349, align 4, !tbaa !218
  %351 = and i32 %350, 2097152
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %362

353:                                              ; preds = %348, %347
  %354 = getelementptr inbounds %struct.EditBone, ptr %344, i64 0, i32 9
  %355 = load i32, ptr %354, align 4, !tbaa !218
  %356 = and i32 %355, 128
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %362

358:                                              ; preds = %353
  %359 = and i32 %355, -136
  %360 = or i32 %355, 7
  %361 = select i1 %28, i32 %360, i32 %359
  store i32 %361, ptr %354, align 4, !tbaa !218
  br label %362

362:                                              ; preds = %358, %353, %348, %341, %334
  %363 = add nuw nsw i64 %335, 1
  %364 = icmp eq i64 %363, %313
  br i1 %364, label %365, label %334, !llvm.loop !224

365:                                              ; preds = %362, %310
  %366 = load ptr, ptr %246, align 8, !tbaa !175
  call void @ED_armature_sync_selection(ptr noundef %366) #12
  %367 = icmp slt i16 %245, 1
  %368 = select i1 %367, i32 2, i32 4
  call void @llvm.lifetime.end.p0(i64 160000, ptr nonnull %8) #12
  br i1 %367, label %701, label %369

369:                                              ; preds = %365
  %370 = load ptr, ptr %24, align 8, !tbaa !51
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %370) #12
  br label %701

371:                                              ; preds = %35
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #12
  store ptr %12, ptr %7, align 8, !tbaa !202
  %372 = getelementptr inbounds %struct.BoxSelectUserData, ptr %7, i64 0, i32 1
  store ptr %13, ptr %372, align 8, !tbaa !204
  %373 = getelementptr inbounds %struct.BoxSelectUserData, ptr %7, i64 0, i32 3
  %374 = getelementptr inbounds %struct.BoxSelectUserData, ptr %7, i64 0, i32 2
  store ptr %373, ptr %374, align 8, !tbaa !205
  call void @BLI_rctf_rcti_copy(ptr noundef nonnull %373, ptr noundef nonnull %13) #12
  %375 = getelementptr inbounds %struct.BoxSelectUserData, ptr %7, i64 0, i32 4
  store i8 %29, ptr %375, align 8, !tbaa !206
  %376 = getelementptr inbounds %struct.BoxSelectUserData, ptr %7, i64 0, i32 5
  store i32 0, ptr %376, align 4, !tbaa !207
  %377 = getelementptr inbounds %struct.BoxSelectUserData, ptr %7, i64 0, i32 6
  store i8 0, ptr %377, align 8, !tbaa !208
  %378 = getelementptr inbounds %struct.BoxSelectUserData, ptr %7, i64 0, i32 7
  store i8 0, ptr %378, align 1, !tbaa !209
  %379 = icmp eq i8 %32, 0
  %380 = and i1 %28, %379
  br i1 %380, label %381, label %383

381:                                              ; preds = %371
  %382 = load ptr, ptr %24, align 8, !tbaa !51
  call void @ED_setflagsLatt(ptr noundef %382, i32 noundef 0) #12
  br label %383

383:                                              ; preds = %371, %381
  %384 = load ptr, ptr %24, align 8, !tbaa !51
  %385 = load ptr, ptr %20, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %384, ptr noundef %385) #12
  call void @lattice_foreachScreenVert(ptr noundef nonnull %12, ptr noundef nonnull @do_lattice_box_select__doSelect, ptr noundef nonnull %7, i32 noundef 7) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #12
  %386 = load ptr, ptr %24, align 8, !tbaa !51
  %387 = getelementptr inbounds %struct.Object, ptr %386, i64 0, i32 19
  %388 = load ptr, ptr %387, align 8, !tbaa !82
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %388) #12
  br label %701

389:                                              ; preds = %2
  %390 = load ptr, ptr %22, align 8, !tbaa !50
  %391 = icmp eq ptr %390, null
  br i1 %391, label %405, label %392

392:                                              ; preds = %389
  %393 = getelementptr inbounds %struct.Object, ptr %390, i64 0, i32 27
  %394 = load i32, ptr %393, align 8, !tbaa !115
  %395 = and i32 %394, 2
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %399, label %397

397:                                              ; preds = %392
  %398 = call i32 @ED_sculpt_mask_box_select(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %13, i8 noundef zeroext %29, i8 noundef zeroext %32) #12
  br label %701

399:                                              ; preds = %392
  br i1 %391, label %405, label %400

400:                                              ; preds = %399
  %401 = call zeroext i8 @BKE_paint_select_face_test(ptr noundef nonnull %390) #12
  %402 = icmp eq i8 %401, 0
  br i1 %402, label %405, label %403

403:                                              ; preds = %400
  %404 = call i32 @do_paintface_box_select(ptr noundef nonnull %12, ptr noundef nonnull %13, i8 noundef zeroext %29, i8 noundef zeroext %32) #12
  br label %701

405:                                              ; preds = %389, %400, %399
  %406 = load ptr, ptr %22, align 8, !tbaa !50
  %407 = icmp eq ptr %406, null
  br i1 %407, label %521, label %408

408:                                              ; preds = %405
  %409 = call zeroext i8 @BKE_paint_select_vert_test(ptr noundef nonnull %406) #12
  %410 = icmp eq i8 %409, 0
  br i1 %410, label %521, label %411

411:                                              ; preds = %408
  %412 = load ptr, ptr %18, align 8, !tbaa !48
  %413 = getelementptr inbounds %struct.View3D, ptr %412, i64 0, i32 28
  %414 = load i16, ptr %413, align 8, !tbaa !98
  %415 = and i16 %414, 4096
  %416 = getelementptr inbounds %struct.rcti, ptr %13, i64 0, i32 1
  %417 = load i32, ptr %416, align 4, !tbaa !92
  %418 = load i32, ptr %13, align 4, !tbaa !90
  %419 = sub nsw i32 %417, %418
  %420 = add nsw i32 %419, 1
  %421 = getelementptr inbounds %struct.rcti, ptr %13, i64 0, i32 3
  %422 = load i32, ptr %421, align 4, !tbaa !93
  %423 = getelementptr inbounds %struct.rcti, ptr %13, i64 0, i32 2
  %424 = load i32, ptr %423, align 4, !tbaa !91
  %425 = sub nsw i32 %422, %424
  %426 = add nsw i32 %425, 1
  %427 = load ptr, ptr %22, align 8, !tbaa !50
  %428 = getelementptr inbounds %struct.Object, ptr %427, i64 0, i32 19
  %429 = load ptr, ptr %428, align 8, !tbaa !82
  %430 = icmp eq ptr %429, null
  br i1 %430, label %701, label %431

431:                                              ; preds = %411
  %432 = getelementptr inbounds %struct.Mesh, ptr %429, i64 0, i32 26
  %433 = load i32, ptr %432, align 8, !tbaa !100
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %701, label %435

435:                                              ; preds = %431
  %436 = mul nsw i32 %426, %420
  %437 = icmp slt i32 %436, 1
  br i1 %437, label %701, label %438

438:                                              ; preds = %435
  %439 = icmp eq i8 %32, 0
  %440 = and i1 %28, %439
  br i1 %440, label %441, label %442

441:                                              ; preds = %438
  call void @paintvert_deselect_all_visible(ptr noundef %427, i32 noundef 2, i8 noundef zeroext 0) #12
  br label %442

442:                                              ; preds = %441, %438
  %443 = icmp eq i16 %415, 0
  br i1 %443, label %507, label %444

444:                                              ; preds = %442
  %445 = load ptr, ptr @MEM_callocN, align 8, !tbaa !116
  %446 = load i32, ptr %432, align 8, !tbaa !100
  %447 = add nsw i32 %446, 1
  %448 = sext i32 %447 to i64
  %449 = call ptr %445(i64 noundef %448, ptr noundef nonnull @.str.49) #12
  call void @view3d_validate_backbuf(ptr noundef nonnull %12) #12
  %450 = call ptr @IMB_allocImBuf(i32 noundef %420, i32 noundef %426, i8 noundef zeroext 32, i32 noundef 1) #12
  %451 = getelementptr inbounds %struct.ImBuf, ptr %450, i64 0, i32 8
  %452 = load ptr, ptr %451, align 8, !tbaa !225
  %453 = load i32, ptr %13, align 4, !tbaa !90
  %454 = load ptr, ptr %15, align 8, !tbaa !45
  %455 = getelementptr inbounds %struct.ARegion, ptr %454, i64 0, i32 3
  %456 = load i32, ptr %455, align 8, !tbaa !59
  %457 = add nsw i32 %456, %453
  %458 = load i32, ptr %423, align 4, !tbaa !91
  %459 = getelementptr inbounds %struct.ARegion, ptr %454, i64 0, i32 3, i32 2
  %460 = load i32, ptr %459, align 8, !tbaa !65
  %461 = add nsw i32 %460, %458
  call void @glReadPixels(i32 noundef %457, i32 noundef %461, i32 noundef %420, i32 noundef %426, i32 noundef 6408, i32 noundef 5121, ptr noundef %452) #12
  br label %462

462:                                              ; preds = %444, %475
  %463 = phi i32 [ %436, %444 ], [ %465, %475 ]
  %464 = phi ptr [ %452, %444 ], [ %476, %475 ]
  %465 = add nsw i32 %463, -1
  %466 = load i32, ptr %464, align 4, !tbaa !64
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %475, label %468

468:                                              ; preds = %462
  %469 = call i32 @WM_framebuffer_to_index(i32 noundef %466) #12
  %470 = load i32, ptr %432, align 8, !tbaa !100
  %471 = icmp sgt i32 %469, %470
  br i1 %471, label %475, label %472

472:                                              ; preds = %468
  %473 = sext i32 %469 to i64
  %474 = getelementptr inbounds i8, ptr %449, i64 %473
  store i8 1, ptr %474, align 1, !tbaa !130
  br label %475

475:                                              ; preds = %472, %468, %462
  %476 = getelementptr inbounds i32, ptr %464, i64 1
  %477 = icmp eq i32 %465, 0
  br i1 %477, label %478, label %462, !llvm.loop !228

478:                                              ; preds = %475
  %479 = load i32, ptr %432, align 8, !tbaa !100
  %480 = icmp slt i32 %479, 1
  br i1 %480, label %505, label %481

481:                                              ; preds = %478
  %482 = getelementptr inbounds %struct.Mesh, ptr %429, i64 0, i32 15
  %483 = load ptr, ptr %482, align 8, !tbaa !101
  %484 = add nuw i32 %479, 1
  %485 = zext i32 %484 to i64
  br label %486

486:                                              ; preds = %481, %501
  %487 = phi i64 [ 1, %481 ], [ %502, %501 ]
  %488 = phi ptr [ %483, %481 ], [ %503, %501 ]
  %489 = getelementptr inbounds i8, ptr %449, i64 %487
  %490 = load i8, ptr %489, align 1, !tbaa !130
  %491 = icmp eq i8 %490, 0
  br i1 %491, label %501, label %492

492:                                              ; preds = %486
  %493 = getelementptr inbounds %struct.MVert, ptr %488, i64 0, i32 2
  %494 = load i8, ptr %493, align 2, !tbaa !102
  %495 = and i8 %494, 16
  %496 = icmp eq i8 %495, 0
  br i1 %496, label %497, label %501

497:                                              ; preds = %492
  %498 = and i8 %494, -18
  %499 = or i8 %494, 1
  %500 = select i1 %28, i8 %499, i8 %498
  store i8 %500, ptr %493, align 2, !tbaa !102
  br label %501

501:                                              ; preds = %497, %492, %486
  %502 = add nuw nsw i64 %487, 1
  %503 = getelementptr inbounds %struct.MVert, ptr %488, i64 1
  %504 = icmp eq i64 %502, %485
  br i1 %504, label %505, label %486, !llvm.loop !229

505:                                              ; preds = %501, %478
  call void @IMB_freeImBuf(ptr noundef %450) #12
  %506 = load ptr, ptr @MEM_freeN, align 8, !tbaa !116
  call void %506(ptr noundef %449) #12
  br label %517

507:                                              ; preds = %442
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #12
  store ptr %12, ptr %6, align 8, !tbaa !202
  %508 = getelementptr inbounds %struct.BoxSelectUserData, ptr %6, i64 0, i32 1
  store ptr %13, ptr %508, align 8, !tbaa !204
  %509 = getelementptr inbounds %struct.BoxSelectUserData, ptr %6, i64 0, i32 3
  %510 = getelementptr inbounds %struct.BoxSelectUserData, ptr %6, i64 0, i32 2
  store ptr %509, ptr %510, align 8, !tbaa !205
  call void @BLI_rctf_rcti_copy(ptr noundef nonnull %509, ptr noundef nonnull %13) #12
  %511 = getelementptr inbounds %struct.BoxSelectUserData, ptr %6, i64 0, i32 4
  store i8 %29, ptr %511, align 8, !tbaa !206
  %512 = getelementptr inbounds %struct.BoxSelectUserData, ptr %6, i64 0, i32 5
  store i32 0, ptr %512, align 4, !tbaa !207
  %513 = getelementptr inbounds %struct.BoxSelectUserData, ptr %6, i64 0, i32 6
  store i8 0, ptr %513, align 8, !tbaa !208
  %514 = getelementptr inbounds %struct.BoxSelectUserData, ptr %6, i64 0, i32 7
  store i8 0, ptr %514, align 1, !tbaa !209
  %515 = load ptr, ptr %22, align 8, !tbaa !50
  %516 = load ptr, ptr %20, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %515, ptr noundef %516) #12
  call void @meshobject_foreachScreenVert(ptr noundef nonnull %12, ptr noundef nonnull @do_paintvert_box_select__doSelectVert, ptr noundef nonnull %6, i32 noundef 7) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #12
  br label %517

517:                                              ; preds = %507, %505
  br i1 %28, label %519, label %518

518:                                              ; preds = %517
  call void @BKE_mesh_mselect_validate(ptr noundef nonnull %429) #12
  br label %519

519:                                              ; preds = %518, %517
  %520 = load ptr, ptr %22, align 8, !tbaa !50
  call void @paintvert_flush_flags(ptr noundef %520) #12
  br label %701

521:                                              ; preds = %408, %405
  %522 = load ptr, ptr %22, align 8, !tbaa !50
  %523 = icmp eq ptr %522, null
  br i1 %523, label %537, label %524

524:                                              ; preds = %521
  %525 = getelementptr inbounds %struct.Object, ptr %522, i64 0, i32 27
  %526 = load i32, ptr %525, align 8, !tbaa !115
  %527 = and i32 %526, 32
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %531, label %529

529:                                              ; preds = %524
  %530 = call i32 @PE_border_select(ptr noundef %0, ptr noundef nonnull %13, i8 noundef zeroext %29, i8 noundef zeroext %32) #12
  br label %701

531:                                              ; preds = %524
  br i1 %523, label %537, label %532

532:                                              ; preds = %531
  %533 = getelementptr inbounds %struct.Object, ptr %522, i64 0, i32 27
  %534 = load i32, ptr %533, align 8, !tbaa !115
  %535 = and i32 %534, 64
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %537, label %538

537:                                              ; preds = %521, %532, %531
  br label %538

538:                                              ; preds = %537, %532
  %539 = phi i1 [ true, %537 ], [ false, %532 ]
  %540 = icmp eq i8 %32, 0
  %541 = and i1 %28, %540
  br i1 %541, label %542, label %589

542:                                              ; preds = %538
  br i1 %539, label %563, label %543

543:                                              ; preds = %542
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %544 = call i32 @CTX_data_visible_pose_bones(ptr noundef %0, ptr noundef nonnull %5) #12
  %545 = load ptr, ptr %5, align 8, !tbaa !116
  %546 = icmp eq ptr %545, null
  br i1 %546, label %562, label %547

547:                                              ; preds = %543, %559
  %548 = phi ptr [ %560, %559 ], [ %545, %543 ]
  %549 = getelementptr inbounds %struct.CollectionPointerLink, ptr %548, i64 0, i32 2, i32 2
  %550 = load ptr, ptr %549, align 8, !tbaa !177
  %551 = getelementptr inbounds %struct.bPoseChannel, ptr %550, i64 0, i32 12
  %552 = load ptr, ptr %551, align 8, !tbaa !230
  %553 = getelementptr inbounds %struct.Bone, ptr %552, i64 0, i32 10
  %554 = load i32, ptr %553, align 8, !tbaa !232
  %555 = and i32 %554, 2097152
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %557, label %559

557:                                              ; preds = %547
  %558 = and i32 %554, -2097160
  store i32 %558, ptr %553, align 8, !tbaa !232
  br label %559

559:                                              ; preds = %557, %547
  %560 = load ptr, ptr %548, align 8, !tbaa !116
  %561 = icmp eq ptr %560, null
  br i1 %561, label %562, label %547, !llvm.loop !234

562:                                              ; preds = %559, %543
  call void @BLI_freelistN(ptr noundef nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  br label %589

563:                                              ; preds = %542
  %564 = load ptr, ptr %12, align 8, !tbaa !47
  %565 = getelementptr inbounds %struct.Scene, ptr %564, i64 0, i32 5
  %566 = load ptr, ptr %565, align 8, !tbaa !116
  %567 = icmp eq ptr %566, null
  br i1 %567, label %589, label %568

568:                                              ; preds = %563
  %569 = load ptr, ptr %18, align 8, !tbaa !48
  %570 = getelementptr inbounds %struct.View3D, ptr %569, i64 0, i32 22
  br label %571

571:                                              ; preds = %568, %586
  %572 = phi ptr [ %566, %568 ], [ %587, %586 ]
  %573 = getelementptr inbounds %struct.Base, ptr %572, i64 0, i32 2
  %574 = load i32, ptr %573, align 8, !tbaa !117
  %575 = load i32, ptr %570, align 8, !tbaa !119
  %576 = and i32 %575, %574
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %586, label %578

578:                                              ; preds = %571
  %579 = getelementptr inbounds %struct.Base, ptr %572, i64 0, i32 7
  %580 = load ptr, ptr %579, align 8, !tbaa !120
  %581 = getelementptr inbounds %struct.Object, ptr %580, i64 0, i32 102
  %582 = load i8, ptr %581, align 8, !tbaa !121
  %583 = and i8 %582, 3
  %584 = icmp eq i8 %583, 0
  br i1 %584, label %585, label %586

585:                                              ; preds = %578
  call void @ED_base_object_select(ptr noundef nonnull %572, i16 noundef signext 0) #12
  br label %586

586:                                              ; preds = %585, %578, %571
  %587 = load ptr, ptr %572, align 8, !tbaa !116
  %588 = icmp eq ptr %587, null
  br i1 %588, label %589, label %571, !llvm.loop !122

589:                                              ; preds = %586, %563, %562, %538
  %590 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !116
  %591 = call ptr %590(i64 noundef 320000, ptr noundef nonnull @.str.50) #12
  %592 = call signext i16 @view3d_opengl_select(ptr noundef nonnull %12, ptr noundef %591, i32 noundef 80000, ptr noundef nonnull %13, i8 noundef zeroext 0) #12
  %593 = icmp sgt i16 %592, 0
  br i1 %593, label %594, label %698

594:                                              ; preds = %589
  %595 = load ptr, ptr %12, align 8, !tbaa !47
  %596 = getelementptr inbounds %struct.Scene, ptr %595, i64 0, i32 5
  %597 = load ptr, ptr %596, align 8, !tbaa !116
  %598 = icmp eq ptr %597, null
  br i1 %598, label %695, label %599

599:                                              ; preds = %594
  %600 = getelementptr inbounds i32, ptr %591, i64 3
  %601 = zext i1 %28 to i16
  br label %602

602:                                              ; preds = %599, %687
  %603 = phi ptr [ %597, %599 ], [ %688, %687 ]
  %604 = phi ptr [ %600, %599 ], [ %667, %687 ]
  %605 = phi i16 [ %592, %599 ], [ %666, %687 ]
  %606 = phi i32 [ 0, %599 ], [ %665, %687 ]
  %607 = getelementptr inbounds %struct.Base, ptr %603, i64 0, i32 2
  %608 = load i32, ptr %607, align 8, !tbaa !117
  %609 = load ptr, ptr %18, align 8, !tbaa !48
  %610 = getelementptr inbounds %struct.View3D, ptr %609, i64 0, i32 22
  %611 = load i32, ptr %610, align 8, !tbaa !119
  %612 = and i32 %611, %608
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %664, label %614

614:                                              ; preds = %602
  %615 = getelementptr inbounds %struct.Base, ptr %603, i64 0, i32 7
  %616 = load ptr, ptr %615, align 8, !tbaa !120
  %617 = getelementptr inbounds %struct.Object, ptr %616, i64 0, i32 102
  %618 = load i8, ptr %617, align 8, !tbaa !121
  %619 = and i8 %618, 3
  %620 = icmp eq i8 %619, 0
  br i1 %620, label %621, label %664

621:                                              ; preds = %614
  %622 = getelementptr inbounds %struct.Base, ptr %603, i64 0, i32 3
  br label %623

623:                                              ; preds = %621, %659
  %624 = phi i32 [ %660, %659 ], [ %606, %621 ]
  %625 = phi i16 [ %662, %659 ], [ %605, %621 ]
  %626 = phi ptr [ %661, %659 ], [ %604, %621 ]
  %627 = load i32, ptr %622, align 4, !tbaa !196
  %628 = load i32, ptr %626, align 4, !tbaa !64
  %629 = and i32 %628, 65535
  %630 = icmp eq i32 %627, %629
  br i1 %630, label %631, label %664

631:                                              ; preds = %623
  %632 = icmp ult i32 %628, 65536
  br i1 %632, label %657, label %633

633:                                              ; preds = %631
  %634 = load ptr, ptr %615, align 8, !tbaa !120
  %635 = and i32 %628, -1879048193
  %636 = call ptr @get_indexed_bone(ptr noundef %634, i32 noundef %635) #12
  %637 = icmp eq ptr %636, null
  br i1 %637, label %659, label %638

638:                                              ; preds = %633
  br i1 %28, label %639, label %646

639:                                              ; preds = %638
  %640 = getelementptr inbounds %struct.Bone, ptr %636, i64 0, i32 10
  %641 = load i32, ptr %640, align 8, !tbaa !232
  %642 = and i32 %641, 2097152
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %644, label %659

644:                                              ; preds = %639
  %645 = or i32 %641, 1
  store i32 %645, ptr %640, align 8, !tbaa !232
  br label %659

646:                                              ; preds = %638
  %647 = load ptr, ptr %615, align 8, !tbaa !120
  %648 = getelementptr inbounds %struct.Object, ptr %647, i64 0, i32 19
  %649 = load ptr, ptr %648, align 8, !tbaa !82
  %650 = getelementptr inbounds %struct.Bone, ptr %636, i64 0, i32 10
  %651 = load i32, ptr %650, align 8, !tbaa !232
  %652 = and i32 %651, -2
  store i32 %652, ptr %650, align 8, !tbaa !232
  %653 = getelementptr inbounds %struct.bArmature, ptr %649, i64 0, i32 5
  %654 = load ptr, ptr %653, align 8, !tbaa !235
  %655 = icmp eq ptr %654, %636
  br i1 %655, label %656, label %659

656:                                              ; preds = %646
  store ptr null, ptr %653, align 8, !tbaa !235
  br label %659

657:                                              ; preds = %631
  br i1 %539, label %658, label %659

658:                                              ; preds = %657
  call void @ED_base_object_select(ptr noundef nonnull %603, i16 noundef signext %601) #12
  br label %659

659:                                              ; preds = %658, %657, %656, %646, %644, %639, %633
  %660 = phi i32 [ 1, %644 ], [ %624, %639 ], [ %624, %633 ], [ %624, %657 ], [ %624, %658 ], [ %624, %656 ], [ %624, %646 ]
  %661 = getelementptr inbounds i32, ptr %626, i64 4
  %662 = add i16 %625, -1
  %663 = icmp eq i16 %662, 0
  br i1 %663, label %664, label %623, !llvm.loop !236

664:                                              ; preds = %659, %623, %614, %602
  %665 = phi i32 [ %606, %614 ], [ %606, %602 ], [ %660, %659 ], [ %624, %623 ]
  %666 = phi i16 [ %605, %614 ], [ %605, %602 ], [ 0, %659 ], [ %625, %623 ]
  %667 = phi ptr [ %604, %614 ], [ %604, %602 ], [ %661, %659 ], [ %626, %623 ]
  %668 = icmp eq i32 %665, 0
  br i1 %668, label %687, label %669

669:                                              ; preds = %664
  %670 = getelementptr inbounds %struct.Base, ptr %603, i64 0, i32 7
  %671 = load ptr, ptr %670, align 8, !tbaa !120
  %672 = icmp eq ptr %671, null
  br i1 %672, label %687, label %673

673:                                              ; preds = %669
  %674 = getelementptr inbounds %struct.Object, ptr %671, i64 0, i32 3
  %675 = load i16, ptr %674, align 8, !tbaa !127
  %676 = icmp eq i16 %675, 25
  br i1 %676, label %677, label %687

677:                                              ; preds = %673
  %678 = getelementptr inbounds %struct.Object, ptr %671, i64 0, i32 19
  %679 = load ptr, ptr %678, align 8, !tbaa !82
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef nonnull %671) #12
  %680 = icmp eq ptr %679, null
  br i1 %680, label %687, label %681

681:                                              ; preds = %677
  %682 = getelementptr inbounds %struct.bArmature, ptr %679, i64 0, i32 8
  %683 = load i32, ptr %682, align 8, !tbaa !131
  %684 = and i32 %683, 16384
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %687, label %686

686:                                              ; preds = %681
  call void @DAG_id_tag_update(ptr noundef %522, i16 noundef signext 2) #12
  br label %687

687:                                              ; preds = %686, %681, %677, %673, %669, %664
  %688 = load ptr, ptr %603, align 8, !tbaa !116
  %689 = icmp ne ptr %688, null
  %690 = icmp ne i16 %666, 0
  %691 = select i1 %689, i1 %690, i1 false
  br i1 %691, label %602, label %692, !llvm.loop !237

692:                                              ; preds = %687
  %693 = icmp sgt i16 %666, 0
  %694 = select i1 %693, i32 4, i32 2
  br label %695

695:                                              ; preds = %692, %594
  %696 = phi i32 [ 4, %594 ], [ %694, %692 ]
  %697 = load ptr, ptr %12, align 8, !tbaa !47
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %697) #12
  br label %698

698:                                              ; preds = %589, %695
  %699 = phi i32 [ %696, %695 ], [ 2, %589 ]
  %700 = load ptr, ptr @MEM_freeN, align 8, !tbaa !116
  call void %700(ptr noundef %591) #12
  br label %701

701:                                              ; preds = %519, %435, %431, %411, %397, %698, %529, %403, %153, %174, %238, %369, %365, %383, %35
  %702 = phi i32 [ 2, %35 ], [ 4, %383 ], [ %368, %369 ], [ %368, %365 ], [ 4, %238 ], [ 4, %174 ], [ 4, %153 ], [ %398, %397 ], [ %404, %403 ], [ %530, %529 ], [ %699, %698 ], [ 4, %519 ], [ 2, %435 ], [ 2, %431 ], [ 2, %411 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #12
  ret i32 %702
}

declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #3

declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #3

declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @VIEW3D_OT_select(ptr noundef %0) local_unnamed_addr #1 {
  store ptr @.str.23, ptr %0, align 8, !tbaa !68
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.24, ptr %2, align 8, !tbaa !71
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %3, align 8, !tbaa !72
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view3d_select_invoke, ptr %4, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_select_exec, ptr %5, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %6, align 8, !tbaa !76
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %7, align 8, !tbaa !78
  tail call void @WM_operator_properties_mouse_select(ptr noundef nonnull %0) #12
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #12
  %11 = load ptr, ptr %8, align 8, !tbaa !79
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #12
  %13 = load ptr, ptr %8, align 8, !tbaa !79
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.32, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #12
  %15 = load ptr, ptr %8, align 8, !tbaa !79
  %16 = tail call ptr @RNA_def_int_vector(ptr noundef %15, ptr noundef nonnull @.str.35, i32 noundef 2, ptr noundef null, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef -2147483648, i32 noundef 2147483647) #12
  tail call void @RNA_def_property_flag(ptr noundef %16, i32 noundef 524288) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @view3d_select_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !80
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call void @RNA_int_set_array(ptr noundef %5, ptr noundef nonnull @.str.35, ptr noundef nonnull %6) #12
  %7 = tail call i32 @view3d_select_exec(ptr noundef %0, ptr noundef %1)
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @view3d_select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.ViewContext, align 8
  %4 = alloca [2 x float], align 4
  %5 = alloca [40000 x i32], align 16
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %11 = tail call ptr @CTX_data_active_object(ptr noundef %0) #12
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !80
  %14 = tail call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.9) #12
  %15 = trunc i32 %14 to i8
  %16 = load ptr, ptr %12, align 8, !tbaa !80
  %17 = tail call i32 @RNA_boolean_get(ptr noundef %16, ptr noundef nonnull @.str.6) #12
  %18 = trunc i32 %17 to i8
  %19 = load ptr, ptr %12, align 8, !tbaa !80
  %20 = tail call i32 @RNA_boolean_get(ptr noundef %19, ptr noundef nonnull @.str.17) #12
  %21 = trunc i32 %20 to i8
  %22 = load ptr, ptr %12, align 8, !tbaa !80
  %23 = tail call i32 @RNA_boolean_get(ptr noundef %22, ptr noundef nonnull @.str.26) #12
  %24 = load ptr, ptr %12, align 8, !tbaa !80
  %25 = tail call i32 @RNA_boolean_get(ptr noundef %24, ptr noundef nonnull @.str.29) #12
  %26 = trunc i32 %25 to i8
  %27 = load ptr, ptr %12, align 8, !tbaa !80
  %28 = tail call i32 @RNA_boolean_get(ptr noundef %27, ptr noundef nonnull @.str.32) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %2
  %31 = icmp eq ptr %10, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %30
  %33 = tail call zeroext i8 @BKE_paint_select_elem_test(ptr noundef %11) #12
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = icmp eq ptr %11, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 27
  %39 = load i32, ptr %38, align 8, !tbaa !115
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = tail call ptr @BKE_object_pose_armature_get(ptr noundef nonnull %11) #12
  %44 = icmp ne ptr %43, null
  %45 = zext i1 %44 to i8
  br label %46

46:                                               ; preds = %30, %32, %42, %37, %35, %2
  %47 = phi i8 [ 0, %2 ], [ 1, %32 ], [ 1, %30 ], [ 0, %37 ], [ 0, %35 ], [ %45, %42 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #12
  %48 = load ptr, ptr %12, align 8, !tbaa !80
  call void @RNA_int_get_array(ptr noundef %48, ptr noundef nonnull @.str.35, ptr noundef nonnull %9) #12
  call void @view3d_operator_needs_opengl(ptr noundef %0) #12
  %49 = icmp eq i8 %47, 0
  %50 = select i1 %49, ptr %11, ptr null
  %51 = select i1 %49, ptr %10, ptr null
  %52 = icmp ne ptr %51, null
  %53 = and i1 %49, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.Object, ptr %51, i64 0, i32 3
  %56 = load i16, ptr %55, align 8, !tbaa !127
  switch i16 %56, label %489 [
    i16 1, label %57
    i16 25, label %59
    i16 22, label %61
    i16 2, label %63
    i16 3, label %63
    i16 5, label %65
    i16 4, label %67
  ]

57:                                               ; preds = %54
  %58 = call zeroext i8 @EDBM_select_pick(ptr noundef %0, ptr noundef nonnull %9, i8 noundef zeroext %15, i8 noundef zeroext %18, i8 noundef zeroext %21) #12
  br label %489

59:                                               ; preds = %54
  %60 = call zeroext i8 @mouse_armature(ptr noundef %0, ptr noundef nonnull %9, i8 noundef zeroext %15, i8 noundef zeroext %18, i8 noundef zeroext %21) #12
  br label %489

61:                                               ; preds = %54
  %62 = call zeroext i8 @mouse_lattice(ptr noundef %0, ptr noundef nonnull %9, i8 noundef zeroext %15, i8 noundef zeroext %18, i8 noundef zeroext %21) #12
  br label %489

63:                                               ; preds = %54, %54
  %64 = call zeroext i8 @mouse_nurb(ptr noundef %0, ptr noundef nonnull %9, i8 noundef zeroext %15, i8 noundef zeroext %18, i8 noundef zeroext %21) #12
  br label %489

65:                                               ; preds = %54
  %66 = call zeroext i8 @mouse_mball(ptr noundef %0, ptr noundef nonnull %9, i8 noundef zeroext %15, i8 noundef zeroext %18, i8 noundef zeroext %21) #12
  br label %489

67:                                               ; preds = %54
  %68 = call zeroext i8 @mouse_font(ptr noundef %0, ptr noundef nonnull %9, i8 noundef zeroext %15, i8 noundef zeroext %18, i8 noundef zeroext %21) #12
  br label %489

69:                                               ; preds = %46
  %70 = icmp eq ptr %50, null
  br i1 %70, label %83, label %71

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 27
  %73 = load i32, ptr %72, align 8, !tbaa !115
  %74 = and i32 %73, 32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = call i32 @PE_mouse_particles(ptr noundef %0, ptr noundef nonnull %9, i8 noundef zeroext %15, i8 noundef zeroext %18, i8 noundef zeroext %21) #12
  br label %493

78:                                               ; preds = %71
  %79 = call zeroext i8 @BKE_paint_select_face_test(ptr noundef nonnull %50) #12
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = call zeroext i8 @paintface_mouse_select(ptr noundef %0, ptr noundef nonnull %50, ptr noundef nonnull %9, i8 noundef zeroext %15, i8 noundef zeroext %18, i8 noundef zeroext %21) #12
  br label %489

83:                                               ; preds = %69, %78
  %84 = call zeroext i8 @BKE_paint_select_vert_test(ptr noundef %50) #12
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %130, label %86

86:                                               ; preds = %83
  %87 = call ptr @CTX_wm_view3d(ptr noundef %0) #12
  %88 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 19
  %89 = load ptr, ptr %88, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !tbaa !64
  %90 = call zeroext i8 @ED_mesh_pick_vert(ptr noundef %0, ptr noundef %50, ptr noundef nonnull %9, ptr noundef nonnull %8, i32 noundef 50, i8 noundef zeroext 0) #12
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %128, label %92

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.Mesh, ptr %89, i64 0, i32 15
  %94 = load ptr, ptr %93, align 8, !tbaa !101
  %95 = load i32, ptr %8, align 4, !tbaa !64
  %96 = zext i32 %95 to i64
  %97 = icmp eq i8 %15, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.MVert, ptr %94, i64 %96, i32 2
  %100 = load i8, ptr %99, align 2, !tbaa !102
  %101 = or i8 %100, 1
  store i8 %101, ptr %99, align 2, !tbaa !102
  br label %118

102:                                              ; preds = %92
  %103 = icmp eq i8 %18, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.MVert, ptr %94, i64 %96, i32 2
  %106 = load i8, ptr %105, align 2, !tbaa !102
  %107 = and i8 %106, -2
  store i8 %107, ptr %105, align 2, !tbaa !102
  br label %118

108:                                              ; preds = %102
  %109 = icmp eq i8 %21, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.MVert, ptr %94, i64 %96, i32 2
  %112 = load i8, ptr %111, align 2, !tbaa !102
  %113 = xor i8 %112, 1
  store i8 %113, ptr %111, align 2, !tbaa !102
  br label %118

114:                                              ; preds = %108
  call void @paintvert_deselect_all_visible(ptr noundef %50, i32 noundef 2, i8 noundef zeroext 0) #12
  %115 = getelementptr inbounds %struct.MVert, ptr %94, i64 %96, i32 2
  %116 = load i8, ptr %115, align 2, !tbaa !102
  %117 = or i8 %116, 1
  store i8 %117, ptr %115, align 2, !tbaa !102
  br label %118

118:                                              ; preds = %114, %110, %104, %98
  %119 = getelementptr inbounds %struct.MVert, ptr %94, i64 %96, i32 2
  %120 = load i8, ptr %119, align 2, !tbaa !102
  %121 = and i8 %120, 1
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %118
  %124 = load i32, ptr %8, align 4, !tbaa !64
  call void @BKE_mesh_mselect_active_set(ptr noundef %89, i32 noundef %124, i32 noundef 0) #12
  br label %126

125:                                              ; preds = %118
  call void @BKE_mesh_mselect_validate(ptr noundef %89) #12
  br label %126

126:                                              ; preds = %125, %123
  call void @paintvert_flush_flags(ptr noundef %50) #12
  %127 = load ptr, ptr %88, align 8, !tbaa !82
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %127) #12
  br label %128

128:                                              ; preds = %86, %126
  %129 = phi i8 [ 1, %126 ], [ 0, %86 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  br label %489

130:                                              ; preds = %83
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %131 = call ptr @CTX_wm_region(ptr noundef %0) #12
  %132 = call ptr @CTX_wm_view3d(ptr noundef %0) #12
  %133 = call ptr @CTX_data_scene(ptr noundef %0) #12
  %134 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !34
  %135 = fmul float %134, 7.500000e+01
  %136 = fmul float %135, 0x3FF5553260000000
  %137 = load i32, ptr %9, align 4, !tbaa !64
  %138 = sitofp i32 %137 to float
  %139 = getelementptr inbounds i32, ptr %9, i64 1
  %140 = load i32, ptr %139, align 4, !tbaa !64
  %141 = sitofp i32 %140 to float
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %142 = call ptr @CTX_wm_region(ptr noundef %0) #12
  %143 = getelementptr inbounds %struct.ViewContext, ptr %3, i64 0, i32 3
  store ptr %142, ptr %143, align 8, !tbaa !45
  %144 = call ptr @CTX_data_scene(ptr noundef %0) #12
  store ptr %144, ptr %3, align 8, !tbaa !47
  %145 = call ptr @CTX_wm_view3d(ptr noundef %0) #12
  %146 = getelementptr inbounds %struct.ViewContext, ptr %3, i64 0, i32 4
  store ptr %145, ptr %146, align 8, !tbaa !48
  %147 = call ptr @CTX_wm_region_view3d(ptr noundef %0) #12
  %148 = getelementptr inbounds %struct.ViewContext, ptr %3, i64 0, i32 5
  store ptr %147, ptr %148, align 8, !tbaa !49
  %149 = call ptr @CTX_data_active_object(ptr noundef %0) #12
  %150 = getelementptr inbounds %struct.ViewContext, ptr %3, i64 0, i32 1
  store ptr %149, ptr %150, align 8, !tbaa !50
  %151 = call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %152 = getelementptr inbounds %struct.ViewContext, ptr %3, i64 0, i32 2
  %153 = icmp eq ptr %151, null
  %154 = select i1 %49, ptr %151, ptr null
  store ptr %154, ptr %152, align 8
  %155 = getelementptr inbounds %struct.Scene, ptr %133, i64 0, i32 5
  %156 = load ptr, ptr %155, align 8, !tbaa !192
  %157 = getelementptr inbounds %struct.Scene, ptr %133, i64 0, i32 6
  %158 = load ptr, ptr %157, align 8, !tbaa !195
  %159 = icmp eq ptr %158, null
  br i1 %159, label %164, label %160

160:                                              ; preds = %130
  %161 = load ptr, ptr %158, align 8, !tbaa !199
  %162 = icmp eq ptr %161, null
  %163 = select i1 %162, ptr %156, ptr %161
  br label %164

164:                                              ; preds = %160, %130
  %165 = phi ptr [ %156, %130 ], [ %163, %160 ]
  %166 = and i32 %23, 255
  %167 = icmp ne i32 %166, 0
  %168 = select i1 %49, i1 %167, i1 false
  br i1 %168, label %169, label %230

169:                                              ; preds = %164
  %170 = icmp eq i8 %26, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %169
  %172 = trunc i32 %20 to i16
  %173 = and i16 %172, 255
  %174 = call fastcc ptr @object_mouse_select_menu(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0, ptr noundef nonnull %9, i16 noundef signext %173)
  br label %414

175:                                              ; preds = %169
  %176 = icmp eq ptr %165, null
  br i1 %176, label %414, label %177

177:                                              ; preds = %175
  %178 = getelementptr inbounds %struct.View3D, ptr %132, i64 0, i32 22
  %179 = getelementptr inbounds float, ptr %4, i64 1
  br label %180

180:                                              ; preds = %177, %225
  %181 = phi float [ %219, %225 ], [ %136, %177 ]
  %182 = phi ptr [ %220, %225 ], [ null, %177 ]
  %183 = phi ptr [ %226, %225 ], [ %165, %177 ]
  %184 = getelementptr inbounds %struct.Base, ptr %183, i64 0, i32 2
  %185 = load i32, ptr %184, align 8, !tbaa !117
  %186 = load i32, ptr %178, align 8, !tbaa !119
  %187 = and i32 %186, %185
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %218, label %189

189:                                              ; preds = %180
  %190 = getelementptr inbounds %struct.Base, ptr %183, i64 0, i32 7
  %191 = load ptr, ptr %190, align 8, !tbaa !120
  %192 = getelementptr inbounds %struct.Object, ptr %191, i64 0, i32 102
  %193 = load i8, ptr %192, align 8, !tbaa !121
  %194 = and i8 %193, 3
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %196, label %218

196:                                              ; preds = %189
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %197 = getelementptr inbounds %struct.Object, ptr %191, i64 0, i32 47, i64 3
  %198 = call i32 @ED_view3d_project_float_global(ptr noundef %131, ptr noundef nonnull %197, ptr noundef nonnull %4, i32 noundef 7) #12
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %215

200:                                              ; preds = %196
  %201 = load float, ptr %4, align 4, !tbaa !52
  %202 = fsub float %201, %138
  %203 = load float, ptr %179, align 4, !tbaa !52
  %204 = fsub float %203, %141
  %205 = call float @llvm.fabs.f32(float %202)
  %206 = call float @llvm.fabs.f32(float %204)
  %207 = fadd float %205, %206
  %208 = load ptr, ptr %157, align 8, !tbaa !195
  %209 = icmp eq ptr %183, %208
  %210 = fadd float %207, 1.000000e+01
  %211 = select i1 %209, float %210, float %207
  %212 = fcmp olt float %211, %181
  %213 = select i1 %212, float %211, float %181
  %214 = select i1 %212, ptr %183, ptr %182
  br label %215

215:                                              ; preds = %200, %196
  %216 = phi float [ %213, %200 ], [ %181, %196 ]
  %217 = phi ptr [ %214, %200 ], [ %182, %196 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br label %218

218:                                              ; preds = %215, %189, %180
  %219 = phi float [ %216, %215 ], [ %181, %189 ], [ %181, %180 ]
  %220 = phi ptr [ %217, %215 ], [ %182, %189 ], [ %182, %180 ]
  %221 = load ptr, ptr %183, align 8, !tbaa !199
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %225

223:                                              ; preds = %218
  %224 = load ptr, ptr %155, align 8, !tbaa !192
  br label %225

225:                                              ; preds = %223, %218
  %226 = phi ptr [ %224, %223 ], [ %221, %218 ]
  %227 = icmp ne ptr %226, %165
  %228 = icmp ne ptr %226, null
  %229 = and i1 %227, %228
  br i1 %229, label %180, label %414, !llvm.loop !238

230:                                              ; preds = %164
  call void @llvm.lifetime.start.p0(i64 160000, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  %231 = call fastcc signext i16 @mixed_bones_object_selectbuffer(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef nonnull %6, i8 noundef zeroext %26)
  %232 = sext i16 %231 to i32
  %233 = icmp sgt i16 %231, 0
  br i1 %233, label %234, label %411

234:                                              ; preds = %230
  %235 = zext nneg i32 %232 to i64
  %236 = zext nneg i32 %232 to i64
  %237 = getelementptr inbounds i32, ptr %5, i64 3
  %238 = load i32, ptr %237, align 4, !tbaa !64
  %239 = icmp ult i32 %238, 65536
  br i1 %239, label %240, label %254

240:                                              ; preds = %234, %244
  %241 = phi i64 [ %242, %244 ], [ 0, %234 ]
  %242 = add nuw nsw i64 %241, 1
  %243 = icmp eq i64 %242, %236
  br i1 %243, label %251, label %244, !llvm.loop !191

244:                                              ; preds = %240
  %245 = shl i64 %242, 2
  %246 = and i64 %245, 4294967292
  %247 = or disjoint i64 %246, 3
  %248 = getelementptr inbounds i32, ptr %5, i64 %247
  %249 = load i32, ptr %248, align 4, !tbaa !64
  %250 = icmp ult i32 %249, 65536
  br i1 %250, label %240, label %251, !llvm.loop !191

251:                                              ; preds = %244, %240
  %252 = phi i8 [ 0, %240 ], [ 1, %244 ]
  %253 = icmp uge i64 %242, %235
  br label %254

254:                                              ; preds = %251, %234
  %255 = phi i1 [ false, %234 ], [ %253, %251 ]
  %256 = phi i8 [ 1, %234 ], [ %252, %251 ]
  %257 = icmp ne i8 %26, 0
  %258 = and i1 %257, %255
  br i1 %258, label %259, label %263

259:                                              ; preds = %254
  %260 = trunc i32 %20 to i16
  %261 = and i16 %260, 255
  %262 = call fastcc ptr @object_mouse_select_menu(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef %232, ptr noundef nonnull %9, i16 noundef signext %261)
  br label %266

263:                                              ; preds = %254
  %264 = load i8, ptr %6, align 1, !tbaa !130
  %265 = call fastcc ptr @mouse_select_eval_buffer(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef %232, ptr noundef %165, i8 noundef zeroext %256, i8 noundef zeroext %264)
  br label %266

266:                                              ; preds = %263, %259
  %267 = phi ptr [ %262, %259 ], [ %265, %263 ]
  %268 = icmp eq ptr %267, null
  %269 = select i1 %255, i1 true, i1 %268
  br i1 %269, label %411, label %270

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct.Base, ptr %267, i64 0, i32 7
  %272 = load ptr, ptr %271, align 8, !tbaa !120
  %273 = getelementptr inbounds %struct.Object, ptr %272, i64 0, i32 3
  %274 = load i16, ptr %273, align 8, !tbaa !127
  %275 = icmp eq i16 %274, 11
  br i1 %275, label %276, label %383

276:                                              ; preds = %270
  %277 = load ptr, ptr %157, align 8, !tbaa !195
  %278 = icmp eq ptr %277, %267
  br i1 %278, label %279, label %405

279:                                              ; preds = %276
  %280 = getelementptr inbounds %struct.Base, ptr %267, i64 0, i32 3
  %281 = load i32, ptr %280, align 4, !tbaa !196
  %282 = call i32 @llvm.smax.i32(i32 %232, i32 1)
  %283 = zext nneg i32 %282 to i64
  br label %287

284:                                              ; preds = %287
  %285 = add nuw nsw i64 %288, 1
  %286 = icmp eq i64 %285, %283
  br i1 %286, label %377, label %287, !llvm.loop !239

287:                                              ; preds = %279, %284
  %288 = phi i64 [ 0, %279 ], [ %285, %284 ]
  %289 = shl nsw i64 %288, 2
  %290 = or disjoint i64 %289, 3
  %291 = getelementptr inbounds [40000 x i32], ptr %5, i64 0, i64 %290
  %292 = load i32, ptr %291, align 4, !tbaa !64
  %293 = and i32 %292, 65535
  %294 = icmp ne i32 %281, %293
  %295 = icmp ult i32 %292, 65536
  %296 = or i1 %295, %294
  br i1 %296, label %284, label %297

297:                                              ; preds = %287
  %298 = call ptr @BKE_object_movieclip_get(ptr noundef %133, ptr noundef %272, i8 noundef zeroext 0) #12
  %299 = getelementptr inbounds %struct.MovieClip, ptr %298, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  %300 = ashr i32 %292, 16
  %301 = call ptr @BKE_tracking_track_get_indexed(ptr noundef nonnull %299, i32 noundef %300, ptr noundef nonnull %7) #12
  %302 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %301, i64 0, i32 13
  %303 = load i32, ptr %302, align 8, !tbaa !240
  %304 = and i32 %303, 1
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %318

306:                                              ; preds = %297
  %307 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %301, i64 0, i32 14
  %308 = load i32, ptr %307, align 4, !tbaa !242
  %309 = and i32 %308, 1
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %318

311:                                              ; preds = %306
  %312 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %301, i64 0, i32 15
  %313 = load i32, ptr %312, align 8, !tbaa !243
  %314 = and i32 %313, 1
  %315 = icmp ne i32 %314, 0
  %316 = icmp ne i8 %15, 0
  %317 = and i1 %316, %315
  br i1 %317, label %320, label %321

318:                                              ; preds = %306, %297
  %319 = icmp eq i8 %15, 0
  br i1 %319, label %321, label %320

320:                                              ; preds = %318, %311
  call void @BKE_tracking_track_deselect(ptr noundef %301, i32 noundef 7) #12
  br label %369

321:                                              ; preds = %318, %311
  br i1 %305, label %322, label %332

322:                                              ; preds = %321
  %323 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %301, i64 0, i32 14
  %324 = load i32, ptr %323, align 4, !tbaa !242
  %325 = and i32 %324, 1
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %332

327:                                              ; preds = %322
  %328 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %301, i64 0, i32 15
  %329 = load i32, ptr %328, align 8, !tbaa !243
  %330 = and i32 %329, 1
  %331 = icmp ne i32 %330, 0
  br label %332

332:                                              ; preds = %327, %322, %321
  %333 = phi i1 [ true, %322 ], [ true, %321 ], [ %331, %327 ]
  %334 = zext i1 %333 to i32
  %335 = icmp eq i8 %15, 0
  br i1 %335, label %336, label %352

336:                                              ; preds = %332
  %337 = getelementptr inbounds %struct.MovieClip, ptr %298, i64 0, i32 11, i32 8
  %338 = load ptr, ptr %337, align 8, !tbaa !116
  %339 = icmp eq ptr %338, null
  br i1 %339, label %352, label %343

340:                                              ; preds = %348, %343
  %341 = load ptr, ptr %344, align 8, !tbaa !116
  %342 = icmp eq ptr %341, null
  br i1 %342, label %352, label %343, !llvm.loop !244

343:                                              ; preds = %336, %340
  %344 = phi ptr [ %341, %340 ], [ %338, %336 ]
  %345 = call ptr @BKE_tracking_object_get_tracks(ptr noundef nonnull %299, ptr noundef nonnull %344) #12
  %346 = load ptr, ptr %345, align 8, !tbaa !116
  %347 = icmp eq ptr %346, null
  br i1 %347, label %340, label %348

348:                                              ; preds = %343, %348
  %349 = phi ptr [ %350, %348 ], [ %346, %343 ]
  call void @BKE_tracking_track_deselect(ptr noundef nonnull %349, i32 noundef 7) #12
  %350 = load ptr, ptr %349, align 8, !tbaa !116
  %351 = icmp eq ptr %350, null
  br i1 %351, label %340, label %348, !llvm.loop !245

352:                                              ; preds = %340, %336, %332
  %353 = load ptr, ptr %7, align 8, !tbaa !116
  call void @BKE_tracking_track_select(ptr noundef %353, ptr noundef %301, i32 noundef 7, i8 noundef zeroext %15) #12
  %354 = load i32, ptr %302, align 8, !tbaa !240
  %355 = and i32 %354, 1
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %366

357:                                              ; preds = %352
  %358 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %301, i64 0, i32 14
  %359 = load i32, ptr %358, align 4, !tbaa !242
  %360 = and i32 %359, 1
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %357
  %363 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %301, i64 0, i32 15
  %364 = load i32, ptr %363, align 8, !tbaa !243
  %365 = and i32 %364, 1
  br label %366

366:                                              ; preds = %362, %357, %352
  %367 = phi i32 [ 1, %357 ], [ 1, %352 ], [ %365, %362 ]
  %368 = icmp eq i32 %367, %334
  br label %369

369:                                              ; preds = %366, %320
  %370 = phi i1 [ true, %320 ], [ %368, %366 ]
  %371 = getelementptr inbounds %struct.Base, ptr %267, i64 0, i32 4
  %372 = load i32, ptr %371, align 8, !tbaa !125
  %373 = or i32 %372, 1
  store i32 %373, ptr %371, align 8, !tbaa !125
  %374 = trunc i32 %373 to i16
  %375 = load ptr, ptr %271, align 8, !tbaa !120
  %376 = getelementptr inbounds %struct.Object, ptr %375, i64 0, i32 53
  store i16 %374, ptr %376, align 4, !tbaa !126
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 341442560, ptr noundef %301) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %133) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  br label %377

377:                                              ; preds = %284, %369
  %378 = phi i8 [ 1, %369 ], [ 0, %284 ]
  %379 = phi i1 [ %370, %369 ], [ true, %284 ]
  br i1 %379, label %380, label %405

380:                                              ; preds = %377
  %381 = load i8, ptr %6, align 1, !tbaa !130
  %382 = call fastcc ptr @mouse_select_eval_buffer(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef %232, ptr noundef %165, i8 noundef zeroext 0, i8 noundef zeroext %381)
  br label %405

383:                                              ; preds = %270
  %384 = load i8, ptr %6, align 1, !tbaa !130
  %385 = call i32 @ED_do_pose_selectbuffer(ptr noundef %133, ptr noundef nonnull %267, ptr noundef nonnull %5, i16 noundef signext %231, i8 noundef zeroext %15, i8 noundef zeroext %18, i8 noundef zeroext %21, i8 noundef zeroext %384) #12
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %405, label %387

387:                                              ; preds = %383
  %388 = getelementptr inbounds %struct.Base, ptr %267, i64 0, i32 4
  %389 = load i32, ptr %388, align 8, !tbaa !125
  %390 = or i32 %389, 1
  store i32 %390, ptr %388, align 8, !tbaa !125
  %391 = trunc i32 %390 to i16
  %392 = load ptr, ptr %271, align 8, !tbaa !120
  %393 = getelementptr inbounds %struct.Object, ptr %392, i64 0, i32 53
  store i16 %391, ptr %393, align 4, !tbaa !126
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %392) #12
  %394 = load ptr, ptr %271, align 8, !tbaa !120
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85262336, ptr noundef %394) #12
  %395 = load ptr, ptr %157, align 8, !tbaa !195
  %396 = icmp eq ptr %395, null
  br i1 %396, label %405, label %397

397:                                              ; preds = %387
  %398 = getelementptr inbounds %struct.Base, ptr %395, i64 0, i32 7
  %399 = load ptr, ptr %398, align 8, !tbaa !120
  %400 = getelementptr inbounds %struct.Object, ptr %399, i64 0, i32 27
  %401 = load i32, ptr %400, align 8, !tbaa !115
  %402 = and i32 %401, 8
  %403 = icmp eq i32 %402, 0
  %404 = select i1 %403, ptr %267, ptr null
  br label %405

405:                                              ; preds = %397, %387, %383, %380, %377, %276
  %406 = phi i8 [ 0, %276 ], [ 1, %387 ], [ 0, %383 ], [ %378, %380 ], [ %378, %377 ], [ 1, %397 ]
  %407 = phi ptr [ %267, %276 ], [ %267, %387 ], [ %267, %383 ], [ %382, %380 ], [ %267, %377 ], [ %404, %397 ]
  %408 = load ptr, ptr %157, align 8, !tbaa !195
  %409 = icmp eq ptr %407, %408
  %410 = select i1 %409, ptr null, ptr %407
  br label %411

411:                                              ; preds = %405, %266, %230
  %412 = phi i8 [ 0, %230 ], [ %406, %405 ], [ 0, %266 ]
  %413 = phi ptr [ null, %230 ], [ %410, %405 ], [ %267, %266 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 160000, ptr nonnull %5) #12
  br label %414

414:                                              ; preds = %225, %411, %175, %171
  %415 = phi i8 [ 0, %171 ], [ 0, %175 ], [ %412, %411 ], [ 0, %225 ]
  %416 = phi ptr [ %174, %171 ], [ null, %175 ], [ %413, %411 ], [ %220, %225 ]
  %417 = icmp eq ptr %416, null
  br i1 %417, label %487, label %418

418:                                              ; preds = %414
  %419 = load ptr, ptr %152, align 8, !tbaa !51
  %420 = icmp eq ptr %419, null
  br i1 %420, label %437, label %421

421:                                              ; preds = %418
  %422 = load ptr, ptr %155, align 8, !tbaa !116
  %423 = icmp eq ptr %422, null
  br i1 %423, label %436, label %424

424:                                              ; preds = %421, %433
  %425 = phi ptr [ %434, %433 ], [ %422, %421 ]
  %426 = getelementptr inbounds %struct.Base, ptr %425, i64 0, i32 4
  %427 = load i32, ptr %426, align 8, !tbaa !125
  %428 = and i32 %427, 1
  %429 = icmp eq i32 %428, 0
  %430 = icmp eq ptr %425, %416
  %431 = or i1 %430, %429
  br i1 %431, label %433, label %432

432:                                              ; preds = %424
  call void @ED_base_object_select(ptr noundef nonnull %425, i16 noundef signext 0) #12
  br label %433

433:                                              ; preds = %432, %424
  %434 = load ptr, ptr %425, align 8, !tbaa !116
  %435 = icmp eq ptr %434, null
  br i1 %435, label %436, label %424, !llvm.loop !246

436:                                              ; preds = %433, %421
  call void @ED_base_object_select(ptr noundef nonnull %416, i16 noundef signext 1) #12
  br label %486

437:                                              ; preds = %418
  %438 = getelementptr inbounds %struct.Base, ptr %416, i64 0, i32 2
  %439 = load i32, ptr %438, align 8, !tbaa !117
  %440 = getelementptr inbounds %struct.View3D, ptr %132, i64 0, i32 22
  %441 = load i32, ptr %440, align 8, !tbaa !119
  %442 = and i32 %441, %439
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %486, label %444

444:                                              ; preds = %437
  %445 = getelementptr inbounds %struct.Base, ptr %416, i64 0, i32 7
  %446 = load ptr, ptr %445, align 8, !tbaa !120
  %447 = getelementptr inbounds %struct.Object, ptr %446, i64 0, i32 102
  %448 = load i8, ptr %447, align 8, !tbaa !121
  %449 = and i8 %448, 3
  %450 = icmp eq i8 %449, 0
  br i1 %450, label %451, label %486

451:                                              ; preds = %444
  %452 = load ptr, ptr %157, align 8, !tbaa !195
  %453 = icmp eq i8 %15, 0
  br i1 %453, label %454, label %480

454:                                              ; preds = %451
  %455 = icmp eq i8 %18, 0
  br i1 %455, label %456, label %480

456:                                              ; preds = %454
  %457 = icmp eq i8 %21, 0
  br i1 %457, label %458, label %461

458:                                              ; preds = %456
  %459 = load ptr, ptr %155, align 8, !tbaa !116
  %460 = icmp eq ptr %459, null
  br i1 %460, label %480, label %468

461:                                              ; preds = %456
  %462 = getelementptr inbounds %struct.Base, ptr %416, i64 0, i32 4
  %463 = load i32, ptr %462, align 8, !tbaa !125
  %464 = and i32 %463, 1
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %480, label %466

466:                                              ; preds = %461
  %467 = icmp eq ptr %416, %452
  br i1 %467, label %480, label %482

468:                                              ; preds = %458, %477
  %469 = phi ptr [ %478, %477 ], [ %459, %458 ]
  %470 = getelementptr inbounds %struct.Base, ptr %469, i64 0, i32 4
  %471 = load i32, ptr %470, align 8, !tbaa !125
  %472 = and i32 %471, 1
  %473 = icmp eq i32 %472, 0
  %474 = icmp eq ptr %469, %416
  %475 = or i1 %474, %473
  br i1 %475, label %477, label %476

476:                                              ; preds = %468
  call void @ED_base_object_select(ptr noundef nonnull %469, i16 noundef signext 0) #12
  br label %477

477:                                              ; preds = %476, %468
  %478 = load ptr, ptr %469, align 8, !tbaa !116
  %479 = icmp eq ptr %478, null
  br i1 %479, label %480, label %468, !llvm.loop !246

480:                                              ; preds = %477, %458, %461, %466, %454, %451
  %481 = phi i16 [ 1, %451 ], [ 0, %454 ], [ 0, %466 ], [ 1, %461 ], [ 1, %458 ], [ 1, %477 ]
  call void @ED_base_object_select(ptr noundef nonnull %416, i16 noundef signext %481) #12
  br label %482

482:                                              ; preds = %480, %466
  %483 = icmp ne ptr %452, %416
  %484 = select i1 %483, i1 %153, i1 false
  br i1 %484, label %485, label %486

485:                                              ; preds = %482
  call void @ED_base_object_activate(ptr noundef %0, ptr noundef nonnull %416) #12
  br label %486

486:                                              ; preds = %485, %482, %444, %437, %436
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %133) #12
  br label %487

487:                                              ; preds = %414, %486
  %488 = phi i8 [ 1, %486 ], [ %415, %414 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  br label %489

489:                                              ; preds = %54, %128, %487, %81, %57, %61, %65, %67, %63, %59
  %490 = phi i8 [ %58, %57 ], [ %60, %59 ], [ %62, %61 ], [ %64, %63 ], [ %66, %65 ], [ %68, %67 ], [ %82, %81 ], [ %129, %128 ], [ %488, %487 ], [ 0, %54 ]
  %491 = icmp eq i8 %490, 0
  %492 = select i1 %491, i32 8, i32 12
  br label %493

493:                                              ; preds = %489, %76
  %494 = phi i32 [ %77, %76 ], [ %492, %489 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  ret i32 %494
}

declare i32 @ED_operator_view3d_active(ptr noundef) #3

declare void @WM_operator_properties_mouse_select(ptr noundef) local_unnamed_addr #3

declare ptr @RNA_def_int_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @VIEW3D_OT_select_circle(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.38, ptr %0, align 8, !tbaa !68
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.39, ptr %2, align 8, !tbaa !71
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.40, ptr %3, align 8, !tbaa !72
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_circle_invoke, ptr %4, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_circle_modal, ptr %5, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_circle_select_exec, ptr %6, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view3d_selectable_data, ptr %7, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_circle_cancel, ptr %8, align 8, !tbaa !77
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %9, align 8, !tbaa !78
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.5, i32 noundef -2147483648, i32 noundef 2147483647) #12
  %13 = load ptr, ptr %10, align 8, !tbaa !79
  %14 = tail call ptr @RNA_def_int(ptr noundef %13, ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.5, i32 noundef -2147483648, i32 noundef 2147483647) #12
  %15 = load ptr, ptr %10, align 8, !tbaa !79
  %16 = tail call ptr @RNA_def_int(ptr noundef %15, ptr noundef nonnull @.str.45, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 2147483647) #12
  %17 = load ptr, ptr %10, align 8, !tbaa !79
  %18 = tail call ptr @RNA_def_int(ptr noundef %17, ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.5, i32 noundef -2147483648, i32 noundef 2147483647) #12
  ret void
}

declare i32 @WM_gesture_circle_invoke(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @WM_gesture_circle_modal(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @view3d_circle_select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca [2 x float], align 4
  %6 = alloca %struct.CircleSelectUserData, align 8
  %7 = alloca %struct.CircleSelectUserData, align 8
  %8 = alloca %struct.CircleSelectUserData, align 8
  %9 = alloca %struct.CircleSelectUserData, align 8
  %10 = alloca %struct.CircleSelectUserData, align 8
  %11 = alloca %struct.CircleSelectUserData, align 8
  %12 = alloca %struct.BMIter, align 8
  %13 = alloca %struct.CircleSelectUserData, align 8
  %14 = alloca [2 x i32], align 4
  %15 = alloca %struct.ViewContext, align 8
  %16 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %17 = tail call ptr @CTX_data_active_object(ptr noundef %0) #12
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !80
  %20 = tail call i32 @RNA_int_get(ptr noundef %19, ptr noundef nonnull @.str.45) #12
  %21 = load ptr, ptr %18, align 8, !tbaa !80
  %22 = tail call i32 @RNA_int_get(ptr noundef %21, ptr noundef nonnull @.str.47) #12
  %23 = icmp eq i32 %22, 3
  %24 = zext i1 %23 to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #12
  %25 = load ptr, ptr %18, align 8, !tbaa !80
  %26 = tail call i32 @RNA_int_get(ptr noundef %25, ptr noundef nonnull @.str.41) #12
  store i32 %26, ptr %14, align 4, !tbaa !64
  %27 = getelementptr inbounds i32, ptr %14, i64 1
  %28 = load ptr, ptr %18, align 8, !tbaa !80
  %29 = tail call i32 @RNA_int_get(ptr noundef %28, ptr noundef nonnull @.str.43) #12
  store i32 %29, ptr %27, align 4, !tbaa !64
  %30 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %2
  %33 = tail call zeroext i8 @BKE_paint_select_elem_test(ptr noundef %17) #12
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = icmp eq ptr %17, null
  br i1 %36, label %441, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 27
  %39 = load i32, ptr %38, align 8, !tbaa !115
  %40 = and i32 %39, 96
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %438, label %42

42:                                               ; preds = %37, %32, %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #12
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %15, i8 0, i64 64, i1 false)
  %43 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %44 = getelementptr inbounds %struct.ViewContext, ptr %15, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !45
  %45 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  store ptr %45, ptr %15, align 8, !tbaa !47
  %46 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #12
  %47 = getelementptr inbounds %struct.ViewContext, ptr %15, i64 0, i32 4
  store ptr %46, ptr %47, align 8, !tbaa !48
  %48 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #12
  %49 = getelementptr inbounds %struct.ViewContext, ptr %15, i64 0, i32 5
  store ptr %48, ptr %49, align 8, !tbaa !49
  %50 = tail call ptr @CTX_data_active_object(ptr noundef %0) #12
  %51 = getelementptr inbounds %struct.ViewContext, ptr %15, i64 0, i32 1
  store ptr %50, ptr %51, align 8, !tbaa !50
  %52 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %53 = getelementptr inbounds %struct.ViewContext, ptr %15, i64 0, i32 2
  store ptr %52, ptr %53, align 8, !tbaa !51
  %54 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %55 = icmp eq ptr %54, null
  br i1 %55, label %276, label %56

56:                                               ; preds = %42
  %57 = sitofp i32 %20 to float
  %58 = load ptr, ptr %53, align 8, !tbaa !51
  %59 = getelementptr inbounds %struct.Object, ptr %58, i64 0, i32 3
  %60 = load i16, ptr %59, align 8, !tbaa !127
  switch i16 %60, label %273 [
    i16 1, label %61
    i16 2, label %201
    i16 3, label %201
    i16 22, label %219
    i16 25, label %234
    i16 5, label %258
  ]

61:                                               ; preds = %56
  %62 = load ptr, ptr %15, align 8, !tbaa !47
  %63 = getelementptr inbounds %struct.Scene, ptr %62, i64 0, i32 20
  %64 = load ptr, ptr %63, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %13) #12
  %65 = load i32, ptr %14, align 4, !tbaa !64
  %66 = trunc i32 %65 to i16
  %67 = load i32, ptr %27, align 4, !tbaa !64
  %68 = trunc i32 %67 to i16
  %69 = fadd float %57, 1.000000e+00
  %70 = fptosi float %69 to i16
  %71 = call zeroext i8 @EDBM_backbuf_circle_init(ptr noundef nonnull %15, i16 noundef signext %66, i16 noundef signext %68, i16 noundef signext %70) #12
  %72 = load ptr, ptr %53, align 8, !tbaa !51
  %73 = load ptr, ptr %49, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %72, ptr noundef %73) #12
  %74 = load ptr, ptr %53, align 8, !tbaa !51
  %75 = call ptr @BKE_editmesh_from_object(ptr noundef %74) #12
  %76 = getelementptr inbounds %struct.ViewContext, ptr %15, i64 0, i32 6
  store ptr %75, ptr %76, align 8, !tbaa !151
  store ptr %15, ptr %13, align 8, !tbaa !247
  %77 = getelementptr inbounds %struct.CircleSelectUserData, ptr %13, i64 0, i32 1
  store i8 %24, ptr %77, align 8, !tbaa !249
  %78 = getelementptr inbounds %struct.CircleSelectUserData, ptr %13, i64 0, i32 2
  %79 = load i32, ptr %14, align 4, !tbaa !64
  store i32 %79, ptr %78, align 4, !tbaa !64
  %80 = load i32, ptr %27, align 4, !tbaa !64
  %81 = getelementptr inbounds %struct.CircleSelectUserData, ptr %13, i64 0, i32 2, i64 1
  store i32 %80, ptr %81, align 8, !tbaa !64
  %82 = sitofp i32 %79 to float
  %83 = getelementptr inbounds %struct.CircleSelectUserData, ptr %13, i64 0, i32 3
  store float %82, ptr %83, align 4, !tbaa !52
  %84 = sitofp i32 %80 to float
  %85 = getelementptr inbounds %struct.CircleSelectUserData, ptr %13, i64 0, i32 3, i64 1
  store float %84, ptr %85, align 8, !tbaa !52
  %86 = getelementptr inbounds %struct.CircleSelectUserData, ptr %13, i64 0, i32 4
  store float %57, ptr %86, align 4, !tbaa !250
  %87 = fmul float %57, %57
  %88 = getelementptr inbounds %struct.CircleSelectUserData, ptr %13, i64 0, i32 5
  store float %87, ptr %88, align 8, !tbaa !251
  %89 = getelementptr inbounds %struct.CircleSelectUserData, ptr %13, i64 0, i32 6
  store i8 0, ptr %89, align 4, !tbaa !252
  %90 = getelementptr inbounds %struct.ToolSettings, ptr %64, i64 0, i32 8
  %91 = load i16, ptr %90, align 2, !tbaa !152
  %92 = and i16 %91, 1
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %126, label %94

94:                                               ; preds = %61
  %95 = icmp eq i8 %71, 0
  br i1 %95, label %125, label %96

96:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  %97 = load i32, ptr @bm_wireoffs, align 4, !tbaa !64
  %98 = load ptr, ptr %75, align 8, !tbaa !159
  %99 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %99, align 4, !tbaa !161
  %100 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %100, align 8, !tbaa !163
  %101 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %101, align 8, !tbaa !164
  %102 = getelementptr inbounds %struct.BMesh, ptr %98, i64 0, i32 9
  %103 = load ptr, ptr %102, align 8, !tbaa !165
  store ptr %103, ptr %4, align 8, !tbaa !130
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #12
  %104 = load ptr, ptr %101, align 8, !tbaa !164
  %105 = call ptr %104(ptr noundef nonnull %4) #12
  %106 = icmp eq ptr %105, null
  br i1 %106, label %124, label %107

107:                                              ; preds = %96, %119
  %108 = phi i32 [ %120, %119 ], [ %97, %96 ]
  %109 = phi ptr [ %122, %119 ], [ %105, %96 ]
  %110 = getelementptr inbounds %struct.BMHeader, ptr %109, i64 0, i32 3
  %111 = load i8, ptr %110, align 1, !tbaa !167
  %112 = and i8 %111, 2
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = call zeroext i8 @EDBM_backbuf_check(i32 noundef %108) #12
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr %75, align 8, !tbaa !159
  call void @BM_vert_select_set(ptr noundef %118, ptr noundef nonnull %109, i8 noundef zeroext %24) #12
  br label %119

119:                                              ; preds = %117, %114, %107
  %120 = add i32 %108, 1
  %121 = load ptr, ptr %101, align 8, !tbaa !164
  %122 = call ptr %121(ptr noundef nonnull %4) #12
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %107, !llvm.loop !169

124:                                              ; preds = %119, %96
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  br label %126

125:                                              ; preds = %94
  call void @mesh_foreachScreenVert(ptr noundef nonnull %15, ptr noundef nonnull @mesh_circle_doSelectVert, ptr noundef nonnull %13, i32 noundef 7) #12
  br label %126

126:                                              ; preds = %125, %124, %61
  %127 = load i16, ptr %90, align 2, !tbaa !152
  %128 = and i16 %127, 2
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %163, label %130

130:                                              ; preds = %126
  %131 = icmp eq i8 %71, 0
  br i1 %131, label %162, label %132

132:                                              ; preds = %130
  %133 = load ptr, ptr %76, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #12
  %134 = load i32, ptr @bm_solidoffs, align 4, !tbaa !64
  %135 = load ptr, ptr %133, align 8, !tbaa !159
  %136 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 4
  store i8 2, ptr %136, align 4, !tbaa !161
  %137 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %137, align 8, !tbaa !163
  %138 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %138, align 8, !tbaa !164
  %139 = getelementptr inbounds %struct.BMesh, ptr %135, i64 0, i32 10
  %140 = load ptr, ptr %139, align 8, !tbaa !253
  store ptr %140, ptr %12, align 8, !tbaa !130
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %12) #12
  %141 = load ptr, ptr %138, align 8, !tbaa !164
  %142 = call ptr %141(ptr noundef nonnull %12) #12
  %143 = icmp eq ptr %142, null
  br i1 %143, label %161, label %144

144:                                              ; preds = %132, %156
  %145 = phi i32 [ %157, %156 ], [ %134, %132 ]
  %146 = phi ptr [ %159, %156 ], [ %142, %132 ]
  %147 = getelementptr inbounds %struct.BMHeader, ptr %146, i64 0, i32 3
  %148 = load i8, ptr %147, align 1, !tbaa !167
  %149 = and i8 %148, 2
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %144
  %152 = call zeroext i8 @EDBM_backbuf_check(i32 noundef %145) #12
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %151
  %155 = load ptr, ptr %133, align 8, !tbaa !159
  call void @BM_edge_select_set(ptr noundef %155, ptr noundef nonnull %146, i8 noundef zeroext %24) #12
  br label %156

156:                                              ; preds = %154, %151, %144
  %157 = add i32 %145, 1
  %158 = load ptr, ptr %138, align 8, !tbaa !164
  %159 = call ptr %158(ptr noundef nonnull %12) #12
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %144, !llvm.loop !254

161:                                              ; preds = %156, %132
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #12
  br label %163

162:                                              ; preds = %130
  call void @mesh_foreachScreenEdge(ptr noundef nonnull %15, ptr noundef nonnull @mesh_circle_doSelectEdge, ptr noundef nonnull %13, i32 noundef 4) #12
  br label %163

163:                                              ; preds = %162, %161, %126
  %164 = load i16, ptr %90, align 2, !tbaa !152
  %165 = and i16 %164, 4
  %166 = icmp eq i16 %165, 0
  br i1 %166, label %199, label %167

167:                                              ; preds = %163
  %168 = icmp eq i8 %71, 0
  br i1 %168, label %198, label %169

169:                                              ; preds = %167
  %170 = load ptr, ptr %76, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %171 = load ptr, ptr %170, align 8, !tbaa !159
  %172 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %172, align 4, !tbaa !161
  %173 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %173, align 8, !tbaa !163
  %174 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %174, align 8, !tbaa !164
  %175 = getelementptr inbounds %struct.BMesh, ptr %171, i64 0, i32 12
  %176 = load ptr, ptr %175, align 8, !tbaa !170
  store ptr %176, ptr %3, align 8, !tbaa !130
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #12
  %177 = load ptr, ptr %174, align 8, !tbaa !164
  %178 = call ptr %177(ptr noundef nonnull %3) #12
  %179 = icmp eq ptr %178, null
  br i1 %179, label %197, label %180

180:                                              ; preds = %169, %192
  %181 = phi i32 [ %193, %192 ], [ 1, %169 ]
  %182 = phi ptr [ %195, %192 ], [ %178, %169 ]
  %183 = getelementptr inbounds %struct.BMHeader, ptr %182, i64 0, i32 3
  %184 = load i8, ptr %183, align 1, !tbaa !167
  %185 = and i8 %184, 2
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %180
  %188 = call zeroext i8 @EDBM_backbuf_check(i32 noundef %181) #12
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %187
  %191 = load ptr, ptr %170, align 8, !tbaa !159
  call void @BM_face_select_set(ptr noundef %191, ptr noundef nonnull %182, i8 noundef zeroext %24) #12
  br label %192

192:                                              ; preds = %190, %187, %180
  %193 = add i32 %181, 1
  %194 = load ptr, ptr %174, align 8, !tbaa !164
  %195 = call ptr %194(ptr noundef nonnull %3) #12
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %180, !llvm.loop !171

197:                                              ; preds = %192, %169
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  br label %199

198:                                              ; preds = %167
  call void @mesh_foreachScreenFace(ptr noundef nonnull %15, ptr noundef nonnull @mesh_circle_doSelectFace, ptr noundef nonnull %13, i32 noundef 7) #12
  br label %199

199:                                              ; preds = %198, %197, %163
  call void @EDBM_backbuf_free() #12
  %200 = load ptr, ptr %76, align 8, !tbaa !151
  call void @EDBM_selectmode_flush(ptr noundef %200) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #12
  br label %273

201:                                              ; preds = %56, %56
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #12
  store ptr %15, ptr %11, align 8, !tbaa !247
  %202 = getelementptr inbounds %struct.CircleSelectUserData, ptr %11, i64 0, i32 1
  store i8 %24, ptr %202, align 8, !tbaa !249
  %203 = getelementptr inbounds %struct.CircleSelectUserData, ptr %11, i64 0, i32 2
  %204 = load i32, ptr %14, align 4, !tbaa !64
  store i32 %204, ptr %203, align 4, !tbaa !64
  %205 = load i32, ptr %27, align 4, !tbaa !64
  %206 = getelementptr inbounds %struct.CircleSelectUserData, ptr %11, i64 0, i32 2, i64 1
  store i32 %205, ptr %206, align 8, !tbaa !64
  %207 = sitofp i32 %204 to float
  %208 = getelementptr inbounds %struct.CircleSelectUserData, ptr %11, i64 0, i32 3
  store float %207, ptr %208, align 4, !tbaa !52
  %209 = sitofp i32 %205 to float
  %210 = getelementptr inbounds %struct.CircleSelectUserData, ptr %11, i64 0, i32 3, i64 1
  store float %209, ptr %210, align 8, !tbaa !52
  %211 = getelementptr inbounds %struct.CircleSelectUserData, ptr %11, i64 0, i32 4
  store float %57, ptr %211, align 4, !tbaa !250
  %212 = fmul float %57, %57
  %213 = getelementptr inbounds %struct.CircleSelectUserData, ptr %11, i64 0, i32 5
  store float %212, ptr %213, align 8, !tbaa !251
  %214 = getelementptr inbounds %struct.CircleSelectUserData, ptr %11, i64 0, i32 6
  store i8 0, ptr %214, align 4, !tbaa !252
  %215 = load ptr, ptr %49, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %58, ptr noundef %215) #12
  call void @nurbs_foreachScreenVert(ptr noundef nonnull %15, ptr noundef nonnull @nurbscurve_circle_doSelect, ptr noundef nonnull %11, i32 noundef 7) #12
  %216 = load ptr, ptr %53, align 8, !tbaa !51
  %217 = getelementptr inbounds %struct.Object, ptr %216, i64 0, i32 19
  %218 = load ptr, ptr %217, align 8, !tbaa !82
  call void @BKE_curve_nurb_vert_active_validate(ptr noundef %218) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #12
  br label %273

219:                                              ; preds = %56
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #12
  store ptr %15, ptr %10, align 8, !tbaa !247
  %220 = getelementptr inbounds %struct.CircleSelectUserData, ptr %10, i64 0, i32 1
  store i8 %24, ptr %220, align 8, !tbaa !249
  %221 = getelementptr inbounds %struct.CircleSelectUserData, ptr %10, i64 0, i32 2
  %222 = load i32, ptr %14, align 4, !tbaa !64
  store i32 %222, ptr %221, align 4, !tbaa !64
  %223 = load i32, ptr %27, align 4, !tbaa !64
  %224 = getelementptr inbounds %struct.CircleSelectUserData, ptr %10, i64 0, i32 2, i64 1
  store i32 %223, ptr %224, align 8, !tbaa !64
  %225 = sitofp i32 %222 to float
  %226 = getelementptr inbounds %struct.CircleSelectUserData, ptr %10, i64 0, i32 3
  store float %225, ptr %226, align 4, !tbaa !52
  %227 = sitofp i32 %223 to float
  %228 = getelementptr inbounds %struct.CircleSelectUserData, ptr %10, i64 0, i32 3, i64 1
  store float %227, ptr %228, align 8, !tbaa !52
  %229 = getelementptr inbounds %struct.CircleSelectUserData, ptr %10, i64 0, i32 4
  store float %57, ptr %229, align 4, !tbaa !250
  %230 = fmul float %57, %57
  %231 = getelementptr inbounds %struct.CircleSelectUserData, ptr %10, i64 0, i32 5
  store float %230, ptr %231, align 8, !tbaa !251
  %232 = getelementptr inbounds %struct.CircleSelectUserData, ptr %10, i64 0, i32 6
  store i8 0, ptr %232, align 4, !tbaa !252
  %233 = load ptr, ptr %49, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %58, ptr noundef %233) #12
  call void @lattice_foreachScreenVert(ptr noundef nonnull %15, ptr noundef nonnull @latticecurve_circle_doSelect, ptr noundef nonnull %10, i32 noundef 7) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #12
  br label %273

234:                                              ; preds = %56
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #12
  %235 = getelementptr inbounds %struct.Object, ptr %58, i64 0, i32 19
  %236 = load ptr, ptr %235, align 8, !tbaa !82
  store ptr %15, ptr %9, align 8, !tbaa !247
  %237 = getelementptr inbounds %struct.CircleSelectUserData, ptr %9, i64 0, i32 1
  store i8 %24, ptr %237, align 8, !tbaa !249
  %238 = getelementptr inbounds %struct.CircleSelectUserData, ptr %9, i64 0, i32 2
  %239 = load i32, ptr %14, align 4, !tbaa !64
  store i32 %239, ptr %238, align 4, !tbaa !64
  %240 = load i32, ptr %27, align 4, !tbaa !64
  %241 = getelementptr inbounds %struct.CircleSelectUserData, ptr %9, i64 0, i32 2, i64 1
  store i32 %240, ptr %241, align 8, !tbaa !64
  %242 = sitofp i32 %239 to float
  %243 = getelementptr inbounds %struct.CircleSelectUserData, ptr %9, i64 0, i32 3
  store float %242, ptr %243, align 4, !tbaa !52
  %244 = sitofp i32 %240 to float
  %245 = getelementptr inbounds %struct.CircleSelectUserData, ptr %9, i64 0, i32 3, i64 1
  store float %244, ptr %245, align 8, !tbaa !52
  %246 = getelementptr inbounds %struct.CircleSelectUserData, ptr %9, i64 0, i32 4
  store float %57, ptr %246, align 4, !tbaa !250
  %247 = fmul float %57, %57
  %248 = getelementptr inbounds %struct.CircleSelectUserData, ptr %9, i64 0, i32 5
  store float %247, ptr %248, align 8, !tbaa !251
  %249 = getelementptr inbounds %struct.CircleSelectUserData, ptr %9, i64 0, i32 6
  store i8 0, ptr %249, align 4, !tbaa !252
  %250 = load ptr, ptr %49, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %58, ptr noundef %250) #12
  call void @armature_foreachScreenBone(ptr noundef nonnull %15, ptr noundef nonnull @do_circle_select_armature__doSelectBone, ptr noundef nonnull %9, i32 noundef 7) #12
  %251 = load i8, ptr %249, align 4, !tbaa !252
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %257, label %253

253:                                              ; preds = %234
  %254 = getelementptr inbounds %struct.bArmature, ptr %236, i64 0, i32 4
  %255 = load ptr, ptr %254, align 8, !tbaa !175
  call void @ED_armature_sync_selection(ptr noundef %255) #12
  call void @ED_armature_validate_active(ptr noundef %236) #12
  %256 = load ptr, ptr %53, align 8, !tbaa !51
  call void @WM_main_add_notifier(i32 noundef 85327872, ptr noundef %256) #12
  br label %257

257:                                              ; preds = %253, %234
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #12
  br label %273

258:                                              ; preds = %56
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #12
  store ptr %15, ptr %8, align 8, !tbaa !247
  %259 = getelementptr inbounds %struct.CircleSelectUserData, ptr %8, i64 0, i32 1
  store i8 %24, ptr %259, align 8, !tbaa !249
  %260 = getelementptr inbounds %struct.CircleSelectUserData, ptr %8, i64 0, i32 2
  %261 = load i32, ptr %14, align 4, !tbaa !64
  store i32 %261, ptr %260, align 4, !tbaa !64
  %262 = load i32, ptr %27, align 4, !tbaa !64
  %263 = getelementptr inbounds %struct.CircleSelectUserData, ptr %8, i64 0, i32 2, i64 1
  store i32 %262, ptr %263, align 8, !tbaa !64
  %264 = sitofp i32 %261 to float
  %265 = getelementptr inbounds %struct.CircleSelectUserData, ptr %8, i64 0, i32 3
  store float %264, ptr %265, align 4, !tbaa !52
  %266 = sitofp i32 %262 to float
  %267 = getelementptr inbounds %struct.CircleSelectUserData, ptr %8, i64 0, i32 3, i64 1
  store float %266, ptr %267, align 8, !tbaa !52
  %268 = getelementptr inbounds %struct.CircleSelectUserData, ptr %8, i64 0, i32 4
  store float %57, ptr %268, align 4, !tbaa !250
  %269 = fmul float %57, %57
  %270 = getelementptr inbounds %struct.CircleSelectUserData, ptr %8, i64 0, i32 5
  store float %269, ptr %270, align 8, !tbaa !251
  %271 = getelementptr inbounds %struct.CircleSelectUserData, ptr %8, i64 0, i32 6
  store i8 0, ptr %271, align 4, !tbaa !252
  %272 = load ptr, ptr %49, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %58, ptr noundef %272) #12
  call void @mball_foreachScreenElem(ptr noundef nonnull %15, ptr noundef nonnull @do_circle_select_mball__doSelectElem, ptr noundef nonnull %8, i32 noundef 7) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #12
  br label %273

273:                                              ; preds = %56, %199, %201, %219, %257, %258
  %274 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 19
  %275 = load ptr, ptr %274, align 8, !tbaa !82
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %275) #12
  br label %435

276:                                              ; preds = %42
  %277 = tail call zeroext i8 @BKE_paint_select_face_test(ptr noundef %17) #12
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %324, label %279

279:                                              ; preds = %276
  %280 = sitofp i32 %20 to float
  %281 = load ptr, ptr %51, align 8, !tbaa !50
  %282 = getelementptr inbounds %struct.Object, ptr %281, i64 0, i32 19
  %283 = load ptr, ptr %282, align 8, !tbaa !82
  %284 = getelementptr inbounds %struct.Mesh, ptr %283, i64 0, i32 30
  %285 = load i32, ptr %284, align 8, !tbaa !87
  %286 = add nsw i32 %285, 1
  store i32 %286, ptr @bm_vertoffs, align 4, !tbaa !64
  %287 = load i32, ptr %14, align 4, !tbaa !64
  %288 = trunc i32 %287 to i16
  %289 = load i32, ptr %27, align 4, !tbaa !64
  %290 = trunc i32 %289 to i16
  %291 = fadd float %280, 1.000000e+00
  %292 = fptosi float %291 to i16
  %293 = call zeroext i8 @EDBM_backbuf_circle_init(ptr noundef nonnull %15, i16 noundef signext %288, i16 noundef signext %290, i16 noundef signext %292) #12
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %321, label %295

295:                                              ; preds = %279
  %296 = getelementptr inbounds %struct.Mesh, ptr %283, i64 0, i32 7
  %297 = load ptr, ptr %296, align 8, !tbaa !94
  %298 = icmp eq ptr %297, null
  br i1 %298, label %320, label %299

299:                                              ; preds = %295
  %300 = load i32, ptr %284, align 8, !tbaa !87
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %320, label %302

302:                                              ; preds = %299
  %303 = select i1 %23, i8 2, i8 0
  br label %304

304:                                              ; preds = %302, %315
  %305 = phi i32 [ %316, %315 ], [ 1, %302 ]
  %306 = phi ptr [ %317, %315 ], [ %297, %302 ]
  %307 = call zeroext i8 @EDBM_backbuf_check(i32 noundef %305) #12
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %315, label %309

309:                                              ; preds = %304
  %310 = getelementptr inbounds %struct.MPoly, ptr %306, i64 0, i32 3
  %311 = load i8, ptr %310, align 2, !tbaa !95
  %312 = and i8 %311, -3
  %313 = or disjoint i8 %312, %303
  %314 = getelementptr inbounds %struct.MPoly, ptr %306, i64 0, i32 3
  store i8 %313, ptr %314, align 2, !tbaa !95
  br label %315

315:                                              ; preds = %309, %304
  %316 = add i32 %305, 1
  %317 = getelementptr inbounds %struct.MPoly, ptr %306, i64 1
  %318 = load i32, ptr %284, align 8, !tbaa !87
  %319 = icmp ugt i32 %316, %318
  br i1 %319, label %320, label %304, !llvm.loop !97

320:                                              ; preds = %315, %295, %299
  call void @EDBM_backbuf_free() #12
  call void @paintface_flush_flags(ptr noundef %281) #12
  br label %321

321:                                              ; preds = %279, %320
  %322 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 19
  %323 = load ptr, ptr %322, align 8, !tbaa !82
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %323) #12
  br label %435

324:                                              ; preds = %276
  %325 = tail call zeroext i8 @BKE_paint_select_vert_test(ptr noundef %17) #12
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %396, label %327

327:                                              ; preds = %324
  %328 = sitofp i32 %20 to float
  %329 = load ptr, ptr %47, align 8, !tbaa !48
  %330 = getelementptr inbounds %struct.View3D, ptr %329, i64 0, i32 28
  %331 = load i16, ptr %330, align 8, !tbaa !98
  %332 = and i16 %331, 4096
  %333 = load ptr, ptr %51, align 8, !tbaa !50
  %334 = getelementptr inbounds %struct.Object, ptr %333, i64 0, i32 19
  %335 = load ptr, ptr %334, align 8, !tbaa !82
  %336 = icmp eq i16 %332, 0
  br i1 %336, label %376, label %337

337:                                              ; preds = %327
  %338 = getelementptr inbounds %struct.Mesh, ptr %335, i64 0, i32 26
  %339 = load i32, ptr %338, align 8, !tbaa !100
  %340 = add nsw i32 %339, 1
  store i32 %340, ptr @bm_vertoffs, align 4, !tbaa !64
  %341 = load i32, ptr %14, align 4, !tbaa !64
  %342 = trunc i32 %341 to i16
  %343 = load i32, ptr %27, align 4, !tbaa !64
  %344 = trunc i32 %343 to i16
  %345 = fadd float %328, 1.000000e+00
  %346 = fptosi float %345 to i16
  %347 = call zeroext i8 @EDBM_backbuf_circle_init(ptr noundef nonnull %15, i16 noundef signext %342, i16 noundef signext %344, i16 noundef signext %346) #12
  %348 = icmp eq i8 %347, 0
  br i1 %348, label %391, label %349

349:                                              ; preds = %337
  %350 = getelementptr inbounds %struct.Mesh, ptr %335, i64 0, i32 15
  %351 = load ptr, ptr %350, align 8, !tbaa !101
  %352 = icmp eq ptr %351, null
  br i1 %352, label %375, label %353

353:                                              ; preds = %349
  %354 = load i32, ptr %338, align 8, !tbaa !100
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %375, label %356

356:                                              ; preds = %353, %370
  %357 = phi i32 [ %371, %370 ], [ 1, %353 ]
  %358 = phi ptr [ %372, %370 ], [ %351, %353 ]
  %359 = call zeroext i8 @EDBM_backbuf_check(i32 noundef %357) #12
  %360 = icmp eq i8 %359, 0
  br i1 %360, label %370, label %361

361:                                              ; preds = %356
  %362 = getelementptr inbounds %struct.MVert, ptr %358, i64 0, i32 2
  %363 = load i8, ptr %362, align 2, !tbaa !102
  %364 = and i8 %363, 16
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %366, label %370

366:                                              ; preds = %361
  %367 = or i8 %363, 1
  %368 = and i8 %363, -18
  %369 = select i1 %23, i8 %367, i8 %368
  store i8 %369, ptr %362, align 2, !tbaa !102
  br label %370

370:                                              ; preds = %366, %361, %356
  %371 = add i32 %357, 1
  %372 = getelementptr inbounds %struct.MVert, ptr %358, i64 1
  %373 = load i32, ptr %338, align 8, !tbaa !100
  %374 = icmp ugt i32 %371, %373
  br i1 %374, label %375, label %356, !llvm.loop !104

375:                                              ; preds = %370, %349, %353
  call void @EDBM_backbuf_free() #12
  br label %391

376:                                              ; preds = %327
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #12
  %377 = load ptr, ptr %49, align 8, !tbaa !49
  tail call void @ED_view3d_init_mats_rv3d(ptr noundef %333, ptr noundef %377) #12
  store ptr %15, ptr %7, align 8, !tbaa !247
  %378 = getelementptr inbounds %struct.CircleSelectUserData, ptr %7, i64 0, i32 1
  store i8 %24, ptr %378, align 8, !tbaa !249
  %379 = getelementptr inbounds %struct.CircleSelectUserData, ptr %7, i64 0, i32 2
  %380 = load i32, ptr %14, align 4, !tbaa !64
  store i32 %380, ptr %379, align 4, !tbaa !64
  %381 = load i32, ptr %27, align 4, !tbaa !64
  %382 = getelementptr inbounds %struct.CircleSelectUserData, ptr %7, i64 0, i32 2, i64 1
  store i32 %381, ptr %382, align 8, !tbaa !64
  %383 = sitofp i32 %380 to float
  %384 = getelementptr inbounds %struct.CircleSelectUserData, ptr %7, i64 0, i32 3
  store float %383, ptr %384, align 4, !tbaa !52
  %385 = sitofp i32 %381 to float
  %386 = getelementptr inbounds %struct.CircleSelectUserData, ptr %7, i64 0, i32 3, i64 1
  store float %385, ptr %386, align 8, !tbaa !52
  %387 = getelementptr inbounds %struct.CircleSelectUserData, ptr %7, i64 0, i32 4
  store float %328, ptr %387, align 4, !tbaa !250
  %388 = fmul float %328, %328
  %389 = getelementptr inbounds %struct.CircleSelectUserData, ptr %7, i64 0, i32 5
  store float %388, ptr %389, align 8, !tbaa !251
  %390 = getelementptr inbounds %struct.CircleSelectUserData, ptr %7, i64 0, i32 6
  store i8 0, ptr %390, align 4, !tbaa !252
  call void @meshobject_foreachScreenVert(ptr noundef nonnull %15, ptr noundef nonnull @paint_vertsel_circle_select_doSelectVert, ptr noundef nonnull %7, i32 noundef 7) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #12
  br label %391

391:                                              ; preds = %376, %375, %337
  br i1 %23, label %393, label %392

392:                                              ; preds = %391
  call void @BKE_mesh_mselect_validate(ptr noundef %335) #12
  br label %393

393:                                              ; preds = %391, %392
  call void @paintvert_flush_flags(ptr noundef %333) #12
  %394 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 19
  %395 = load ptr, ptr %394, align 8, !tbaa !82
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %395) #12
  br label %435

396:                                              ; preds = %324
  %397 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 27
  %398 = load i32, ptr %397, align 8, !tbaa !115
  %399 = and i32 %398, 64
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %431, label %401

401:                                              ; preds = %396
  %402 = sitofp i32 %20 to float
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #12
  store ptr %15, ptr %6, align 8, !tbaa !247
  %403 = getelementptr inbounds %struct.CircleSelectUserData, ptr %6, i64 0, i32 1
  store i8 %24, ptr %403, align 8, !tbaa !249
  %404 = getelementptr inbounds %struct.CircleSelectUserData, ptr %6, i64 0, i32 2
  %405 = load i32, ptr %14, align 4, !tbaa !64
  store i32 %405, ptr %404, align 4, !tbaa !64
  %406 = load i32, ptr %27, align 4, !tbaa !64
  %407 = getelementptr inbounds %struct.CircleSelectUserData, ptr %6, i64 0, i32 2, i64 1
  store i32 %406, ptr %407, align 8, !tbaa !64
  %408 = sitofp i32 %405 to float
  %409 = getelementptr inbounds %struct.CircleSelectUserData, ptr %6, i64 0, i32 3
  store float %408, ptr %409, align 4, !tbaa !52
  %410 = sitofp i32 %406 to float
  %411 = getelementptr inbounds %struct.CircleSelectUserData, ptr %6, i64 0, i32 3, i64 1
  store float %410, ptr %411, align 8, !tbaa !52
  %412 = getelementptr inbounds %struct.CircleSelectUserData, ptr %6, i64 0, i32 4
  store float %402, ptr %412, align 4, !tbaa !250
  %413 = fmul float %402, %402
  %414 = getelementptr inbounds %struct.CircleSelectUserData, ptr %6, i64 0, i32 5
  store float %413, ptr %414, align 8, !tbaa !251
  %415 = getelementptr inbounds %struct.CircleSelectUserData, ptr %6, i64 0, i32 6
  store i8 0, ptr %415, align 4, !tbaa !252
  %416 = load ptr, ptr %51, align 8, !tbaa !50
  %417 = load ptr, ptr %49, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %416, ptr noundef %417) #12
  call void @pose_foreachScreenBone(ptr noundef nonnull %15, ptr noundef nonnull @do_circle_select_pose__doSelectBone, ptr noundef nonnull %6, i32 noundef 7) #12
  %418 = load i8, ptr %415, align 4, !tbaa !252
  %419 = icmp eq i8 %418, 0
  br i1 %419, label %430, label %420

420:                                              ; preds = %401
  %421 = load ptr, ptr %51, align 8, !tbaa !50
  %422 = getelementptr inbounds %struct.Object, ptr %421, i64 0, i32 19
  %423 = load ptr, ptr %422, align 8, !tbaa !82
  call void @WM_main_add_notifier(i32 noundef 85327872, ptr noundef %421) #12
  %424 = getelementptr inbounds %struct.bArmature, ptr %423, i64 0, i32 8
  %425 = load i32, ptr %424, align 8, !tbaa !131
  %426 = and i32 %425, 16384
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %430, label %428

428:                                              ; preds = %420
  %429 = load ptr, ptr %51, align 8, !tbaa !50
  call void @DAG_id_tag_update(ptr noundef %429, i16 noundef signext 2) #12
  br label %430

430:                                              ; preds = %401, %420, %428
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #12
  br label %435

431:                                              ; preds = %396
  %432 = zext i1 %23 to i32
  %433 = sitofp i32 %20 to float
  %434 = call i32 @PE_circle_select(ptr noundef %0, i32 noundef %432, ptr noundef nonnull %14, float noundef %433) #12
  br label %435

435:                                              ; preds = %273, %393, %430, %321, %431
  %436 = phi i32 [ %434, %431 ], [ undef, %321 ], [ undef, %430 ], [ undef, %393 ], [ undef, %273 ]
  %437 = phi i1 [ false, %431 ], [ true, %321 ], [ true, %430 ], [ true, %393 ], [ true, %273 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #12
  br i1 %437, label %504, label %505

438:                                              ; preds = %37
  %439 = and i32 %39, 2
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %505

441:                                              ; preds = %35, %438
  %442 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  %443 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %444 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #12
  %445 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #12
  %446 = tail call ptr @CTX_data_active_object(ptr noundef %0) #12
  %447 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %448 = sitofp i32 %20 to float
  %449 = fmul float %448, %448
  %450 = load i32, ptr %14, align 4, !tbaa !64
  %451 = sitofp i32 %450 to float
  %452 = load i32, ptr %27, align 4, !tbaa !64
  %453 = sitofp i32 %452 to float
  %454 = getelementptr inbounds %struct.Scene, ptr %443, i64 0, i32 5
  %455 = load ptr, ptr %454, align 8, !tbaa !116
  %456 = icmp eq ptr %455, null
  br i1 %456, label %504, label %457

457:                                              ; preds = %441
  %458 = getelementptr inbounds %struct.View3D, ptr %444, i64 0, i32 22
  %459 = getelementptr inbounds float, ptr %5, i64 1
  %460 = zext i1 %23 to i16
  br label %461

461:                                              ; preds = %457, %497
  %462 = phi ptr [ %455, %457 ], [ %499, %497 ]
  %463 = phi i8 [ 0, %457 ], [ %498, %497 ]
  %464 = getelementptr inbounds %struct.Base, ptr %462, i64 0, i32 2
  %465 = load i32, ptr %464, align 8, !tbaa !117
  %466 = load i32, ptr %458, align 8, !tbaa !119
  %467 = and i32 %466, %465
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %497, label %469

469:                                              ; preds = %461
  %470 = getelementptr inbounds %struct.Base, ptr %462, i64 0, i32 7
  %471 = load ptr, ptr %470, align 8, !tbaa !120
  %472 = getelementptr inbounds %struct.Object, ptr %471, i64 0, i32 102
  %473 = load i8, ptr %472, align 8, !tbaa !121
  %474 = and i8 %473, 3
  %475 = icmp eq i8 %474, 0
  br i1 %475, label %476, label %497

476:                                              ; preds = %469
  %477 = getelementptr inbounds %struct.Base, ptr %462, i64 0, i32 4
  %478 = load i32, ptr %477, align 8, !tbaa !125
  %479 = and i32 %478, 1
  %480 = icmp eq i32 %479, 0
  %481 = xor i1 %23, %480
  br i1 %481, label %497, label %482

482:                                              ; preds = %476
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %483 = getelementptr inbounds %struct.Object, ptr %471, i64 0, i32 47, i64 3
  %484 = call i32 @ED_view3d_project_float_global(ptr noundef %442, ptr noundef nonnull %483, ptr noundef nonnull %5, i32 noundef 7) #12
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %486, label %495

486:                                              ; preds = %482
  %487 = load float, ptr %5, align 4, !tbaa !52
  %488 = fsub float %487, %451
  %489 = load float, ptr %459, align 4, !tbaa !52
  %490 = fsub float %489, %453
  %491 = fmul float %490, %490
  %492 = call float @llvm.fmuladd.f32(float %488, float %488, float %491)
  %493 = fcmp ugt float %492, %449
  br i1 %493, label %495, label %494

494:                                              ; preds = %486
  call void @ED_base_object_select(ptr noundef nonnull %462, i16 noundef signext %460) #12
  br label %495

495:                                              ; preds = %494, %486, %482
  %496 = phi i8 [ 1, %494 ], [ %463, %486 ], [ %463, %482 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br label %497

497:                                              ; preds = %495, %476, %469, %461
  %498 = phi i8 [ %496, %495 ], [ %463, %476 ], [ %463, %469 ], [ %463, %461 ]
  %499 = load ptr, ptr %462, align 8, !tbaa !116
  %500 = icmp eq ptr %499, null
  br i1 %500, label %501, label %461, !llvm.loop !255

501:                                              ; preds = %497
  %502 = icmp eq i8 %498, 0
  br i1 %502, label %504, label %503

503:                                              ; preds = %501
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %16) #12
  br label %504

504:                                              ; preds = %441, %501, %503, %435
  br label %505

505:                                              ; preds = %438, %435, %504
  %506 = phi i32 [ 4, %504 ], [ %436, %435 ], [ 2, %438 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #12
  ret i32 %506
}

declare void @WM_gesture_circle_cancel(ptr noundef, ptr noundef) #3

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @WM_gesture_lasso_path_to_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_paint_select_face_test(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_paint_select_vert_test(ptr noundef) local_unnamed_addr #3

declare i32 @PE_lasso_select(ptr noundef, ptr noundef, i16 noundef signext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @paintface_deselect_all_visible(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BLI_lasso_boundbox(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @EDBM_backbuf_border_mask_init(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

declare void @EDBM_backbuf_free() local_unnamed_addr #3

declare void @paintface_flush_flags(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @EDBM_backbuf_check(i32 noundef) local_unnamed_addr #3

declare void @paintvert_deselect_all_visible(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @ED_view3d_init_mats_rv3d(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @meshobject_foreachScreenVert(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @do_lasso_select_meshobject__doSelectVert(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, i32 %3) #1 {
  %5 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !108
  %7 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %6, ptr noundef %2) #12
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !109
  %12 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !110
  %14 = load float, ptr %2, align 4, !tbaa !52
  %15 = fptosi float %14 to i32
  %16 = getelementptr inbounds float, ptr %2, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !52
  %18 = fptosi float %17 to i32
  %19 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %18, i32 noundef 12000) #12
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 6
  %23 = load i8, ptr %22, align 4, !tbaa !111
  %24 = icmp ne i8 %23, 0
  %25 = getelementptr inbounds %struct.MVert, ptr %1, i64 0, i32 2
  %26 = load i8, ptr %25, align 2, !tbaa !102
  %27 = and i8 %26, -2
  %28 = zext i1 %24 to i8
  %29 = or disjoint i8 %27, %28
  store i8 %29, ptr %25, align 2, !tbaa !102
  br label %30

30:                                               ; preds = %21, %9, %4
  ret void
}

declare void @BKE_mesh_mselect_validate(ptr noundef) local_unnamed_addr #3

declare void @paintvert_flush_flags(ptr noundef) local_unnamed_addr #3

declare void @BLI_rctf_rcti_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_lasso_is_point_inside(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ED_view3d_project_base(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_base_object_select(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare void @pose_foreachScreenBone(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @do_lasso_select_pose__doSelectBone(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #1 {
  %5 = load ptr, ptr %0, align 8, !tbaa !105
  %6 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !230
  %12 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 25
  %13 = load i32, ptr %12, align 8, !tbaa !256
  %14 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 15
  %15 = load i32, ptr %14, align 8, !tbaa !257
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %94, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 10
  %20 = load i32, ptr %19, align 8, !tbaa !232
  %21 = and i32 %20, 2097216
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %94

23:                                               ; preds = %18
  %24 = load float, ptr %2, align 4, !tbaa !52
  %25 = fptosi float %24 to i32
  %26 = getelementptr inbounds float, ptr %2, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !52
  %28 = fptosi float %27 to i32
  %29 = load float, ptr %3, align 4, !tbaa !52
  %30 = fptosi float %29 to i32
  %31 = getelementptr inbounds float, ptr %3, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !52
  %33 = fptosi float %32 to i32
  %34 = icmp eq i32 %25, 12000
  br i1 %34, label %48, label %35

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !107
  %38 = tail call zeroext i8 @BLI_rcti_isect_pt(ptr noundef %37, i32 noundef %25, i32 noundef %28) #12
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !109
  %43 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !110
  %45 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %42, i32 noundef %44, i32 noundef %25, i32 noundef %28, i32 noundef 2147483647) #12
  %46 = icmp ne i8 %45, 0
  %47 = zext i1 %46 to i8
  br label %48

48:                                               ; preds = %40, %35, %23
  %49 = phi i32 [ 1, %35 ], [ 0, %23 ], [ 1, %40 ]
  %50 = phi i8 [ 0, %35 ], [ 0, %23 ], [ %47, %40 ]
  %51 = icmp eq i32 %30, 12000
  br i1 %51, label %66, label %52

52:                                               ; preds = %48
  %53 = add nuw nsw i32 %49, 1
  %54 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !107
  %56 = tail call zeroext i8 @BLI_rcti_isect_pt(ptr noundef %55, i32 noundef %30, i32 noundef %33) #12
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !109
  %61 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %62 = load i32, ptr %61, align 8, !tbaa !110
  %63 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %60, i32 noundef %62, i32 noundef %30, i32 noundef %33, i32 noundef 2147483647) #12
  %64 = icmp eq i8 %63, 0
  %65 = select i1 %64, i8 %50, i8 1
  br label %66

66:                                               ; preds = %58, %52, %48
  %67 = phi i32 [ %53, %52 ], [ %49, %48 ], [ %53, %58 ]
  %68 = phi i8 [ %50, %52 ], [ %50, %48 ], [ %65, %58 ]
  %69 = icmp eq i8 %68, 1
  br i1 %69, label %79, label %70

70:                                               ; preds = %66
  %71 = icmp eq i32 %67, 2
  br i1 %71, label %72, label %90

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !109
  %75 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %76 = load i32, ptr %75, align 8, !tbaa !110
  %77 = tail call zeroext i8 @BLI_lasso_is_edge_inside(ptr noundef %74, i32 noundef %76, i32 noundef %25, i32 noundef %28, i32 noundef %30, i32 noundef %33, i32 noundef 2147483647) #12
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %72, %66
  %80 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 6
  %81 = load i8, ptr %80, align 4, !tbaa !111
  %82 = icmp ne i8 %81, 0
  %83 = load ptr, ptr %10, align 8, !tbaa !230
  %84 = getelementptr inbounds %struct.Bone, ptr %83, i64 0, i32 10
  %85 = load i32, ptr %84, align 8, !tbaa !232
  %86 = and i32 %85, -2
  %87 = zext i1 %82 to i32
  %88 = or disjoint i32 %86, %87
  store i32 %88, ptr %84, align 8, !tbaa !232
  %89 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 9
  store i8 1, ptr %89, align 1, !tbaa !114
  br label %90

90:                                               ; preds = %79, %72, %70
  %91 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 9
  %92 = load i8, ptr %91, align 1, !tbaa !114
  %93 = or i8 %92, %68
  store i8 %93, ptr %91, align 1, !tbaa !114
  br label %94

94:                                               ; preds = %4, %90, %18
  ret void
}

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare zeroext i8 @BLI_rcti_isect_pt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_lasso_is_edge_inside(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #3

declare void @EDBM_flag_disable_all(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @glLoadMatrixf(ptr noundef) local_unnamed_addr #3

declare void @mesh_foreachScreenVert(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @do_lasso_select_mesh__doSelectVert(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 %3) #1 {
  %5 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !108
  %7 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %6, ptr noundef %2) #12
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !109
  %12 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !110
  %14 = load float, ptr %2, align 4, !tbaa !52
  %15 = fptosi float %14 to i32
  %16 = getelementptr inbounds float, ptr %2, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !52
  %18 = fptosi float %17 to i32
  %19 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %18, i32 noundef 12000) #12
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %9
  %22 = load ptr, ptr %0, align 8, !tbaa !105
  %23 = getelementptr inbounds %struct.ViewContext, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !151
  %25 = load ptr, ptr %24, align 8, !tbaa !159
  %26 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 6
  %27 = load i8, ptr %26, align 4, !tbaa !111
  tail call void @BM_vert_select_set(ptr noundef %25, ptr noundef %1, i8 noundef zeroext %27) #12
  br label %28

28:                                               ; preds = %21, %9, %4
  ret void
}

declare void @mesh_foreachScreenEdge(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @do_lasso_select_mesh__doSelectEdge(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #1 {
  %6 = load i32, ptr @bm_solidoffs, align 4, !tbaa !64
  %7 = add i32 %6, %4
  %8 = tail call zeroext i8 @EDBM_backbuf_check(i32 noundef %7) #12
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %66, label %10

10:                                               ; preds = %5
  %11 = load float, ptr %2, align 4, !tbaa !52
  %12 = fptosi float %11 to i32
  %13 = getelementptr inbounds float, ptr %2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !52
  %15 = fptosi float %14 to i32
  %16 = load float, ptr %3, align 4, !tbaa !52
  %17 = fptosi float %16 to i32
  %18 = getelementptr inbounds float, ptr %3, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !52
  %20 = fptosi float %19 to i32
  %21 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !112
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !108
  %27 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %26, ptr noundef nonnull %2) #12
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %66, label %29

29:                                               ; preds = %24
  %30 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %26, ptr noundef nonnull %3) #12
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %66, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !109
  %35 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !110
  %37 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %34, i32 noundef %36, i32 noundef %12, i32 noundef %15, i32 noundef 12000) #12
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %66, label %39

39:                                               ; preds = %32
  %40 = load ptr, ptr %33, align 8, !tbaa !109
  %41 = load i32, ptr %35, align 8, !tbaa !110
  %42 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %40, i32 noundef %41, i32 noundef %17, i32 noundef %20, i32 noundef 12000) #12
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %66, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %0, align 8, !tbaa !105
  %46 = getelementptr inbounds %struct.ViewContext, ptr %45, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !151
  %48 = load ptr, ptr %47, align 8, !tbaa !159
  %49 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 6
  %50 = load i8, ptr %49, align 4, !tbaa !111
  tail call void @BM_edge_select_set(ptr noundef %48, ptr noundef %1, i8 noundef zeroext %50) #12
  %51 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 8
  store i8 1, ptr %51, align 4, !tbaa !113
  br label %66

52:                                               ; preds = %10
  %53 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !109
  %55 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %56 = load i32, ptr %55, align 8, !tbaa !110
  %57 = tail call zeroext i8 @BLI_lasso_is_edge_inside(ptr noundef %54, i32 noundef %56, i32 noundef %12, i32 noundef %15, i32 noundef %17, i32 noundef %20, i32 noundef 12000) #12
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  %60 = load ptr, ptr %0, align 8, !tbaa !105
  %61 = getelementptr inbounds %struct.ViewContext, ptr %60, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !151
  %63 = load ptr, ptr %62, align 8, !tbaa !159
  %64 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 6
  %65 = load i8, ptr %64, align 4, !tbaa !111
  tail call void @BM_edge_select_set(ptr noundef %63, ptr noundef %1, i8 noundef zeroext %65) #12
  br label %66

66:                                               ; preds = %24, %44, %39, %32, %29, %59, %52, %5
  ret void
}

declare void @mesh_foreachScreenFace(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @do_lasso_select_mesh__doSelectFace(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 %3) #1 {
  %5 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !108
  %7 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %6, ptr noundef %2) #12
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !109
  %12 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !110
  %14 = load float, ptr %2, align 4, !tbaa !52
  %15 = fptosi float %14 to i32
  %16 = getelementptr inbounds float, ptr %2, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !52
  %18 = fptosi float %17 to i32
  %19 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %18, i32 noundef 12000) #12
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %9
  %22 = load ptr, ptr %0, align 8, !tbaa !105
  %23 = getelementptr inbounds %struct.ViewContext, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !151
  %25 = load ptr, ptr %24, align 8, !tbaa !159
  %26 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 6
  %27 = load i8, ptr %26, align 4, !tbaa !111
  tail call void @BM_face_select_set(ptr noundef %25, ptr noundef %1, i8 noundef zeroext %27) #12
  br label %28

28:                                               ; preds = %21, %9, %4
  ret void
}

declare void @EDBM_selectmode_flush(ptr noundef) local_unnamed_addr #3

declare void @BM_vert_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #3

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #3

declare void @BM_edge_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BM_face_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @ED_curve_deselect_all(ptr noundef) local_unnamed_addr #3

declare void @nurbs_foreachScreenVert(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @do_lasso_select_curve__doSelect(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #1 {
  %7 = load ptr, ptr %0, align 8, !tbaa !105
  %8 = getelementptr inbounds %struct.ViewContext, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !82
  %12 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !109
  %14 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !110
  %16 = load float, ptr %5, align 4, !tbaa !52
  %17 = fptosi float %16 to i32
  %18 = getelementptr inbounds float, ptr %5, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !52
  %20 = fptosi float %19 to i32
  %21 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %20, i32 noundef 12000) #12
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %74, label %23

23:                                               ; preds = %6
  %24 = icmp eq ptr %2, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 6
  %27 = load i8, ptr %26, align 4, !tbaa !111
  %28 = icmp ne i8 %27, 0
  %29 = getelementptr inbounds %struct.BPoint, ptr %2, i64 0, i32 3
  %30 = load i16, ptr %29, align 4, !tbaa !258
  %31 = and i16 %30, -2
  %32 = zext i1 %28 to i16
  %33 = or disjoint i16 %31, %32
  %34 = getelementptr inbounds %struct.BPoint, ptr %2, i64 0, i32 3
  store i16 %33, ptr %34, align 4, !tbaa !258
  br label %74

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.Curve, ptr %11, i64 0, i32 16
  %37 = load i16, ptr %36, align 8, !tbaa !260
  %38 = and i16 %37, 1
  %39 = icmp eq i16 %38, 0
  %40 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 6
  %41 = load i8, ptr %40, align 4, !tbaa !111
  %42 = icmp ne i8 %41, 0
  br i1 %39, label %52, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  %45 = load i8, ptr %44, align 4, !tbaa !261
  %46 = and i8 %45, -2
  %47 = zext i1 %42 to i8
  %48 = or disjoint i8 %46, %47
  %49 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  store i8 %48, ptr %49, align 1, !tbaa !263
  %50 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  store i8 %48, ptr %50, align 4, !tbaa !261
  %51 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  store i8 %48, ptr %51, align 1, !tbaa !264
  br label %74

52:                                               ; preds = %35
  switch i32 %4, label %67 [
    i32 0, label %53
    i32 1, label %60
  ]

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  %55 = load i8, ptr %54, align 1, !tbaa !264
  %56 = and i8 %55, -2
  %57 = zext i1 %42 to i8
  %58 = or disjoint i8 %56, %57
  %59 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  store i8 %58, ptr %59, align 1, !tbaa !264
  br label %74

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  %62 = load i8, ptr %61, align 4, !tbaa !261
  %63 = and i8 %62, -2
  %64 = zext i1 %42 to i8
  %65 = or disjoint i8 %63, %64
  %66 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  store i8 %65, ptr %66, align 4, !tbaa !261
  br label %74

67:                                               ; preds = %52
  %68 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  %69 = load i8, ptr %68, align 1, !tbaa !263
  %70 = and i8 %69, -2
  %71 = zext i1 %42 to i8
  %72 = or disjoint i8 %70, %71
  %73 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  store i8 %72, ptr %73, align 1, !tbaa !263
  br label %74

74:                                               ; preds = %25, %53, %67, %60, %43, %6
  ret void
}

declare void @BKE_curve_nurb_vert_active_validate(ptr noundef) local_unnamed_addr #3

declare void @ED_setflagsLatt(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @lattice_foreachScreenVert(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @do_lasso_select_lattice__doSelect(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !108
  %6 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %5, ptr noundef %2) #12
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !109
  %11 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !110
  %13 = load float, ptr %2, align 4, !tbaa !52
  %14 = fptosi float %13 to i32
  %15 = getelementptr inbounds float, ptr %2, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !52
  %17 = fptosi float %16 to i32
  %18 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %17, i32 noundef 12000) #12
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 6
  %22 = load i8, ptr %21, align 4, !tbaa !111
  %23 = icmp ne i8 %22, 0
  %24 = getelementptr inbounds %struct.BPoint, ptr %1, i64 0, i32 3
  %25 = load i16, ptr %24, align 4, !tbaa !258
  %26 = and i16 %25, -2
  %27 = zext i1 %23 to i16
  %28 = or disjoint i16 %26, %27
  %29 = getelementptr inbounds %struct.BPoint, ptr %1, i64 0, i32 3
  store i16 %28, ptr %29, align 4, !tbaa !258
  br label %30

30:                                               ; preds = %20, %8, %3
  ret void
}

declare void @ED_armature_deselect_all_visible(ptr noundef) local_unnamed_addr #3

declare void @armature_foreachScreenBone(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @do_lasso_select_armature__doSelectBone(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #1 {
  %5 = load ptr, ptr %0, align 8, !tbaa !105
  %6 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  %10 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 6
  %11 = load i8, ptr %10, align 4, !tbaa !111
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 15
  %14 = load i32, ptr %13, align 8, !tbaa !257
  %15 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 10
  %16 = load i32, ptr %15, align 8, !tbaa !265
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %12, label %25, label %19

19:                                               ; preds = %4
  br i1 %18, label %114, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %22 = load i32, ptr %21, align 4, !tbaa !218
  %23 = and i32 %22, 2098176
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %114

25:                                               ; preds = %4
  br i1 %18, label %114, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %28 = load i32, ptr %27, align 4, !tbaa !218
  %29 = and i32 %28, 1024
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %114

31:                                               ; preds = %20, %26
  %32 = load float, ptr %2, align 4, !tbaa !52
  %33 = fptosi float %32 to i32
  %34 = getelementptr inbounds float, ptr %2, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !52
  %36 = fptosi float %35 to i32
  %37 = load float, ptr %3, align 4, !tbaa !52
  %38 = fptosi float %37 to i32
  %39 = getelementptr inbounds float, ptr %3, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !52
  %41 = fptosi float %40 to i32
  %42 = icmp eq i32 %33, 12000
  br i1 %42, label %63, label %43

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !107
  %46 = tail call zeroext i8 @BLI_rcti_isect_pt(ptr noundef %45, i32 noundef %33, i32 noundef %36) #12
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !109
  %51 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %52 = load i32, ptr %51, align 8, !tbaa !110
  %53 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %50, i32 noundef %52, i32 noundef %33, i32 noundef %36, i32 noundef 2147483647) #12
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %48
  %56 = load i8, ptr %10, align 4, !tbaa !111
  %57 = icmp eq i8 %56, 0
  %58 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %59 = load i32, ptr %58, align 4, !tbaa !218
  %60 = and i32 %59, -3
  %61 = select i1 %57, i32 0, i32 2
  %62 = or disjoint i32 %60, %61
  store i32 %62, ptr %58, align 4, !tbaa !218
  br label %63

63:                                               ; preds = %55, %43, %48, %31
  %64 = phi i32 [ 1, %48 ], [ 1, %43 ], [ 0, %31 ], [ 1, %55 ]
  %65 = phi i8 [ 0, %48 ], [ 0, %43 ], [ 0, %31 ], [ 1, %55 ]
  %66 = icmp eq i32 %38, 12000
  br i1 %66, label %88, label %67

67:                                               ; preds = %63
  %68 = add nuw nsw i32 %64, 1
  %69 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !107
  %71 = tail call zeroext i8 @BLI_rcti_isect_pt(ptr noundef %70, i32 noundef %38, i32 noundef %41) #12
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !109
  %76 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %77 = load i32, ptr %76, align 8, !tbaa !110
  %78 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %75, i32 noundef %77, i32 noundef %38, i32 noundef %41, i32 noundef 2147483647) #12
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %73
  %81 = load i8, ptr %10, align 4, !tbaa !111
  %82 = icmp eq i8 %81, 0
  %83 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %84 = load i32, ptr %83, align 4, !tbaa !218
  %85 = and i32 %84, -5
  %86 = select i1 %82, i32 0, i32 4
  %87 = or disjoint i32 %85, %86
  store i32 %87, ptr %83, align 4, !tbaa !218
  br label %88

88:                                               ; preds = %80, %67, %73, %63
  %89 = phi i32 [ %68, %73 ], [ %68, %67 ], [ %64, %63 ], [ %68, %80 ]
  %90 = phi i8 [ %65, %73 ], [ %65, %67 ], [ %65, %63 ], [ 1, %80 ]
  %91 = icmp eq i8 %90, 0
  %92 = icmp eq i32 %89, 2
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %94, label %110

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !109
  %97 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %98 = load i32, ptr %97, align 8, !tbaa !110
  %99 = tail call zeroext i8 @BLI_lasso_is_edge_inside(ptr noundef %96, i32 noundef %98, i32 noundef %33, i32 noundef %36, i32 noundef %38, i32 noundef %41, i32 noundef 2147483647) #12
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %94
  %102 = load i8, ptr %10, align 4, !tbaa !111
  %103 = icmp eq i8 %102, 0
  %104 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %105 = load i32, ptr %104, align 4, !tbaa !218
  %106 = and i32 %105, -8
  %107 = select i1 %103, i32 0, i32 7
  %108 = or disjoint i32 %106, %107
  store i32 %108, ptr %104, align 4, !tbaa !218
  %109 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 9
  store i8 1, ptr %109, align 1, !tbaa !114
  br label %110

110:                                              ; preds = %101, %94, %88
  %111 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 9
  %112 = load i8, ptr %111, align 1, !tbaa !114
  %113 = or i8 %112, %90
  store i8 %113, ptr %111, align 1, !tbaa !114
  br label %114

114:                                              ; preds = %25, %19, %110, %26, %20
  ret void
}

declare void @ED_armature_sync_selection(ptr noundef) local_unnamed_addr #3

declare void @ED_armature_validate_active(ptr noundef) local_unnamed_addr #3

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_mball_deselect_all(ptr noundef) local_unnamed_addr #3

declare void @mball_foreachScreenElem(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @do_lasso_select_mball__doSelectElem(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !108
  %6 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %5, ptr noundef %2) #12
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !109
  %11 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !110
  %13 = load float, ptr %2, align 4, !tbaa !52
  %14 = fptosi float %13 to i32
  %15 = getelementptr inbounds float, ptr %2, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !52
  %17 = fptosi float %16 to i32
  %18 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %17, i32 noundef 2147483647) #12
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 6
  %22 = load i8, ptr %21, align 4, !tbaa !111
  %23 = icmp ne i8 %22, 0
  %24 = getelementptr inbounds %struct.MetaElem, ptr %1, i64 0, i32 4
  %25 = load i16, ptr %24, align 2, !tbaa !215
  %26 = and i16 %25, -2
  %27 = zext i1 %23 to i16
  %28 = or disjoint i16 %26, %27
  store i16 %28, ptr %24, align 2, !tbaa !215
  %29 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 9
  store i8 1, ptr %29, align 1, !tbaa !114
  br label %30

30:                                               ; preds = %20, %8, %3
  ret void
}

declare i32 @ED_operator_region_view3d_active(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_paint_select_elem_test(ptr noundef) local_unnamed_addr #3

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CTX_data_selectable_bases(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

declare void @ED_base_object_activate(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_rcti_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare signext i16 @view3d_opengl_select(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @WM_operator_properties_border_to_rcti(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ED_sculpt_mask_box_select(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @do_paintface_box_select(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @PE_border_select(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @EDBM_backbuf_border_init(ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @do_mesh_box_select__doSelectVert(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 %3) #1 {
  %5 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !205
  %7 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %6, ptr noundef %2) #12
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !202
  %11 = getelementptr inbounds %struct.ViewContext, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !151
  %13 = load ptr, ptr %12, align 8, !tbaa !159
  %14 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 4
  %15 = load i8, ptr %14, align 8, !tbaa !206
  tail call void @BM_vert_select_set(ptr noundef %13, ptr noundef %1, i8 noundef zeroext %15) #12
  br label %16

16:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_mesh_box_select__doSelectEdge(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #1 {
  %6 = load i32, ptr @bm_solidoffs, align 4, !tbaa !64
  %7 = add i32 %6, %4
  %8 = tail call zeroext i8 @EDBM_backbuf_check(i32 noundef %7) #12
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %108, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !207
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !205
  %16 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %15, ptr noundef %2) #12
  %17 = icmp eq i8 %16, 0
  br i1 %13, label %18, label %30

18:                                               ; preds = %10
  br i1 %17, label %108, label %19

19:                                               ; preds = %18
  %20 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %15, ptr noundef %3) #12
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %108, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %0, align 8, !tbaa !202
  %24 = getelementptr inbounds %struct.ViewContext, ptr %23, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !151
  %26 = load ptr, ptr %25, align 8, !tbaa !159
  %27 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 4
  %28 = load i8, ptr %27, align 8, !tbaa !206
  tail call void @BM_edge_select_set(ptr noundef %26, ptr noundef %1, i8 noundef zeroext %28) #12
  %29 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 6
  store i8 1, ptr %29, align 8, !tbaa !208
  br label %108

30:                                               ; preds = %10
  br i1 %17, label %34, label %31

31:                                               ; preds = %30
  %32 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %15, ptr noundef %3) #12
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %101

34:                                               ; preds = %30, %31
  %35 = load float, ptr %2, align 4, !tbaa !52
  %36 = load float, ptr %15, align 4, !tbaa !266
  %37 = fcmp olt float %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load float, ptr %3, align 4, !tbaa !52
  %40 = fcmp olt float %39, %36
  br i1 %40, label %108, label %41

41:                                               ; preds = %38, %34
  %42 = getelementptr inbounds %struct.rctf, ptr %15, i64 0, i32 1
  %43 = load float, ptr %42, align 4, !tbaa !267
  %44 = fcmp ogt float %35, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load float, ptr %3, align 4, !tbaa !52
  %47 = fcmp ogt float %46, %43
  br i1 %47, label %108, label %48

48:                                               ; preds = %45, %41
  %49 = getelementptr inbounds float, ptr %2, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !52
  %51 = getelementptr inbounds %struct.rctf, ptr %15, i64 0, i32 2
  %52 = load float, ptr %51, align 4, !tbaa !268
  %53 = fcmp olt float %50, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = getelementptr inbounds float, ptr %3, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !52
  %57 = fcmp olt float %56, %52
  br i1 %57, label %108, label %58

58:                                               ; preds = %54, %48
  %59 = getelementptr inbounds %struct.rctf, ptr %15, i64 0, i32 3
  %60 = load float, ptr %59, align 4, !tbaa !269
  %61 = fcmp ogt float %50, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = getelementptr inbounds float, ptr %3, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !52
  %65 = fcmp ogt float %64, %60
  br i1 %65, label %108, label %66

66:                                               ; preds = %62, %58
  %67 = getelementptr inbounds float, ptr %3, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !52
  %69 = fsub float %50, %68
  %70 = fsub float %35, %36
  %71 = load float, ptr %3, align 4, !tbaa !52
  %72 = fsub float %71, %35
  %73 = fsub float %50, %52
  %74 = fmul float %73, %72
  %75 = tail call float @llvm.fmuladd.f32(float %69, float %70, float %74)
  %76 = fptosi float %75 to i32
  %77 = fsub float %50, %60
  %78 = fmul float %77, %72
  %79 = tail call float @llvm.fmuladd.f32(float %69, float %70, float %78)
  %80 = fptosi float %79 to i32
  %81 = fsub float %35, %43
  %82 = tail call float @llvm.fmuladd.f32(float %69, float %81, float %78)
  %83 = fptosi float %82 to i32
  %84 = tail call float @llvm.fmuladd.f32(float %69, float %81, float %74)
  %85 = fptosi float %84 to i32
  %86 = icmp slt i32 %76, 0
  %87 = icmp slt i32 %80, 0
  %88 = select i1 %86, i1 %87, i1 false
  %89 = icmp slt i32 %83, 0
  %90 = select i1 %88, i1 %89, i1 false
  %91 = icmp slt i32 %85, 0
  %92 = select i1 %90, i1 %91, i1 false
  br i1 %92, label %108, label %93

93:                                               ; preds = %66
  %94 = icmp sgt i32 %76, 0
  %95 = icmp sgt i32 %80, 0
  %96 = select i1 %94, i1 %95, i1 false
  %97 = icmp sgt i32 %83, 0
  %98 = select i1 %96, i1 %97, i1 false
  %99 = icmp sgt i32 %85, 0
  %100 = select i1 %98, i1 %99, i1 false
  br i1 %100, label %108, label %101

101:                                              ; preds = %31, %93
  %102 = load ptr, ptr %0, align 8, !tbaa !202
  %103 = getelementptr inbounds %struct.ViewContext, ptr %102, i64 0, i32 6
  %104 = load ptr, ptr %103, align 8, !tbaa !151
  %105 = load ptr, ptr %104, align 8, !tbaa !159
  %106 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 4
  %107 = load i8, ptr %106, align 8, !tbaa !206
  tail call void @BM_edge_select_set(ptr noundef %105, ptr noundef %1, i8 noundef zeroext %107) #12
  br label %108

108:                                              ; preds = %38, %45, %54, %62, %66, %18, %22, %19, %101, %93, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_mesh_box_select__doSelectFace(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 %3) #1 {
  %5 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !205
  %7 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %6, ptr noundef %2) #12
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !202
  %11 = getelementptr inbounds %struct.ViewContext, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !151
  %13 = load ptr, ptr %12, align 8, !tbaa !159
  %14 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 4
  %15 = load i8, ptr %14, align 8, !tbaa !206
  tail call void @BM_face_select_set(ptr noundef %13, ptr noundef %1, i8 noundef zeroext %15) #12
  br label %16

16:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: nounwind uwtable
define internal void @do_nurbs_box_select__doSelect(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4, ptr noundef %5) #1 {
  %7 = load ptr, ptr %0, align 8, !tbaa !202
  %8 = getelementptr inbounds %struct.ViewContext, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !82
  %12 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !205
  %14 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %13, ptr noundef %5) #12
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %67, label %16

16:                                               ; preds = %6
  %17 = icmp eq ptr %2, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 4
  %20 = load i8, ptr %19, align 8, !tbaa !206
  %21 = icmp ne i8 %20, 0
  %22 = getelementptr inbounds %struct.BPoint, ptr %2, i64 0, i32 3
  %23 = load i16, ptr %22, align 4, !tbaa !258
  %24 = and i16 %23, -2
  %25 = zext i1 %21 to i16
  %26 = or disjoint i16 %24, %25
  %27 = getelementptr inbounds %struct.BPoint, ptr %2, i64 0, i32 3
  store i16 %26, ptr %27, align 4, !tbaa !258
  br label %67

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.Curve, ptr %11, i64 0, i32 16
  %30 = load i16, ptr %29, align 8, !tbaa !260
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  %33 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 4
  %34 = load i8, ptr %33, align 8, !tbaa !206
  %35 = icmp ne i8 %34, 0
  br i1 %32, label %45, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  %38 = load i8, ptr %37, align 4, !tbaa !261
  %39 = and i8 %38, -2
  %40 = zext i1 %35 to i8
  %41 = or disjoint i8 %39, %40
  %42 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  store i8 %41, ptr %42, align 1, !tbaa !263
  %43 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  store i8 %41, ptr %43, align 4, !tbaa !261
  %44 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  store i8 %41, ptr %44, align 1, !tbaa !264
  br label %67

45:                                               ; preds = %28
  switch i32 %4, label %60 [
    i32 0, label %46
    i32 1, label %53
  ]

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  %48 = load i8, ptr %47, align 1, !tbaa !264
  %49 = and i8 %48, -2
  %50 = zext i1 %35 to i8
  %51 = or disjoint i8 %49, %50
  %52 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  store i8 %51, ptr %52, align 1, !tbaa !264
  br label %67

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  %55 = load i8, ptr %54, align 4, !tbaa !261
  %56 = and i8 %55, -2
  %57 = zext i1 %35 to i8
  %58 = or disjoint i8 %56, %57
  %59 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  store i8 %58, ptr %59, align 4, !tbaa !261
  br label %67

60:                                               ; preds = %45
  %61 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  %62 = load i8, ptr %61, align 1, !tbaa !263
  %63 = and i8 %62, -2
  %64 = zext i1 %35 to i8
  %65 = or disjoint i8 %63, %64
  %66 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  store i8 %65, ptr %66, align 1, !tbaa !263
  br label %67

67:                                               ; preds = %18, %46, %60, %53, %36, %6
  ret void
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @do_lattice_box_select__doSelect(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !205
  %6 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %5, ptr noundef %2) #12
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 4
  %10 = load i8, ptr %9, align 8, !tbaa !206
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds %struct.BPoint, ptr %1, i64 0, i32 3
  %13 = load i16, ptr %12, align 4, !tbaa !258
  %14 = and i16 %13, -2
  %15 = zext i1 %11 to i16
  %16 = or disjoint i16 %14, %15
  %17 = getelementptr inbounds %struct.BPoint, ptr %1, i64 0, i32 3
  store i16 %16, ptr %17, align 4, !tbaa !258
  br label %18

18:                                               ; preds = %8, %3
  ret void
}

declare void @view3d_validate_backbuf(ptr noundef) local_unnamed_addr #3

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare void @glReadPixels(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WM_framebuffer_to_index(i32 noundef) local_unnamed_addr #3

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @do_paintvert_box_select__doSelectVert(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, i32 %3) #1 {
  %5 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !205
  %7 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %6, ptr noundef %2) #12
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 4
  %11 = load i8, ptr %10, align 8, !tbaa !206
  %12 = icmp ne i8 %11, 0
  %13 = getelementptr inbounds %struct.MVert, ptr %1, i64 0, i32 2
  %14 = load i8, ptr %13, align 2, !tbaa !102
  %15 = and i8 %14, -2
  %16 = zext i1 %12 to i8
  %17 = or disjoint i8 %15, %16
  store i8 %17, ptr %13, align 2, !tbaa !102
  br label %18

18:                                               ; preds = %9, %4
  ret void
}

declare i32 @CTX_data_visible_pose_bones(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_indexed_bone(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @RNA_int_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_object_pose_armature_get(ptr noundef) local_unnamed_addr #3

declare void @RNA_int_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @EDBM_select_pick(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @mouse_armature(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @mouse_lattice(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @mouse_nurb(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @mouse_mball(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @mouse_font(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @PE_mouse_particles(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @paintface_mouse_select(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @ED_mesh_pick_vert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BKE_mesh_mselect_active_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @object_mouse_select_menu(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i16 noundef signext %5) unnamed_addr #1 {
  %7 = alloca ptr, align 8
  %8 = alloca %struct.ListBase, align 8
  %9 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  store ptr null, ptr %7, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #12
  %10 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %8) #12
  %11 = icmp eq ptr %2, null
  %12 = icmp sgt i32 %3, 0
  %13 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 3
  %14 = getelementptr inbounds i32, ptr %4, i64 1
  %15 = zext nneg i32 %3 to i64
  br label %16

16:                                               ; preds = %64, %6
  %17 = phi ptr [ %8, %6 ], [ %19, %64 ]
  %18 = phi i16 [ 0, %6 ], [ %66, %64 ]
  %19 = load ptr, ptr %17, align 8, !tbaa !116
  %20 = icmp eq ptr %19, null
  br i1 %20, label %68, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.CollectionPointerLink, ptr %19, i64 0, i32 2, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !177
  br i1 %11, label %39, label %24

24:                                               ; preds = %21
  br i1 %12, label %25, label %57

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.Base, ptr %23, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !196
  br label %28

28:                                               ; preds = %25, %28
  %29 = phi i64 [ 0, %25 ], [ %37, %28 ]
  %30 = phi i8 [ 0, %25 ], [ %36, %28 ]
  %31 = shl nsw i64 %29, 2
  %32 = or disjoint i64 %31, 3
  %33 = getelementptr inbounds i32, ptr %2, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !64
  %35 = icmp eq i32 %27, %34
  %36 = select i1 %35, i8 1, i8 %30
  %37 = add nuw nsw i64 %29, 1
  %38 = icmp eq i64 %37, %15
  br i1 %38, label %57, label %28, !llvm.loop !270

39:                                               ; preds = %21
  %40 = load ptr, ptr %13, align 8, !tbaa !45
  %41 = call i32 @ED_view3d_project_base(ptr noundef %40, ptr noundef %23) #12
  %42 = getelementptr inbounds %struct.Base, ptr %23, i64 0, i32 5
  %43 = load i16, ptr %42, align 4, !tbaa !123
  %44 = sext i16 %43 to i32
  %45 = load i32, ptr %4, align 4, !tbaa !64
  %46 = sub nsw i32 %44, %45
  %47 = call i32 @llvm.abs.i32(i32 %46, i1 true)
  %48 = getelementptr inbounds %struct.Base, ptr %23, i64 0, i32 6
  %49 = load i16, ptr %48, align 2, !tbaa !124
  %50 = sext i16 %49 to i32
  %51 = load i32, ptr %14, align 4, !tbaa !64
  %52 = sub nsw i32 %50, %51
  %53 = call i32 @llvm.abs.i32(i32 %52, i1 true)
  %54 = add nuw nsw i32 %53, %47
  %55 = icmp ult i32 %54, 15
  %56 = zext i1 %55 to i8
  br label %57

57:                                               ; preds = %28, %24, %39
  %58 = phi i8 [ %56, %39 ], [ 0, %24 ], [ %36, %28 ]
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = add i16 %18, 1
  call void @BLI_linklist_prepend(ptr noundef nonnull %7, ptr noundef %23) #12
  %62 = icmp eq i16 %61, 22
  %63 = select i1 %62, i32 2, i32 0
  br label %64

64:                                               ; preds = %60, %57
  %65 = phi i32 [ 0, %57 ], [ %63, %60 ]
  %66 = phi i16 [ %18, %57 ], [ %61, %60 ]
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %16, label %68, !llvm.loop !271

68:                                               ; preds = %64, %16
  %69 = phi i16 [ %66, %64 ], [ %18, %16 ]
  call void @BLI_freelistN(ptr noundef nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #12
  switch i16 %69, label %74 [
    i16 0, label %100
    i16 1, label %70
  ]

70:                                               ; preds = %68
  %71 = load ptr, ptr %7, align 8, !tbaa !116
  %72 = getelementptr inbounds %struct.LinkNode, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !272
  br label %97

74:                                               ; preds = %68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1496) @object_mouse_select_menu_data, i8 0, i64 1496, i1 false)
  %75 = load ptr, ptr %7, align 8, !tbaa !116
  %76 = icmp eq ptr %75, null
  br i1 %76, label %92, label %77

77:                                               ; preds = %74, %77
  %78 = phi i64 [ %89, %77 ], [ 0, %74 ]
  %79 = phi ptr [ %90, %77 ], [ %75, %74 ]
  %80 = getelementptr inbounds %struct.LinkNode, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !272
  %82 = getelementptr inbounds %struct.Base, ptr %81, i64 0, i32 7
  %83 = load ptr, ptr %82, align 8, !tbaa !120
  %84 = getelementptr inbounds %struct.ID, ptr %83, i64 0, i32 4, i64 2
  %85 = getelementptr inbounds [22 x %struct.SelMenuItemF], ptr @object_mouse_select_menu_data, i64 0, i64 %78
  %86 = call ptr @BLI_strncpy(ptr noundef nonnull %85, ptr noundef nonnull %84, i64 noundef 64) #12
  %87 = call i32 @uiIconFromID(ptr noundef %83) #12
  %88 = getelementptr inbounds [22 x %struct.SelMenuItemF], ptr @object_mouse_select_menu_data, i64 0, i64 %78, i32 1
  store i32 %87, ptr %88, align 4, !tbaa !187
  %89 = add nuw i64 %78, 1
  %90 = load ptr, ptr %79, align 8, !tbaa !116
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %77, !llvm.loop !274

92:                                               ; preds = %77, %74
  %93 = call ptr @WM_operatortype_find(ptr noundef nonnull @.str.14, i8 noundef zeroext 0) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #12
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %9, ptr noundef %93) #12
  %94 = zext nneg i16 %5 to i32
  call void @RNA_boolean_set(ptr noundef nonnull %9, ptr noundef nonnull @.str.17, i32 noundef %94) #12
  %95 = call i32 @WM_operator_name_call_ptr(ptr noundef %0, ptr noundef %93, i16 noundef signext 0, ptr noundef nonnull %9) #12
  call void @WM_operator_properties_free(ptr noundef nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #12
  %96 = load ptr, ptr %7, align 8, !tbaa !116
  br label %97

97:                                               ; preds = %70, %92
  %98 = phi ptr [ %96, %92 ], [ %71, %70 ]
  %99 = phi ptr [ null, %92 ], [ %73, %70 ]
  call void @BLI_linklist_free(ptr noundef %98, ptr noundef null) #12
  br label %100

100:                                              ; preds = %97, %68
  %101 = phi ptr [ null, %68 ], [ %99, %97 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  ret ptr %101
}

declare i32 @ED_view3d_project_float_global(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @BKE_object_movieclip_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @BKE_tracking_track_get_indexed(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_tracking_track_deselect(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BKE_tracking_track_select(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @ED_do_pose_selectbuffer(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @BLI_linklist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_linklist_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @uiIconFromID(ptr noundef) local_unnamed_addr #3

declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @WM_operator_properties_create_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @WM_operator_name_call_ptr(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

declare void @WM_operator_properties_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

declare ptr @BKE_tracking_object_get_tracks(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @PE_circle_select(ptr noundef, i32 noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare zeroext i8 @EDBM_backbuf_circle_init(ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @mesh_circle_doSelectVert(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 %3) #1 {
  %5 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3
  %6 = load float, ptr %2, align 4, !tbaa !52
  %7 = load float, ptr %5, align 4, !tbaa !52
  %8 = fsub float %6, %7
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !52
  %11 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !52
  %13 = fsub float %10, %12
  %14 = fmul float %13, %13
  %15 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %14)
  %16 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 5
  %17 = load float, ptr %16, align 8, !tbaa !251
  %18 = fcmp ugt float %15, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %4
  %20 = load ptr, ptr %0, align 8, !tbaa !247
  %21 = getelementptr inbounds %struct.ViewContext, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !151
  %23 = load ptr, ptr %22, align 8, !tbaa !159
  %24 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 1
  %25 = load i8, ptr %24, align 8, !tbaa !249
  tail call void @BM_vert_select_set(ptr noundef %23, ptr noundef %1, i8 noundef zeroext %25) #12
  br label %26

26:                                               ; preds = %19, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mesh_circle_doSelectEdge(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 %4) #1 {
  %6 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 4
  %8 = load float, ptr %7, align 4, !tbaa !250
  %9 = fmul float %8, %8
  %10 = tail call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3) #12
  %11 = fcmp uge float %10, %9
  br i1 %11, label %19, label %12

12:                                               ; preds = %5
  %13 = load ptr, ptr %0, align 8, !tbaa !247
  %14 = getelementptr inbounds %struct.ViewContext, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !151
  %16 = load ptr, ptr %15, align 8, !tbaa !159
  %17 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !249
  tail call void @BM_edge_select_set(ptr noundef %16, ptr noundef %1, i8 noundef zeroext %18) #12
  br label %19

19:                                               ; preds = %12, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mesh_circle_doSelectFace(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 %3) #1 {
  %5 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3
  %6 = load float, ptr %2, align 4, !tbaa !52
  %7 = load float, ptr %5, align 4, !tbaa !52
  %8 = fsub float %6, %7
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !52
  %11 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !52
  %13 = fsub float %10, %12
  %14 = fmul float %13, %13
  %15 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %14)
  %16 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 5
  %17 = load float, ptr %16, align 8, !tbaa !251
  %18 = fcmp ugt float %15, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %4
  %20 = load ptr, ptr %0, align 8, !tbaa !247
  %21 = getelementptr inbounds %struct.ViewContext, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !151
  %23 = load ptr, ptr %22, align 8, !tbaa !159
  %24 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 1
  %25 = load i8, ptr %24, align 8, !tbaa !249
  tail call void @BM_face_select_set(ptr noundef %23, ptr noundef %1, i8 noundef zeroext %25) #12
  br label %26

26:                                               ; preds = %19, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @nurbscurve_circle_doSelect(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #9 {
  %7 = load ptr, ptr %0, align 8, !tbaa !247
  %8 = getelementptr inbounds %struct.ViewContext, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !82
  %12 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3
  %13 = load float, ptr %5, align 4, !tbaa !52
  %14 = load float, ptr %12, align 4, !tbaa !52
  %15 = fsub float %13, %14
  %16 = getelementptr inbounds float, ptr %5, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !52
  %18 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !52
  %20 = fsub float %17, %19
  %21 = fmul float %20, %20
  %22 = tail call float @llvm.fmuladd.f32(float %15, float %15, float %21)
  %23 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 5
  %24 = load float, ptr %23, align 8, !tbaa !251
  %25 = fcmp ugt float %22, %24
  br i1 %25, label %77, label %26

26:                                               ; preds = %6
  %27 = icmp eq ptr %2, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 1
  %30 = load i8, ptr %29, align 8, !tbaa !249
  %31 = icmp ne i8 %30, 0
  %32 = getelementptr inbounds %struct.BPoint, ptr %2, i64 0, i32 3
  %33 = load i16, ptr %32, align 4, !tbaa !258
  %34 = and i16 %33, -2
  %35 = zext i1 %31 to i16
  %36 = or disjoint i16 %34, %35
  %37 = getelementptr inbounds %struct.BPoint, ptr %2, i64 0, i32 3
  store i16 %36, ptr %37, align 4, !tbaa !258
  br label %77

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.Curve, ptr %11, i64 0, i32 16
  %40 = load i16, ptr %39, align 8, !tbaa !260
  %41 = and i16 %40, 1
  %42 = icmp eq i16 %41, 0
  %43 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !249
  %45 = icmp ne i8 %44, 0
  br i1 %42, label %55, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  %48 = load i8, ptr %47, align 4, !tbaa !261
  %49 = and i8 %48, -2
  %50 = zext i1 %45 to i8
  %51 = or disjoint i8 %49, %50
  %52 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  store i8 %51, ptr %52, align 1, !tbaa !263
  %53 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  store i8 %51, ptr %53, align 4, !tbaa !261
  %54 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  store i8 %51, ptr %54, align 1, !tbaa !264
  br label %77

55:                                               ; preds = %38
  switch i32 %4, label %70 [
    i32 0, label %56
    i32 1, label %63
  ]

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  %58 = load i8, ptr %57, align 1, !tbaa !264
  %59 = and i8 %58, -2
  %60 = zext i1 %45 to i8
  %61 = or disjoint i8 %59, %60
  %62 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  store i8 %61, ptr %62, align 1, !tbaa !264
  br label %77

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  %65 = load i8, ptr %64, align 4, !tbaa !261
  %66 = and i8 %65, -2
  %67 = zext i1 %45 to i8
  %68 = or disjoint i8 %66, %67
  %69 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  store i8 %68, ptr %69, align 4, !tbaa !261
  br label %77

70:                                               ; preds = %55
  %71 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  %72 = load i8, ptr %71, align 1, !tbaa !263
  %73 = and i8 %72, -2
  %74 = zext i1 %45 to i8
  %75 = or disjoint i8 %73, %74
  %76 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  store i8 %75, ptr %76, align 1, !tbaa !263
  br label %77

77:                                               ; preds = %28, %56, %70, %63, %46, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @latticecurve_circle_doSelect(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #10 {
  %4 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3
  %5 = load float, ptr %2, align 4, !tbaa !52
  %6 = load float, ptr %4, align 4, !tbaa !52
  %7 = fsub float %5, %6
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !52
  %10 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !52
  %12 = fsub float %9, %11
  %13 = fmul float %12, %12
  %14 = tail call float @llvm.fmuladd.f32(float %7, float %7, float %13)
  %15 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 5
  %16 = load float, ptr %15, align 8, !tbaa !251
  %17 = fcmp ugt float %14, %16
  br i1 %17, label %28, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 1
  %20 = load i8, ptr %19, align 8, !tbaa !249
  %21 = icmp ne i8 %20, 0
  %22 = getelementptr inbounds %struct.BPoint, ptr %1, i64 0, i32 3
  %23 = load i16, ptr %22, align 4, !tbaa !258
  %24 = and i16 %23, -2
  %25 = zext i1 %21 to i16
  %26 = or disjoint i16 %24, %25
  %27 = getelementptr inbounds %struct.BPoint, ptr %1, i64 0, i32 3
  store i16 %26, ptr %27, align 4, !tbaa !258
  br label %28

28:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_circle_select_armature__doSelectBone(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = load ptr, ptr %0, align 8, !tbaa !247
  %6 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  %10 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !249
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 15
  %14 = load i32, ptr %13, align 8, !tbaa !257
  %15 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 10
  %16 = load i32, ptr %15, align 8, !tbaa !265
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %12, label %25, label %19

19:                                               ; preds = %4
  br i1 %18, label %105, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %22 = load i32, ptr %21, align 4, !tbaa !218
  %23 = and i32 %22, 2098176
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %105

25:                                               ; preds = %4
  br i1 %18, label %105, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %28 = load i32, ptr %27, align 4, !tbaa !218
  %29 = and i32 %28, 1024
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %105

31:                                               ; preds = %20, %26
  %32 = load float, ptr %2, align 4, !tbaa !52
  %33 = fcmp une float %32, 1.200000e+04
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3
  %36 = load float, ptr %35, align 4, !tbaa !52
  %37 = fsub float %32, %36
  %38 = getelementptr inbounds float, ptr %2, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !52
  %40 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !52
  %42 = fsub float %39, %41
  %43 = fmul float %42, %42
  %44 = tail call float @llvm.fmuladd.f32(float %37, float %37, float %43)
  %45 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 5
  %46 = load float, ptr %45, align 8, !tbaa !251
  %47 = fcmp ole float %44, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %50 = load i32, ptr %49, align 4, !tbaa !218
  %51 = and i32 %50, -3
  %52 = select i1 %12, i32 0, i32 2
  %53 = or disjoint i32 %51, %52
  store i32 %53, ptr %49, align 4, !tbaa !218
  br label %54

54:                                               ; preds = %48, %34
  %55 = zext i1 %47 to i8
  br label %56

56:                                               ; preds = %54, %31
  %57 = phi i8 [ 0, %31 ], [ %55, %54 ]
  %58 = load float, ptr %3, align 4, !tbaa !52
  %59 = fcmp une float %58, 1.200000e+04
  br i1 %59, label %60, label %80

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3
  %62 = load float, ptr %61, align 4, !tbaa !52
  %63 = fsub float %58, %62
  %64 = getelementptr inbounds float, ptr %3, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !52
  %66 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !52
  %68 = fsub float %65, %67
  %69 = fmul float %68, %68
  %70 = tail call float @llvm.fmuladd.f32(float %63, float %63, float %69)
  %71 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 5
  %72 = load float, ptr %71, align 8, !tbaa !251
  %73 = fcmp ugt float %70, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %60
  %75 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %76 = load i32, ptr %75, align 4, !tbaa !218
  %77 = and i32 %76, -5
  %78 = select i1 %12, i32 0, i32 4
  %79 = or disjoint i32 %77, %78
  store i32 %79, ptr %75, align 4, !tbaa !218
  br label %80

80:                                               ; preds = %74, %60, %56
  %81 = phi i8 [ %57, %56 ], [ %57, %60 ], [ 1, %74 ]
  %82 = phi i1 [ false, %56 ], [ %33, %60 ], [ %33, %74 ]
  %83 = icmp eq i8 %81, 0
  %84 = and i1 %83, %82
  br i1 %84, label %85, label %101

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3
  %87 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 4
  %88 = load float, ptr %87, align 4, !tbaa !250
  %89 = fmul float %88, %88
  %90 = tail call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %86, ptr noundef nonnull %2, ptr noundef nonnull %3) #12
  %91 = fcmp uge float %90, %89
  br i1 %91, label %101, label %92

92:                                               ; preds = %85
  %93 = load i8, ptr %10, align 8, !tbaa !249
  %94 = icmp eq i8 %93, 0
  %95 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %96 = load i32, ptr %95, align 4, !tbaa !218
  %97 = and i32 %96, -8
  %98 = select i1 %94, i32 0, i32 7
  %99 = or disjoint i32 %97, %98
  store i32 %99, ptr %95, align 4, !tbaa !218
  %100 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 6
  store i8 1, ptr %100, align 4, !tbaa !252
  br label %101

101:                                              ; preds = %92, %85, %80
  %102 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 6
  %103 = load i8, ptr %102, align 4, !tbaa !252
  %104 = or i8 %103, %81
  store i8 %104, ptr %102, align 4, !tbaa !252
  br label %105

105:                                              ; preds = %25, %19, %101, %26, %20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @do_circle_select_mball__doSelectElem(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #10 {
  %4 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3
  %5 = load float, ptr %2, align 4, !tbaa !52
  %6 = load float, ptr %4, align 4, !tbaa !52
  %7 = fsub float %5, %6
  %8 = getelementptr inbounds float, ptr %2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !52
  %10 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !52
  %12 = fsub float %9, %11
  %13 = fmul float %12, %12
  %14 = tail call float @llvm.fmuladd.f32(float %7, float %7, float %13)
  %15 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 5
  %16 = load float, ptr %15, align 8, !tbaa !251
  %17 = fcmp ugt float %14, %16
  br i1 %17, label %28, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 1
  %20 = load i8, ptr %19, align 8, !tbaa !249
  %21 = icmp ne i8 %20, 0
  %22 = getelementptr inbounds %struct.MetaElem, ptr %1, i64 0, i32 4
  %23 = load i16, ptr %22, align 2, !tbaa !215
  %24 = and i16 %23, -2
  %25 = zext i1 %21 to i16
  %26 = or disjoint i16 %24, %25
  store i16 %26, ptr %22, align 2, !tbaa !215
  %27 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 6
  store i8 1, ptr %27, align 4, !tbaa !252
  br label %28

28:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @paint_vertsel_circle_select_doSelectVert(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 %3) #10 {
  %5 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3
  %6 = load float, ptr %2, align 4, !tbaa !52
  %7 = load float, ptr %5, align 4, !tbaa !52
  %8 = fsub float %6, %7
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !52
  %11 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !52
  %13 = fsub float %10, %12
  %14 = fmul float %13, %13
  %15 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %14)
  %16 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 5
  %17 = load float, ptr %16, align 8, !tbaa !251
  %18 = fcmp ugt float %15, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 1
  %21 = load i8, ptr %20, align 8, !tbaa !249
  %22 = icmp ne i8 %21, 0
  %23 = getelementptr inbounds %struct.MVert, ptr %1, i64 0, i32 2
  %24 = load i8, ptr %23, align 2, !tbaa !102
  %25 = and i8 %24, -2
  %26 = zext i1 %22 to i8
  %27 = or disjoint i8 %25, %26
  store i8 %27, ptr %23, align 2, !tbaa !102
  br label %28

28:                                               ; preds = %19, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_circle_select_pose__doSelectBone(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = load ptr, ptr %0, align 8, !tbaa !247
  %6 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !230
  %12 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 25
  %13 = load i32, ptr %12, align 8, !tbaa !256
  %14 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 15
  %15 = load i32, ptr %14, align 8, !tbaa !257
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %102, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 10
  %20 = load i32, ptr %19, align 8, !tbaa !232
  %21 = and i32 %20, 2097216
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %102

23:                                               ; preds = %18
  %24 = load float, ptr %2, align 4, !tbaa !52
  %25 = fcmp une float %24, 1.200000e+04
  br i1 %25, label %26, label %49

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3
  %28 = load float, ptr %27, align 4, !tbaa !52
  %29 = fsub float %24, %28
  %30 = getelementptr inbounds float, ptr %2, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !52
  %32 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !52
  %34 = fsub float %31, %33
  %35 = fmul float %34, %34
  %36 = tail call float @llvm.fmuladd.f32(float %29, float %29, float %35)
  %37 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 5
  %38 = load float, ptr %37, align 8, !tbaa !251
  %39 = fcmp ole float %36, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 1
  %42 = load i8, ptr %41, align 8, !tbaa !249
  %43 = icmp eq i8 %42, 0
  %44 = or i32 %20, 1
  %45 = and i32 %20, -2097218
  %46 = select i1 %43, i32 %45, i32 %44
  store i32 %46, ptr %19, align 8, !tbaa !232
  br label %47

47:                                               ; preds = %40, %26
  %48 = zext i1 %39 to i8
  br label %49

49:                                               ; preds = %47, %23
  %50 = phi i8 [ 0, %23 ], [ %48, %47 ]
  %51 = load float, ptr %3, align 4, !tbaa !52
  %52 = fcmp une float %51, 1.200000e+04
  br i1 %52, label %53, label %75

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3
  %55 = load float, ptr %54, align 4, !tbaa !52
  %56 = fsub float %51, %55
  %57 = getelementptr inbounds float, ptr %3, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !52
  %59 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !52
  %61 = fsub float %58, %60
  %62 = fmul float %61, %61
  %63 = tail call float @llvm.fmuladd.f32(float %56, float %56, float %62)
  %64 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 5
  %65 = load float, ptr %64, align 8, !tbaa !251
  %66 = fcmp ugt float %63, %65
  br i1 %66, label %75, label %67

67:                                               ; preds = %53
  %68 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 1
  %69 = load i8, ptr %68, align 8, !tbaa !249
  %70 = icmp ne i8 %69, 0
  %71 = load i32, ptr %19, align 8, !tbaa !232
  %72 = and i32 %71, -2
  %73 = zext i1 %70 to i32
  %74 = or disjoint i32 %72, %73
  store i32 %74, ptr %19, align 8, !tbaa !232
  br label %75

75:                                               ; preds = %67, %53, %49
  %76 = phi i8 [ %50, %49 ], [ %50, %53 ], [ 1, %67 ]
  %77 = phi i1 [ false, %49 ], [ %25, %53 ], [ %25, %67 ]
  %78 = icmp eq i8 %76, 0
  %79 = and i1 %78, %77
  br i1 %79, label %80, label %98

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3
  %82 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 4
  %83 = load float, ptr %82, align 4, !tbaa !250
  %84 = fmul float %83, %83
  %85 = tail call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %81, ptr noundef nonnull %2, ptr noundef nonnull %3) #12
  %86 = fcmp uge float %85, %84
  br i1 %86, label %98, label %87

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 1
  %89 = load i8, ptr %88, align 8, !tbaa !249
  %90 = icmp ne i8 %89, 0
  %91 = load ptr, ptr %10, align 8, !tbaa !230
  %92 = getelementptr inbounds %struct.Bone, ptr %91, i64 0, i32 10
  %93 = load i32, ptr %92, align 8, !tbaa !232
  %94 = and i32 %93, -2
  %95 = zext i1 %90 to i32
  %96 = or disjoint i32 %94, %95
  store i32 %96, ptr %92, align 8, !tbaa !232
  %97 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 6
  store i8 1, ptr %97, align 4, !tbaa !252
  br label %98

98:                                               ; preds = %87, %80, %75
  %99 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 6
  %100 = load i8, ptr %99, align 4, !tbaa !252
  %101 = or i8 %100, %76
  store i8 %101, ptr %99, align 4, !tbaa !252
  br label %102

102:                                              ; preds = %4, %98, %18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !42, i64 10908}
!35 = !{!"UserDef", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !36, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !36, i64 8484, !36, i64 8488, !36, i64 8492, !39, i64 8496, !39, i64 8498, !36, i64 8500, !36, i64 8504, !36, i64 8508, !36, i64 8512, !36, i64 8516, !36, i64 8520, !36, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !40, i64 8536, !40, i64 8552, !40, i64 8568, !40, i64 8584, !40, i64 8600, !40, i64 8616, !40, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !36, i64 8912, !36, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !42, i64 8956, !42, i64 8960, !36, i64 8964, !39, i64 8968, !39, i64 8970, !42, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !43, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !36, i64 10896, !36, i64 10900, !42, i64 10904, !42, i64 10908, !36, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !44, i64 10928}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"ListBase", !41, i64 0, !41, i64 8}
!41 = !{!"any pointer", !37, i64 0}
!42 = !{!"float", !37, i64 0}
!43 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!44 = !{!"WalkNavigation", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !39, i64 24, !37, i64 26}
!45 = !{!46, !41, i64 24}
!46 = !{!"ViewContext", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !37, i64 56}
!47 = !{!46, !41, i64 0}
!48 = !{!46, !41, i64 32}
!49 = !{!46, !41, i64 40}
!50 = !{!46, !41, i64 8}
!51 = !{!46, !41, i64 16}
!52 = !{!42, !42, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"double", !37, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !56, !57}
!59 = !{!60, !36, i64 176}
!60 = !{!"ARegion", !41, i64 0, !41, i64 8, !61, i64 16, !63, i64 176, !63, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !42, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !41, i64 240, !40, i64 248, !40, i64 264, !40, i64 280, !40, i64 296, !40, i64 312, !40, i64 328, !40, i64 344, !41, i64 360, !41, i64 368, !41, i64 376}
!61 = !{!"View2D", !62, i64 0, !62, i64 16, !63, i64 32, !63, i64 48, !63, i64 64, !37, i64 80, !37, i64 88, !42, i64 96, !42, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !41, i64 128, !36, i64 136, !36, i64 140, !41, i64 144, !41, i64 152}
!62 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!63 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!64 = !{!36, !36, i64 0}
!65 = !{!60, !36, i64 184}
!66 = !{!60, !39, i64 208}
!67 = !{!60, !39, i64 210}
!68 = !{!69, !41, i64 0}
!69 = !{!"wmOperatorType", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !40, i64 112, !41, i64 128, !41, i64 136, !41, i64 144, !70, i64 152, !39, i64 184}
!70 = !{!"ExtensionRNA", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24}
!71 = !{!69, !41, i64 24}
!72 = !{!69, !41, i64 8}
!73 = !{!69, !41, i64 48}
!74 = !{!69, !41, i64 64}
!75 = !{!69, !41, i64 32}
!76 = !{!69, !41, i64 72}
!77 = !{!69, !41, i64 56}
!78 = !{!69, !39, i64 184}
!79 = !{!69, !41, i64 88}
!80 = !{!81, !41, i64 112}
!81 = !{!"wmOperator", !41, i64 0, !41, i64 8, !37, i64 16, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !40, i64 128, !41, i64 144, !41, i64 152, !39, i64 160, !37, i64 162}
!82 = !{!83, !41, i64 296}
!83 = !{!"Object", !84, i64 0, !41, i64 120, !41, i64 128, !39, i64 136, !39, i64 138, !36, i64 140, !36, i64 144, !36, i64 148, !37, i64 152, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288, !41, i64 296, !41, i64 304, !85, i64 312, !41, i64 360, !40, i64 368, !40, i64 384, !40, i64 400, !40, i64 416, !36, i64 432, !36, i64 436, !41, i64 440, !41, i64 448, !36, i64 456, !36, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !42, i64 616, !42, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !36, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !36, i64 968, !36, i64 972, !36, i64 976, !36, i64 980, !36, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !42, i64 1048, !42, i64 1052, !40, i64 1056, !40, i64 1072, !40, i64 1088, !40, i64 1104, !42, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !36, i64 1144, !36, i64 1148, !41, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !40, i64 1176, !40, i64 1192, !40, i64 1208, !40, i64 1224, !41, i64 1240, !41, i64 1248, !41, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !42, i64 1268, !41, i64 1272, !41, i64 1280, !41, i64 1288, !41, i64 1296, !86, i64 1304, !86, i64 1312, !36, i64 1320, !36, i64 1324, !40, i64 1328, !40, i64 1344, !41, i64 1360, !41, i64 1368, !41, i64 1376, !37, i64 1384, !41, i64 1392, !40, i64 1400, !41, i64 1416}
!84 = !{!"ID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !39, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !41, i64 112}
!85 = !{!"bAnimVizSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44}
!86 = !{!"long", !37, i64 0}
!87 = !{!88, !36, i64 1296}
!88 = !{!"Mesh", !84, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !89, i64 280, !89, i64 480, !89, i64 680, !89, i64 880, !89, i64 1080, !36, i64 1280, !36, i64 1284, !36, i64 1288, !36, i64 1292, !36, i64 1296, !36, i64 1300, !36, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !36, i64 1344, !39, i64 1348, !39, i64 1350, !42, i64 1352, !36, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !39, i64 1366, !41, i64 1368}
!89 = !{!"CustomData", !41, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !41, i64 184, !41, i64 192}
!90 = !{!63, !36, i64 0}
!91 = !{!63, !36, i64 8}
!92 = !{!63, !36, i64 4}
!93 = !{!63, !36, i64 12}
!94 = !{!88, !41, i64 168}
!95 = !{!96, !37, i64 10}
!96 = !{!"MPoly", !36, i64 0, !36, i64 4, !39, i64 8, !37, i64 10, !37, i64 11}
!97 = distinct !{!97, !56, !57}
!98 = !{!99, !39, i64 240}
!99 = !{!"View3D", !41, i64 0, !41, i64 8, !40, i64 16, !36, i64 32, !42, i64 36, !37, i64 40, !37, i64 56, !42, i64 72, !42, i64 76, !37, i64 80, !37, i64 81, !36, i64 84, !36, i64 88, !39, i64 92, !39, i64 94, !41, i64 96, !41, i64 104, !62, i64 112, !40, i64 128, !41, i64 144, !41, i64 152, !37, i64 160, !36, i64 224, !36, i64 228, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !42, i64 244, !42, i64 248, !42, i64 252, !42, i64 256, !37, i64 260, !37, i64 272, !39, i64 284, !39, i64 286, !39, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !40, i64 296, !40, i64 312, !40, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !41, i64 352, !41, i64 360, !41, i64 368}
!100 = !{!88, !36, i64 1280}
!101 = !{!88, !41, i64 232}
!102 = !{!103, !37, i64 18}
!103 = !{!"MVert", !37, i64 0, !37, i64 12, !37, i64 18, !37, i64 19}
!104 = distinct !{!104, !56, !57}
!105 = !{!106, !41, i64 0}
!106 = !{!"LassoSelectUserData", !41, i64 0, !41, i64 8, !41, i64 16, !62, i64 24, !41, i64 40, !36, i64 48, !37, i64 52, !36, i64 56, !37, i64 60, !37, i64 61}
!107 = !{!106, !41, i64 8}
!108 = !{!106, !41, i64 16}
!109 = !{!106, !41, i64 40}
!110 = !{!106, !36, i64 48}
!111 = !{!106, !37, i64 52}
!112 = !{!106, !36, i64 56}
!113 = !{!106, !37, i64 60}
!114 = !{!106, !37, i64 61}
!115 = !{!83, !36, i64 432}
!116 = !{!41, !41, i64 0}
!117 = !{!118, !36, i64 16}
!118 = !{!"Base", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !39, i64 28, !39, i64 30, !41, i64 32}
!119 = !{!99, !36, i64 224}
!120 = !{!118, !41, i64 32}
!121 = !{!83, !37, i64 1160}
!122 = distinct !{!122, !56, !57}
!123 = !{!118, !39, i64 28}
!124 = !{!118, !39, i64 30}
!125 = !{!118, !36, i64 24}
!126 = !{!83, !39, i64 948}
!127 = !{!83, !39, i64 136}
!128 = !{!83, !41, i64 288}
!129 = !{i64 0, i64 8, !116, i64 8, i64 8, !116, i64 16, i64 8, !116, i64 24, i64 8, !116, i64 32, i64 8, !116, i64 40, i64 8, !116, i64 48, i64 8, !116, i64 56, i64 8, !130}
!130 = !{!37, !37, i64 0}
!131 = !{!132, !36, i64 192}
!132 = !{!"bArmature", !84, i64 0, !41, i64 120, !40, i64 128, !40, i64 144, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !39, i64 208, !39, i64 210, !36, i64 212, !36, i64 216, !36, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !36, i64 248, !36, i64 252}
!133 = distinct !{!133, !56, !57}
!134 = !{!135, !41, i64 264}
!135 = !{!"Scene", !84, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !40, i64 152, !41, i64 168, !41, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !36, i64 232, !36, i64 236, !36, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !136, i64 280, !143, i64 4264, !40, i64 4296, !40, i64 4312, !41, i64 4328, !41, i64 4336, !41, i64 4344, !41, i64 4352, !41, i64 4360, !41, i64 4368, !39, i64 4376, !39, i64 4378, !36, i64 4380, !40, i64 4384, !144, i64 4400, !145, i64 4416, !148, i64 4600, !41, i64 4608, !149, i64 4616, !41, i64 4640, !86, i64 4648, !86, i64 4656, !138, i64 4664, !139, i64 4824, !150, i64 4888, !41, i64 4952}
!136 = !{!"RenderData", !137, i64 0, !41, i64 248, !41, i64 256, !140, i64 264, !141, i64 328, !36, i64 400, !36, i64 404, !36, i64 408, !42, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !39, i64 432, !39, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !36, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !36, i64 484, !36, i64 488, !39, i64 492, !39, i64 494, !36, i64 496, !36, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !36, i64 516, !36, i64 520, !36, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !62, i64 544, !62, i64 560, !63, i64 576, !40, i64 592, !39, i64 608, !39, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !36, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !42, i64 660, !42, i64 664, !39, i64 668, !39, i64 670, !42, i64 672, !42, i64 676, !37, i64 680, !36, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !36, i64 2520, !39, i64 2524, !39, i64 2526, !42, i64 2528, !42, i64 2532, !39, i64 2536, !39, i64 2538, !42, i64 2540, !39, i64 2544, !39, i64 2546, !36, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !42, i64 2560, !42, i64 2564, !41, i64 2568, !36, i64 2576, !42, i64 2580, !37, i64 2584, !142, i64 2616, !36, i64 3976, !36, i64 3980}
!137 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !42, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !138, i64 24, !139, i64 184}
!138 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !42, i64 136, !42, i64 140, !41, i64 144, !41, i64 152}
!139 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!140 = !{!"QuicktimeCodecSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !39, i64 48, !39, i64 50, !36, i64 52, !36, i64 56, !36, i64 60}
!141 = !{!"FFMpegCodecData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !42, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !41, i64 64}
!142 = !{!"BakeData", !137, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !42, i64 1280, !42, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!143 = !{!"AudioData", !36, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !36, i64 16, !39, i64 20, !39, i64 22, !42, i64 24, !42, i64 28}
!144 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!145 = !{!"GameData", !144, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !146, i64 40, !39, i64 64, !39, i64 66, !42, i64 68, !147, i64 72, !42, i64 128, !42, i64 132, !36, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!146 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !42, i64 8, !42, i64 12, !41, i64 16}
!147 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !36, i64 40, !42, i64 44, !42, i64 48, !39, i64 52, !39, i64 54}
!148 = !{!"UnitSettings", !42, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!149 = !{!"PhysicsSettings", !37, i64 0, !36, i64 12, !36, i64 16, !36, i64 20}
!150 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!151 = !{!46, !41, i64 48}
!152 = !{!153, !39, i64 46}
!153 = !{!"ToolSettings", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !42, i64 32, !42, i64 36, !42, i64 40, !39, i64 44, !39, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !42, i64 52, !39, i64 56, !37, i64 58, !37, i64 59, !154, i64 64, !156, i64 168, !42, i64 336, !42, i64 340, !39, i64 344, !39, i64 346, !37, i64 348, !37, i64 349, !39, i64 350, !42, i64 352, !42, i64 356, !42, i64 360, !42, i64 364, !42, i64 368, !42, i64 372, !42, i64 376, !42, i64 380, !42, i64 384, !42, i64 388, !39, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !41, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !39, i64 434, !39, i64 436, !39, i64 438, !39, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !36, i64 448, !36, i64 452, !36, i64 456, !36, i64 460, !39, i64 464, !39, i64 466, !36, i64 468, !42, i64 472, !42, i64 476, !157, i64 480, !158, i64 608}
!154 = !{!"ImagePaintSettings", !155, i64 0, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !37, i64 48, !36, i64 52, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !37, i64 88, !42, i64 100}
!155 = !{!"Paint", !41, i64 0, !41, i64 8, !41, i64 16, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36}
!156 = !{!"ParticleEditSettings", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !41, i64 120, !42, i64 128, !42, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !41, i64 152, !41, i64 160}
!157 = !{!"UnifiedPaintSettings", !36, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !37, i64 16, !37, i64 28, !36, i64 40, !37, i64 44, !42, i64 52, !36, i64 56, !36, i64 60, !37, i64 64, !37, i64 65, !42, i64 72, !37, i64 76, !36, i64 84, !42, i64 88, !37, i64 92, !37, i64 100, !36, i64 108, !41, i64 112, !42, i64 120, !36, i64 124}
!158 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !37, i64 20, !37, i64 21, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36}
!159 = !{!160, !41, i64 0}
!160 = !{!"BMEditMesh", !41, i64 0, !41, i64 8, !36, i64 16, !41, i64 24, !36, i64 32, !41, i64 40, !41, i64 48, !86, i64 56, !41, i64 64, !36, i64 72, !41, i64 80, !36, i64 88, !39, i64 92, !39, i64 94, !41, i64 96, !36, i64 104}
!161 = !{!162, !37, i64 60}
!162 = !{!"BMIter", !37, i64 0, !41, i64 40, !41, i64 48, !36, i64 56, !37, i64 60}
!163 = !{!162, !41, i64 40}
!164 = !{!162, !41, i64 48}
!165 = !{!166, !41, i64 32}
!166 = !{!"BMesh", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 29, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !36, i64 88, !36, i64 92, !36, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !36, i64 128, !41, i64 136, !89, i64 144, !89, i64 344, !89, i64 544, !89, i64 744, !39, i64 944, !36, i64 948, !36, i64 952, !36, i64 956, !40, i64 960, !41, i64 976, !40, i64 984, !41, i64 1000}
!167 = !{!168, !37, i64 13}
!168 = !{!"BMHeader", !41, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!169 = distinct !{!169, !56, !57}
!170 = !{!166, !41, i64 56}
!171 = distinct !{!171, !56, !57}
!172 = !{!173, !41, i64 152}
!173 = !{!"Curve", !84, i64 0, !41, i64 120, !41, i64 128, !40, i64 136, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !39, i64 244, !39, i64 246, !39, i64 248, !39, i64 250, !42, i64 252, !42, i64 256, !36, i64 260, !39, i64 264, !39, i64 266, !36, i64 268, !42, i64 272, !42, i64 276, !42, i64 280, !39, i64 284, !39, i64 286, !39, i64 288, !39, i64 290, !36, i64 292, !36, i64 296, !37, i64 300, !39, i64 304, !37, i64 306, !37, i64 307, !42, i64 308, !42, i64 312, !42, i64 316, !42, i64 320, !42, i64 324, !42, i64 328, !42, i64 332, !42, i64 336, !42, i64 340, !42, i64 344, !36, i64 348, !36, i64 352, !36, i64 356, !36, i64 360, !36, i64 364, !41, i64 368, !41, i64 376, !37, i64 384, !41, i64 448, !41, i64 456, !41, i64 464, !41, i64 472, !41, i64 480, !36, i64 488, !36, i64 492, !41, i64 496, !174, i64 504, !42, i64 512, !42, i64 516, !42, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!174 = !{!"CharInfo", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !39, i64 6}
!175 = !{!132, !41, i64 160}
!176 = !{!69, !41, i64 104}
!177 = !{!178, !41, i64 32}
!178 = !{!"CollectionPointerLink", !41, i64 0, !41, i64 8, !179, i64 16}
!179 = !{!"PointerRNA", !180, i64 0, !41, i64 8, !41, i64 16}
!180 = !{!"", !41, i64 0}
!181 = distinct !{!181, !56, !57}
!182 = distinct !{!182, !56, !57}
!183 = !{!184, !41, i64 24}
!184 = !{!"EnumPropertyItem", !36, i64 0, !41, i64 8, !36, i64 16, !41, i64 24, !41, i64 32}
!185 = !{!184, !41, i64 8}
!186 = !{!184, !36, i64 0}
!187 = !{!188, !36, i64 64}
!188 = !{!"SelMenuItemF", !37, i64 0, !36, i64 64}
!189 = !{!184, !36, i64 16}
!190 = distinct !{!190, !56, !57}
!191 = distinct !{!191, !56, !57}
!192 = !{!135, !41, i64 152}
!193 = !{!99, !39, i64 232}
!194 = distinct !{!194, !56, !57}
!195 = !{!135, !41, i64 168}
!196 = !{!118, !36, i64 20}
!197 = distinct !{!197, !56, !57}
!198 = distinct !{!198, !56, !57}
!199 = !{!118, !41, i64 0}
!200 = distinct !{!200, !56, !57}
!201 = distinct !{!201, !56, !57}
!202 = !{!203, !41, i64 0}
!203 = !{!"BoxSelectUserData", !41, i64 0, !41, i64 8, !41, i64 16, !62, i64 24, !37, i64 40, !36, i64 44, !37, i64 48, !37, i64 49}
!204 = !{!203, !41, i64 8}
!205 = !{!203, !41, i64 16}
!206 = !{!203, !37, i64 40}
!207 = !{!203, !36, i64 44}
!208 = !{!203, !37, i64 48}
!209 = !{!203, !37, i64 49}
!210 = !{!211, !41, i64 160}
!211 = !{!"MetaBall", !84, i64 0, !41, i64 120, !40, i64 128, !40, i64 144, !41, i64 160, !41, i64 168, !41, i64 176, !37, i64 184, !37, i64 185, !39, i64 186, !39, i64 188, !39, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !42, i64 228, !42, i64 232, !42, i64 236, !41, i64 240}
!212 = !{!213, !39, i64 28}
!213 = !{!"MetaElem", !41, i64 0, !41, i64 8, !41, i64 16, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !42, i64 32, !42, i64 36, !42, i64 40, !37, i64 44, !42, i64 60, !42, i64 64, !42, i64 68, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84, !41, i64 88, !41, i64 96}
!214 = distinct !{!214, !56, !57}
!215 = !{!213, !39, i64 26}
!216 = !{!213, !39, i64 30}
!217 = distinct !{!217, !56, !57}
!218 = !{!219, !36, i64 132}
!219 = !{!"EditBone", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !37, i64 40, !42, i64 104, !37, i64 108, !37, i64 120, !36, i64 132, !36, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !39, i64 180}
!220 = distinct !{!220, !56, !57}
!221 = distinct !{!221, !56, !57}
!222 = !{!219, !41, i64 24}
!223 = distinct !{!223, !56, !57}
!224 = distinct !{!224, !56, !57}
!225 = !{!226, !41, i64 40}
!226 = !{!"ImBuf", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 20, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !41, i64 40, !41, i64 48, !37, i64 56, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !41, i64 88, !41, i64 96, !41, i64 104, !42, i64 112, !37, i64 120, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !41, i64 296, !41, i64 304, !36, i64 312, !37, i64 316, !37, i64 1340, !41, i64 2368, !36, i64 2376, !41, i64 2384, !36, i64 2392, !36, i64 2396, !41, i64 2400, !41, i64 2408, !41, i64 2416, !41, i64 2424, !36, i64 2432, !63, i64 2436, !227, i64 2456}
!227 = !{!"DDSData", !36, i64 0, !36, i64 4, !41, i64 8, !36, i64 16}
!228 = distinct !{!228, !56, !57}
!229 = distinct !{!229, !56, !57}
!230 = !{!231, !41, i64 120}
!231 = !{!"bPoseChannel", !41, i64 0, !41, i64 8, !41, i64 16, !40, i64 24, !37, i64 40, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !41, i64 120, !41, i64 128, !41, i64 136, !40, i64 144, !40, i64 160, !41, i64 176, !41, i64 184, !41, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !42, i64 264, !39, i64 268, !39, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !42, i64 524, !42, i64 528, !42, i64 532, !41, i64 536}
!232 = !{!233, !36, i64 176}
!233 = !{!"Bone", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !40, i64 32, !37, i64 48, !42, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !36, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !42, i64 268, !42, i64 272, !42, i64 276, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !37, i64 308, !36, i64 320, !39, i64 324, !37, i64 326}
!234 = distinct !{!234, !56, !57}
!235 = !{!132, !41, i64 168}
!236 = distinct !{!236, !56, !57}
!237 = distinct !{!237, !56, !57}
!238 = distinct !{!238, !56, !57}
!239 = distinct !{!239, !56, !57}
!240 = !{!241, !36, i64 152}
!241 = !{!"MovieTrackingTrack", !41, i64 0, !41, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !36, i64 120, !36, i64 124, !41, i64 128, !37, i64 136, !42, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !37, i64 164, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !36, i64 184, !42, i64 188, !41, i64 192, !42, i64 200, !42, i64 204}
!242 = !{!241, !36, i64 156}
!243 = !{!241, !36, i64 160}
!244 = distinct !{!244, !56, !57}
!245 = distinct !{!245, !56, !57}
!246 = distinct !{!246, !56, !57}
!247 = !{!248, !41, i64 0}
!248 = !{!"CircleSelectUserData", !41, i64 0, !37, i64 8, !37, i64 12, !37, i64 20, !42, i64 28, !42, i64 32, !37, i64 36}
!249 = !{!248, !37, i64 8}
!250 = !{!248, !42, i64 28}
!251 = !{!248, !42, i64 32}
!252 = !{!248, !37, i64 36}
!253 = !{!166, !41, i64 40}
!254 = distinct !{!254, !56, !57}
!255 = distinct !{!255, !56, !57}
!256 = !{!233, !36, i64 320}
!257 = !{!132, !36, i64 216}
!258 = !{!259, !39, i64 24}
!259 = !{!"BPoint", !37, i64 0, !42, i64 16, !42, i64 20, !39, i64 24, !39, i64 26, !42, i64 28, !42, i64 32}
!260 = !{!173, !39, i64 248}
!261 = !{!262, !37, i64 52}
!262 = !{!"BezTriple", !37, i64 0, !42, i64 36, !42, i64 40, !42, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !42, i64 56, !42, i64 60, !42, i64 64, !37, i64 68}
!263 = !{!262, !37, i64 53}
!264 = !{!262, !37, i64 51}
!265 = !{!219, !36, i64 136}
!266 = !{!62, !42, i64 0}
!267 = !{!62, !42, i64 4}
!268 = !{!62, !42, i64 8}
!269 = !{!62, !42, i64 12}
!270 = distinct !{!270, !56, !57}
!271 = distinct !{!271, !56, !57}
!272 = !{!273, !41, i64 8}
!273 = !{!"LinkNode", !41, i64 0, !41, i64 8}
!274 = distinct !{!274, !56, !57}
