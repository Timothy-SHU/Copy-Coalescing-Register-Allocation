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
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
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
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.LassoSelectUserData = type { ptr, ptr, ptr, %struct.rctf, ptr, i32, i8, i32, i8, i8 }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.MetaElem = type { ptr, ptr, ptr, i16, i16, i16, i16, float, float, float, [4 x float], float, float, float, float, float, float, float, ptr, ptr }
%struct.BoxSelectUserData = type { ptr, ptr, ptr, %struct.rctf, i8, i32, i8, i8 }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.LinkNode = type { ptr, ptr }
%struct.CircleSelectUserData = type { ptr, i8, [2 x i32], [2 x float], float, float, i8 }

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
@mixed_bones_object_selectbuffer.last_mval = internal global [2 x i32] [i32 -100, i32 -100], align 4
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.49 = private unnamed_addr constant [6 x i8] c"selar\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.50 = private unnamed_addr constant [17 x i8] c"selection buffer\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local float @ED_view3d_select_dist_px() local_unnamed_addr #0 {
  %1 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !34
  %2 = fmul float %1, 7.500000e+01
  ret float %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @view3d_set_viewcontext(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #1 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 0, i64 64, i1 false)
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 3
  store ptr %3, ptr %4, align 8, !tbaa !45
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  store ptr %5, ptr %1, align 8, !tbaa !47
  %6 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #15
  %7 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 4
  store ptr %6, ptr %7, align 8, !tbaa !48
  %8 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #15
  %9 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 5
  store ptr %8, ptr %9, align 8, !tbaa !49
  %10 = tail call ptr @CTX_data_active_object(ptr noundef %0) #15
  %11 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !50
  %12 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %13 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @view3d_get_transformation(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #1 {
  %5 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  %6 = icmp eq ptr %2, null
  %7 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 1
  br i1 %6, label %10, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %9) #15
  br label %11

10:                                               ; preds = %4
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %7) #15
  br label %11

11:                                               ; preds = %10, %8
  br label %12

12:                                               ; preds = %11, %28
  %13 = phi i64 [ %29, %28 ], [ 0, %11 ]
  %14 = shl nuw nsw i64 %13, 2
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi i64 [ 0, %12 ], [ %26, %15 ]
  %17 = getelementptr inbounds [4 x [4 x float]], ptr %1, i64 0, i64 %13, i64 %16
  %18 = load <2 x float>, ptr %17, align 4, !tbaa !52
  %19 = fpext <2 x float> %18 to <2 x double>
  %20 = add nuw nsw i64 %16, %14
  %21 = getelementptr inbounds %struct.bglMats, ptr %3, i64 0, i32 1, i64 %20
  store <2 x double> %19, ptr %21, align 8, !tbaa !53
  %22 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %13, i64 %16
  %23 = load <2 x float>, ptr %22, align 8, !tbaa !52
  %24 = fpext <2 x float> %23 to <2 x double>
  %25 = getelementptr inbounds [16 x double], ptr %3, i64 0, i64 %20
  store <2 x double> %24, ptr %25, align 8, !tbaa !53
  %26 = add nuw i64 %16, 2
  %27 = icmp eq i64 %26, 4
  br i1 %27, label %28, label %15, !llvm.loop !55

28:                                               ; preds = %15
  %29 = add nuw nsw i64 %13, 1
  %30 = icmp eq i64 %29, 4
  br i1 %30, label %31, label %12, !llvm.loop !59

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !60
  %34 = getelementptr inbounds %struct.bglMats, ptr %3, i64 0, i32 2
  store i32 %33, ptr %34, align 8, !tbaa !65
  %35 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !66
  %37 = getelementptr inbounds %struct.bglMats, ptr %3, i64 0, i32 2, i64 1
  store i32 %36, ptr %37, align 4, !tbaa !65
  %38 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %39 = load i16, ptr %38, align 8, !tbaa !67
  %40 = sext i16 %39 to i32
  %41 = getelementptr inbounds %struct.bglMats, ptr %3, i64 0, i32 2, i64 2
  store i32 %40, ptr %41, align 8, !tbaa !65
  %42 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %43 = load i16, ptr %42, align 2, !tbaa !68
  %44 = sext i16 %43 to i32
  %45 = getelementptr inbounds %struct.bglMats, ptr %3, i64 0, i32 2, i64 3
  store i32 %44, ptr %45, align 4, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VIEW3D_OT_select_lasso(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_lasso_invoke, ptr %4, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_lasso_modal, ptr %5, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_lasso_select_exec, ptr %6, align 8, !tbaa !76
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view3d_selectable_data, ptr %7, align 8, !tbaa !77
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_lasso_cancel, ptr %8, align 8, !tbaa !78
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %9, align 8, !tbaa !79
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  %12 = tail call ptr @RNA_def_collection_runtime(ptr noundef %11, ptr noundef nonnull @.str.3, ptr noundef nonnull @RNA_OperatorMousePath, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #15
  %13 = load ptr, ptr %10, align 8, !tbaa !80
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15
  %15 = load ptr, ptr %10, align 8, !tbaa !80
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #15
  ret void
}

; Function Attrs: optsize
declare i32 @WM_gesture_lasso_invoke(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare i32 @WM_gesture_lasso_modal(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view3d_lasso_select_exec(ptr noundef %0, ptr noundef %1) #1 !PGOFuncName !81 {
  %3 = alloca %struct.ViewContext, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %5 = call ptr @WM_gesture_lasso_path_to_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  call void @view3d_operator_needs_opengl(ptr noundef %0) #15
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %3) #17
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  %10 = call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.9) #15
  %11 = trunc i32 %10 to i8
  %12 = load ptr, ptr %8, align 8, !tbaa !82
  %13 = call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.6) #15
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i8
  %16 = load i32, ptr %4, align 4, !tbaa !65
  %17 = trunc i32 %16 to i16
  call fastcc void @view3d_lasso_select(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5, i16 noundef signext %17, i8 noundef zeroext %11, i8 noundef zeroext %15) #17
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !84
  call void %18(ptr noundef nonnull %5) #15
  br label %19

19:                                               ; preds = %2, %7
  %20 = phi i32 [ 4, %7 ], [ 8, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view3d_selectable_data(ptr noundef %0) #1 !PGOFuncName !85 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #15
  %3 = tail call i32 @ED_operator_region_view3d_active(ptr noundef %0) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = icmp eq ptr %2, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %9 = load i32, ptr %8, align 8, !tbaa !86
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !91
  %15 = icmp eq i16 %14, 4
  br i1 %15, label %23, label %22

16:                                               ; preds = %7
  %17 = and i32 %9, 28
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = tail call zeroext i8 @BKE_paint_select_elem_test(ptr noundef nonnull %2) #15
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %12, %19, %16, %5
  br label %23

23:                                               ; preds = %19, %12, %1, %22
  %24 = phi i32 [ 1, %22 ], [ 0, %1 ], [ 0, %12 ], [ 0, %19 ]
  ret i32 %24
}

; Function Attrs: optsize
declare void @WM_gesture_lasso_cancel(ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare ptr @RNA_def_collection_runtime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VIEW3D_OT_select_menu(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_select_menu_exec, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.15, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5) #15
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @object_select_menu_enum_itemf) #15
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 537395200) #15
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !92
  %11 = load ptr, ptr %7, align 8, !tbaa !80
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.17, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #15
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_select_menu_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !93 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.15) #15
  %8 = load ptr, ptr %5, align 8, !tbaa !82
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.17) #15
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [22 x %struct.SelMenuItemF], ptr @object_mouse_select_menu_data, i64 0, i64 %10
  %12 = and i32 %9, 255
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %15 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %3) #15
  %16 = load ptr, ptr %3, align 8, !tbaa !84
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %14, %28
  %19 = phi ptr [ %30, %28 ], [ %16, %14 ]
  %20 = phi i8 [ %29, %28 ], [ 0, %14 ]
  %21 = getelementptr inbounds %struct.CollectionPointerLink, ptr %19, i64 0, i32 2, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !94
  %23 = getelementptr inbounds %struct.Base, ptr %22, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !98
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  call void @ED_base_object_select(ptr noundef nonnull %22, i16 noundef signext 0) #15
  br label %28

28:                                               ; preds = %27, %18
  %29 = phi i8 [ 1, %27 ], [ %20, %18 ]
  %30 = load ptr, ptr %19, align 8, !tbaa !84
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %18, !llvm.loop !100

32:                                               ; preds = %28, %14
  %33 = phi i8 [ 0, %14 ], [ %29, %28 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  br label %34

34:                                               ; preds = %32, %2
  %35 = phi i8 [ 0, %2 ], [ %33, %32 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %36 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %4) #15
  %37 = load ptr, ptr %4, align 8, !tbaa !84
  %38 = icmp eq ptr %37, null
  br i1 %38, label %54, label %39

39:                                               ; preds = %34, %50
  %40 = phi ptr [ %52, %50 ], [ %37, %34 ]
  %41 = phi i8 [ %51, %50 ], [ %35, %34 ]
  %42 = getelementptr inbounds %struct.CollectionPointerLink, ptr %40, i64 0, i32 2, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !94
  %44 = getelementptr inbounds %struct.Base, ptr %43, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !101
  %46 = getelementptr inbounds %struct.ID, ptr %45, i64 0, i32 4, i64 2
  %47 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %46) #18
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  call void @ED_base_object_activate(ptr noundef %0, ptr noundef nonnull %43) #15
  call void @ED_base_object_select(ptr noundef nonnull %43, i16 noundef signext 1) #15
  br label %50

50:                                               ; preds = %49, %39
  %51 = phi i8 [ 1, %49 ], [ %41, %39 ]
  %52 = load ptr, ptr %40, align 8, !tbaa !84
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %39, !llvm.loop !102

54:                                               ; preds = %50, %34
  %55 = phi i8 [ %35, %34 ], [ %51, %50 ]
  call void @BLI_freelistN(ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1496) @object_mouse_select_menu_data, i8 0, i64 1496, i1 false)
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = call ptr @CTX_data_scene(ptr noundef %0) #15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %58) #15
  br label %59

59:                                               ; preds = %54, %57
  %60 = phi i32 [ 4, %57 ], [ 2, %54 ]
  ret i32 %60
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @object_select_menu_enum_itemf(ptr noundef readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #1 !PGOFuncName !103 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.EnumPropertyItem, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store ptr null, ptr %5, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !tbaa !65
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
  %19 = load i8, ptr %18, align 4, !tbaa !104
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  store ptr %18, ptr %13, align 8, !tbaa !105
  store ptr %18, ptr %14, align 8, !tbaa !107
  %22 = trunc i64 %17 to i32
  store i32 %22, ptr %6, align 8, !tbaa !108
  %23 = getelementptr inbounds [22 x %struct.SelMenuItemF], ptr @object_mouse_select_menu_data, i64 0, i64 %17, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !109
  store i32 %24, ptr %15, align 8, !tbaa !111
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6) #15
  %25 = add nuw nsw i64 %17, 1
  %26 = icmp eq i64 %25, 22
  br i1 %26, label %27, label %16, !llvm.loop !112

27:                                               ; preds = %21, %16
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %7) #15
  store i8 1, ptr %3, align 1, !tbaa !104
  %28 = load ptr, ptr %5, align 8, !tbaa !84
  br label %29

29:                                               ; preds = %4, %27
  %30 = phi ptr [ %28, %27 ], [ @DummyRNA_NULL_items, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret ptr %30
}

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_view3d_give_base_under_cursor(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = alloca %struct.ViewContext, align 8
  %4 = alloca [40000 x i32], align 16
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 160000, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #15
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %3) #17
  %6 = call fastcc signext i16 @mixed_bones_object_selectbuffer(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %5, i8 noundef zeroext 0) #17
  %7 = icmp sgt i16 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = zext nneg i16 %6 to i32
  %10 = call fastcc zeroext i8 @selectbuffer_has_bones(ptr noundef nonnull %4, i32 noundef %9) #17, !range !113
  %11 = load ptr, ptr %3, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  %14 = load i8, ptr %5, align 1, !tbaa !104
  %15 = call fastcc ptr @mouse_select_eval_buffer(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %9, ptr noundef %13, i8 noundef zeroext %10, i8 noundef zeroext %14) #17
  br label %16

16:                                               ; preds = %8, %2
  %17 = phi ptr [ %15, %8 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 160000, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  ret ptr %17
}

; Function Attrs: optsize
declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc signext i16 @mixed_bones_object_selectbuffer(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef writeonly %3, i8 noundef zeroext %4) unnamed_addr #1 !PGOFuncName !131 {
  %6 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 24
  %10 = load i16, ptr %9, align 8, !tbaa !132
  %11 = icmp sgt i16 %10, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %5
  %13 = tail call fastcc i32 @len_manhattan_v2v2_int(ptr noundef %2) #17
  %14 = icmp sgt i32 %13, 2
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %12, %5
  %17 = phi i1 [ false, %5 ], [ %14, %12 ]
  %18 = phi i8 [ 0, %5 ], [ %15, %12 ]
  tail call fastcc void @copy_v2_v2_int(ptr noundef nonnull @mixed_bones_object_selectbuffer.last_mval, ptr noundef %2) #17
  %19 = icmp eq ptr %3, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i8 %18, ptr %3, align 1, !tbaa !104
  br label %21

21:                                               ; preds = %20, %16
  %22 = icmp eq i8 %4, 0
  %23 = and i1 %22, %17
  %24 = zext i1 %23 to i8
  %25 = load i32, ptr %2, align 4, !tbaa !65
  %26 = add nsw i32 %25, -14
  %27 = add nsw i32 %25, 14
  %28 = getelementptr inbounds i32, ptr %2, i64 1
  %29 = load i32, ptr %28, align 4, !tbaa !65
  %30 = add nsw i32 %29, -14
  %31 = add nsw i32 %29, 14
  call void @BLI_rcti_init(ptr noundef nonnull %6, i32 noundef %26, i32 noundef %27, i32 noundef %30, i32 noundef %31) #15
  %32 = call signext i16 @view3d_opengl_select(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 10000, ptr noundef nonnull %6, i8 noundef zeroext %24) #15
  %33 = sext i16 %32 to i32
  %34 = icmp eq i16 %32, 1
  br i1 %34, label %92, label %35

35:                                               ; preds = %21
  %36 = icmp sgt i16 %32, 0
  br i1 %36, label %37, label %92

37:                                               ; preds = %35
  %38 = call fastcc zeroext i8 @selectbuffer_has_bones(ptr noundef %1, i32 noundef %33) #17, !range !113
  %39 = shl nuw nsw i32 %33, 2
  %40 = load i32, ptr %2, align 4, !tbaa !65
  %41 = add nsw i32 %40, -9
  %42 = add nsw i32 %40, 9
  %43 = load i32, ptr %28, align 4, !tbaa !65
  %44 = add nsw i32 %43, -9
  %45 = add nsw i32 %43, 9
  call void @BLI_rcti_init(ptr noundef nonnull %6, i32 noundef %41, i32 noundef %42, i32 noundef %44, i32 noundef %45) #15
  %46 = zext nneg i32 %39 to i64
  %47 = getelementptr inbounds i32, ptr %1, i64 %46
  %48 = sub nsw i32 10000, %39
  %49 = call signext i16 @view3d_opengl_select(ptr noundef nonnull %0, ptr noundef nonnull %47, i32 noundef %48, ptr noundef nonnull %6, i8 noundef zeroext %24) #15
  %50 = sext i16 %49 to i32
  %51 = icmp eq i16 %49, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %37
  %53 = call fastcc signext i16 @selectbuffer_ret_hits_9(ptr noundef %1, i16 noundef signext %32, i16 noundef signext 1) #17
  br label %92

54:                                               ; preds = %37
  %55 = icmp sgt i16 %49, 0
  br i1 %55, label %56, label %92

56:                                               ; preds = %54
  %57 = call fastcc zeroext i8 @selectbuffer_has_bones(ptr noundef nonnull %47, i32 noundef %50) #17, !range !113
  %58 = add nuw nsw i32 %50, %33
  %59 = shl nuw nsw i32 %58, 2
  %60 = load i32, ptr %2, align 4, !tbaa !65
  %61 = add nsw i32 %60, -5
  %62 = add nsw i32 %60, 5
  %63 = load i32, ptr %28, align 4, !tbaa !65
  %64 = add nsw i32 %63, -5
  %65 = add nsw i32 %63, 5
  call void @BLI_rcti_init(ptr noundef nonnull %6, i32 noundef %61, i32 noundef %62, i32 noundef %64, i32 noundef %65) #15
  %66 = zext nneg i32 %59 to i64
  %67 = getelementptr inbounds i32, ptr %1, i64 %66
  %68 = sub nsw i32 10000, %59
  %69 = call signext i16 @view3d_opengl_select(ptr noundef nonnull %0, ptr noundef %67, i32 noundef %68, ptr noundef nonnull %6, i8 noundef zeroext %24) #15
  %70 = sext i16 %69 to i32
  %71 = icmp eq i16 %69, 1
  br i1 %71, label %72, label %74

72:                                               ; preds = %56
  %73 = call fastcc signext i16 @selectbuffer_ret_hits_5(ptr noundef %1, i16 noundef signext %32, i16 noundef signext %49, i16 noundef signext 1) #17
  br label %92

74:                                               ; preds = %56
  %75 = icmp sgt i16 %69, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %74
  %77 = call fastcc zeroext i8 @selectbuffer_has_bones(ptr noundef %67, i32 noundef %70) #17, !range !113
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = call fastcc signext i16 @selectbuffer_ret_hits_5(ptr noundef %1, i16 noundef signext %32, i16 noundef signext %49, i16 noundef signext %69) #17
  br label %92

81:                                               ; preds = %74, %76
  %82 = icmp eq i8 %57, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %81
  %84 = call fastcc signext i16 @selectbuffer_ret_hits_9(ptr noundef %1, i16 noundef signext %32, i16 noundef signext %49) #17
  br label %92

85:                                               ; preds = %81
  %86 = icmp eq i8 %38, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %85
  br i1 %75, label %88, label %90

88:                                               ; preds = %87
  %89 = call fastcc signext i16 @selectbuffer_ret_hits_5(ptr noundef %1, i16 noundef signext %32, i16 noundef signext %49, i16 noundef signext %69) #17
  br label %92

90:                                               ; preds = %87
  %91 = call fastcc signext i16 @selectbuffer_ret_hits_9(ptr noundef %1, i16 noundef signext %32, i16 noundef signext %49) #17
  br label %92

92:                                               ; preds = %54, %85, %21, %35, %90, %88, %83, %79, %72, %52
  %93 = phi i16 [ 1, %52 ], [ 1, %72 ], [ %69, %79 ], [ %49, %83 ], [ %69, %88 ], [ %49, %90 ], [ 0, %35 ], [ 1, %21 ], [ %32, %85 ], [ %32, %54 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret i16 %93
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @selectbuffer_has_bones(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !134 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %9

6:                                                ; preds = %9
  %7 = add nuw nsw i64 %10, 1
  %8 = icmp eq i64 %7, %5
  br i1 %8, label %17, label %9, !llvm.loop !135

9:                                                ; preds = %4, %6
  %10 = phi i64 [ 0, %4 ], [ %7, %6 ]
  %11 = shl i64 %10, 2
  %12 = and i64 %11, 4294967292
  %13 = or disjoint i64 %12, 3
  %14 = getelementptr inbounds i32, ptr %0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !65
  %16 = icmp ult i32 %15, 65536
  br i1 %16, label %6, label %17

17:                                               ; preds = %9, %6, %2
  %18 = phi i8 [ 0, %2 ], [ 0, %6 ], [ 1, %9 ]
  ret i8 %18
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @mouse_select_eval_buffer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef readonly %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #6 !PGOFuncName !136 {
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
  %24 = load i32, ptr %23, align 4, !tbaa !65
  %25 = icmp ugt i32 %20, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = or disjoint i64 %21, 3
  %28 = getelementptr inbounds i32, ptr %1, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !65
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
  br i1 %38, label %80, label %17, !llvm.loop !137

39:                                               ; preds = %11
  %40 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !138
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.Base, ptr %41, i64 0, i32 4
  %45 = load i32, ptr %44, align 8, !tbaa !98
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  %48 = icmp sgt i32 %2, 1
  %49 = and i1 %48, %47
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.Base, ptr %41, i64 0, i32 3
  %52 = load i32, ptr %51, align 4, !tbaa !139
  br label %55

53:                                               ; preds = %43, %39
  %54 = icmp sgt i32 %2, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %50, %53
  %56 = phi i32 [ %52, %50 ], [ 0, %53 ]
  %57 = zext nneg i32 %2 to i64
  br label %58

58:                                               ; preds = %55, %75
  %59 = phi i64 [ 0, %55 ], [ %78, %75 ]
  %60 = phi i32 [ 0, %55 ], [ %77, %75 ]
  %61 = phi i32 [ -1, %55 ], [ %76, %75 ]
  %62 = shl nsw i64 %59, 2
  %63 = or disjoint i64 %62, 1
  %64 = getelementptr inbounds i32, ptr %1, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !65
  %66 = icmp ugt i32 %61, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %58
  %68 = or disjoint i64 %62, 3
  %69 = getelementptr inbounds i32, ptr %1, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !65
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %56, %71
  %73 = select i1 %72, i32 %61, i32 %65
  %74 = select i1 %72, i32 %60, i32 %71
  br label %75

75:                                               ; preds = %67, %58
  %76 = phi i32 [ %61, %58 ], [ %73, %67 ]
  %77 = phi i32 [ %60, %58 ], [ %74, %67 ]
  %78 = add nuw nsw i64 %59, 1
  %79 = icmp eq i64 %78, %57
  br i1 %79, label %80, label %58, !llvm.loop !140

80:                                               ; preds = %34, %75, %13, %53
  %81 = phi i32 [ 0, %53 ], [ 0, %13 ], [ %77, %75 ], [ %36, %34 ]
  %82 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !84
  %84 = icmp eq ptr %83, null
  br i1 %84, label %180, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.View3D, ptr %9, i64 0, i32 22
  %87 = load i32, ptr %86, align 8, !tbaa !141
  br label %88

88:                                               ; preds = %85, %105
  %89 = phi ptr [ %83, %85 ], [ %106, %105 ]
  %90 = getelementptr inbounds %struct.Base, ptr %89, i64 0, i32 2
  %91 = load i32, ptr %90, align 8, !tbaa !142
  %92 = and i32 %87, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %105, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.Base, ptr %89, i64 0, i32 7
  %96 = load ptr, ptr %95, align 8, !tbaa !101
  %97 = getelementptr inbounds %struct.Object, ptr %96, i64 0, i32 102
  %98 = load i8, ptr %97, align 8, !tbaa !143
  %99 = and i8 %98, 3
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.Base, ptr %89, i64 0, i32 3
  %103 = load i32, ptr %102, align 4, !tbaa !139
  %104 = icmp eq i32 %103, %81
  br i1 %104, label %180, label %105

105:                                              ; preds = %101, %94, %88
  %106 = load ptr, ptr %89, align 8, !tbaa !84
  %107 = icmp eq ptr %106, null
  br i1 %107, label %180, label %88, !llvm.loop !144

108:                                              ; preds = %6
  %109 = icmp eq ptr %3, null
  br i1 %109, label %180, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 5
  %112 = getelementptr inbounds %struct.View3D, ptr %9, i64 0, i32 22
  %113 = icmp slt i32 %2, 1
  %114 = icmp ne i8 %4, 0
  %115 = zext nneg i32 %2 to i64
  br label %116

116:                                              ; preds = %110, %175
  %117 = phi ptr [ %176, %175 ], [ %3, %110 ]
  %118 = getelementptr inbounds %struct.Base, ptr %117, i64 0, i32 7
  %119 = load ptr, ptr %118, align 8, !tbaa !101
  %120 = getelementptr inbounds %struct.Object, ptr %119, i64 0, i32 102
  %121 = load i8, ptr %120, align 8, !tbaa !143
  %122 = and i8 %121, 2
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %116
  %125 = load ptr, ptr %117, align 8, !tbaa !145
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load ptr, ptr %111, align 8, !tbaa !114
  br label %129

129:                                              ; preds = %127, %124
  %130 = phi ptr [ %128, %127 ], [ %125, %124 ]
  %131 = icmp eq ptr %130, %3
  br i1 %131, label %180, label %132

132:                                              ; preds = %129, %116
  %133 = phi ptr [ %130, %129 ], [ %117, %116 ]
  %134 = getelementptr inbounds %struct.Base, ptr %133, i64 0, i32 2
  %135 = load i32, ptr %134, align 8, !tbaa !142
  %136 = load i32, ptr %112, align 8, !tbaa !141
  %137 = and i32 %136, %135
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %170, label %139

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.Base, ptr %133, i64 0, i32 7
  %141 = load ptr, ptr %140, align 8, !tbaa !101
  %142 = getelementptr inbounds %struct.Object, ptr %141, i64 0, i32 102
  %143 = load i8, ptr %142, align 8, !tbaa !143
  %144 = and i8 %143, 3
  %145 = icmp ne i8 %144, 0
  %146 = or i1 %145, %113
  br i1 %146, label %170, label %147

147:                                              ; preds = %139
  %148 = getelementptr inbounds %struct.Base, ptr %133, i64 0, i32 3
  br label %149

149:                                              ; preds = %147, %164
  %150 = phi i64 [ 0, %147 ], [ %166, %164 ]
  %151 = phi ptr [ null, %147 ], [ %165, %164 ]
  %152 = shl i64 %150, 2
  %153 = and i64 %152, 4294967292
  %154 = or disjoint i64 %153, 3
  %155 = getelementptr inbounds i32, ptr %1, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !65
  %157 = icmp ult i32 %156, 65536
  %158 = select i1 %114, i1 %157, i1 false
  br i1 %158, label %164, label %159

159:                                              ; preds = %149
  %160 = load i32, ptr %148, align 4, !tbaa !139
  %161 = and i32 %156, 65535
  %162 = icmp eq i32 %160, %161
  %163 = select i1 %162, ptr %133, ptr %151
  br label %164

164:                                              ; preds = %149, %159
  %165 = phi ptr [ %163, %159 ], [ %151, %149 ]
  %166 = add nuw nsw i64 %150, 1
  %167 = icmp eq i64 %166, %115
  br i1 %167, label %168, label %149, !llvm.loop !146

168:                                              ; preds = %164
  %169 = icmp eq ptr %165, null
  br i1 %169, label %170, label %180

170:                                              ; preds = %139, %132, %168
  %171 = load ptr, ptr %133, align 8, !tbaa !145
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = load ptr, ptr %111, align 8, !tbaa !114
  br label %175

175:                                              ; preds = %173, %170
  %176 = phi ptr [ %174, %173 ], [ %171, %170 ]
  %177 = icmp ne ptr %176, %3
  %178 = icmp ne ptr %176, null
  %179 = and i1 %177, %178
  br i1 %179, label %116, label %180, !llvm.loop !147

180:                                              ; preds = %101, %105, %129, %168, %175, %80, %108
  %181 = phi ptr [ null, %108 ], [ null, %80 ], [ null, %175 ], [ %165, %168 ], [ null, %129 ], [ %89, %101 ], [ null, %105 ]
  ret ptr %181
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @edge_inside_circle(ptr noundef %0, float noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = fmul float %1, %1
  %6 = tail call float @dist_squared_to_line_segment_v2(ptr noundef %0, ptr noundef %2, ptr noundef %3) #15
  %7 = fcmp olt float %6, %5
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: optsize
declare float @dist_squared_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VIEW3D_OT_select_border(ptr noundef %0) local_unnamed_addr #1 {
  store ptr @.str.20, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.21, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_borderselect_exec, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view3d_selectable_data, ptr %7, align 8, !tbaa !77
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %8, align 8, !tbaa !78
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %9, align 8, !tbaa !79
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #15
  ret void
}

; Function Attrs: optsize
declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @view3d_borderselect_exec(ptr noundef %0, ptr noundef %1) #1 !PGOFuncName !148 {
  %3 = alloca %struct.ViewContext, align 8
  %4 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #15
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %3) #17
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.47) #15
  %8 = icmp eq i32 %7, 3
  %9 = zext i1 %8 to i8
  call void @WM_operator_properties_border_to_rcti(ptr noundef %1, ptr noundef nonnull %4) #15
  %10 = load ptr, ptr %5, align 8, !tbaa !82
  %11 = call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.9) #15
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds %struct.ViewContext, ptr %3, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = icmp eq ptr %14, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 3
  %18 = load i16, ptr %17, align 8, !tbaa !91
  switch i16 %18, label %78 [
    i16 1, label %19
    i16 2, label %25
    i16 3, label %25
    i16 5, label %29
    i16 25, label %33
    i16 22, label %38
  ]

19:                                               ; preds = %16
  %20 = call ptr @BKE_editmesh_from_object(ptr noundef nonnull %14) #15
  %21 = getelementptr inbounds %struct.ViewContext, ptr %3, i64 0, i32 6
  store ptr %20, ptr %21, align 8, !tbaa !149
  call fastcc void @do_mesh_box_select(ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext %9, i8 noundef zeroext %12) #17
  %22 = load ptr, ptr %13, align 8, !tbaa !51
  %23 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !150
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %24) #15
  br label %78

25:                                               ; preds = %16, %16
  call fastcc void @do_nurbs_box_select(ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext %9, i8 noundef zeroext %12) #17
  %26 = load ptr, ptr %13, align 8, !tbaa !51
  %27 = getelementptr inbounds %struct.Object, ptr %26, i64 0, i32 19
  %28 = load ptr, ptr %27, align 8, !tbaa !150
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %28) #15
  br label %78

29:                                               ; preds = %16
  call fastcc void @do_meta_box_select(ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext %9, i8 noundef zeroext %12) #17
  %30 = load ptr, ptr %13, align 8, !tbaa !51
  %31 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 19
  %32 = load ptr, ptr %31, align 8, !tbaa !150
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %32) #15
  br label %78

33:                                               ; preds = %16
  %34 = call fastcc i32 @do_armature_box_select(ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext %9, i8 noundef zeroext %12) #17, !range !151
  %35 = icmp ult i32 %34, 4
  br i1 %35, label %78, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %13, align 8, !tbaa !51
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %37) #15
  br label %78

38:                                               ; preds = %16
  call fastcc void @do_lattice_box_select(ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext %9, i8 noundef zeroext %12) #17
  %39 = load ptr, ptr %13, align 8, !tbaa !51
  %40 = getelementptr inbounds %struct.Object, ptr %39, i64 0, i32 19
  %41 = load ptr, ptr %40, align 8, !tbaa !150
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %41) #15
  br label %78

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.ViewContext, ptr %3, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !50
  %45 = icmp eq ptr %44, null
  br i1 %45, label %76, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 27
  %48 = load i32, ptr %47, align 8, !tbaa !86
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = call i32 @ED_sculpt_mask_box_select(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext %9, i8 noundef zeroext %12) #15
  br label %78

53:                                               ; preds = %46
  %54 = call zeroext i8 @BKE_paint_select_face_test(ptr noundef nonnull %44) #15
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = call i32 @do_paintface_box_select(ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext %9, i8 noundef zeroext %12) #15
  br label %78

58:                                               ; preds = %53
  %59 = load ptr, ptr %43, align 8, !tbaa !50
  %60 = icmp eq ptr %59, null
  br i1 %60, label %76, label %61

61:                                               ; preds = %58
  %62 = call zeroext i8 @BKE_paint_select_vert_test(ptr noundef nonnull %59) #15
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = call fastcc i32 @do_paintvert_box_select(ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext %9, i8 noundef zeroext %12) #17, !range !151
  br label %78

66:                                               ; preds = %61
  %67 = load ptr, ptr %43, align 8, !tbaa !50
  %68 = icmp eq ptr %67, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.Object, ptr %67, i64 0, i32 27
  %71 = load i32, ptr %70, align 8, !tbaa !86
  %72 = and i32 %71, 32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %69
  %75 = call i32 @PE_border_select(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext %9, i8 noundef zeroext %12) #15
  br label %78

76:                                               ; preds = %42, %58, %69, %66
  %77 = call fastcc i32 @do_object_pose_box_select(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext %9, i8 noundef zeroext %12) #17, !range !151
  br label %78

78:                                               ; preds = %51, %64, %76, %74, %56, %19, %25, %29, %36, %33, %38, %16
  %79 = phi i32 [ 2, %16 ], [ 4, %38 ], [ 4, %36 ], [ %34, %33 ], [ 4, %29 ], [ 4, %25 ], [ 4, %19 ], [ %52, %51 ], [ %57, %56 ], [ %65, %64 ], [ %75, %74 ], [ %77, %76 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  ret i32 %79
}

; Function Attrs: optsize
declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VIEW3D_OT_select(ptr noundef %0) local_unnamed_addr #1 {
  store ptr @.str.23, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.24, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view3d_select_invoke, ptr %4, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_select_exec, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %6, align 8, !tbaa !77
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %7, align 8, !tbaa !79
  tail call void @WM_operator_properties_mouse_select(ptr noundef nonnull %0) #15
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #15
  %11 = load ptr, ptr %8, align 8, !tbaa !80
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #15
  %13 = load ptr, ptr %8, align 8, !tbaa !80
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.32, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #15
  %15 = load ptr, ptr %8, align 8, !tbaa !80
  %16 = tail call ptr @RNA_def_int_vector(ptr noundef %15, ptr noundef nonnull @.str.35, i32 noundef 2, ptr noundef null, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef -2147483648, i32 noundef 2147483647) #15
  tail call void @RNA_def_property_flag(ptr noundef %16, i32 noundef 524288) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @view3d_select_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #1 !PGOFuncName !152 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  tail call void @RNA_int_set_array(ptr noundef %5, ptr noundef nonnull @.str.35, ptr noundef nonnull %6) #15
  %7 = tail call i32 @view3d_select_exec(ptr noundef %0, ptr noundef %1) #17
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @view3d_select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !153 {
  %3 = alloca [2 x i32], align 4
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !82
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.9) #15
  %9 = trunc i32 %8 to i8
  %10 = load ptr, ptr %6, align 8, !tbaa !82
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.6) #15
  %12 = trunc i32 %11 to i8
  %13 = load ptr, ptr %6, align 8, !tbaa !82
  %14 = tail call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.17) #15
  %15 = trunc i32 %14 to i8
  %16 = load ptr, ptr %6, align 8, !tbaa !82
  %17 = tail call i32 @RNA_boolean_get(ptr noundef %16, ptr noundef nonnull @.str.26) #15
  %18 = trunc i32 %17 to i8
  %19 = load ptr, ptr %6, align 8, !tbaa !82
  %20 = tail call i32 @RNA_boolean_get(ptr noundef %19, ptr noundef nonnull @.str.29) #15
  %21 = trunc i32 %20 to i8
  %22 = load ptr, ptr %6, align 8, !tbaa !82
  %23 = tail call i32 @RNA_boolean_get(ptr noundef %22, ptr noundef nonnull @.str.32) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %2
  %26 = icmp eq ptr %4, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %25
  %28 = tail call zeroext i8 @BKE_paint_select_elem_test(ptr noundef %5) #15
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = icmp eq ptr %5, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 27
  %34 = load i32, ptr %33, align 8, !tbaa !86
  %35 = and i32 %34, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = tail call ptr @BKE_object_pose_armature_get(ptr noundef nonnull %5) #15
  %39 = icmp ne ptr %38, null
  %40 = zext i1 %39 to i8
  br label %41

41:                                               ; preds = %25, %27, %37, %32, %30, %2
  %42 = phi i8 [ 0, %2 ], [ 1, %27 ], [ 1, %25 ], [ 0, %32 ], [ 0, %30 ], [ %40, %37 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %43 = load ptr, ptr %6, align 8, !tbaa !82
  call void @RNA_int_get_array(ptr noundef %43, ptr noundef nonnull @.str.35, ptr noundef nonnull %3) #15
  call void @view3d_operator_needs_opengl(ptr noundef %0) #15
  %44 = icmp eq i8 %42, 0
  %45 = select i1 %44, ptr %5, ptr null
  %46 = select i1 %44, i8 %18, i8 0
  %47 = icmp ne ptr %4, null
  %48 = select i1 %44, i1 %47, i1 false
  br i1 %48, label %49, label %64

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %51 = load i16, ptr %50, align 8, !tbaa !91
  switch i16 %51, label %89 [
    i16 1, label %52
    i16 25, label %54
    i16 22, label %56
    i16 2, label %58
    i16 3, label %58
    i16 5, label %60
    i16 4, label %62
  ]

52:                                               ; preds = %49
  %53 = call zeroext i8 @EDBM_select_pick(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext %9, i8 noundef zeroext %12, i8 noundef zeroext %15) #15
  br label %85

54:                                               ; preds = %49
  %55 = call zeroext i8 @mouse_armature(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext %9, i8 noundef zeroext %12, i8 noundef zeroext %15) #15
  br label %85

56:                                               ; preds = %49
  %57 = call zeroext i8 @mouse_lattice(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext %9, i8 noundef zeroext %12, i8 noundef zeroext %15) #15
  br label %85

58:                                               ; preds = %49, %49
  %59 = call zeroext i8 @mouse_nurb(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext %9, i8 noundef zeroext %12, i8 noundef zeroext %15) #15
  br label %85

60:                                               ; preds = %49
  %61 = call zeroext i8 @mouse_mball(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext %9, i8 noundef zeroext %12, i8 noundef zeroext %15) #15
  br label %85

62:                                               ; preds = %49
  %63 = call zeroext i8 @mouse_font(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext %9, i8 noundef zeroext %12, i8 noundef zeroext %15) #15
  br label %85

64:                                               ; preds = %41
  %65 = icmp eq ptr %45, null
  br i1 %65, label %78, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.Object, ptr %45, i64 0, i32 27
  %68 = load i32, ptr %67, align 8, !tbaa !86
  %69 = and i32 %68, 32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = call i32 @PE_mouse_particles(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext %9, i8 noundef zeroext %12, i8 noundef zeroext %15) #15
  br label %90

73:                                               ; preds = %66
  %74 = call zeroext i8 @BKE_paint_select_face_test(ptr noundef nonnull %45) #15
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = call zeroext i8 @paintface_mouse_select(ptr noundef %0, ptr noundef nonnull %45, ptr noundef nonnull %3, i8 noundef zeroext %9, i8 noundef zeroext %12, i8 noundef zeroext %15) #15
  br label %85

78:                                               ; preds = %64, %73
  %79 = call zeroext i8 @BKE_paint_select_vert_test(ptr noundef %45) #15
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = call fastcc zeroext i8 @mouse_weight_paint_vertex_select(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext %9, i8 noundef zeroext %12, i8 noundef zeroext %15, ptr noundef %45) #17, !range !113
  br label %85

83:                                               ; preds = %78
  %84 = call fastcc zeroext i8 @mouse_select(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext %9, i8 noundef zeroext %12, i8 noundef zeroext %15, i8 noundef zeroext %46, i8 noundef zeroext %21, i8 noundef zeroext %42) #17, !range !113
  br label %85

85:                                               ; preds = %81, %83, %76, %52, %56, %60, %62, %58, %54
  %86 = phi i8 [ %53, %52 ], [ %55, %54 ], [ %57, %56 ], [ %59, %58 ], [ %61, %60 ], [ %63, %62 ], [ %77, %76 ], [ %82, %81 ], [ %84, %83 ]
  %87 = freeze i8 %86
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %49, %85
  br label %90

90:                                               ; preds = %89, %85, %71
  %91 = phi i32 [ %72, %71 ], [ 8, %89 ], [ 12, %85 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i32 %91
}

; Function Attrs: optsize
declare i32 @ED_operator_view3d_active(ptr noundef) #3

; Function Attrs: optsize
declare void @WM_operator_properties_mouse_select(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_def_int_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @VIEW3D_OT_select_circle(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.38, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.39, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.40, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_circle_invoke, ptr %4, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_circle_modal, ptr %5, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_circle_select_exec, ptr %6, align 8, !tbaa !76
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view3d_selectable_data, ptr %7, align 8, !tbaa !77
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_circle_cancel, ptr %8, align 8, !tbaa !78
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %9, align 8, !tbaa !79
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.5, i32 noundef -2147483648, i32 noundef 2147483647) #15
  %13 = load ptr, ptr %10, align 8, !tbaa !80
  %14 = tail call ptr @RNA_def_int(ptr noundef %13, ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.5, i32 noundef -2147483648, i32 noundef 2147483647) #15
  %15 = load ptr, ptr %10, align 8, !tbaa !80
  %16 = tail call ptr @RNA_def_int(ptr noundef %15, ptr noundef nonnull @.str.45, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 2147483647) #15
  %17 = load ptr, ptr %10, align 8, !tbaa !80
  %18 = tail call ptr @RNA_def_int(ptr noundef %17, ptr noundef nonnull @.str.47, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.5, i32 noundef -2147483648, i32 noundef 2147483647) #15
  ret void
}

; Function Attrs: optsize
declare i32 @WM_gesture_circle_invoke(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare i32 @WM_gesture_circle_modal(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @view3d_circle_select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !154 {
  %3 = alloca [2 x i32], align 4
  %4 = alloca %struct.ViewContext, align 8
  %5 = alloca %struct.ViewContext, align 8
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %7 = tail call ptr @CTX_data_active_object(ptr noundef %0) #15
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.45) #15
  %11 = load ptr, ptr %8, align 8, !tbaa !82
  %12 = tail call i32 @RNA_int_get(ptr noundef %11, ptr noundef nonnull @.str.47) #15
  %13 = icmp eq i32 %12, 3
  %14 = zext i1 %13 to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %15 = load ptr, ptr %8, align 8, !tbaa !82
  %16 = tail call i32 @RNA_int_get(ptr noundef %15, ptr noundef nonnull @.str.41) #15
  store i32 %16, ptr %3, align 4, !tbaa !65
  %17 = getelementptr inbounds i32, ptr %3, i64 1
  %18 = load ptr, ptr %8, align 8, !tbaa !82
  %19 = tail call i32 @RNA_int_get(ptr noundef %18, ptr noundef nonnull @.str.43) #15
  store i32 %19, ptr %17, align 4, !tbaa !65
  %20 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = tail call zeroext i8 @BKE_paint_select_elem_test(ptr noundef %7) #15
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = icmp eq ptr %7, null
  br i1 %26, label %68, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 27
  %29 = load i32, ptr %28, align 8, !tbaa !86
  %30 = and i32 %29, 96
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %65, label %32

32:                                               ; preds = %27, %22, %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #16
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #15
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %4) #17
  %33 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = sitofp i32 %10 to float
  call fastcc void @obedit_circle_select(ptr noundef nonnull %4, i8 noundef zeroext %14, ptr noundef nonnull %3, float noundef %36) #17
  %37 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %38 = load ptr, ptr %37, align 8, !tbaa !150
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %38) #15
  br label %60

39:                                               ; preds = %32
  %40 = tail call zeroext i8 @BKE_paint_select_face_test(ptr noundef %7) #15
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = sitofp i32 %10 to float
  call fastcc void @paint_facesel_circle_select(ptr noundef nonnull %4, i8 noundef zeroext %14, ptr noundef nonnull %3, float noundef %43) #17
  %44 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %45 = load ptr, ptr %44, align 8, !tbaa !150
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %45) #15
  br label %60

46:                                               ; preds = %39
  %47 = tail call zeroext i8 @BKE_paint_select_vert_test(ptr noundef %7) #15
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = sitofp i32 %10 to float
  call fastcc void @paint_vertsel_circle_select(ptr noundef nonnull %4, i8 noundef zeroext %14, ptr noundef nonnull %3, float noundef %50) #17
  %51 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %52 = load ptr, ptr %51, align 8, !tbaa !150
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %52) #15
  br label %60

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 27
  %55 = load i32, ptr %54, align 8, !tbaa !86
  %56 = and i32 %55, 64
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = sitofp i32 %10 to float
  call fastcc void @pose_circle_select(ptr noundef nonnull %4, i8 noundef zeroext %14, ptr noundef nonnull %3, float noundef %59) #17
  br label %60

60:                                               ; preds = %42, %58, %49, %35
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #16
  br label %74

61:                                               ; preds = %53
  %62 = zext i1 %13 to i32
  %63 = sitofp i32 %10 to float
  %64 = call i32 @PE_circle_select(ptr noundef %0, i32 noundef %62, ptr noundef nonnull %3, float noundef %63) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #16
  br label %74

65:                                               ; preds = %27
  %66 = and i32 %29, 2
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %25, %65
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %5) #17
  %69 = sitofp i32 %10 to float
  %70 = call fastcc zeroext i8 @object_circle_select(ptr noundef nonnull %5, i8 noundef zeroext %14, ptr noundef nonnull %3, float noundef %69) #17, !range !113
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %6) #15
  br label %73

73:                                               ; preds = %72, %68
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  br label %74

74:                                               ; preds = %73, %60, %61, %65
  %75 = phi i32 [ %64, %61 ], [ 2, %65 ], [ 4, %60 ], [ 4, %73 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i32 %75
}

; Function Attrs: optsize
declare void @WM_gesture_circle_cancel(ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_gesture_lasso_path_to_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_lasso_select(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #1 !PGOFuncName !155 {
  %7 = tail call ptr @CTX_data_active_object(ptr noundef %0) #15
  %8 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %6
  %12 = tail call zeroext i8 @BKE_paint_select_face_test(ptr noundef %7) #15
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call fastcc void @do_lasso_select_paintface(ptr noundef nonnull %1, ptr noundef %2, i16 noundef signext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) #17
  br label %45

15:                                               ; preds = %11
  %16 = tail call zeroext i8 @BKE_paint_select_vert_test(ptr noundef %7) #15
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call fastcc void @do_lasso_select_paintvert(ptr noundef nonnull %1, ptr noundef %2, i16 noundef signext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) #17
  br label %45

19:                                               ; preds = %15
  %20 = icmp eq ptr %7, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 27
  %23 = load i32, ptr %22, align 8, !tbaa !86
  %24 = and i32 %23, 28
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %21
  %27 = and i32 %23, 32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @PE_lasso_select(ptr noundef %0, ptr noundef %2, i16 noundef signext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) #15
  br label %45

31:                                               ; preds = %19, %26
  tail call fastcc void @do_lasso_select_objects(ptr noundef nonnull %1, ptr noundef %2, i16 noundef signext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) #17
  %32 = load ptr, ptr %1, align 8, !tbaa !47
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %32) #15
  br label %45

33:                                               ; preds = %6
  %34 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  %35 = load i16, ptr %34, align 8, !tbaa !91
  switch i16 %35, label %41 [
    i16 1, label %36
    i16 2, label %37
    i16 3, label %37
    i16 22, label %38
    i16 25, label %39
    i16 5, label %40
  ]

36:                                               ; preds = %33
  tail call fastcc void @do_lasso_select_mesh(ptr noundef nonnull %1, ptr noundef %2, i16 noundef signext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) #17
  br label %41

37:                                               ; preds = %33, %33
  tail call fastcc void @do_lasso_select_curve(ptr noundef nonnull %1, ptr noundef %2, i16 noundef signext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) #17
  br label %41

38:                                               ; preds = %33
  tail call fastcc void @do_lasso_select_lattice(ptr noundef nonnull %1, ptr noundef %2, i16 noundef signext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) #17
  br label %41

39:                                               ; preds = %33
  tail call fastcc void @do_lasso_select_armature(ptr noundef nonnull %1, ptr noundef %2, i16 noundef signext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) #17
  br label %41

40:                                               ; preds = %33
  tail call fastcc void @do_lasso_select_meta(ptr noundef nonnull %1, ptr noundef %2, i16 noundef signext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) #17
  br label %41

41:                                               ; preds = %33, %40, %39, %38, %37, %36
  %42 = load ptr, ptr %8, align 8, !tbaa !51
  %43 = getelementptr inbounds %struct.Object, ptr %42, i64 0, i32 19
  %44 = load ptr, ptr %43, align 8, !tbaa !150
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %44) #15
  br label %45

45:                                               ; preds = %14, %21, %31, %29, %18, %41
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_paint_select_face_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_lasso_select_paintface(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #1 !PGOFuncName !156 {
  %6 = alloca %struct.rcti, align 4
  %7 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %38, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 30
  %14 = load i32, ptr %13, align 8, !tbaa !157
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %12
  %17 = icmp eq i8 %3, 0
  %18 = icmp ne i8 %4, 0
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  tail call void @paintface_deselect_all_visible(ptr noundef nonnull %8, i32 noundef 2, i8 noundef zeroext 0) #15
  %21 = load i32, ptr %13, align 8, !tbaa !157
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i32 [ %21, %20 ], [ %14, %16 ]
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr @bm_vertoffs, align 4, !tbaa !65
  %25 = sext i16 %2 to i32
  call void @BLI_lasso_boundbox(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %25) #15
  %26 = load i32, ptr %6, align 4, !tbaa !160
  %27 = trunc i32 %26 to i16
  %28 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !161
  %30 = trunc i32 %29 to i16
  %31 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !162
  %33 = trunc i32 %32 to i16
  %34 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !163
  %36 = trunc i32 %35 to i16
  %37 = call zeroext i8 @EDBM_backbuf_border_mask_init(ptr noundef nonnull %0, ptr noundef %1, i16 noundef signext %2, i16 noundef signext %27, i16 noundef signext %30, i16 noundef signext %33, i16 noundef signext %36) #15
  call fastcc void @edbm_backbuf_check_and_select_tfaces(ptr noundef nonnull %10, i8 noundef zeroext %4) #17
  call void @EDBM_backbuf_free() #15
  call void @paintface_flush_flags(ptr noundef nonnull %8) #15
  br label %38

38:                                               ; preds = %5, %12, %22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_paint_select_vert_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_lasso_select_paintvert(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #1 !PGOFuncName !164 {
  %6 = alloca %struct.rcti, align 4
  %7 = alloca %struct.LassoSelectUserData, align 8
  %8 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.View3D, ptr %9, i64 0, i32 28
  %11 = load i16, ptr %10, align 8, !tbaa !165
  %12 = and i16 %11, 4096
  %13 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %53, label %18

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 26
  %20 = load i32, ptr %19, align 8, !tbaa !166
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %53, label %22

22:                                               ; preds = %18
  %23 = icmp eq i8 %3, 0
  %24 = icmp ne i8 %4, 0
  %25 = and i1 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void @paintvert_deselect_all_visible(ptr noundef nonnull %14, i32 noundef 2, i8 noundef zeroext 0) #15
  br label %27

27:                                               ; preds = %26, %22
  %28 = sext i16 %2 to i32
  call void @BLI_lasso_boundbox(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %28) #15
  %29 = icmp eq i16 %12, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %19, align 8, !tbaa !166
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr @bm_vertoffs, align 4, !tbaa !65
  %33 = load i32, ptr %6, align 4, !tbaa !160
  %34 = trunc i32 %33 to i16
  %35 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !161
  %37 = trunc i32 %36 to i16
  %38 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !162
  %40 = trunc i32 %39 to i16
  %41 = getelementptr inbounds %struct.rcti, ptr %6, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !163
  %43 = trunc i32 %42 to i16
  %44 = call zeroext i8 @EDBM_backbuf_border_mask_init(ptr noundef nonnull %0, ptr noundef %1, i16 noundef signext %2, i16 noundef signext %34, i16 noundef signext %37, i16 noundef signext %40, i16 noundef signext %43) #15
  call fastcc void @edbm_backbuf_check_and_select_verts_obmode(ptr noundef nonnull %16, i8 noundef zeroext %4) #17
  call void @EDBM_backbuf_free() #15
  br label %49

45:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #16
  call fastcc void @view3d_userdata_lassoselect_init(ptr noundef nonnull %7, ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %1, i32 noundef %28, i8 noundef zeroext %4) #17
  %46 = load ptr, ptr %13, align 8, !tbaa !50
  %47 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %46, ptr noundef %48) #15
  call void @meshobject_foreachScreenVert(ptr noundef nonnull %0, ptr noundef nonnull @do_lasso_select_meshobject__doSelectVert, ptr noundef nonnull %7, i32 noundef 7) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #16
  br label %49

49:                                               ; preds = %45, %30
  %50 = icmp eq i8 %4, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  call void @BKE_mesh_mselect_validate(ptr noundef nonnull %16) #15
  br label %52

52:                                               ; preds = %51, %49
  call void @paintvert_flush_flags(ptr noundef nonnull %14) #15
  br label %53

53:                                               ; preds = %5, %18, %52
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret void
}

; Function Attrs: optsize
declare i32 @PE_lasso_select(ptr noundef, ptr noundef, i16 noundef signext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_lasso_select_objects(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #1 !PGOFuncName !167 {
  %6 = icmp eq i8 %3, 0
  %7 = icmp ne i8 %4, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  tail call fastcc void @object_deselect_all_visible(ptr noundef %10, ptr noundef %12) #17
  br label %13

13:                                               ; preds = %9, %5
  %14 = load ptr, ptr %0, align 8, !tbaa !47
  %15 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !84
  %17 = icmp eq ptr %16, null
  br i1 %17, label %72, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %20 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %21 = sext i16 %2 to i32
  %22 = zext i1 %7 to i16
  %23 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 1
  br label %24

24:                                               ; preds = %18, %69
  %25 = phi ptr [ %16, %18 ], [ %70, %69 ]
  %26 = getelementptr inbounds %struct.Base, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !142
  %28 = load ptr, ptr %19, align 8, !tbaa !48
  %29 = getelementptr inbounds %struct.View3D, ptr %28, i64 0, i32 22
  %30 = load i32, ptr %29, align 8, !tbaa !141
  %31 = and i32 %30, %27
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %69, label %33

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.Base, ptr %25, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !101
  %36 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 102
  %37 = load i8, ptr %36, align 8, !tbaa !143
  %38 = and i8 %37, 3
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %33
  %41 = load ptr, ptr %20, align 8, !tbaa !45
  %42 = tail call i32 @ED_view3d_project_base(ptr noundef %41, ptr noundef nonnull %25) #15
  %43 = getelementptr inbounds %struct.Base, ptr %25, i64 0, i32 5
  %44 = load i16, ptr %43, align 4, !tbaa !168
  %45 = sext i16 %44 to i32
  %46 = getelementptr inbounds %struct.Base, ptr %25, i64 0, i32 6
  %47 = load i16, ptr %46, align 2, !tbaa !169
  %48 = sext i16 %47 to i32
  %49 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %1, i32 noundef %21, i32 noundef %45, i32 noundef %48, i32 noundef 12000) #15
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load ptr, ptr %34, align 8, !tbaa !101
  br label %59

53:                                               ; preds = %40
  tail call void @ED_base_object_select(ptr noundef nonnull %25, i16 noundef signext %22) #15
  %54 = getelementptr inbounds %struct.Base, ptr %25, i64 0, i32 4
  %55 = load i32, ptr %54, align 8, !tbaa !98
  %56 = trunc i32 %55 to i16
  %57 = load ptr, ptr %34, align 8, !tbaa !101
  %58 = getelementptr inbounds %struct.Object, ptr %57, i64 0, i32 53
  store i16 %56, ptr %58, align 4, !tbaa !170
  br label %59

59:                                               ; preds = %51, %53
  %60 = phi ptr [ %52, %51 ], [ %57, %53 ]
  %61 = load ptr, ptr %23, align 8, !tbaa !50
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 27
  %65 = load i32, ptr %64, align 8, !tbaa !86
  %66 = and i32 %65, 64
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  tail call fastcc void @do_lasso_select_pose(ptr noundef nonnull %0, ptr noundef nonnull %60, ptr noundef %1, i16 noundef signext %2, i8 noundef zeroext %4) #17
  br label %69

69:                                               ; preds = %24, %33, %68, %63, %59
  %70 = load ptr, ptr %25, align 8, !tbaa !84
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %24, !llvm.loop !171

72:                                               ; preds = %69, %13
  ret void
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_lasso_select_mesh(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #1 !PGOFuncName !172 {
  %6 = alloca %struct.LassoSelectUserData, align 8
  %7 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  %8 = load ptr, ptr %0, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  %11 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = tail call ptr @BKE_editmesh_from_object(ptr noundef %12) #15
  %14 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  store ptr %13, ptr %14, align 8, !tbaa !149
  %15 = sext i16 %2 to i32
  call void @BLI_lasso_boundbox(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %15) #15
  call fastcc void @view3d_userdata_lassoselect_init(ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef %1, i32 noundef %15, i8 noundef zeroext %4) #17
  %16 = icmp eq i8 %3, 0
  %17 = icmp ne i8 %4, 0
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load ptr, ptr %14, align 8, !tbaa !149
  call void @EDBM_flag_disable_all(ptr noundef %20, i8 noundef zeroext 1) #15
  br label %21

21:                                               ; preds = %19, %5
  %22 = load ptr, ptr %11, align 8, !tbaa !51
  %23 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %22, ptr noundef %24) #15
  %25 = load ptr, ptr %23, align 8, !tbaa !49
  %26 = getelementptr inbounds %struct.RegionView3D, ptr %25, i64 0, i32 1
  call void @glLoadMatrixf(ptr noundef nonnull %26) #15
  %27 = load i32, ptr %7, align 4, !tbaa !160
  %28 = trunc i32 %27 to i16
  %29 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !161
  %31 = trunc i32 %30 to i16
  %32 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !162
  %34 = trunc i32 %33 to i16
  %35 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !163
  %37 = trunc i32 %36 to i16
  %38 = call zeroext i8 @EDBM_backbuf_border_mask_init(ptr noundef nonnull %0, ptr noundef %1, i16 noundef signext %2, i16 noundef signext %28, i16 noundef signext %31, i16 noundef signext %34, i16 noundef signext %37) #15
  %39 = getelementptr inbounds %struct.ToolSettings, ptr %10, i64 0, i32 8
  %40 = load i16, ptr %39, align 2, !tbaa !174
  %41 = and i16 %40, 1
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %21
  %44 = icmp eq i8 %38, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %43
  %46 = load ptr, ptr %14, align 8, !tbaa !149
  call fastcc void @edbm_backbuf_check_and_select_verts(ptr noundef %46, i8 noundef zeroext %4) #17
  br label %48

47:                                               ; preds = %43
  call void @mesh_foreachScreenVert(ptr noundef nonnull %0, ptr noundef nonnull @do_lasso_select_mesh__doSelectVert, ptr noundef nonnull %6, i32 noundef 7) #15
  br label %48

48:                                               ; preds = %45, %47, %21
  %49 = load i16, ptr %39, align 2, !tbaa !174
  %50 = and i16 %49, 2
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.LassoSelectUserData, ptr %6, i64 0, i32 7
  store i32 0, ptr %53, align 8, !tbaa !181
  call void @mesh_foreachScreenEdge(ptr noundef nonnull %0, ptr noundef nonnull @do_lasso_select_mesh__doSelectEdge, ptr noundef nonnull %6, i32 noundef 4) #15
  %54 = getelementptr inbounds %struct.LassoSelectUserData, ptr %6, i64 0, i32 8
  %55 = load i8, ptr %54, align 4, !tbaa !183
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 1, ptr %53, align 8, !tbaa !181
  call void @mesh_foreachScreenEdge(ptr noundef nonnull %0, ptr noundef nonnull @do_lasso_select_mesh__doSelectEdge, ptr noundef nonnull %6, i32 noundef 4) #15
  br label %58

58:                                               ; preds = %52, %57, %48
  %59 = load i16, ptr %39, align 2, !tbaa !174
  %60 = and i16 %59, 4
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = icmp eq i8 %38, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %62
  %65 = load ptr, ptr %14, align 8, !tbaa !149
  call fastcc void @edbm_backbuf_check_and_select_faces(ptr noundef %65, i8 noundef zeroext %4) #17
  br label %67

66:                                               ; preds = %62
  call void @mesh_foreachScreenFace(ptr noundef nonnull %0, ptr noundef nonnull @do_lasso_select_mesh__doSelectFace, ptr noundef nonnull %6, i32 noundef 7) #15
  br label %67

67:                                               ; preds = %64, %66, %58
  call void @EDBM_backbuf_free() #15
  %68 = load ptr, ptr %14, align 8, !tbaa !149
  call void @EDBM_selectmode_flush(ptr noundef %68) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_lasso_select_curve(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #1 !PGOFuncName !184 {
  %6 = alloca %struct.LassoSelectUserData, align 8
  %7 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  %8 = sext i16 %2 to i32
  call void @BLI_lasso_boundbox(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %8) #15
  call fastcc void @view3d_userdata_lassoselect_init(ptr noundef nonnull %6, ptr noundef %0, ptr noundef nonnull %7, ptr noundef %1, i32 noundef %8, i8 noundef zeroext %4) #17
  %9 = icmp eq i8 %3, 0
  %10 = icmp ne i8 %4, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !150
  %17 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !185
  call void @ED_curve_deselect_all(ptr noundef %18) #15
  br label %19

19:                                               ; preds = %12, %5
  %20 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %21, ptr noundef %23) #15
  call void @nurbs_foreachScreenVert(ptr noundef %0, ptr noundef nonnull @do_lasso_select_curve__doSelect, ptr noundef nonnull %6, i32 noundef 7) #15
  %24 = load ptr, ptr %20, align 8, !tbaa !51
  %25 = getelementptr inbounds %struct.Object, ptr %24, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !150
  call void @BKE_curve_nurb_vert_active_validate(ptr noundef %26) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_lasso_select_lattice(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #1 !PGOFuncName !188 {
  %6 = alloca %struct.LassoSelectUserData, align 8
  %7 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  %8 = sext i16 %2 to i32
  call void @BLI_lasso_boundbox(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %8) #15
  call fastcc void @view3d_userdata_lassoselect_init(ptr noundef nonnull %6, ptr noundef %0, ptr noundef nonnull %7, ptr noundef %1, i32 noundef %8, i8 noundef zeroext %4) #17
  %9 = icmp eq i8 %3, 0
  %10 = icmp ne i8 %4, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  call void @ED_setflagsLatt(ptr noundef %14, i32 noundef 0) #15
  br label %15

15:                                               ; preds = %12, %5
  %16 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !51
  %18 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %17, ptr noundef %19) #15
  call void @lattice_foreachScreenVert(ptr noundef %0, ptr noundef nonnull @do_lasso_select_lattice__doSelect, ptr noundef nonnull %6, i32 noundef 7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_lasso_select_armature(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #1 !PGOFuncName !189 {
  %6 = alloca %struct.LassoSelectUserData, align 8
  %7 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  %8 = sext i16 %2 to i32
  call void @BLI_lasso_boundbox(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %8) #15
  call fastcc void @view3d_userdata_lassoselect_init(ptr noundef nonnull %6, ptr noundef %0, ptr noundef nonnull %7, ptr noundef %1, i32 noundef %8, i8 noundef zeroext %4) #17
  %9 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %10, ptr noundef %12) #15
  %13 = icmp eq i8 %3, 0
  %14 = icmp ne i8 %4, 0
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load ptr, ptr %9, align 8, !tbaa !51
  call void @ED_armature_deselect_all_visible(ptr noundef %17) #15
  br label %18

18:                                               ; preds = %16, %5
  call void @armature_foreachScreenBone(ptr noundef nonnull %0, ptr noundef nonnull @do_lasso_select_armature__doSelectBone, ptr noundef nonnull %6, i32 noundef 7) #15
  %19 = getelementptr inbounds %struct.LassoSelectUserData, ptr %6, i64 0, i32 9
  %20 = load i8, ptr %19, align 1, !tbaa !190
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %9, align 8, !tbaa !51
  %24 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 19
  %25 = load ptr, ptr %24, align 8, !tbaa !150
  %26 = getelementptr inbounds %struct.bArmature, ptr %25, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !191
  call void @ED_armature_sync_selection(ptr noundef %27) #15
  call void @ED_armature_validate_active(ptr noundef %25) #15
  %28 = load ptr, ptr %9, align 8, !tbaa !51
  call void @WM_main_add_notifier(i32 noundef 85327872, ptr noundef %28) #15
  br label %29

29:                                               ; preds = %22, %18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_lasso_select_meta(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #1 !PGOFuncName !193 {
  %6 = alloca %struct.LassoSelectUserData, align 8
  %7 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  %8 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %9 = icmp eq i8 %3, 0
  %10 = icmp ne i8 %4, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %5
  %13 = load ptr, ptr %8, align 8, !tbaa !51
  %14 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !150
  tail call void @BKE_mball_deselect_all(ptr noundef %15) #15
  br label %16

16:                                               ; preds = %12, %5
  %17 = sext i16 %2 to i32
  call void @BLI_lasso_boundbox(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %17) #15
  call fastcc void @view3d_userdata_lassoselect_init(ptr noundef nonnull %6, ptr noundef %0, ptr noundef nonnull %7, ptr noundef %1, i32 noundef %17, i8 noundef zeroext %4) #17
  %18 = load ptr, ptr %8, align 8, !tbaa !51
  %19 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %18, ptr noundef %20) #15
  call void @mball_foreachScreenElem(ptr noundef %0, ptr noundef nonnull @do_lasso_select_mball__doSelectElem, ptr noundef nonnull %6, i32 noundef 7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  ret void
}

; Function Attrs: optsize
declare void @paintface_deselect_all_visible(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_lasso_boundbox(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @EDBM_backbuf_border_mask_init(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_backbuf_check_and_select_tfaces(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #1 !PGOFuncName !194 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !195
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %8 = load i32, ptr %7, align 8, !tbaa !157
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %6
  %11 = icmp eq i8 %1, 0
  %12 = select i1 %11, i8 0, i8 2
  br label %13

13:                                               ; preds = %10, %24
  %14 = phi i32 [ 1, %10 ], [ %25, %24 ]
  %15 = phi ptr [ %4, %10 ], [ %26, %24 ]
  %16 = tail call zeroext i8 @EDBM_backbuf_check(i32 noundef %14) #15
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.MPoly, ptr %15, i64 0, i32 3
  %20 = load i8, ptr %19, align 2, !tbaa !196
  %21 = and i8 %20, -3
  %22 = or disjoint i8 %21, %12
  %23 = getelementptr inbounds %struct.MPoly, ptr %15, i64 0, i32 3
  store i8 %22, ptr %23, align 2, !tbaa !196
  br label %24

24:                                               ; preds = %13, %18
  %25 = add i32 %14, 1
  %26 = getelementptr inbounds %struct.MPoly, ptr %15, i64 1
  %27 = load i32, ptr %7, align 8, !tbaa !157
  %28 = icmp ugt i32 %25, %27
  br i1 %28, label %29, label %13, !llvm.loop !198

29:                                               ; preds = %24, %6, %2
  ret void
}

; Function Attrs: optsize
declare void @EDBM_backbuf_free() local_unnamed_addr #3

; Function Attrs: optsize
declare void @paintface_flush_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @EDBM_backbuf_check(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @paintvert_deselect_all_visible(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_backbuf_check_and_select_verts_obmode(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #1 !PGOFuncName !199 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !200
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %8 = load i32, ptr %7, align 8, !tbaa !166
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %6
  %11 = icmp eq i8 %1, 0
  br label %12

12:                                               ; preds = %10, %26
  %13 = phi i32 [ 1, %10 ], [ %27, %26 ]
  %14 = phi ptr [ %4, %10 ], [ %28, %26 ]
  %15 = tail call zeroext i8 @EDBM_backbuf_check(i32 noundef %13) #15
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.MVert, ptr %14, i64 0, i32 2
  %19 = load i8, ptr %18, align 2, !tbaa !201
  %20 = and i8 %19, 16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = or i8 %19, 1
  %24 = and i8 %19, -18
  %25 = select i1 %11, i8 %24, i8 %23
  store i8 %25, ptr %18, align 2, !tbaa !201
  br label %26

26:                                               ; preds = %12, %22, %17
  %27 = add i32 %13, 1
  %28 = getelementptr inbounds %struct.MVert, ptr %14, i64 1
  %29 = load i32, ptr %7, align 8, !tbaa !166
  %30 = icmp ugt i32 %27, %29
  br i1 %30, label %31, label %12, !llvm.loop !203

31:                                               ; preds = %26, %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_userdata_lassoselect_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #1 !PGOFuncName !204 {
  store ptr %1, ptr %0, align 8, !tbaa !205
  %7 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 1
  store ptr %2, ptr %7, align 8, !tbaa !206
  %8 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !207
  tail call void @BLI_rctf_rcti_copy(ptr noundef nonnull %8, ptr noundef %2) #15
  %10 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  store ptr %3, ptr %10, align 8, !tbaa !208
  %11 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  store i32 %4, ptr %11, align 8, !tbaa !209
  %12 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 6
  store i8 %5, ptr %12, align 4, !tbaa !210
  %13 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 7
  store i32 0, ptr %13, align 8, !tbaa !181
  %14 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 8
  store i8 0, ptr %14, align 4, !tbaa !183
  %15 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 9
  store i8 0, ptr %15, align 1, !tbaa !190
  ret void
}

; Function Attrs: optsize
declare void @ED_view3d_init_mats_rv3d(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @meshobject_foreachScreenVert(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_lasso_select_meshobject__doSelectVert(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, i32 %3) #1 !PGOFuncName !211 {
  %5 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !207
  %7 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %6, ptr noundef %2) #15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !208
  %12 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !209
  %14 = load float, ptr %2, align 4, !tbaa !52
  %15 = fptosi float %14 to i32
  %16 = getelementptr inbounds float, ptr %2, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !52
  %18 = fptosi float %17 to i32
  %19 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %18, i32 noundef 12000) #15
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 6
  %23 = load i8, ptr %22, align 4, !tbaa !210
  %24 = icmp ne i8 %23, 0
  %25 = getelementptr inbounds %struct.MVert, ptr %1, i64 0, i32 2
  %26 = load i8, ptr %25, align 2, !tbaa !201
  %27 = and i8 %26, -2
  %28 = zext i1 %24 to i8
  %29 = or disjoint i8 %27, %28
  store i8 %29, ptr %25, align 2, !tbaa !201
  br label %30

30:                                               ; preds = %21, %9, %4
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_mselect_validate(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @paintvert_flush_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_rctf_rcti_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BLI_lasso_is_point_inside(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @object_deselect_all_visible(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !212 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !84
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 22
  br label %8

8:                                                ; preds = %6, %23
  %9 = phi ptr [ %4, %6 ], [ %24, %23 ]
  %10 = getelementptr inbounds %struct.Base, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !142
  %12 = load i32, ptr %7, align 8, !tbaa !141
  %13 = and i32 %12, %11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.Base, ptr %9, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !101
  %18 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 102
  %19 = load i8, ptr %18, align 8, !tbaa !143
  %20 = and i8 %19, 3
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  tail call void @ED_base_object_select(ptr noundef nonnull %9, i16 noundef signext 0) #15
  br label %23

23:                                               ; preds = %8, %15, %22
  %24 = load ptr, ptr %9, align 8, !tbaa !84
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %8, !llvm.loop !213

26:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: optsize
declare i32 @ED_view3d_project_base(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_base_object_select(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_lasso_select_pose(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3, i8 noundef zeroext %4) unnamed_addr #1 !PGOFuncName !214 {
  %6 = alloca %struct.ViewContext, align 8
  %7 = alloca %struct.LassoSelectUserData, align 8
  %8 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #16
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !91
  %11 = icmp eq i16 %10, 25
  br i1 %11, label %12, label %34

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !215
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false), !tbaa.struct !216
  %17 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 1
  store ptr %1, ptr %17, align 8, !tbaa !50
  %18 = sext i16 %3 to i32
  call void @BLI_lasso_boundbox(ptr noundef nonnull %8, ptr noundef %2, i32 noundef %18) #15
  call fastcc void @view3d_userdata_lassoselect_init(ptr noundef nonnull %7, ptr noundef %0, ptr noundef nonnull %8, ptr noundef %2, i32 noundef %18, i8 noundef zeroext %4) #17
  %19 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %20, ptr noundef %22) #15
  call void @pose_foreachScreenBone(ptr noundef nonnull %6, ptr noundef nonnull @do_lasso_select_pose__doSelectBone, ptr noundef nonnull %7, i32 noundef 7) #15
  %23 = getelementptr inbounds %struct.LassoSelectUserData, ptr %7, i64 0, i32 9
  %24 = load i8, ptr %23, align 1, !tbaa !190
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %28 = load ptr, ptr %27, align 8, !tbaa !150
  %29 = getelementptr inbounds %struct.bArmature, ptr %28, i64 0, i32 8
  %30 = load i32, ptr %29, align 8, !tbaa !217
  %31 = and i32 %30, 16384
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  call void @DAG_id_tag_update(ptr noundef nonnull %1, i16 noundef signext 2) #15
  br label %34

34:                                               ; preds = %16, %33, %26, %5, %12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @pose_foreachScreenBone(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_lasso_select_pose__doSelectBone(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #1 !PGOFuncName !218 {
  %5 = load ptr, ptr %0, align 8, !tbaa !205
  %6 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !150
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !219
  %12 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 25
  %13 = load i32, ptr %12, align 8, !tbaa !221
  %14 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 15
  %15 = load i32, ptr %14, align 8, !tbaa !223
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %92, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 10
  %20 = load i32, ptr %19, align 8, !tbaa !224
  %21 = and i32 %20, 2097216
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %92

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
  br i1 %34, label %47, label %35

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !206
  %38 = tail call zeroext i8 @BLI_rcti_isect_pt(ptr noundef %37, i32 noundef %25, i32 noundef %28) #15
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !208
  %43 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !209
  %45 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %42, i32 noundef %44, i32 noundef %25, i32 noundef %28, i32 noundef 2147483647) #15
  %46 = icmp eq i8 %45, 0
  br label %47

47:                                               ; preds = %40, %35, %23
  %48 = phi i32 [ 1, %35 ], [ 0, %23 ], [ 1, %40 ]
  %49 = phi i1 [ true, %35 ], [ true, %23 ], [ %46, %40 ]
  %50 = icmp eq i32 %30, 12000
  br i1 %50, label %64, label %51

51:                                               ; preds = %47
  %52 = add nuw nsw i32 %48, 1
  %53 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !206
  %55 = tail call zeroext i8 @BLI_rcti_isect_pt(ptr noundef %54, i32 noundef %30, i32 noundef %33) #15
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !208
  %60 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !209
  %62 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %59, i32 noundef %61, i32 noundef %30, i32 noundef %33, i32 noundef 2147483647) #15
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %57, %51, %47
  %65 = phi i32 [ %52, %51 ], [ %48, %47 ], [ %52, %57 ]
  br i1 %49, label %66, label %75

66:                                               ; preds = %64
  %67 = icmp eq i32 %65, 2
  br i1 %67, label %68, label %87

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !208
  %71 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %72 = load i32, ptr %71, align 8, !tbaa !209
  %73 = tail call zeroext i8 @BLI_lasso_is_edge_inside(ptr noundef %70, i32 noundef %72, i32 noundef %25, i32 noundef %28, i32 noundef %30, i32 noundef %33, i32 noundef 2147483647) #15
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %57, %68, %64
  %76 = phi i8 [ 0, %68 ], [ 1, %64 ], [ 1, %57 ]
  %77 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 6
  %78 = load i8, ptr %77, align 4, !tbaa !210
  %79 = icmp ne i8 %78, 0
  %80 = load ptr, ptr %10, align 8, !tbaa !219
  %81 = getelementptr inbounds %struct.Bone, ptr %80, i64 0, i32 10
  %82 = load i32, ptr %81, align 8, !tbaa !224
  %83 = and i32 %82, -2
  %84 = zext i1 %79 to i32
  %85 = or disjoint i32 %83, %84
  store i32 %85, ptr %81, align 8, !tbaa !224
  %86 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 9
  store i8 1, ptr %86, align 1, !tbaa !190
  br label %87

87:                                               ; preds = %75, %68, %66
  %88 = phi i8 [ %76, %75 ], [ 0, %68 ], [ 0, %66 ]
  %89 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 9
  %90 = load i8, ptr %89, align 1, !tbaa !190
  %91 = or i8 %90, %88
  store i8 %91, ptr %89, align 1, !tbaa !190
  br label %92

92:                                               ; preds = %4, %87, %18
  ret void
}

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_isect_pt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BLI_lasso_is_edge_inside(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @EDBM_flag_disable_all(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glLoadMatrixf(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_backbuf_check_and_select_verts(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #1 !PGOFuncName !225 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #16
  %4 = load i32, ptr @bm_wireoffs, align 4, !tbaa !65
  %5 = load ptr, ptr %0, align 8, !tbaa !226
  %6 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %5, i8 noundef zeroext 1) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %2, %18
  %9 = phi i32 [ %19, %18 ], [ %4, %2 ]
  %10 = phi ptr [ %20, %18 ], [ %6, %2 ]
  %11 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %10) #17
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = call zeroext i8 @EDBM_backbuf_check(i32 noundef %9) #15
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 8, !tbaa !226
  call void @BM_vert_select_set(ptr noundef %17, ptr noundef nonnull %10, i8 noundef zeroext %1) #15
  br label %18

18:                                               ; preds = %13, %16, %8
  %19 = add i32 %9, 1
  %20 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #17
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !llvm.loop !228

22:                                               ; preds = %18, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  ret void
}

; Function Attrs: optsize
declare void @mesh_foreachScreenVert(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_lasso_select_mesh__doSelectVert(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 %3) #1 !PGOFuncName !229 {
  %5 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !207
  %7 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %6, ptr noundef %2) #15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !208
  %12 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !209
  %14 = load float, ptr %2, align 4, !tbaa !52
  %15 = fptosi float %14 to i32
  %16 = getelementptr inbounds float, ptr %2, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !52
  %18 = fptosi float %17 to i32
  %19 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %18, i32 noundef 12000) #15
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %9
  %22 = load ptr, ptr %0, align 8, !tbaa !205
  %23 = getelementptr inbounds %struct.ViewContext, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !149
  %25 = load ptr, ptr %24, align 8, !tbaa !226
  %26 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 6
  %27 = load i8, ptr %26, align 4, !tbaa !210
  tail call void @BM_vert_select_set(ptr noundef %25, ptr noundef %1, i8 noundef zeroext %27) #15
  br label %28

28:                                               ; preds = %21, %9, %4
  ret void
}

; Function Attrs: optsize
declare void @mesh_foreachScreenEdge(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_lasso_select_mesh__doSelectEdge(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #1 !PGOFuncName !230 {
  %6 = load i32, ptr @bm_solidoffs, align 4, !tbaa !65
  %7 = add i32 %6, %4
  %8 = tail call zeroext i8 @EDBM_backbuf_check(i32 noundef %7) #15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %63, label %10

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
  %22 = load i32, ptr %21, align 8, !tbaa !181
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !207
  %27 = tail call fastcc zeroext i8 @edge_fully_inside_rect(ptr noundef %26, ptr noundef nonnull %2, ptr noundef nonnull %3) #17, !range !113
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %63, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !208
  %32 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !209
  %34 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %31, i32 noundef %33, i32 noundef %12, i32 noundef %15, i32 noundef 12000) #15
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %63, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr %30, align 8, !tbaa !208
  %38 = load i32, ptr %32, align 8, !tbaa !209
  %39 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %37, i32 noundef %38, i32 noundef %17, i32 noundef %20, i32 noundef 12000) #15
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %63, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %0, align 8, !tbaa !205
  %43 = getelementptr inbounds %struct.ViewContext, ptr %42, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !149
  %45 = load ptr, ptr %44, align 8, !tbaa !226
  %46 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 6
  %47 = load i8, ptr %46, align 4, !tbaa !210
  tail call void @BM_edge_select_set(ptr noundef %45, ptr noundef %1, i8 noundef zeroext %47) #15
  %48 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 8
  store i8 1, ptr %48, align 4, !tbaa !183
  br label %63

49:                                               ; preds = %10
  %50 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !208
  %52 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !209
  %54 = tail call zeroext i8 @BLI_lasso_is_edge_inside(ptr noundef %51, i32 noundef %53, i32 noundef %12, i32 noundef %15, i32 noundef %17, i32 noundef %20, i32 noundef 12000) #15
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %49
  %57 = load ptr, ptr %0, align 8, !tbaa !205
  %58 = getelementptr inbounds %struct.ViewContext, ptr %57, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !149
  %60 = load ptr, ptr %59, align 8, !tbaa !226
  %61 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 6
  %62 = load i8, ptr %61, align 4, !tbaa !210
  tail call void @BM_edge_select_set(ptr noundef %60, ptr noundef %1, i8 noundef zeroext %62) #15
  br label %63

63:                                               ; preds = %41, %36, %29, %24, %56, %49, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_backbuf_check_and_select_faces(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #1 !PGOFuncName !231 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !226
  %5 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %4, i8 noundef zeroext 3) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %2, %17
  %8 = phi i32 [ %18, %17 ], [ 1, %2 ]
  %9 = phi ptr [ %19, %17 ], [ %5, %2 ]
  %10 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %9) #17
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = call zeroext i8 @EDBM_backbuf_check(i32 noundef %8) #15
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %0, align 8, !tbaa !226
  call void @BM_face_select_set(ptr noundef %16, ptr noundef nonnull %9, i8 noundef zeroext %1) #15
  br label %17

17:                                               ; preds = %12, %15, %7
  %18 = add i32 %8, 1
  %19 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %7, !llvm.loop !232

21:                                               ; preds = %17, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  ret void
}

; Function Attrs: optsize
declare void @mesh_foreachScreenFace(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_lasso_select_mesh__doSelectFace(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 %3) #1 !PGOFuncName !233 {
  %5 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !207
  %7 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %6, ptr noundef %2) #15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !208
  %12 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !209
  %14 = load float, ptr %2, align 4, !tbaa !52
  %15 = fptosi float %14 to i32
  %16 = getelementptr inbounds float, ptr %2, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !52
  %18 = fptosi float %17 to i32
  %19 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %18, i32 noundef 12000) #15
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %9
  %22 = load ptr, ptr %0, align 8, !tbaa !205
  %23 = getelementptr inbounds %struct.ViewContext, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !149
  %25 = load ptr, ptr %24, align 8, !tbaa !226
  %26 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 6
  %27 = load i8, ptr %26, align 4, !tbaa !210
  tail call void @BM_face_select_set(ptr noundef %25, ptr noundef %1, i8 noundef zeroext %27) #15
  br label %28

28:                                               ; preds = %21, %9, %4
  ret void
}

; Function Attrs: optsize
declare void @EDBM_selectmode_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #1 !PGOFuncName !234 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #17
  %4 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #17
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !235 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !236
  %4 = and i8 %3, 2
  ret i8 %4
}

; Function Attrs: optsize
declare void @BM_vert_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #1 !PGOFuncName !238 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !239
  %4 = tail call ptr %3(ptr noundef %0) #15
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #1 !PGOFuncName !241 {
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %4, align 4, !tbaa !242
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %5, align 8, !tbaa !243
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %6, align 8, !tbaa !239
  switch i8 %2, label %13 [
    i8 1, label %7
    i8 2, label %9
    i8 3, label %11
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  br label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  br label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  br label %14

13:                                               ; preds = %3
  unreachable

14:                                               ; preds = %11, %9, %7
  %15 = phi ptr [ %12, %11 ], [ %10, %9 ], [ %8, %7 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !84
  store ptr %16, ptr %0, align 8, !tbaa !104
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @edge_fully_inside_rect(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !PGOFuncName !244 {
  %4 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %0, ptr noundef %1) #15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %0, ptr noundef %2) #15
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i8 [ 0, %3 ], [ %9, %6 ]
  ret i8 %11
}

; Function Attrs: optsize
declare void @BM_edge_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_face_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_curve_deselect_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @nurbs_foreachScreenVert(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_lasso_select_curve__doSelect(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #1 !PGOFuncName !245 {
  %7 = load ptr, ptr %0, align 8, !tbaa !205
  %8 = getelementptr inbounds %struct.ViewContext, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !150
  %12 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !208
  %14 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !209
  %16 = load float, ptr %5, align 4, !tbaa !52
  %17 = fptosi float %16 to i32
  %18 = getelementptr inbounds float, ptr %5, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !52
  %20 = fptosi float %19 to i32
  %21 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %20, i32 noundef 12000) #15
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %72, label %23

23:                                               ; preds = %6
  %24 = icmp eq ptr %2, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 6
  %27 = load i8, ptr %26, align 4, !tbaa !210
  %28 = icmp ne i8 %27, 0
  %29 = getelementptr inbounds %struct.BPoint, ptr %2, i64 0, i32 3
  %30 = load i16, ptr %29, align 4, !tbaa !246
  %31 = and i16 %30, -2
  %32 = zext i1 %28 to i16
  %33 = or disjoint i16 %31, %32
  %34 = getelementptr inbounds %struct.BPoint, ptr %2, i64 0, i32 3
  store i16 %33, ptr %34, align 4, !tbaa !246
  br label %72

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.Curve, ptr %11, i64 0, i32 16
  %37 = load i16, ptr %36, align 8, !tbaa !248
  %38 = and i16 %37, 1
  %39 = icmp eq i16 %38, 0
  %40 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 6
  %41 = load i8, ptr %40, align 4, !tbaa !210
  %42 = icmp ne i8 %41, 0
  br i1 %39, label %52, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  %45 = load i8, ptr %44, align 4, !tbaa !249
  %46 = and i8 %45, -2
  %47 = zext i1 %42 to i8
  %48 = or disjoint i8 %46, %47
  %49 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  store i8 %48, ptr %49, align 1, !tbaa !251
  %50 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  store i8 %48, ptr %50, align 4, !tbaa !249
  %51 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  store i8 %48, ptr %51, align 1, !tbaa !252
  br label %72

52:                                               ; preds = %35
  %53 = zext i1 %42 to i8
  switch i32 %4, label %66 [
    i32 0, label %54
    i32 1, label %60
  ]

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  %56 = load i8, ptr %55, align 1, !tbaa !252
  %57 = and i8 %56, -2
  %58 = or disjoint i8 %57, %53
  %59 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  store i8 %58, ptr %59, align 1, !tbaa !252
  br label %72

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  %62 = load i8, ptr %61, align 4, !tbaa !249
  %63 = and i8 %62, -2
  %64 = or disjoint i8 %63, %53
  %65 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  store i8 %64, ptr %65, align 4, !tbaa !249
  br label %72

66:                                               ; preds = %52
  %67 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  %68 = load i8, ptr %67, align 1, !tbaa !251
  %69 = and i8 %68, -2
  %70 = or disjoint i8 %69, %53
  %71 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  store i8 %70, ptr %71, align 1, !tbaa !251
  br label %72

72:                                               ; preds = %25, %54, %66, %60, %43, %6
  ret void
}

; Function Attrs: optsize
declare void @BKE_curve_nurb_vert_active_validate(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_setflagsLatt(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @lattice_foreachScreenVert(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_lasso_select_lattice__doSelect(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) #1 !PGOFuncName !253 {
  %4 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !207
  %6 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %5, ptr noundef %2) #15
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !208
  %11 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !209
  %13 = load float, ptr %2, align 4, !tbaa !52
  %14 = fptosi float %13 to i32
  %15 = getelementptr inbounds float, ptr %2, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !52
  %17 = fptosi float %16 to i32
  %18 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %17, i32 noundef 12000) #15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 6
  %22 = load i8, ptr %21, align 4, !tbaa !210
  %23 = icmp ne i8 %22, 0
  %24 = getelementptr inbounds %struct.BPoint, ptr %1, i64 0, i32 3
  %25 = load i16, ptr %24, align 4, !tbaa !246
  %26 = and i16 %25, -2
  %27 = zext i1 %23 to i16
  %28 = or disjoint i16 %26, %27
  %29 = getelementptr inbounds %struct.BPoint, ptr %1, i64 0, i32 3
  store i16 %28, ptr %29, align 4, !tbaa !246
  br label %30

30:                                               ; preds = %20, %8, %3
  ret void
}

; Function Attrs: optsize
declare void @ED_armature_deselect_all_visible(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @armature_foreachScreenBone(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_lasso_select_armature__doSelectBone(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #1 !PGOFuncName !254 {
  %5 = load ptr, ptr %0, align 8, !tbaa !205
  %6 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !150
  %10 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 6
  %11 = load i8, ptr %10, align 4, !tbaa !210
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 15
  %14 = load i32, ptr %13, align 8, !tbaa !223
  %15 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 10
  %16 = load i32, ptr %15, align 8, !tbaa !255
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %12, label %25, label %19

19:                                               ; preds = %4
  br i1 %18, label %111, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %22 = load i32, ptr %21, align 4, !tbaa !257
  %23 = and i32 %22, 2098176
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %111

25:                                               ; preds = %4
  br i1 %18, label %111, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %28 = load i32, ptr %27, align 4, !tbaa !257
  %29 = and i32 %28, 1024
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %111

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
  %42 = icmp ne i32 %33, 12000
  br i1 %42, label %43, label %63

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !206
  %46 = tail call zeroext i8 @BLI_rcti_isect_pt(ptr noundef %45, i32 noundef %33, i32 noundef %36) #15
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !208
  %51 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %52 = load i32, ptr %51, align 8, !tbaa !209
  %53 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %50, i32 noundef %52, i32 noundef %33, i32 noundef %36, i32 noundef 2147483647) #15
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %48
  %56 = load i8, ptr %10, align 4, !tbaa !210
  %57 = icmp eq i8 %56, 0
  %58 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %59 = load i32, ptr %58, align 4, !tbaa !257
  %60 = and i32 %59, -3
  %61 = select i1 %57, i32 0, i32 2
  %62 = or disjoint i32 %60, %61
  store i32 %62, ptr %58, align 4, !tbaa !257
  br label %63

63:                                               ; preds = %55, %43, %48, %31
  %64 = phi i1 [ true, %48 ], [ true, %43 ], [ true, %31 ], [ false, %55 ]
  %65 = phi i8 [ 0, %48 ], [ 0, %43 ], [ 0, %31 ], [ 1, %55 ]
  %66 = icmp eq i32 %38, 12000
  br i1 %66, label %106, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !206
  %70 = tail call zeroext i8 @BLI_rcti_isect_pt(ptr noundef %69, i32 noundef %38, i32 noundef %41) #15
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %88, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !208
  %75 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %76 = load i32, ptr %75, align 8, !tbaa !209
  %77 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %74, i32 noundef %76, i32 noundef %38, i32 noundef %41, i32 noundef 2147483647) #15
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %72
  %80 = load i8, ptr %10, align 4, !tbaa !210
  %81 = icmp eq i8 %80, 0
  %82 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %83 = load i32, ptr %82, align 4, !tbaa !257
  br i1 %81, label %86, label %84

84:                                               ; preds = %79
  %85 = or i32 %83, 4
  store i32 %85, ptr %82, align 4, !tbaa !257
  br label %106

86:                                               ; preds = %79
  %87 = and i32 %83, -5
  store i32 %87, ptr %82, align 4, !tbaa !257
  br label %106

88:                                               ; preds = %67, %72
  %89 = and i1 %42, %64
  br i1 %89, label %90, label %106

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %92 = load ptr, ptr %91, align 8, !tbaa !208
  %93 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %94 = load i32, ptr %93, align 8, !tbaa !209
  %95 = tail call zeroext i8 @BLI_lasso_is_edge_inside(ptr noundef %92, i32 noundef %94, i32 noundef %33, i32 noundef %36, i32 noundef %38, i32 noundef %41, i32 noundef 2147483647) #15
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %90
  %98 = load i8, ptr %10, align 4, !tbaa !210
  %99 = icmp eq i8 %98, 0
  %100 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %101 = load i32, ptr %100, align 4, !tbaa !257
  %102 = and i32 %101, -8
  %103 = select i1 %99, i32 0, i32 7
  %104 = or disjoint i32 %102, %103
  store i32 %104, ptr %100, align 4, !tbaa !257
  %105 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 9
  store i8 1, ptr %105, align 1, !tbaa !190
  br label %106

106:                                              ; preds = %63, %86, %84, %97, %90, %88
  %107 = phi i8 [ 0, %97 ], [ 0, %90 ], [ %65, %88 ], [ %65, %63 ], [ 1, %86 ], [ 1, %84 ]
  %108 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 9
  %109 = load i8, ptr %108, align 1, !tbaa !190
  %110 = or i8 %109, %107
  store i8 %110, ptr %108, align 1, !tbaa !190
  br label %111

111:                                              ; preds = %25, %19, %106, %26, %20
  ret void
}

; Function Attrs: optsize
declare void @ED_armature_sync_selection(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_armature_validate_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_mball_deselect_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mball_foreachScreenElem(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_lasso_select_mball__doSelectElem(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2) #1 !PGOFuncName !258 {
  %4 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !207
  %6 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %5, ptr noundef %2) #15
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !208
  %11 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !209
  %13 = load float, ptr %2, align 4, !tbaa !52
  %14 = fptosi float %13 to i32
  %15 = getelementptr inbounds float, ptr %2, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !52
  %17 = fptosi float %16 to i32
  %18 = tail call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %17, i32 noundef 2147483647) #15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 6
  %22 = load i8, ptr %21, align 4, !tbaa !210
  %23 = icmp ne i8 %22, 0
  %24 = getelementptr inbounds %struct.MetaElem, ptr %1, i64 0, i32 4
  %25 = load i16, ptr %24, align 2, !tbaa !259
  %26 = and i16 %25, -2
  %27 = zext i1 %23 to i16
  %28 = or disjoint i16 %26, %27
  store i16 %28, ptr %24, align 2, !tbaa !259
  %29 = getelementptr inbounds %struct.LassoSelectUserData, ptr %0, i64 0, i32 9
  store i8 1, ptr %29, align 1, !tbaa !190
  br label %30

30:                                               ; preds = %20, %8, %3
  ret void
}

; Function Attrs: optsize
declare i32 @ED_operator_region_view3d_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_paint_select_elem_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @CTX_data_selectable_bases(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @ED_base_object_activate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @len_manhattan_v2v2_int(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !261 {
  %2 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call fastcc void @sub_v2_v2v2_int(ptr noundef nonnull %2, ptr noundef %0) #17
  %3 = call fastcc i32 @len_manhattan_v2_int(ptr noundef nonnull %2) #17, !range !262
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2_int(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !263 {
  %3 = load i32, ptr %1, align 4, !tbaa !65
  store i32 %3, ptr %0, align 4, !tbaa !65
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !65
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %5, ptr %6, align 4, !tbaa !65
  ret void
}

; Function Attrs: optsize
declare void @BLI_rcti_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare signext i16 @view3d_opengl_select(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef signext i16 @selectbuffer_ret_hits_9(ptr nocapture noundef %0, i16 noundef signext %1, i16 noundef returned signext %2) unnamed_addr #11 !PGOFuncName !264 {
  %4 = sext i16 %1 to i32
  %5 = shl nsw i32 %4, 2
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, ptr %0, i64 %6
  %8 = sext i16 %2 to i32
  %9 = shl nsw i32 %8, 2
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr align 4 %7, i64 %11, i1 false)
  ret i16 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef signext i16 @selectbuffer_ret_hits_5(ptr nocapture noundef %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef returned signext %3) unnamed_addr #11 !PGOFuncName !265 {
  %5 = sext i16 %1 to i32
  %6 = sext i16 %2 to i32
  %7 = add nsw i32 %6, %5
  %8 = shl nsw i32 %7, 2
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %0, i64 %9
  %11 = sext i16 %3 to i32
  %12 = shl nsw i32 %11, 2
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr align 4 %10, i64 %14, i1 false)
  ret i16 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sub_v2_v2v2_int(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !266 {
  %3 = load i32, ptr @mixed_bones_object_selectbuffer.last_mval, align 4, !tbaa !65
  %4 = load i32, ptr %1, align 4, !tbaa !65
  %5 = sub nsw i32 %3, %4
  store i32 %5, ptr %0, align 4, !tbaa !65
  %6 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @mixed_bones_object_selectbuffer.last_mval, i64 0, i64 1), align 4, !tbaa !65
  %7 = getelementptr inbounds i32, ptr %1, i64 1
  %8 = load i32, ptr %7, align 4, !tbaa !65
  %9 = sub nsw i32 %6, %8
  %10 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %9, ptr %10, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @len_manhattan_v2_int(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !267 {
  %2 = load i32, ptr %0, align 4, !tbaa !65
  %3 = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %4 = getelementptr inbounds i32, ptr %0, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !65
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = add nuw nsw i32 %6, %3
  ret i32 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_operator_properties_border_to_rcti(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_mesh_box_select(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #1 !PGOFuncName !268 {
  %5 = alloca %struct.BoxSelectUserData, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #16
  %6 = load ptr, ptr %0, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !173
  call fastcc void @view3d_userdata_boxselect_init(ptr noundef nonnull %5, ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %2) #17
  %9 = icmp eq i8 %3, 0
  %10 = icmp ne i8 %2, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !149
  call void @EDBM_flag_disable_all(ptr noundef %14, i8 noundef zeroext 1) #15
  br label %15

15:                                               ; preds = %12, %4
  %16 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !51
  %18 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %17, ptr noundef %19) #15
  %20 = load ptr, ptr %18, align 8, !tbaa !49
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %20, i64 0, i32 1
  call void @glLoadMatrixf(ptr noundef nonnull %21) #15
  %22 = load i32, ptr %1, align 4, !tbaa !160
  %23 = trunc i32 %22 to i16
  %24 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !161
  %26 = trunc i32 %25 to i16
  %27 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !162
  %29 = trunc i32 %28 to i16
  %30 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !163
  %32 = trunc i32 %31 to i16
  %33 = call zeroext i8 @EDBM_backbuf_border_init(ptr noundef nonnull %0, i16 noundef signext %23, i16 noundef signext %26, i16 noundef signext %29, i16 noundef signext %32) #15
  %34 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 8
  %35 = load i16, ptr %34, align 2, !tbaa !174
  %36 = and i16 %35, 1
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %15
  %39 = icmp eq i8 %33, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !149
  call fastcc void @edbm_backbuf_check_and_select_verts(ptr noundef %42, i8 noundef zeroext %2) #17
  br label %44

43:                                               ; preds = %38
  call void @mesh_foreachScreenVert(ptr noundef nonnull %0, ptr noundef nonnull @do_mesh_box_select__doSelectVert, ptr noundef nonnull %5, i32 noundef 7) #15
  br label %44

44:                                               ; preds = %40, %43, %15
  %45 = load i16, ptr %34, align 2, !tbaa !174
  %46 = and i16 %45, 2
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.BoxSelectUserData, ptr %5, i64 0, i32 5
  store i32 0, ptr %49, align 4, !tbaa !269
  call void @mesh_foreachScreenEdge(ptr noundef nonnull %0, ptr noundef nonnull @do_mesh_box_select__doSelectEdge, ptr noundef nonnull %5, i32 noundef 4) #15
  %50 = getelementptr inbounds %struct.BoxSelectUserData, ptr %5, i64 0, i32 6
  %51 = load i8, ptr %50, align 8, !tbaa !271
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 1, ptr %49, align 4, !tbaa !269
  call void @mesh_foreachScreenEdge(ptr noundef nonnull %0, ptr noundef nonnull @do_mesh_box_select__doSelectEdge, ptr noundef nonnull %5, i32 noundef 4) #15
  br label %54

54:                                               ; preds = %48, %53, %44
  %55 = load i16, ptr %34, align 2, !tbaa !174
  %56 = and i16 %55, 4
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = icmp eq i8 %33, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !149
  call fastcc void @edbm_backbuf_check_and_select_faces(ptr noundef %62, i8 noundef zeroext %2) #17
  br label %64

63:                                               ; preds = %58
  call void @mesh_foreachScreenFace(ptr noundef nonnull %0, ptr noundef nonnull @do_mesh_box_select__doSelectFace, ptr noundef nonnull %5, i32 noundef 7) #15
  br label %64

64:                                               ; preds = %60, %63, %54
  call void @EDBM_backbuf_free() #15
  %65 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !149
  call void @EDBM_selectmode_flush(ptr noundef %66) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_nurbs_box_select(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #1 !PGOFuncName !272 {
  %5 = alloca %struct.BoxSelectUserData, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #16
  call fastcc void @view3d_userdata_boxselect_init(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #17
  %6 = icmp eq i8 %3, 0
  %7 = icmp ne i8 %2, 0
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !150
  %14 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !185
  call void @ED_curve_deselect_all(ptr noundef %15) #15
  br label %16

16:                                               ; preds = %9, %4
  %17 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  %19 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %18, ptr noundef %20) #15
  call void @nurbs_foreachScreenVert(ptr noundef %0, ptr noundef nonnull @do_nurbs_box_select__doSelect, ptr noundef nonnull %5, i32 noundef 7) #15
  %21 = load ptr, ptr %17, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !150
  call void @BKE_curve_nurb_vert_active_validate(ptr noundef %23) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_meta_box_select(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #1 !PGOFuncName !273 {
  %5 = alloca [40000 x i32], align 16
  %6 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(i64 160000, ptr nonnull %5) #16
  %10 = call signext i16 @view3d_opengl_select(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 10000, ptr noundef %1, i8 noundef zeroext 0) #15
  %11 = icmp eq i8 %3, 0
  %12 = icmp ne i8 %2, 0
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  call void @BKE_mball_deselect_all(ptr noundef %9) #15
  br label %15

15:                                               ; preds = %14, %4
  %16 = getelementptr inbounds %struct.MetaBall, ptr %9, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !274
  %18 = load ptr, ptr %17, align 8, !tbaa !84
  %19 = icmp eq ptr %18, null
  br i1 %19, label %63, label %20

20:                                               ; preds = %15
  %21 = sext i16 %10 to i64
  %22 = icmp sgt i16 %10, 0
  %23 = icmp eq i8 %2, 0
  br label %24

24:                                               ; preds = %20, %60
  %25 = phi ptr [ %18, %20 ], [ %61, %60 ]
  br i1 %22, label %26, label %60

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.MetaElem, ptr %25, i64 0, i32 5
  %28 = load i16, ptr %27, align 4, !tbaa !276
  %29 = sext i16 %28 to i32
  %30 = getelementptr inbounds %struct.MetaElem, ptr %25, i64 0, i32 6
  br label %34

31:                                               ; preds = %49
  %32 = add nuw nsw i64 %35, 1
  %33 = icmp eq i64 %32, %21
  br i1 %33, label %60, label %34, !llvm.loop !277

34:                                               ; preds = %26, %31
  %35 = phi i64 [ 0, %26 ], [ %32, %31 ]
  %36 = shl nsw i64 %35, 2
  %37 = or disjoint i64 %36, 3
  %38 = getelementptr inbounds [40000 x i32], ptr %5, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !65
  %40 = icmp eq i32 %39, %29
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.MetaElem, ptr %25, i64 0, i32 4
  %43 = load i16, ptr %42, align 2, !tbaa !259
  br i1 %23, label %46, label %44

44:                                               ; preds = %41
  %45 = or i16 %43, 17
  store i16 %45, ptr %42, align 2, !tbaa !259
  br label %60

46:                                               ; preds = %41
  %47 = and i16 %43, -18
  %48 = or disjoint i16 %47, 16
  store i16 %48, ptr %42, align 2, !tbaa !259
  br label %60

49:                                               ; preds = %34
  %50 = load i16, ptr %30, align 2, !tbaa !278
  %51 = sext i16 %50 to i32
  %52 = icmp eq i32 %39, %51
  br i1 %52, label %53, label %31

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.MetaElem, ptr %25, i64 0, i32 4
  %55 = load i16, ptr %54, align 2, !tbaa !259
  %56 = and i16 %55, -18
  br i1 %23, label %59, label %57

57:                                               ; preds = %53
  %58 = or disjoint i16 %56, 1
  store i16 %58, ptr %54, align 2, !tbaa !259
  br label %60

59:                                               ; preds = %53
  store i16 %56, ptr %54, align 2, !tbaa !259
  br label %60

60:                                               ; preds = %31, %24, %46, %44, %59, %57
  %61 = load ptr, ptr %25, align 8, !tbaa !84
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %24, !llvm.loop !279

63:                                               ; preds = %60, %15
  call void @llvm.lifetime.end.p0(i64 160000, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @do_armature_box_select(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #1 !PGOFuncName !280 {
  %5 = alloca [40000 x i32], align 16
  %6 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(i64 160000, ptr nonnull %5) #16
  %10 = call signext i16 @view3d_opengl_select(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 10000, ptr noundef %1, i8 noundef zeroext 0) #15
  %11 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !191
  %13 = load ptr, ptr %12, align 8, !tbaa !84
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %4, %15
  %16 = phi ptr [ %20, %15 ], [ %13, %4 ]
  %17 = getelementptr inbounds %struct.EditBone, ptr %16, i64 0, i32 9
  %18 = load i32, ptr %17, align 4, !tbaa !257
  %19 = and i32 %18, -129
  store i32 %19, ptr %17, align 4, !tbaa !257
  %20 = load ptr, ptr %16, align 8, !tbaa !84
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %15, !llvm.loop !281

22:                                               ; preds = %15, %4
  %23 = icmp eq i8 %3, 0
  %24 = icmp ne i8 %2, 0
  %25 = and i1 %24, %23
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load ptr, ptr %6, align 8, !tbaa !51
  call void @ED_armature_deselect_all_visible(ptr noundef %27) #15
  br label %28

28:                                               ; preds = %26, %22
  %29 = sext i16 %10 to i32
  %30 = icmp sgt i16 %10, 0
  br i1 %30, label %31, label %76

31:                                               ; preds = %28
  %32 = icmp eq i8 %2, 0
  %33 = zext nneg i32 %29 to i64
  br label %34

34:                                               ; preds = %31, %73
  %35 = phi i64 [ 0, %31 ], [ %74, %73 ]
  %36 = shl nsw i64 %35, 2
  %37 = or disjoint i64 %36, 3
  %38 = getelementptr inbounds [40000 x i32], ptr %5, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !65
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %73, label %41

41:                                               ; preds = %34
  %42 = load ptr, ptr %11, align 8, !tbaa !191
  %43 = and i32 %39, -1879048193
  %44 = call ptr @BLI_findlink(ptr noundef %42, i32 noundef %43) #15
  br i1 %32, label %50, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.EditBone, ptr %44, i64 0, i32 9
  %47 = load i32, ptr %46, align 4, !tbaa !257
  %48 = and i32 %47, 2097152
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %73

50:                                               ; preds = %41
  %51 = and i32 %39, 536870912
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %63, label %58

53:                                               ; preds = %45
  %54 = and i32 %39, 536870912
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = or i32 %47, 132
  store i32 %57, ptr %46, align 4, !tbaa !257
  br label %63

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.EditBone, ptr %44, i64 0, i32 9
  %60 = load i32, ptr %59, align 4, !tbaa !257
  %61 = and i32 %60, -133
  %62 = or disjoint i32 %61, 128
  store i32 %62, ptr %59, align 4, !tbaa !257
  br label %63

63:                                               ; preds = %53, %56, %58, %50
  %64 = and i32 %39, 268435456
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.EditBone, ptr %44, i64 0, i32 9
  %68 = load i32, ptr %67, align 4, !tbaa !257
  %69 = or i32 %68, 130
  %70 = and i32 %68, -131
  %71 = or disjoint i32 %70, 128
  %72 = select i1 %32, i32 %71, i32 %69
  store i32 %72, ptr %67, align 4, !tbaa !257
  br label %73

73:                                               ; preds = %66, %45, %63, %34
  %74 = add nuw nsw i64 %35, 1
  %75 = icmp eq i64 %74, %33
  br i1 %75, label %76, label %34, !llvm.loop !282

76:                                               ; preds = %73, %28
  %77 = load ptr, ptr %11, align 8, !tbaa !191
  %78 = load ptr, ptr %77, align 8, !tbaa !84
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %101, %76
  br i1 %30, label %81, label %137

81:                                               ; preds = %80
  %82 = icmp eq i8 %2, 0
  %83 = zext nneg i32 %29 to i64
  br label %104

84:                                               ; preds = %76, %101
  %85 = phi ptr [ %102, %101 ], [ %78, %76 ]
  %86 = getelementptr inbounds %struct.EditBone, ptr %85, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !283
  %88 = icmp eq ptr %87, null
  br i1 %88, label %101, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.EditBone, ptr %85, i64 0, i32 9
  %91 = load i32, ptr %90, align 4, !tbaa !257
  %92 = and i32 %91, 16
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.EditBone, ptr %87, i64 0, i32 9
  %96 = load i32, ptr %95, align 4, !tbaa !257
  %97 = and i32 %96, 128
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %94
  %100 = or i32 %91, 128
  store i32 %100, ptr %90, align 4, !tbaa !257
  br label %101

101:                                              ; preds = %84, %89, %99, %94
  %102 = load ptr, ptr %85, align 8, !tbaa !84
  %103 = icmp eq ptr %102, null
  br i1 %103, label %80, label %84, !llvm.loop !284

104:                                              ; preds = %81, %132
  %105 = phi i64 [ 0, %81 ], [ %133, %132 ]
  %106 = shl nsw i64 %105, 2
  %107 = or disjoint i64 %106, 3
  %108 = getelementptr inbounds [40000 x i32], ptr %5, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !65
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %132, label %111

111:                                              ; preds = %104
  %112 = load ptr, ptr %11, align 8, !tbaa !191
  %113 = and i32 %109, -1879048193
  %114 = call ptr @BLI_findlink(ptr noundef %112, i32 noundef %113) #15
  %115 = and i32 %109, 1073741824
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %132, label %117

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.EditBone, ptr %114, i64 0, i32 9
  %119 = load i32, ptr %118, align 4, !tbaa !257
  br i1 %82, label %123, label %120

120:                                              ; preds = %117
  %121 = and i32 %119, 2097280
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %126, label %132

123:                                              ; preds = %117
  %124 = and i32 %119, 128
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %132

126:                                              ; preds = %120
  %127 = or i32 %119, 7
  br label %130

128:                                              ; preds = %123
  %129 = and i32 %119, -136
  br label %130

130:                                              ; preds = %126, %128
  %131 = phi i32 [ %129, %128 ], [ %127, %126 ]
  store i32 %131, ptr %118, align 4, !tbaa !257
  br label %132

132:                                              ; preds = %130, %111, %123, %120, %104
  %133 = add nuw nsw i64 %105, 1
  %134 = icmp eq i64 %133, %83
  br i1 %134, label %135, label %104, !llvm.loop !285

135:                                              ; preds = %132
  %136 = load ptr, ptr %11, align 8, !tbaa !191
  br label %137

137:                                              ; preds = %135, %80
  %138 = phi i32 [ 4, %135 ], [ 2, %80 ]
  %139 = phi ptr [ %136, %135 ], [ %77, %80 ]
  call void @ED_armature_sync_selection(ptr noundef %139) #15
  call void @llvm.lifetime.end.p0(i64 160000, ptr nonnull %5) #16
  ret i32 %138
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_lattice_box_select(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #1 !PGOFuncName !286 {
  %5 = alloca %struct.BoxSelectUserData, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #16
  call fastcc void @view3d_userdata_boxselect_init(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #17
  %6 = icmp eq i8 %3, 0
  %7 = icmp ne i8 %2, 0
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  call void @ED_setflagsLatt(ptr noundef %11, i32 noundef 0) #15
  br label %12

12:                                               ; preds = %9, %4
  %13 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %14, ptr noundef %16) #15
  call void @lattice_foreachScreenVert(ptr noundef %0, ptr noundef nonnull @do_lattice_box_select__doSelect, ptr noundef nonnull %5, i32 noundef 7) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #16
  ret void
}

; Function Attrs: optsize
declare i32 @ED_sculpt_mask_box_select(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @do_paintface_box_select(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @do_paintvert_box_select(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #1 !PGOFuncName !287 {
  %5 = alloca %struct.BoxSelectUserData, align 8
  %6 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 28
  %9 = load i16, ptr %8, align 8, !tbaa !165
  %10 = and i16 %9, 4096
  %11 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %1) #17
  %12 = add nsw i32 %11, 1
  %13 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %1) #17
  %14 = add nsw i32 %13, 1
  %15 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  %17 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !150
  %19 = icmp eq ptr %18, null
  br i1 %19, label %109, label %20

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 26
  %22 = load i32, ptr %21, align 8, !tbaa !166
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %109, label %24

24:                                               ; preds = %20
  %25 = mul nsw i32 %14, %12
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %109, label %27

27:                                               ; preds = %24
  %28 = icmp eq i8 %3, 0
  %29 = icmp ne i8 %2, 0
  %30 = and i1 %29, %28
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call void @paintvert_deselect_all_visible(ptr noundef nonnull %16, i32 noundef 2, i8 noundef zeroext 0) #15
  br label %32

32:                                               ; preds = %31, %27
  %33 = icmp eq i16 %10, 0
  br i1 %33, label %100, label %34

34:                                               ; preds = %32
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !84
  %36 = load i32, ptr %21, align 8, !tbaa !166
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = tail call ptr %35(i64 noundef %38, ptr noundef nonnull @.str.49) #15
  tail call void @view3d_validate_backbuf(ptr noundef nonnull %0) #15
  %40 = tail call ptr @IMB_allocImBuf(i32 noundef %12, i32 noundef %14, i8 noundef zeroext 32, i32 noundef 1) #15
  %41 = getelementptr inbounds %struct.ImBuf, ptr %40, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !288
  %43 = load i32, ptr %1, align 4, !tbaa !160
  %44 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !45
  %46 = getelementptr inbounds %struct.ARegion, ptr %45, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !60
  %48 = add nsw i32 %47, %43
  %49 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !161
  %51 = getelementptr inbounds %struct.ARegion, ptr %45, i64 0, i32 3, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !66
  %53 = add nsw i32 %52, %50
  tail call void @glReadPixels(i32 noundef %48, i32 noundef %53, i32 noundef %12, i32 noundef %14, i32 noundef 6408, i32 noundef 5121, ptr noundef %42) #15
  br label %54

54:                                               ; preds = %34, %67
  %55 = phi i32 [ %25, %34 ], [ %57, %67 ]
  %56 = phi ptr [ %42, %34 ], [ %68, %67 ]
  %57 = add nsw i32 %55, -1
  %58 = load i32, ptr %56, align 4, !tbaa !65
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %54
  %61 = tail call i32 @WM_framebuffer_to_index(i32 noundef %58) #15
  %62 = load i32, ptr %21, align 8, !tbaa !166
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = sext i32 %61 to i64
  %66 = getelementptr inbounds i8, ptr %39, i64 %65
  store i8 1, ptr %66, align 1, !tbaa !104
  br label %67

67:                                               ; preds = %60, %64, %54
  %68 = getelementptr inbounds i32, ptr %56, i64 1
  %69 = icmp eq i32 %57, 0
  br i1 %69, label %70, label %54, !llvm.loop !291

70:                                               ; preds = %67
  %71 = load i32, ptr %21, align 8, !tbaa !166
  %72 = icmp slt i32 %71, 1
  br i1 %72, label %98, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 15
  %75 = load ptr, ptr %74, align 8, !tbaa !200
  %76 = icmp eq i8 %2, 0
  %77 = add nuw i32 %71, 1
  %78 = zext i32 %77 to i64
  br label %79

79:                                               ; preds = %73, %94
  %80 = phi i64 [ 1, %73 ], [ %95, %94 ]
  %81 = phi ptr [ %75, %73 ], [ %96, %94 ]
  %82 = getelementptr inbounds i8, ptr %39, i64 %80
  %83 = load i8, ptr %82, align 1, !tbaa !104
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.MVert, ptr %81, i64 0, i32 2
  %87 = load i8, ptr %86, align 2, !tbaa !201
  %88 = and i8 %87, 16
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = or i8 %87, 1
  %92 = and i8 %87, -18
  %93 = select i1 %76, i8 %92, i8 %91
  store i8 %93, ptr %86, align 2, !tbaa !201
  br label %94

94:                                               ; preds = %90, %79, %85
  %95 = add nuw nsw i64 %80, 1
  %96 = getelementptr inbounds %struct.MVert, ptr %81, i64 1
  %97 = icmp eq i64 %95, %78
  br i1 %97, label %98, label %79, !llvm.loop !292

98:                                               ; preds = %94, %70
  tail call void @IMB_freeImBuf(ptr noundef %40) #15
  %99 = load ptr, ptr @MEM_freeN, align 8, !tbaa !84
  tail call void %99(ptr noundef %39) #15
  br label %104

100:                                              ; preds = %32
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #16
  call fastcc void @view3d_userdata_boxselect_init(ptr noundef nonnull %5, ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %2) #17
  %101 = load ptr, ptr %15, align 8, !tbaa !50
  %102 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %103 = load ptr, ptr %102, align 8, !tbaa !49
  call void @ED_view3d_init_mats_rv3d(ptr noundef %101, ptr noundef %103) #15
  call void @meshobject_foreachScreenVert(ptr noundef nonnull %0, ptr noundef nonnull @do_paintvert_box_select__doSelectVert, ptr noundef nonnull %5, i32 noundef 7) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #16
  br label %104

104:                                              ; preds = %100, %98
  %105 = icmp eq i8 %2, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %104
  call void @BKE_mesh_mselect_validate(ptr noundef nonnull %18) #15
  br label %107

107:                                              ; preds = %106, %104
  %108 = load ptr, ptr %15, align 8, !tbaa !50
  call void @paintvert_flush_flags(ptr noundef %108) #15
  br label %109

109:                                              ; preds = %4, %20, %24, %107
  %110 = phi i32 [ 4, %107 ], [ 2, %24 ], [ 2, %20 ], [ 2, %4 ]
  ret i32 %110
}

; Function Attrs: optsize
declare i32 @PE_border_select(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @do_object_pose_box_select(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #1 !PGOFuncName !293 {
  %6 = alloca %struct.ListBase, align 8
  %7 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 27
  %12 = load i32, ptr %11, align 8, !tbaa !86
  %13 = and i32 %12, 64
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %5, %10
  %16 = icmp eq i8 %4, 0
  %17 = icmp ne i8 %3, 0
  %18 = and i1 %17, %16
  br i1 %18, label %43, label %47

19:                                               ; preds = %10
  %20 = icmp eq i8 %4, 0
  %21 = icmp ne i8 %3, 0
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  %24 = call i32 @CTX_data_visible_pose_bones(ptr noundef %0, ptr noundef nonnull %6) #15
  %25 = load ptr, ptr %6, align 8, !tbaa !84
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %23, %39
  %28 = phi ptr [ %40, %39 ], [ %25, %23 ]
  %29 = getelementptr inbounds %struct.CollectionPointerLink, ptr %28, i64 0, i32 2, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !94
  %31 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 12
  %32 = load ptr, ptr %31, align 8, !tbaa !219
  %33 = getelementptr inbounds %struct.Bone, ptr %32, i64 0, i32 10
  %34 = load i32, ptr %33, align 8, !tbaa !224
  %35 = and i32 %34, 2097152
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = and i32 %34, -2097160
  store i32 %38, ptr %33, align 8, !tbaa !224
  br label %39

39:                                               ; preds = %37, %27
  %40 = load ptr, ptr %28, align 8, !tbaa !84
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %27, !llvm.loop !294

42:                                               ; preds = %39, %23
  call void @BLI_freelistN(ptr noundef nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  br label %47

43:                                               ; preds = %15
  %44 = load ptr, ptr %1, align 8, !tbaa !47
  %45 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !48
  tail call fastcc void @object_deselect_all_visible(ptr noundef %44, ptr noundef %46) #17
  br label %47

47:                                               ; preds = %19, %42, %43, %15
  %48 = phi i1 [ %21, %19 ], [ true, %42 ], [ true, %43 ], [ %17, %15 ]
  %49 = phi i1 [ false, %19 ], [ false, %42 ], [ true, %43 ], [ true, %15 ]
  %50 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !84
  %51 = call ptr %50(i64 noundef 320000, ptr noundef nonnull @.str.50) #15
  %52 = call signext i16 @view3d_opengl_select(ptr noundef %1, ptr noundef %51, i32 noundef 80000, ptr noundef %2, i8 noundef zeroext 0) #15
  %53 = icmp sgt i16 %52, 0
  br i1 %53, label %54, label %161

54:                                               ; preds = %47
  %55 = load ptr, ptr %1, align 8, !tbaa !47
  %56 = getelementptr inbounds %struct.Scene, ptr %55, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !84
  %58 = icmp eq ptr %57, null
  br i1 %58, label %158, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds i32, ptr %51, i64 3
  %61 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 4
  %62 = icmp eq i8 %3, 0
  %63 = zext i1 %48 to i16
  br label %64

64:                                               ; preds = %59, %149
  %65 = phi ptr [ %57, %59 ], [ %150, %149 ]
  %66 = phi ptr [ %60, %59 ], [ %129, %149 ]
  %67 = phi i16 [ %52, %59 ], [ %128, %149 ]
  %68 = phi i32 [ 0, %59 ], [ %127, %149 ]
  %69 = getelementptr inbounds %struct.Base, ptr %65, i64 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !142
  %71 = load ptr, ptr %61, align 8, !tbaa !48
  %72 = getelementptr inbounds %struct.View3D, ptr %71, i64 0, i32 22
  %73 = load i32, ptr %72, align 8, !tbaa !141
  %74 = and i32 %73, %70
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %126, label %76

76:                                               ; preds = %64
  %77 = getelementptr inbounds %struct.Base, ptr %65, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !101
  %79 = getelementptr inbounds %struct.Object, ptr %78, i64 0, i32 102
  %80 = load i8, ptr %79, align 8, !tbaa !143
  %81 = and i8 %80, 3
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %126

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.Base, ptr %65, i64 0, i32 3
  br label %85

85:                                               ; preds = %83, %121
  %86 = phi i32 [ %122, %121 ], [ %68, %83 ]
  %87 = phi i16 [ %124, %121 ], [ %67, %83 ]
  %88 = phi ptr [ %123, %121 ], [ %66, %83 ]
  %89 = load i32, ptr %84, align 4, !tbaa !139
  %90 = load i32, ptr %88, align 4, !tbaa !65
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %126

93:                                               ; preds = %85
  %94 = icmp ult i32 %90, 65536
  br i1 %94, label %119, label %95

95:                                               ; preds = %93
  %96 = load ptr, ptr %77, align 8, !tbaa !101
  %97 = and i32 %90, -1879048193
  %98 = call ptr @get_indexed_bone(ptr noundef %96, i32 noundef %97) #15
  %99 = icmp eq ptr %98, null
  br i1 %99, label %121, label %100

100:                                              ; preds = %95
  br i1 %62, label %108, label %101

101:                                              ; preds = %100
  %102 = getelementptr inbounds %struct.Bone, ptr %98, i64 0, i32 10
  %103 = load i32, ptr %102, align 8, !tbaa !224
  %104 = and i32 %103, 2097152
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %101
  %107 = or i32 %103, 1
  store i32 %107, ptr %102, align 8, !tbaa !224
  br label %121

108:                                              ; preds = %100
  %109 = load ptr, ptr %77, align 8, !tbaa !101
  %110 = getelementptr inbounds %struct.Object, ptr %109, i64 0, i32 19
  %111 = load ptr, ptr %110, align 8, !tbaa !150
  %112 = getelementptr inbounds %struct.Bone, ptr %98, i64 0, i32 10
  %113 = load i32, ptr %112, align 8, !tbaa !224
  %114 = and i32 %113, -2
  store i32 %114, ptr %112, align 8, !tbaa !224
  %115 = getelementptr inbounds %struct.bArmature, ptr %111, i64 0, i32 5
  %116 = load ptr, ptr %115, align 8, !tbaa !295
  %117 = icmp eq ptr %116, %98
  br i1 %117, label %118, label %121

118:                                              ; preds = %108
  store ptr null, ptr %115, align 8, !tbaa !295
  br label %121

119:                                              ; preds = %93
  br i1 %49, label %120, label %121

120:                                              ; preds = %119
  call void @ED_base_object_select(ptr noundef nonnull %65, i16 noundef signext %63) #15
  br label %121

121:                                              ; preds = %108, %118, %119, %120, %95, %101, %106
  %122 = phi i32 [ 1, %106 ], [ %86, %101 ], [ %86, %95 ], [ %86, %119 ], [ %86, %120 ], [ %86, %118 ], [ %86, %108 ]
  %123 = getelementptr inbounds i32, ptr %88, i64 4
  %124 = add i16 %87, -1
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %126, label %85, !llvm.loop !296

126:                                              ; preds = %85, %121, %76, %64
  %127 = phi i32 [ %68, %76 ], [ %68, %64 ], [ %86, %85 ], [ %122, %121 ]
  %128 = phi i16 [ %67, %76 ], [ %67, %64 ], [ %87, %85 ], [ 0, %121 ]
  %129 = phi ptr [ %66, %76 ], [ %66, %64 ], [ %88, %85 ], [ %123, %121 ]
  %130 = icmp eq i32 %127, 0
  br i1 %130, label %149, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.Base, ptr %65, i64 0, i32 7
  %133 = load ptr, ptr %132, align 8, !tbaa !101
  %134 = icmp eq ptr %133, null
  br i1 %134, label %149, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.Object, ptr %133, i64 0, i32 3
  %137 = load i16, ptr %136, align 8, !tbaa !91
  %138 = icmp eq i16 %137, 25
  br i1 %138, label %139, label %149

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.Object, ptr %133, i64 0, i32 19
  %141 = load ptr, ptr %140, align 8, !tbaa !150
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef nonnull %133) #15
  %142 = icmp eq ptr %141, null
  br i1 %142, label %149, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.bArmature, ptr %141, i64 0, i32 8
  %145 = load i32, ptr %144, align 8, !tbaa !217
  %146 = and i32 %145, 16384
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %143
  call void @DAG_id_tag_update(ptr noundef %8, i16 noundef signext 2) #15
  br label %149

149:                                              ; preds = %139, %143, %148, %126, %135, %131
  %150 = load ptr, ptr %65, align 8, !tbaa !84
  %151 = icmp ne ptr %150, null
  %152 = icmp ne i16 %128, 0
  %153 = select i1 %151, i1 %152, i1 false
  br i1 %153, label %64, label %154, !llvm.loop !297

154:                                              ; preds = %149
  %155 = load ptr, ptr %1, align 8, !tbaa !47
  %156 = icmp sgt i16 %128, 0
  %157 = select i1 %156, i32 4, i32 2
  br label %158

158:                                              ; preds = %154, %54
  %159 = phi ptr [ %55, %54 ], [ %155, %154 ]
  %160 = phi i32 [ 4, %54 ], [ %157, %154 ]
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %159) #15
  br label %161

161:                                              ; preds = %158, %47
  %162 = phi i32 [ %160, %158 ], [ 2, %47 ]
  %163 = load ptr, ptr @MEM_freeN, align 8, !tbaa !84
  call void %163(ptr noundef %51) #15
  ret i32 %162
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_userdata_boxselect_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #1 !PGOFuncName !298 {
  store ptr %1, ptr %0, align 8, !tbaa !299
  %5 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 1
  store ptr %2, ptr %5, align 8, !tbaa !300
  %6 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !301
  tail call void @BLI_rctf_rcti_copy(ptr noundef nonnull %6, ptr noundef %2) #15
  %8 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 4
  store i8 %3, ptr %8, align 8, !tbaa !302
  %9 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 5
  store i32 0, ptr %9, align 4, !tbaa !269
  %10 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 6
  store i8 0, ptr %10, align 8, !tbaa !271
  %11 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 7
  store i8 0, ptr %11, align 1, !tbaa !303
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @EDBM_backbuf_border_init(ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_mesh_box_select__doSelectVert(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 %3) #1 !PGOFuncName !304 {
  %5 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !301
  %7 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %6, ptr noundef %2) #15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !299
  %11 = getelementptr inbounds %struct.ViewContext, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !149
  %13 = load ptr, ptr %12, align 8, !tbaa !226
  %14 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 4
  %15 = load i8, ptr %14, align 8, !tbaa !302
  tail call void @BM_vert_select_set(ptr noundef %13, ptr noundef %1, i8 noundef zeroext %15) #15
  br label %16

16:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_mesh_box_select__doSelectEdge(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #1 !PGOFuncName !305 {
  %6 = load i32, ptr @bm_solidoffs, align 4, !tbaa !65
  %7 = add i32 %6, %4
  %8 = tail call zeroext i8 @EDBM_backbuf_check(i32 noundef %7) #15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !269
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !301
  br i1 %13, label %16, label %27

16:                                               ; preds = %10
  %17 = tail call fastcc zeroext i8 @edge_fully_inside_rect(ptr noundef %15, ptr noundef %2, ptr noundef %3) #17, !range !113
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %0, align 8, !tbaa !299
  %21 = getelementptr inbounds %struct.ViewContext, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !149
  %23 = load ptr, ptr %22, align 8, !tbaa !226
  %24 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 4
  %25 = load i8, ptr %24, align 8, !tbaa !302
  tail call void @BM_edge_select_set(ptr noundef %23, ptr noundef %1, i8 noundef zeroext %25) #15
  %26 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 6
  store i8 1, ptr %26, align 8, !tbaa !271
  br label %37

27:                                               ; preds = %10
  %28 = tail call fastcc zeroext i8 @edge_inside_rect(ptr noundef %15, ptr noundef %2, ptr noundef %3) #17, !range !113
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %0, align 8, !tbaa !299
  %32 = getelementptr inbounds %struct.ViewContext, ptr %31, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !149
  %34 = load ptr, ptr %33, align 8, !tbaa !226
  %35 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 4
  %36 = load i8, ptr %35, align 8, !tbaa !302
  tail call void @BM_edge_select_set(ptr noundef %34, ptr noundef %1, i8 noundef zeroext %36) #15
  br label %37

37:                                               ; preds = %19, %16, %30, %27, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_mesh_box_select__doSelectFace(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 %3) #1 !PGOFuncName !306 {
  %5 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !301
  %7 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %6, ptr noundef %2) #15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !299
  %11 = getelementptr inbounds %struct.ViewContext, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !149
  %13 = load ptr, ptr %12, align 8, !tbaa !226
  %14 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 4
  %15 = load i8, ptr %14, align 8, !tbaa !302
  tail call void @BM_face_select_set(ptr noundef %13, ptr noundef %1, i8 noundef zeroext %15) #15
  br label %16

16:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @edge_inside_rect(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !PGOFuncName !307 {
  %4 = tail call fastcc zeroext i8 @edge_fully_inside_rect(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !range !113
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %70

6:                                                ; preds = %3
  %7 = load float, ptr %1, align 4, !tbaa !52
  %8 = load float, ptr %0, align 4, !tbaa !308
  %9 = fcmp olt float %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load float, ptr %2, align 4, !tbaa !52
  %12 = fcmp olt float %11, %8
  br i1 %12, label %70, label %13

13:                                               ; preds = %10, %6
  %14 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %15 = load float, ptr %14, align 4, !tbaa !309
  %16 = fcmp ogt float %7, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load float, ptr %2, align 4, !tbaa !52
  %19 = fcmp ogt float %18, %15
  br i1 %19, label %70, label %20

20:                                               ; preds = %17, %13
  %21 = getelementptr inbounds float, ptr %1, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !52
  %23 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %24 = load float, ptr %23, align 4, !tbaa !310
  %25 = fcmp olt float %22, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = getelementptr inbounds float, ptr %2, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !52
  %29 = fcmp olt float %28, %24
  br i1 %29, label %70, label %30

30:                                               ; preds = %26, %20
  %31 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %32 = load float, ptr %31, align 4, !tbaa !311
  %33 = fcmp ogt float %22, %32
  %34 = getelementptr inbounds float, ptr %2, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !52
  %36 = fcmp ogt float %35, %32
  %37 = select i1 %33, i1 %36, i1 false
  br i1 %37, label %70, label %38

38:                                               ; preds = %30
  %39 = fsub float %22, %35
  %40 = insertelement <2 x float> poison, float %7, i64 0
  %41 = shufflevector <2 x float> %40, <2 x float> poison, <2 x i32> zeroinitializer
  %42 = insertelement <2 x float> poison, float %8, i64 0
  %43 = insertelement <2 x float> %42, float %15, i64 1
  %44 = fsub <2 x float> %41, %43
  %45 = shufflevector <2 x float> %44, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %46 = load float, ptr %2, align 4, !tbaa !52
  %47 = fsub float %46, %7
  %48 = insertelement <2 x float> poison, float %22, i64 0
  %49 = shufflevector <2 x float> %48, <2 x float> poison, <2 x i32> zeroinitializer
  %50 = insertelement <2 x float> poison, float %32, i64 0
  %51 = insertelement <2 x float> %50, float %24, i64 1
  %52 = fsub <2 x float> %49, %51
  %53 = insertelement <2 x float> poison, float %47, i64 0
  %54 = shufflevector <2 x float> %53, <2 x float> poison, <2 x i32> zeroinitializer
  %55 = fmul <2 x float> %52, %54
  %56 = shufflevector <2 x float> %55, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %57 = insertelement <4 x float> poison, float %39, i64 0
  %58 = shufflevector <4 x float> %57, <4 x float> poison, <4 x i32> zeroinitializer
  %59 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %58, <4 x float> %45, <4 x float> %56)
  %60 = fptosi <4 x float> %59 to <4 x i32>
  %61 = freeze <4 x i32> %60
  %62 = icmp sgt <4 x i32> %61, <i32 -1, i32 -1, i32 -1, i32 -1>
  %63 = bitcast <4 x i1> %62 to i4
  %64 = icmp eq i4 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %38
  %66 = icmp slt <4 x i32> %61, <i32 1, i32 1, i32 1, i32 1>
  %67 = bitcast <4 x i1> %66 to i4
  %68 = icmp ne i4 %67, 0
  %69 = zext i1 %68 to i8
  br label %70

70:                                               ; preds = %30, %65, %38, %26, %17, %10, %3
  %71 = phi i8 [ 1, %3 ], [ 0, %10 ], [ 0, %17 ], [ 0, %26 ], [ 0, %38 ], [ %69, %65 ], [ 0, %30 ]
  ret i8 %71
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_nurbs_box_select__doSelect(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4, ptr noundef %5) #1 !PGOFuncName !312 {
  %7 = load ptr, ptr %0, align 8, !tbaa !299
  %8 = getelementptr inbounds %struct.ViewContext, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !150
  %12 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !301
  %14 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %13, ptr noundef %5) #15
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %65, label %16

16:                                               ; preds = %6
  %17 = icmp eq ptr %2, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 4
  %20 = load i8, ptr %19, align 8, !tbaa !302
  %21 = icmp ne i8 %20, 0
  %22 = getelementptr inbounds %struct.BPoint, ptr %2, i64 0, i32 3
  %23 = load i16, ptr %22, align 4, !tbaa !246
  %24 = and i16 %23, -2
  %25 = zext i1 %21 to i16
  %26 = or disjoint i16 %24, %25
  %27 = getelementptr inbounds %struct.BPoint, ptr %2, i64 0, i32 3
  store i16 %26, ptr %27, align 4, !tbaa !246
  br label %65

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.Curve, ptr %11, i64 0, i32 16
  %30 = load i16, ptr %29, align 8, !tbaa !248
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  %33 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 4
  %34 = load i8, ptr %33, align 8, !tbaa !302
  %35 = icmp ne i8 %34, 0
  br i1 %32, label %45, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  %38 = load i8, ptr %37, align 4, !tbaa !249
  %39 = and i8 %38, -2
  %40 = zext i1 %35 to i8
  %41 = or disjoint i8 %39, %40
  %42 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  store i8 %41, ptr %42, align 1, !tbaa !251
  %43 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  store i8 %41, ptr %43, align 4, !tbaa !249
  %44 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  store i8 %41, ptr %44, align 1, !tbaa !252
  br label %65

45:                                               ; preds = %28
  %46 = zext i1 %35 to i8
  switch i32 %4, label %59 [
    i32 0, label %47
    i32 1, label %53
  ]

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  %49 = load i8, ptr %48, align 1, !tbaa !252
  %50 = and i8 %49, -2
  %51 = or disjoint i8 %50, %46
  %52 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  store i8 %51, ptr %52, align 1, !tbaa !252
  br label %65

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  %55 = load i8, ptr %54, align 4, !tbaa !249
  %56 = and i8 %55, -2
  %57 = or disjoint i8 %56, %46
  %58 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  store i8 %57, ptr %58, align 4, !tbaa !249
  br label %65

59:                                               ; preds = %45
  %60 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  %61 = load i8, ptr %60, align 1, !tbaa !251
  %62 = and i8 %61, -2
  %63 = or disjoint i8 %62, %46
  %64 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  store i8 %63, ptr %64, align 1, !tbaa !251
  br label %65

65:                                               ; preds = %18, %47, %59, %53, %36, %6
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_lattice_box_select__doSelect(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) #1 !PGOFuncName !313 {
  %4 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !301
  %6 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %5, ptr noundef %2) #15
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 4
  %10 = load i8, ptr %9, align 8, !tbaa !302
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds %struct.BPoint, ptr %1, i64 0, i32 3
  %13 = load i16, ptr %12, align 4, !tbaa !246
  %14 = and i16 %13, -2
  %15 = zext i1 %11 to i16
  %16 = or disjoint i16 %14, %15
  %17 = getelementptr inbounds %struct.BPoint, ptr %1, i64 0, i32 3
  store i16 %16, ptr %17, align 4, !tbaa !246
  br label %18

18:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !314 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !162
  %4 = load i32, ptr %0, align 4, !tbaa !160
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !315 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !163
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !161
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: optsize
declare void @view3d_validate_backbuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @glReadPixels(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @WM_framebuffer_to_index(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_paintvert_box_select__doSelectVert(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, i32 %3) #1 !PGOFuncName !316 {
  %5 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !301
  %7 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %6, ptr noundef %2) #15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.BoxSelectUserData, ptr %0, i64 0, i32 4
  %11 = load i8, ptr %10, align 8, !tbaa !302
  %12 = icmp ne i8 %11, 0
  %13 = getelementptr inbounds %struct.MVert, ptr %1, i64 0, i32 2
  %14 = load i8, ptr %13, align 2, !tbaa !201
  %15 = and i8 %14, -2
  %16 = zext i1 %12 to i8
  %17 = or disjoint i8 %15, %16
  store i8 %17, ptr %13, align 2, !tbaa !201
  br label %18

18:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: optsize
declare i32 @CTX_data_visible_pose_bones(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_indexed_bone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_int_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_object_pose_armature_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_int_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @EDBM_select_pick(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @mouse_armature(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @mouse_lattice(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @mouse_nurb(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @mouse_mball(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @mouse_font(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @PE_mouse_particles(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @paintface_mouse_select(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @mouse_weight_paint_vertex_select(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef %5) unnamed_addr #1 !PGOFuncName !317 {
  %7 = alloca i32, align 4
  %8 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #15
  %9 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !tbaa !65
  %11 = call zeroext i8 @ED_mesh_pick_vert(ptr noundef %0, ptr noundef %5, ptr noundef %1, ptr noundef nonnull %7, i32 noundef 50, i8 noundef zeroext 0) #15
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %43, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !200
  %16 = load i32, ptr %7, align 4, !tbaa !65
  %17 = zext i32 %16 to i64
  %18 = icmp eq i8 %2, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = icmp eq i8 %3, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.MVert, ptr %15, i64 %17, i32 2
  %23 = load i8, ptr %22, align 2, !tbaa !201
  %24 = and i8 %23, -2
  store i8 %24, ptr %22, align 2, !tbaa !201
  br label %40

25:                                               ; preds = %19
  %26 = icmp eq i8 %4, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  call void @paintvert_deselect_all_visible(ptr noundef nonnull %5, i32 noundef 2, i8 noundef zeroext 0) #15
  br label %34

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.MVert, ptr %15, i64 %17, i32 2
  %30 = load i8, ptr %29, align 2, !tbaa !201
  %31 = xor i8 %30, 1
  store i8 %31, ptr %29, align 2, !tbaa !201
  %32 = and i8 %30, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %40

34:                                               ; preds = %13, %27
  %35 = getelementptr inbounds %struct.MVert, ptr %15, i64 %17, i32 2
  %36 = load i8, ptr %35, align 2, !tbaa !201
  %37 = or i8 %36, 1
  store i8 %37, ptr %35, align 2, !tbaa !201
  br label %38

38:                                               ; preds = %34, %28
  %39 = load i32, ptr %7, align 4, !tbaa !65
  call void @BKE_mesh_mselect_active_set(ptr noundef nonnull %10, i32 noundef %39, i32 noundef 0) #15
  br label %41

40:                                               ; preds = %21, %28
  call void @BKE_mesh_mselect_validate(ptr noundef nonnull %10) #15
  br label %41

41:                                               ; preds = %40, %38
  call void @paintvert_flush_flags(ptr noundef nonnull %5) #15
  %42 = load ptr, ptr %9, align 8, !tbaa !150
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %42) #15
  br label %43

43:                                               ; preds = %6, %41
  %44 = phi i8 [ 1, %41 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret i8 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @mouse_select(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #1 !PGOFuncName !318 {
  %9 = alloca %struct.ViewContext, align 8
  %10 = alloca [2 x float], align 8
  %11 = alloca [2 x float], align 4
  %12 = alloca [40000 x i32], align 16
  %13 = alloca i8, align 1
  %14 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #16
  %15 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %16 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #15
  %17 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %18 = tail call float @ED_view3d_select_dist_px() #17
  %19 = fmul float %18, 0x3FF5553260000000
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  %20 = load <2 x i32>, ptr %1, align 4, !tbaa !65
  %21 = sitofp <2 x i32> %20 to <2 x float>
  store <2 x float> %21, ptr %10, align 8, !tbaa !52
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %9) #17
  %22 = getelementptr inbounds %struct.ViewContext, ptr %9, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  %24 = icmp eq ptr %23, null
  %25 = icmp eq i8 %7, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %8
  store ptr null, ptr %22, align 8, !tbaa !51
  br label %27

27:                                               ; preds = %26, %8
  %28 = getelementptr inbounds %struct.Scene, ptr %17, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !114
  %30 = getelementptr inbounds %struct.Scene, ptr %17, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !138
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %31, align 8, !tbaa !145
  %35 = icmp eq ptr %34, null
  %36 = select i1 %35, ptr %29, ptr %34
  br label %37

37:                                               ; preds = %33, %27
  %38 = phi ptr [ %29, %27 ], [ %36, %33 ]
  %39 = icmp eq i8 %5, 0
  br i1 %39, label %93, label %40

40:                                               ; preds = %37
  %41 = icmp eq i8 %6, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %40
  %43 = zext i8 %4 to i16
  %44 = call fastcc ptr @object_mouse_select_menu(ptr noundef %0, ptr noundef nonnull %9, ptr noundef null, i32 noundef 0, ptr noundef nonnull %1, i16 noundef signext %43) #17
  br label %232

45:                                               ; preds = %40
  %46 = icmp eq ptr %38, null
  br i1 %46, label %276, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.View3D, ptr %16, i64 0, i32 22
  br label %49

49:                                               ; preds = %47, %88
  %50 = phi float [ %82, %88 ], [ %19, %47 ]
  %51 = phi ptr [ %83, %88 ], [ null, %47 ]
  %52 = phi ptr [ %89, %88 ], [ %38, %47 ]
  %53 = getelementptr inbounds %struct.Base, ptr %52, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !142
  %55 = load i32, ptr %48, align 8, !tbaa !141
  %56 = and i32 %55, %54
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %81, label %58

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.Base, ptr %52, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !101
  %61 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 102
  %62 = load i8, ptr %61, align 8, !tbaa !143
  %63 = and i8 %62, 3
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  %66 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 47, i64 3
  %67 = call i32 @ED_view3d_project_float_global(ptr noundef %15, ptr noundef nonnull %66, ptr noundef nonnull %11, i32 noundef 7) #15
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = call fastcc float @len_manhattan_v2v2(ptr noundef nonnull %10, ptr noundef nonnull %11) #17
  %71 = load ptr, ptr %30, align 8, !tbaa !138
  %72 = icmp eq ptr %52, %71
  %73 = fadd float %70, 1.000000e+01
  %74 = select i1 %72, float %73, float %70
  %75 = fcmp olt float %74, %50
  %76 = select i1 %75, float %74, float %50
  %77 = select i1 %75, ptr %52, ptr %51
  br label %78

78:                                               ; preds = %69, %65
  %79 = phi float [ %76, %69 ], [ %50, %65 ]
  %80 = phi ptr [ %77, %69 ], [ %51, %65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  br label %81

81:                                               ; preds = %78, %58, %49
  %82 = phi float [ %79, %78 ], [ %50, %58 ], [ %50, %49 ]
  %83 = phi ptr [ %80, %78 ], [ %51, %58 ], [ %51, %49 ]
  %84 = load ptr, ptr %52, align 8, !tbaa !145
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load ptr, ptr %28, align 8, !tbaa !114
  br label %88

88:                                               ; preds = %86, %81
  %89 = phi ptr [ %87, %86 ], [ %84, %81 ]
  %90 = icmp ne ptr %89, %38
  %91 = icmp ne ptr %89, null
  %92 = and i1 %90, %91
  br i1 %92, label %49, label %232, !llvm.loop !319

93:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 160000, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #16
  %94 = call fastcc signext i16 @mixed_bones_object_selectbuffer(ptr noundef nonnull %9, ptr noundef nonnull %12, ptr noundef nonnull %1, ptr noundef nonnull %13, i8 noundef zeroext %6) #17
  %95 = sext i16 %94 to i32
  %96 = icmp sgt i16 %94, 0
  br i1 %96, label %97, label %229

97:                                               ; preds = %93
  %98 = call fastcc zeroext i8 @selectbuffer_has_bones(ptr noundef nonnull %12, i32 noundef %95) #17, !range !113
  %99 = icmp eq i8 %98, 0
  %100 = icmp ne i8 %6, 0
  %101 = and i1 %100, %99
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = zext i8 %4 to i16
  %104 = call fastcc ptr @object_mouse_select_menu(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %12, i32 noundef %95, ptr noundef nonnull %1, i16 noundef signext %103) #17
  br label %229

105:                                              ; preds = %97
  %106 = load i8, ptr %13, align 1, !tbaa !104
  %107 = call fastcc ptr @mouse_select_eval_buffer(ptr noundef nonnull %9, ptr noundef nonnull %12, i32 noundef %95, ptr noundef %38, i8 noundef zeroext %98, i8 noundef zeroext %106) #17
  %108 = icmp ne i8 %98, 0
  %109 = icmp ne ptr %107, null
  %110 = select i1 %108, i1 %109, i1 false
  br i1 %110, label %111, label %229

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.Base, ptr %107, i64 0, i32 7
  %113 = load ptr, ptr %112, align 8, !tbaa !101
  %114 = getelementptr inbounds %struct.Object, ptr %113, i64 0, i32 3
  %115 = load i16, ptr %114, align 8, !tbaa !91
  %116 = icmp eq i16 %115, 11
  br i1 %116, label %117, label %202

117:                                              ; preds = %111
  %118 = load ptr, ptr %30, align 8, !tbaa !138
  %119 = icmp eq ptr %118, %107
  br i1 %119, label %120, label %223

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.Base, ptr %107, i64 0, i32 3
  %122 = load i32, ptr %121, align 4, !tbaa !139
  %123 = zext nneg i32 %95 to i64
  br label %127

124:                                              ; preds = %127
  %125 = add nuw nsw i64 %128, 1
  %126 = icmp eq i64 %125, %123
  br i1 %126, label %198, label %127, !llvm.loop !320

127:                                              ; preds = %120, %124
  %128 = phi i64 [ 0, %120 ], [ %125, %124 ]
  %129 = shl nsw i64 %128, 2
  %130 = or disjoint i64 %129, 3
  %131 = getelementptr inbounds [40000 x i32], ptr %12, i64 0, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !65
  %133 = and i32 %132, 65535
  %134 = icmp ne i32 %122, %133
  %135 = icmp ult i32 %132, 65536
  %136 = or i1 %135, %134
  br i1 %136, label %124, label %137

137:                                              ; preds = %127
  %138 = call ptr @BKE_object_movieclip_get(ptr noundef %17, ptr noundef %113, i8 noundef zeroext 0) #15
  %139 = getelementptr inbounds %struct.MovieClip, ptr %138, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #16
  %140 = ashr i32 %132, 16
  %141 = call ptr @BKE_tracking_track_get_indexed(ptr noundef nonnull %139, i32 noundef %140, ptr noundef nonnull %14) #15
  %142 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %141, i64 0, i32 13
  %143 = load i32, ptr %142, align 8, !tbaa !321
  %144 = and i32 %143, 1
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %137
  %147 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %141, i64 0, i32 14
  %148 = load i32, ptr %147, align 4, !tbaa !323
  %149 = and i32 %148, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %141, i64 0, i32 15
  %153 = load i32, ptr %152, align 8, !tbaa !324
  %154 = and i32 %153, 1
  %155 = icmp ne i32 %154, 0
  %156 = icmp ne i8 %2, 0
  %157 = and i1 %156, %155
  br i1 %157, label %162, label %163

158:                                              ; preds = %146
  %159 = icmp eq i8 %2, 0
  br i1 %159, label %168, label %162

160:                                              ; preds = %137
  %161 = icmp eq i8 %2, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %160, %151, %158
  call void @BKE_tracking_track_deselect(ptr noundef nonnull %141, i32 noundef 7) #15
  br label %188

163:                                              ; preds = %151
  %164 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %141, i64 0, i32 15
  %165 = load i32, ptr %164, align 8, !tbaa !324
  %166 = and i32 %165, 1
  %167 = icmp eq i8 %2, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %158, %160, %163
  %169 = phi i32 [ %166, %163 ], [ 1, %160 ], [ 1, %158 ]
  call fastcc void @deselect_all_tracks(ptr noundef nonnull %139) #17
  br label %170

170:                                              ; preds = %168, %163
  %171 = phi i32 [ %169, %168 ], [ %166, %163 ]
  %172 = load ptr, ptr %14, align 8, !tbaa !84
  call void @BKE_tracking_track_select(ptr noundef %172, ptr noundef nonnull %141, i32 noundef 7, i8 noundef zeroext %2) #15
  %173 = load i32, ptr %142, align 8, !tbaa !321
  %174 = and i32 %173, 1
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %170
  %177 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %141, i64 0, i32 14
  %178 = load i32, ptr %177, align 4, !tbaa !323
  %179 = and i32 %178, 1
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %141, i64 0, i32 15
  %183 = load i32, ptr %182, align 8, !tbaa !324
  %184 = and i32 %183, 1
  br label %185

185:                                              ; preds = %181, %176, %170
  %186 = phi i32 [ 1, %176 ], [ 1, %170 ], [ %184, %181 ]
  %187 = icmp eq i32 %186, %171
  br label %188

188:                                              ; preds = %162, %185
  %189 = phi i1 [ true, %162 ], [ %187, %185 ]
  %190 = getelementptr inbounds %struct.Base, ptr %107, i64 0, i32 4
  %191 = load i32, ptr %190, align 8, !tbaa !98
  %192 = or i32 %191, 1
  store i32 %192, ptr %190, align 8, !tbaa !98
  %193 = trunc i32 %192 to i16
  %194 = load ptr, ptr %112, align 8, !tbaa !101
  %195 = getelementptr inbounds %struct.Object, ptr %194, i64 0, i32 53
  store i16 %193, ptr %195, align 4, !tbaa !170
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 341442560, ptr noundef nonnull %141) #15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %17) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  br i1 %189, label %196, label %223

196:                                              ; preds = %188
  %197 = load i8, ptr %13, align 1, !tbaa !104
  br label %198

198:                                              ; preds = %124, %196
  %199 = phi i8 [ %197, %196 ], [ %106, %124 ]
  %200 = phi i8 [ 1, %196 ], [ 0, %124 ]
  %201 = call fastcc ptr @mouse_select_eval_buffer(ptr noundef nonnull %9, ptr noundef nonnull %12, i32 noundef %95, ptr noundef %38, i8 noundef zeroext 0, i8 noundef zeroext %199) #17
  br label %223

202:                                              ; preds = %111
  %203 = call i32 @ED_do_pose_selectbuffer(ptr noundef nonnull %17, ptr noundef nonnull %107, ptr noundef nonnull %12, i16 noundef signext %94, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %106) #15
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %223, label %205

205:                                              ; preds = %202
  %206 = getelementptr inbounds %struct.Base, ptr %107, i64 0, i32 4
  %207 = load i32, ptr %206, align 8, !tbaa !98
  %208 = or i32 %207, 1
  store i32 %208, ptr %206, align 8, !tbaa !98
  %209 = trunc i32 %208 to i16
  %210 = load ptr, ptr %112, align 8, !tbaa !101
  %211 = getelementptr inbounds %struct.Object, ptr %210, i64 0, i32 53
  store i16 %209, ptr %211, align 4, !tbaa !170
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %210) #15
  %212 = load ptr, ptr %112, align 8, !tbaa !101
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85262336, ptr noundef %212) #15
  %213 = load ptr, ptr %30, align 8, !tbaa !138
  %214 = icmp eq ptr %213, null
  br i1 %214, label %223, label %215

215:                                              ; preds = %205
  %216 = getelementptr inbounds %struct.Base, ptr %213, i64 0, i32 7
  %217 = load ptr, ptr %216, align 8, !tbaa !101
  %218 = getelementptr inbounds %struct.Object, ptr %217, i64 0, i32 27
  %219 = load i32, ptr %218, align 8, !tbaa !86
  %220 = and i32 %219, 8
  %221 = icmp eq i32 %220, 0
  %222 = select i1 %221, ptr %107, ptr null
  br label %223

223:                                              ; preds = %215, %188, %198, %202, %205, %117
  %224 = phi i8 [ 0, %117 ], [ 1, %205 ], [ 0, %202 ], [ %200, %198 ], [ 1, %188 ], [ 1, %215 ]
  %225 = phi ptr [ %107, %117 ], [ %107, %205 ], [ %107, %202 ], [ %201, %198 ], [ %107, %188 ], [ %222, %215 ]
  %226 = load ptr, ptr %30, align 8, !tbaa !138
  %227 = icmp eq ptr %225, %226
  %228 = select i1 %227, ptr null, ptr %225
  br label %229

229:                                              ; preds = %102, %105, %223, %93
  %230 = phi i8 [ 0, %93 ], [ %224, %223 ], [ 0, %105 ], [ 0, %102 ]
  %231 = phi ptr [ null, %93 ], [ %228, %223 ], [ %107, %105 ], [ %104, %102 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 160000, ptr nonnull %12) #16
  br label %232

232:                                              ; preds = %88, %42, %229
  %233 = phi i8 [ 0, %42 ], [ %230, %229 ], [ 0, %88 ]
  %234 = phi ptr [ %44, %42 ], [ %231, %229 ], [ %83, %88 ]
  %235 = icmp eq ptr %234, null
  br i1 %235, label %276, label %236

236:                                              ; preds = %232
  %237 = load ptr, ptr %22, align 8, !tbaa !51
  %238 = icmp eq ptr %237, null
  br i1 %238, label %240, label %239

239:                                              ; preds = %236
  call fastcc void @deselectall_except(ptr noundef %17, ptr noundef nonnull %234) #17
  call void @ED_base_object_select(ptr noundef nonnull %234, i16 noundef signext 1) #15
  br label %275

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.Base, ptr %234, i64 0, i32 2
  %242 = load i32, ptr %241, align 8, !tbaa !142
  %243 = getelementptr inbounds %struct.View3D, ptr %16, i64 0, i32 22
  %244 = load i32, ptr %243, align 8, !tbaa !141
  %245 = and i32 %244, %242
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %275, label %247

247:                                              ; preds = %240
  %248 = getelementptr inbounds %struct.Base, ptr %234, i64 0, i32 7
  %249 = load ptr, ptr %248, align 8, !tbaa !101
  %250 = getelementptr inbounds %struct.Object, ptr %249, i64 0, i32 102
  %251 = load i8, ptr %250, align 8, !tbaa !143
  %252 = and i8 %251, 3
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %254, label %275

254:                                              ; preds = %247
  %255 = load ptr, ptr %30, align 8, !tbaa !138
  %256 = icmp eq i8 %2, 0
  br i1 %256, label %257, label %269

257:                                              ; preds = %254
  %258 = icmp eq i8 %3, 0
  br i1 %258, label %259, label %269

259:                                              ; preds = %257
  %260 = icmp eq i8 %4, 0
  br i1 %260, label %268, label %261

261:                                              ; preds = %259
  %262 = getelementptr inbounds %struct.Base, ptr %234, i64 0, i32 4
  %263 = load i32, ptr %262, align 8, !tbaa !98
  %264 = and i32 %263, 1
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %269, label %266

266:                                              ; preds = %261
  %267 = icmp eq ptr %234, %255
  br i1 %267, label %269, label %271

268:                                              ; preds = %259
  call fastcc void @deselectall_except(ptr noundef nonnull %17, ptr noundef nonnull %234) #17
  br label %269

269:                                              ; preds = %261, %266, %257, %254, %268
  %270 = phi i16 [ 1, %268 ], [ 1, %254 ], [ 0, %257 ], [ 0, %266 ], [ 1, %261 ]
  call void @ED_base_object_select(ptr noundef nonnull %234, i16 noundef signext %270) #15
  br label %271

271:                                              ; preds = %269, %266
  %272 = icmp ne ptr %255, %234
  %273 = select i1 %272, i1 %24, i1 false
  br i1 %273, label %274, label %275

274:                                              ; preds = %271
  call void @ED_base_object_activate(ptr noundef %0, ptr noundef nonnull %234) #15
  br label %275

275:                                              ; preds = %240, %247, %274, %271, %239
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %17) #15
  br label %276

276:                                              ; preds = %45, %275, %232
  %277 = phi i8 [ 1, %275 ], [ %233, %232 ], [ 0, %45 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #16
  ret i8 %277
}

; Function Attrs: optsize
declare zeroext i8 @ED_mesh_pick_vert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_mesh_mselect_active_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @object_mouse_select_menu(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i16 noundef signext %5) unnamed_addr #1 !PGOFuncName !325 {
  %7 = alloca ptr, align 8
  %8 = alloca %struct.ListBase, align 8
  %9 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  store ptr null, ptr %7, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #16
  %10 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %8) #15
  %11 = load ptr, ptr %8, align 8, !tbaa !84
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  call void @BLI_freelistN(ptr noundef nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #16
  br label %95

14:                                               ; preds = %6
  %15 = icmp eq ptr %2, null
  %16 = icmp sgt i32 %3, 0
  %17 = getelementptr inbounds %struct.ViewContext, ptr %1, i64 0, i32 3
  %18 = getelementptr inbounds i32, ptr %4, i64 1
  %19 = zext nneg i32 %3 to i64
  br label %20

20:                                               ; preds = %14, %63
  %21 = phi ptr [ %11, %14 ], [ %65, %63 ]
  %22 = phi i16 [ 0, %14 ], [ %64, %63 ]
  %23 = getelementptr inbounds %struct.CollectionPointerLink, ptr %21, i64 0, i32 2, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !94
  br i1 %15, label %40, label %25

25:                                               ; preds = %20
  br i1 %16, label %26, label %63

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.Base, ptr %24, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !139
  br label %29

29:                                               ; preds = %26, %29
  %30 = phi i64 [ 0, %26 ], [ %38, %29 ]
  %31 = phi i8 [ 0, %26 ], [ %37, %29 ]
  %32 = shl nsw i64 %30, 2
  %33 = or disjoint i64 %32, 3
  %34 = getelementptr inbounds i32, ptr %2, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !65
  %36 = icmp eq i32 %28, %35
  %37 = select i1 %36, i8 1, i8 %31
  %38 = add nuw nsw i64 %30, 1
  %39 = icmp eq i64 %38, %19
  br i1 %39, label %57, label %29, !llvm.loop !326

40:                                               ; preds = %20
  %41 = load ptr, ptr %17, align 8, !tbaa !45
  %42 = call i32 @ED_view3d_project_base(ptr noundef %41, ptr noundef %24) #15
  %43 = getelementptr inbounds %struct.Base, ptr %24, i64 0, i32 5
  %44 = load i16, ptr %43, align 4, !tbaa !168
  %45 = sext i16 %44 to i32
  %46 = load i32, ptr %4, align 4, !tbaa !65
  %47 = sub nsw i32 %45, %46
  %48 = call i32 @llvm.abs.i32(i32 %47, i1 true)
  %49 = getelementptr inbounds %struct.Base, ptr %24, i64 0, i32 6
  %50 = load i16, ptr %49, align 2, !tbaa !169
  %51 = sext i16 %50 to i32
  %52 = load i32, ptr %18, align 4, !tbaa !65
  %53 = sub nsw i32 %51, %52
  %54 = call i32 @llvm.abs.i32(i32 %53, i1 true)
  %55 = add nuw nsw i32 %54, %48
  %56 = icmp ult i32 %55, 15
  br i1 %56, label %59, label %63

57:                                               ; preds = %29
  %58 = icmp eq i8 %37, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %40, %57
  %60 = add i16 %22, 1
  call void @BLI_linklist_prepend(ptr noundef nonnull %7, ptr noundef %24) #15
  %61 = icmp eq i16 %60, 22
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  call void @BLI_freelistN(ptr noundef nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #16
  br label %72

63:                                               ; preds = %25, %40, %59, %57
  %64 = phi i16 [ %22, %57 ], [ %60, %59 ], [ %22, %40 ], [ %22, %25 ]
  %65 = load ptr, ptr %21, align 8, !tbaa !84
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %20, !llvm.loop !327

67:                                               ; preds = %63
  call void @BLI_freelistN(ptr noundef nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #16
  switch i16 %64, label %72 [
    i16 0, label %95
    i16 1, label %68
  ]

68:                                               ; preds = %67
  %69 = load ptr, ptr %7, align 8, !tbaa !84
  %70 = getelementptr inbounds %struct.LinkNode, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !328
  call void @BLI_linklist_free(ptr noundef %69, ptr noundef null) #15
  br label %95

72:                                               ; preds = %62, %67
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1496) @object_mouse_select_menu_data, i8 0, i64 1496, i1 false)
  %73 = load ptr, ptr %7, align 8, !tbaa !84
  %74 = icmp eq ptr %73, null
  br i1 %74, label %90, label %75

75:                                               ; preds = %72, %75
  %76 = phi i64 [ %87, %75 ], [ 0, %72 ]
  %77 = phi ptr [ %88, %75 ], [ %73, %72 ]
  %78 = getelementptr inbounds %struct.LinkNode, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !328
  %80 = getelementptr inbounds %struct.Base, ptr %79, i64 0, i32 7
  %81 = load ptr, ptr %80, align 8, !tbaa !101
  %82 = getelementptr inbounds %struct.ID, ptr %81, i64 0, i32 4, i64 2
  %83 = getelementptr inbounds [22 x %struct.SelMenuItemF], ptr @object_mouse_select_menu_data, i64 0, i64 %76
  %84 = call ptr @BLI_strncpy(ptr noundef nonnull %83, ptr noundef nonnull %82, i64 noundef 64) #15
  %85 = call i32 @uiIconFromID(ptr noundef %81) #15
  %86 = getelementptr inbounds [22 x %struct.SelMenuItemF], ptr @object_mouse_select_menu_data, i64 0, i64 %76, i32 1
  store i32 %85, ptr %86, align 4, !tbaa !109
  %87 = add nuw i64 %76, 1
  %88 = load ptr, ptr %77, align 8, !tbaa !84
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %75, !llvm.loop !330

90:                                               ; preds = %75, %72
  %91 = call ptr @WM_operatortype_find(ptr noundef nonnull @.str.14, i8 noundef zeroext 0) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #16
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %9, ptr noundef %91) #15
  %92 = zext nneg i16 %5 to i32
  call void @RNA_boolean_set(ptr noundef nonnull %9, ptr noundef nonnull @.str.17, i32 noundef %92) #15
  %93 = call i32 @WM_operator_name_call_ptr(ptr noundef %0, ptr noundef %91, i16 noundef signext 0, ptr noundef nonnull %9) #15
  call void @WM_operator_properties_free(ptr noundef nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #16
  %94 = load ptr, ptr %7, align 8, !tbaa !84
  call void @BLI_linklist_free(ptr noundef %94, ptr noundef null) #15
  br label %95

95:                                               ; preds = %13, %67, %90, %68
  %96 = phi ptr [ %71, %68 ], [ null, %90 ], [ null, %67 ], [ null, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  ret ptr %96
}

; Function Attrs: optsize
declare i32 @ED_view3d_project_float_global(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_manhattan_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !331 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #17
  %4 = call fastcc float @len_manhattan_v2(ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret float %4
}

; Function Attrs: optsize
declare ptr @BKE_object_movieclip_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_tracking_track_get_indexed(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_tracking_track_deselect(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @deselect_all_tracks(ptr noundef %0) unnamed_addr #1 !PGOFuncName !332 {
  %2 = getelementptr inbounds %struct.MovieTracking, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %8

5:                                                ; preds = %13, %8
  %6 = load ptr, ptr %9, align 8, !tbaa !84
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8, !llvm.loop !333

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = tail call ptr @BKE_tracking_object_get_tracks(ptr noundef %0, ptr noundef nonnull %9) #15
  %11 = load ptr, ptr %10, align 8, !tbaa !84
  %12 = icmp eq ptr %11, null
  br i1 %12, label %5, label %13

13:                                               ; preds = %8, %13
  %14 = phi ptr [ %15, %13 ], [ %11, %8 ]
  tail call void @BKE_tracking_track_deselect(ptr noundef nonnull %14, i32 noundef 7) #15
  %15 = load ptr, ptr %14, align 8, !tbaa !84
  %16 = icmp eq ptr %15, null
  br i1 %16, label %5, label %13, !llvm.loop !334

17:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_tracking_track_select(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ED_do_pose_selectbuffer(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @deselectall_except(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #1 !PGOFuncName !335 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !84
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2, %15
  %7 = phi ptr [ %16, %15 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !98
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  %12 = icmp eq ptr %7, %1
  %13 = or i1 %12, %11
  br i1 %13, label %15, label %14

14:                                               ; preds = %6
  tail call void @ED_base_object_select(ptr noundef nonnull %7, i16 noundef signext 0) #15
  br label %15

15:                                               ; preds = %6, %14
  %16 = load ptr, ptr %7, align 8, !tbaa !84
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !336

18:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: optsize
declare void @BLI_linklist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_linklist_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @uiIconFromID(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_operator_properties_create_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @WM_operator_name_call_ptr(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_operator_properties_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #11 !PGOFuncName !337 {
  %4 = load float, ptr %1, align 4, !tbaa !52
  %5 = load float, ptr %2, align 4, !tbaa !52
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !52
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !52
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !52
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_manhattan_v2(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !338 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !52
  %3 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %2)
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %5 = fadd <2 x float> %3, %4
  %6 = extractelement <2 x float> %5, i64 0
  ret float %6
}

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_tracks(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @obedit_circle_select(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #1 !PGOFuncName !339 {
  %5 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !91
  switch i16 %8, label %14 [
    i16 1, label %9
    i16 2, label %10
    i16 3, label %10
    i16 22, label %11
    i16 25, label %12
    i16 5, label %13
  ]

9:                                                ; preds = %4
  tail call fastcc void @mesh_circle_select(ptr noundef nonnull %0, i8 noundef zeroext %1, ptr noundef %2, float noundef %3) #17
  br label %14

10:                                               ; preds = %4, %4
  tail call fastcc void @nurbscurve_circle_select(ptr noundef nonnull %0, i8 noundef zeroext %1, ptr noundef %2, float noundef %3) #17
  br label %14

11:                                               ; preds = %4
  tail call fastcc void @lattice_circle_select(ptr noundef nonnull %0, i8 noundef zeroext %1, ptr noundef %2, float noundef %3) #17
  br label %14

12:                                               ; preds = %4
  tail call fastcc void @armature_circle_select(ptr noundef nonnull %0, i8 noundef zeroext %1, ptr noundef %2, float noundef %3) #17
  br label %14

13:                                               ; preds = %4
  tail call fastcc void @mball_circle_select(ptr noundef nonnull %0, i8 noundef zeroext %1, ptr noundef %2, float noundef %3) #17
  br label %14

14:                                               ; preds = %4, %13, %12, %11, %10, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paint_facesel_circle_select(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #1 !PGOFuncName !340 {
  %5 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !150
  %9 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 30
  %10 = load i32, ptr %9, align 8, !tbaa !157
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr @bm_vertoffs, align 4, !tbaa !65
  %12 = load i32, ptr %2, align 4, !tbaa !65
  %13 = trunc i32 %12 to i16
  %14 = getelementptr inbounds i32, ptr %2, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !65
  %16 = trunc i32 %15 to i16
  %17 = fadd float %3, 1.000000e+00
  %18 = fptosi float %17 to i16
  %19 = tail call zeroext i8 @EDBM_backbuf_circle_init(ptr noundef %0, i16 noundef signext %13, i16 noundef signext %16, i16 noundef signext %18) #15
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  tail call fastcc void @edbm_backbuf_check_and_select_tfaces(ptr noundef nonnull %8, i8 noundef zeroext %1) #17
  tail call void @EDBM_backbuf_free() #15
  tail call void @paintface_flush_flags(ptr noundef nonnull %6) #15
  br label %22

22:                                               ; preds = %21, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @paint_vertsel_circle_select(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #1 !PGOFuncName !341 {
  %5 = alloca %struct.CircleSelectUserData, align 8
  %6 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 28
  %9 = load i16, ptr %8, align 8, !tbaa !165
  %10 = and i16 %9, 4096
  %11 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !150
  %15 = icmp eq i16 %10, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.Mesh, ptr %14, i64 0, i32 26
  %18 = load i32, ptr %17, align 8, !tbaa !166
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr @bm_vertoffs, align 4, !tbaa !65
  %20 = load i32, ptr %2, align 4, !tbaa !65
  %21 = trunc i32 %20 to i16
  %22 = getelementptr inbounds i32, ptr %2, i64 1
  %23 = load i32, ptr %22, align 4, !tbaa !65
  %24 = trunc i32 %23 to i16
  %25 = fadd float %3, 1.000000e+00
  %26 = fptosi float %25 to i16
  %27 = tail call zeroext i8 @EDBM_backbuf_circle_init(ptr noundef nonnull %0, i16 noundef signext %21, i16 noundef signext %24, i16 noundef signext %26) #15
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %16
  tail call fastcc void @edbm_backbuf_check_and_select_verts_obmode(ptr noundef nonnull %14, i8 noundef zeroext %1) #17
  tail call void @EDBM_backbuf_free() #15
  br label %33

30:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  %31 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !49
  tail call void @ED_view3d_init_mats_rv3d(ptr noundef nonnull %12, ptr noundef %32) #15
  call fastcc void @view3d_userdata_circleselect_init(ptr noundef nonnull %5, ptr noundef nonnull %0, i8 noundef zeroext %1, ptr noundef %2, float noundef %3) #17
  call void @meshobject_foreachScreenVert(ptr noundef nonnull %0, ptr noundef nonnull @paint_vertsel_circle_select_doSelectVert, ptr noundef nonnull %5, i32 noundef 7) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  br label %33

33:                                               ; preds = %16, %29, %30
  %34 = icmp eq i8 %1, 1
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  call void @BKE_mesh_mselect_validate(ptr noundef %14) #15
  br label %36

36:                                               ; preds = %35, %33
  call void @paintvert_flush_flags(ptr noundef nonnull %12) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pose_circle_select(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #1 !PGOFuncName !342 {
  %5 = alloca %struct.CircleSelectUserData, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call fastcc void @view3d_userdata_circleselect_init(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, float noundef %3) #17
  %6 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  tail call void @ED_view3d_init_mats_rv3d(ptr noundef %7, ptr noundef %9) #15
  call void @pose_foreachScreenBone(ptr noundef %0, ptr noundef nonnull @do_circle_select_pose__doSelectBone, ptr noundef nonnull %5, i32 noundef 7) #15
  %10 = getelementptr inbounds %struct.CircleSelectUserData, ptr %5, i64 0, i32 6
  %11 = load i8, ptr %10, align 4, !tbaa !343
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %4
  %14 = load ptr, ptr %6, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !150
  call void @WM_main_add_notifier(i32 noundef 85327872, ptr noundef %14) #15
  %17 = getelementptr inbounds %struct.bArmature, ptr %16, i64 0, i32 8
  %18 = load i32, ptr %17, align 8, !tbaa !217
  %19 = and i32 %18, 16384
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %13
  %22 = load ptr, ptr %6, align 8, !tbaa !50
  call void @DAG_id_tag_update(ptr noundef %22, i16 noundef signext 2) #15
  br label %23

23:                                               ; preds = %13, %21, %4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret void
}

; Function Attrs: optsize
declare i32 @PE_circle_select(ptr noundef, i32 noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @object_circle_select(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #1 !PGOFuncName !345 {
  %5 = alloca [2 x float], align 8
  %6 = alloca [2 x float], align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !47
  %8 = fmul float %3, %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %9 = load <2 x i32>, ptr %2, align 4, !tbaa !65
  %10 = sitofp <2 x i32> %9 to <2 x float>
  store <2 x float> %10, ptr %5, align 8, !tbaa !52
  %11 = icmp ne i8 %1, 0
  %12 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !84
  %14 = icmp eq ptr %13, null
  br i1 %14, label %57, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %17 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %18 = zext i1 %11 to i16
  br label %19

19:                                               ; preds = %15, %53
  %20 = phi ptr [ %13, %15 ], [ %55, %53 ]
  %21 = phi i8 [ 0, %15 ], [ %54, %53 ]
  %22 = getelementptr inbounds %struct.Base, ptr %20, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !142
  %24 = load ptr, ptr %16, align 8, !tbaa !48
  %25 = getelementptr inbounds %struct.View3D, ptr %24, i64 0, i32 22
  %26 = load i32, ptr %25, align 8, !tbaa !141
  %27 = and i32 %26, %23
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %53, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.Base, ptr %20, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !101
  %32 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 102
  %33 = load i8, ptr %32, align 8, !tbaa !143
  %34 = and i8 %33, 3
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.Base, ptr %20, i64 0, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !98
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  %41 = xor i1 %11, %40
  br i1 %41, label %53, label %42

42:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %43 = load ptr, ptr %17, align 8, !tbaa !45
  %44 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 47, i64 3
  %45 = call i32 @ED_view3d_project_float_global(ptr noundef %43, ptr noundef nonnull %44, ptr noundef nonnull %6, i32 noundef 7) #15
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = call fastcc float @len_squared_v2v2(ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %49 = fcmp ugt float %48, %8
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  call void @ED_base_object_select(ptr noundef nonnull %20, i16 noundef signext %18) #15
  br label %51

51:                                               ; preds = %47, %50, %42
  %52 = phi i8 [ 1, %50 ], [ %21, %47 ], [ %21, %42 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %53

53:                                               ; preds = %19, %29, %36, %51
  %54 = phi i8 [ %52, %51 ], [ %21, %36 ], [ %21, %29 ], [ %21, %19 ]
  %55 = load ptr, ptr %20, align 8, !tbaa !84
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %19, !llvm.loop !346

57:                                               ; preds = %53, %4
  %58 = phi i8 [ 0, %4 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i8 %58
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_circle_select(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #1 !PGOFuncName !347 {
  %5 = alloca %struct.CircleSelectUserData, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  %9 = load i32, ptr %2, align 4, !tbaa !65
  %10 = trunc i32 %9 to i16
  %11 = getelementptr inbounds i32, ptr %2, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !65
  %13 = trunc i32 %12 to i16
  %14 = fadd float %3, 1.000000e+00
  %15 = fptosi float %14 to i16
  %16 = tail call zeroext i8 @EDBM_backbuf_circle_init(ptr noundef nonnull %0, i16 noundef signext %10, i16 noundef signext %13, i16 noundef signext %15) #15
  %17 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  %19 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  tail call void @ED_view3d_init_mats_rv3d(ptr noundef %18, ptr noundef %20) #15
  %21 = load ptr, ptr %17, align 8, !tbaa !51
  %22 = tail call ptr @BKE_editmesh_from_object(ptr noundef %21) #15
  %23 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  store ptr %22, ptr %23, align 8, !tbaa !149
  call fastcc void @view3d_userdata_circleselect_init(ptr noundef nonnull %5, ptr noundef nonnull %0, i8 noundef zeroext %1, ptr noundef nonnull %2, float noundef %3) #17
  %24 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 8
  %25 = load i16, ptr %24, align 2, !tbaa !174
  %26 = and i16 %25, 1
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %4
  %29 = icmp eq i8 %16, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %28
  %31 = load ptr, ptr %23, align 8, !tbaa !149
  tail call fastcc void @edbm_backbuf_check_and_select_verts(ptr noundef %31, i8 noundef zeroext %1) #17
  %32 = load i16, ptr %24, align 2, !tbaa !174
  br label %33

33:                                               ; preds = %30, %4
  %34 = phi i16 [ %32, %30 ], [ %25, %4 ]
  %35 = and i16 %34, 2
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %46, label %41

37:                                               ; preds = %28
  call void @mesh_foreachScreenVert(ptr noundef nonnull %0, ptr noundef nonnull @mesh_circle_doSelectVert, ptr noundef nonnull %5, i32 noundef 7) #15
  %38 = load i16, ptr %24, align 2, !tbaa !174
  %39 = and i16 %38, 2
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %46, label %45

41:                                               ; preds = %33
  %42 = icmp eq i8 %16, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %41
  %44 = load ptr, ptr %23, align 8, !tbaa !149
  tail call fastcc void @edbm_backbuf_check_and_select_edges(ptr noundef %44, i8 noundef zeroext %1) #17
  br label %46

45:                                               ; preds = %37, %41
  call void @mesh_foreachScreenEdge(ptr noundef nonnull %0, ptr noundef nonnull @mesh_circle_doSelectEdge, ptr noundef nonnull %5, i32 noundef 4) #15
  br label %46

46:                                               ; preds = %37, %43, %45, %33
  %47 = load i16, ptr %24, align 2, !tbaa !174
  %48 = and i16 %47, 4
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = icmp eq i8 %16, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %50
  %53 = load ptr, ptr %23, align 8, !tbaa !149
  call fastcc void @edbm_backbuf_check_and_select_faces(ptr noundef %53, i8 noundef zeroext %1) #17
  br label %55

54:                                               ; preds = %50
  call void @mesh_foreachScreenFace(ptr noundef nonnull %0, ptr noundef nonnull @mesh_circle_doSelectFace, ptr noundef nonnull %5, i32 noundef 7) #15
  br label %55

55:                                               ; preds = %52, %54, %46
  call void @EDBM_backbuf_free() #15
  %56 = load ptr, ptr %23, align 8, !tbaa !149
  call void @EDBM_selectmode_flush(ptr noundef %56) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nurbscurve_circle_select(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #1 !PGOFuncName !348 {
  %5 = alloca %struct.CircleSelectUserData, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call fastcc void @view3d_userdata_circleselect_init(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, float noundef %3) #17
  %6 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  tail call void @ED_view3d_init_mats_rv3d(ptr noundef %7, ptr noundef %9) #15
  call void @nurbs_foreachScreenVert(ptr noundef %0, ptr noundef nonnull @nurbscurve_circle_doSelect, ptr noundef nonnull %5, i32 noundef 7) #15
  %10 = load ptr, ptr %6, align 8, !tbaa !51
  %11 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !150
  call void @BKE_curve_nurb_vert_active_validate(ptr noundef %12) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lattice_circle_select(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #1 !PGOFuncName !349 {
  %5 = alloca %struct.CircleSelectUserData, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call fastcc void @view3d_userdata_circleselect_init(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, float noundef %3) #17
  %6 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  tail call void @ED_view3d_init_mats_rv3d(ptr noundef %7, ptr noundef %9) #15
  call void @lattice_foreachScreenVert(ptr noundef %0, ptr noundef nonnull @latticecurve_circle_doSelect, ptr noundef nonnull %5, i32 noundef 7) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @armature_circle_select(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #1 !PGOFuncName !350 {
  %5 = alloca %struct.CircleSelectUserData, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  %6 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !150
  call fastcc void @view3d_userdata_circleselect_init(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, float noundef %3) #17
  %10 = load ptr, ptr %6, align 8, !tbaa !51
  %11 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  tail call void @ED_view3d_init_mats_rv3d(ptr noundef %10, ptr noundef %12) #15
  call void @armature_foreachScreenBone(ptr noundef %0, ptr noundef nonnull @do_circle_select_armature__doSelectBone, ptr noundef nonnull %5, i32 noundef 7) #15
  %13 = getelementptr inbounds %struct.CircleSelectUserData, ptr %5, i64 0, i32 6
  %14 = load i8, ptr %13, align 4, !tbaa !343
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !191
  call void @ED_armature_sync_selection(ptr noundef %18) #15
  call void @ED_armature_validate_active(ptr noundef %9) #15
  %19 = load ptr, ptr %6, align 8, !tbaa !51
  call void @WM_main_add_notifier(i32 noundef 85327872, ptr noundef %19) #15
  br label %20

20:                                               ; preds = %16, %4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mball_circle_select(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #1 !PGOFuncName !351 {
  %5 = alloca %struct.CircleSelectUserData, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call fastcc void @view3d_userdata_circleselect_init(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, float noundef %3) #17
  %6 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  tail call void @ED_view3d_init_mats_rv3d(ptr noundef %7, ptr noundef %9) #15
  call void @mball_foreachScreenElem(ptr noundef %0, ptr noundef nonnull @do_circle_select_mball__doSelectElem, ptr noundef nonnull %5, i32 noundef 7) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @EDBM_backbuf_circle_init(ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @view3d_userdata_circleselect_init(ptr nocapture noundef writeonly %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture noundef readonly %3, float noundef %4) unnamed_addr #11 !PGOFuncName !352 {
  store ptr %1, ptr %0, align 8, !tbaa !353
  %6 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 1
  store i8 %2, ptr %6, align 8, !tbaa !354
  %7 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 2
  tail call fastcc void @copy_v2_v2_int(ptr noundef nonnull %7, ptr noundef %3) #17
  %8 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3
  %9 = load <2 x i32>, ptr %3, align 4, !tbaa !65
  %10 = sitofp <2 x i32> %9 to <2 x float>
  store <2 x float> %10, ptr %8, align 4, !tbaa !52
  %11 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 4
  store float %4, ptr %11, align 4, !tbaa !355
  %12 = fmul float %4, %4
  %13 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 5
  store float %12, ptr %13, align 8, !tbaa !356
  %14 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 6
  store i8 0, ptr %14, align 4, !tbaa !343
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mesh_circle_doSelectVert(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 %3) #1 !PGOFuncName !357 {
  %5 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3
  %6 = tail call fastcc float @len_squared_v2v2(ptr noundef nonnull %5, ptr noundef %2) #17
  %7 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 5
  %8 = load float, ptr %7, align 8, !tbaa !356
  %9 = fcmp ugt float %6, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !353
  %12 = getelementptr inbounds %struct.ViewContext, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !149
  %14 = load ptr, ptr %13, align 8, !tbaa !226
  %15 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !354
  tail call void @BM_vert_select_set(ptr noundef %14, ptr noundef %1, i8 noundef zeroext %16) #15
  br label %17

17:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edbm_backbuf_check_and_select_edges(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #1 !PGOFuncName !358 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #16
  %4 = load i32, ptr @bm_solidoffs, align 4, !tbaa !65
  %5 = load ptr, ptr %0, align 8, !tbaa !226
  %6 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %5, i8 noundef zeroext 2) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %2, %18
  %9 = phi i32 [ %19, %18 ], [ %4, %2 ]
  %10 = phi ptr [ %20, %18 ], [ %6, %2 ]
  %11 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %10) #17
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = call zeroext i8 @EDBM_backbuf_check(i32 noundef %9) #15
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 8, !tbaa !226
  call void @BM_edge_select_set(ptr noundef %17, ptr noundef nonnull %10, i8 noundef zeroext %1) #15
  br label %18

18:                                               ; preds = %13, %16, %8
  %19 = add i32 %9, 1
  %20 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #17
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !llvm.loop !359

22:                                               ; preds = %18, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mesh_circle_doSelectEdge(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 %4) #1 !PGOFuncName !360 {
  %6 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 4
  %8 = load float, ptr %7, align 4, !tbaa !355
  %9 = tail call zeroext i8 @edge_inside_circle(ptr noundef nonnull %6, float noundef %8, ptr noundef %2, ptr noundef %3) #17, !range !113
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 8, !tbaa !353
  %13 = getelementptr inbounds %struct.ViewContext, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !149
  %15 = load ptr, ptr %14, align 8, !tbaa !226
  %16 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 1
  %17 = load i8, ptr %16, align 8, !tbaa !354
  tail call void @BM_edge_select_set(ptr noundef %15, ptr noundef %1, i8 noundef zeroext %17) #15
  br label %18

18:                                               ; preds = %11, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mesh_circle_doSelectFace(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 %3) #1 !PGOFuncName !361 {
  %5 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3
  %6 = tail call fastcc float @len_squared_v2v2(ptr noundef nonnull %5, ptr noundef %2) #17
  %7 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 5
  %8 = load float, ptr %7, align 8, !tbaa !356
  %9 = fcmp ugt float %6, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !353
  %12 = getelementptr inbounds %struct.ViewContext, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !149
  %14 = load ptr, ptr %13, align 8, !tbaa !226
  %15 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !354
  tail call void @BM_face_select_set(ptr noundef %14, ptr noundef %1, i8 noundef zeroext %16) #15
  br label %17

17:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !362 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #17
  %4 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !363 {
  %3 = load float, ptr %0, align 4, !tbaa !52
  %4 = load float, ptr %1, align 4, !tbaa !52
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !52
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !52
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @nurbscurve_circle_doSelect(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #12 !PGOFuncName !364 {
  %7 = load ptr, ptr %0, align 8, !tbaa !353
  %8 = getelementptr inbounds %struct.ViewContext, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !150
  %12 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3
  %13 = tail call fastcc float @len_squared_v2v2(ptr noundef nonnull %12, ptr noundef %5) #17
  %14 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 5
  %15 = load float, ptr %14, align 8, !tbaa !356
  %16 = fcmp ugt float %13, %15
  br i1 %16, label %66, label %17

17:                                               ; preds = %6
  %18 = icmp eq ptr %2, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 1
  %21 = load i8, ptr %20, align 8, !tbaa !354
  %22 = icmp ne i8 %21, 0
  %23 = getelementptr inbounds %struct.BPoint, ptr %2, i64 0, i32 3
  %24 = load i16, ptr %23, align 4, !tbaa !246
  %25 = and i16 %24, -2
  %26 = zext i1 %22 to i16
  %27 = or disjoint i16 %25, %26
  %28 = getelementptr inbounds %struct.BPoint, ptr %2, i64 0, i32 3
  store i16 %27, ptr %28, align 4, !tbaa !246
  br label %66

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.Curve, ptr %11, i64 0, i32 16
  %31 = load i16, ptr %30, align 8, !tbaa !248
  %32 = and i16 %31, 1
  %33 = icmp eq i16 %32, 0
  %34 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 1
  %35 = load i8, ptr %34, align 8, !tbaa !354
  %36 = icmp ne i8 %35, 0
  br i1 %33, label %46, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  %39 = load i8, ptr %38, align 4, !tbaa !249
  %40 = and i8 %39, -2
  %41 = zext i1 %36 to i8
  %42 = or disjoint i8 %40, %41
  %43 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  store i8 %42, ptr %43, align 1, !tbaa !251
  %44 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  store i8 %42, ptr %44, align 4, !tbaa !249
  %45 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  store i8 %42, ptr %45, align 1, !tbaa !252
  br label %66

46:                                               ; preds = %29
  %47 = zext i1 %36 to i8
  switch i32 %4, label %60 [
    i32 0, label %48
    i32 1, label %54
  ]

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  %50 = load i8, ptr %49, align 1, !tbaa !252
  %51 = and i8 %50, -2
  %52 = or disjoint i8 %51, %47
  %53 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  store i8 %52, ptr %53, align 1, !tbaa !252
  br label %66

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  %56 = load i8, ptr %55, align 4, !tbaa !249
  %57 = and i8 %56, -2
  %58 = or disjoint i8 %57, %47
  %59 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  store i8 %58, ptr %59, align 4, !tbaa !249
  br label %66

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  %62 = load i8, ptr %61, align 1, !tbaa !251
  %63 = and i8 %62, -2
  %64 = or disjoint i8 %63, %47
  %65 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  store i8 %64, ptr %65, align 1, !tbaa !251
  br label %66

66:                                               ; preds = %19, %48, %60, %54, %37, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @latticecurve_circle_doSelect(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #11 !PGOFuncName !365 {
  %4 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3
  %5 = tail call fastcc float @len_squared_v2v2(ptr noundef nonnull %4, ptr noundef %2) #17
  %6 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 5
  %7 = load float, ptr %6, align 8, !tbaa !356
  %8 = fcmp ugt float %5, %7
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !354
  %12 = icmp ne i8 %11, 0
  %13 = getelementptr inbounds %struct.BPoint, ptr %1, i64 0, i32 3
  %14 = load i16, ptr %13, align 4, !tbaa !246
  %15 = and i16 %14, -2
  %16 = zext i1 %12 to i16
  %17 = or disjoint i16 %15, %16
  %18 = getelementptr inbounds %struct.BPoint, ptr %1, i64 0, i32 3
  store i16 %17, ptr %18, align 4, !tbaa !246
  br label %19

19:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_circle_select_armature__doSelectBone(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3) #1 !PGOFuncName !366 {
  %5 = load ptr, ptr %0, align 8, !tbaa !353
  %6 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !150
  %10 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !354
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 15
  %14 = load i32, ptr %13, align 8, !tbaa !223
  %15 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 10
  %16 = load i32, ptr %15, align 8, !tbaa !255
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %12, label %25, label %19

19:                                               ; preds = %4
  br i1 %18, label %67, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %22 = load i32, ptr %21, align 4, !tbaa !257
  %23 = and i32 %22, 2098176
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %67

25:                                               ; preds = %4
  br i1 %18, label %67, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %28 = load i32, ptr %27, align 4, !tbaa !257
  %29 = and i32 %28, 1024
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %20, %26
  %32 = load float, ptr %2, align 4, !tbaa !52
  %33 = fcmp une float %32, 1.200000e+04
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = tail call fastcc signext i16 @armature_circle_doSelectJoint(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i16 noundef signext 1) #17, !range !367
  %36 = trunc i16 %35 to i8
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i8 [ 0, %31 ], [ %36, %34 ]
  %39 = load float, ptr %3, align 4, !tbaa !52
  %40 = fcmp une float %39, 1.200000e+04
  br i1 %40, label %41, label %62

41:                                               ; preds = %37
  %42 = tail call fastcc signext i16 @armature_circle_doSelectJoint(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %3, i16 noundef signext 0) #17, !range !367
  %43 = icmp eq i16 %42, 0
  %44 = select i1 %43, i8 %38, i8 1
  %45 = icmp eq i8 %44, 0
  %46 = and i1 %33, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3
  %49 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 4
  %50 = load float, ptr %49, align 4, !tbaa !355
  %51 = tail call zeroext i8 @edge_inside_circle(ptr noundef nonnull %48, float noundef %50, ptr noundef nonnull %2, ptr noundef nonnull %3) #17, !range !113
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %47
  %54 = load i8, ptr %10, align 8, !tbaa !354
  %55 = icmp eq i8 %54, 0
  %56 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %57 = load i32, ptr %56, align 4, !tbaa !257
  %58 = and i32 %57, -8
  %59 = select i1 %55, i32 0, i32 7
  %60 = or disjoint i32 %58, %59
  store i32 %60, ptr %56, align 4, !tbaa !257
  %61 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 6
  store i8 1, ptr %61, align 4, !tbaa !343
  br label %62

62:                                               ; preds = %37, %53, %47, %41
  %63 = phi i8 [ 0, %53 ], [ 0, %47 ], [ %44, %41 ], [ %38, %37 ]
  %64 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 6
  %65 = load i8, ptr %64, align 4, !tbaa !343
  %66 = or i8 %65, %63
  store i8 %66, ptr %64, align 4, !tbaa !343
  br label %67

67:                                               ; preds = %25, %19, %62, %26, %20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef signext i16 @armature_circle_doSelectJoint(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i16 noundef signext %3) unnamed_addr #11 !PGOFuncName !368 {
  %5 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3
  %6 = tail call fastcc float @len_squared_v2v2(ptr noundef nonnull %5, ptr noundef %2) #17
  %7 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 5
  %8 = load float, ptr %7, align 8, !tbaa !356
  %9 = fcmp ugt float %6, %8
  br i1 %9, label %29, label %10

10:                                               ; preds = %4
  %11 = icmp eq i16 %3, 0
  %12 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 1
  %13 = load i8, ptr %12, align 8, !tbaa !354
  %14 = icmp eq i8 %13, 0
  %15 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %16 = load i32, ptr %15, align 4, !tbaa !257
  br i1 %11, label %22, label %17

17:                                               ; preds = %10
  br i1 %14, label %20, label %18

18:                                               ; preds = %17
  %19 = or i32 %16, 2
  br label %27

20:                                               ; preds = %17
  %21 = and i32 %16, -3
  br label %27

22:                                               ; preds = %10
  br i1 %14, label %25, label %23

23:                                               ; preds = %22
  %24 = or i32 %16, 4
  br label %27

25:                                               ; preds = %22
  %26 = and i32 %16, -5
  br label %27

27:                                               ; preds = %23, %25, %18, %20
  %28 = phi i32 [ %21, %20 ], [ %19, %18 ], [ %26, %25 ], [ %24, %23 ]
  store i32 %28, ptr %15, align 4, !tbaa !257
  br label %29

29:                                               ; preds = %27, %4
  %30 = phi i16 [ 0, %4 ], [ 1, %27 ]
  ret i16 %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @do_circle_select_mball__doSelectElem(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #11 !PGOFuncName !369 {
  %4 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3
  %5 = tail call fastcc float @len_squared_v2v2(ptr noundef nonnull %4, ptr noundef %2) #17
  %6 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 5
  %7 = load float, ptr %6, align 8, !tbaa !356
  %8 = fcmp ugt float %5, %7
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !354
  %12 = icmp ne i8 %11, 0
  %13 = getelementptr inbounds %struct.MetaElem, ptr %1, i64 0, i32 4
  %14 = load i16, ptr %13, align 2, !tbaa !259
  %15 = and i16 %14, -2
  %16 = zext i1 %12 to i16
  %17 = or disjoint i16 %15, %16
  store i16 %17, ptr %13, align 2, !tbaa !259
  %18 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 6
  store i8 1, ptr %18, align 4, !tbaa !343
  br label %19

19:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @paint_vertsel_circle_select_doSelectVert(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 %3) #11 !PGOFuncName !370 {
  %5 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3
  %6 = tail call fastcc float @len_squared_v2v2(ptr noundef nonnull %5, ptr noundef %2) #17
  %7 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 5
  %8 = load float, ptr %7, align 8, !tbaa !356
  %9 = fcmp ugt float %6, %8
  br i1 %9, label %19, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 1
  %12 = load i8, ptr %11, align 8, !tbaa !354
  %13 = icmp ne i8 %12, 0
  %14 = getelementptr inbounds %struct.MVert, ptr %1, i64 0, i32 2
  %15 = load i8, ptr %14, align 2, !tbaa !201
  %16 = and i8 %15, -2
  %17 = zext i1 %13 to i8
  %18 = or disjoint i8 %16, %17
  store i8 %18, ptr %14, align 2, !tbaa !201
  br label %19

19:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_circle_select_pose__doSelectBone(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) #1 !PGOFuncName !371 {
  %5 = load ptr, ptr %0, align 8, !tbaa !353
  %6 = getelementptr inbounds %struct.ViewContext, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !150
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !219
  %12 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 25
  %13 = load i32, ptr %12, align 8, !tbaa !221
  %14 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 15
  %15 = load i32, ptr %14, align 8, !tbaa !223
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %61, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.Bone, ptr %11, i64 0, i32 10
  %20 = load i32, ptr %19, align 8, !tbaa !224
  %21 = and i32 %20, 2097216
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %18
  %24 = load float, ptr %2, align 4, !tbaa !52
  %25 = fcmp une float %24, 1.200000e+04
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = tail call fastcc signext i16 @pchan_circle_doSelectJoint(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #17, !range !367
  %28 = trunc i16 %27 to i8
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i8 [ 0, %23 ], [ %28, %26 ]
  %31 = load float, ptr %3, align 4, !tbaa !52
  %32 = fcmp une float %31, 1.200000e+04
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = tail call fastcc signext i16 @pchan_circle_doSelectJoint(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %3) #17, !range !367
  %35 = icmp eq i16 %34, 0
  %36 = select i1 %35, i8 %30, i8 1
  %37 = icmp eq i8 %36, 0
  %38 = and i1 %25, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3
  %41 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 4
  %42 = load float, ptr %41, align 4, !tbaa !355
  %43 = tail call zeroext i8 @edge_inside_circle(ptr noundef nonnull %40, float noundef %42, ptr noundef nonnull %2, ptr noundef nonnull %3) #17, !range !113
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 1
  %47 = load i8, ptr %46, align 8, !tbaa !354
  %48 = icmp ne i8 %47, 0
  %49 = load ptr, ptr %10, align 8, !tbaa !219
  %50 = getelementptr inbounds %struct.Bone, ptr %49, i64 0, i32 10
  %51 = load i32, ptr %50, align 8, !tbaa !224
  %52 = and i32 %51, -2
  %53 = zext i1 %48 to i32
  %54 = or disjoint i32 %52, %53
  store i32 %54, ptr %50, align 8, !tbaa !224
  %55 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 6
  store i8 1, ptr %55, align 4, !tbaa !343
  br label %56

56:                                               ; preds = %29, %45, %39, %33
  %57 = phi i8 [ 0, %45 ], [ 0, %39 ], [ %36, %33 ], [ %30, %29 ]
  %58 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 6
  %59 = load i8, ptr %58, align 4, !tbaa !343
  %60 = or i8 %59, %57
  store i8 %60, ptr %58, align 4, !tbaa !343
  br label %61

61:                                               ; preds = %4, %56, %18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef signext i16 @pchan_circle_doSelectJoint(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !372 {
  %4 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 3
  %5 = tail call fastcc float @len_squared_v2v2(ptr noundef nonnull %4, ptr noundef %2) #17
  %6 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 5
  %7 = load float, ptr %6, align 8, !tbaa !356
  %8 = fcmp ugt float %5, %7
  br i1 %8, label %20, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CircleSelectUserData, ptr %0, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !354
  %12 = icmp ne i8 %11, 0
  %13 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !219
  %15 = getelementptr inbounds %struct.Bone, ptr %14, i64 0, i32 10
  %16 = load i32, ptr %15, align 8, !tbaa !224
  %17 = and i32 %16, -2
  %18 = zext i1 %12 to i32
  %19 = or disjoint i32 %17, %18
  store i32 %19, ptr %15, align 8, !tbaa !224
  br label %20

20:                                               ; preds = %9, %3
  %21 = phi i16 [ 0, %3 ], [ 1, %9 ]
  ret i16 %21
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #14

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize willreturn memory(read) }

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
!55 = distinct !{!55, !56, !57, !58}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.isvectorized", i32 1}
!58 = !{!"llvm.loop.unroll.runtime.disable"}
!59 = distinct !{!59, !56}
!60 = !{!61, !36, i64 176}
!61 = !{!"ARegion", !41, i64 0, !41, i64 8, !62, i64 16, !64, i64 176, !64, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !42, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !41, i64 240, !40, i64 248, !40, i64 264, !40, i64 280, !40, i64 296, !40, i64 312, !40, i64 328, !40, i64 344, !41, i64 360, !41, i64 368, !41, i64 376}
!62 = !{!"View2D", !63, i64 0, !63, i64 16, !64, i64 32, !64, i64 48, !64, i64 64, !37, i64 80, !37, i64 88, !42, i64 96, !42, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !41, i64 128, !36, i64 136, !36, i64 140, !41, i64 144, !41, i64 152}
!63 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!64 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!65 = !{!36, !36, i64 0}
!66 = !{!61, !36, i64 184}
!67 = !{!61, !39, i64 208}
!68 = !{!61, !39, i64 210}
!69 = !{!70, !41, i64 0}
!70 = !{!"wmOperatorType", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !40, i64 112, !41, i64 128, !41, i64 136, !41, i64 144, !71, i64 152, !39, i64 184}
!71 = !{!"ExtensionRNA", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24}
!72 = !{!70, !41, i64 24}
!73 = !{!70, !41, i64 8}
!74 = !{!70, !41, i64 48}
!75 = !{!70, !41, i64 64}
!76 = !{!70, !41, i64 32}
!77 = !{!70, !41, i64 72}
!78 = !{!70, !41, i64 56}
!79 = !{!70, !39, i64 184}
!80 = !{!70, !41, i64 88}
!81 = !{!"view3d_select.c:view3d_lasso_select_exec"}
!82 = !{!83, !41, i64 112}
!83 = !{!"wmOperator", !41, i64 0, !41, i64 8, !37, i64 16, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !40, i64 128, !41, i64 144, !41, i64 152, !39, i64 160, !37, i64 162}
!84 = !{!41, !41, i64 0}
!85 = !{!"view3d_select.c:view3d_selectable_data"}
!86 = !{!87, !36, i64 432}
!87 = !{!"Object", !88, i64 0, !41, i64 120, !41, i64 128, !39, i64 136, !39, i64 138, !36, i64 140, !36, i64 144, !36, i64 148, !37, i64 152, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288, !41, i64 296, !41, i64 304, !89, i64 312, !41, i64 360, !40, i64 368, !40, i64 384, !40, i64 400, !40, i64 416, !36, i64 432, !36, i64 436, !41, i64 440, !41, i64 448, !36, i64 456, !36, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !42, i64 616, !42, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !36, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !36, i64 968, !36, i64 972, !36, i64 976, !36, i64 980, !36, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !42, i64 1048, !42, i64 1052, !40, i64 1056, !40, i64 1072, !40, i64 1088, !40, i64 1104, !42, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !36, i64 1144, !36, i64 1148, !41, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !40, i64 1176, !40, i64 1192, !40, i64 1208, !40, i64 1224, !41, i64 1240, !41, i64 1248, !41, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !42, i64 1268, !41, i64 1272, !41, i64 1280, !41, i64 1288, !41, i64 1296, !90, i64 1304, !90, i64 1312, !36, i64 1320, !36, i64 1324, !40, i64 1328, !40, i64 1344, !41, i64 1360, !41, i64 1368, !41, i64 1376, !37, i64 1384, !41, i64 1392, !40, i64 1400, !41, i64 1416}
!88 = !{!"ID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !39, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !41, i64 112}
!89 = !{!"bAnimVizSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44}
!90 = !{!"long", !37, i64 0}
!91 = !{!87, !39, i64 136}
!92 = !{!70, !41, i64 104}
!93 = !{!"view3d_select.c:object_select_menu_exec"}
!94 = !{!95, !41, i64 32}
!95 = !{!"CollectionPointerLink", !41, i64 0, !41, i64 8, !96, i64 16}
!96 = !{!"PointerRNA", !97, i64 0, !41, i64 8, !41, i64 16}
!97 = !{!"", !41, i64 0}
!98 = !{!99, !36, i64 24}
!99 = !{!"Base", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !39, i64 28, !39, i64 30, !41, i64 32}
!100 = distinct !{!100, !56}
!101 = !{!99, !41, i64 32}
!102 = distinct !{!102, !56}
!103 = !{!"view3d_select.c:object_select_menu_enum_itemf"}
!104 = !{!37, !37, i64 0}
!105 = !{!106, !41, i64 24}
!106 = !{!"EnumPropertyItem", !36, i64 0, !41, i64 8, !36, i64 16, !41, i64 24, !41, i64 32}
!107 = !{!106, !41, i64 8}
!108 = !{!106, !36, i64 0}
!109 = !{!110, !36, i64 64}
!110 = !{!"SelMenuItemF", !37, i64 0, !36, i64 64}
!111 = !{!106, !36, i64 16}
!112 = distinct !{!112, !56}
!113 = !{i8 0, i8 2}
!114 = !{!115, !41, i64 152}
!115 = !{!"Scene", !88, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !40, i64 152, !41, i64 168, !41, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !36, i64 232, !36, i64 236, !36, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !116, i64 280, !123, i64 4264, !40, i64 4296, !40, i64 4312, !41, i64 4328, !41, i64 4336, !41, i64 4344, !41, i64 4352, !41, i64 4360, !41, i64 4368, !39, i64 4376, !39, i64 4378, !36, i64 4380, !40, i64 4384, !124, i64 4400, !125, i64 4416, !128, i64 4600, !41, i64 4608, !129, i64 4616, !41, i64 4640, !90, i64 4648, !90, i64 4656, !118, i64 4664, !119, i64 4824, !130, i64 4888, !41, i64 4952}
!116 = !{!"RenderData", !117, i64 0, !41, i64 248, !41, i64 256, !120, i64 264, !121, i64 328, !36, i64 400, !36, i64 404, !36, i64 408, !42, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !39, i64 432, !39, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !36, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !36, i64 484, !36, i64 488, !39, i64 492, !39, i64 494, !36, i64 496, !36, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !36, i64 516, !36, i64 520, !36, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !63, i64 544, !63, i64 560, !64, i64 576, !40, i64 592, !39, i64 608, !39, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !36, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !42, i64 660, !42, i64 664, !39, i64 668, !39, i64 670, !42, i64 672, !42, i64 676, !37, i64 680, !36, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !36, i64 2520, !39, i64 2524, !39, i64 2526, !42, i64 2528, !42, i64 2532, !39, i64 2536, !39, i64 2538, !42, i64 2540, !39, i64 2544, !39, i64 2546, !36, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !42, i64 2560, !42, i64 2564, !41, i64 2568, !36, i64 2576, !42, i64 2580, !37, i64 2584, !122, i64 2616, !36, i64 3976, !36, i64 3980}
!117 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !42, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !118, i64 24, !119, i64 184}
!118 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !42, i64 136, !42, i64 140, !41, i64 144, !41, i64 152}
!119 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!120 = !{!"QuicktimeCodecSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !39, i64 48, !39, i64 50, !36, i64 52, !36, i64 56, !36, i64 60}
!121 = !{!"FFMpegCodecData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !42, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !41, i64 64}
!122 = !{!"BakeData", !117, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !42, i64 1280, !42, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!123 = !{!"AudioData", !36, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !36, i64 16, !39, i64 20, !39, i64 22, !42, i64 24, !42, i64 28}
!124 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!125 = !{!"GameData", !124, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !126, i64 40, !39, i64 64, !39, i64 66, !42, i64 68, !127, i64 72, !42, i64 128, !42, i64 132, !36, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!126 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !42, i64 8, !42, i64 12, !41, i64 16}
!127 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !36, i64 40, !42, i64 44, !42, i64 48, !39, i64 52, !39, i64 54}
!128 = !{!"UnitSettings", !42, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!129 = !{!"PhysicsSettings", !37, i64 0, !36, i64 12, !36, i64 16, !36, i64 20}
!130 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!131 = !{!"view3d_select.c:mixed_bones_object_selectbuffer"}
!132 = !{!133, !39, i64 232}
!133 = !{!"View3D", !41, i64 0, !41, i64 8, !40, i64 16, !36, i64 32, !42, i64 36, !37, i64 40, !37, i64 56, !42, i64 72, !42, i64 76, !37, i64 80, !37, i64 81, !36, i64 84, !36, i64 88, !39, i64 92, !39, i64 94, !41, i64 96, !41, i64 104, !63, i64 112, !40, i64 128, !41, i64 144, !41, i64 152, !37, i64 160, !36, i64 224, !36, i64 228, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !42, i64 244, !42, i64 248, !42, i64 252, !42, i64 256, !37, i64 260, !37, i64 272, !39, i64 284, !39, i64 286, !39, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !40, i64 296, !40, i64 312, !40, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !41, i64 352, !41, i64 360, !41, i64 368}
!134 = !{!"view3d_select.c:selectbuffer_has_bones"}
!135 = distinct !{!135, !56}
!136 = !{!"view3d_select.c:mouse_select_eval_buffer"}
!137 = distinct !{!137, !56}
!138 = !{!115, !41, i64 168}
!139 = !{!99, !36, i64 20}
!140 = distinct !{!140, !56}
!141 = !{!133, !36, i64 224}
!142 = !{!99, !36, i64 16}
!143 = !{!87, !37, i64 1160}
!144 = distinct !{!144, !56}
!145 = !{!99, !41, i64 0}
!146 = distinct !{!146, !56}
!147 = distinct !{!147, !56}
!148 = !{!"view3d_select.c:view3d_borderselect_exec"}
!149 = !{!46, !41, i64 48}
!150 = !{!87, !41, i64 296}
!151 = !{i32 2, i32 5}
!152 = !{!"view3d_select.c:view3d_select_invoke"}
!153 = !{!"view3d_select.c:view3d_select_exec"}
!154 = !{!"view3d_select.c:view3d_circle_select_exec"}
!155 = !{!"view3d_select.c:view3d_lasso_select"}
!156 = !{!"view3d_select.c:do_lasso_select_paintface"}
!157 = !{!158, !36, i64 1296}
!158 = !{!"Mesh", !88, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !159, i64 280, !159, i64 480, !159, i64 680, !159, i64 880, !159, i64 1080, !36, i64 1280, !36, i64 1284, !36, i64 1288, !36, i64 1292, !36, i64 1296, !36, i64 1300, !36, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !36, i64 1344, !39, i64 1348, !39, i64 1350, !42, i64 1352, !36, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !39, i64 1366, !41, i64 1368}
!159 = !{!"CustomData", !41, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !41, i64 184, !41, i64 192}
!160 = !{!64, !36, i64 0}
!161 = !{!64, !36, i64 8}
!162 = !{!64, !36, i64 4}
!163 = !{!64, !36, i64 12}
!164 = !{!"view3d_select.c:do_lasso_select_paintvert"}
!165 = !{!133, !39, i64 240}
!166 = !{!158, !36, i64 1280}
!167 = !{!"view3d_select.c:do_lasso_select_objects"}
!168 = !{!99, !39, i64 28}
!169 = !{!99, !39, i64 30}
!170 = !{!87, !39, i64 948}
!171 = distinct !{!171, !56}
!172 = !{!"view3d_select.c:do_lasso_select_mesh"}
!173 = !{!115, !41, i64 264}
!174 = !{!175, !39, i64 46}
!175 = !{!"ToolSettings", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !42, i64 32, !42, i64 36, !42, i64 40, !39, i64 44, !39, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !42, i64 52, !39, i64 56, !37, i64 58, !37, i64 59, !176, i64 64, !178, i64 168, !42, i64 336, !42, i64 340, !39, i64 344, !39, i64 346, !37, i64 348, !37, i64 349, !39, i64 350, !42, i64 352, !42, i64 356, !42, i64 360, !42, i64 364, !42, i64 368, !42, i64 372, !42, i64 376, !42, i64 380, !42, i64 384, !42, i64 388, !39, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !41, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !39, i64 434, !39, i64 436, !39, i64 438, !39, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !36, i64 448, !36, i64 452, !36, i64 456, !36, i64 460, !39, i64 464, !39, i64 466, !36, i64 468, !42, i64 472, !42, i64 476, !179, i64 480, !180, i64 608}
!176 = !{!"ImagePaintSettings", !177, i64 0, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !37, i64 48, !36, i64 52, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !37, i64 88, !42, i64 100}
!177 = !{!"Paint", !41, i64 0, !41, i64 8, !41, i64 16, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36}
!178 = !{!"ParticleEditSettings", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !41, i64 120, !42, i64 128, !42, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !41, i64 152, !41, i64 160}
!179 = !{!"UnifiedPaintSettings", !36, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !37, i64 16, !37, i64 28, !36, i64 40, !37, i64 44, !42, i64 52, !36, i64 56, !36, i64 60, !37, i64 64, !37, i64 65, !42, i64 72, !37, i64 76, !36, i64 84, !42, i64 88, !37, i64 92, !37, i64 100, !36, i64 108, !41, i64 112, !42, i64 120, !36, i64 124}
!180 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !37, i64 20, !37, i64 21, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36}
!181 = !{!182, !36, i64 56}
!182 = !{!"LassoSelectUserData", !41, i64 0, !41, i64 8, !41, i64 16, !63, i64 24, !41, i64 40, !36, i64 48, !37, i64 52, !36, i64 56, !37, i64 60, !37, i64 61}
!183 = !{!182, !37, i64 60}
!184 = !{!"view3d_select.c:do_lasso_select_curve"}
!185 = !{!186, !41, i64 152}
!186 = !{!"Curve", !88, i64 0, !41, i64 120, !41, i64 128, !40, i64 136, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !39, i64 244, !39, i64 246, !39, i64 248, !39, i64 250, !42, i64 252, !42, i64 256, !36, i64 260, !39, i64 264, !39, i64 266, !36, i64 268, !42, i64 272, !42, i64 276, !42, i64 280, !39, i64 284, !39, i64 286, !39, i64 288, !39, i64 290, !36, i64 292, !36, i64 296, !37, i64 300, !39, i64 304, !37, i64 306, !37, i64 307, !42, i64 308, !42, i64 312, !42, i64 316, !42, i64 320, !42, i64 324, !42, i64 328, !42, i64 332, !42, i64 336, !42, i64 340, !42, i64 344, !36, i64 348, !36, i64 352, !36, i64 356, !36, i64 360, !36, i64 364, !41, i64 368, !41, i64 376, !37, i64 384, !41, i64 448, !41, i64 456, !41, i64 464, !41, i64 472, !41, i64 480, !36, i64 488, !36, i64 492, !41, i64 496, !187, i64 504, !42, i64 512, !42, i64 516, !42, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!187 = !{!"CharInfo", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !39, i64 6}
!188 = !{!"view3d_select.c:do_lasso_select_lattice"}
!189 = !{!"view3d_select.c:do_lasso_select_armature"}
!190 = !{!182, !37, i64 61}
!191 = !{!192, !41, i64 160}
!192 = !{!"bArmature", !88, i64 0, !41, i64 120, !40, i64 128, !40, i64 144, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !39, i64 208, !39, i64 210, !36, i64 212, !36, i64 216, !36, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !36, i64 248, !36, i64 252}
!193 = !{!"view3d_select.c:do_lasso_select_meta"}
!194 = !{!"view3d_select.c:edbm_backbuf_check_and_select_tfaces"}
!195 = !{!158, !41, i64 168}
!196 = !{!197, !37, i64 10}
!197 = !{!"MPoly", !36, i64 0, !36, i64 4, !39, i64 8, !37, i64 10, !37, i64 11}
!198 = distinct !{!198, !56}
!199 = !{!"view3d_select.c:edbm_backbuf_check_and_select_verts_obmode"}
!200 = !{!158, !41, i64 232}
!201 = !{!202, !37, i64 18}
!202 = !{!"MVert", !37, i64 0, !37, i64 12, !37, i64 18, !37, i64 19}
!203 = distinct !{!203, !56}
!204 = !{!"view3d_select.c:view3d_userdata_lassoselect_init"}
!205 = !{!182, !41, i64 0}
!206 = !{!182, !41, i64 8}
!207 = !{!182, !41, i64 16}
!208 = !{!182, !41, i64 40}
!209 = !{!182, !36, i64 48}
!210 = !{!182, !37, i64 52}
!211 = !{!"view3d_select.c:do_lasso_select_meshobject__doSelectVert"}
!212 = !{!"view3d_select.c:object_deselect_all_visible"}
!213 = distinct !{!213, !56}
!214 = !{!"view3d_select.c:do_lasso_select_pose"}
!215 = !{!87, !41, i64 288}
!216 = !{i64 0, i64 8, !84, i64 8, i64 8, !84, i64 16, i64 8, !84, i64 24, i64 8, !84, i64 32, i64 8, !84, i64 40, i64 8, !84, i64 48, i64 8, !84, i64 56, i64 8, !104}
!217 = !{!192, !36, i64 192}
!218 = !{!"view3d_select.c:do_lasso_select_pose__doSelectBone"}
!219 = !{!220, !41, i64 120}
!220 = !{!"bPoseChannel", !41, i64 0, !41, i64 8, !41, i64 16, !40, i64 24, !37, i64 40, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !41, i64 120, !41, i64 128, !41, i64 136, !40, i64 144, !40, i64 160, !41, i64 176, !41, i64 184, !41, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !42, i64 264, !39, i64 268, !39, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !42, i64 524, !42, i64 528, !42, i64 532, !41, i64 536}
!221 = !{!222, !36, i64 320}
!222 = !{!"Bone", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !40, i64 32, !37, i64 48, !42, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !36, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !42, i64 268, !42, i64 272, !42, i64 276, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !37, i64 308, !36, i64 320, !39, i64 324, !37, i64 326}
!223 = !{!192, !36, i64 216}
!224 = !{!222, !36, i64 176}
!225 = !{!"view3d_select.c:edbm_backbuf_check_and_select_verts"}
!226 = !{!227, !41, i64 0}
!227 = !{!"BMEditMesh", !41, i64 0, !41, i64 8, !36, i64 16, !41, i64 24, !36, i64 32, !41, i64 40, !41, i64 48, !90, i64 56, !41, i64 64, !36, i64 72, !41, i64 80, !36, i64 88, !39, i64 92, !39, i64 94, !41, i64 96, !36, i64 104}
!228 = distinct !{!228, !56}
!229 = !{!"view3d_select.c:do_lasso_select_mesh__doSelectVert"}
!230 = !{!"view3d_select.c:do_lasso_select_mesh__doSelectEdge"}
!231 = !{!"view3d_select.c:edbm_backbuf_check_and_select_faces"}
!232 = distinct !{!232, !56}
!233 = !{!"view3d_select.c:do_lasso_select_mesh__doSelectFace"}
!234 = !{!"view3d_select.c:BM_iter_new"}
!235 = !{!"view3d_select.c:_bm_elem_flag_test"}
!236 = !{!237, !37, i64 13}
!237 = !{!"BMHeader", !41, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!238 = !{!"view3d_select.c:BM_iter_step"}
!239 = !{!240, !41, i64 48}
!240 = !{!"BMIter", !37, i64 0, !41, i64 40, !41, i64 48, !36, i64 56, !37, i64 60}
!241 = !{!"view3d_select.c:BM_iter_init"}
!242 = !{!240, !37, i64 60}
!243 = !{!240, !41, i64 40}
!244 = !{!"view3d_select.c:edge_fully_inside_rect"}
!245 = !{!"view3d_select.c:do_lasso_select_curve__doSelect"}
!246 = !{!247, !39, i64 24}
!247 = !{!"BPoint", !37, i64 0, !42, i64 16, !42, i64 20, !39, i64 24, !39, i64 26, !42, i64 28, !42, i64 32}
!248 = !{!186, !39, i64 248}
!249 = !{!250, !37, i64 52}
!250 = !{!"BezTriple", !37, i64 0, !42, i64 36, !42, i64 40, !42, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !42, i64 56, !42, i64 60, !42, i64 64, !37, i64 68}
!251 = !{!250, !37, i64 53}
!252 = !{!250, !37, i64 51}
!253 = !{!"view3d_select.c:do_lasso_select_lattice__doSelect"}
!254 = !{!"view3d_select.c:do_lasso_select_armature__doSelectBone"}
!255 = !{!256, !36, i64 136}
!256 = !{!"EditBone", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !37, i64 40, !42, i64 104, !37, i64 108, !37, i64 120, !36, i64 132, !36, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !39, i64 180}
!257 = !{!256, !36, i64 132}
!258 = !{!"view3d_select.c:do_lasso_select_mball__doSelectElem"}
!259 = !{!260, !39, i64 26}
!260 = !{!"MetaElem", !41, i64 0, !41, i64 8, !41, i64 16, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !42, i64 32, !42, i64 36, !42, i64 40, !37, i64 44, !42, i64 60, !42, i64 64, !42, i64 68, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84, !41, i64 88, !41, i64 96}
!261 = !{!"view3d_select.c:len_manhattan_v2v2_int"}
!262 = !{i32 0, i32 -1}
!263 = !{!"view3d_select.c:copy_v2_v2_int"}
!264 = !{!"view3d_select.c:selectbuffer_ret_hits_9"}
!265 = !{!"view3d_select.c:selectbuffer_ret_hits_5"}
!266 = !{!"view3d_select.c:sub_v2_v2v2_int"}
!267 = !{!"view3d_select.c:len_manhattan_v2_int"}
!268 = !{!"view3d_select.c:do_mesh_box_select"}
!269 = !{!270, !36, i64 44}
!270 = !{!"BoxSelectUserData", !41, i64 0, !41, i64 8, !41, i64 16, !63, i64 24, !37, i64 40, !36, i64 44, !37, i64 48, !37, i64 49}
!271 = !{!270, !37, i64 48}
!272 = !{!"view3d_select.c:do_nurbs_box_select"}
!273 = !{!"view3d_select.c:do_meta_box_select"}
!274 = !{!275, !41, i64 160}
!275 = !{!"MetaBall", !88, i64 0, !41, i64 120, !40, i64 128, !40, i64 144, !41, i64 160, !41, i64 168, !41, i64 176, !37, i64 184, !37, i64 185, !39, i64 186, !39, i64 188, !39, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !42, i64 228, !42, i64 232, !42, i64 236, !41, i64 240}
!276 = !{!260, !39, i64 28}
!277 = distinct !{!277, !56}
!278 = !{!260, !39, i64 30}
!279 = distinct !{!279, !56}
!280 = !{!"view3d_select.c:do_armature_box_select"}
!281 = distinct !{!281, !56}
!282 = distinct !{!282, !56}
!283 = !{!256, !41, i64 24}
!284 = distinct !{!284, !56}
!285 = distinct !{!285, !56}
!286 = !{!"view3d_select.c:do_lattice_box_select"}
!287 = !{!"view3d_select.c:do_paintvert_box_select"}
!288 = !{!289, !41, i64 40}
!289 = !{!"ImBuf", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 20, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !41, i64 40, !41, i64 48, !37, i64 56, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !41, i64 88, !41, i64 96, !41, i64 104, !42, i64 112, !37, i64 120, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !41, i64 296, !41, i64 304, !36, i64 312, !37, i64 316, !37, i64 1340, !41, i64 2368, !36, i64 2376, !41, i64 2384, !36, i64 2392, !36, i64 2396, !41, i64 2400, !41, i64 2408, !41, i64 2416, !41, i64 2424, !36, i64 2432, !64, i64 2436, !290, i64 2456}
!290 = !{!"DDSData", !36, i64 0, !36, i64 4, !41, i64 8, !36, i64 16}
!291 = distinct !{!291, !56}
!292 = distinct !{!292, !56}
!293 = !{!"view3d_select.c:do_object_pose_box_select"}
!294 = distinct !{!294, !56}
!295 = !{!192, !41, i64 168}
!296 = distinct !{!296, !56}
!297 = distinct !{!297, !56}
!298 = !{!"view3d_select.c:view3d_userdata_boxselect_init"}
!299 = !{!270, !41, i64 0}
!300 = !{!270, !41, i64 8}
!301 = !{!270, !41, i64 16}
!302 = !{!270, !37, i64 40}
!303 = !{!270, !37, i64 49}
!304 = !{!"view3d_select.c:do_mesh_box_select__doSelectVert"}
!305 = !{!"view3d_select.c:do_mesh_box_select__doSelectEdge"}
!306 = !{!"view3d_select.c:do_mesh_box_select__doSelectFace"}
!307 = !{!"view3d_select.c:edge_inside_rect"}
!308 = !{!63, !42, i64 0}
!309 = !{!63, !42, i64 4}
!310 = !{!63, !42, i64 8}
!311 = !{!63, !42, i64 12}
!312 = !{!"view3d_select.c:do_nurbs_box_select__doSelect"}
!313 = !{!"view3d_select.c:do_lattice_box_select__doSelect"}
!314 = !{!"view3d_select.c:BLI_rcti_size_x"}
!315 = !{!"view3d_select.c:BLI_rcti_size_y"}
!316 = !{!"view3d_select.c:do_paintvert_box_select__doSelectVert"}
!317 = !{!"view3d_select.c:mouse_weight_paint_vertex_select"}
!318 = !{!"view3d_select.c:mouse_select"}
!319 = distinct !{!319, !56}
!320 = distinct !{!320, !56}
!321 = !{!322, !36, i64 152}
!322 = !{!"MovieTrackingTrack", !41, i64 0, !41, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !36, i64 120, !36, i64 124, !41, i64 128, !37, i64 136, !42, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !37, i64 164, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !36, i64 184, !42, i64 188, !41, i64 192, !42, i64 200, !42, i64 204}
!323 = !{!322, !36, i64 156}
!324 = !{!322, !36, i64 160}
!325 = !{!"view3d_select.c:object_mouse_select_menu"}
!326 = distinct !{!326, !56}
!327 = distinct !{!327, !56}
!328 = !{!329, !41, i64 8}
!329 = !{!"LinkNode", !41, i64 0, !41, i64 8}
!330 = distinct !{!330, !56}
!331 = !{!"view3d_select.c:len_manhattan_v2v2"}
!332 = !{!"view3d_select.c:deselect_all_tracks"}
!333 = distinct !{!333, !56}
!334 = distinct !{!334, !56}
!335 = !{!"view3d_select.c:deselectall_except"}
!336 = distinct !{!336, !56}
!337 = !{!"view3d_select.c:sub_v2_v2v2"}
!338 = !{!"view3d_select.c:len_manhattan_v2"}
!339 = !{!"view3d_select.c:obedit_circle_select"}
!340 = !{!"view3d_select.c:paint_facesel_circle_select"}
!341 = !{!"view3d_select.c:paint_vertsel_circle_select"}
!342 = !{!"view3d_select.c:pose_circle_select"}
!343 = !{!344, !37, i64 36}
!344 = !{!"CircleSelectUserData", !41, i64 0, !37, i64 8, !37, i64 12, !37, i64 20, !42, i64 28, !42, i64 32, !37, i64 36}
!345 = !{!"view3d_select.c:object_circle_select"}
!346 = distinct !{!346, !56}
!347 = !{!"view3d_select.c:mesh_circle_select"}
!348 = !{!"view3d_select.c:nurbscurve_circle_select"}
!349 = !{!"view3d_select.c:lattice_circle_select"}
!350 = !{!"view3d_select.c:armature_circle_select"}
!351 = !{!"view3d_select.c:mball_circle_select"}
!352 = !{!"view3d_select.c:view3d_userdata_circleselect_init"}
!353 = !{!344, !41, i64 0}
!354 = !{!344, !37, i64 8}
!355 = !{!344, !42, i64 28}
!356 = !{!344, !42, i64 32}
!357 = !{!"view3d_select.c:mesh_circle_doSelectVert"}
!358 = !{!"view3d_select.c:edbm_backbuf_check_and_select_edges"}
!359 = distinct !{!359, !56}
!360 = !{!"view3d_select.c:mesh_circle_doSelectEdge"}
!361 = !{!"view3d_select.c:mesh_circle_doSelectFace"}
!362 = !{!"view3d_select.c:len_squared_v2v2"}
!363 = !{!"view3d_select.c:dot_v2v2"}
!364 = !{!"view3d_select.c:nurbscurve_circle_doSelect"}
!365 = !{!"view3d_select.c:latticecurve_circle_doSelect"}
!366 = !{!"view3d_select.c:do_circle_select_armature__doSelectBone"}
!367 = !{i16 0, i16 2}
!368 = !{!"view3d_select.c:armature_circle_doSelectJoint"}
!369 = !{!"view3d_select.c:do_circle_select_mball__doSelectElem"}
!370 = !{!"view3d_select.c:paint_vertsel_circle_select_doSelectVert"}
!371 = !{!"view3d_select.c:do_circle_select_pose__doSelectBone"}
!372 = !{!"view3d_select.c:pchan_circle_doSelectJoint"}
