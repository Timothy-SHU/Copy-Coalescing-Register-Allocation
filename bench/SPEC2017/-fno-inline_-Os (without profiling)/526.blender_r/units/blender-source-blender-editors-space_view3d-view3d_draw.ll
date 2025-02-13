; ModuleID = 'blender/source/blender/editors/space_view3d/view3d_draw.c'
source_filename = "blender/source/blender/editors/space_view3d/view3d_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
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
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.CameraParams = type { i8, float, float, float, float, float, float, float, float, float, i32, float, float, i32, i32, i32, float, float, float, %struct.rctf, [4 x [4 x float]] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.View3DAfter = type { ptr, ptr, ptr, i16 }
%struct.ViewDepths = type { i16, i16, i16, i16, ptr, [2 x double], i8 }
%struct.BoundBox = type { [8 x [3 x float]], i32, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.DupliObject = type { ptr, ptr, ptr, [4 x [4 x float]], [3 x float], [2 x float], i16, i8, i8, [8 x i32], ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.View3DShadow = type { ptr, ptr, ptr }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ScreenFrameRateInfo = type { double, double, [8 x float], i16 }
%struct.RenderEngineType = type { ptr, ptr, [64 x i8], [64 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.RenderEngine = type { ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.ListBase, [512 x i8], i32, i32, ptr, i32, i32, %struct.rctf, %struct.rcti, [4 x [4 x float]], i32, i32 }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
%struct.BGpic = type { ptr, ptr, ptr, %struct.ImageUser, ptr, %struct.MovieClipUser, float, float, float, float, i16, i16, i16, i16 }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.Camera = type { %struct.ID, ptr, i8, i8, i16, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, i8, [7 x i8] }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"View 3d after\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"View depths Subset\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ViewDepths\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"View depths\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"fps: %.2f\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"fps: %i\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [65 x i8] c"Failed to create offscreen selection buffer for multisample: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"View3DShadow\00", align 1
@__const.view3d_draw_clipping.clipping_index = private unnamed_addr constant [6 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 0, i32 4, i32 5, i32 1], [4 x i32] [i32 4, i32 7, i32 6, i32 5], [4 x i32] [i32 7, i32 3, i32 2, i32 6], [4 x i32] [i32 1, i32 5, i32 6, i32 2], [4 x i32] [i32 7, i32 4, i32 0, i32 3]], align 16
@view3d_main_area_clear.grid_pos = internal global [16 x [16 x [3 x float]]] zeroinitializer, align 16
@view3d_main_area_clear.indices = internal global [15 x [15 x [4 x i16]]] zeroinitializer, align 16
@view3d_main_area_clear.buf_calculated = internal unnamed_addr global i1 false, align 1
@__const.draw_rotation_guide.color = private unnamed_addr constant [4 x float] [float 0.000000e+00, float 0x3FDB1A9FC0000000, float 1.000000e+00, float 1.000000e+00], align 16
@__const.draw_rotation_guide.up = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"%s x %.4g\00", align 1
@view3d_camera_border_hack_test = external local_unnamed_addr global i8, align 1
@view3d_camera_border_hack_col = external global [3 x i8], align 1
@.str.9 = private unnamed_addr constant [10 x i8] c" (Pinned)\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c" <%s>\00", align 1
@__const.view3d_main_area_draw_engine_info.fill_color = private unnamed_addr constant [4 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 2.500000e-01], align 16
@.str.13 = private unnamed_addr constant [11 x i8] c"%s (Local)\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Front Ortho\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"Front Persp\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"Back Ortho\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"Back Persp\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"Top Ortho\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"Top Persp\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"Bottom Ortho\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"Bottom Persp\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Right Ortho\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"Right Persp\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"Left Ortho\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"Left Persp\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"Camera Persp\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"Camera Ortho\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"Object as Camera\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"User Ortho\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"User Persp\00", align 1
@switch.table.draw_view_icon = private unnamed_addr constant [6 x i32] [i32 637, i32 637, i32 636, i32 636, i32 638, i32 638], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @circf(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @gluNewQuadric() #15
  tail call void @gluQuadricDrawStyle(ptr noundef %4, i32 noundef 100012) #15
  tail call void @glPushMatrix() #15
  tail call void @glTranslatef(float noundef %0, float noundef %1, float noundef 0.000000e+00) #15
  %5 = fpext float %2 to double
  tail call void @gluDisk(ptr noundef %4, double noundef 0.000000e+00, double noundef %5, i32 noundef 32, i32 noundef 1) #15
  tail call void @glPopMatrix() #15
  tail call void @gluDeleteQuadric(ptr noundef %4) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @gluNewQuadric() local_unnamed_addr #2

; Function Attrs: optsize
declare void @gluQuadricDrawStyle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gluDisk(ptr noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @gluDeleteQuadric(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @circ(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @gluNewQuadric() #15
  tail call void @gluQuadricDrawStyle(ptr noundef %4, i32 noundef 100013) #15
  tail call void @glPushMatrix() #15
  tail call void @glTranslatef(float noundef %0, float noundef %1, float noundef 0.000000e+00) #15
  %5 = fpext float %2 to double
  tail call void @gluDisk(ptr noundef %4, double noundef 0.000000e+00, double noundef %5, i32 noundef 32, i32 noundef 1) #15
  tail call void @glPopMatrix() #15
  tail call void @gluDeleteQuadric(ptr noundef %4) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_clipping_set(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [4 x double], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #16
  %3 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 27
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = and i8 %4, 4
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, i64 6, i64 4
  br label %8

8:                                                ; preds = %1, %8
  %9 = phi i64 [ 0, %1 ], [ %13, %8 ]
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 7, i64 %9
  call fastcc void @copy_v4db_v4fl(ptr noundef nonnull %2, ptr noundef nonnull %10) #17
  %11 = trunc i64 %9 to i32
  %12 = add i32 %11, 12288
  call void @glClipPlane(i32 noundef %12, ptr noundef nonnull %2) #15
  call void @glEnable(i32 noundef %12) #15
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, %7
  br i1 %14, label %15, label %8, !llvm.loop !12

15:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4db_v4fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load <2 x float>, ptr %1, align 4, !tbaa !14
  %4 = fpext <2 x float> %3 to <2 x double>
  store <2 x double> %4, ptr %0, align 8, !tbaa !15
  %5 = getelementptr inbounds float, ptr %1, i64 2
  %6 = getelementptr inbounds double, ptr %0, i64 2
  %7 = load <2 x float>, ptr %5, align 4, !tbaa !14
  %8 = fpext <2 x float> %7 to <2 x double>
  store <2 x double> %8, ptr %6, align 8, !tbaa !15
  ret void
}

; Function Attrs: optsize
declare void @glClipPlane(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_clipping_disable() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %4, %1 ]
  %3 = or disjoint i32 %2, 12288
  tail call void @glDisable(i32 noundef %3) #15
  %4 = add nuw nsw i32 %2, 1
  %5 = icmp eq i32 %4, 6
  br i1 %5, label %6, label %1, !llvm.loop !17

6:                                                ; preds = %1
  ret void
}

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_clipping_enable() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %4, %1 ]
  %3 = or disjoint i32 %2, 12288
  tail call void @glEnable(i32 noundef %3) #15
  %4 = add nuw nsw i32 %2, 1
  %5 = icmp eq i32 %4, 6
  br i1 %5, label %6, label %1, !llvm.loop !18

6:                                                ; preds = %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @ED_view3d_clipping_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #4 {
  %4 = icmp eq i8 %2, 0
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 8
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 7
  %7 = select i1 %4, ptr %6, ptr %5
  %8 = tail call fastcc zeroext i8 @view3d_clipping_test(ptr noundef %1, ptr noundef nonnull %7) #17, !range !19
  ret i8 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @view3d_clipping_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = tail call fastcc float @plane_point_side_v3(ptr noundef %1, ptr noundef %0) #17
  %4 = fcmp ogt float %3, 0.000000e+00
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = getelementptr inbounds [4 x float], ptr %1, i64 1
  %7 = tail call fastcc float @plane_point_side_v3(ptr noundef nonnull %6, ptr noundef %0) #17
  %8 = fcmp ogt float %7, 0.000000e+00
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = getelementptr inbounds [4 x float], ptr %1, i64 2
  %11 = tail call fastcc float @plane_point_side_v3(ptr noundef nonnull %10, ptr noundef %0) #17
  %12 = fcmp ogt float %11, 0.000000e+00
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %15 = tail call fastcc float @plane_point_side_v3(ptr noundef nonnull %14, ptr noundef %0) #17
  %16 = fcmp ogt float %15, 0.000000e+00
  br i1 %16, label %18, label %17

17:                                               ; preds = %5, %13, %9, %2
  br label %18

18:                                               ; preds = %13, %17
  %19 = phi i8 [ 1, %17 ], [ 0, %13 ]
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @ED_scene_grid_scale(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 38
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 38, i32 1
  %7 = load i8, ptr %6, align 4, !tbaa !20
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %10 = zext i8 %7 to i32
  call void @bUnit_GetSystem(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %10, i32 noundef 1) #15
  %11 = load ptr, ptr %3, align 8, !tbaa !43
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %26

14:                                               ; preds = %9
  %15 = call i32 @bUnit_GetBaseUnit(ptr noundef nonnull %11) #15
  %16 = icmp eq ptr %1, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %3, align 8, !tbaa !43
  %19 = call ptr @bUnit_GetNameDisplay(ptr noundef %18, i32 noundef %15) #15
  store ptr %19, ptr %1, align 8, !tbaa !43
  br label %20

20:                                               ; preds = %14, %17
  %21 = load ptr, ptr %3, align 8, !tbaa !43
  %22 = call double @bUnit_GetScaler(ptr noundef %21, i32 noundef %15) #15
  %23 = fptrunc double %22 to float
  %24 = load float, ptr %5, align 8, !tbaa !44
  %25 = fdiv float %23, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %26

26:                                               ; preds = %2, %13, %20
  %27 = phi float [ %25, %20 ], [ 1.000000e+00, %13 ], [ 1.000000e+00, %2 ]
  ret float %27
}

; Function Attrs: optsize
declare void @bUnit_GetSystem(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bUnit_GetBaseUnit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bUnit_GetNameDisplay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare double @bUnit_GetScaler(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @ED_view3d_grid_scale(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 31
  %5 = load float, ptr %4, align 8, !tbaa !45
  %6 = tail call float @ED_scene_grid_scale(ptr noundef %0, ptr noundef %2) #17
  %7 = fmul float %5, %6
  ret float %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_calc_camera_border_size(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.rctf, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call fastcc void @view3d_camera_border(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  %7 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %6) #17
  store float %7, ptr %4, align 4, !tbaa !14
  %8 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %6) #17
  %9 = getelementptr inbounds float, ptr %4, i64 1
  store float %8, ptr %9, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_camera_border(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4, i8 noundef zeroext %5, i8 noundef zeroext %6) unnamed_addr #0 {
  %8 = alloca %struct.CameraParams, align 4
  %9 = alloca %struct.rctf, align 16
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #16
  call void @BKE_camera_params_init(ptr noundef nonnull %8) #15
  call void @BKE_camera_params_from_view3d(ptr noundef nonnull %8, ptr noundef %2, ptr noundef %3) #15
  %10 = icmp eq i8 %6, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.CameraParams, ptr %8, i64 0, i32 3
  store float 1.000000e+00, ptr %12, align 4, !tbaa !47
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %15 = load i16, ptr %14, align 8, !tbaa !49
  %16 = sext i16 %15 to i32
  %17 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %18 = load i16, ptr %17, align 2, !tbaa !52
  %19 = sext i16 %18 to i32
  call void @BKE_camera_params_compute_viewplane(ptr noundef nonnull %8, i32 noundef %16, i32 noundef %19, float noundef 1.000000e+00, float noundef 1.000000e+00) #15
  %20 = getelementptr inbounds %struct.CameraParams, ptr %8, i64 0, i32 19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %20, i64 16, i1 false), !tbaa.struct !53
  call void @BKE_camera_params_init(ptr noundef nonnull %8) #15
  %21 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 32
  %22 = getelementptr inbounds %struct.CameraParams, ptr %8, i64 0, i32 11
  %23 = load <2 x float>, ptr %21, align 4, !tbaa !14
  store <2 x float> %23, ptr %22, align 4, !tbaa !14
  %24 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 15
  %25 = load ptr, ptr %24, align 8, !tbaa !54
  call void @BKE_camera_params_from_object(ptr noundef nonnull %8, ptr noundef %25) #15
  %26 = icmp eq i8 %5, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %13
  %28 = getelementptr inbounds %struct.CameraParams, ptr %8, i64 0, i32 4
  store <2 x float> zeroinitializer, ptr %28, align 4, !tbaa !14
  br label %29

29:                                               ; preds = %27, %13
  %30 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 33
  %31 = load i32, ptr %30, align 4, !tbaa !55
  %32 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 34
  %33 = load i32, ptr %32, align 8, !tbaa !56
  %34 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 63
  %35 = load float, ptr %34, align 4, !tbaa !57
  %36 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 64
  %37 = load float, ptr %36, align 8, !tbaa !58
  call void @BKE_camera_params_compute_viewplane(ptr noundef nonnull %8, i32 noundef %31, i32 noundef %33, float noundef %35, float noundef %37) #15
  %38 = load <4 x float>, ptr %9, align 16
  %39 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %9) #17
  %40 = getelementptr inbounds %struct.rctf, ptr %9, i64 0, i32 2
  %41 = load float, ptr %40, align 8, !tbaa !59
  %42 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %9) #17
  %43 = load <4 x float>, ptr %20, align 4
  %44 = load <2 x i16>, ptr %14, align 8, !tbaa !60
  %45 = sitofp <2 x i16> %44 to <2 x float>
  %46 = shufflevector <2 x float> %45, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %47 = insertelement <4 x float> %38, float %41, i64 1
  %48 = shufflevector <4 x float> %47, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %49 = fsub <4 x float> %43, %48
  %50 = insertelement <4 x float> poison, float %39, i64 0
  %51 = insertelement <4 x float> %50, float %42, i64 1
  %52 = shufflevector <4 x float> %51, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %53 = fdiv <4 x float> %49, %52
  %54 = fmul <4 x float> %53, %46
  store <4 x float> %54, ptr %4, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %8) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !61
  %4 = load float, ptr %0, align 4, !tbaa !62
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !63
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !59
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_calc_camera_border(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  tail call fastcc void @view3d_camera_border(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext 0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @view3d_opengl_read_pixels(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  tail call void @GPU_offscreen_bind(ptr noundef nonnull %12) #15
  tail call void @glReadBuffer(i32 noundef 36064) #15
  tail call void @glReadPixels(i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) #15
  %15 = load ptr, ptr %11, align 8, !tbaa !65
  tail call void @GPU_offscreen_unbind(ptr noundef %15) #15
  br label %23

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !66
  %19 = add nsw i32 %18, %1
  %20 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !67
  %22 = add nsw i32 %21, %2
  tail call void @glReadPixels(i32 noundef %19, i32 noundef %22, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) #15
  br label %23

23:                                               ; preds = %16, %14
  ret void
}

; Function Attrs: optsize
declare void @GPU_offscreen_bind(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glReadBuffer(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glReadPixels(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_offscreen_unbind(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @view3d_validate_backbuf(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 28
  %5 = load i16, ptr %4, align 8, !tbaa !70
  %6 = and i16 %5, 8
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  tail call fastcc void @backdrawview3d(ptr noundef %9, ptr noundef %11, ptr noundef nonnull %3) #17
  br label %12

12:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @backdrawview3d(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [256 x i8], align 16
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  %9 = icmp eq ptr %8, null
  br i1 %9, label %42, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !74
  %13 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 27
  %14 = load i32, ptr %13, align 8, !tbaa !76
  %15 = and i32 %14, 12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %59

17:                                               ; preds = %10
  %18 = tail call zeroext i8 @BKE_paint_select_face_test(ptr noundef nonnull %12) #15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %17
  %21 = load ptr, ptr %11, align 8, !tbaa !74
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 27
  %23 = load i32, ptr %22, align 8, !tbaa !76
  %24 = and i32 %23, 16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 24
  %28 = load i16, ptr %27, align 8, !tbaa !79
  %29 = icmp sgt i16 %28, 2
  br i1 %29, label %59, label %30

30:                                               ; preds = %20, %26
  %31 = and i32 %23, 32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 24
  %35 = load i16, ptr %34, align 8, !tbaa !79
  %36 = icmp sgt i16 %35, 2
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  %39 = load i16, ptr %38, align 8, !tbaa !70
  %40 = and i16 %39, 4096
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %3, %37, %33, %30
  %43 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !80
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 24
  %48 = load i16, ptr %47, align 8, !tbaa !79
  %49 = icmp sgt i16 %48, 2
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  %52 = load i16, ptr %51, align 8, !tbaa !70
  %53 = and i16 %52, 4096
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50, %46, %42
  %56 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  %57 = load i16, ptr %56, align 8, !tbaa !70
  %58 = and i16 %57, -9
  store i16 %58, ptr %56, align 8, !tbaa !70
  br label %157

59:                                               ; preds = %26, %50, %37, %10, %17
  %60 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  %61 = load i16, ptr %60, align 8, !tbaa !70
  %62 = and i16 %61, 8
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %157, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 24
  %66 = load i16, ptr %65, align 8, !tbaa !79
  %67 = icmp sgt i16 %66, 2
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 47
  store i8 1, ptr %69, align 8, !tbaa !81
  br label %70

70:                                               ; preds = %68, %64
  tail call void @glDisable(i32 noundef 3024) #15
  %71 = tail call zeroext i8 @glIsEnabled(i32 noundef 32925) #15
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  tail call void @glDisable(i32 noundef 32925) #15
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 88), align 8, !tbaa !82
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %103, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %79 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %78) #17
  %80 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %78) #17
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #16
  %81 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 13
  %82 = load ptr, ptr %81, align 8, !tbaa !65
  %83 = icmp eq ptr %82, null
  br i1 %83, label %96, label %84

84:                                               ; preds = %77
  %85 = tail call i32 @GPU_offscreen_width(ptr noundef nonnull %82) #15
  %86 = icmp eq i32 %85, %79
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load ptr, ptr %81, align 8, !tbaa !65
  %89 = tail call i32 @GPU_offscreen_height(ptr noundef %88) #15
  %90 = icmp eq i32 %89, %80
  br i1 %90, label %93, label %91

91:                                               ; preds = %87, %84
  %92 = load ptr, ptr %81, align 8, !tbaa !65
  tail call void @GPU_offscreen_free(ptr noundef %92) #15
  store ptr null, ptr %81, align 8, !tbaa !65
  br label %96

93:                                               ; preds = %87
  %94 = load ptr, ptr %81, align 8, !tbaa !65
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %77, %91, %93
  %97 = call ptr @GPU_offscreen_create(i32 noundef %79, i32 noundef %80, ptr noundef nonnull %4) #15
  store ptr %97, ptr %81, align 8, !tbaa !65
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load ptr, ptr @stderr, align 8, !tbaa !43
  %101 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef nonnull @.str.6, ptr noundef nonnull %4) #18
  br label %102

102:                                              ; preds = %96, %99, %93
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #16
  br label %103

103:                                              ; preds = %102, %74
  %104 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 13
  %105 = load ptr, ptr %104, align 8, !tbaa !65
  %106 = icmp eq ptr %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  call void @GPU_offscreen_bind(ptr noundef nonnull %105) #15
  br label %115

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %110 = load i32, ptr %109, align 8, !tbaa !66
  %111 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %112 = load i32, ptr %111, align 8, !tbaa !67
  %113 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %109) #17
  %114 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %109) #17
  call void @glScissor(i32 noundef %110, i32 noundef %112, i32 noundef %113, i32 noundef %114) #15
  br label %115

115:                                              ; preds = %108, %107
  call void @glClearColor(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  %116 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 47
  %117 = load i8, ptr %116, align 8, !tbaa !81
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  call void @glEnable(i32 noundef 2929) #15
  call void @glClear(i32 noundef 16640) #15
  br label %121

120:                                              ; preds = %115
  call void @glClear(i32 noundef 16384) #15
  call void @glDisable(i32 noundef 2929) #15
  br label %121

121:                                              ; preds = %120, %119
  %122 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 32
  %123 = load i16, ptr %122, align 2, !tbaa !86
  %124 = and i16 %123, 4
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %121
  call void @ED_view3d_clipping_set(ptr noundef nonnull %6) #17
  br label %127

127:                                              ; preds = %126, %121
  %128 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !87
  %129 = or i32 %128, 16
  store i32 %129, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !87
  br i1 %9, label %140, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 2
  %132 = load i32, ptr %131, align 8, !tbaa !89
  %133 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 22
  %134 = load i32, ptr %133, align 8, !tbaa !90
  %135 = and i32 %134, %132
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 7
  %139 = load ptr, ptr %138, align 8, !tbaa !74
  call void @draw_object_backbufsel(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef %139) #15
  br label %140

140:                                              ; preds = %137, %130, %127
  %141 = load ptr, ptr %104, align 8, !tbaa !65
  %142 = icmp eq ptr %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %140
  call void @GPU_offscreen_unbind(ptr noundef nonnull %141) #15
  br label %146

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 16
  store i16 0, ptr %145, align 8, !tbaa !91
  br label %146

146:                                              ; preds = %144, %143
  %147 = load i16, ptr %60, align 8, !tbaa !70
  %148 = and i16 %147, -9
  store i16 %148, ptr %60, align 8, !tbaa !70
  %149 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !87
  %150 = and i32 %149, -17
  store i32 %150, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !87
  store i8 0, ptr %116, align 8, !tbaa !81
  call void @glDisable(i32 noundef 2929) #15
  call void @glEnable(i32 noundef 3024) #15
  br i1 %72, label %152, label %151

151:                                              ; preds = %146
  call void @glEnable(i32 noundef 32925) #15
  br label %152

152:                                              ; preds = %151, %146
  %153 = load i16, ptr %122, align 2, !tbaa !86
  %154 = and i16 %153, 4
  %155 = icmp eq i16 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %152
  call void @ED_view3d_clipping_disable() #17
  br label %157

157:                                              ; preds = %152, %156, %59, %55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @view3d_sample_backbuf(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 5
  %8 = load i16, ptr %7, align 8, !tbaa !49
  %9 = sext i16 %8 to i32
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 6
  %13 = load i16, ptr %12, align 2, !tbaa !52
  %14 = sext i16 %13 to i32
  %15 = icmp sgt i32 %14, %2
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  tail call void @view3d_validate_backbuf(ptr noundef nonnull %0) #17
  %17 = load ptr, ptr %5, align 8, !tbaa !72
  call void @view3d_opengl_read_pixels(ptr noundef %17, i32 noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 1, i32 noundef 6408, i32 noundef 5121, ptr noundef nonnull %4) #17
  call void @glReadBuffer(i32 noundef 1029) #15
  %18 = load i32, ptr %4, align 4, !tbaa !92
  %19 = call i32 @WM_framebuffer_to_index(i32 noundef %18) #15
  br label %20

20:                                               ; preds = %3, %11, %16
  %21 = phi i32 [ %19, %16 ], [ 0, %11 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret i32 %21
}

; Function Attrs: optsize
declare i32 @WM_framebuffer_to_index(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @view3d_read_backbuf(ptr nocapture noundef readonly %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4) local_unnamed_addr #0 {
  %6 = sext i16 %1 to i32
  %7 = tail call i16 @llvm.smax.i16(i16 %1, i16 0)
  %8 = sext i16 %3 to i32
  %9 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 5
  %12 = load i16, ptr %11, align 8, !tbaa !49
  %13 = icmp sgt i16 %12, %3
  %14 = add i16 %12, -1
  %15 = select i1 %13, i16 %3, i16 %14
  %16 = zext nneg i16 %7 to i32
  %17 = sext i16 %15 to i32
  %18 = icmp sgt i16 %7, %15
  br i1 %18, label %104, label %19

19:                                               ; preds = %5
  %20 = sext i16 %2 to i32
  %21 = tail call i16 @llvm.smax.i16(i16 %2, i16 0)
  %22 = sext i16 %4 to i32
  %23 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 6
  %24 = load i16, ptr %23, align 2, !tbaa !52
  %25 = icmp sgt i16 %24, %4
  %26 = add i16 %24, -1
  %27 = select i1 %25, i16 %4, i16 %26
  %28 = icmp sgt i16 %21, %27
  br i1 %28, label %104, label %29

29:                                               ; preds = %19
  %30 = zext nneg i16 %21 to i32
  %31 = zext nneg i16 %27 to i32
  %32 = sub nsw i32 %17, %16
  %33 = add nsw i32 %32, 1
  %34 = sub nsw i32 %31, %30
  %35 = add nsw i32 %34, 1
  %36 = tail call ptr @IMB_allocImBuf(i32 noundef %33, i32 noundef %35, i8 noundef zeroext 32, i32 noundef 1) #15
  tail call void @view3d_validate_backbuf(ptr noundef nonnull %0) #17
  %37 = load ptr, ptr %9, align 8, !tbaa !72
  %38 = getelementptr inbounds %struct.ImBuf, ptr %36, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !93
  tail call void @view3d_opengl_read_pixels(ptr noundef %37, i32 noundef %16, i32 noundef %30, i32 noundef %33, i32 noundef %35, i32 noundef 6408, i32 noundef 5121, ptr noundef %39) #17
  tail call void @glReadBuffer(i32 noundef 1029) #15
  %40 = mul nsw i32 %35, %33
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %29
  %43 = load ptr, ptr %38, align 8, !tbaa !93
  br label %44

44:                                               ; preds = %42, %52
  %45 = phi i32 [ %47, %52 ], [ %40, %42 ]
  %46 = phi ptr [ %53, %52 ], [ %43, %42 ]
  %47 = add nsw i32 %45, -1
  %48 = load i32, ptr %46, align 4, !tbaa !92
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = tail call i32 @WM_framebuffer_to_index(i32 noundef %48) #15
  store i32 %51, ptr %46, align 4, !tbaa !92
  br label %52

52:                                               ; preds = %50, %44
  %53 = getelementptr inbounds i32, ptr %46, i64 1
  %54 = icmp eq i32 %47, 0
  br i1 %54, label %55, label %44, !llvm.loop !96

55:                                               ; preds = %52, %29
  %56 = icmp eq i16 %15, %3
  %57 = or i16 %2, %1
  %58 = icmp sgt i16 %57, -1
  %59 = and i1 %58, %56
  %60 = icmp eq i16 %27, %4
  %61 = and i1 %59, %60
  br i1 %61, label %104, label %62

62:                                               ; preds = %55
  %63 = sub nsw i32 %8, %6
  %64 = add nsw i32 %63, 1
  %65 = sub nsw i32 %22, %20
  %66 = add nsw i32 %65, 1
  %67 = tail call ptr @IMB_allocImBuf(i32 noundef %64, i32 noundef %66, i8 noundef zeroext 32, i32 noundef 1) #15
  %68 = icmp sgt i16 %2, %4
  br i1 %68, label %103, label %69

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.ImBuf, ptr %67, i64 0, i32 8
  %71 = load ptr, ptr %70, align 8, !tbaa !93
  %72 = load ptr, ptr %38, align 8, !tbaa !93
  %73 = icmp sgt i16 %1, %3
  br label %74

74:                                               ; preds = %69, %98
  %75 = phi i16 [ %2, %69 ], [ %101, %98 ]
  %76 = phi ptr [ %71, %69 ], [ %100, %98 ]
  %77 = phi ptr [ %72, %69 ], [ %99, %98 ]
  br i1 %73, label %98, label %78

78:                                               ; preds = %74
  %79 = icmp sgt i16 %21, %75
  %80 = icmp sgt i16 %75, %27
  br label %81

81:                                               ; preds = %78, %93
  %82 = phi i16 [ %1, %78 ], [ %95, %93 ]
  %83 = phi ptr [ %76, %78 ], [ %96, %93 ]
  %84 = phi ptr [ %77, %78 ], [ %94, %93 ]
  %85 = icmp slt i16 %82, %7
  %86 = icmp sgt i16 %82, %15
  %87 = or i1 %85, %86
  %88 = or i1 %79, %87
  %89 = or i1 %80, %88
  br i1 %89, label %93, label %90

90:                                               ; preds = %81
  %91 = load i32, ptr %84, align 4, !tbaa !92
  store i32 %91, ptr %83, align 4, !tbaa !92
  %92 = getelementptr inbounds i32, ptr %84, i64 1
  br label %93

93:                                               ; preds = %81, %90
  %94 = phi ptr [ %92, %90 ], [ %84, %81 ]
  %95 = add i16 %82, 1
  %96 = getelementptr inbounds i32, ptr %83, i64 1
  %97 = icmp sgt i16 %95, %3
  br i1 %97, label %98, label %81, !llvm.loop !97

98:                                               ; preds = %93, %74
  %99 = phi ptr [ %77, %74 ], [ %94, %93 ]
  %100 = phi ptr [ %76, %74 ], [ %96, %93 ]
  %101 = add i16 %75, 1
  %102 = icmp sgt i16 %101, %4
  br i1 %102, label %103, label %74, !llvm.loop !98

103:                                              ; preds = %98, %62
  tail call void @IMB_freeImBuf(ptr noundef %36) #15
  br label %104

104:                                              ; preds = %55, %19, %5, %103
  %105 = phi ptr [ %67, %103 ], [ null, %5 ], [ null, %19 ], [ %36, %55 ]
  ret ptr %105
}

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @view3d_sample_backbuf_rect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5, i16 noundef signext %6, ptr noundef %7, ptr nocapture noundef readonly %8) local_unnamed_addr #0 {
  %10 = alloca [4 x [2 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #16
  %11 = add nsw i32 %2, -1
  %12 = sdiv i32 %11, 2
  %13 = load i32, ptr %1, align 4, !tbaa !92
  %14 = add nsw i32 %12, 1
  %15 = sub nsw i32 %13, %14
  %16 = getelementptr inbounds i32, ptr %1, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !92
  %18 = sub nsw i32 %17, %14
  %19 = trunc i32 %15 to i16
  %20 = trunc i32 %18 to i16
  %21 = add nsw i32 %15, %2
  %22 = trunc i32 %21 to i16
  %23 = add i16 %22, -1
  %24 = add nsw i32 %18, %2
  %25 = trunc i32 %24 to i16
  %26 = add i16 %25, -1
  %27 = tail call ptr @view3d_read_backbuf(ptr noundef %0, i16 noundef signext %19, i16 noundef signext %20, i16 noundef signext %23, i16 noundef signext %26) #17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %110, label %29

29:                                               ; preds = %9
  store i32 1, ptr %10, align 16, !tbaa !92
  %30 = getelementptr inbounds [2 x i32], ptr %10, i64 0, i64 1
  store i32 0, ptr %30, align 4, !tbaa !92
  %31 = getelementptr inbounds [4 x [2 x i32]], ptr %10, i64 0, i64 1
  store i32 0, ptr %31, align 8, !tbaa !92
  %32 = sub nsw i32 0, %2
  %33 = getelementptr inbounds [4 x [2 x i32]], ptr %10, i64 0, i64 1, i64 1
  store i32 %32, ptr %33, align 4, !tbaa !92
  %34 = getelementptr inbounds [4 x [2 x i32]], ptr %10, i64 0, i64 2
  store i32 -1, ptr %34, align 16, !tbaa !92
  %35 = getelementptr inbounds [4 x [2 x i32]], ptr %10, i64 0, i64 2, i64 1
  store i32 0, ptr %35, align 4, !tbaa !92
  %36 = getelementptr inbounds [4 x [2 x i32]], ptr %10, i64 0, i64 3
  store i32 0, ptr %36, align 8, !tbaa !92
  %37 = getelementptr inbounds [4 x [2 x i32]], ptr %10, i64 0, i64 3, i64 1
  store i32 %2, ptr %37, align 4, !tbaa !92
  %38 = getelementptr inbounds %struct.ImBuf, ptr %27, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !93
  %40 = mul nsw i32 %2, %2
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %39, i64 %41
  %43 = icmp slt i32 %2, 1
  br i1 %43, label %108, label %44

44:                                               ; preds = %29
  %45 = add nuw i32 %2, 1
  %46 = mul i32 %12, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %39, i64 %47
  %49 = icmp eq i16 %6, 0
  br label %50

50:                                               ; preds = %44, %98
  %51 = phi i32 [ 2, %44 ], [ %100, %98 ]
  %52 = phi i32 [ 0, %44 ], [ %56, %98 ]
  %53 = phi i32 [ 1, %44 ], [ %99, %98 ]
  %54 = phi i32 [ 0, %44 ], [ %97, %98 ]
  %55 = phi ptr [ %48, %44 ], [ %87, %98 ]
  %56 = add i32 %52, %51
  br label %57

57:                                               ; preds = %50, %95
  %58 = phi i32 [ %52, %50 ], [ %65, %95 ]
  %59 = phi i32 [ %54, %50 ], [ %97, %95 ]
  %60 = phi i1 [ true, %50 ], [ false, %95 ]
  %61 = phi ptr [ %55, %50 ], [ %87, %95 ]
  %62 = sext i32 %59 to i64
  %63 = getelementptr inbounds [4 x [2 x i32]], ptr %10, i64 0, i64 %62
  %64 = getelementptr inbounds [4 x [2 x i32]], ptr %10, i64 0, i64 %62, i64 1
  %65 = add i32 %53, %58
  br label %66

66:                                               ; preds = %57, %91
  %67 = phi i32 [ %58, %57 ], [ %93, %91 ]
  %68 = phi i32 [ 0, %57 ], [ %92, %91 ]
  %69 = phi ptr [ %61, %57 ], [ %87, %91 ]
  %70 = load i32, ptr %69, align 4, !tbaa !92
  %71 = icmp ne i32 %70, 0
  %72 = icmp uge i32 %70, %3
  %73 = and i1 %71, %72
  %74 = icmp ult i32 %70, %4
  %75 = and i1 %74, %73
  br i1 %75, label %76, label %82

76:                                               ; preds = %66
  br i1 %49, label %102, label %77

77:                                               ; preds = %76
  %78 = sub i32 %70, %3
  %79 = add i32 %78, 1
  %80 = tail call zeroext i8 %8(ptr noundef %7, i32 noundef %79) #15
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %77, %66
  %83 = load i32, ptr %63, align 8, !tbaa !92
  %84 = load i32, ptr %64, align 4, !tbaa !92
  %85 = add nsw i32 %84, %83
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, ptr %69, i64 %86
  %88 = icmp uge ptr %87, %39
  %89 = icmp ult ptr %87, %42
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %91, label %108

91:                                               ; preds = %82
  %92 = add nuw nsw i32 %68, 1
  %93 = add nsw i32 %67, 1
  %94 = icmp eq i32 %92, %53
  br i1 %94, label %95, label %66, !llvm.loop !99

95:                                               ; preds = %91
  %96 = add nuw nsw i32 %59, 1
  %97 = and i32 %96, 3
  br i1 %60, label %57, label %98, !llvm.loop !100

98:                                               ; preds = %95
  %99 = add nuw i32 %53, 1
  %100 = add i32 %51, 2
  %101 = icmp eq i32 %53, %2
  br i1 %101, label %108, label %50, !llvm.loop !101

102:                                              ; preds = %76, %77
  %103 = sitofp i32 %67 to float
  %104 = tail call float @sqrtf(float noundef %103) #15
  store float %104, ptr %5, align 4, !tbaa !14
  %105 = load i32, ptr %69, align 4, !tbaa !92
  %106 = sub i32 %105, %3
  %107 = add i32 %106, 1
  br label %108

108:                                              ; preds = %98, %82, %102, %29
  %109 = phi i32 [ 0, %29 ], [ %107, %102 ], [ 0, %82 ], [ 0, %98 ]
  tail call void @IMB_freeImBuf(ptr noundef nonnull %27) #15
  br label %110

110:                                              ; preds = %9, %108
  %111 = phi i32 [ %109, %108 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #16
  ret i32 %111
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_after_add(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %5 = tail call ptr %4(i64 noundef 32, ptr noundef nonnull @.str) #15
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.View3DAfter, ptr %5, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !102
  %7 = getelementptr inbounds %struct.View3DAfter, ptr %5, i64 0, i32 3
  store i16 %2, ptr %7, align 8, !tbaa !104
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @view3d_update_depths_rect(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !tbaa !105
  %5 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %6 = load i16, ptr %5, align 8, !tbaa !49
  %7 = sext i16 %6 to i32
  %8 = add nsw i32 %7, -1
  %9 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  store i32 %8, ptr %9, align 4, !tbaa !106
  %10 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !107
  %11 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %12 = load i16, ptr %11, align 2, !tbaa !52
  %13 = sext i16 %12 to i32
  %14 = add nsw i32 %13, -1
  %15 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  store i32 %14, ptr %15, align 4, !tbaa !108
  %16 = call zeroext i8 @BLI_rcti_isect(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %2) #15
  %17 = load i32, ptr %2, align 4, !tbaa !105
  %18 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !107
  %20 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %2) #17
  %21 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %2) #17
  %22 = icmp slt i32 %20, 1
  %23 = icmp slt i32 %21, 1
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !109
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %30(ptr noundef nonnull %27) #15
  br label %31

31:                                               ; preds = %25, %29
  store ptr null, ptr %26, align 8, !tbaa !109
  br label %98

32:                                               ; preds = %3
  %33 = load i16, ptr %1, align 8, !tbaa !111
  %34 = zext i16 %33 to i32
  %35 = icmp eq i32 %20, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 1
  %38 = load i16, ptr %37, align 2, !tbaa !112
  %39 = zext i16 %38 to i32
  %40 = icmp eq i32 %21, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 2
  %43 = load i16, ptr %42, align 4, !tbaa !113
  %44 = sext i16 %43 to i32
  %45 = icmp eq i32 %17, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 3
  %48 = load i16, ptr %47, align 2, !tbaa !114
  %49 = sext i16 %48 to i32
  %50 = icmp eq i32 %19, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !109
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %80

55:                                               ; preds = %51, %46, %41, %36, %32
  %56 = trunc i32 %17 to i16
  %57 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 2
  store i16 %56, ptr %57, align 4, !tbaa !113
  %58 = trunc i32 %19 to i16
  %59 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 3
  store i16 %58, ptr %59, align 2, !tbaa !114
  %60 = trunc i32 %20 to i16
  store i16 %60, ptr %1, align 8, !tbaa !111
  %61 = trunc i32 %21 to i16
  %62 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 1
  store i16 %61, ptr %62, align 2, !tbaa !112
  %63 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !109
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %55
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %67(ptr noundef nonnull %64) #15
  %68 = load i16, ptr %1, align 8, !tbaa !111
  %69 = load i16, ptr %62, align 2, !tbaa !112
  br label %70

70:                                               ; preds = %55, %66
  %71 = phi i16 [ %69, %66 ], [ %61, %55 ]
  %72 = phi i16 [ %68, %66 ], [ %60, %55 ]
  %73 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %74 = zext i16 %72 to i64
  %75 = shl nuw nsw i64 %74, 2
  %76 = zext i16 %71 to i64
  %77 = mul nuw nsw i64 %75, %76
  %78 = call ptr %73(i64 noundef %77, ptr noundef nonnull @.str.1) #15
  store ptr %78, ptr %63, align 8, !tbaa !109
  %79 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 6
  store i8 1, ptr %79, align 8, !tbaa !115
  br label %84

80:                                               ; preds = %51
  %81 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 6
  %82 = load i8, ptr %81, align 8, !tbaa !115
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %100, label %84

84:                                               ; preds = %70, %80
  %85 = phi ptr [ %78, %70 ], [ %53, %80 ]
  %86 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 2
  %87 = load i16, ptr %86, align 4, !tbaa !113
  %88 = sext i16 %87 to i32
  %89 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 3
  %90 = load i16, ptr %89, align 2, !tbaa !114
  %91 = sext i16 %90 to i32
  %92 = load i16, ptr %1, align 8, !tbaa !111
  %93 = zext i16 %92 to i32
  %94 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 1
  %95 = load i16, ptr %94, align 2, !tbaa !112
  %96 = zext i16 %95 to i32
  call fastcc void @view3d_opengl_read_Z_pixels(ptr noundef nonnull %0, i32 noundef %88, i32 noundef %91, i32 noundef %93, i32 noundef %96, ptr noundef %85) #17
  %97 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 5
  call void @glGetDoublev(i32 noundef 2928, ptr noundef nonnull %97) #15
  br label %98

98:                                               ; preds = %84, %31
  %99 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 6
  store i8 0, ptr %99, align 8, !tbaa !115
  br label %100

100:                                              ; preds = %98, %80
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_isect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !106
  %4 = load i32, ptr %0, align 4, !tbaa !105
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !108
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !107
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_opengl_read_Z_pixels(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !66
  %9 = add nsw i32 %8, %1
  %10 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !67
  %12 = add nsw i32 %11, %2
  tail call void @glReadPixels(i32 noundef %9, i32 noundef %12, i32 noundef %3, i32 noundef %4, i32 noundef 6402, i32 noundef 5126, ptr noundef %5) #15
  ret void
}

; Function Attrs: optsize
declare void @glGetDoublev(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_depth_update(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %9 = tail call ptr %8(i64 noundef 40, ptr noundef nonnull @.str.2) #15
  store ptr %9, ptr %4, align 8, !tbaa !116
  %10 = icmp eq ptr %9, null
  br i1 %10, label %67, label %11

11:                                               ; preds = %1, %7
  %12 = phi ptr [ %9, %7 ], [ %5, %1 ]
  %13 = load i16, ptr %12, align 8, !tbaa !111
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %16 = load i16, ptr %15, align 8, !tbaa !49
  %17 = sext i16 %16 to i32
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %21 = load i16, ptr %20, align 2, !tbaa !52
  br label %34

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.ViewDepths, ptr %12, i64 0, i32 1
  %24 = load i16, ptr %23, align 2, !tbaa !112
  %25 = zext i16 %24 to i32
  %26 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %27 = load i16, ptr %26, align 2, !tbaa !52
  %28 = sext i16 %27 to i32
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.ViewDepths, ptr %12, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !109
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %54

34:                                               ; preds = %19, %30, %22
  %35 = phi i16 [ %21, %19 ], [ %27, %30 ], [ %27, %22 ]
  store i16 %16, ptr %12, align 8, !tbaa !111
  %36 = getelementptr inbounds %struct.ViewDepths, ptr %12, i64 0, i32 1
  store i16 %35, ptr %36, align 2, !tbaa !112
  %37 = getelementptr inbounds %struct.ViewDepths, ptr %12, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !109
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %41(ptr noundef nonnull %38) #15
  %42 = load i16, ptr %12, align 8, !tbaa !111
  %43 = load i16, ptr %36, align 2, !tbaa !112
  br label %44

44:                                               ; preds = %34, %40
  %45 = phi i16 [ %43, %40 ], [ %35, %34 ]
  %46 = phi i16 [ %42, %40 ], [ %16, %34 ]
  %47 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %48 = zext i16 %46 to i64
  %49 = shl nuw nsw i64 %48, 2
  %50 = zext i16 %45 to i64
  %51 = mul nuw nsw i64 %49, %50
  %52 = tail call ptr %47(i64 noundef %51, ptr noundef nonnull @.str.3) #15
  store ptr %52, ptr %37, align 8, !tbaa !109
  %53 = getelementptr inbounds %struct.ViewDepths, ptr %12, i64 0, i32 6
  store i8 1, ptr %53, align 8, !tbaa !115
  br label %58

54:                                               ; preds = %30
  %55 = getelementptr inbounds %struct.ViewDepths, ptr %12, i64 0, i32 6
  %56 = load i8, ptr %55, align 8, !tbaa !115
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %44, %54
  %59 = phi ptr [ %52, %44 ], [ %32, %54 ]
  %60 = getelementptr inbounds %struct.ViewDepths, ptr %12, i64 0, i32 6
  %61 = load i16, ptr %12, align 8, !tbaa !111
  %62 = zext i16 %61 to i32
  %63 = getelementptr inbounds %struct.ViewDepths, ptr %12, i64 0, i32 1
  %64 = load i16, ptr %63, align 2, !tbaa !112
  %65 = zext i16 %64 to i32
  tail call void @view3d_opengl_read_pixels(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef %62, i32 noundef %65, i32 noundef 6402, i32 noundef 5126, ptr noundef %59) #17
  %66 = getelementptr inbounds %struct.ViewDepths, ptr %12, i64 0, i32 5
  tail call void @glGetDoublev(i32 noundef 2928, ptr noundef nonnull %66) #15
  store i8 0, ptr %60, align 8, !tbaa !115
  br label %67

67:                                               ; preds = %54, %58, %7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local float @view3d_depth_near(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.ViewDepths, ptr %0, i64 0, i32 5
  %3 = load double, ptr %2, align 8, !tbaa !15
  %4 = fptrunc double %3 to float
  %5 = getelementptr inbounds %struct.ViewDepths, ptr %0, i64 0, i32 5, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !15
  %7 = fptrunc double %6 to float
  %8 = load i16, ptr %0, align 8, !tbaa !111
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.ViewDepths, ptr %0, i64 0, i32 1
  %11 = load i16, ptr %10, align 2, !tbaa !112
  %12 = zext i16 %11 to i32
  %13 = mul nuw nsw i32 %12, %9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.ViewDepths, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !109
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi i32 [ %22, %18 ], [ %13, %15 ]
  %20 = phi ptr [ %23, %18 ], [ %17, %15 ]
  %21 = phi float [ %28, %18 ], [ %7, %15 ]
  %22 = add nsw i32 %19, -1
  %23 = getelementptr inbounds float, ptr %20, i64 1
  %24 = load float, ptr %20, align 4, !tbaa !14
  %25 = fcmp olt float %24, %21
  %26 = fcmp ogt float %24, %4
  %27 = select i1 %25, i1 %26, i1 false
  %28 = select i1 %27, float %24, float %21
  %29 = icmp eq i32 %22, 0
  br i1 %29, label %30, label %18, !llvm.loop !117

30:                                               ; preds = %18, %1
  %31 = phi float [ %7, %1 ], [ %28, %18 ]
  %32 = fcmp oeq float %31, %7
  %33 = select i1 %32, float 0x47EFFFFFE0000000, float %31
  ret float %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_draw_depth_gpencil(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 47
  %5 = load i8, ptr %4, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  tail call void @view3d_winmatrix_set(ptr noundef %1, ptr noundef %2, ptr noundef null) #15
  tail call void @view3d_viewmatrix_set(ptr noundef %0, ptr noundef %2, ptr noundef %7) #15
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 3
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 1
  tail call void @mul_m4_m4m4(ptr noundef nonnull %8, ptr noundef %7, ptr noundef nonnull %9) #15
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 4
  %11 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %8) #15
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 2
  %13 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %12, ptr noundef nonnull %9) #15
  tail call void @glClear(i32 noundef 256) #15
  tail call void @glLoadMatrixf(ptr noundef nonnull %9) #15
  store i8 1, ptr %4, align 8, !tbaa !81
  tail call void @glEnable(i32 noundef 2929) #15
  %14 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %15 = load i16, ptr %14, align 2, !tbaa !118
  %16 = and i16 %15, 16
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  tail call void @ED_gpencil_draw_view3d(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %1, i8 noundef zeroext 1) #15
  br label %19

19:                                               ; preds = %18, %3
  store i8 %5, ptr %4, align 8, !tbaa !81
  ret void
}

; Function Attrs: optsize
declare void @view3d_winmatrix_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @view3d_viewmatrix_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glClear(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLoadMatrixf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_gpencil_draw_view3d(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_draw_depth(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %8 = load ptr, ptr %7, align 8, !tbaa !64
  %9 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 47
  %10 = load i8, ptr %9, align 8, !tbaa !81
  %11 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  %12 = load i16, ptr %11, align 8, !tbaa !70
  %13 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 90), align 4, !tbaa !119
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 67), align 4, !tbaa !120
  %15 = and i16 %12, -2049
  store i16 %15, ptr %11, align 8, !tbaa !70
  %16 = icmp eq i8 %3, 0
  %17 = select i1 %16, float %13, float 5.000000e-01
  store float %17, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 90), align 4, !tbaa !119
  store i16 0, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 67), align 4, !tbaa !120
  tail call void @view3d_winmatrix_set(ptr noundef %1, ptr noundef %2, ptr noundef null) #15
  tail call void @view3d_viewmatrix_set(ptr noundef %0, ptr noundef %2, ptr noundef %8) #15
  %18 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 3
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 1
  tail call void @mul_m4_m4m4(ptr noundef nonnull %18, ptr noundef %8, ptr noundef nonnull %19) #15
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 4
  %21 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %20, ptr noundef nonnull %18) #15
  %22 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 2
  %23 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %22, ptr noundef nonnull %19) #15
  tail call void @glClear(i32 noundef 256) #15
  tail call void @glLoadMatrixf(ptr noundef nonnull %19) #15
  %24 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 32
  %25 = load i16, ptr %24, align 2, !tbaa !86
  %26 = and i16 %25, 4
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  tail call void @ED_view3d_clipping_set(ptr noundef nonnull %8) #17
  br label %29

29:                                               ; preds = %28, %4
  store i8 1, ptr %9, align 8, !tbaa !81
  tail call void @glEnable(i32 noundef 2929) #15
  %30 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !121
  %32 = icmp eq ptr %31, null
  br i1 %32, label %57, label %33

33:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store ptr %31, ptr %5, align 8, !tbaa !43
  %34 = call ptr @_setlooper_base_step(ptr noundef nonnull %5, ptr noundef null) #15
  %35 = icmp eq ptr %34, null
  br i1 %35, label %56, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 22
  br label %38

38:                                               ; preds = %36, %53
  %39 = phi ptr [ %34, %36 ], [ %54, %53 ]
  %40 = load i32, ptr %37, align 8, !tbaa !90
  %41 = getelementptr inbounds %struct.Base, ptr %39, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !89
  %43 = and i32 %42, %40
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %38
  call void @draw_object(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %39, i16 noundef signext 0) #15
  %46 = getelementptr inbounds %struct.Base, ptr %39, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !74
  %48 = getelementptr inbounds %struct.Object, ptr %47, i64 0, i32 55
  %49 = load i16, ptr %48, align 8, !tbaa !122
  %50 = and i16 %49, 2840
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  call fastcc void @draw_dupli_objects_color(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %39, i16 noundef signext 2, i32 noundef -1) #17
  br label %53

53:                                               ; preds = %38, %52, %45
  %54 = call ptr @_setlooper_base_step(ptr noundef nonnull %5, ptr noundef nonnull %39) #15
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %38, !llvm.loop !123

56:                                               ; preds = %53, %33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %57

57:                                               ; preds = %56, %29
  %58 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !43
  %60 = icmp eq ptr %59, null
  br i1 %60, label %82, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 22
  br label %63

63:                                               ; preds = %61, %79
  %64 = phi ptr [ %59, %61 ], [ %80, %79 ]
  %65 = load i32, ptr %62, align 8, !tbaa !90
  %66 = getelementptr inbounds %struct.Base, ptr %64, i64 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !89
  %68 = and i32 %67, %65
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.Base, ptr %64, i64 0, i32 7
  %72 = load ptr, ptr %71, align 8, !tbaa !74
  %73 = getelementptr inbounds %struct.Object, ptr %72, i64 0, i32 55
  %74 = load i16, ptr %73, align 8, !tbaa !122
  %75 = and i16 %74, 2840
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  call fastcc void @draw_dupli_objects_color(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %64, i16 noundef signext 2, i32 noundef -1) #17
  br label %78

78:                                               ; preds = %77, %70
  call void @draw_object(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %64, i16 noundef signext 2) #15
  br label %79

79:                                               ; preds = %63, %78
  %80 = load ptr, ptr %64, align 8, !tbaa !43
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %63, !llvm.loop !124

82:                                               ; preds = %79, %57
  %83 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 44
  %84 = load ptr, ptr %83, align 8, !tbaa !125
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 45
  %88 = load ptr, ptr %87, align 8, !tbaa !126
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 46
  %92 = load ptr, ptr %91, align 8, !tbaa !127
  %93 = icmp eq ptr %92, null
  br i1 %93, label %148, label %94

94:                                               ; preds = %90, %86, %82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %95 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 49
  store i8 1, ptr %95, align 2, !tbaa !128
  call void @glGetIntegerv(i32 noundef 2930, ptr noundef nonnull %6) #15
  %96 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 45
  %97 = load ptr, ptr %96, align 8, !tbaa !126
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 46
  %101 = load ptr, ptr %100, align 8, !tbaa !127
  %102 = icmp eq ptr %101, null
  br i1 %102, label %113, label %103

103:                                              ; preds = %99, %94
  call void @glDepthFunc(i32 noundef 519) #15
  %104 = load ptr, ptr %96, align 8, !tbaa !126
  %105 = icmp eq ptr %104, null
  br i1 %105, label %112, label %106

106:                                              ; preds = %103, %106
  %107 = phi ptr [ %108, %106 ], [ %104, %103 ]
  %108 = load ptr, ptr %107, align 8, !tbaa !129
  %109 = getelementptr inbounds %struct.View3DAfter, ptr %107, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !102
  call void @draw_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %110, i16 noundef signext 2) #15
  %111 = icmp eq ptr %108, null
  br i1 %111, label %112, label %106, !llvm.loop !130

112:                                              ; preds = %106, %103
  call void @glDepthFunc(i32 noundef 515) #15
  br label %113

113:                                              ; preds = %112, %99
  store i8 0, ptr %95, align 2, !tbaa !128
  %114 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 48
  store i8 1, ptr %114, align 1, !tbaa !131
  %115 = load ptr, ptr %83, align 8, !tbaa !125
  %116 = icmp eq ptr %115, null
  br i1 %116, label %124, label %117

117:                                              ; preds = %113, %117
  %118 = phi ptr [ %119, %117 ], [ %115, %113 ]
  %119 = load ptr, ptr %118, align 8, !tbaa !129
  %120 = getelementptr inbounds %struct.View3DAfter, ptr %118, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !102
  call void @draw_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %121, i16 noundef signext 2) #15
  call void @BLI_remlink(ptr noundef nonnull %83, ptr noundef nonnull %118) #15
  %122 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %122(ptr noundef nonnull %118) #15
  %123 = icmp eq ptr %119, null
  br i1 %123, label %124, label %117, !llvm.loop !132

124:                                              ; preds = %117, %113
  store i8 1, ptr %95, align 2, !tbaa !128
  store i8 0, ptr %114, align 1, !tbaa !131
  %125 = load ptr, ptr %96, align 8, !tbaa !126
  %126 = icmp eq ptr %125, null
  br i1 %126, label %134, label %127

127:                                              ; preds = %124, %127
  %128 = phi ptr [ %129, %127 ], [ %125, %124 ]
  %129 = load ptr, ptr %128, align 8, !tbaa !129
  %130 = getelementptr inbounds %struct.View3DAfter, ptr %128, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !102
  call void @draw_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %131, i16 noundef signext 2) #15
  call void @BLI_remlink(ptr noundef nonnull %96, ptr noundef nonnull %128) #15
  %132 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %132(ptr noundef nonnull %128) #15
  %133 = icmp eq ptr %129, null
  br i1 %133, label %134, label %127, !llvm.loop !133

134:                                              ; preds = %127, %124
  store i8 1, ptr %95, align 2, !tbaa !128
  store i8 1, ptr %114, align 1, !tbaa !131
  %135 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 46
  %136 = load ptr, ptr %135, align 8, !tbaa !127
  %137 = icmp eq ptr %136, null
  br i1 %137, label %145, label %138

138:                                              ; preds = %134, %138
  %139 = phi ptr [ %140, %138 ], [ %136, %134 ]
  %140 = load ptr, ptr %139, align 8, !tbaa !129
  %141 = getelementptr inbounds %struct.View3DAfter, ptr %139, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !102
  call void @draw_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %142, i16 noundef signext 2) #15
  call void @BLI_remlink(ptr noundef nonnull %135, ptr noundef nonnull %139) #15
  %143 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %143(ptr noundef nonnull %139) #15
  %144 = icmp eq ptr %140, null
  br i1 %144, label %145, label %138, !llvm.loop !134

145:                                              ; preds = %138, %134
  store i8 0, ptr %95, align 2, !tbaa !128
  store i8 0, ptr %114, align 1, !tbaa !131
  %146 = load i32, ptr %6, align 4, !tbaa !92
  %147 = trunc i32 %146 to i8
  call void @glDepthMask(i8 noundef zeroext %147) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br label %148

148:                                              ; preds = %145, %90
  %149 = load i16, ptr %24, align 2, !tbaa !86
  %150 = and i16 %149, 4
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %148
  call void @ED_view3d_clipping_disable() #17
  br label %153

153:                                              ; preds = %152, %148
  store i8 %10, ptr %9, align 8, !tbaa !81
  %154 = icmp eq i8 %10, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %153
  call void @glDisable(i32 noundef 2929) #15
  br label %156

156:                                              ; preds = %155, %153
  store float %13, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 90), align 4, !tbaa !119
  store i16 %12, ptr %11, align 8, !tbaa !70
  store i16 %14, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 67), align 4, !tbaa !120
  ret void
}

; Function Attrs: optsize
declare ptr @_setlooper_base_step(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @draw_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_dupli_objects_color(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i16 noundef signext %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.Base, align 8
  %8 = alloca %struct.BoundBox, align 4
  %9 = alloca [3 x i8], align 1
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #16
  %12 = or i16 %4, 2
  %13 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  %15 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 102
  %16 = load i8, ptr %15, align 8, !tbaa !135
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %179

20:                                               ; preds = %6
  %21 = and i32 %17, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %25 = load i16, ptr %24, align 2, !tbaa !118
  %26 = and i16 %25, 4
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %179

28:                                               ; preds = %23, %20
  %29 = and i16 %4, 2
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  call void @UI_GetThemeColorBlend3ubv(i32 noundef %5, i32 noundef 2, float noundef 5.000000e-01, ptr noundef nonnull %9) #15
  %32 = load ptr, ptr %13, align 8, !tbaa !74
  br label %33

33:                                               ; preds = %28, %31
  %34 = phi ptr [ %14, %28 ], [ %32, %31 ]
  %35 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !136
  %37 = or i32 %36, 512
  %38 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 4
  store i32 %37, ptr %38, align 8, !tbaa !136
  %39 = load ptr, ptr @G, align 8, !tbaa !137
  %40 = getelementptr inbounds %struct.Main, ptr %39, i64 0, i32 46
  %41 = load ptr, ptr %40, align 8, !tbaa !138
  %42 = call ptr @object_duplilist(ptr noundef %41, ptr noundef %0, ptr noundef %34) #15
  %43 = load ptr, ptr %13, align 8, !tbaa !74
  %44 = call ptr @duplilist_apply(ptr noundef %43, ptr noundef %42) #15
  %45 = load ptr, ptr %42, align 8, !tbaa !140
  %46 = call fastcc ptr @dupli_step(ptr noundef %45) #17
  %47 = icmp eq ptr %46, null
  br i1 %47, label %172, label %48

48:                                               ; preds = %33
  %49 = load ptr, ptr %46, align 8, !tbaa !141
  %50 = call fastcc ptr @dupli_step(ptr noundef %49) #17
  %51 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 7
  %52 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  br label %53

53:                                               ; preds = %167, %48
  %54 = phi ptr [ null, %48 ], [ %55, %167 ]
  %55 = phi ptr [ %46, %48 ], [ %57, %167 ]
  %56 = phi i8 [ 0, %48 ], [ %158, %167 ]
  %57 = phi ptr [ %50, %48 ], [ %169, %167 ]
  %58 = phi i8 [ 0, %48 ], [ %160, %167 ]
  %59 = phi i32 [ 0, %48 ], [ %159, %167 ]
  %60 = getelementptr inbounds %struct.DupliObject, ptr %55, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !143
  store ptr %61, ptr %51, align 8, !tbaa !74
  %62 = getelementptr inbounds %struct.Object, ptr %61, i64 0, i32 133
  %63 = load ptr, ptr %62, align 8, !tbaa !144
  %64 = getelementptr inbounds %struct.Object, ptr %61, i64 0, i32 87
  %65 = load i8, ptr %64, align 2, !tbaa !145
  %66 = load ptr, ptr %13, align 8, !tbaa !74
  %67 = getelementptr inbounds %struct.Object, ptr %66, i64 0, i32 87
  %68 = load i8, ptr %67, align 2, !tbaa !145
  %69 = call i8 @llvm.umin.i8(i8 %65, i8 %68)
  store i8 %69, ptr %64, align 2, !tbaa !145
  %70 = getelementptr inbounds %struct.Object, ptr %61, i64 0, i32 86
  %71 = load i16, ptr %70, align 4, !tbaa !146
  %72 = icmp eq i8 %69, 1
  br i1 %72, label %76, label %73

73:                                               ; preds = %53
  %74 = getelementptr inbounds %struct.Object, ptr %66, i64 0, i32 86
  %75 = load i16, ptr %74, align 4, !tbaa !146
  store i16 %75, ptr %70, align 4, !tbaa !146
  br label %76

76:                                               ; preds = %73, %53
  %77 = getelementptr inbounds %struct.Object, ptr %61, i64 0, i32 55
  %78 = load i16, ptr %77, align 8, !tbaa !122
  %79 = getelementptr inbounds %struct.DupliObject, ptr %55, i64 0, i32 3
  %80 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %79) #15
  %81 = icmp eq i8 %80, 0
  %82 = load ptr, ptr %51, align 8, !tbaa !74
  %83 = getelementptr inbounds %struct.Object, ptr %82, i64 0, i32 55
  %84 = load i16, ptr %83, align 8, !tbaa !122
  %85 = and i16 %84, -5
  %86 = select i1 %81, i16 0, i16 4
  %87 = or disjoint i16 %85, %86
  store i16 %87, ptr %83, align 8, !tbaa !122
  br i1 %30, label %88, label %89

88:                                               ; preds = %76
  call void @glColor3ubv(ptr noundef nonnull %9) #15
  br label %89

89:                                               ; preds = %88, %76
  %90 = icmp eq ptr %54, null
  %91 = load ptr, ptr %60, align 8, !tbaa !143
  br i1 %90, label %100, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.DupliObject, ptr %54, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !143
  %95 = icmp eq ptr %94, %91
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = icmp eq i8 %58, 1
  br i1 %97, label %98, label %100

98:                                               ; preds = %96
  call void @glDeleteLists(i32 noundef %59, i32 noundef 1) #15
  %99 = load ptr, ptr %60, align 8, !tbaa !143
  br label %100

100:                                              ; preds = %96, %98, %92, %89
  %101 = phi ptr [ %91, %92 ], [ %91, %89 ], [ %99, %98 ], [ %91, %96 ]
  %102 = phi i8 [ %58, %92 ], [ %58, %89 ], [ 0, %98 ], [ 0, %96 ]
  %103 = call ptr @BKE_object_boundbox_get(ptr noundef %101) #15
  %104 = icmp ne ptr %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %8, ptr noundef nonnull align 4 dereferenceable(104) %103, i64 104, i1 false), !tbaa.struct !147
  br label %108

106:                                              ; preds = %100
  %107 = icmp eq i8 %56, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %105, %106
  %109 = phi i8 [ 1, %105 ], [ %56, %106 ]
  %110 = call zeroext i8 @ED_view3d_boundbox_clip_ex(ptr noundef %11, ptr noundef nonnull %8, ptr noundef nonnull %79) #15
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %157, label %112

112:                                              ; preds = %108, %106
  %113 = phi i8 [ %109, %108 ], [ 0, %106 ]
  %114 = icmp eq i8 %102, 0
  br i1 %114, label %115, label %152

115:                                              ; preds = %112
  %116 = icmp eq ptr %57, null
  br i1 %116, label %154, label %117

117:                                              ; preds = %115
  %118 = getelementptr inbounds %struct.DupliObject, ptr %57, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !143
  %120 = load ptr, ptr %60, align 8, !tbaa !143
  %121 = icmp eq ptr %119, %120
  br i1 %121, label %122, label %154

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.Object, ptr %119, i64 0, i32 3
  %124 = load i16, ptr %123, align 8, !tbaa !149
  %125 = icmp eq i16 %124, 10
  br i1 %125, label %154, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.DupliObject, ptr %55, i64 0, i32 6
  %128 = load i16, ptr %127, align 4, !tbaa !150
  %129 = icmp eq i16 %128, 256
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.DupliObject, ptr %55, i64 0, i32 8
  %132 = load i8, ptr %131, align 1, !tbaa !151
  %133 = icmp eq i8 %132, 0
  %134 = and i1 %104, %133
  br i1 %134, label %136, label %154

135:                                              ; preds = %126
  br i1 %104, label %136, label %154

136:                                              ; preds = %130, %135
  %137 = call zeroext i8 @draw_glsl_material(ptr noundef %0, ptr noundef nonnull %119, ptr noundef %2, i8 noundef zeroext %65) #15
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %136
  %140 = call zeroext i8 @check_object_draw_texture(ptr noundef %0, ptr noundef %2, i8 noundef zeroext %65) #15
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %139
  %143 = load i16, ptr %52, align 2, !tbaa !118
  %144 = and i16 %143, 4096
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %142
  %147 = load ptr, ptr %60, align 8, !tbaa !143
  call void @BKE_object_boundbox_flag(ptr noundef %147, i32 noundef 1, i8 noundef zeroext 1) #15
  %148 = load ptr, ptr %60, align 8, !tbaa !143
  %149 = getelementptr inbounds %struct.Object, ptr %148, i64 0, i32 47
  call void @unit_m4(ptr noundef nonnull %149) #15
  %150 = call i32 @glGenLists(i32 noundef 1) #15
  call void @glNewList(i32 noundef %150, i32 noundef 4864) #15
  call void @draw_object(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %7, i16 noundef signext %12) #15
  call void @glEndList() #15
  %151 = load ptr, ptr %60, align 8, !tbaa !143
  call void @BKE_object_boundbox_flag(ptr noundef %151, i32 noundef 1, i8 noundef zeroext 0) #15
  br label %152

152:                                              ; preds = %112, %146
  %153 = phi i32 [ %150, %146 ], [ %59, %112 ]
  call void @glPushMatrix() #15
  call void @glMultMatrixf(ptr noundef nonnull %79) #15
  call void @glCallList(i32 noundef %153) #15
  call void @glPopMatrix() #15
  br label %157

154:                                              ; preds = %142, %139, %136, %135, %130, %122, %117, %115
  %155 = load ptr, ptr %60, align 8, !tbaa !143
  %156 = getelementptr inbounds %struct.Object, ptr %155, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %156, ptr noundef nonnull %79) #15
  call void @draw_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7, i16 noundef signext %12) #15
  br label %157

157:                                              ; preds = %152, %154, %108
  %158 = phi i8 [ %113, %152 ], [ %113, %154 ], [ %109, %108 ]
  %159 = phi i32 [ %153, %152 ], [ %59, %154 ], [ %59, %108 ]
  %160 = phi i8 [ 1, %152 ], [ 0, %154 ], [ %102, %108 ]
  %161 = load ptr, ptr %51, align 8, !tbaa !74
  %162 = getelementptr inbounds %struct.Object, ptr %161, i64 0, i32 87
  store i8 %65, ptr %162, align 2, !tbaa !145
  %163 = getelementptr inbounds %struct.Object, ptr %161, i64 0, i32 86
  store i16 %71, ptr %163, align 4, !tbaa !146
  %164 = getelementptr inbounds %struct.Object, ptr %161, i64 0, i32 55
  store i16 %78, ptr %164, align 8, !tbaa !122
  %165 = getelementptr inbounds %struct.Object, ptr %161, i64 0, i32 133
  store ptr %63, ptr %165, align 8, !tbaa !144
  %166 = icmp eq ptr %57, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %157
  %168 = load ptr, ptr %57, align 8, !tbaa !141
  %169 = call fastcc ptr @dupli_step(ptr noundef %168) #17
  br label %53, !llvm.loop !152

170:                                              ; preds = %157
  %171 = icmp eq i8 %160, 0
  br label %172

172:                                              ; preds = %33, %170
  %173 = phi i32 [ %159, %170 ], [ 0, %33 ]
  %174 = phi i1 [ %171, %170 ], [ true, %33 ]
  %175 = icmp eq ptr %44, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %172
  call void @duplilist_restore(ptr noundef nonnull %42, ptr noundef nonnull %44) #15
  call void @duplilist_free_apply_data(ptr noundef nonnull %44) #15
  br label %177

177:                                              ; preds = %176, %172
  call void @free_object_duplilist(ptr noundef nonnull %42) #15
  br i1 %174, label %179, label %178

178:                                              ; preds = %177
  call void @glDeleteLists(i32 noundef %173, i32 noundef 1) #15
  br label %179

179:                                              ; preds = %177, %178, %23, %6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #16
  ret void
}

; Function Attrs: optsize
declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDepthFunc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDepthMask(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @ED_view3d_datamask(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 24
  %4 = load i16, ptr %3, align 8, !tbaa !79
  switch i16 %4, label %27 [
    i16 5, label %10
    i16 4, label %10
    i16 3, label %5
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %7 = load i16, ptr %6, align 2, !tbaa !118
  %8 = and i16 %7, 8
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %2, %2, %5
  %11 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %0) #15
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load i16, ptr %3, align 8, !tbaa !79
  %15 = icmp eq i16 %14, 4
  %16 = select i1 %15, i64 16480, i64 96
  br label %27

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 37, i32 20
  %19 = load i16, ptr %18, align 2, !tbaa !153
  %20 = icmp eq i16 %19, 2
  %21 = load i16, ptr %3, align 8, !tbaa !79
  %22 = icmp eq i16 %21, 5
  %23 = select i1 %20, i1 %22, i1 false
  %24 = icmp eq i16 %21, 4
  %25 = select i1 %23, i1 true, i1 %24
  %26 = select i1 %25, i64 16480, i64 96
  br label %27

27:                                               ; preds = %17, %13, %2, %5
  %28 = phi i64 [ 0, %5 ], [ 0, %2 ], [ %16, %13 ], [ %26, %17 ]
  ret i64 %28
}

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @ED_view3d_screen_datamask(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  %4 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !156
  %5 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %1, %19
  %9 = phi ptr [ %21, %19 ], [ %6, %1 ]
  %10 = phi i64 [ %20, %19 ], [ %4, %1 ]
  %11 = getelementptr inbounds %struct.ScrArea, ptr %9, i64 0, i32 8
  %12 = load i8, ptr %11, align 8, !tbaa !157
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ScrArea, ptr %9, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !159
  %17 = tail call i64 @ED_view3d_datamask(ptr noundef %3, ptr noundef %16) #17, !range !160
  %18 = or i64 %17, %10
  br label %19

19:                                               ; preds = %8, %14
  %20 = phi i64 [ %18, %14 ], [ %10, %8 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !43
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %8, !llvm.loop !161

23:                                               ; preds = %19, %1
  %24 = phi i64 [ %4, %1 ], [ %20, %19 ]
  ret i64 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_update_viewmat(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = icmp eq ptr %4, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void @copy_m4_m4(ptr noundef %9, ptr noundef nonnull %4) #15
  br label %13

12:                                               ; preds = %5
  tail call void @view3d_winmatrix_set(ptr noundef nonnull %2, ptr noundef %1, ptr noundef null) #15
  br label %13

13:                                               ; preds = %12, %11
  %14 = icmp eq ptr %3, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 1
  tail call void @copy_m4_m4(ptr noundef nonnull %16, ptr noundef nonnull %3) #15
  br label %18

17:                                               ; preds = %13
  tail call void @view3d_viewmatrix_set(ptr noundef %0, ptr noundef %1, ptr noundef %9) #15
  br label %18

18:                                               ; preds = %17, %15
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 3
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 1
  tail call void @mul_m4_m4m4(ptr noundef nonnull %19, ptr noundef %9, ptr noundef nonnull %20) #15
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 4
  %22 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %21, ptr noundef nonnull %19) #15
  %23 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 2
  %24 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %23, ptr noundef nonnull %20) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  %25 = load float, ptr %19, align 8, !tbaa !14
  store float %25, ptr %6, align 4, !tbaa !14
  %26 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 3, i64 1
  %27 = load float, ptr %26, align 8, !tbaa !14
  %28 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float %27, ptr %28, align 4, !tbaa !14
  %29 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 3, i64 2
  %30 = load float, ptr %29, align 8, !tbaa !14
  %31 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %30, ptr %31, align 4, !tbaa !14
  %32 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 3, i64 0, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !14
  store float %33, ptr %7, align 4, !tbaa !14
  %34 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 3, i64 1, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !14
  %36 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float %35, ptr %36, align 4, !tbaa !14
  %37 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 3, i64 2, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !14
  %39 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %38, ptr %39, align 4, !tbaa !14
  %40 = call fastcc float @len_squared_v3(ptr noundef nonnull %6) #17
  %41 = call fastcc float @len_squared_v3(ptr noundef nonnull %7) #17
  %42 = tail call fastcc float @min_ff(float noundef %40, float noundef %41) #17
  %43 = tail call float @sqrtf(float noundef %42) #15
  %44 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 5
  %45 = load i16, ptr %44, align 8, !tbaa !49
  %46 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 6
  %47 = load i16, ptr %46, align 2, !tbaa !52
  %48 = tail call i16 @llvm.smax.i16(i16 %45, i16 %47)
  %49 = fdiv float 2.000000e+00, %43
  %50 = sitofp i16 %48 to float
  %51 = fdiv float %49, %50
  %52 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 21
  store float %51, ptr %52, align 4, !tbaa !162
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  ret void
}

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #8 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v3(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load float, ptr %0, align 4, !tbaa !14
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !14
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !14
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %6)
  ret float %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_draw_offscreen_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 24
  %4 = load i16, ptr %3, align 8, !tbaa !79
  %5 = trunc i16 %4 to i8
  %6 = tail call zeroext i8 @draw_glsl_material(ptr noundef %0, ptr noundef null, ptr noundef %1, i8 noundef zeroext %5) #15
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call fastcc void @gpu_update_lamps_shadows(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %9

9:                                                ; preds = %8, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @draw_glsl_material(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_update_lamps_shadows(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.ARegion, align 8
  %9 = alloca %struct.RegionView3D, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %10 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 26
  %11 = load i16, ptr %10, align 4, !tbaa !163
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 60
  %15 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 61
  %16 = load i16, ptr %15, align 8, !tbaa !164
  %17 = sext i16 %16 to i32
  %18 = tail call ptr @BLI_findlink(ptr noundef nonnull %14, i32 noundef %17) #15
  br label %19

19:                                               ; preds = %2, %13
  %20 = phi ptr [ %18, %13 ], [ null, %2 ]
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %3) #17
  store ptr %0, ptr %4, align 8, !tbaa !43
  %21 = call ptr @_setlooper_base_step(ptr noundef nonnull %4, ptr noundef null) #15
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %74, %19
  %24 = load ptr, ptr %3, align 8, !tbaa !43
  %25 = icmp eq ptr %24, null
  br i1 %25, label %94, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %28 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 24
  %29 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 22
  %30 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 30
  %31 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 8
  %32 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 25
  %33 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 1
  %34 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 2
  %35 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 3
  %36 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 4
  %37 = load i16, ptr %27, align 2, !tbaa !118
  %38 = load i16, ptr %28, align 8, !tbaa !79
  %39 = load i32, ptr %29, align 8, !tbaa !90
  br label %77

40:                                               ; preds = %19, %74
  %41 = phi ptr [ %75, %74 ], [ %21, %19 ]
  %42 = getelementptr inbounds %struct.Base, ptr %41, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !74
  %44 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 3
  %45 = load i16, ptr %44, align 8, !tbaa !149
  %46 = icmp eq i16 %45, 10
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 47
  call fastcc void @gpu_render_lamp_update(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %43, ptr noundef null, ptr noundef nonnull %48, ptr noundef nonnull %3, ptr noundef %20) #17
  br label %49

49:                                               ; preds = %47, %40
  %50 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 55
  %51 = load i16, ptr %50, align 8, !tbaa !122
  %52 = and i16 %51, 2840
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %74, label %54

54:                                               ; preds = %49
  %55 = load ptr, ptr @G, align 8, !tbaa !137
  %56 = getelementptr inbounds %struct.Main, ptr %55, i64 0, i32 46
  %57 = load ptr, ptr %56, align 8, !tbaa !138
  %58 = call ptr @object_duplilist(ptr noundef %57, ptr noundef %0, ptr noundef nonnull %43) #15
  %59 = load ptr, ptr %58, align 8, !tbaa !43
  %60 = icmp eq ptr %59, null
  br i1 %60, label %73, label %61

61:                                               ; preds = %54, %70
  %62 = phi ptr [ %71, %70 ], [ %59, %54 ]
  %63 = getelementptr inbounds %struct.DupliObject, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !143
  %65 = getelementptr inbounds %struct.Object, ptr %64, i64 0, i32 3
  %66 = load i16, ptr %65, align 8, !tbaa !149
  %67 = icmp eq i16 %66, 10
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.DupliObject, ptr %62, i64 0, i32 3
  call fastcc void @gpu_render_lamp_update(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %64, ptr noundef %43, ptr noundef nonnull %69, ptr noundef nonnull %3, ptr noundef %20) #17
  br label %70

70:                                               ; preds = %61, %68
  %71 = load ptr, ptr %62, align 8, !tbaa !43
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %61, !llvm.loop !165

73:                                               ; preds = %70, %54
  call void @free_object_duplilist(ptr noundef nonnull %58) #15
  br label %74

74:                                               ; preds = %49, %73
  %75 = call ptr @_setlooper_base_step(ptr noundef nonnull %4, ptr noundef nonnull %41) #15
  %76 = icmp eq ptr %75, null
  br i1 %76, label %23, label %40, !llvm.loop !166

77:                                               ; preds = %26, %77
  %78 = phi ptr [ %24, %26 ], [ %92, %77 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %8) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %8, i8 0, i64 384, i1 false)
  call void @llvm.lifetime.start.p0(i64 880, ptr nonnull %9) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(880) %9, i8 0, i64 880, i1 false)
  store i16 3, ptr %28, align 8, !tbaa !79
  %79 = getelementptr inbounds %struct.View3DShadow, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !167
  %81 = call i32 @GPU_lamp_shadow_layer(ptr noundef %80) #15
  %82 = load i32, ptr %29, align 8, !tbaa !90
  %83 = and i32 %82, %81
  store i32 %83, ptr %29, align 8, !tbaa !90
  %84 = load i16, ptr %27, align 2, !tbaa !118
  %85 = and i16 %84, -8269
  %86 = or disjoint i16 %85, 68
  store i16 %86, ptr %27, align 2, !tbaa !118
  %87 = load ptr, ptr %79, align 8, !tbaa !167
  call void @GPU_lamp_shadow_buffer_bind(ptr noundef %87, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6) #15
  store ptr %9, ptr %30, align 8, !tbaa !64
  store i16 0, ptr %31, align 2, !tbaa !169
  store i8 2, ptr %32, align 1, !tbaa !170
  call void @copy_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %6) #15
  call void @copy_m4_m4(ptr noundef nonnull %33, ptr noundef nonnull %5) #15
  %88 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %34, ptr noundef nonnull %33) #15
  call void @mul_m4_m4m4(ptr noundef nonnull %35, ptr noundef nonnull %9, ptr noundef nonnull %33) #15
  %89 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %36, ptr noundef nonnull %34) #15
  %90 = load i32, ptr %7, align 4, !tbaa !92
  call void @ED_view3d_draw_offscreen(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %8, i32 noundef %90, i32 noundef %90, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %91 = load ptr, ptr %79, align 8, !tbaa !167
  call void @GPU_lamp_shadow_buffer_unbind(ptr noundef %91) #15
  store i16 %38, ptr %28, align 8, !tbaa !79
  store i32 %39, ptr %29, align 8, !tbaa !90
  store i16 %37, ptr %27, align 2, !tbaa !118
  call void @llvm.lifetime.end.p0(i64 880, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  %92 = load ptr, ptr %78, align 8, !tbaa !43
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %77, !llvm.loop !171

94:                                               ; preds = %77, %23
  call void @BLI_freelistN(ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_draw_offscreen(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i8 noundef zeroext %7, i8 noundef zeroext %8) local_unnamed_addr #0 {
  %10 = alloca %struct.rcti, align 4
  %11 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10)
  tail call void @glPushMatrix() #15
  %12 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 5
  %13 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 6
  %14 = load <2 x i16>, ptr %12, align 8, !tbaa !60
  %15 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !172
  %16 = trunc i32 %3 to i16
  store i16 %16, ptr %12, align 8, !tbaa !49
  %17 = trunc i32 %4 to i16
  store i16 %17, ptr %13, align 2, !tbaa !52
  store i32 0, ptr %15, align 8, !tbaa !66
  %18 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 2
  store i32 0, ptr %18, align 8, !tbaa !67
  %19 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 1
  store i32 %3, ptr %19, align 4, !tbaa !173
  %20 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 3
  store i32 %4, ptr %20, align 4, !tbaa !174
  tail call void @UI_SetTheme(i32 noundef 1, i32 noundef 0) #15
  %21 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !87
  %22 = or i32 %21, 1
  store i32 %22, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !87
  %23 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %24 = load i16, ptr %23, align 2, !tbaa !118
  %25 = and i16 %24, 64
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %9
  tail call void @GPU_free_images_anim() #15
  br label %28

28:                                               ; preds = %27, %9
  %29 = icmp eq i8 %8, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #16
  call void @ED_view3d_offscreen_sky_color_get(ptr noundef %0, ptr noundef nonnull %11) #17
  %31 = load float, ptr %11, align 4, !tbaa !14
  %32 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !14
  %34 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !14
  call void @glClearColor(float noundef %31, float noundef %33, float noundef %35, float noundef 1.000000e+00) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #16
  br label %37

36:                                               ; preds = %28
  tail call void @glClearColor(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  br label %37

37:                                               ; preds = %36, %30
  call void @glClear(i32 noundef 16640) #15
  call fastcc void @view3d_main_area_setup_view(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %5, ptr noundef %6) #17
  call fastcc void @view3d_draw_objects(ptr noundef null, ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext %7, i8 noundef zeroext 1) #17
  %38 = load i16, ptr %23, align 2, !tbaa !118
  %39 = and i16 %38, 64
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  call void @ED_region_pixelspace(ptr noundef nonnull %2) #15
  %42 = load i16, ptr %23, align 2, !tbaa !118
  %43 = and i16 %42, 16
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  call void @ED_gpencil_draw_view3d(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext 0) #15
  br label %46

46:                                               ; preds = %45, %41
  call void @GPU_free_images_anim() #15
  br label %47

47:                                               ; preds = %46, %37
  store <2 x i16> %14, ptr %12, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !172
  call void @glPopMatrix() #15
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #15
  %48 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !87
  %49 = and i32 %48, -2
  store i32 %49, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: optsize
declare void @UI_SetTheme(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_free_images_anim() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_offscreen_sky_color_get(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !175
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 6
  tail call fastcc void @linearrgb_to_srgb_v3_v3(ptr noundef %1, ptr noundef nonnull %7) #17
  br label %9

8:                                                ; preds = %2
  tail call void @UI_GetThemeColor3fv(i32 noundef 2, ptr noundef %1) #15
  br label %9

9:                                                ; preds = %8, %6
  ret void
}

; Function Attrs: optsize
declare void @glClearColor(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_main_area_setup_view(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  tail call void @ED_view3d_update_viewmat(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #17
  tail call void @glMatrixMode(i32 noundef 5889) #15
  tail call void @glLoadMatrixf(ptr noundef %7) #15
  tail call void @glMatrixMode(i32 noundef 5888) #15
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 1
  tail call void @glLoadMatrixf(ptr noundef nonnull %8) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_draw_objects(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6) unnamed_addr #0 {
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 30
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = icmp eq i8 %6, 0
  %12 = zext i1 %11 to i8
  br i1 %11, label %13, label %14

13:                                               ; preds = %7
  tail call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 2) #15
  br label %14

14:                                               ; preds = %13, %7
  %15 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 32
  %16 = load i16, ptr %15, align 2, !tbaa !86
  %17 = and i16 %16, 4
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call fastcc void @view3d_draw_clipping(ptr noundef nonnull %10) #17
  br label %20

20:                                               ; preds = %19, %14
  %21 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 24
  %22 = load i16, ptr %21, align 8, !tbaa !79
  %23 = icmp sgt i16 %22, 2
  %24 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 47
  br i1 %23, label %40, label %25

25:                                               ; preds = %20
  store i8 0, ptr %24, align 8, !tbaa !81
  %26 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !80
  %28 = icmp eq ptr %27, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 3
  %31 = load i16, ptr %30, align 8, !tbaa !149
  %32 = icmp eq i16 %31, 1
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !176
  %36 = getelementptr inbounds %struct.Mesh, ptr %35, i64 0, i32 36
  %37 = load i32, ptr %36, align 8, !tbaa !177
  %38 = and i32 %37, 16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33, %20
  store i8 1, ptr %24, align 8, !tbaa !81
  tail call void @glEnable(i32 noundef 2929) #15
  br label %41

41:                                               ; preds = %29, %25, %33, %40
  %42 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 47
  br i1 %11, label %43, label %75

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 31
  %45 = load float, ptr %44, align 8, !tbaa !45
  %46 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 36
  store float %45, ptr %46, align 8, !tbaa !180
  %47 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 38
  %48 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 38, i32 1
  %49 = load i8, ptr %48, align 4, !tbaa !20
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = load float, ptr %47, align 8, !tbaa !44
  %53 = fdiv float %45, %52
  store float %53, ptr %46, align 8, !tbaa !180
  br label %54

54:                                               ; preds = %51, %43
  %55 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 26
  %56 = load i8, ptr %55, align 2, !tbaa !181
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 25
  %60 = load i8, ptr %59, align 1, !tbaa !170
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %58, %54
  %63 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %64 = load i16, ptr %63, align 2, !tbaa !118
  %65 = and i16 %64, 4
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  tail call fastcc void @drawfloor(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %4) #17
  br label %75

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %70 = load i16, ptr %69, align 2, !tbaa !118
  %71 = and i16 %70, 4
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  tail call void @ED_region_pixelspace(ptr noundef nonnull %3) #15
  tail call fastcc void @drawgrid(ptr noundef nonnull %47, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef %4) #17
  tail call void @glMatrixMode(i32 noundef 5889) #15
  tail call void @glLoadMatrixf(ptr noundef nonnull %10) #15
  tail call void @glMatrixMode(i32 noundef 5888) #15
  %74 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 1
  tail call void @glLoadMatrixf(ptr noundef nonnull %74) #15
  br label %75

75:                                               ; preds = %67, %62, %73, %68, %41
  %76 = icmp eq i8 %5, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %75
  tail call fastcc void @view3d_draw_bgpic_test(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %2, i8 noundef zeroext 0, i8 noundef zeroext %12) #17
  br label %78

78:                                               ; preds = %77, %75
  %79 = load i16, ptr %15, align 2, !tbaa !86
  %80 = and i16 %79, 4
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  tail call void @ED_view3d_clipping_set(ptr noundef nonnull %10) #17
  br label %83

83:                                               ; preds = %82, %78
  %84 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !121
  %86 = icmp eq ptr %85, null
  br i1 %86, label %111, label %87

87:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  store ptr %85, ptr %8, align 8, !tbaa !43
  %88 = call ptr @_setlooper_base_step(ptr noundef nonnull %8, ptr noundef null) #15
  %89 = icmp eq ptr %88, null
  br i1 %89, label %110, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 22
  br label %92

92:                                               ; preds = %90, %107
  %93 = phi ptr [ %88, %90 ], [ %108, %107 ]
  %94 = load i32, ptr %91, align 8, !tbaa !90
  %95 = getelementptr inbounds %struct.Base, ptr %93, i64 0, i32 2
  %96 = load i32, ptr %95, align 8, !tbaa !89
  %97 = and i32 %96, %94
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %92
  call void @UI_ThemeColorBlend(i32 noundef 25, i32 noundef 2, float noundef 0x3FE3333340000000) #15
  call void @draw_object(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %2, ptr noundef nonnull %93, i16 noundef signext 6) #15
  %100 = getelementptr inbounds %struct.Base, ptr %93, i64 0, i32 7
  %101 = load ptr, ptr %100, align 8, !tbaa !74
  %102 = getelementptr inbounds %struct.Object, ptr %101, i64 0, i32 55
  %103 = load i16, ptr %102, align 8, !tbaa !122
  %104 = and i16 %103, 2840
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %99
  call fastcc void @draw_dupli_objects_color(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %2, ptr noundef nonnull %93, i16 noundef signext 6, i32 noundef -1) #17
  br label %107

107:                                              ; preds = %92, %106, %99
  %108 = call ptr @_setlooper_base_step(ptr noundef nonnull %8, ptr noundef nonnull %93) #15
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %92, !llvm.loop !182

110:                                              ; preds = %107, %87
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %111

111:                                              ; preds = %110, %83
  %112 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %113 = load ptr, ptr %112, align 8, !tbaa !43
  %114 = icmp eq ptr %113, null
  br i1 %11, label %137, label %115

115:                                              ; preds = %111
  br i1 %114, label %202, label %116

116:                                              ; preds = %115
  %117 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 22
  br label %118

118:                                              ; preds = %116, %134
  %119 = phi ptr [ %113, %116 ], [ %135, %134 ]
  %120 = load i32, ptr %117, align 8, !tbaa !90
  %121 = getelementptr inbounds %struct.Base, ptr %119, i64 0, i32 2
  %122 = load i32, ptr %121, align 8, !tbaa !89
  %123 = and i32 %122, %120
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.Base, ptr %119, i64 0, i32 7
  %127 = load ptr, ptr %126, align 8, !tbaa !74
  %128 = getelementptr inbounds %struct.Object, ptr %127, i64 0, i32 55
  %129 = load i16, ptr %128, align 8, !tbaa !122
  %130 = and i16 %129, 2840
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %125
  call fastcc void @draw_dupli_objects(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %2, ptr noundef nonnull %119) #17
  br label %133

133:                                              ; preds = %132, %125
  call void @draw_object(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %2, ptr noundef nonnull %119, i16 noundef signext 0) #15
  br label %134

134:                                              ; preds = %118, %133
  %135 = load ptr, ptr %119, align 8, !tbaa !43
  %136 = icmp eq ptr %135, null
  br i1 %136, label %202, label %118, !llvm.loop !183

137:                                              ; preds = %111
  br i1 %114, label %138, label %140

138:                                              ; preds = %137
  %139 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 12
  store i32 0, ptr %139, align 8, !tbaa !184
  br label %202

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 22
  %142 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  br label %143

143:                                              ; preds = %140, %170
  %144 = phi ptr [ %113, %140 ], [ %171, %170 ]
  %145 = phi i32 [ 0, %140 ], [ %148, %170 ]
  %146 = getelementptr inbounds %struct.Base, ptr %144, i64 0, i32 2
  %147 = load i32, ptr %146, align 8, !tbaa !89
  %148 = or i32 %147, %145
  %149 = load i32, ptr %141, align 8, !tbaa !90
  %150 = and i32 %149, %147
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %170, label %152

152:                                              ; preds = %143
  %153 = getelementptr inbounds %struct.Base, ptr %144, i64 0, i32 7
  %154 = load ptr, ptr %153, align 8, !tbaa !74
  %155 = getelementptr inbounds %struct.Object, ptr %154, i64 0, i32 55
  %156 = load i16, ptr %155, align 8, !tbaa !122
  %157 = and i16 %156, 2840
  %158 = icmp eq i16 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %152
  call fastcc void @draw_dupli_objects(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %2, ptr noundef nonnull %144) #17
  br label %160

160:                                              ; preds = %159, %152
  %161 = getelementptr inbounds %struct.Base, ptr %144, i64 0, i32 4
  %162 = load i32, ptr %161, align 8, !tbaa !136
  %163 = and i32 %162, 1
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = load ptr, ptr %153, align 8, !tbaa !74
  %167 = load ptr, ptr %142, align 8, !tbaa !80
  %168 = icmp eq ptr %166, %167
  br i1 %168, label %170, label %169

169:                                              ; preds = %165
  call void @draw_object(ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %2, ptr noundef nonnull %144, i16 noundef signext 0) #15
  br label %170

170:                                              ; preds = %143, %165, %169, %160
  %171 = load ptr, ptr %144, align 8, !tbaa !43
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %143, !llvm.loop !185

173:                                              ; preds = %170
  %174 = load ptr, ptr %112, align 8, !tbaa !43
  %175 = and i32 %148, 1048575
  %176 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 12
  store i32 %175, ptr %176, align 8, !tbaa !184
  %177 = icmp eq ptr %174, null
  br i1 %177, label %202, label %178

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 22
  %180 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  br label %181

181:                                              ; preds = %178, %199
  %182 = phi ptr [ %174, %178 ], [ %200, %199 ]
  %183 = load i32, ptr %179, align 8, !tbaa !90
  %184 = getelementptr inbounds %struct.Base, ptr %182, i64 0, i32 2
  %185 = load i32, ptr %184, align 8, !tbaa !89
  %186 = and i32 %185, %183
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %199, label %188

188:                                              ; preds = %181
  %189 = getelementptr inbounds %struct.Base, ptr %182, i64 0, i32 7
  %190 = load ptr, ptr %189, align 8, !tbaa !74
  %191 = load ptr, ptr %180, align 8, !tbaa !80
  %192 = icmp eq ptr %190, %191
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.Base, ptr %182, i64 0, i32 4
  %195 = load i32, ptr %194, align 8, !tbaa !136
  %196 = and i32 %195, 1
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %193, %188
  call void @draw_object(ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %2, ptr noundef nonnull %182, i16 noundef signext 0) #15
  br label %199

199:                                              ; preds = %181, %198, %193
  %200 = load ptr, ptr %182, align 8, !tbaa !43
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %181, !llvm.loop !186

202:                                              ; preds = %134, %199, %138, %115, %173
  %203 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %204 = load i16, ptr %203, align 2, !tbaa !118
  %205 = and i16 %204, 16
  %206 = icmp eq i16 %205, 0
  br i1 %206, label %215, label %207

207:                                              ; preds = %202
  %208 = load i8, ptr %42, align 8, !tbaa !81
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %207
  call void @glDisable(i32 noundef 2929) #15
  br label %211

211:                                              ; preds = %210, %207
  call void @ED_gpencil_draw_view3d(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i8 noundef zeroext 1) #15
  %212 = load i8, ptr %42, align 8, !tbaa !81
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %211
  call void @glEnable(i32 noundef 2929) #15
  br label %215

215:                                              ; preds = %211, %214, %202
  %216 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 44
  %217 = load ptr, ptr %216, align 8, !tbaa !125
  %218 = icmp eq ptr %217, null
  br i1 %218, label %220, label %219

219:                                              ; preds = %215
  call fastcc void @view3d_draw_transp(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %2) #17
  br label %220

220:                                              ; preds = %219, %215
  %221 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 45
  %222 = load ptr, ptr %221, align 8, !tbaa !126
  %223 = icmp eq ptr %222, null
  br i1 %223, label %225, label %224

224:                                              ; preds = %220
  call fastcc void @view3d_draw_xray(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %2) #17
  br label %225

225:                                              ; preds = %224, %220
  %226 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 46
  %227 = load ptr, ptr %226, align 8, !tbaa !127
  %228 = icmp eq ptr %227, null
  br i1 %228, label %230, label %229

229:                                              ; preds = %225
  call fastcc void @view3d_draw_xraytransp(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %2) #17
  br label %230

230:                                              ; preds = %229, %225
  br i1 %11, label %231, label %232

231:                                              ; preds = %230
  call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %3, i32 noundef 0) #15
  br label %232

232:                                              ; preds = %231, %230
  %233 = load i16, ptr %15, align 2, !tbaa !86
  %234 = and i16 %233, 4
  %235 = icmp eq i16 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %232
  call void @ED_view3d_clipping_disable() #17
  br label %237

237:                                              ; preds = %236, %232
  br i1 %76, label %239, label %238

238:                                              ; preds = %237
  call fastcc void @view3d_draw_bgpic_test(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %2, i8 noundef zeroext 1, i8 noundef zeroext %12) #17
  br label %239

239:                                              ; preds = %238, %237
  br i1 %11, label %240, label %241

240:                                              ; preds = %239
  call void @BIF_draw_manipulator(ptr noundef %0) #15
  br label %241

241:                                              ; preds = %240, %239
  %242 = load i8, ptr %42, align 8, !tbaa !81
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %241
  store i8 0, ptr %42, align 8, !tbaa !81
  call void @glDisable(i32 noundef 2929) #15
  br label %245

245:                                              ; preds = %244, %241
  %246 = load i16, ptr %203, align 2, !tbaa !118
  %247 = and i16 %246, 64
  %248 = icmp eq i16 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %245
  call void @GPU_free_images_old() #15
  br label %250

250:                                              ; preds = %249, %245
  ret void
}

; Function Attrs: optsize
declare void @ED_region_pixelspace(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @linearrgb_to_srgb_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load float, ptr %1, align 4, !tbaa !14
  %4 = tail call float @linearrgb_to_srgb(float noundef %3) #15
  store float %4, ptr %0, align 4, !tbaa !14
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !14
  %7 = tail call float @linearrgb_to_srgb(float noundef %6) #15
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !14
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !14
  %11 = tail call float @linearrgb_to_srgb(float noundef %10) #15
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare void @UI_GetThemeColor3fv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_view3d_draw_offscreen_imbuf(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = alloca %struct.CameraParams, align 4
  %11 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = icmp eq i32 %7, 0
  %14 = zext i1 %13 to i8
  tail call void @glPushAttrib(i32 noundef 64) #15
  %15 = tail call ptr @GPU_offscreen_create(i32 noundef %3, i32 noundef %4, ptr noundef %8) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  tail call void @glPopAttrib() #15
  br label %56

18:                                               ; preds = %9
  tail call void @ED_view3d_draw_offscreen_init(ptr noundef %0, ptr noundef %1) #17
  tail call void @GPU_offscreen_bind(ptr noundef nonnull %15) #15
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %12, i64 0, i32 25
  %20 = load i8, ptr %19, align 1, !tbaa !170
  %21 = icmp eq i8 %20, 2
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 15
  %24 = load ptr, ptr %23, align 8, !tbaa !54
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %10) #16
  call void @BKE_camera_params_init(ptr noundef nonnull %10) #15
  %27 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 32
  %28 = getelementptr inbounds %struct.CameraParams, ptr %10, i64 0, i32 11
  %29 = load <2 x float>, ptr %27, align 4, !tbaa !14
  store <2 x float> %29, ptr %28, align 4, !tbaa !14
  %30 = load ptr, ptr %23, align 8, !tbaa !54
  call void @BKE_camera_params_from_object(ptr noundef nonnull %10, ptr noundef %30) #15
  %31 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 63
  %32 = load float, ptr %31, align 4, !tbaa !57
  %33 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 64
  %34 = load float, ptr %33, align 8, !tbaa !58
  call void @BKE_camera_params_compute_viewplane(ptr noundef nonnull %10, i32 noundef %3, i32 noundef %4, float noundef %32, float noundef %34) #15
  call void @BKE_camera_params_compute_matrix(ptr noundef nonnull %10) #15
  %35 = getelementptr inbounds %struct.CameraParams, ptr %10, i64 0, i32 20
  call void @ED_view3d_draw_offscreen(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %4, ptr noundef null, ptr noundef nonnull %35, i8 noundef zeroext %6, i8 noundef zeroext %14) #17
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %10) #16
  br label %37

36:                                               ; preds = %22, %18
  tail call void @ED_view3d_draw_offscreen(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %4, ptr noundef null, ptr noundef null, i8 noundef zeroext %6, i8 noundef zeroext %14) #17
  br label %37

37:                                               ; preds = %36, %26
  %38 = call ptr @IMB_allocImBuf(i32 noundef %3, i32 noundef %4, i8 noundef zeroext 32, i32 noundef %5) #15
  %39 = getelementptr inbounds %struct.ImBuf, ptr %38, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !187
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  call void @GPU_offscreen_read_pixels(ptr noundef nonnull %15, i32 noundef 5126, ptr noundef nonnull %40) #15
  br label %48

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.ImBuf, ptr %38, i64 0, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !93
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  call void @GPU_offscreen_read_pixels(ptr noundef nonnull %15, i32 noundef 5121, ptr noundef nonnull %45) #15
  br label %48

48:                                               ; preds = %43, %47, %42
  call void @GPU_offscreen_unbind(ptr noundef nonnull %15) #15
  call void @GPU_offscreen_free(ptr noundef nonnull %15) #15
  call void @glPopAttrib() #15
  %49 = load ptr, ptr %39, align 8, !tbaa !187
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.ImBuf, ptr %38, i64 0, i32 8
  %53 = load ptr, ptr %52, align 8, !tbaa !93
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  call void @IMB_rect_from_float(ptr noundef nonnull %38) #15
  br label %56

56:                                               ; preds = %48, %51, %55, %17
  %57 = phi ptr [ null, %17 ], [ %38, %55 ], [ %38, %51 ], [ %38, %48 ]
  ret ptr %57
}

; Function Attrs: optsize
declare void @glPushAttrib(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GPU_offscreen_create(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPopAttrib() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_camera_params_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_camera_params_from_object(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_camera_params_compute_viewplane(ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_camera_params_compute_matrix(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_offscreen_read_pixels(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_offscreen_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_view3d_draw_offscreen_imbuf_simple(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i32 noundef %8, ptr noundef %9) local_unnamed_addr #0 {
  %11 = alloca %struct.View3D, align 8
  %12 = alloca %struct.ARegion, align 8
  %13 = alloca %struct.RegionView3D, align 8
  %14 = alloca %struct.CameraParams, align 4
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %11) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %11, i8 0, i64 376, i1 false)
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %12) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %12, i8 0, i64 376, i1 false)
  call void @llvm.lifetime.start.p0(i64 880, ptr nonnull %13) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(880) %13, i8 0, i64 880, i1 false)
  %15 = getelementptr inbounds %struct.View3D, ptr %11, i64 0, i32 2
  %16 = getelementptr inbounds %struct.View3D, ptr %11, i64 0, i32 2, i32 1
  store ptr %12, ptr %16, align 8, !tbaa !188
  store ptr %12, ptr %15, align 8, !tbaa !189
  %17 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 30
  store ptr %13, ptr %17, align 8, !tbaa !64
  %18 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 8
  store i16 0, ptr %18, align 2, !tbaa !169
  %19 = getelementptr inbounds %struct.View3D, ptr %11, i64 0, i32 15
  store ptr %1, ptr %19, align 8, !tbaa !54
  %20 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 12
  %21 = load i32, ptr %20, align 8, !tbaa !190
  %22 = getelementptr inbounds %struct.View3D, ptr %11, i64 0, i32 22
  store i32 %21, ptr %22, align 8, !tbaa !90
  %23 = trunc i32 %5 to i16
  %24 = getelementptr inbounds %struct.View3D, ptr %11, i64 0, i32 24
  store i16 %23, ptr %24, align 8, !tbaa !79
  %25 = icmp eq i8 %6, 0
  %26 = select i1 %25, i16 4, i16 12
  %27 = getelementptr inbounds %struct.View3D, ptr %11, i64 0, i32 29
  store i16 %26, ptr %27, align 2, !tbaa !118
  %28 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 25
  store i8 2, ptr %28, align 1, !tbaa !170
  %29 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 2
  %30 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %29, ptr noundef nonnull %30) #15
  call void @normalize_m4(ptr noundef nonnull %29) #15
  %31 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 1
  %32 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %31, ptr noundef nonnull %29) #15
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %14) #16
  call void @BKE_camera_params_init(ptr noundef nonnull %14) #15
  call void @BKE_camera_params_from_object(ptr noundef nonnull %14, ptr noundef %1) #15
  %33 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 63
  %34 = load float, ptr %33, align 4, !tbaa !57
  %35 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 64
  %36 = load float, ptr %35, align 8, !tbaa !58
  call void @BKE_camera_params_compute_viewplane(ptr noundef nonnull %14, i32 noundef %2, i32 noundef %3, float noundef %34, float noundef %36) #15
  call void @BKE_camera_params_compute_matrix(ptr noundef nonnull %14) #15
  %37 = getelementptr inbounds %struct.CameraParams, ptr %14, i64 0, i32 20
  call void @copy_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %37) #15
  %38 = getelementptr inbounds %struct.CameraParams, ptr %14, i64 0, i32 11
  %39 = getelementptr inbounds %struct.View3D, ptr %11, i64 0, i32 32
  %40 = load <2 x float>, ptr %38, align 4, !tbaa !14
  store <2 x float> %40, ptr %39, align 4, !tbaa !14
  %41 = getelementptr inbounds %struct.CameraParams, ptr %14, i64 0, i32 1
  %42 = load float, ptr %41, align 4, !tbaa !191
  %43 = getelementptr inbounds %struct.View3D, ptr %11, i64 0, i32 30
  store float %42, ptr %43, align 4, !tbaa !192
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %14) #16
  %44 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 3
  call void @mul_m4_m4m4(ptr noundef nonnull %44, ptr noundef nonnull %13, ptr noundef nonnull %31) #15
  %45 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 4
  %46 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %45, ptr noundef nonnull %29) #15
  %47 = call ptr @ED_view3d_draw_offscreen_imbuf(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %7, i32 noundef %8, ptr noundef %9) #17
  call void @llvm.lifetime.end.p0(i64 880, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %11) #16
  ret ptr %47
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: optsize
declare void @normalize_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_scene_draw_fps(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [16 x i8], align 16
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 30
  %5 = load ptr, ptr %4, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %72, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ScreenFrameRateInfo, ptr %5, i64 0, i32 1
  %9 = load double, ptr %8, align 8, !tbaa !194
  %10 = fcmp une double %9, 0.000000e+00
  br i1 %10, label %11, label %72

11:                                               ; preds = %7
  %12 = load double, ptr %5, align 8, !tbaa !196
  %13 = fcmp une double %12, 0.000000e+00
  br i1 %13, label %14, label %72

14:                                               ; preds = %11
  store i8 0, ptr %3, align 16, !tbaa !148
  %15 = fsub double %9, %12
  %16 = fdiv double 1.000000e+00, %15
  %17 = fptrunc double %16 to float
  %18 = getelementptr inbounds %struct.ScreenFrameRateInfo, ptr %5, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !197
  %20 = sext i16 %19 to i64
  %21 = getelementptr inbounds %struct.ScreenFrameRateInfo, ptr %5, i64 0, i32 2, i64 %20
  store float %17, ptr %21, align 4, !tbaa !14
  br label %22

22:                                               ; preds = %14, %22
  %23 = phi i64 [ 0, %14 ], [ %33, %22 ]
  %24 = phi i32 [ 0, %14 ], [ %32, %22 ]
  %25 = phi float [ 0.000000e+00, %14 ], [ %30, %22 ]
  %26 = getelementptr inbounds %struct.ScreenFrameRateInfo, ptr %5, i64 0, i32 2, i64 %23
  %27 = load float, ptr %26, align 4, !tbaa !14
  %28 = fcmp une float %27, 0.000000e+00
  %29 = select i1 %28, float %27, float -0.000000e+00
  %30 = fadd float %25, %29
  %31 = zext i1 %28 to i32
  %32 = add nuw nsw i32 %24, %31
  %33 = add nuw nsw i64 %23, 1
  %34 = icmp eq i64 %33, 8
  br i1 %34, label %35, label %22, !llvm.loop !198

35:                                               ; preds = %22
  %36 = icmp eq i32 %32, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %35
  %38 = sext i16 %19 to i32
  %39 = add nsw i32 %38, 1
  %40 = srem i32 %39, 8
  %41 = trunc i32 %40 to i16
  store i16 %41, ptr %18, align 8, !tbaa !197
  %42 = sitofp i32 %32 to float
  %43 = fdiv float %30, %42
  br label %44

44:                                               ; preds = %37, %35
  %45 = phi float [ %43, %37 ], [ %30, %35 ]
  %46 = fadd float %45, 5.000000e-01
  %47 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 55
  %48 = load i16, ptr %47, align 4, !tbaa !199
  %49 = sitofp i16 %48 to double
  %50 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 65
  %51 = load float, ptr %50, align 4, !tbaa !200
  %52 = fpext float %51 to double
  %53 = fdiv double %49, %52
  %54 = fptrunc double %53 to float
  %55 = fcmp olt float %46, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  tail call void @UI_ThemeColor(i32 noundef 0) #15
  %57 = fpext float %45 to double
  %58 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 16, ptr noundef nonnull @.str.4, double noundef %57) #15
  br label %62

59:                                               ; preds = %44
  tail call void @UI_ThemeColor(i32 noundef 4) #15
  %60 = fptosi float %46 to i32
  %61 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %60) #15
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, ptr %1, align 4, !tbaa !105
  %64 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !201
  %65 = sext i16 %64 to i32
  %66 = add nsw i32 %63, %65
  %67 = sitofp i32 %66 to float
  %68 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %69 = load i32, ptr %68, align 4, !tbaa !108
  %70 = sub nsw i32 %69, %65
  %71 = sitofp i32 %70 to float
  call void @BLF_draw_default_ascii(float noundef %67, float noundef %71, float noundef 0.000000e+00, ptr noundef nonnull %3, i64 noundef 16) #15
  br label %72

72:                                               ; preds = %2, %7, %11, %62
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret void
}

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_draw_default_ascii(float noundef, float noundef, float noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_view3d_calc_render_border(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.rctf, align 16
  %6 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %8 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 24
  %9 = load i16, ptr %8, align 8, !tbaa !79
  %10 = icmp eq i16 %9, 6
  br i1 %10, label %11, label %79

11:                                               ; preds = %4
  %12 = tail call fastcc zeroext i8 @view3d_main_area_do_render_draw(ptr noundef %0) #17, !range !19
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %79, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 25
  %16 = load i8, ptr %15, align 1, !tbaa !170
  %17 = icmp eq i8 %16, 2
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 47
  %20 = load i32, ptr %19, align 8, !tbaa !202
  %21 = and i32 %20, 512
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %79, label %28

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %25 = load i16, ptr %24, align 2, !tbaa !118
  %26 = and i16 %25, 2048
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %79, label %49

28:                                               ; preds = %18
  call void @ED_view3d_calc_camera_border(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %1, ptr noundef nonnull %7, ptr noundef nonnull %5, i8 noundef zeroext 0) #17
  %29 = load <4 x float>, ptr %5, align 16
  %30 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 58
  %31 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %5) #17
  %32 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 2
  %33 = load float, ptr %32, align 8, !tbaa !59
  %34 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 58, i32 2
  %35 = load float, ptr %34, align 8, !tbaa !203
  %36 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %5) #17
  %37 = tail call float @llvm.fmuladd.f32(float %35, float %36, float %33)
  %38 = fptosi float %37 to i32
  %39 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  store i32 %38, ptr %39, align 4, !tbaa !107
  %40 = load <2 x float>, ptr %30, align 8, !tbaa !14
  %41 = insertelement <2 x float> poison, float %31, i64 0
  %42 = shufflevector <2 x float> %41, <2 x float> poison, <2 x i32> zeroinitializer
  %43 = shufflevector <4 x float> %29, <4 x float> poison, <2 x i32> zeroinitializer
  %44 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %40, <2 x float> %42, <2 x float> %43)
  %45 = fptosi <2 x float> %44 to <2 x i32>
  store <2 x i32> %45, ptr %3, align 4, !tbaa !92
  %46 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 58, i32 3
  %47 = load float, ptr %46, align 4, !tbaa !204
  %48 = tail call float @llvm.fmuladd.f32(float %47, float %36, float %33)
  br label %70

49:                                               ; preds = %23
  %50 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 17
  %51 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 5
  %52 = load i16, ptr %51, align 8, !tbaa !49
  %53 = sitofp i16 %52 to float
  %54 = load <2 x float>, ptr %50, align 8, !tbaa !14
  %55 = insertelement <2 x float> poison, float %53, i64 0
  %56 = shufflevector <2 x float> %55, <2 x float> poison, <2 x i32> zeroinitializer
  %57 = fmul <2 x float> %54, %56
  %58 = fptosi <2 x float> %57 to <2 x i32>
  store <2 x i32> %58, ptr %3, align 4, !tbaa !92
  %59 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 17, i32 2
  %60 = load float, ptr %59, align 8, !tbaa !205
  %61 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 6
  %62 = load i16, ptr %61, align 2, !tbaa !52
  %63 = sitofp i16 %62 to float
  %64 = fmul float %60, %63
  %65 = fptosi float %64 to i32
  %66 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  store i32 %65, ptr %66, align 4, !tbaa !107
  %67 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 17, i32 3
  %68 = load float, ptr %67, align 4, !tbaa !206
  %69 = fmul float %68, %63
  br label %70

70:                                               ; preds = %49, %28
  %71 = phi float [ %69, %49 ], [ %48, %28 ]
  %72 = fptosi float %71 to i32
  %73 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  store i32 %72, ptr %73, align 4, !tbaa !108
  %74 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3
  %75 = load i32, ptr %74, align 8, !tbaa !66
  %76 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 2
  %77 = load i32, ptr %76, align 8, !tbaa !67
  tail call void @BLI_rcti_translate(ptr noundef nonnull %3, i32 noundef %75, i32 noundef %77) #15
  %78 = tail call zeroext i8 @BLI_rcti_isect(ptr noundef nonnull %74, ptr noundef nonnull %3, ptr noundef nonnull %3) #15
  br label %79

79:                                               ; preds = %23, %18, %4, %11, %70
  %80 = phi i8 [ 1, %70 ], [ 0, %11 ], [ 0, %4 ], [ 0, %18 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret i8 %80
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @view3d_main_area_do_render_draw(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 115
  %3 = tail call ptr @RE_engines_find(ptr noundef nonnull %2) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.RenderEngineType, ptr %3, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !207
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.RenderEngineType, ptr %3, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !210
  %12 = icmp ne ptr %11, null
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = phi i8 [ 0, %5 ], [ 0, %1 ], [ %13, %9 ]
  ret i8 %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: optsize
declare void @BLI_rcti_translate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @view3d_main_area_draw(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.rcti, align 4
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %6 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store ptr null, ptr %3, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %7 = call zeroext i8 @ED_view3d_calc_render_border(ptr noundef %5, ptr noundef %6, ptr noundef %1, ptr noundef nonnull %4) #17, !range !19
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 4
  %11 = call zeroext i8 @BLI_rcti_compare(ptr noundef nonnull %10, ptr noundef nonnull %4) #15
  %12 = icmp eq i8 %11, 0
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i8 [ 0, %2 ], [ %13, %9 ]
  %16 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 24
  %17 = load i16, ptr %16, align 8, !tbaa !79
  %18 = icmp eq i16 %17, 6
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = call fastcc zeroext i8 @view3d_main_area_do_render_draw(ptr noundef %5) #17, !range !19
  %21 = icmp eq i8 %20, 0
  %22 = icmp ne i8 %15, 0
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %14
  call fastcc void @view3d_main_area_draw_objects(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull %3) #17
  call void @ED_region_pixelspace(ptr noundef %1) #15
  br label %25

25:                                               ; preds = %19, %24
  %26 = load i16, ptr %16, align 8, !tbaa !79
  %27 = icmp eq i16 %26, 6
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call fastcc void @view3d_main_area_draw_engine(ptr noundef %0, ptr noundef %5, ptr noundef %1, ptr noundef nonnull %6, i8 noundef zeroext %15, ptr noundef nonnull %4) #17
  br label %29

29:                                               ; preds = %28, %25
  %30 = load ptr, ptr %3, align 8, !tbaa !43
  call fastcc void @view3d_main_area_draw_info(ptr noundef %0, ptr noundef %5, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %30, i8 noundef zeroext %7) #17
  %31 = getelementptr inbounds %struct.View3D, ptr %6, i64 0, i32 28
  %32 = load i16, ptr %31, align 8, !tbaa !70
  %33 = or i16 %32, 8
  store i16 %33, ptr %31, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_compare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_main_area_draw_objects(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 30
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 12
  %9 = load i32, ptr %8, align 8, !tbaa !184
  %10 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 24
  %11 = load i16, ptr %10, align 8, !tbaa !79
  %12 = trunc i16 %11 to i8
  %13 = tail call zeroext i8 @draw_glsl_material(ptr noundef %1, ptr noundef null, ptr noundef %2, i8 noundef zeroext %12) #15
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  tail call fastcc void @gpu_update_lamps_shadows(ptr noundef %1, ptr noundef nonnull %2) #17
  br label %16

16:                                               ; preds = %15, %5
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 32
  %18 = load i16, ptr %17, align 2, !tbaa !86
  %19 = and i16 %18, 16
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = and i16 %18, -17
  store i16 %22, ptr %17, align 2, !tbaa !86
  %23 = tail call i32 @GPU_default_lights() #15
  br label %24

24:                                               ; preds = %21, %16
  tail call fastcc void @view3d_main_area_setup_view(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef null) #17
  %25 = load i16, ptr %17, align 2, !tbaa !86
  %26 = and i16 %25, -33
  store i16 %26, ptr %17, align 2, !tbaa !86
  tail call fastcc void @view3d_main_area_clear(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #17
  %27 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 88), align 8, !tbaa !82
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call void @glEnable(i32 noundef 32925) #15
  br label %30

30:                                               ; preds = %29, %24
  tail call fastcc void @view3d_draw_objects(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 0) #17
  %31 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 88), align 8, !tbaa !82
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void @glDisable(i32 noundef 32925) #15
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32, ptr %8, align 8, !tbaa !184
  %36 = icmp eq i32 %35, %9
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  %39 = tail call ptr @BKE_area_find_region_type(ptr noundef %38, i32 noundef 1) #15
  tail call void @ED_region_tag_redraw(ptr noundef %39) #15
  br label %40

40:                                               ; preds = %37, %34
  %41 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %42 = load i16, ptr %41, align 2, !tbaa !118
  %43 = and i16 %42, 4
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  tail call void @BDR_drawSketch(ptr noundef %0) #15
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !211
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 27
  %52 = load i8, ptr %51, align 1, !tbaa !5
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 25
  %57 = load i8, ptr %56, align 1, !tbaa !170
  %58 = icmp eq i8 %57, 2
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call fastcc void @draw_rotation_guide(ptr noundef nonnull %7) #17
  br label %60

60:                                               ; preds = %59, %55, %50, %46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_main_area_draw_engine(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr nocapture noundef readonly %5) unnamed_addr #0 {
  %7 = alloca [4 x i32], align 16
  %8 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !212
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 115
  %15 = tail call ptr @RE_engines_find(ptr noundef nonnull %14) #15
  %16 = getelementptr inbounds %struct.RenderEngineType, ptr %15, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !207
  %18 = icmp eq ptr %17, null
  br i1 %18, label %78, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.RenderEngineType, ptr %15, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !210
  %22 = icmp eq ptr %21, null
  br i1 %22, label %78, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @RE_engine_create_ex(ptr noundef nonnull %15, i8 noundef zeroext 1) #15
  %25 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 37
  %26 = getelementptr inbounds %struct.RenderEngine, ptr %24, i64 0, i32 5
  %27 = load <2 x i32>, ptr %25, align 8, !tbaa !92
  store <2 x i32> %27, ptr %26, align 4, !tbaa !92
  %28 = load ptr, ptr %16, align 8, !tbaa !207
  tail call void %28(ptr noundef %24, ptr noundef %0) #15
  store ptr %24, ptr %10, align 8, !tbaa !212
  br label %29

29:                                               ; preds = %23, %6
  tail call fastcc void @view3d_main_area_setup_view(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #17
  tail call void @ED_region_pixelspace(ptr noundef nonnull %2) #15
  %30 = icmp eq i8 %4, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !106
  %34 = load i32, ptr %5, align 4, !tbaa !105
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %78

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !108
  %39 = getelementptr inbounds %struct.rcti, ptr %5, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !107
  %41 = icmp sgt i32 %38, %40
  br i1 %41, label %42, label %78

42:                                               ; preds = %36
  call void @glGetIntegerv(i32 noundef 3088, ptr noundef nonnull %7) #15
  %43 = load i32, ptr %5, align 4, !tbaa !105
  %44 = load i32, ptr %39, align 4, !tbaa !107
  %45 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %5) #17
  %46 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %5) #17
  call void @glScissor(i32 noundef %43, i32 noundef %44, i32 noundef %45, i32 noundef %46) #15
  br label %47

47:                                               ; preds = %42, %29
  call void @glClearColor(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  call void @glClear(i32 noundef 16640) #15
  %48 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 28
  %49 = load i16, ptr %48, align 8, !tbaa !70
  %50 = and i16 %49, 2
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  call fastcc void @view3d_draw_bgpic_test(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i8 noundef zeroext 0, i8 noundef zeroext 1) #17
  br label %60

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 5
  %55 = load i16, ptr %54, align 8, !tbaa !49
  %56 = sitofp i16 %55 to float
  %57 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 6
  %58 = load i16, ptr %57, align 2, !tbaa !52
  %59 = sitofp i16 %58 to float
  call void @fdrawcheckerboard(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %56, float noundef %59) #15
  br label %60

60:                                               ; preds = %53, %52
  %61 = load ptr, ptr %10, align 8, !tbaa !212
  %62 = load ptr, ptr %61, align 8, !tbaa !213
  %63 = getelementptr inbounds %struct.RenderEngineType, ptr %62, i64 0, i32 9
  %64 = load ptr, ptr %63, align 8, !tbaa !210
  call void %64(ptr noundef nonnull %61, ptr noundef %0) #15
  %65 = load i16, ptr %48, align 8, !tbaa !70
  %66 = and i16 %65, 2
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  call fastcc void @view3d_draw_bgpic_test(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  br label %69

69:                                               ; preds = %68, %60
  br i1 %30, label %78, label %70

70:                                               ; preds = %69
  %71 = load i32, ptr %7, align 16, !tbaa !92
  %72 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 1
  %73 = load i32, ptr %72, align 4, !tbaa !92
  %74 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 2
  %75 = load i32, ptr %74, align 8, !tbaa !92
  %76 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 3
  %77 = load i32, ptr %76, align 4, !tbaa !92
  call void @glScissor(i32 noundef %71, i32 noundef %73, i32 noundef %75, i32 noundef %77) #15
  br label %78

78:                                               ; preds = %69, %70, %31, %36, %19, %13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_main_area_draw_info(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = alloca %struct.rcti, align 4
  %8 = alloca [32 x i8], align 16
  %9 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  call void @ED_region_visible_rect(ptr noundef %2, ptr noundef nonnull %7) #15
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 25
  %12 = load i8, ptr %11, align 1, !tbaa !170
  %13 = icmp eq i8 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  call fastcc void @drawviewborder(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) #17
  br label %43

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 29
  %17 = load i16, ptr %16, align 2, !tbaa !118
  %18 = and i16 %17, 2048
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %15
  call void @glPolygonMode(i32 noundef 1032, i32 noundef 6913) #15
  call void @setlinestyle(i32 noundef 3) #15
  call void @cpack(i32 noundef 4210943) #15
  %21 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 17
  %22 = load float, ptr %21, align 8, !tbaa !215
  %23 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 5
  %24 = load i16, ptr %23, align 8, !tbaa !49
  %25 = sitofp i16 %24 to float
  %26 = fmul float %22, %25
  %27 = fptosi float %26 to i32
  %28 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 17, i32 2
  %29 = load float, ptr %28, align 8, !tbaa !205
  %30 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 6
  %31 = load i16, ptr %30, align 2, !tbaa !52
  %32 = sitofp i16 %31 to float
  %33 = fmul float %29, %32
  %34 = fptosi float %33 to i32
  %35 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 17, i32 1
  %36 = load float, ptr %35, align 4, !tbaa !216
  %37 = fmul float %36, %25
  %38 = fptosi float %37 to i32
  %39 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 17, i32 3
  %40 = load float, ptr %39, align 4, !tbaa !206
  %41 = fmul float %40, %32
  %42 = fptosi float %41 to i32
  call void @glRecti(i32 noundef %27, i32 noundef %34, i32 noundef %38, i32 noundef %42) #15
  call void @setlinestyle(i32 noundef 0) #15
  call void @glPolygonMode(i32 noundef 1032, i32 noundef 6914) #15
  br label %43

43:                                               ; preds = %15, %20, %14
  %44 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 29
  %45 = load i16, ptr %44, align 2, !tbaa !118
  %46 = and i16 %45, 16
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  call void @ED_gpencil_draw_view3d(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %2, i8 noundef zeroext 0) #15
  %49 = load i16, ptr %44, align 2, !tbaa !118
  br label %50

50:                                               ; preds = %48, %43
  %51 = phi i16 [ %49, %48 ], [ %45, %43 ]
  %52 = and i16 %51, 4
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %50
  call fastcc void @drawcursor(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #17
  %55 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !217
  %56 = and i32 %55, 131072
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  call fastcc void @draw_view_axis(ptr noundef nonnull %10, ptr noundef nonnull %7) #17
  br label %60

59:                                               ; preds = %54
  call fastcc void @draw_view_icon(ptr noundef nonnull %10, ptr noundef nonnull %7) #17
  br label %60

60:                                               ; preds = %59, %58
  %61 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !73
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.Base, ptr %62, i64 0, i32 7
  %66 = load ptr, ptr %65, align 8, !tbaa !74
  br label %67

67:                                               ; preds = %60, %64
  %68 = phi ptr [ %66, %64 ], [ null, %60 ]
  %69 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !217
  %70 = and i32 %69, 16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  call fastcc void @draw_selected_name(ptr noundef nonnull %1, ptr noundef %68, ptr noundef nonnull %7) #17
  br label %73

73:                                               ; preds = %67, %72, %50
  %74 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 11
  %75 = load ptr, ptr %74, align 8, !tbaa !212
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  call fastcc void @view3d_main_area_draw_engine_info(ptr noundef nonnull %3, ptr noundef nonnull %10, ptr noundef nonnull %2, i8 noundef zeroext %5) #17
  br label %122

78:                                               ; preds = %73
  %79 = load i16, ptr %44, align 2, !tbaa !118
  %80 = and i16 %79, 4
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %82, label %122

82:                                               ; preds = %78
  %83 = call ptr @CTX_wm_manager(ptr noundef %0) #15
  %84 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !217
  %85 = and i32 %84, 2097152
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %82
  %88 = call ptr @ED_screen_animation_playing(ptr noundef %83) #15
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !217
  br label %93

92:                                               ; preds = %87
  call void @ED_scene_draw_fps(ptr noundef %1, ptr noundef nonnull %7) #17
  br label %98

93:                                               ; preds = %90, %82
  %94 = phi i32 [ %91, %90 ], [ %84, %82 ]
  %95 = and i32 %94, 262144
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  call fastcc void @draw_viewport_name(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %7) #17
  br label %98

98:                                               ; preds = %93, %97, %92
  %99 = icmp eq ptr %4, null
  br i1 %99, label %122, label %100

100:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  call void @UI_ThemeColor(i32 noundef 4) #15
  %101 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 31
  %102 = load float, ptr %101, align 8, !tbaa !45
  %103 = fcmp une float %102, 1.000000e+00
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = fpext float %102 to double
  %106 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 32, ptr noundef nonnull @.str.8, ptr noundef nonnull %4, double noundef %105) #15
  %107 = load i8, ptr %8, align 16, !tbaa !148
  %108 = icmp eq i8 %107, 0
  %109 = select i1 %108, ptr %4, ptr %8
  br label %110

110:                                              ; preds = %104, %100
  %111 = phi ptr [ %109, %104 ], [ %4, %100 ]
  %112 = load i32, ptr %7, align 4, !tbaa !105
  %113 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !201
  %114 = sext i16 %113 to i32
  %115 = add nsw i32 %112, %114
  %116 = sitofp i32 %115 to float
  %117 = getelementptr inbounds %struct.rcti, ptr %7, i64 0, i32 3
  %118 = load i32, ptr %117, align 4, !tbaa !108
  %119 = shl nsw i32 %114, 1
  %120 = sub nsw i32 %118, %119
  %121 = sitofp i32 %120 to float
  call void @BLF_draw_default_ascii(float noundef %116, float noundef %121, float noundef 0.000000e+00, ptr noundef nonnull %111, i64 noundef 32) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #16
  br label %122

122:                                              ; preds = %78, %110, %98, %77
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @plane_point_side_v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %0) #17
  %4 = getelementptr inbounds float, ptr %0, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !14
  %6 = fadd float %3, %5
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = load float, ptr %0, align 4, !tbaa !14
  %4 = load float, ptr %1, align 4, !tbaa !14
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !14
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !14
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !14
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !14
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: optsize
declare void @BKE_camera_params_from_view3d(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_paint_select_face_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @glIsEnabled(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GPU_offscreen_width(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GPU_offscreen_height(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: optsize
declare void @glScissor(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @draw_object_backbufsel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_GetThemeColorBlend3ubv(i32 noundef, i32 noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @object_duplilist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @duplilist_apply(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @dupli_step(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %9, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.DupliObject, ptr %4, i64 0, i32 7
  %6 = load i8, ptr %5, align 2, !tbaa !218
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !141
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %3, !llvm.loop !219

11:                                               ; preds = %3, %8, %1
  %12 = phi ptr [ null, %1 ], [ null, %8 ], [ %4, %3 ]
  ret ptr %12
}

; Function Attrs: optsize
declare zeroext i8 @is_negative_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor3ubv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDeleteLists(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_object_boundbox_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_boundbox_clip_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @check_object_draw_texture(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_object_boundbox_flag(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @glGenLists(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glNewList(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEndList() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glMultMatrixf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glCallList(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @duplilist_restore(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @duplilist_free_apply_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_object_duplilist(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #13 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gpu_render_lamp_update(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !176
  %10 = tail call ptr @GPU_lamp_from_blender(ptr noundef %0, ptr noundef %2, ptr noundef %3) #15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %49, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 52
  %14 = load i32, ptr %13, align 8, !tbaa !220
  %15 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 102
  %16 = load i8, ptr %15, align 8, !tbaa !135
  %17 = and i8 %16, 4
  %18 = zext nneg i8 %17 to i32
  tail call void @GPU_lamp_update(ptr noundef nonnull %10, i32 noundef %14, i32 noundef %18, ptr noundef %4) #15
  %19 = getelementptr inbounds %struct.Lamp, ptr %9, i64 0, i32 7
  %20 = load float, ptr %19, align 4, !tbaa !221
  %21 = getelementptr inbounds %struct.Lamp, ptr %9, i64 0, i32 8
  %22 = load float, ptr %21, align 8, !tbaa !223
  %23 = getelementptr inbounds %struct.Lamp, ptr %9, i64 0, i32 9
  %24 = load float, ptr %23, align 4, !tbaa !224
  %25 = getelementptr inbounds %struct.Lamp, ptr %9, i64 0, i32 15
  %26 = load float, ptr %25, align 4, !tbaa !225
  tail call void @GPU_lamp_update_colors(ptr noundef nonnull %10, float noundef %20, float noundef %22, float noundef %24, float noundef %26) #15
  %27 = load i32, ptr %13, align 8, !tbaa !220
  %28 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 22
  %29 = load i32, ptr %28, align 8, !tbaa !90
  %30 = and i32 %29, %27
  %31 = icmp eq ptr %6, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %12
  %33 = getelementptr inbounds %struct.SceneRenderLayer, ptr %6, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !226
  %35 = and i32 %34, %30
  br label %36

36:                                               ; preds = %32, %12
  %37 = phi i32 [ %35, %32 ], [ %30, %12 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  %40 = tail call zeroext i8 @GPU_lamp_override_visible(ptr noundef nonnull %10, ptr noundef %6, ptr noundef null) #15
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = tail call zeroext i8 @GPU_lamp_has_shadow_buffer(ptr noundef nonnull %10) #15
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %47 = tail call ptr %46(i64 noundef 24, ptr noundef nonnull @.str.7) #15
  %48 = getelementptr inbounds %struct.View3DShadow, ptr %47, i64 0, i32 2
  store ptr %10, ptr %48, align 8, !tbaa !167
  tail call void @BLI_addtail(ptr noundef %5, ptr noundef %47) #15
  br label %49

49:                                               ; preds = %36, %39, %42, %45, %7
  ret void
}

; Function Attrs: optsize
declare i32 @GPU_lamp_shadow_layer(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_lamp_shadow_buffer_bind(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_lamp_shadow_buffer_unbind(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GPU_lamp_from_blender(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_lamp_update(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_lamp_update_colors(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @GPU_lamp_override_visible(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @GPU_lamp_has_shadow_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glMatrixMode(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_draw_cb_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_draw_clipping(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [6 x [4 x i32]], align 16
  %3 = alloca [4 x i8], align 1
  %4 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !229
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %2, ptr noundef nonnull align 16 dereferenceable(96) @__const.view3d_draw_clipping.clipping_index, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @UI_GetThemeColorShade3ubv(i32 noundef 2, i32 noundef -8, ptr noundef nonnull %3) #15
  %8 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  store i8 0, ptr %8, align 1, !tbaa !148
  call void @glColor4ubv(ptr noundef nonnull %3) #15
  call void @glEnableClientState(i32 noundef 32884) #15
  call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %5) #15
  call void @glDrawElements(i32 noundef 7, i32 noundef 24, i32 noundef 5125, ptr noundef nonnull %2) #15
  call void @glDisableClientState(i32 noundef 32884) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #16
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawfloor(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x i8], align 1
  %5 = alloca [4 x [3 x float]], align 16
  %6 = alloca [3 x i8], align 1
  %7 = alloca [3 x i8], align 1
  %8 = alloca [3 x i8], align 1
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #16
  %11 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 37
  %12 = load i16, ptr %11, align 2, !tbaa !230
  %13 = sdiv i16 %12, 2
  %14 = sext i16 %13 to i32
  %15 = icmp slt i16 %12, 3
  br i1 %15, label %116, label %16

16:                                               ; preds = %3
  %17 = tail call float @ED_view3d_grid_scale(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #17
  %18 = sitofp i16 %13 to float
  %19 = fmul float %17, %18
  %20 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 47
  %21 = load i8, ptr %20, align 8, !tbaa !81
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !80
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @glDepthMask(i8 noundef zeroext 0) #15
  br label %28

28:                                               ; preds = %27, %23, %16
  call void @UI_GetThemeColor3ubv(i32 noundef 24, ptr noundef nonnull %4) #15
  %29 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 39
  %30 = load i8, ptr %29, align 2, !tbaa !231
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %87, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 38
  %35 = load i16, ptr %34, align 8, !tbaa !232
  %36 = sext i16 %35 to i32
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %8) #16
  call void @UI_GetThemeColor3ubv(i32 noundef 2, ptr noundef nonnull %6) #15
  call void @UI_GetColorPtrShade3ubv(ptr noundef nonnull %4, ptr noundef nonnull %8, i32 noundef 10) #15
  %37 = load i8, ptr %4, align 1, !tbaa !148
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !148
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 2
  %43 = load i8, ptr %42, align 1, !tbaa !148
  %44 = zext i8 %43 to i32
  %45 = add nuw nsw i32 %38, 30
  %46 = add nuw nsw i32 %45, %41
  %47 = add nuw nsw i32 %46, %44
  %48 = load i8, ptr %6, align 1, !tbaa !148
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds [3 x i8], ptr %6, i64 0, i64 1
  %51 = load i8, ptr %50, align 1, !tbaa !148
  %52 = zext i8 %51 to i32
  %53 = add nuw nsw i32 %52, %49
  %54 = getelementptr inbounds [3 x i8], ptr %6, i64 0, i64 2
  %55 = load i8, ptr %54, align 1, !tbaa !148
  %56 = zext i8 %55 to i32
  %57 = add nuw nsw i32 %53, %56
  %58 = icmp ugt i32 %47, %57
  %59 = select i1 %58, i32 20, i32 -10
  call void @UI_GetColorPtrShade3ubv(ptr noundef nonnull %4, ptr noundef nonnull %7, i32 noundef %59) #15
  %60 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 2
  %61 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 2, i64 1
  store float %19, ptr %61, align 4, !tbaa !14
  store float %19, ptr %5, align 16, !tbaa !14
  %62 = fneg float %19
  %63 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 3
  %64 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 3, i64 1
  store float %62, ptr %64, align 8, !tbaa !14
  %65 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 1
  store float %62, ptr %65, align 4, !tbaa !14
  call void @glEnableClientState(i32 noundef 32884) #15
  call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %5) #15
  %66 = sub nsw i32 0, %14
  %67 = getelementptr inbounds [4 x [3 x float]], ptr %5, i64 0, i64 1, i64 1
  %68 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %69 = call i32 @llvm.abs.i32(i32 %14, i1 true)
  br label %70

70:                                               ; preds = %33, %81
  %71 = phi i32 [ %66, %33 ], [ %83, %81 ]
  %72 = phi i32 [ -1, %33 ], [ %82, %81 ]
  %73 = sitofp i32 %71 to float
  %74 = fmul float %17, %73
  %75 = srem i32 %71, %36
  %76 = icmp eq i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = icmp eq i32 %72, %77
  br i1 %78, label %81, label %79

79:                                               ; preds = %70
  %80 = select i1 %76, ptr %7, ptr %8
  call void @glColor3ubv(ptr noundef nonnull %80) #15
  br label %81

81:                                               ; preds = %79, %70
  %82 = phi i32 [ %77, %79 ], [ %72, %70 ]
  store float %74, ptr %63, align 4, !tbaa !14
  store float %74, ptr %60, align 8, !tbaa !14
  store float %74, ptr %67, align 16, !tbaa !14
  store float %74, ptr %68, align 4, !tbaa !14
  call void @glDrawArrays(i32 noundef 1, i32 noundef 0, i32 noundef 4) #15
  %83 = add nsw i32 %71, 1
  %84 = icmp eq i32 %71, %69
  br i1 %84, label %85, label %70, !llvm.loop !233

85:                                               ; preds = %81
  call void @glDisableClientState(i32 noundef 32884) #15
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #16
  %86 = load i8, ptr %29, align 2, !tbaa !231
  br label %87

87:                                               ; preds = %85, %28
  %88 = phi i8 [ %86, %85 ], [ %30, %28 ]
  %89 = and i8 %88, 14
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %108, label %91

91:                                               ; preds = %87
  %92 = fneg float %19
  br label %93

93:                                               ; preds = %91, %105
  %94 = phi i64 [ 0, %91 ], [ %106, %105 ]
  %95 = load i8, ptr %29, align 2, !tbaa !231
  %96 = zext i8 %95 to i32
  %97 = trunc i64 %94 to i32
  %98 = shl nuw nsw i32 2, %97
  %99 = and i32 %98, %96
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %93
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %10) #16
  %102 = trunc i64 %94 to i8
  %103 = or disjoint i8 %102, 88
  call void @UI_make_axis_color(ptr noundef nonnull %4, ptr noundef nonnull %10, i8 noundef zeroext %103) #15
  call void @glColor3ubv(ptr noundef nonnull %10) #15
  call void @glBegin(i32 noundef 3) #15
  call fastcc void @zero_v3(ptr noundef nonnull %9) #17
  %104 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 %94
  store float %19, ptr %104, align 4, !tbaa !14
  call void @glVertex3fv(ptr noundef nonnull %9) #15
  store float %92, ptr %104, align 4, !tbaa !14
  call void @glVertex3fv(ptr noundef nonnull %9) #15
  call void @glEnd() #15
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #16
  br label %105

105:                                              ; preds = %93, %101
  %106 = add nuw nsw i64 %94, 1
  %107 = icmp eq i64 %106, 3
  br i1 %107, label %108, label %93, !llvm.loop !234

108:                                              ; preds = %105, %87
  %109 = load i8, ptr %20, align 8, !tbaa !81
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 7
  %113 = load ptr, ptr %112, align 8, !tbaa !80
  %114 = icmp eq ptr %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %111
  call void @glDepthMask(i8 noundef zeroext 1) #15
  br label %116

116:                                              ; preds = %108, %111, %115, %3
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawgrid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca [4 x double], align 16
  %6 = alloca [3 x i8], align 1
  %7 = alloca [3 x i8], align 1
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #16
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 3
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 3, i64 3
  %14 = load float, ptr %13, align 8, !tbaa !14
  %15 = fpext float %14 to double
  %16 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 3, i64 3, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !14
  %18 = fpext float %17 to double
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 3, i64 3, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !14
  %21 = fpext float %20 to double
  %22 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %23 = load i16, ptr %22, align 8, !tbaa !49
  %24 = sitofp i16 %23 to double
  %25 = fmul double %24, 5.000000e-01
  %26 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %27 = load i16, ptr %26, align 2, !tbaa !52
  %28 = sitofp i16 %27 to double
  %29 = fmul double %28, 5.000000e-01
  %30 = fmul double %29, %18
  %31 = fdiv double %30, %21
  %32 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 31
  %33 = load float, ptr %32, align 8, !tbaa !45
  %34 = fpext float %33 to double
  %35 = getelementptr inbounds [4 x double], ptr %5, i64 0, i64 1
  store double %34, ptr %35, align 8, !tbaa !15
  store double %34, ptr %5, align 16, !tbaa !15
  %36 = getelementptr inbounds [4 x double], ptr %5, i64 0, i64 2
  %37 = getelementptr inbounds [4 x double], ptr %5, i64 0, i64 3
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %36, align 16, !tbaa !15
  call void @mul_m4_v4d(ptr noundef nonnull %12, ptr noundef nonnull %5) #15
  %38 = load double, ptr %5, align 16, !tbaa !15
  %39 = load double, ptr %37, align 8, !tbaa !15
  %40 = insertelement <2 x double> poison, double %25, i64 0
  %41 = shufflevector <2 x double> %40, <2 x double> poison, <2 x i32> zeroinitializer
  %42 = insertelement <2 x double> poison, double %15, i64 0
  %43 = insertelement <2 x double> %42, double %38, i64 1
  %44 = fmul <2 x double> %41, %43
  %45 = insertelement <2 x double> poison, double %21, i64 0
  %46 = insertelement <2 x double> %45, double %39, i64 1
  %47 = fdiv <2 x double> %44, %46
  %48 = extractelement <2 x double> %47, i64 0
  %49 = shufflevector <2 x double> %47, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %50 = fsub <2 x double> %47, %49
  %51 = extractelement <2 x double> %50, i64 0
  %52 = call double @llvm.fabs.f64(double %51)
  %53 = fcmp oeq double %51, 0.000000e+00
  br i1 %53, label %54, label %60

54:                                               ; preds = %4
  %55 = load double, ptr %35, align 8, !tbaa !15
  %56 = fmul double %29, %55
  %57 = fdiv double %56, %39
  %58 = fsub double %31, %57
  %59 = call double @llvm.fabs.f64(double %58)
  br label %60

60:                                               ; preds = %54, %4
  %61 = phi double [ %59, %54 ], [ %52, %4 ]
  call void @glDepthMask(i8 noundef zeroext 0) #15
  call void @UI_ThemeColor(i32 noundef 24) #15
  %62 = getelementptr inbounds %struct.UnitSettings, ptr %0, i64 0, i32 1
  %63 = load i8, ptr %62, align 4, !tbaa !235
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %112, label %65

65:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  %66 = zext i8 %63 to i32
  call void @bUnit_GetSystem(ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef %66, i32 noundef 1) #15
  %67 = load ptr, ptr %8, align 8, !tbaa !43
  %68 = icmp eq ptr %67, null
  br i1 %68, label %111, label %69

69:                                               ; preds = %65
  %70 = load i32, ptr %9, align 4, !tbaa !92
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %111, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 36
  br label %74

74:                                               ; preds = %72, %109
  %75 = phi i32 [ %70, %72 ], [ %76, %109 ]
  %76 = add nsw i32 %75, -1
  %77 = load ptr, ptr %8, align 8, !tbaa !43
  %78 = call double @bUnit_GetScaler(ptr noundef %77, i32 noundef %76) #15
  %79 = fmul double %61, %78
  %80 = load float, ptr %0, align 4, !tbaa !236
  %81 = fpext float %80 to double
  %82 = fdiv double %79, %81
  %83 = fcmp olt double %82, 1.200000e+01
  br i1 %83, label %109, label %84, !llvm.loop !237

84:                                               ; preds = %74
  %85 = load ptr, ptr %3, align 8, !tbaa !43
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load ptr, ptr %8, align 8, !tbaa !43
  %89 = call ptr @bUnit_GetNameDisplay(ptr noundef %88, i32 noundef %76) #15
  store ptr %89, ptr %3, align 8, !tbaa !43
  %90 = load float, ptr %32, align 8, !tbaa !45
  %91 = fpext float %90 to double
  %92 = fmul double %78, %91
  %93 = load float, ptr %0, align 4, !tbaa !236
  %94 = fpext float %93 to double
  %95 = fdiv double %92, %94
  %96 = fptrunc double %95 to float
  store float %96, ptr %73, align 8, !tbaa !180
  br label %97

97:                                               ; preds = %87, %84
  %98 = fptrunc double %82 to float
  %99 = fdiv float 1.200000e+01, %98
  %100 = fsub float 1.000000e+00, %99
  %101 = fmul float %100, %100
  %102 = fmul float %101, 2.000000e+00
  %103 = fcmp olt float %102, 0x3FD3333340000000
  br i1 %103, label %107, label %104

104:                                              ; preds = %97
  %105 = fcmp ogt float %102, 1.000000e+00
  br i1 %105, label %106, label %107

106:                                              ; preds = %104
  br label %107

107:                                              ; preds = %97, %104, %106
  %108 = phi float [ 1.000000e+00, %106 ], [ %102, %104 ], [ 0x3FD3333340000000, %97 ]
  call void @UI_ThemeColorBlend(i32 noundef 180, i32 noundef 24, float noundef %108) #15
  call fastcc void @drawgrid_draw(ptr noundef %1, double noundef %25, double noundef %29, double noundef %48, double noundef %31, double noundef %82) #17
  br label %109

109:                                              ; preds = %74, %107
  %110 = icmp eq i32 %76, 0
  br i1 %110, label %111, label %74

111:                                              ; preds = %109, %69, %65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %166

112:                                              ; preds = %60
  %113 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 38
  %114 = load i16, ptr %113, align 8, !tbaa !232
  %115 = sitofp i16 %114 to double
  %116 = sitofp i16 %114 to float
  %117 = fcmp olt double %61, 6.000000e+00
  br i1 %117, label %118, label %141

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 36
  %120 = load float, ptr %119, align 8, !tbaa !180
  %121 = fmul float %120, %116
  store float %121, ptr %119, align 8, !tbaa !180
  %122 = fmul double %61, %115
  %123 = fcmp olt double %122, 6.000000e+00
  br i1 %123, label %124, label %137

124:                                              ; preds = %118
  %125 = fmul float %121, %116
  store float %125, ptr %119, align 8, !tbaa !180
  %126 = fmul double %122, %115
  %127 = fcmp olt double %126, 6.000000e+00
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = fmul float %125, %116
  store float %129, ptr %119, align 8, !tbaa !180
  %130 = fmul double %126, %115
  %131 = fcmp olt double %130, 6.000000e+00
  br i1 %131, label %166, label %132

132:                                              ; preds = %128
  call void @UI_ThemeColor(i32 noundef 24) #15
  call fastcc void @drawgrid_draw(ptr noundef nonnull %1, double noundef %25, double noundef %29, double noundef %48, double noundef %31, double noundef %130) #17
  br label %166

133:                                              ; preds = %124
  %134 = fdiv double %126, 3.600000e+01
  %135 = fptrunc double %134 to float
  call void @UI_ThemeColorBlend(i32 noundef 180, i32 noundef 24, float noundef %135) #15
  call fastcc void @drawgrid_draw(ptr noundef nonnull %1, double noundef %25, double noundef %29, double noundef %48, double noundef %31, double noundef %126) #17
  call void @UI_ThemeColor(i32 noundef 24) #15
  %136 = fmul double %126, %115
  call fastcc void @drawgrid_draw(ptr noundef nonnull %1, double noundef %25, double noundef %29, double noundef %48, double noundef %31, double noundef %136) #17
  br label %166

137:                                              ; preds = %118
  %138 = fdiv double %122, 3.600000e+01
  %139 = fptrunc double %138 to float
  call void @UI_ThemeColorBlend(i32 noundef 180, i32 noundef 24, float noundef %139) #15
  call fastcc void @drawgrid_draw(ptr noundef nonnull %1, double noundef %25, double noundef %29, double noundef %48, double noundef %31, double noundef %122) #17
  call void @UI_ThemeColor(i32 noundef 24) #15
  %140 = fmul double %122, %115
  call fastcc void @drawgrid_draw(ptr noundef nonnull %1, double noundef %25, double noundef %29, double noundef %48, double noundef %31, double noundef %140) #17
  br label %166

141:                                              ; preds = %112
  %142 = fcmp ogt double %61, 6.000000e+01
  br i1 %142, label %143, label %162

143:                                              ; preds = %141
  %144 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 36
  %145 = load float, ptr %144, align 8, !tbaa !180
  %146 = fdiv float %145, %116
  store float %146, ptr %144, align 8, !tbaa !180
  %147 = fdiv double %61, %115
  %148 = fcmp ogt double %147, 6.000000e+01
  br i1 %148, label %149, label %158

149:                                              ; preds = %143
  %150 = fdiv float %146, %116
  store float %150, ptr %144, align 8, !tbaa !180
  %151 = fdiv double %147, %115
  %152 = fcmp ogt double %151, 6.000000e+01
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  call void @UI_ThemeColor(i32 noundef 24) #15
  call fastcc void @drawgrid_draw(ptr noundef nonnull %1, double noundef %25, double noundef %29, double noundef %48, double noundef %31, double noundef %151) #17
  br label %166

154:                                              ; preds = %149
  %155 = fdiv double %151, 3.600000e+01
  %156 = fptrunc double %155 to float
  call void @UI_ThemeColorBlend(i32 noundef 180, i32 noundef 24, float noundef %156) #15
  call fastcc void @drawgrid_draw(ptr noundef nonnull %1, double noundef %25, double noundef %29, double noundef %48, double noundef %31, double noundef %151) #17
  call void @UI_ThemeColor(i32 noundef 24) #15
  %157 = fmul double %151, %115
  call fastcc void @drawgrid_draw(ptr noundef nonnull %1, double noundef %25, double noundef %29, double noundef %48, double noundef %31, double noundef %157) #17
  br label %166

158:                                              ; preds = %143
  %159 = fdiv double %147, 3.600000e+01
  %160 = fptrunc double %159 to float
  call void @UI_ThemeColorBlend(i32 noundef 180, i32 noundef 24, float noundef %160) #15
  call fastcc void @drawgrid_draw(ptr noundef nonnull %1, double noundef %25, double noundef %29, double noundef %48, double noundef %31, double noundef %147) #17
  call void @UI_ThemeColor(i32 noundef 24) #15
  %161 = fmul double %147, %115
  call fastcc void @drawgrid_draw(ptr noundef nonnull %1, double noundef %25, double noundef %29, double noundef %48, double noundef %31, double noundef %161) #17
  br label %166

162:                                              ; preds = %141
  %163 = fdiv double %61, 3.600000e+01
  %164 = fptrunc double %163 to float
  call void @UI_ThemeColorBlend(i32 noundef 180, i32 noundef 24, float noundef %164) #15
  call fastcc void @drawgrid_draw(ptr noundef nonnull %1, double noundef %25, double noundef %29, double noundef %48, double noundef %31, double noundef %61) #17
  call void @UI_ThemeColor(i32 noundef 24) #15
  %165 = fmul double %61, %115
  call fastcc void @drawgrid_draw(ptr noundef nonnull %1, double noundef %25, double noundef %29, double noundef %48, double noundef %31, double noundef %165) #17
  br label %166

166:                                              ; preds = %133, %128, %132, %137, %158, %154, %153, %162, %111
  %167 = fadd double %29, %31
  call void @UI_GetThemeColor3ubv(i32 noundef 24, ptr noundef nonnull %6) #15
  call void @setlinestyle(i32 noundef 0) #15
  %168 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 26
  %169 = load i8, ptr %168, align 2, !tbaa !181
  %170 = add i8 %169, -3
  %171 = icmp ult i8 %170, 2
  %172 = select i1 %171, i8 89, i8 88
  call void @UI_make_axis_color(ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext %172) #15
  call void @glColor3ubv(ptr noundef nonnull %7) #15
  %173 = fptrunc double %167 to float
  %174 = load i16, ptr %22, align 8, !tbaa !49
  %175 = sitofp i16 %174 to float
  call void @fdrawline(float noundef 0.000000e+00, float noundef %173, float noundef %175, float noundef %173) #15
  %176 = load i8, ptr %168, align 2, !tbaa !181
  %177 = add i8 %176, -5
  %178 = icmp ult i8 %177, 2
  %179 = select i1 %178, i8 89, i8 90
  call void @UI_make_axis_color(ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext %179) #15
  %180 = fadd double %25, %48
  call void @glColor3ubv(ptr noundef nonnull %7) #15
  %181 = fptrunc double %180 to float
  %182 = load i16, ptr %26, align 2, !tbaa !52
  %183 = sitofp i16 %182 to float
  call void @fdrawline(float noundef %181, float noundef 0.000000e+00, float noundef %181, float noundef %183) #15
  call void @glDepthMask(i8 noundef zeroext 1) #15
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_draw_bgpic_test(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  %7 = load i16, ptr %6, align 8, !tbaa !70
  %8 = and i16 %7, 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %12, i64 0, i32 26
  %14 = load i8, ptr %13, align 2, !tbaa !181
  %15 = icmp ne i8 %14, 0
  %16 = getelementptr inbounds %struct.RegionView3D, ptr %12, i64 0, i32 25
  %17 = load i8, ptr %16, align 1, !tbaa !170
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %15, i1 %18, i1 false
  %20 = icmp eq i8 %17, 2
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  tail call fastcc void @view3d_draw_bgpic(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #17
  br label %23

23:                                               ; preds = %10, %22, %5
  ret void
}

; Function Attrs: optsize
declare void @UI_ThemeColorBlend(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_dupli_objects(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !136
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 25, i32 28
  %10 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 112
  %13 = load ptr, ptr %12, align 8, !tbaa !238
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !239
  %18 = icmp sgt i32 %17, 0
  %19 = select i1 %18, i32 %9, i32 0
  br label %20

20:                                               ; preds = %15, %4
  %21 = phi i32 [ %9, %4 ], [ %19, %15 ]
  tail call fastcc void @draw_dupli_objects_color(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i16 noundef signext 0, i32 noundef %21) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_draw_transp(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  tail call void @glDepthMask(i8 noundef zeroext 0) #15
  %4 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 48
  store i8 1, ptr %4, align 1, !tbaa !131
  %5 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 44
  %6 = load ptr, ptr %5, align 8, !tbaa !125
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %3, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %3 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !129
  %11 = getelementptr inbounds %struct.View3DAfter, ptr %9, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !102
  %13 = getelementptr inbounds %struct.View3DAfter, ptr %9, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !104
  tail call void @draw_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %12, i16 noundef signext %14) #15
  tail call void @BLI_remlink(ptr noundef nonnull %5, ptr noundef nonnull %9) #15
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %15(ptr noundef nonnull %9) #15
  %16 = icmp eq ptr %10, null
  br i1 %16, label %17, label %8, !llvm.loop !241

17:                                               ; preds = %8, %3
  store i8 0, ptr %4, align 1, !tbaa !131
  tail call void @glDepthMask(i8 noundef zeroext 1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_draw_xray(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 47
  %5 = load i8, ptr %4, align 8, !tbaa !81
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @glClear(i32 noundef 256) #15
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 49
  store i8 1, ptr %9, align 2, !tbaa !128
  %10 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 45
  %11 = load ptr, ptr %10, align 8, !tbaa !126
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %8, %13
  %14 = phi ptr [ %15, %13 ], [ %11, %8 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !129
  %16 = getelementptr inbounds %struct.View3DAfter, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !102
  %18 = getelementptr inbounds %struct.View3DAfter, ptr %14, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !104
  tail call void @draw_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %17, i16 noundef signext %19) #15
  tail call void @BLI_remlink(ptr noundef nonnull %10, ptr noundef nonnull %14) #15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %20(ptr noundef nonnull %14) #15
  %21 = icmp eq ptr %15, null
  br i1 %21, label %22, label %13, !llvm.loop !242

22:                                               ; preds = %13, %8
  store i8 0, ptr %9, align 2, !tbaa !128
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_draw_xraytransp(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 47
  %5 = load i8, ptr %4, align 8, !tbaa !81
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @glClear(i32 noundef 256) #15
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 49
  store i8 1, ptr %9, align 2, !tbaa !128
  %10 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 48
  store i8 1, ptr %10, align 1, !tbaa !131
  %11 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 46
  %12 = load ptr, ptr %11, align 8, !tbaa !127
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %8, %14
  %15 = phi ptr [ %16, %14 ], [ %12, %8 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !129
  %17 = getelementptr inbounds %struct.View3DAfter, ptr %15, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !102
  %19 = getelementptr inbounds %struct.View3DAfter, ptr %15, i64 0, i32 3
  %20 = load i16, ptr %19, align 8, !tbaa !104
  tail call void @draw_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %18, i16 noundef signext %20) #15
  tail call void @BLI_remlink(ptr noundef nonnull %11, ptr noundef nonnull %15) #15
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %21(ptr noundef nonnull %15) #15
  %22 = icmp eq ptr %16, null
  br i1 %22, label %23, label %14, !llvm.loop !243

23:                                               ; preds = %14, %8
  store i8 0, ptr %10, align 1, !tbaa !131
  store i8 0, ptr %9, align 2, !tbaa !128
  ret void
}

; Function Attrs: optsize
declare void @BIF_draw_manipulator(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_free_images_old() local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_GetThemeColorShade3ubv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4ubv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnableClientState(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertexPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDrawElements(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisableClientState(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_GetColorPtrShade3ubv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDrawArrays(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_make_axis_color(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #13 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !14
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare void @glVertex3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_v4d(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawgrid_draw(ptr nocapture noundef readonly %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) unnamed_addr #0 {
  %7 = alloca [2 x [2 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  %8 = fadd double %1, %3
  %9 = fadd double %2, %4
  %10 = getelementptr inbounds [2 x double], ptr %7, i64 0, i64 1
  store double 0.000000e+00, ptr %10, align 8, !tbaa !15
  %11 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %12 = load i16, ptr %11, align 2, !tbaa !52
  %13 = sitofp i16 %12 to double
  %14 = getelementptr inbounds [2 x [2 x double]], ptr %7, i64 0, i64 1
  %15 = getelementptr inbounds [2 x [2 x double]], ptr %7, i64 0, i64 1, i64 1
  store double %13, ptr %15, align 8, !tbaa !15
  %16 = fdiv double %8, %5
  %17 = tail call double @llvm.floor.f64(double %16)
  %18 = fneg double %5
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %17, double %8)
  store double %19, ptr %14, align 16, !tbaa !15
  store double %19, ptr %7, align 16, !tbaa !15
  tail call void @glEnableClientState(i32 noundef 32884) #15
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5130, i32 noundef 0, ptr noundef nonnull %7) #15
  %20 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %21 = load double, ptr %7, align 16, !tbaa !15
  %22 = load i16, ptr %20, align 8, !tbaa !49
  %23 = sitofp i16 %22 to double
  %24 = fcmp olt double %21, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %6, %25
  call void @glDrawArrays(i32 noundef 1, i32 noundef 0, i32 noundef 2) #15
  %26 = load double, ptr %7, align 16, !tbaa !15
  %27 = fadd double %26, %5
  store double %27, ptr %14, align 16, !tbaa !15
  store double %27, ptr %7, align 16, !tbaa !15
  %28 = load i16, ptr %20, align 8, !tbaa !49
  %29 = sitofp i16 %28 to double
  %30 = fcmp olt double %27, %29
  br i1 %30, label %25, label %31, !llvm.loop !244

31:                                               ; preds = %25, %6
  %32 = phi double [ %23, %6 ], [ %29, %25 ]
  store double 0.000000e+00, ptr %7, align 16, !tbaa !15
  store double %32, ptr %14, align 16, !tbaa !15
  %33 = fdiv double %9, %5
  %34 = call double @llvm.floor.f64(double %33)
  %35 = call double @llvm.fmuladd.f64(double %18, double %34, double %9)
  store double %35, ptr %15, align 8, !tbaa !15
  store double %35, ptr %10, align 8, !tbaa !15
  %36 = load i16, ptr %11, align 2, !tbaa !52
  %37 = sitofp i16 %36 to double
  %38 = fcmp olt double %35, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %31, %39
  call void @glDrawArrays(i32 noundef 1, i32 noundef 0, i32 noundef 2) #15
  %40 = load double, ptr %10, align 8, !tbaa !15
  %41 = fadd double %40, %5
  store double %41, ptr %15, align 8, !tbaa !15
  store double %41, ptr %10, align 8, !tbaa !15
  %42 = load i16, ptr %11, align 2, !tbaa !52
  %43 = sitofp i16 %42 to double
  %44 = fcmp olt double %41, %43
  br i1 %44, label %39, label %45, !llvm.loop !245

45:                                               ; preds = %39, %31
  call void @glDisableClientState(i32 noundef 32884) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  ret void
}

; Function Attrs: optsize
declare void @setlinestyle(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fdrawline(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_draw_bgpic(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.rctf, align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [2 x float], align 8
  %10 = alloca [2 x float], align 8
  %11 = alloca [3 x float], align 4
  %12 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  %14 = icmp eq i8 %3, 0
  %15 = select i1 %14, i32 0, i32 16
  %16 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 18
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  %18 = icmp eq ptr %17, null
  br i1 %18, label %376, label %19

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 26
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 25
  %22 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 2
  %23 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %24 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %25 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %26 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 3
  %27 = icmp eq i8 %4, 0
  %28 = getelementptr inbounds %struct.rctf, ptr %7, i64 0, i32 2
  %29 = getelementptr inbounds %struct.rctf, ptr %7, i64 0, i32 1
  %30 = getelementptr inbounds %struct.rctf, ptr %7, i64 0, i32 3
  %31 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %32 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %33 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %34 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %35 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %36 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %37 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 47
  br label %38

38:                                               ; preds = %19, %372
  %39 = phi <2 x float> [ undef, %19 ], [ %373, %372 ]
  %40 = phi ptr [ %17, %19 ], [ %374, %372 ]
  %41 = getelementptr inbounds %struct.BGpic, ptr %40, i64 0, i32 3
  store ptr %0, ptr %41, align 8, !tbaa !246
  %42 = getelementptr inbounds %struct.BGpic, ptr %40, i64 0, i32 11
  %43 = load i16, ptr %42, align 2, !tbaa !250
  %44 = and i16 %43, 16
  %45 = zext nneg i16 %44 to i32
  %46 = icmp eq i32 %15, %45
  br i1 %46, label %47, label %372

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.BGpic, ptr %40, i64 0, i32 10
  %49 = load i16, ptr %48, align 8, !tbaa !251
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %47
  %52 = sext i16 %49 to i32
  %53 = load i8, ptr %20, align 2, !tbaa !181
  %54 = zext nneg i8 %53 to i32
  %55 = shl nuw i32 1, %54
  %56 = and i32 %55, %52
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load i8, ptr %21, align 1, !tbaa !170
  %60 = icmp eq i8 %59, 2
  %61 = icmp eq i16 %49, 256
  %62 = and i1 %61, %60
  br i1 %62, label %63, label %372

63:                                               ; preds = %58, %51, %47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %64 = zext i16 %43 to i32
  %65 = and i32 %64, 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %370

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.BGpic, ptr %40, i64 0, i32 12
  %69 = load i16, ptr %68, align 4, !tbaa !252
  switch i16 %69, label %370 [
    i16 0, label %70
    i16 1, label %92
  ]

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.BGpic, ptr %40, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !253
  %73 = icmp eq ptr %72, null
  br i1 %73, label %370, label %74

74:                                               ; preds = %70
  %75 = load i32, ptr %23, align 8, !tbaa !254
  call void @BKE_image_user_frame_calc(ptr noundef nonnull %41, i32 noundef %75, i32 noundef 0) #15
  %76 = getelementptr inbounds %struct.Image, ptr %72, i64 0, i32 11
  %77 = load i16, ptr %76, align 8, !tbaa !255
  %78 = icmp eq i16 %77, 2
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.BGpic, ptr %40, i64 0, i32 3, i32 12
  %81 = load i16, ptr %80, align 2, !tbaa !257
  %82 = and i16 %81, 1024
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %79, %74
  %85 = call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %72, ptr noundef nonnull %41, ptr noundef nonnull %6) #15
  br label %86

86:                                               ; preds = %79, %84
  %87 = phi ptr [ %85, %84 ], [ null, %79 ]
  %88 = getelementptr inbounds %struct.Image, ptr %72, i64 0, i32 34
  %89 = load float, ptr %88, align 8, !tbaa !258
  %90 = insertelement <2 x float> %39, float %89, i64 0
  %91 = getelementptr inbounds %struct.Image, ptr %72, i64 0, i32 35
  br label %114

92:                                               ; preds = %67
  %93 = and i32 %64, 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr %22, align 8, !tbaa !259
  %97 = icmp eq ptr %96, null
  br i1 %97, label %370, label %98

98:                                               ; preds = %95
  %99 = call ptr @BKE_object_movieclip_get(ptr noundef nonnull %0, ptr noundef nonnull %96, i8 noundef zeroext 1) #15
  br label %103

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.BGpic, ptr %40, i64 0, i32 4
  %102 = load ptr, ptr %101, align 8, !tbaa !260
  br label %103

103:                                              ; preds = %98, %100
  %104 = phi ptr [ %99, %98 ], [ %102, %100 ]
  %105 = icmp eq ptr %104, null
  br i1 %105, label %370, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.BGpic, ptr %40, i64 0, i32 5
  %108 = load i32, ptr %23, align 8, !tbaa !254
  call void @BKE_movieclip_user_set_frame(ptr noundef nonnull %107, i32 noundef %108) #15
  %109 = call ptr @BKE_movieclip_get_ibuf(ptr noundef nonnull %104, ptr noundef nonnull %107) #15
  %110 = getelementptr inbounds %struct.MovieClip, ptr %104, i64 0, i32 6
  %111 = load float, ptr %110, align 8, !tbaa !261
  %112 = insertelement <2 x float> %39, float %111, i64 0
  %113 = getelementptr inbounds %struct.MovieClip, ptr %104, i64 0, i32 7
  br label %114

114:                                              ; preds = %106, %86
  %115 = phi <2 x float> [ %112, %106 ], [ %90, %86 ]
  %116 = phi ptr [ %113, %106 ], [ %91, %86 ]
  %117 = phi ptr [ null, %106 ], [ %72, %86 ]
  %118 = phi ptr [ null, %106 ], [ %87, %86 ]
  %119 = phi ptr [ %109, %106 ], [ null, %86 ]
  %120 = phi ptr [ %109, %106 ], [ %87, %86 ]
  %121 = load float, ptr %116, align 4, !tbaa !14
  %122 = insertelement <2 x float> %115, float %121, i64 1
  %123 = icmp eq ptr %120, null
  br i1 %123, label %370, label %124

124:                                              ; preds = %114
  %125 = getelementptr inbounds %struct.ImBuf, ptr %120, i64 0, i32 8
  %126 = load ptr, ptr %125, align 8, !tbaa !93
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %136

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.ImBuf, ptr %120, i64 0, i32 9
  %130 = load ptr, ptr %129, align 8, !tbaa !187
  %131 = icmp eq ptr %130, null
  br i1 %131, label %140, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.ImBuf, ptr %120, i64 0, i32 5
  %134 = load i32, ptr %133, align 4, !tbaa !270
  %135 = icmp eq i32 %134, 4
  br i1 %135, label %145, label %140

136:                                              ; preds = %124
  %137 = getelementptr inbounds %struct.ImBuf, ptr %120, i64 0, i32 5
  %138 = load i32, ptr %137, align 4, !tbaa !270
  %139 = icmp eq i32 %138, 4
  br i1 %139, label %146, label %140

140:                                              ; preds = %136, %132, %128
  %141 = icmp eq ptr %119, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %140
  call void @IMB_freeImBuf(ptr noundef nonnull %119) #15
  br label %143

143:                                              ; preds = %142, %140
  %144 = icmp eq ptr %118, null
  br i1 %144, label %370, label %368

145:                                              ; preds = %132
  call void @IMB_rect_from_float(ptr noundef nonnull %120) #15
  br label %146

146:                                              ; preds = %136, %145
  %147 = load i8, ptr %21, align 1, !tbaa !170
  %148 = icmp eq i8 %147, 2
  br i1 %148, label %149, label %234

149:                                              ; preds = %146
  br i1 %27, label %159, label %150

150:                                              ; preds = %149
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  call void @ED_view3d_calc_camera_border(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %13, ptr noundef nonnull %7, i8 noundef zeroext 0) #17
  %151 = load <4 x float>, ptr %7, align 16
  %152 = shufflevector <4 x float> %151, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %153 = load float, ptr %28, align 8, !tbaa !59
  %154 = load float, ptr %29, align 4, !tbaa !61
  %155 = load float, ptr %30, align 4, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  %156 = insertelement <2 x float> poison, float %154, i64 0
  %157 = insertelement <2 x float> %156, float %155, i64 1
  %158 = insertelement <2 x float> %152, float %153, i64 1
  br label %170

159:                                              ; preds = %149
  %160 = load i32, ptr %31, align 8, !tbaa !66
  %161 = load i32, ptr %32, align 8, !tbaa !67
  %162 = insertelement <2 x i32> poison, i32 %160, i64 0
  %163 = insertelement <2 x i32> %162, i32 %161, i64 1
  %164 = sitofp <2 x i32> %163 to <2 x float>
  %165 = load i32, ptr %33, align 4, !tbaa !173
  %166 = load i32, ptr %34, align 4, !tbaa !174
  %167 = insertelement <2 x i32> poison, i32 %165, i64 0
  %168 = insertelement <2 x i32> %167, i32 %166, i64 1
  %169 = sitofp <2 x i32> %168 to <2 x float>
  br label %170

170:                                              ; preds = %159, %150
  %171 = phi <2 x float> [ %157, %150 ], [ %169, %159 ]
  %172 = phi <2 x float> [ %158, %150 ], [ %164, %159 ]
  %173 = fsub <2 x float> %171, %172
  %174 = extractelement <2 x float> %173, i64 0
  %175 = fsub <2 x float> %171, %172
  %176 = extractelement <2 x float> %175, i64 1
  %177 = call fastcc float @max_ff(float noundef %174, float noundef %176) #17
  %178 = getelementptr inbounds %struct.BGpic, ptr %40, i64 0, i32 6
  %179 = load <2 x float>, ptr %178, align 8, !tbaa !14
  %180 = insertelement <2 x float> poison, float %177, i64 0
  %181 = shufflevector <2 x float> %180, <2 x float> poison, <2 x i32> zeroinitializer
  %182 = fmul <2 x float> %181, %179
  %183 = fadd <2 x float> %172, %182
  %184 = fadd <2 x float> %171, %182
  %185 = load i16, ptr %42, align 2, !tbaa !250
  %186 = zext i16 %185 to i32
  %187 = and i32 %186, 32
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %268, label %189

189:                                              ; preds = %170
  %190 = getelementptr inbounds %struct.ImBuf, ptr %120, i64 0, i32 2
  %191 = load <2 x i32>, ptr %190, align 8, !tbaa !92
  %192 = sitofp <2 x i32> %191 to <2 x float>
  %193 = fmul <2 x float> %122, %192
  %194 = fsub <2 x float> %183, %184
  %195 = extractelement <2 x float> %193, i64 0
  %196 = extractelement <2 x float> %193, i64 1
  %197 = fdiv float %195, %196
  %198 = extractelement <2 x float> %194, i64 0
  %199 = extractelement <2 x float> %194, i64 1
  %200 = fdiv float %198, %199
  %201 = fsub float %197, %200
  %202 = call float @llvm.fabs.f32(float %201)
  %203 = fcmp ult float %202, 0x3E80000000000000
  br i1 %203, label %268, label %204

204:                                              ; preds = %189
  %205 = fcmp ogt float %197, %200
  %206 = and i32 %186, 64
  %207 = icmp eq i32 %206, 0
  %208 = xor i1 %207, %205
  br i1 %208, label %209, label %222

209:                                              ; preds = %204
  %210 = fdiv float %197, %200
  %211 = extractelement <2 x float> %184, i64 0
  %212 = extractelement <2 x float> %183, i64 0
  %213 = fadd <2 x float> %183, %184
  %214 = extractelement <2 x float> %213, i64 0
  %215 = fmul float %214, 5.000000e-01
  %216 = fsub float %212, %215
  %217 = call float @llvm.fmuladd.f32(float %216, float %210, float %215)
  %218 = fsub float %211, %215
  %219 = call float @llvm.fmuladd.f32(float %218, float %210, float %215)
  %220 = insertelement <2 x float> %184, float %219, i64 0
  %221 = insertelement <2 x float> %183, float %217, i64 0
  br label %268

222:                                              ; preds = %204
  %223 = fdiv float %200, %197
  %224 = extractelement <2 x float> %184, i64 1
  %225 = extractelement <2 x float> %183, i64 1
  %226 = fadd float %225, %224
  %227 = fmul float %226, 5.000000e-01
  %228 = fsub float %225, %227
  %229 = call float @llvm.fmuladd.f32(float %228, float %223, float %227)
  %230 = fsub float %224, %227
  %231 = call float @llvm.fmuladd.f32(float %230, float %223, float %227)
  %232 = insertelement <2 x float> %184, float %231, i64 1
  %233 = insertelement <2 x float> %183, float %229, i64 1
  br label %268

234:                                              ; preds = %146
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  store i64 1065353216, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, i8 0, i64 12, i1 false)
  %235 = call float @ED_view3d_calc_zfac(ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef null) #15
  call void @ED_view3d_win_to_delta(ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %8, float noundef %235) #15
  %236 = load float, ptr %8, align 4, !tbaa !14
  %237 = call float @llvm.fabs.f32(float %236)
  %238 = load float, ptr %24, align 4, !tbaa !14
  %239 = call float @llvm.fabs.f32(float %238)
  %240 = load float, ptr %25, align 4, !tbaa !14
  %241 = call float @llvm.fabs.f32(float %240)
  %242 = call fastcc float @max_ff(float noundef %239, float noundef %241) #17
  %243 = call fastcc float @max_ff(float noundef %237, float noundef %242) #17
  %244 = getelementptr inbounds %struct.ImBuf, ptr %120, i64 0, i32 3
  %245 = load i32, ptr %244, align 4, !tbaa !271
  %246 = sitofp i32 %245 to float
  %247 = getelementptr inbounds %struct.ImBuf, ptr %120, i64 0, i32 2
  %248 = load i32, ptr %247, align 8, !tbaa !272
  %249 = sitofp i32 %248 to float
  %250 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %246, i64 1
  %251 = insertelement <2 x float> poison, float %243, i64 0
  %252 = insertelement <2 x float> %251, float %249, i64 1
  %253 = fdiv <2 x float> %250, %252
  call fastcc void @zero_v3(ptr noundef nonnull %8) #17
  call void @ED_view3d_project_float_v2_m4(ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %26) #15
  %254 = getelementptr inbounds %struct.BGpic, ptr %40, i64 0, i32 6
  %255 = getelementptr inbounds %struct.BGpic, ptr %40, i64 0, i32 8
  %256 = load float, ptr %255, align 8, !tbaa !273
  %257 = shufflevector <2 x float> %253, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %258 = fmul <2 x float> %253, %257
  %259 = load <2 x float>, ptr %9, align 8, !tbaa !14
  %260 = load <2 x float>, ptr %254, align 8, !tbaa !14
  %261 = insertelement <2 x float> poison, float %256, i64 0
  %262 = shufflevector <2 x float> %261, <2 x float> poison, <2 x i32> zeroinitializer
  %263 = fsub <2 x float> %260, %262
  %264 = shufflevector <2 x float> %253, <2 x float> %258, <2 x i32> <i32 0, i32 2>
  %265 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %264, <2 x float> %263, <2 x float> %259)
  %266 = fadd <2 x float> %260, %262
  %267 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %264, <2 x float> %266, <2 x float> %259)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  br label %268

268:                                              ; preds = %189, %222, %209, %170, %234
  %269 = phi <2 x float> [ %184, %170 ], [ %267, %234 ], [ %220, %209 ], [ %232, %222 ], [ %184, %189 ]
  %270 = phi <2 x float> [ %183, %170 ], [ %265, %234 ], [ %221, %209 ], [ %233, %222 ], [ %183, %189 ]
  %271 = extractelement <2 x float> %269, i64 0
  %272 = fcmp olt float %271, 0.000000e+00
  %273 = extractelement <2 x float> %269, i64 1
  %274 = fcmp olt float %273, 0.000000e+00
  %275 = select i1 %272, i1 true, i1 %274
  br i1 %275, label %286, label %276

276:                                              ; preds = %268
  %277 = load i16, ptr %35, align 8, !tbaa !49
  %278 = sitofp i16 %277 to float
  %279 = extractelement <2 x float> %270, i64 0
  %280 = fcmp ogt float %279, %278
  br i1 %280, label %286, label %281

281:                                              ; preds = %276
  %282 = load i16, ptr %36, align 2, !tbaa !52
  %283 = sitofp i16 %282 to float
  %284 = extractelement <2 x float> %270, i64 1
  %285 = fcmp ogt float %284, %283
  br i1 %285, label %286, label %291

286:                                              ; preds = %281, %276, %268
  %287 = icmp eq ptr %119, null
  br i1 %287, label %289, label %288

288:                                              ; preds = %286
  call void @IMB_freeImBuf(ptr noundef nonnull %119) #15
  br label %289

289:                                              ; preds = %288, %286
  %290 = icmp eq ptr %118, null
  br i1 %290, label %370, label %368

291:                                              ; preds = %281
  %292 = fsub <2 x float> %269, %270
  %293 = getelementptr inbounds %struct.ImBuf, ptr %120, i64 0, i32 2
  %294 = load <2 x i32>, ptr %293, align 8, !tbaa !92
  %295 = sitofp <2 x i32> %294 to <2 x float>
  %296 = fdiv <2 x float> %292, %295
  %297 = extractelement <2 x float> %296, i64 0
  %298 = fcmp olt float %297, 1.000000e+00
  %299 = extractelement <2 x float> %296, i64 1
  %300 = fcmp olt float %299, 1.000000e+00
  %301 = select i1 %298, i1 true, i1 %300
  br i1 %301, label %302, label %342

302:                                              ; preds = %291
  %303 = call fastcc float @min_ff(float noundef %297, float noundef %299) #17
  %304 = getelementptr inbounds %struct.ImBuf, ptr %120, i64 0, i32 23
  %305 = load i32, ptr %304, align 4, !tbaa !274
  %306 = and i32 %305, 4
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %311, label %308

308:                                              ; preds = %302
  call void @IMB_remakemipmap(ptr noundef nonnull %120, i32 noundef 0) #15
  %309 = load i32, ptr %304, align 4, !tbaa !274
  %310 = and i32 %309, -5
  store i32 %310, ptr %304, align 4, !tbaa !274
  br label %316

311:                                              ; preds = %302
  %312 = getelementptr inbounds %struct.ImBuf, ptr %120, i64 0, i32 19
  %313 = load ptr, ptr %312, align 8, !tbaa !43
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %316

315:                                              ; preds = %311
  call void @IMB_makemipmap(ptr noundef nonnull %120, i32 noundef 0) #15
  br label %316

316:                                              ; preds = %311, %315, %308
  %317 = fcmp olt float %303, 1.000000e+00
  br i1 %317, label %318, label %342

318:                                              ; preds = %316, %325
  %319 = phi i64 [ %328, %325 ], [ 0, %316 ]
  %320 = phi float [ %326, %325 ], [ %303, %316 ]
  %321 = phi <2 x float> [ %327, %325 ], [ %296, %316 ]
  %322 = getelementptr inbounds %struct.ImBuf, ptr %120, i64 0, i32 19, i64 %319
  %323 = load ptr, ptr %322, align 8, !tbaa !43
  %324 = icmp eq ptr %323, null
  br i1 %324, label %332, label %325

325:                                              ; preds = %318
  %326 = fmul float %320, 2.000000e+00
  %327 = fmul <2 x float> %321, <float 2.000000e+00, float 2.000000e+00>
  %328 = add nuw nsw i64 %319, 1
  %329 = fcmp olt float %326, 1.000000e+00
  %330 = icmp ult i64 %319, 7
  %331 = and i1 %329, %330
  br i1 %331, label %318, label %332, !llvm.loop !275

332:                                              ; preds = %318, %325
  %333 = phi i64 [ %319, %318 ], [ %328, %325 ]
  %334 = phi <2 x float> [ %321, %318 ], [ %327, %325 ]
  %335 = and i64 %333, 4294967295
  %336 = icmp eq i64 %335, 0
  br i1 %336, label %342, label %337

337:                                              ; preds = %332
  %338 = add i64 %333, 4294967295
  %339 = and i64 %338, 4294967295
  %340 = getelementptr inbounds %struct.ImBuf, ptr %120, i64 0, i32 19, i64 %339
  %341 = load ptr, ptr %340, align 8, !tbaa !43
  br label %342

342:                                              ; preds = %316, %332, %337, %291
  %343 = phi ptr [ %120, %291 ], [ %341, %337 ], [ %120, %332 ], [ %120, %316 ]
  %344 = phi <2 x float> [ %296, %291 ], [ %334, %337 ], [ %334, %332 ], [ %296, %316 ]
  %345 = load i8, ptr %37, align 8, !tbaa !81
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %348, label %347

347:                                              ; preds = %342
  call void @glDisable(i32 noundef 2929) #15
  br label %348

348:                                              ; preds = %347, %342
  call void @glDepthMask(i8 noundef zeroext 0) #15
  call void @glEnable(i32 noundef 3042) #15
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #15
  call void @glMatrixMode(i32 noundef 5889) #15
  call void @glPushMatrix() #15
  call void @glMatrixMode(i32 noundef 5888) #15
  call void @glPushMatrix() #15
  call void @ED_region_pixelspace(ptr noundef %1) #15
  %349 = extractelement <2 x float> %344, i64 0
  %350 = extractelement <2 x float> %344, i64 1
  call void @glPixelZoom(float noundef %349, float noundef %350) #15
  %351 = getelementptr inbounds %struct.BGpic, ptr %40, i64 0, i32 9
  %352 = load float, ptr %351, align 4, !tbaa !276
  %353 = fsub float 1.000000e+00, %352
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef %353) #15
  %354 = getelementptr inbounds %struct.ImBuf, ptr %343, i64 0, i32 2
  %355 = load i32, ptr %354, align 8, !tbaa !272
  %356 = getelementptr inbounds %struct.ImBuf, ptr %343, i64 0, i32 3
  %357 = load i32, ptr %356, align 4, !tbaa !271
  %358 = getelementptr inbounds %struct.ImBuf, ptr %343, i64 0, i32 8
  %359 = load ptr, ptr %358, align 8, !tbaa !93
  call void @glaDrawPixelsTex(float noundef %279, float noundef %284, i32 noundef %355, i32 noundef %357, i32 noundef 6408, i32 noundef 5121, i32 noundef 9729, ptr noundef %359) #15
  call void @glPixelZoom(float noundef 1.000000e+00, float noundef 1.000000e+00) #15
  call void @glPixelTransferf(i32 noundef 3356, float noundef 1.000000e+00) #15
  call void @glMatrixMode(i32 noundef 5889) #15
  call void @glPopMatrix() #15
  call void @glMatrixMode(i32 noundef 5888) #15
  call void @glPopMatrix() #15
  call void @glDisable(i32 noundef 3042) #15
  call void @glDepthMask(i8 noundef zeroext 1) #15
  %360 = load i8, ptr %37, align 8, !tbaa !81
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %363, label %362

362:                                              ; preds = %348
  call void @glEnable(i32 noundef 2929) #15
  br label %363

363:                                              ; preds = %362, %348
  %364 = icmp eq ptr %119, null
  br i1 %364, label %366, label %365

365:                                              ; preds = %363
  call void @IMB_freeImBuf(ptr noundef nonnull %119) #15
  br label %366

366:                                              ; preds = %365, %363
  %367 = icmp eq ptr %118, null
  br i1 %367, label %370, label %368

368:                                              ; preds = %366, %289, %143
  %369 = load ptr, ptr %6, align 8, !tbaa !43
  call void @BKE_image_release_ibuf(ptr noundef %117, ptr noundef nonnull %118, ptr noundef %369) #15
  br label %370

370:                                              ; preds = %368, %67, %95, %366, %289, %143, %114, %103, %70, %63
  %371 = phi <2 x float> [ %39, %67 ], [ %39, %103 ], [ %122, %114 ], [ %122, %143 ], [ %122, %368 ], [ %122, %289 ], [ %122, %366 ], [ %39, %95 ], [ %39, %70 ], [ %39, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %372

372:                                              ; preds = %370, %58, %38
  %373 = phi <2 x float> [ %371, %370 ], [ %39, %58 ], [ %39, %38 ]
  %374 = load ptr, ptr %40, align 8, !tbaa !43
  %375 = icmp eq ptr %374, null
  br i1 %375, label %376, label %38, !llvm.loop !277

376:                                              ; preds = %372, %5
  ret void
}

; Function Attrs: optsize
declare void @BKE_image_user_frame_calc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_object_movieclip_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_movieclip_user_set_frame(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_movieclip_get_ibuf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #8 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: optsize
declare float @ED_view3d_calc_zfac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_win_to_delta(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_project_float_v2_m4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_remakemipmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_makemipmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPixelZoom(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glaDrawPixelsTex(float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPixelTransferf(i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @linearrgb_to_srgb(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RE_engines_find(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GPU_default_lights() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_main_area_clear(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [16 x [16 x [4 x i8]]], align 16
  %7 = alloca [2 x float], align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !175
  %14 = icmp eq ptr %13, null
  br i1 %14, label %138, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %17 = load i16, ptr %16, align 2, !tbaa !118
  %18 = and i16 %17, 4
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %138, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.World, ptr %13, i64 0, i32 22
  %22 = load i16, ptr %21, align 8, !tbaa !278
  %23 = and i16 %22, 1
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %129, label %25

25:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #16
  %26 = getelementptr inbounds %struct.World, ptr %13, i64 0, i32 6
  %27 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 44
  %28 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  call void @IMB_colormanagement_pixel_to_display_space_v3(ptr noundef nonnull %4, ptr noundef nonnull %26, ptr noundef nonnull %27, ptr noundef nonnull %28) #15
  %29 = load ptr, ptr %12, align 8, !tbaa !175
  %30 = getelementptr inbounds %struct.World, ptr %29, i64 0, i32 9
  call void @IMB_colormanagement_pixel_to_display_space_v3(ptr noundef nonnull %5, ptr noundef nonnull %30, ptr noundef nonnull %27, ptr noundef nonnull %28) #15
  call void @glMatrixMode(i32 noundef 5889) #15
  call void @glPushMatrix() #15
  call void @glLoadIdentity() #15
  call void @glMatrixMode(i32 noundef 5888) #15
  call void @glPushMatrix() #15
  call void @glLoadIdentity() #15
  call void @glShadeModel(i32 noundef 7425) #15
  %31 = load i1, ptr @view3d_main_area_clear.buf_calculated, align 1
  br i1 %31, label %79, label %32

32:                                               ; preds = %25, %54
  %33 = phi i64 [ %55, %54 ], [ 0, %25 ]
  %34 = trunc i64 %33 to i32
  %35 = sitofp i32 %34 to float
  %36 = fdiv float %35, 1.500000e+01
  %37 = fadd float %36, -5.000000e-01
  %38 = fmul float %37, 2.000000e+00
  %39 = insertelement <4 x float> poison, float %38, i64 0
  %40 = shufflevector <4 x float> %39, <4 x float> poison, <4 x i32> zeroinitializer
  br label %41

41:                                               ; preds = %41, %32
  %42 = phi i64 [ 0, %32 ], [ %51, %41 ]
  %43 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %32 ], [ %52, %41 ]
  %44 = sitofp <4 x i32> %43 to <4 x float>
  %45 = fdiv <4 x float> %44, <float 1.500000e+01, float 1.500000e+01, float 1.500000e+01, float 1.500000e+01>
  %46 = fadd <4 x float> %45, <float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -5.000000e-01>
  %47 = fmul <4 x float> %46, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %48 = getelementptr inbounds [16 x [16 x [3 x float]]], ptr @view3d_main_area_clear.grid_pos, i64 0, i64 %33, i64 %42
  %49 = shufflevector <4 x float> %40, <4 x float> %47, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %50 = shufflevector <8 x float> %49, <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison, float poison, float poison, float poison>, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %50, ptr %48, align 16, !tbaa !14
  %51 = add nuw i64 %42, 4
  %52 = add <4 x i32> %43, <i32 4, i32 4, i32 4, i32 4>
  %53 = icmp eq i64 %51, 16
  br i1 %53, label %54, label %41, !llvm.loop !280

54:                                               ; preds = %41
  %55 = add nuw nsw i64 %33, 1
  %56 = icmp eq i64 %55, 16
  br i1 %56, label %57, label %32, !llvm.loop !283

57:                                               ; preds = %54, %75
  %58 = phi i64 [ %76, %75 ], [ 0, %54 ]
  %59 = shl nuw nsw i64 %58, 4
  %60 = add nuw nsw i64 %59, 16
  br label %61

61:                                               ; preds = %57, %61
  %62 = phi i64 [ 0, %57 ], [ %73, %61 ]
  %63 = or disjoint i64 %62, %59
  %64 = trunc i64 %63 to i16
  %65 = getelementptr inbounds [15 x [15 x [4 x i16]]], ptr @view3d_main_area_clear.indices, i64 0, i64 %58, i64 %62
  store i16 %64, ptr %65, align 8, !tbaa !60
  %66 = add nuw nsw i16 %64, 1
  %67 = getelementptr inbounds [15 x [15 x [4 x i16]]], ptr @view3d_main_area_clear.indices, i64 0, i64 %58, i64 %62, i64 1
  store i16 %66, ptr %67, align 2, !tbaa !60
  %68 = add nuw nsw i64 %62, %60
  %69 = trunc i64 %68 to i16
  %70 = add nuw nsw i16 %69, 1
  %71 = getelementptr inbounds [15 x [15 x [4 x i16]]], ptr @view3d_main_area_clear.indices, i64 0, i64 %58, i64 %62, i64 2
  store i16 %70, ptr %71, align 4, !tbaa !60
  %72 = getelementptr inbounds [15 x [15 x [4 x i16]]], ptr @view3d_main_area_clear.indices, i64 0, i64 %58, i64 %62, i64 3
  store i16 %69, ptr %72, align 2, !tbaa !60
  %73 = add nuw nsw i64 %62, 1
  %74 = icmp eq i64 %73, 15
  br i1 %74, label %75, label %61, !llvm.loop !284

75:                                               ; preds = %61
  %76 = add nuw nsw i64 %58, 1
  %77 = icmp eq i64 %76, 15
  br i1 %77, label %78, label %57, !llvm.loop !285

78:                                               ; preds = %75
  store i1 true, ptr @view3d_main_area_clear.buf_calculated, align 1
  br label %79

79:                                               ; preds = %78, %25
  %80 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 5
  br label %81

81:                                               ; preds = %79, %125
  %82 = phi i64 [ 0, %79 ], [ %126, %125 ]
  %83 = trunc i64 %82 to i32
  %84 = sitofp i32 %83 to float
  %85 = fdiv float %84, 1.500000e+01
  %86 = insertelement <2 x float> poison, float %85, i64 0
  br label %87

87:                                               ; preds = %81, %120
  %88 = phi i64 [ 0, %81 ], [ %123, %120 ]
  %89 = trunc i64 %88 to i32
  %90 = sitofp i32 %89 to float
  %91 = fdiv float %90, 1.500000e+01
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %92 = load <2 x i16>, ptr %80, align 8, !tbaa !60
  %93 = sitofp <2 x i16> %92 to <2 x float>
  %94 = insertelement <2 x float> %86, float %91, i64 1
  %95 = fmul <2 x float> %94, %93
  store <2 x float> %95, ptr %7, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) @__const.draw_rotation_guide.up, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #16
  %96 = getelementptr inbounds [16 x [16 x [4 x i8]]], ptr %6, i64 0, i64 %82, i64 %88
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #16
  call void @ED_view3d_win_to_vector(ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %9) #15
  %97 = load ptr, ptr %12, align 8, !tbaa !175
  %98 = getelementptr inbounds %struct.World, ptr %97, i64 0, i32 22
  %99 = load i16, ptr %98, align 8, !tbaa !278
  %100 = zext i16 %99 to i32
  %101 = and i32 %100, 4
  %102 = icmp eq i32 %101, 0
  %103 = and i32 %100, 2
  %104 = icmp eq i32 %103, 0
  br i1 %102, label %111, label %105

105:                                              ; preds = %87
  %106 = fmul float %90, 6.250000e-02
  br i1 %104, label %120, label %107

107:                                              ; preds = %105
  %108 = fadd float %106, -5.000000e-01
  %109 = call float @llvm.fabs.f32(float %108)
  %110 = fmul float %109, 2.000000e+00
  br label %120

111:                                              ; preds = %87
  %112 = call float @angle_normalized_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %9) #15
  %113 = fdiv float %112, 0x400921FB60000000
  br i1 %104, label %118, label %114

114:                                              ; preds = %111
  %115 = fadd float %113, -5.000000e-01
  %116 = call float @llvm.fabs.f32(float %115)
  %117 = fmul float %116, 2.000000e+00
  br label %120

118:                                              ; preds = %111
  %119 = fsub float 1.000000e+00, %113
  br label %120

120:                                              ; preds = %105, %114, %118, %107
  %121 = phi float [ %110, %107 ], [ %117, %114 ], [ %119, %118 ], [ %106, %105 ]
  call void @interp_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %4, ptr noundef nonnull %5, float noundef %121) #15
  call void @rgb_float_to_uchar(ptr noundef nonnull %96, ptr noundef nonnull %10) #15
  %122 = getelementptr inbounds i8, ptr %96, i64 3
  store i8 0, ptr %122, align 1, !tbaa !148
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  %123 = add nuw nsw i64 %88, 1
  %124 = icmp eq i64 %123, 16
  br i1 %124, label %125, label %87, !llvm.loop !286

125:                                              ; preds = %120
  %126 = add nuw nsw i64 %82, 1
  %127 = icmp eq i64 %126, 16
  br i1 %127, label %128, label %81, !llvm.loop !287

128:                                              ; preds = %125
  call void @glEnable(i32 noundef 2929) #15
  call void @glDepthFunc(i32 noundef 519) #15
  call void @glEnableClientState(i32 noundef 32884) #15
  call void @glEnableClientState(i32 noundef 32886) #15
  call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull @view3d_main_area_clear.grid_pos) #15
  call void @glColorPointer(i32 noundef 4, i32 noundef 5121, i32 noundef 0, ptr noundef nonnull %6) #15
  call void @glDrawElements(i32 noundef 7, i32 noundef 900, i32 noundef 5123, ptr noundef nonnull @view3d_main_area_clear.indices) #15
  call void @glDisableClientState(i32 noundef 32884) #15
  call void @glDisableClientState(i32 noundef 32886) #15
  call void @glDepthFunc(i32 noundef 515) #15
  call void @glDisable(i32 noundef 2929) #15
  call void @glMatrixMode(i32 noundef 5889) #15
  call void @glPopMatrix() #15
  call void @glMatrixMode(i32 noundef 5888) #15
  call void @glPopMatrix() #15
  call void @glShadeModel(i32 noundef 7424) #15
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  br label %143

129:                                              ; preds = %20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #16
  %130 = getelementptr inbounds %struct.World, ptr %13, i64 0, i32 6
  %131 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 44
  %132 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  call void @IMB_colormanagement_pixel_to_display_space_v3(ptr noundef nonnull %11, ptr noundef nonnull %130, ptr noundef nonnull %131, ptr noundef nonnull %132) #15
  %133 = load float, ptr %11, align 4, !tbaa !14
  %134 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %135 = load float, ptr %134, align 4, !tbaa !14
  %136 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %137 = load float, ptr %136, align 4, !tbaa !14
  call void @glClearColor(float noundef %133, float noundef %135, float noundef %137, float noundef 0.000000e+00) #15
  call void @glClear(i32 noundef 16640) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #16
  br label %143

138:                                              ; preds = %15, %3
  %139 = tail call i32 @UI_GetThemeValue(i32 noundef 181) #15
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %138
  tail call void @glMatrixMode(i32 noundef 5889) #15
  tail call void @glPushMatrix() #15
  tail call void @glLoadIdentity() #15
  tail call void @glMatrixMode(i32 noundef 5888) #15
  tail call void @glPushMatrix() #15
  tail call void @glLoadIdentity() #15
  tail call void @glEnable(i32 noundef 2929) #15
  tail call void @glDepthFunc(i32 noundef 519) #15
  tail call void @glShadeModel(i32 noundef 7425) #15
  tail call void @glBegin(i32 noundef 7) #15
  tail call void @UI_ThemeColor(i32 noundef 179) #15
  tail call void @glVertex3f(float noundef -1.000000e+00, float noundef -1.000000e+00, float noundef 1.000000e+00) #15
  tail call void @glVertex3f(float noundef 1.000000e+00, float noundef -1.000000e+00, float noundef 1.000000e+00) #15
  tail call void @UI_ThemeColor(i32 noundef 180) #15
  tail call void @glVertex3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #15
  tail call void @glVertex3f(float noundef -1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #15
  tail call void @glEnd() #15
  tail call void @glShadeModel(i32 noundef 7424) #15
  tail call void @glDepthFunc(i32 noundef 515) #15
  tail call void @glDisable(i32 noundef 2929) #15
  tail call void @glMatrixMode(i32 noundef 5889) #15
  tail call void @glPopMatrix() #15
  tail call void @glMatrixMode(i32 noundef 5888) #15
  tail call void @glPopMatrix() #15
  br label %143

142:                                              ; preds = %138
  tail call void @UI_ThemeClearColor(i32 noundef 180) #15
  tail call void @glClear(i32 noundef 16640) #15
  br label %143

143:                                              ; preds = %141, %142, %128, %129
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BDR_drawSketch(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_rotation_guide(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = alloca [4 x float], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) @__const.draw_rotation_guide.color, i64 16, i1 false)
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 22
  call fastcc void @negate_v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %9) #17
  tail call void @glEnable(i32 noundef 3042) #15
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #15
  tail call void @glShadeModel(i32 noundef 7425) #15
  tail call void @glPointSize(float noundef 5.000000e+00) #15
  tail call void @glEnable(i32 noundef 2832) #15
  tail call void @glDepthMask(i8 noundef zeroext 0) #15
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 38
  %11 = load float, ptr %10, align 8, !tbaa !288
  %12 = fcmp une float %11, 0.000000e+00
  br i1 %12, label %13, label %42

13:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  %14 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 18
  %15 = load float, ptr %14, align 8, !tbaa !289
  %16 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 39
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %5, ptr noundef nonnull %16, float noundef %15) #17
  tail call void @glBegin(i32 noundef 3) #15
  %17 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  store float 0.000000e+00, ptr %17, align 4, !tbaa !14
  call void @glColor4fv(ptr noundef nonnull %4) #15
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %5) #17
  call void @glVertex3fv(ptr noundef nonnull %3) #15
  store float 5.000000e-01, ptr %17, align 4, !tbaa !14
  call void @glColor4fv(ptr noundef nonnull %4) #15
  call void @glVertex3fv(ptr noundef nonnull %2) #15
  store float 0.000000e+00, ptr %17, align 4, !tbaa !14
  call void @glColor4fv(ptr noundef nonnull %4) #15
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %5) #17
  call void @glVertex3fv(ptr noundef nonnull %3) #15
  call void @glEnd() #15
  %18 = fmul float %15, 0x3FA99999A0000000
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 39, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !14
  %21 = call float @llvm.fabs.f32(float %20)
  %22 = fcmp oge float %21, 0x3FEE666660000000
  br i1 %22, label %26, label %23

23:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull @__const.draw_rotation_guide.up, ptr noundef nonnull %16) #17
  %24 = call fastcc float @dot_v3v3(ptr noundef nonnull @__const.draw_rotation_guide.up, ptr noundef nonnull %16) #17
  %25 = call float @acosf(float noundef %24) #15
  call void @axis_angle_to_quat(ptr noundef nonnull %6, ptr noundef nonnull %7, float noundef %25) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  br label %26

26:                                               ; preds = %23, %13
  store float 2.500000e-01, ptr %17, align 4, !tbaa !14
  call void @glColor4fv(ptr noundef nonnull %4) #15
  call void @glBegin(i32 noundef 2) #15
  %27 = getelementptr inbounds float, ptr %8, i64 1
  %28 = getelementptr inbounds float, ptr %8, i64 2
  br label %29

29:                                               ; preds = %26, %37
  %30 = phi float [ 0.000000e+00, %26 ], [ %39, %37 ]
  %31 = phi i32 [ 0, %26 ], [ %38, %37 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  %32 = call float @cosf(float noundef %30) #15
  %33 = fmul float %18, %32
  store float %33, ptr %8, align 4, !tbaa !14
  %34 = call float @sinf(float noundef %30) #15
  %35 = fmul float %18, %34
  store float %35, ptr %27, align 4, !tbaa !14
  store float 0.000000e+00, ptr %28, align 4, !tbaa !14
  br i1 %22, label %37, label %36

36:                                               ; preds = %29
  call void @mul_qt_v3(ptr noundef nonnull %6, ptr noundef nonnull %8) #15
  br label %37

37:                                               ; preds = %36, %29
  call fastcc void @add_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %2) #17
  call void @glVertex3fv(ptr noundef nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  %38 = add nuw nsw i32 %31, 1
  %39 = fadd float %30, 0x3FDEEEBF20000000
  %40 = icmp eq i32 %38, 13
  br i1 %40, label %41, label %29, !llvm.loop !290

41:                                               ; preds = %37
  call void @glEnd() #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  store float 1.000000e+00, ptr %17, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  br label %44

42:                                               ; preds = %1
  %43 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  store float 5.000000e-01, ptr %43, align 4, !tbaa !14
  br label %44

44:                                               ; preds = %42, %41
  call void @glColor4fv(ptr noundef nonnull %4) #15
  call void @glBegin(i32 noundef 0) #15
  call void @glVertex3fv(ptr noundef nonnull %2) #15
  call void @glEnd() #15
  call void @glDisable(i32 noundef 3042) #15
  call void @glDisable(i32 noundef 2832) #15
  call void @glDepthMask(i8 noundef zeroext 1) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #16
  ret void
}

; Function Attrs: optsize
declare void @IMB_colormanagement_pixel_to_display_space_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLoadIdentity() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glShadeModel(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_win_to_vector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColorPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @UI_GetThemeValue(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeClearColor(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !14
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !14
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !14
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !14
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !14
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare void @glPointSize(float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !14
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !14
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !14
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !14
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !14
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare void @glColor4fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !14
  %5 = load float, ptr %2, align 4, !tbaa !14
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !14
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !14
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !14
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !14
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !14
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !14
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = load float, ptr %1, align 4, !tbaa !14
  %5 = load float, ptr %2, align 4, !tbaa !14
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !14
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !14
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !14
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !14
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !14
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !14
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !14
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !14
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !14
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !14
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !14
  %15 = load float, ptr %8, align 4, !tbaa !14
  %16 = load float, ptr %2, align 4, !tbaa !14
  %17 = load float, ptr %1, align 4, !tbaa !14
  %18 = load float, ptr %6, align 4, !tbaa !14
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !14
  %23 = load float, ptr %1, align 4, !tbaa !14
  %24 = load float, ptr %10, align 4, !tbaa !14
  %25 = load float, ptr %4, align 4, !tbaa !14
  %26 = load float, ptr %2, align 4, !tbaa !14
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %1, align 4, !tbaa !14
  %4 = load float, ptr %0, align 4, !tbaa !14
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !14
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !14
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !14
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !14
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !14
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !14
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare ptr @RE_engine_create_ex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fdrawcheckerboard(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_visible_rect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawviewborder(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.rctf, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = icmp eq ptr %8, null
  br i1 %9, label %276, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !149
  %13 = icmp eq i16 %12, 11
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !176
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi ptr [ %16, %14 ], [ null, %10 ]
  call void @ED_view3d_calc_camera_border(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %6, ptr noundef nonnull %4, i8 noundef zeroext 0) #17
  %19 = load float, ptr %4, align 4, !tbaa !62
  %20 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  %21 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 1
  %22 = load float, ptr %21, align 4, !tbaa !61
  %23 = fadd float %19, 0xBFF00068E0000000
  %24 = fptosi float %23 to i32
  %25 = sitofp i32 %24 to float
  %26 = fadd float %22, 0x3FEFFF2E40000000
  %27 = fptosi float %26 to i32
  %28 = sitofp i32 %27 to float
  %29 = load <2 x float>, ptr %20, align 4, !tbaa !14
  %30 = fadd <2 x float> %29, <float 0xBFF00068E0000000, float 0x3FEFFF2E40000000>
  %31 = fptosi <2 x float> %30 to <2 x i32>
  %32 = sitofp <2 x i32> %31 to <2 x float>
  %33 = icmp eq ptr %18, null
  br i1 %33, label %74, label %34

34:                                               ; preds = %17
  %35 = getelementptr inbounds %struct.Camera, ptr %18, i64 0, i32 4
  %36 = load i16, ptr %35, align 2, !tbaa !291
  %37 = and i16 %36, 4
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %74, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.Camera, ptr %18, i64 0, i32 5
  %41 = load float, ptr %40, align 4, !tbaa !293
  %42 = fcmp ogt float %41, 0x3EB0C6F7A0000000
  br i1 %42, label %43, label %74

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %45 = load i16, ptr %44, align 8, !tbaa !49
  %46 = sext i16 %45 to i32
  %47 = add nsw i32 %46, 1
  %48 = sitofp i32 %47 to float
  %49 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %50 = load i16, ptr %49, align 2, !tbaa !52
  %51 = sext i16 %50 to i32
  %52 = add nsw i32 %51, 1
  %53 = sitofp i32 %52 to float
  %54 = fcmp oeq float %41, 1.000000e+00
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  tail call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  br label %58

56:                                               ; preds = %43
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #15
  tail call void @glEnable(i32 noundef 3042) #15
  %57 = load float, ptr %40, align 4, !tbaa !293
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %57) #15
  br label %58

58:                                               ; preds = %56, %55
  %59 = icmp sgt i32 %24, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %58
  tail call void @glRectf(float noundef 0.000000e+00, float noundef %53, float noundef %25, float noundef 0.000000e+00) #15
  br label %61

61:                                               ; preds = %60, %58
  %62 = fcmp olt float %28, %48
  br i1 %62, label %63, label %64

63:                                               ; preds = %61
  tail call void @glRectf(float noundef %28, float noundef %53, float noundef %48, float noundef 0.000000e+00) #15
  br label %64

64:                                               ; preds = %63, %61
  %65 = extractelement <2 x float> %32, i64 1
  %66 = fcmp olt float %65, %53
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  tail call void @glRectf(float noundef %25, float noundef %53, float noundef %28, float noundef %65) #15
  br label %68

68:                                               ; preds = %67, %64
  %69 = extractelement <2 x i32> %31, i64 1
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = extractelement <2 x float> %32, i64 0
  tail call void @glRectf(float noundef %25, float noundef %72, float noundef %28, float noundef 0.000000e+00) #15
  br label %73

73:                                               ; preds = %71, %68
  tail call void @glDisable(i32 noundef 3042) #15
  br label %74

74:                                               ; preds = %73, %39, %34, %17
  tail call void @glPolygonMode(i32 noundef 1032, i32 noundef 6913) #15
  tail call void @setlinestyle(i32 noundef 0) #15
  tail call void @UI_ThemeColor(i32 noundef 2) #15
  %75 = extractelement <2 x float> %32, i64 0
  %76 = extractelement <2 x float> %32, i64 1
  tail call void @glRectf(float noundef %25, float noundef %75, float noundef %28, float noundef %76) #15
  %77 = load i8, ptr @view3d_camera_border_hack_test, align 1, !tbaa !148
  %78 = icmp eq i8 %77, 1
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  tail call void @glColor3ubv(ptr noundef nonnull @view3d_camera_border_hack_col) #15
  %80 = fadd float %25, 1.000000e+00
  %81 = fadd float %75, 1.000000e+00
  %82 = fadd float %28, -1.000000e+00
  %83 = fadd float %76, -1.000000e+00
  tail call void @glRectf(float noundef %80, float noundef %81, float noundef %82, float noundef %83) #15
  store i8 0, ptr @view3d_camera_border_hack_test, align 1, !tbaa !148
  br label %84

84:                                               ; preds = %79, %74
  tail call void @setlinestyle(i32 noundef 3) #15
  %85 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %86 = load i16, ptr %85, align 2, !tbaa !118
  %87 = and i16 %86, 32
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  tail call void @UI_ThemeColor(i32 noundef 0) #15
  %90 = fadd float %25, -1.000000e+00
  %91 = fadd float %75, -1.000000e+00
  %92 = fadd float %28, 1.000000e+00
  %93 = fadd float %76, 1.000000e+00
  tail call void @glRectf(float noundef %90, float noundef %91, float noundef %92, float noundef %93) #15
  br label %94

94:                                               ; preds = %89, %84
  tail call void @UI_ThemeColor(i32 noundef 192) #15
  tail call void @glRectf(float noundef %25, float noundef %75, float noundef %28, float noundef %76) #15
  %95 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 47
  %96 = load i32, ptr %95, align 8, !tbaa !202
  %97 = and i32 %96, 512
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %121, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 58
  %101 = load float, ptr %100, align 8, !tbaa !294
  %102 = fsub float %22, %19
  %103 = tail call float @llvm.fmuladd.f32(float %101, float %102, float %19)
  %104 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 58, i32 2
  %105 = load float, ptr %104, align 8, !tbaa !203
  %106 = extractelement <2 x float> %29, i64 0
  %107 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %108 = fsub <2 x float> %107, %29
  %109 = extractelement <2 x float> %108, i64 0
  %110 = tail call float @llvm.fmuladd.f32(float %105, float %109, float %106)
  %111 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 58, i32 1
  %112 = load float, ptr %111, align 4, !tbaa !295
  %113 = tail call float @llvm.fmuladd.f32(float %112, float %102, float %19)
  %114 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 58, i32 3
  %115 = load float, ptr %114, align 4, !tbaa !204
  %116 = tail call float @llvm.fmuladd.f32(float %115, float %109, float %106)
  tail call void @cpack(i32 noundef 4210943) #15
  %117 = fptosi float %103 to i32
  %118 = fptosi float %110 to i32
  %119 = fptosi float %113 to i32
  %120 = fptosi float %116 to i32
  tail call void @glRecti(i32 noundef %117, i32 noundef %118, i32 noundef %119, i32 noundef %120) #15
  br label %121

121:                                              ; preds = %99, %94
  br i1 %33, label %275, label %122

122:                                              ; preds = %121
  %123 = getelementptr inbounds %struct.Camera, ptr %18, i64 0, i32 3
  %124 = load i8, ptr %123, align 1, !tbaa !296
  %125 = and i8 %124, 1
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %122
  tail call void @UI_ThemeColorBlendShade(i32 noundef 192, i32 noundef 2, float noundef 2.500000e-01, i32 noundef 0) #15
  %128 = fsub float %22, %19
  %129 = tail call float @llvm.fmuladd.f32(float %128, float 5.000000e-01, float %19)
  %130 = extractelement <2 x float> %29, i64 0
  %131 = extractelement <2 x float> %29, i64 1
  %132 = fsub float %131, %130
  %133 = tail call float @llvm.fmuladd.f32(float %132, float 5.000000e-01, float %130)
  tail call void @glBegin(i32 noundef 1) #15
  tail call void @glVertex2f(float noundef %19, float noundef %133) #15
  tail call void @glVertex2f(float noundef %22, float noundef %133) #15
  tail call void @glVertex2f(float noundef %129, float noundef %130) #15
  tail call void @glVertex2f(float noundef %129, float noundef %131) #15
  tail call void @glEnd() #15
  %134 = load i8, ptr %123, align 1, !tbaa !296
  br label %135

135:                                              ; preds = %127, %122
  %136 = phi i8 [ %134, %127 ], [ %124, %122 ]
  %137 = and i8 %136, 2
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  tail call void @UI_ThemeColorBlendShade(i32 noundef 192, i32 noundef 2, float noundef 2.500000e-01, i32 noundef 0) #15
  tail call void @glBegin(i32 noundef 1) #15
  %140 = extractelement <2 x float> %29, i64 0
  tail call void @glVertex2f(float noundef %19, float noundef %140) #15
  %141 = extractelement <2 x float> %29, i64 1
  tail call void @glVertex2f(float noundef %22, float noundef %141) #15
  tail call void @glVertex2f(float noundef %19, float noundef %141) #15
  tail call void @glVertex2f(float noundef %22, float noundef %140) #15
  tail call void @glEnd() #15
  %142 = load i8, ptr %123, align 1, !tbaa !296
  br label %143

143:                                              ; preds = %139, %135
  %144 = phi i8 [ %142, %139 ], [ %136, %135 ]
  %145 = and i8 %144, 4
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  tail call void @UI_ThemeColorBlendShade(i32 noundef 192, i32 noundef 2, float noundef 2.500000e-01, i32 noundef 0) #15
  %148 = extractelement <2 x float> %29, i64 0
  %149 = extractelement <2 x float> %29, i64 1
  tail call fastcc void @drawviewborder_grid3(float noundef %19, float noundef %22, float noundef %148, float noundef %149, float noundef 0x3FD5555560000000) #17
  %150 = load i8, ptr %123, align 1, !tbaa !296
  br label %151

151:                                              ; preds = %147, %143
  %152 = phi i8 [ %150, %147 ], [ %144, %143 ]
  %153 = and i8 %152, 8
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %151
  tail call void @UI_ThemeColorBlendShade(i32 noundef 192, i32 noundef 2, float noundef 2.500000e-01, i32 noundef 0) #15
  %156 = extractelement <2 x float> %29, i64 0
  %157 = extractelement <2 x float> %29, i64 1
  tail call fastcc void @drawviewborder_grid3(float noundef %19, float noundef %22, float noundef %156, float noundef %157, float noundef 0x3FD8722180000000) #17
  %158 = load i8, ptr %123, align 1, !tbaa !296
  br label %159

159:                                              ; preds = %155, %151
  %160 = phi i8 [ %158, %155 ], [ %152, %151 ]
  %161 = and i8 %160, 16
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %159
  tail call void @UI_ThemeColorBlendShade(i32 noundef 192, i32 noundef 2, float noundef 2.500000e-01, i32 noundef 0) #15
  %164 = extractelement <2 x float> %29, i64 0
  %165 = extractelement <2 x float> %29, i64 1
  tail call fastcc void @drawviewborder_triangle(float noundef %19, float noundef %22, float noundef %164, float noundef %165, i8 noundef zeroext 0, i8 noundef zeroext 65) #17
  %166 = load i8, ptr %123, align 1, !tbaa !296
  br label %167

167:                                              ; preds = %163, %159
  %168 = phi i8 [ %166, %163 ], [ %160, %159 ]
  %169 = and i8 %168, 32
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  tail call void @UI_ThemeColorBlendShade(i32 noundef 192, i32 noundef 2, float noundef 2.500000e-01, i32 noundef 0) #15
  %172 = extractelement <2 x float> %29, i64 0
  %173 = extractelement <2 x float> %29, i64 1
  tail call fastcc void @drawviewborder_triangle(float noundef %19, float noundef %22, float noundef %172, float noundef %173, i8 noundef zeroext 0, i8 noundef zeroext 66) #17
  %174 = load i8, ptr %123, align 1, !tbaa !296
  br label %175

175:                                              ; preds = %171, %167
  %176 = phi i8 [ %174, %171 ], [ %168, %167 ]
  %177 = and i8 %176, 64
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %175
  tail call void @UI_ThemeColorBlendShade(i32 noundef 192, i32 noundef 2, float noundef 2.500000e-01, i32 noundef 0) #15
  %180 = extractelement <2 x float> %29, i64 0
  %181 = extractelement <2 x float> %29, i64 1
  tail call fastcc void @drawviewborder_triangle(float noundef %19, float noundef %22, float noundef %180, float noundef %181, i8 noundef zeroext 1, i8 noundef zeroext 65) #17
  %182 = load i8, ptr %123, align 1, !tbaa !296
  br label %183

183:                                              ; preds = %179, %175
  %184 = phi i8 [ %182, %179 ], [ %176, %175 ]
  %185 = icmp sgt i8 %184, -1
  br i1 %185, label %189, label %186

186:                                              ; preds = %183
  tail call void @UI_ThemeColorBlendShade(i32 noundef 192, i32 noundef 2, float noundef 2.500000e-01, i32 noundef 0) #15
  %187 = extractelement <2 x float> %29, i64 0
  %188 = extractelement <2 x float> %29, i64 1
  tail call fastcc void @drawviewborder_triangle(float noundef %19, float noundef %22, float noundef %187, float noundef %188, i8 noundef zeroext 1, i8 noundef zeroext 66) #17
  br label %189

189:                                              ; preds = %186, %183
  %190 = getelementptr inbounds %struct.Camera, ptr %18, i64 0, i32 4
  %191 = load i16, ptr %190, align 2, !tbaa !291
  %192 = and i16 %191, 8
  %193 = icmp eq i16 %192, 0
  br i1 %193, label %212, label %194

194:                                              ; preds = %189
  tail call void @UI_ThemeColorBlendShade(i32 noundef 192, i32 noundef 2, float noundef 2.500000e-01, i32 noundef 0) #15
  %195 = fsub float %22, %19
  %196 = fmul float %195, 0x3FB99999A0000000
  %197 = extractelement <2 x float> %29, i64 0
  %198 = extractelement <2 x float> %29, i64 1
  %199 = fsub float %198, %197
  %200 = fmul float %199, 0x3FA99999A0000000
  %201 = fadd float %19, %196
  %202 = fadd float %197, %200
  %203 = fsub float %22, %196
  %204 = fsub float %198, %200
  tail call void @uiDrawBox(i32 noundef 2, float noundef %201, float noundef %202, float noundef %203, float noundef %204, float noundef 2.000000e+00) #15
  %205 = fmul float %195, 0x3FA1EB8520000000
  %206 = fmul float %199, 0x3FA1EB8520000000
  %207 = fadd float %19, %205
  %208 = fadd float %197, %206
  %209 = fsub float %22, %205
  %210 = fsub float %198, %206
  tail call void @uiDrawBox(i32 noundef 2, float noundef %207, float noundef %208, float noundef %209, float noundef %210, float noundef 2.000000e+00) #15
  %211 = load i16, ptr %190, align 2, !tbaa !291
  br label %212

212:                                              ; preds = %194, %189
  %213 = phi i16 [ %211, %194 ], [ %191, %189 ]
  %214 = and i16 %213, 256
  %215 = icmp eq i16 %214, 0
  br i1 %215, label %267, label %216

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 33
  %218 = load i32, ptr %217, align 4, !tbaa !55
  %219 = sitofp i32 %218 to float
  %220 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 63
  %221 = load float, ptr %220, align 4, !tbaa !57
  %222 = fmul float %221, %219
  %223 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 34
  %224 = load i32, ptr %223, align 8, !tbaa !56
  %225 = sitofp i32 %224 to float
  %226 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 64
  %227 = load float, ptr %226, align 8, !tbaa !58
  %228 = fmul float %227, %225
  %229 = getelementptr inbounds %struct.Camera, ptr %18, i64 0, i32 18
  %230 = load i8, ptr %229, align 8, !tbaa !297
  %231 = zext i8 %230 to i32
  %232 = tail call i32 @BKE_camera_sensor_fit(i32 noundef %231, float noundef %222, float noundef %228) #15
  %233 = getelementptr inbounds %struct.Camera, ptr %18, i64 0, i32 11
  %234 = load float, ptr %233, align 4, !tbaa !298
  %235 = load i8, ptr %229, align 8, !tbaa !297
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %216
  %238 = getelementptr inbounds %struct.Camera, ptr %18, i64 0, i32 12
  %239 = load float, ptr %238, align 8, !tbaa !299
  br label %240

240:                                              ; preds = %216, %237
  %241 = phi float [ %239, %237 ], [ %234, %216 ]
  %242 = icmp eq i32 %232, 1
  br i1 %242, label %243, label %253

243:                                              ; preds = %240
  %244 = fsub float %28, %25
  %245 = fdiv float %244, %234
  %246 = fmul float %245, %241
  %247 = fadd float %75, %76
  %248 = fmul float %246, -5.000000e-01
  %249 = tail call float @llvm.fmuladd.f32(float %247, float 5.000000e-01, float %248)
  %250 = fadd float %246, %249
  %251 = insertelement <2 x float> poison, float %249, i64 0
  %252 = insertelement <2 x float> %251, float %250, i64 1
  br label %261

253:                                              ; preds = %240
  %254 = fsub float %76, %75
  %255 = fdiv float %254, %241
  %256 = fmul float %234, %255
  %257 = fadd float %25, %28
  %258 = fmul float %256, -5.000000e-01
  %259 = tail call float @llvm.fmuladd.f32(float %257, float 5.000000e-01, float %258)
  %260 = fadd float %256, %259
  br label %261

261:                                              ; preds = %253, %243
  %262 = phi float [ %28, %243 ], [ %260, %253 ]
  %263 = phi float [ %25, %243 ], [ %259, %253 ]
  %264 = phi <2 x float> [ %252, %243 ], [ %32, %253 ]
  tail call void @UI_ThemeColorShade(i32 noundef 192, i32 noundef 100) #15
  %265 = extractelement <2 x float> %264, i64 0
  %266 = extractelement <2 x float> %264, i64 1
  tail call void @uiDrawBox(i32 noundef 2, float noundef %263, float noundef %265, float noundef %262, float noundef %266, float noundef 2.000000e+00) #15
  br label %267

267:                                              ; preds = %261, %212
  tail call void @setlinestyle(i32 noundef 0) #15
  tail call void @glPolygonMode(i32 noundef 1032, i32 noundef 6914) #15
  %268 = load i16, ptr %190, align 2, !tbaa !291
  %269 = and i16 %268, 16
  %270 = icmp eq i16 %269, 0
  br i1 %270, label %276, label %271

271:                                              ; preds = %267
  tail call void @UI_ThemeColor(i32 noundef 4) #15
  %272 = fadd float %75, -1.500000e+01
  %273 = load ptr, ptr %7, align 8, !tbaa !54
  %274 = getelementptr inbounds %struct.ID, ptr %273, i64 0, i32 4, i64 2
  tail call void @BLF_draw_default(float noundef %25, float noundef %272, float noundef 0.000000e+00, ptr noundef nonnull %274, i64 noundef 64) #15
  tail call void @UI_ThemeColor(i32 noundef 25) #15
  br label %276

275:                                              ; preds = %121
  tail call void @setlinestyle(i32 noundef 0) #15
  tail call void @glPolygonMode(i32 noundef 1032, i32 noundef 6914) #15
  br label %276

276:                                              ; preds = %267, %271, %275, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  ret void
}

; Function Attrs: optsize
declare void @glPolygonMode(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cpack(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glRecti(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawcursor(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %5 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %0, ptr noundef %2) #15
  %6 = call i32 @ED_view3d_project_int_global(ptr noundef %1, ptr noundef %5, ptr noundef nonnull %4, i32 noundef 0) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %50

8:                                                ; preds = %3
  %9 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !201
  %10 = sitofp i16 %9 to float
  %11 = fmul float %10, 2.500000e-01
  %12 = fmul float %10, 5.000000e-01
  call void @setlinestyle(i32 noundef 0) #15
  call void @cpack(i32 noundef 255) #15
  %13 = load i32, ptr %4, align 4, !tbaa !92
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !92
  %17 = sitofp i32 %16 to float
  call void @circ(float noundef %14, float noundef %17, float noundef %12) #17
  call void @setlinestyle(i32 noundef 4) #15
  call void @cpack(i32 noundef 16777215) #15
  %18 = load i32, ptr %4, align 4, !tbaa !92
  %19 = sitofp i32 %18 to float
  %20 = load i32, ptr %15, align 4, !tbaa !92
  %21 = sitofp i32 %20 to float
  call void @circ(float noundef %19, float noundef %21, float noundef %12) #17
  call void @setlinestyle(i32 noundef 0) #15
  call void @UI_ThemeColor(i32 noundef 192) #15
  %22 = load i32, ptr %4, align 4, !tbaa !92
  %23 = sitofp i32 %22 to float
  %24 = fsub float %23, %10
  %25 = fptosi float %24 to i32
  %26 = load i32, ptr %15, align 4, !tbaa !92
  %27 = fsub float %23, %11
  %28 = fptosi float %27 to i32
  call void @sdrawline(i32 noundef %25, i32 noundef %26, i32 noundef %28, i32 noundef %26) #15
  %29 = load i32, ptr %4, align 4, !tbaa !92
  %30 = sitofp i32 %29 to float
  %31 = fadd float %11, %30
  %32 = fptosi float %31 to i32
  %33 = load i32, ptr %15, align 4, !tbaa !92
  %34 = fadd float %10, %30
  %35 = fptosi float %34 to i32
  call void @sdrawline(i32 noundef %32, i32 noundef %33, i32 noundef %35, i32 noundef %33) #15
  %36 = load i32, ptr %4, align 4, !tbaa !92
  %37 = load i32, ptr %15, align 4, !tbaa !92
  %38 = sitofp i32 %37 to float
  %39 = fsub float %38, %10
  %40 = fptosi float %39 to i32
  %41 = fsub float %38, %11
  %42 = fptosi float %41 to i32
  call void @sdrawline(i32 noundef %36, i32 noundef %40, i32 noundef %36, i32 noundef %42) #15
  %43 = load i32, ptr %4, align 4, !tbaa !92
  %44 = load i32, ptr %15, align 4, !tbaa !92
  %45 = sitofp i32 %44 to float
  %46 = fadd float %11, %45
  %47 = fptosi float %46 to i32
  %48 = fadd float %10, %45
  %49 = fptosi float %48 to i32
  call void @sdrawline(i32 noundef %43, i32 noundef %47, i32 noundef %43, i32 noundef %49) #15
  br label %50

50:                                               ; preds = %8, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_view_axis(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [3 x float], align 8
  %4 = alloca [2 x i8], align 2
  %5 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 68), align 2, !tbaa !300
  %6 = sitofp i16 %5 to float
  %7 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !301
  %8 = fmul float %7, %6
  %9 = fadd float %8, 1.000000e+00
  %10 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 69), align 8, !tbaa !302
  %11 = sext i16 %10 to i32
  %12 = sub nsw i32 10, %11
  %13 = mul nsw i32 %12, -20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #16
  store i16 120, ptr %4, align 2
  %14 = load i32, ptr %1, align 4, !tbaa !105
  %15 = sitofp i32 %14 to float
  %16 = fadd float %9, %15
  %17 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !107
  %19 = sitofp i32 %18 to float
  %20 = fadd float %9, %19
  tail call void @glLineWidth(float noundef 2.000000e+00) #15
  tail call void @glEnable(i32 noundef 3042) #15
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #15
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 17
  %22 = insertelement <2 x float> poison, float %8, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  br label %24

24:                                               ; preds = %2, %43
  %25 = phi i64 [ 0, %2 ], [ %46, %43 ]
  call fastcc void @zero_v3(ptr noundef nonnull %3) #17
  %26 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %25
  store float 1.000000e+00, ptr %26, align 4, !tbaa !14
  call void @mul_qt_v3(ptr noundef nonnull %21, ptr noundef nonnull %3) #15
  %27 = trunc i64 %25 to i32
  %28 = or i32 %27, 176
  %29 = load <2 x float>, ptr %3, align 8, !tbaa !14
  %30 = fmul <2 x float> %23, %29
  call void @UI_ThemeColorShadeAlpha(i32 noundef %28, i32 noundef 0, i32 noundef %13) #15
  call void @glBegin(i32 noundef 1) #15
  call void @glVertex2f(float noundef %16, float noundef %20) #15
  %31 = extractelement <2 x float> %30, i64 0
  %32 = fadd float %16, %31
  %33 = extractelement <2 x float> %30, i64 1
  %34 = fadd float %20, %33
  call void @glVertex2f(float noundef %32, float noundef %34) #15
  call void @glEnd() #15
  %35 = call <2 x float> @llvm.fabs.v2f32(<2 x float> %30)
  %36 = fcmp ogt <2 x float> %35, <float 5.000000e-01, float 5.000000e-01>
  %37 = extractelement <2 x i1> %36, i64 0
  %38 = extractelement <2 x i1> %36, i64 1
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %24
  %41 = fadd float %32, 2.000000e+00
  %42 = fadd float %34, 2.000000e+00
  call void @BLF_draw_default_ascii(float noundef %41, float noundef %42, float noundef 0.000000e+00, ptr noundef nonnull %4, i64 noundef 1) #15
  br label %43

43:                                               ; preds = %24, %40
  %44 = load i8, ptr %4, align 2, !tbaa !148
  %45 = add i8 %44, 1
  store i8 %45, ptr %4, align 2, !tbaa !148
  call void @glEnable(i32 noundef 3042) #15
  %46 = add nuw nsw i64 %25, 1
  %47 = icmp eq i64 %46, 3
  br i1 %47, label %48, label %24, !llvm.loop !303

48:                                               ; preds = %43
  call void @glLineWidth(float noundef 1.000000e+00) #15
  call void @glDisable(i32 noundef 3042) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_view_icon(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 26
  %4 = load i8, ptr %3, align 2, !tbaa !181
  %5 = add i8 %4, -1
  %6 = icmp ult i8 %5, 6
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = zext nneg i8 %5 to i64
  %9 = getelementptr inbounds [6 x i32], ptr @switch.table.draw_view_icon, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4
  tail call void @glEnable(i32 noundef 3042) #15
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #15
  %11 = load i32, ptr %1, align 4, !tbaa !105
  %12 = sitofp i32 %11 to double
  %13 = fadd double %12, 5.000000e+00
  %14 = fptrunc double %13 to float
  %15 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !107
  %17 = sitofp i32 %16 to double
  %18 = fadd double %17, 5.000000e+00
  %19 = fptrunc double %18 to float
  tail call void @UI_icon_draw(float noundef %14, float noundef %19, i32 noundef %10) #15
  tail call void @glDisable(i32 noundef 3042) #15
  br label %20

20:                                               ; preds = %2, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_selected_name(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [300 x i8], align 16
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !254
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %4) #16
  %7 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !201
  %8 = sitofp i16 %7 to float
  %9 = load i32, ptr %2, align 4, !tbaa !105
  %10 = sitofp i32 %9 to float
  %11 = tail call float @llvm.fmuladd.f32(float %8, float 1.500000e+00, float %10)
  %12 = fptosi float %11 to i16
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %6) #15
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %4, i64 %14
  %16 = tail call ptr @BKE_scene_find_marker_name(ptr noundef %0, i32 noundef %6) #15
  %17 = icmp eq ptr %1, null
  br i1 %17, label %130, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 32, ptr %15, align 1, !tbaa !148
  %20 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %21 = call i64 @BLI_strcpy_rlen(ptr noundef nonnull %19, ptr noundef nonnull %20) #15
  %22 = getelementptr inbounds i8, ptr %19, i64 %21
  %23 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %24 = load i16, ptr %23, align 8, !tbaa !149
  switch i16 %24, label %123 [
    i16 25, label %25
    i16 1, label %65
    i16 2, label %98
    i16 22, label %98
  ]

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !176
  %28 = getelementptr inbounds %struct.bArmature, ptr %27, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !304
  %30 = icmp eq ptr %29, null
  br i1 %30, label %42, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.bArmature, ptr %27, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !306
  %34 = icmp eq ptr %33, null
  br i1 %34, label %123, label %35

35:                                               ; preds = %31
  %36 = call i64 @BLI_strcpy_rlen(ptr noundef nonnull %22, ptr noundef nonnull @.str.10) #15
  %37 = getelementptr inbounds i8, ptr %22, i64 %36
  %38 = load ptr, ptr %32, align 8, !tbaa !306
  %39 = getelementptr inbounds %struct.EditBone, ptr %38, i64 0, i32 5
  %40 = call i64 @BLI_strcpy_rlen(ptr noundef nonnull %37, ptr noundef nonnull %39) #15
  %41 = getelementptr inbounds i8, ptr %37, i64 %40
  br label %123

42:                                               ; preds = %25
  %43 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %44 = load i32, ptr %43, align 8, !tbaa !76
  %45 = and i32 %44, 64
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %123, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.bArmature, ptr %27, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !307
  %50 = icmp eq ptr %49, null
  br i1 %50, label %123, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.Bone, ptr %49, i64 0, i32 25
  %53 = load i32, ptr %52, align 8, !tbaa !308
  %54 = getelementptr inbounds %struct.bArmature, ptr %27, i64 0, i32 15
  %55 = load i32, ptr %54, align 8, !tbaa !310
  %56 = and i32 %55, %53
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %123, label %58

58:                                               ; preds = %51
  %59 = call i64 @BLI_strcpy_rlen(ptr noundef nonnull %22, ptr noundef nonnull @.str.10) #15
  %60 = getelementptr inbounds i8, ptr %22, i64 %59
  %61 = load ptr, ptr %48, align 8, !tbaa !307
  %62 = getelementptr inbounds %struct.Bone, ptr %61, i64 0, i32 5
  %63 = call i64 @BLI_strcpy_rlen(ptr noundef nonnull %60, ptr noundef nonnull %62) #15
  %64 = getelementptr inbounds i8, ptr %60, i64 %63
  br label %123

65:                                               ; preds = %18
  %66 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %67 = load i32, ptr %66, align 8, !tbaa !76
  %68 = and i32 %67, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %98, label %70

70:                                               ; preds = %65
  %71 = call ptr @BKE_object_pose_armature_get(ptr noundef nonnull %1) #15
  %72 = icmp eq ptr %71, null
  br i1 %72, label %98, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.Object, ptr %71, i64 0, i32 27
  %75 = load i32, ptr %74, align 8, !tbaa !76
  %76 = and i32 %75, 64
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %98, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.Object, ptr %71, i64 0, i32 19
  %80 = load ptr, ptr %79, align 8, !tbaa !176
  %81 = getelementptr inbounds %struct.bArmature, ptr %80, i64 0, i32 5
  %82 = load ptr, ptr %81, align 8, !tbaa !307
  %83 = icmp eq ptr %82, null
  br i1 %83, label %98, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.Bone, ptr %82, i64 0, i32 25
  %86 = load i32, ptr %85, align 8, !tbaa !308
  %87 = getelementptr inbounds %struct.bArmature, ptr %80, i64 0, i32 15
  %88 = load i32, ptr %87, align 8, !tbaa !310
  %89 = and i32 %88, %86
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %84
  %92 = call i64 @BLI_strcpy_rlen(ptr noundef nonnull %22, ptr noundef nonnull @.str.10) #15
  %93 = getelementptr inbounds i8, ptr %22, i64 %92
  %94 = load ptr, ptr %81, align 8, !tbaa !307
  %95 = getelementptr inbounds %struct.Bone, ptr %94, i64 0, i32 5
  %96 = call i64 @BLI_strcpy_rlen(ptr noundef nonnull %93, ptr noundef nonnull %95) #15
  %97 = getelementptr inbounds i8, ptr %93, i64 %96
  br label %98

98:                                               ; preds = %18, %18, %70, %73, %84, %91, %78, %65
  %99 = phi ptr [ %22, %65 ], [ %22, %73 ], [ %22, %70 ], [ %97, %91 ], [ %22, %84 ], [ %22, %78 ], [ %22, %18 ], [ %22, %18 ]
  %100 = call ptr @BKE_key_from_object(ptr noundef nonnull %1) #15
  %101 = icmp eq ptr %100, null
  br i1 %101, label %123, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.Key, ptr %100, i64 0, i32 6
  %104 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 115
  %105 = load i16, ptr %104, align 2, !tbaa !311
  %106 = sext i16 %105 to i32
  %107 = add nsw i32 %106, -1
  %108 = call ptr @BLI_findlink(ptr noundef nonnull %103, i32 noundef %107) #15
  %109 = icmp eq ptr %108, null
  br i1 %109, label %123, label %110

110:                                              ; preds = %102
  %111 = call i64 @BLI_strcpy_rlen(ptr noundef nonnull %99, ptr noundef nonnull @.str.10) #15
  %112 = getelementptr inbounds i8, ptr %99, i64 %111
  %113 = getelementptr inbounds %struct.KeyBlock, ptr %108, i64 0, i32 11
  %114 = call i64 @BLI_strcpy_rlen(ptr noundef %112, ptr noundef nonnull %113) #15
  %115 = getelementptr inbounds i8, ptr %112, i64 %114
  %116 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 114
  %117 = load i8, ptr %116, align 1, !tbaa !312
  %118 = and i8 %117, 1
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %110
  %121 = call i64 @BLI_strcpy_rlen(ptr noundef %115, ptr noundef nonnull @.str.9) #15
  %122 = getelementptr inbounds i8, ptr %115, i64 %121
  br label %123

123:                                              ; preds = %18, %98, %110, %120, %102, %35, %31, %47, %58, %51, %42
  %124 = phi ptr [ %41, %35 ], [ %22, %31 ], [ %64, %58 ], [ %22, %51 ], [ %22, %47 ], [ %22, %42 ], [ %22, %18 ], [ %122, %120 ], [ %115, %110 ], [ %99, %102 ], [ %99, %98 ]
  %125 = sitofp i32 %6 to float
  %126 = call zeroext i8 @id_frame_has_keyframe(ptr noundef nonnull %1, float noundef %125, i16 noundef signext 1) #15
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %123
  call void @UI_ThemeColor(i32 noundef 34) #15
  br label %131

129:                                              ; preds = %123
  call void @UI_ThemeColor(i32 noundef 4) #15
  br label %131

130:                                              ; preds = %3
  tail call void @UI_ThemeColor(i32 noundef 4) #15
  br label %131

131:                                              ; preds = %128, %129, %130
  %132 = phi ptr [ %124, %128 ], [ %124, %129 ], [ %15, %130 ]
  %133 = icmp eq ptr %16, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %131
  %135 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %132, ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %16) #15
  br label %136

136:                                              ; preds = %134, %131
  %137 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !217
  %138 = and i32 %137, 131072
  %139 = icmp eq i32 %138, 0
  %140 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !201
  br i1 %139, label %150, label %141

141:                                              ; preds = %136
  %142 = zext i16 %140 to i32
  %143 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 68), align 2, !tbaa !300
  %144 = sext i16 %143 to i32
  %145 = shl nsw i32 %144, 1
  %146 = load i32, ptr %2, align 4, !tbaa !105
  %147 = add i32 %146, %142
  %148 = add i32 %147, %145
  %149 = trunc i32 %148 to i16
  br label %150

150:                                              ; preds = %141, %136
  %151 = phi i16 [ %149, %141 ], [ %12, %136 ]
  %152 = sitofp i16 %151 to float
  %153 = sitofp i16 %140 to float
  %154 = fmul float %153, 5.000000e-01
  call void @BLF_draw_default(float noundef %152, float noundef %154, float noundef 0.000000e+00, ptr noundef nonnull %4, i64 noundef 300) #15
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_main_area_draw_engine_info(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) @__const.view3d_main_area_draw_engine_info.fill_color, i64 16, i1 false)
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !212
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.RenderEngine, ptr %7, i64 0, i32 9
  %11 = load i8, ptr %10, align 8, !tbaa !148
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %9
  %14 = icmp eq i8 %3, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  %17 = tail call ptr @ED_view3d_camera_data_get(ptr noundef %0, ptr noundef nonnull %1) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Camera, ptr %17, i64 0, i32 4
  %21 = load i16, ptr %20, align 2, !tbaa !291
  %22 = and i16 %21, 4
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.Camera, ptr %17, i64 0, i32 5
  %26 = load float, ptr %25, align 4, !tbaa !293
  %27 = fsub float 1.000000e+00, %26
  %28 = fmul float %27, 7.500000e-01
  br label %29

29:                                               ; preds = %19, %24, %15
  %30 = phi float [ %28, %24 ], [ 7.500000e-01, %19 ], [ 7.500000e-01, %15 ]
  call void @UI_GetThemeColor3fv(i32 noundef 180, ptr noundef nonnull %5) #15
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %30) #17
  store float 1.000000e+00, ptr %16, align 4, !tbaa !14
  %31 = load ptr, ptr %6, align 8, !tbaa !212
  br label %32

32:                                               ; preds = %29, %13
  %33 = phi ptr [ %31, %29 ], [ %7, %13 ]
  %34 = getelementptr inbounds %struct.RenderEngine, ptr %33, i64 0, i32 9
  call void @ED_region_info_draw(ptr noundef %2, ptr noundef nonnull %34, i32 noundef 1, ptr noundef nonnull %5) #15
  br label %35

35:                                               ; preds = %4, %9, %32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_screen_animation_playing(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_viewport_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [32 x i8], align 16
  %5 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = tail call fastcc ptr @view3d_get_name(ptr noundef %1, ptr noundef %6) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  %8 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !313
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 32, ptr noundef nonnull @.str.13, ptr noundef nonnull %7) #15
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi ptr [ %4, %11 ], [ %7, %3 ]
  call void @UI_ThemeColor(i32 noundef 4) #15
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !201
  %16 = sext i16 %15 to i32
  %17 = load i32, ptr %2, align 4, !tbaa !105
  %18 = add nsw i32 %17, %16
  %19 = sitofp i32 %18 to float
  %20 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !108
  %22 = sub nsw i32 %21, %16
  %23 = sitofp i32 %22 to float
  call void @BLF_draw_default_ascii(float noundef %19, float noundef %23, float noundef 0.000000e+00, ptr noundef nonnull %14, i64 noundef 32) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  ret void
}

; Function Attrs: optsize
declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColorBlendShade(i32 noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawviewborder_grid3(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #0 {
  %6 = fsub float %1, %0
  %7 = tail call float @llvm.fmuladd.f32(float %4, float %6, float %0)
  %8 = fsub float %3, %2
  %9 = tail call float @llvm.fmuladd.f32(float %4, float %8, float %2)
  %10 = fsub float 1.000000e+00, %4
  %11 = tail call float @llvm.fmuladd.f32(float %10, float %6, float %0)
  %12 = tail call float @llvm.fmuladd.f32(float %10, float %8, float %2)
  tail call void @glBegin(i32 noundef 1) #15
  tail call void @glVertex2f(float noundef %0, float noundef %9) #15
  tail call void @glVertex2f(float noundef %1, float noundef %9) #15
  tail call void @glVertex2f(float noundef %0, float noundef %12) #15
  tail call void @glVertex2f(float noundef %1, float noundef %12) #15
  tail call void @glVertex2f(float noundef %7, float noundef %2) #15
  tail call void @glVertex2f(float noundef %7, float noundef %3) #15
  tail call void @glVertex2f(float noundef %11, float noundef %2) #15
  tail call void @glVertex2f(float noundef %11, float noundef %3) #15
  tail call void @glEnd() #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawviewborder_triangle(float noundef %0, float noundef %1, float noundef %2, float noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = fsub float %1, %0
  %8 = fsub float %3, %2
  tail call void @glBegin(i32 noundef 1) #15
  %9 = fcmp ogt float %7, %8
  %10 = icmp eq i8 %4, 0
  %11 = icmp eq i8 %5, 66
  br i1 %9, label %12, label %22

12:                                               ; preds = %6
  %13 = fmul float %7, 0x3FD8722180000000
  %14 = fdiv float %8, %7
  %15 = fmul float %8, %14
  %16 = select i1 %10, float %15, float %13
  %17 = select i1 %11, float %2, float %3
  %18 = select i1 %11, float %3, float %2
  tail call void @glVertex2f(float noundef %0, float noundef %18) #15
  tail call void @glVertex2f(float noundef %1, float noundef %17) #15
  tail call void @glVertex2f(float noundef %1, float noundef %18) #15
  %19 = fsub float %7, %16
  %20 = fadd float %19, %0
  tail call void @glVertex2f(float noundef %20, float noundef %17) #15
  tail call void @glVertex2f(float noundef %0, float noundef %17) #15
  %21 = fadd float %16, %0
  tail call void @glVertex2f(float noundef %21, float noundef %18) #15
  br label %32

22:                                               ; preds = %6
  %23 = fmul float %8, 0x3FD8722180000000
  %24 = fdiv float %7, %8
  %25 = fmul float %7, %24
  %26 = select i1 %10, float %25, float %23
  %27 = select i1 %11, float %0, float %1
  %28 = select i1 %11, float %1, float %0
  tail call void @glVertex2f(float noundef %28, float noundef %2) #15
  tail call void @glVertex2f(float noundef %27, float noundef %3) #15
  tail call void @glVertex2f(float noundef %27, float noundef %2) #15
  %29 = fadd float %26, %2
  tail call void @glVertex2f(float noundef %28, float noundef %29) #15
  tail call void @glVertex2f(float noundef %28, float noundef %3) #15
  %30 = fsub float %8, %26
  %31 = fadd float %30, %2
  tail call void @glVertex2f(float noundef %27, float noundef %31) #15
  br label %32

32:                                               ; preds = %22, %12
  tail call void @glEnd() #15
  ret void
}

; Function Attrs: optsize
declare void @uiDrawBox(i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_camera_sensor_fit(i32 noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLF_draw_default(float noundef, float noundef, float noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_view3d_project_int_global(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sdrawline(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLineWidth(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColorShadeAlpha(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_icon_draw(float noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @BKE_scene_find_marker_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_strcpy_rlen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_object_pose_armature_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @id_frame_has_keyframe(ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_view3d_camera_data_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #3 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !14
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !14
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !14
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare void @ED_region_info_draw(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc nonnull ptr @view3d_get_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 26
  %4 = load i8, ptr %3, align 2, !tbaa !181
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 25
  %6 = load i8, ptr %5, align 1, !tbaa !170
  switch i8 %4, label %25 [
    i8 1, label %7
    i8 2, label %10
    i8 5, label %13
    i8 6, label %16
    i8 4, label %19
    i8 3, label %22
  ]

7:                                                ; preds = %2
  %8 = icmp eq i8 %6, 0
  %9 = select i1 %8, ptr @.str.14, ptr @.str.15
  br label %45

10:                                               ; preds = %2
  %11 = icmp eq i8 %6, 0
  %12 = select i1 %11, ptr @.str.16, ptr @.str.17
  br label %45

13:                                               ; preds = %2
  %14 = icmp eq i8 %6, 0
  %15 = select i1 %14, ptr @.str.18, ptr @.str.19
  br label %45

16:                                               ; preds = %2
  %17 = icmp eq i8 %6, 0
  %18 = select i1 %17, ptr @.str.20, ptr @.str.21
  br label %45

19:                                               ; preds = %2
  %20 = icmp eq i8 %6, 0
  %21 = select i1 %20, ptr @.str.22, ptr @.str.23
  br label %45

22:                                               ; preds = %2
  %23 = icmp eq i8 %6, 0
  %24 = select i1 %23, ptr @.str.24, ptr @.str.25
  br label %45

25:                                               ; preds = %2
  %26 = icmp eq i8 %6, 2
  br i1 %26, label %27, label %42

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 15
  %29 = load ptr, ptr %28, align 8, !tbaa !54
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 3
  %33 = load i16, ptr %32, align 8, !tbaa !149
  %34 = icmp eq i16 %33, 11
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !176
  %38 = getelementptr inbounds %struct.Camera, ptr %37, i64 0, i32 2
  %39 = load i8, ptr %38, align 8, !tbaa !314
  %40 = icmp eq i8 %39, 1
  %41 = select i1 %40, ptr @.str.27, ptr @.str.26
  br label %45

42:                                               ; preds = %25
  %43 = icmp eq i8 %6, 0
  %44 = select i1 %43, ptr @.str.29, ptr @.str.30
  br label %45

45:                                               ; preds = %27, %31, %22, %19, %16, %13, %10, %7, %42, %35
  %46 = phi ptr [ %41, %35 ], [ %44, %42 ], [ %9, %7 ], [ %12, %10 ], [ %15, %13 ], [ %18, %16 ], [ %21, %19 ], [ %24, %22 ], [ @.str.28, %31 ], [ @.str.28, %27 ]
  ret ptr %46
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }
attributes #17 = { optsize }
attributes #18 = { cold optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 811}
!6 = !{!"RegionView3D", !7, i64 0, !7, i64 64, !7, i64 128, !7, i64 192, !7, i64 256, !7, i64 320, !7, i64 384, !7, i64 448, !7, i64 544, !9, i64 640, !9, i64 648, !9, i64 656, !9, i64 664, !9, i64 672, !9, i64 680, !9, i64 688, !7, i64 696, !7, i64 760, !10, i64 776, !10, i64 780, !10, i64 784, !10, i64 788, !7, i64 792, !10, i64 804, !7, i64 808, !7, i64 809, !7, i64 810, !7, i64 811, !7, i64 812, !7, i64 813, !7, i64 816, !11, i64 824, !11, i64 826, !7, i64 828, !11, i64 844, !11, i64 846, !10, i64 848, !7, i64 852, !10, i64 864, !7, i64 868}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"float", !7, i64 0}
!11 = !{!"short", !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!10, !10, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"double", !7, i64 0}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = !{i8 0, i8 2}
!20 = !{!21, !7, i64 4604}
!21 = !{!"Scene", !22, i64 0, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !24, i64 152, !9, i64 168, !9, i64 176, !7, i64 184, !7, i64 196, !7, i64 208, !7, i64 220, !23, i64 232, !23, i64 236, !23, i64 240, !11, i64 244, !7, i64 246, !7, i64 247, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !25, i64 280, !34, i64 4264, !24, i64 4296, !24, i64 4312, !9, i64 4328, !9, i64 4336, !9, i64 4344, !9, i64 4352, !9, i64 4360, !9, i64 4368, !11, i64 4376, !11, i64 4378, !23, i64 4380, !24, i64 4384, !35, i64 4400, !36, i64 4416, !39, i64 4600, !9, i64 4608, !40, i64 4616, !9, i64 4640, !41, i64 4648, !41, i64 4656, !27, i64 4664, !28, i64 4824, !42, i64 4888, !9, i64 4952}
!22 = !{!"ID", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !7, i64 32, !11, i64 98, !23, i64 100, !23, i64 104, !23, i64 108, !9, i64 112}
!23 = !{!"int", !7, i64 0}
!24 = !{!"ListBase", !9, i64 0, !9, i64 8}
!25 = !{!"RenderData", !26, i64 0, !9, i64 248, !9, i64 256, !29, i64 264, !30, i64 328, !23, i64 400, !23, i64 404, !23, i64 408, !10, i64 412, !23, i64 416, !23, i64 420, !23, i64 424, !23, i64 428, !11, i64 432, !11, i64 434, !10, i64 436, !10, i64 440, !10, i64 444, !10, i64 448, !10, i64 452, !11, i64 456, !11, i64 458, !11, i64 460, !11, i64 462, !11, i64 464, !11, i64 466, !23, i64 468, !11, i64 472, !11, i64 474, !11, i64 476, !11, i64 478, !11, i64 480, !11, i64 482, !23, i64 484, !23, i64 488, !11, i64 492, !11, i64 494, !23, i64 496, !23, i64 500, !11, i64 504, !11, i64 506, !11, i64 508, !11, i64 510, !11, i64 512, !7, i64 514, !7, i64 515, !23, i64 516, !23, i64 520, !23, i64 524, !11, i64 528, !11, i64 530, !11, i64 532, !11, i64 534, !11, i64 536, !11, i64 538, !11, i64 540, !11, i64 542, !31, i64 544, !31, i64 560, !32, i64 576, !24, i64 592, !11, i64 608, !11, i64 610, !10, i64 612, !10, i64 616, !10, i64 620, !10, i64 624, !23, i64 628, !10, i64 632, !10, i64 636, !10, i64 640, !10, i64 644, !11, i64 648, !11, i64 650, !11, i64 652, !11, i64 654, !11, i64 656, !11, i64 658, !10, i64 660, !10, i64 664, !11, i64 668, !11, i64 670, !10, i64 672, !10, i64 676, !7, i64 680, !23, i64 1704, !11, i64 1708, !11, i64 1710, !7, i64 1712, !7, i64 2480, !7, i64 2496, !7, i64 2512, !7, i64 2513, !7, i64 2514, !7, i64 2515, !23, i64 2520, !11, i64 2524, !11, i64 2526, !10, i64 2528, !10, i64 2532, !11, i64 2536, !11, i64 2538, !10, i64 2540, !11, i64 2544, !11, i64 2546, !23, i64 2548, !11, i64 2552, !11, i64 2554, !11, i64 2556, !11, i64 2558, !10, i64 2560, !10, i64 2564, !9, i64 2568, !23, i64 2576, !10, i64 2580, !7, i64 2584, !33, i64 2616, !23, i64 3976, !23, i64 3980}
!26 = !{!"ImageFormatData", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !11, i64 8, !11, i64 10, !10, i64 12, !7, i64 16, !7, i64 17, !7, i64 18, !27, i64 24, !28, i64 184}
!27 = !{!"ColorManagedViewSettings", !23, i64 0, !23, i64 4, !7, i64 8, !7, i64 72, !10, i64 136, !10, i64 140, !9, i64 144, !9, i64 152}
!28 = !{!"ColorManagedDisplaySettings", !7, i64 0}
!29 = !{!"QuicktimeCodecSettings", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24, !23, i64 28, !23, i64 32, !23, i64 36, !23, i64 40, !23, i64 44, !11, i64 48, !11, i64 50, !23, i64 52, !23, i64 56, !23, i64 60}
!30 = !{!"FFMpegCodecData", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24, !23, i64 28, !10, i64 32, !23, i64 36, !23, i64 40, !23, i64 44, !23, i64 48, !23, i64 52, !23, i64 56, !23, i64 60, !9, i64 64}
!31 = !{!"rctf", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!32 = !{!"rcti", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12}
!33 = !{!"BakeData", !26, i64 0, !7, i64 248, !11, i64 1272, !11, i64 1274, !11, i64 1276, !11, i64 1278, !10, i64 1280, !10, i64 1284, !7, i64 1288, !7, i64 1291, !7, i64 1292, !7, i64 1293, !7, i64 1296}
!34 = !{!"AudioData", !23, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !23, i64 16, !11, i64 20, !11, i64 22, !10, i64 24, !10, i64 28}
!35 = !{!"GameFraming", !7, i64 0, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15}
!36 = !{!"GameData", !35, i64 0, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !11, i64 32, !7, i64 34, !37, i64 40, !11, i64 64, !11, i64 66, !10, i64 68, !38, i64 72, !10, i64 128, !10, i64 132, !23, i64 136, !11, i64 140, !11, i64 142, !11, i64 144, !11, i64 146, !11, i64 148, !11, i64 150, !11, i64 152, !11, i64 154, !11, i64 156, !11, i64 158, !11, i64 160, !11, i64 162, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !10, i64 180}
!37 = !{!"GameDome", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !10, i64 8, !10, i64 12, !9, i64 16}
!38 = !{!"RecastData", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !23, i64 40, !10, i64 44, !10, i64 48, !11, i64 52, !11, i64 54}
!39 = !{!"UnitSettings", !10, i64 0, !7, i64 4, !7, i64 5, !11, i64 6}
!40 = !{!"PhysicsSettings", !7, i64 0, !23, i64 12, !23, i64 16, !23, i64 20}
!41 = !{!"long", !7, i64 0}
!42 = !{!"ColorManagedColorspaceSettings", !7, i64 0}
!43 = !{!9, !9, i64 0}
!44 = !{!21, !10, i64 4600}
!45 = !{!46, !10, i64 248}
!46 = !{!"View3D", !9, i64 0, !9, i64 8, !24, i64 16, !23, i64 32, !10, i64 36, !7, i64 40, !7, i64 56, !10, i64 72, !10, i64 76, !7, i64 80, !7, i64 81, !23, i64 84, !23, i64 88, !11, i64 92, !11, i64 94, !9, i64 96, !9, i64 104, !31, i64 112, !24, i64 128, !9, i64 144, !9, i64 152, !7, i64 160, !23, i64 224, !23, i64 228, !11, i64 232, !11, i64 234, !11, i64 236, !11, i64 238, !11, i64 240, !11, i64 242, !10, i64 244, !10, i64 248, !10, i64 252, !10, i64 256, !7, i64 260, !7, i64 272, !11, i64 284, !11, i64 286, !11, i64 288, !7, i64 290, !7, i64 291, !7, i64 292, !7, i64 293, !7, i64 294, !24, i64 296, !24, i64 312, !24, i64 328, !7, i64 344, !7, i64 345, !7, i64 346, !7, i64 347, !9, i64 352, !9, i64 360, !9, i64 368}
!47 = !{!48, !10, i64 12}
!48 = !{!"CameraParams", !7, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !23, i64 40, !10, i64 44, !10, i64 48, !23, i64 52, !23, i64 56, !23, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !31, i64 76, !7, i64 92}
!49 = !{!50, !11, i64 208}
!50 = !{!"ARegion", !9, i64 0, !9, i64 8, !51, i64 16, !32, i64 176, !32, i64 192, !11, i64 208, !11, i64 210, !11, i64 212, !11, i64 214, !11, i64 216, !11, i64 218, !10, i64 220, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !11, i64 232, !11, i64 234, !11, i64 236, !11, i64 238, !9, i64 240, !24, i64 248, !24, i64 264, !24, i64 280, !24, i64 296, !24, i64 312, !24, i64 328, !24, i64 344, !9, i64 360, !9, i64 368, !9, i64 376}
!51 = !{!"View2D", !31, i64 0, !31, i64 16, !32, i64 32, !32, i64 48, !32, i64 64, !7, i64 80, !7, i64 88, !10, i64 96, !10, i64 100, !11, i64 104, !11, i64 106, !11, i64 108, !11, i64 110, !11, i64 112, !11, i64 114, !11, i64 116, !11, i64 118, !11, i64 120, !11, i64 122, !11, i64 124, !11, i64 126, !9, i64 128, !23, i64 136, !23, i64 140, !9, i64 144, !9, i64 152}
!52 = !{!50, !11, i64 210}
!53 = !{i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 12, i64 4, !14}
!54 = !{!46, !9, i64 96}
!55 = !{!21, !23, i64 764}
!56 = !{!21, !23, i64 768}
!57 = !{!21, !10, i64 892}
!58 = !{!21, !10, i64 896}
!59 = !{!31, !10, i64 8}
!60 = !{!11, !11, i64 0}
!61 = !{!31, !10, i64 4}
!62 = !{!31, !10, i64 0}
!63 = !{!31, !10, i64 12}
!64 = !{!50, !9, i64 376}
!65 = !{!6, !9, i64 672}
!66 = !{!50, !23, i64 176}
!67 = !{!50, !23, i64 184}
!68 = !{!69, !9, i64 32}
!69 = !{!"ViewContext", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !7, i64 56}
!70 = !{!46, !11, i64 240}
!71 = !{!69, !9, i64 0}
!72 = !{!69, !9, i64 24}
!73 = !{!21, !9, i64 168}
!74 = !{!75, !9, i64 32}
!75 = !{!"Base", !9, i64 0, !9, i64 8, !23, i64 16, !23, i64 20, !23, i64 24, !11, i64 28, !11, i64 30, !9, i64 32}
!76 = !{!77, !23, i64 432}
!77 = !{!"Object", !22, i64 0, !9, i64 120, !9, i64 128, !11, i64 136, !11, i64 138, !23, i64 140, !23, i64 144, !23, i64 148, !7, i64 152, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !78, i64 312, !9, i64 360, !24, i64 368, !24, i64 384, !24, i64 400, !24, i64 416, !23, i64 432, !23, i64 436, !9, i64 440, !9, i64 448, !23, i64 456, !23, i64 460, !7, i64 464, !7, i64 476, !7, i64 488, !7, i64 500, !7, i64 512, !7, i64 524, !7, i64 536, !7, i64 548, !7, i64 560, !7, i64 576, !7, i64 592, !7, i64 604, !10, i64 616, !10, i64 620, !7, i64 624, !7, i64 688, !7, i64 752, !7, i64 816, !7, i64 880, !23, i64 944, !11, i64 948, !11, i64 950, !11, i64 952, !11, i64 954, !11, i64 956, !11, i64 958, !11, i64 960, !11, i64 962, !11, i64 964, !7, i64 966, !7, i64 967, !23, i64 968, !23, i64 972, !23, i64 976, !23, i64 980, !23, i64 984, !10, i64 988, !10, i64 992, !10, i64 996, !10, i64 1000, !10, i64 1004, !10, i64 1008, !10, i64 1012, !10, i64 1016, !10, i64 1020, !10, i64 1024, !10, i64 1028, !10, i64 1032, !11, i64 1036, !11, i64 1038, !11, i64 1040, !7, i64 1042, !7, i64 1043, !11, i64 1044, !7, i64 1046, !7, i64 1047, !10, i64 1048, !10, i64 1052, !24, i64 1056, !24, i64 1072, !24, i64 1088, !24, i64 1104, !10, i64 1120, !11, i64 1124, !11, i64 1126, !7, i64 1128, !23, i64 1144, !23, i64 1148, !9, i64 1152, !7, i64 1160, !7, i64 1161, !11, i64 1162, !7, i64 1164, !24, i64 1176, !24, i64 1192, !24, i64 1208, !24, i64 1224, !9, i64 1240, !9, i64 1248, !9, i64 1256, !7, i64 1264, !7, i64 1265, !11, i64 1266, !10, i64 1268, !9, i64 1272, !9, i64 1280, !9, i64 1288, !9, i64 1296, !41, i64 1304, !41, i64 1312, !23, i64 1320, !23, i64 1324, !24, i64 1328, !24, i64 1344, !9, i64 1360, !9, i64 1368, !9, i64 1376, !7, i64 1384, !9, i64 1392, !24, i64 1400, !9, i64 1416}
!78 = !{!"bAnimVizSettings", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !23, i64 32, !23, i64 36, !23, i64 40, !23, i64 44}
!79 = !{!46, !11, i64 232}
!80 = !{!21, !9, i64 176}
!81 = !{!46, !7, i64 344}
!82 = !{!83, !11, i64 8968}
!83 = !{!"UserDef", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !7, i64 20, !7, i64 788, !7, i64 1556, !7, i64 2580, !7, i64 3348, !7, i64 4116, !7, i64 4884, !7, i64 5652, !7, i64 6420, !7, i64 7444, !23, i64 8468, !11, i64 8472, !11, i64 8474, !11, i64 8476, !11, i64 8478, !11, i64 8480, !11, i64 8482, !23, i64 8484, !23, i64 8488, !23, i64 8492, !11, i64 8496, !11, i64 8498, !23, i64 8500, !23, i64 8504, !23, i64 8508, !23, i64 8512, !23, i64 8516, !23, i64 8520, !23, i64 8524, !11, i64 8528, !11, i64 8530, !11, i64 8532, !11, i64 8534, !24, i64 8536, !24, i64 8552, !24, i64 8568, !24, i64 8584, !24, i64 8600, !24, i64 8616, !24, i64 8632, !7, i64 8648, !11, i64 8712, !11, i64 8714, !11, i64 8716, !11, i64 8718, !11, i64 8720, !11, i64 8722, !11, i64 8724, !11, i64 8726, !7, i64 8728, !11, i64 8896, !11, i64 8898, !11, i64 8900, !11, i64 8902, !11, i64 8904, !11, i64 8906, !11, i64 8908, !11, i64 8910, !23, i64 8912, !23, i64 8916, !11, i64 8920, !11, i64 8922, !11, i64 8924, !11, i64 8926, !11, i64 8928, !11, i64 8930, !11, i64 8932, !11, i64 8934, !11, i64 8936, !11, i64 8938, !7, i64 8940, !7, i64 8941, !7, i64 8942, !7, i64 8943, !11, i64 8944, !11, i64 8946, !11, i64 8948, !11, i64 8950, !11, i64 8952, !11, i64 8954, !10, i64 8956, !10, i64 8960, !23, i64 8964, !11, i64 8968, !11, i64 8970, !10, i64 8972, !11, i64 8976, !11, i64 8978, !11, i64 8980, !11, i64 8982, !84, i64 8984, !7, i64 9760, !7, i64 9772, !11, i64 9788, !7, i64 9790, !7, i64 9791, !7, i64 9792, !7, i64 9872, !23, i64 10896, !23, i64 10900, !10, i64 10904, !10, i64 10908, !23, i64 10912, !11, i64 10916, !11, i64 10918, !11, i64 10920, !11, i64 10922, !11, i64 10924, !11, i64 10926, !85, i64 10928}
!84 = !{!"ColorBand", !11, i64 0, !11, i64 2, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8}
!85 = !{!"WalkNavigation", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !11, i64 24, !7, i64 26}
!86 = !{!6, !11, i64 826}
!87 = !{!88, !23, i64 2096}
!88 = !{!"Global", !9, i64 0, !7, i64 8, !7, i64 1032, !7, i64 2056, !7, i64 2057, !7, i64 2058, !24, i64 2064, !7, i64 2080, !7, i64 2081, !7, i64 2082, !11, i64 2084, !11, i64 2086, !11, i64 2088, !7, i64 2090, !11, i64 2092, !23, i64 2096, !23, i64 2100, !7, i64 2104, !23, i64 2108, !23, i64 2112, !7, i64 2116}
!89 = !{!75, !23, i64 16}
!90 = !{!46, !23, i64 224}
!91 = !{!50, !11, i64 232}
!92 = !{!23, !23, i64 0}
!93 = !{!94, !9, i64 40}
!94 = !{!"ImBuf", !9, i64 0, !9, i64 8, !23, i64 16, !23, i64 20, !7, i64 24, !23, i64 28, !23, i64 32, !23, i64 36, !9, i64 40, !9, i64 48, !7, i64 56, !23, i64 72, !23, i64 76, !23, i64 80, !23, i64 84, !9, i64 88, !9, i64 96, !9, i64 104, !10, i64 112, !7, i64 120, !23, i64 280, !23, i64 284, !23, i64 288, !23, i64 292, !9, i64 296, !9, i64 304, !23, i64 312, !7, i64 316, !7, i64 1340, !9, i64 2368, !23, i64 2376, !9, i64 2384, !23, i64 2392, !23, i64 2396, !9, i64 2400, !9, i64 2408, !9, i64 2416, !9, i64 2424, !23, i64 2432, !32, i64 2436, !95, i64 2456}
!95 = !{!"DDSData", !23, i64 0, !23, i64 4, !9, i64 8, !23, i64 16}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !13}
!102 = !{!103, !9, i64 16}
!103 = !{!"View3DAfter", !9, i64 0, !9, i64 8, !9, i64 16, !11, i64 24}
!104 = !{!103, !11, i64 24}
!105 = !{!32, !23, i64 0}
!106 = !{!32, !23, i64 4}
!107 = !{!32, !23, i64 8}
!108 = !{!32, !23, i64 12}
!109 = !{!110, !9, i64 8}
!110 = !{!"ViewDepths", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !9, i64 8, !7, i64 16, !7, i64 32}
!111 = !{!110, !11, i64 0}
!112 = !{!110, !11, i64 2}
!113 = !{!110, !11, i64 4}
!114 = !{!110, !11, i64 6}
!115 = !{!110, !7, i64 32}
!116 = !{!6, !9, i64 664}
!117 = distinct !{!117, !13}
!118 = !{!46, !11, i64 242}
!119 = !{!83, !10, i64 8972}
!120 = !{!83, !11, i64 8924}
!121 = !{!21, !9, i64 144}
!122 = !{!77, !11, i64 952}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !13}
!125 = !{!46, !9, i64 296}
!126 = !{!46, !9, i64 312}
!127 = !{!46, !9, i64 328}
!128 = !{!46, !7, i64 346}
!129 = !{!103, !9, i64 0}
!130 = distinct !{!130, !13}
!131 = !{!46, !7, i64 345}
!132 = distinct !{!132, !13}
!133 = distinct !{!133, !13}
!134 = distinct !{!134, !13}
!135 = !{!77, !7, i64 1160}
!136 = !{!75, !23, i64 24}
!137 = !{!88, !9, i64 0}
!138 = !{!139, !9, i64 1888}
!139 = !{!"Main", !9, i64 0, !9, i64 8, !7, i64 16, !11, i64 1040, !11, i64 1042, !11, i64 1044, !11, i64 1046, !41, i64 1048, !7, i64 1056, !11, i64 1072, !9, i64 1080, !24, i64 1088, !24, i64 1104, !24, i64 1120, !24, i64 1136, !24, i64 1152, !24, i64 1168, !24, i64 1184, !24, i64 1200, !24, i64 1216, !24, i64 1232, !24, i64 1248, !24, i64 1264, !24, i64 1280, !24, i64 1296, !24, i64 1312, !24, i64 1328, !24, i64 1344, !24, i64 1360, !24, i64 1376, !24, i64 1392, !24, i64 1408, !24, i64 1424, !24, i64 1440, !24, i64 1456, !24, i64 1472, !24, i64 1488, !24, i64 1504, !24, i64 1520, !24, i64 1536, !24, i64 1552, !24, i64 1568, !24, i64 1584, !24, i64 1600, !24, i64 1616, !7, i64 1632, !9, i64 1888, !9, i64 1896}
!140 = !{!24, !9, i64 0}
!141 = !{!142, !9, i64 0}
!142 = !{!"DupliObject", !9, i64 0, !9, i64 8, !9, i64 16, !7, i64 24, !7, i64 88, !7, i64 100, !11, i64 108, !7, i64 110, !7, i64 111, !7, i64 112, !9, i64 144}
!143 = !{!142, !9, i64 16}
!144 = !{!77, !9, i64 1416}
!145 = !{!77, !7, i64 1046}
!146 = !{!77, !11, i64 1044}
!147 = !{i64 0, i64 96, !148, i64 96, i64 4, !92, i64 100, i64 4, !92}
!148 = !{!7, !7, i64 0}
!149 = !{!77, !11, i64 136}
!150 = !{!142, !11, i64 108}
!151 = !{!142, !7, i64 111}
!152 = distinct !{!152, !13}
!153 = !{!21, !11, i64 4558}
!154 = !{!155, !9, i64 184}
!155 = !{!"bScreen", !22, i64 0, !24, i64 120, !24, i64 136, !24, i64 152, !24, i64 168, !9, i64 184, !9, i64 192, !23, i64 200, !23, i64 204, !11, i64 208, !11, i64 210, !11, i64 212, !11, i64 214, !11, i64 216, !11, i64 218, !11, i64 220, !11, i64 222, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !9, i64 232, !9, i64 240}
!156 = !{!41, !41, i64 0}
!157 = !{!158, !7, i64 72}
!158 = !{!"ScrArea", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !32, i64 56, !7, i64 72, !7, i64 73, !11, i64 74, !11, i64 76, !11, i64 78, !11, i64 80, !11, i64 82, !11, i64 84, !7, i64 86, !7, i64 87, !9, i64 88, !24, i64 96, !24, i64 112, !24, i64 128, !24, i64 144}
!159 = !{!158, !9, i64 96}
!160 = !{i64 0, i64 16481}
!161 = distinct !{!161, !13}
!162 = !{!6, !10, i64 788}
!163 = !{!46, !11, i64 236}
!164 = !{!21, !11, i64 888}
!165 = distinct !{!165, !13}
!166 = distinct !{!166, !13}
!167 = !{!168, !9, i64 16}
!168 = !{!"View3DShadow", !9, i64 0, !9, i64 8, !9, i64 16}
!169 = !{!50, !11, i64 214}
!170 = !{!6, !7, i64 809}
!171 = distinct !{!171, !13}
!172 = !{i64 0, i64 4, !92, i64 4, i64 4, !92, i64 8, i64 4, !92, i64 12, i64 4, !92}
!173 = !{!50, !23, i64 180}
!174 = !{!50, !23, i64 188}
!175 = !{!21, !9, i64 136}
!176 = !{!77, !9, i64 296}
!177 = !{!178, !23, i64 1344}
!178 = !{!"Mesh", !22, i64 0, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !179, i64 280, !179, i64 480, !179, i64 680, !179, i64 880, !179, i64 1080, !23, i64 1280, !23, i64 1284, !23, i64 1288, !23, i64 1292, !23, i64 1296, !23, i64 1300, !23, i64 1304, !7, i64 1308, !7, i64 1320, !7, i64 1332, !23, i64 1344, !11, i64 1348, !11, i64 1350, !10, i64 1352, !23, i64 1356, !7, i64 1360, !7, i64 1361, !7, i64 1362, !7, i64 1363, !7, i64 1364, !7, i64 1365, !11, i64 1366, !9, i64 1368}
!179 = !{!"CustomData", !9, i64 0, !7, i64 8, !23, i64 172, !23, i64 176, !23, i64 180, !9, i64 184, !9, i64 192}
!180 = !{!6, !10, i64 848}
!181 = !{!6, !7, i64 810}
!182 = distinct !{!182, !13}
!183 = distinct !{!183, !13}
!184 = !{!46, !23, i64 88}
!185 = distinct !{!185, !13}
!186 = distinct !{!186, !13}
!187 = !{!94, !9, i64 48}
!188 = !{!46, !9, i64 24}
!189 = !{!46, !9, i64 16}
!190 = !{!21, !23, i64 232}
!191 = !{!48, !10, i64 4}
!192 = !{!46, !10, i64 244}
!193 = !{!21, !9, i64 4360}
!194 = !{!195, !16, i64 8}
!195 = !{!"ScreenFrameRateInfo", !16, i64 0, !16, i64 8, !7, i64 16, !11, i64 48}
!196 = !{!195, !16, i64 0}
!197 = !{!195, !11, i64 48}
!198 = distinct !{!198, !13}
!199 = !{!21, !11, i64 820}
!200 = !{!21, !10, i64 900}
!201 = !{!83, !11, i64 8948}
!202 = !{!21, !23, i64 800}
!203 = !{!21, !10, i64 848}
!204 = !{!21, !10, i64 852}
!205 = !{!46, !10, i64 120}
!206 = !{!46, !10, i64 124}
!207 = !{!208, !9, i64 176}
!208 = !{!"RenderEngineType", !9, i64 0, !9, i64 8, !7, i64 16, !7, i64 80, !23, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !209, i64 200}
!209 = !{!"ExtensionRNA", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!210 = !{!208, !9, i64 184}
!211 = !{!83, !23, i64 8964}
!212 = !{!6, !9, i64 656}
!213 = !{!214, !9, i64 0}
!214 = !{!"RenderEngine", !9, i64 0, !9, i64 8, !23, i64 16, !9, i64 24, !23, i64 32, !23, i64 36, !23, i64 40, !9, i64 48, !24, i64 56, !7, i64 72, !23, i64 584, !23, i64 588, !9, i64 592, !23, i64 600, !23, i64 604, !31, i64 608, !32, i64 624, !7, i64 640, !23, i64 704, !23, i64 708}
!215 = !{!46, !10, i64 112}
!216 = !{!46, !10, i64 116}
!217 = !{!83, !23, i64 8484}
!218 = !{!142, !7, i64 110}
!219 = distinct !{!219, !13}
!220 = !{!77, !23, i64 944}
!221 = !{!222, !10, i64 140}
!222 = !{!"Lamp", !22, i64 0, !9, i64 120, !11, i64 128, !11, i64 130, !23, i64 132, !11, i64 136, !11, i64 138, !10, i64 140, !10, i64 144, !10, i64 148, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !10, i64 180, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !9, i64 200, !11, i64 208, !11, i64 210, !10, i64 212, !10, i64 216, !10, i64 220, !10, i64 224, !10, i64 228, !10, i64 232, !10, i64 236, !11, i64 240, !11, i64 242, !11, i64 244, !11, i64 246, !7, i64 248, !7, i64 249, !11, i64 250, !11, i64 252, !11, i64 254, !11, i64 256, !11, i64 258, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !11, i64 276, !11, i64 278, !11, i64 280, !11, i64 282, !11, i64 284, !11, i64 286, !10, i64 288, !10, i64 292, !10, i64 296, !10, i64 300, !10, i64 304, !10, i64 308, !10, i64 312, !10, i64 316, !10, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !10, i64 336, !11, i64 340, !7, i64 342, !9, i64 344, !7, i64 352, !11, i64 496, !11, i64 498, !7, i64 500, !9, i64 504, !9, i64 512}
!223 = !{!222, !10, i64 144}
!224 = !{!222, !10, i64 148}
!225 = !{!222, !10, i64 172}
!226 = !{!227, !23, i64 96}
!227 = !{!"SceneRenderLayer", !9, i64 0, !9, i64 8, !7, i64 16, !9, i64 80, !9, i64 88, !23, i64 96, !23, i64 100, !23, i64 104, !23, i64 108, !23, i64 112, !23, i64 116, !23, i64 120, !10, i64 124, !228, i64 128}
!228 = !{!"FreestyleConfig", !24, i64 0, !23, i64 16, !23, i64 20, !23, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !24, i64 40}
!229 = !{!6, !9, i64 640}
!230 = !{!46, !11, i64 286}
!231 = !{!46, !7, i64 290}
!232 = !{!46, !11, i64 288}
!233 = distinct !{!233, !13}
!234 = distinct !{!234, !13}
!235 = !{!39, !7, i64 4}
!236 = !{!39, !10, i64 0}
!237 = distinct !{!237, !13}
!238 = !{!77, !9, i64 1256}
!239 = !{!240, !23, i64 100}
!240 = !{!"Group", !22, i64 0, !24, i64 120, !23, i64 136, !7, i64 140}
!241 = distinct !{!241, !13}
!242 = distinct !{!242, !13}
!243 = distinct !{!243, !13}
!244 = distinct !{!244, !13}
!245 = distinct !{!245, !13}
!246 = !{!247, !9, i64 24}
!247 = !{!"BGpic", !9, i64 0, !9, i64 8, !9, i64 16, !248, i64 24, !9, i64 64, !249, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !11, i64 96, !11, i64 98, !11, i64 100, !11, i64 102}
!248 = !{!"ImageUser", !9, i64 0, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !7, i64 24, !7, i64 25, !7, i64 26, !7, i64 27, !11, i64 28, !11, i64 30, !11, i64 32, !11, i64 34, !23, i64 36}
!249 = !{!"MovieClipUser", !23, i64 0, !11, i64 4, !11, i64 6}
!250 = !{!247, !11, i64 98}
!251 = !{!247, !11, i64 96}
!252 = !{!247, !11, i64 100}
!253 = !{!247, !9, i64 16}
!254 = !{!21, !23, i64 680}
!255 = !{!256, !11, i64 1248}
!256 = !{!"Image", !22, i64 0, !7, i64 120, !9, i64 1144, !9, i64 1152, !9, i64 1160, !9, i64 1168, !7, i64 1176, !11, i64 1240, !11, i64 1242, !11, i64 1244, !11, i64 1246, !11, i64 1248, !11, i64 1250, !23, i64 1252, !11, i64 1256, !11, i64 1258, !11, i64 1260, !11, i64 1262, !11, i64 1264, !11, i64 1266, !23, i64 1268, !9, i64 1272, !9, i64 1280, !9, i64 1288, !10, i64 1296, !23, i64 1300, !11, i64 1304, !11, i64 1306, !23, i64 1308, !23, i64 1312, !7, i64 1316, !7, i64 1317, !11, i64 1318, !7, i64 1320, !10, i64 1336, !10, i64 1340, !42, i64 1344, !7, i64 1408, !7, i64 1409, !7, i64 1416}
!257 = !{!247, !11, i64 58}
!258 = !{!256, !10, i64 1336}
!259 = !{!21, !9, i64 128}
!260 = !{!247, !9, i64 64}
!261 = !{!262, !10, i64 1168}
!262 = !{!"MovieClip", !22, i64 0, !9, i64 120, !7, i64 128, !23, i64 1152, !23, i64 1156, !7, i64 1160, !10, i64 1168, !10, i64 1172, !9, i64 1176, !9, i64 1184, !9, i64 1192, !263, i64 1200, !9, i64 1528, !269, i64 1536, !23, i64 2312, !23, i64 2316, !23, i64 2320, !23, i64 2324, !42, i64 2328}
!263 = !{!"MovieTracking", !264, i64 0, !265, i64 72, !24, i64 128, !24, i64 144, !266, i64 160, !267, i64 184, !9, i64 232, !9, i64 240, !24, i64 248, !23, i64 264, !23, i64 268, !9, i64 272, !268, i64 280}
!264 = !{!"MovieTrackingSettings", !23, i64 0, !11, i64 4, !11, i64 6, !10, i64 8, !11, i64 12, !11, i64 14, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !10, i64 24, !11, i64 28, !11, i64 30, !23, i64 32, !23, i64 36, !23, i64 40, !11, i64 44, !11, i64 46, !10, i64 48, !23, i64 52, !23, i64 56, !10, i64 60, !10, i64 64, !23, i64 68}
!265 = !{!"MovieTrackingCamera", !9, i64 0, !11, i64 8, !11, i64 10, !10, i64 12, !10, i64 16, !10, i64 20, !11, i64 24, !11, i64 26, !7, i64 28, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52}
!266 = !{!"MovieTrackingReconstruction", !23, i64 0, !10, i64 4, !23, i64 8, !23, i64 12, !9, i64 16}
!267 = !{!"MovieTrackingStabilization", !23, i64 0, !23, i64 4, !23, i64 8, !10, i64 12, !9, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !23, i64 36, !23, i64 40, !10, i64 44}
!268 = !{!"MovieTrackingDopesheet", !23, i64 0, !11, i64 4, !11, i64 6, !24, i64 8, !24, i64 24, !23, i64 40, !23, i64 44}
!269 = !{!"MovieClipProxy", !7, i64 0, !11, i64 768, !11, i64 770, !11, i64 772, !11, i64 774}
!270 = !{!94, !23, i64 28}
!271 = !{!94, !23, i64 20}
!272 = !{!94, !23, i64 16}
!273 = !{!247, !10, i64 88}
!274 = !{!94, !23, i64 292}
!275 = distinct !{!275, !13}
!276 = !{!247, !10, i64 92}
!277 = distinct !{!277, !13}
!278 = !{!279, !11, i64 200}
!279 = !{!"World", !22, i64 0, !9, i64 120, !11, i64 128, !11, i64 130, !11, i64 132, !11, i64 134, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !10, i64 180, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !11, i64 200, !11, i64 202, !11, i64 204, !11, i64 206, !11, i64 208, !11, i64 210, !11, i64 212, !11, i64 214, !10, i64 216, !10, i64 220, !10, i64 224, !10, i64 228, !10, i64 232, !10, i64 236, !10, i64 240, !10, i64 244, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !11, i64 264, !11, i64 266, !11, i64 268, !11, i64 270, !10, i64 272, !10, i64 276, !10, i64 280, !10, i64 284, !11, i64 288, !11, i64 290, !11, i64 292, !11, i64 294, !10, i64 296, !10, i64 300, !10, i64 304, !10, i64 308, !10, i64 312, !10, i64 316, !10, i64 320, !11, i64 324, !11, i64 326, !11, i64 328, !11, i64 330, !11, i64 332, !11, i64 334, !9, i64 336, !9, i64 344, !9, i64 352, !7, i64 360, !11, i64 504, !11, i64 506, !7, i64 508, !9, i64 512, !9, i64 520}
!280 = distinct !{!280, !13, !281, !282}
!281 = !{!"llvm.loop.isvectorized", i32 1}
!282 = !{!"llvm.loop.unroll.runtime.disable"}
!283 = distinct !{!283, !13}
!284 = distinct !{!284, !13}
!285 = distinct !{!285, !13}
!286 = distinct !{!286, !13}
!287 = distinct !{!287, !13}
!288 = !{!6, !10, i64 864}
!289 = !{!6, !10, i64 776}
!290 = distinct !{!290, !13}
!291 = !{!292, !11, i64 130}
!292 = !{!"Camera", !22, i64 0, !9, i64 120, !7, i64 128, !7, i64 129, !11, i64 130, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !9, i64 176, !9, i64 184, !7, i64 192, !7, i64 193}
!293 = !{!292, !10, i64 132}
!294 = !{!21, !10, i64 840}
!295 = !{!21, !10, i64 844}
!296 = !{!292, !7, i64 129}
!297 = !{!292, !7, i64 192}
!298 = !{!292, !10, i64 156}
!299 = !{!292, !10, i64 160}
!300 = !{!83, !11, i64 8926}
!301 = !{!83, !10, i64 10908}
!302 = !{!83, !11, i64 8928}
!303 = distinct !{!303, !13}
!304 = !{!305, !9, i64 160}
!305 = !{!"bArmature", !22, i64 0, !9, i64 120, !24, i64 128, !24, i64 144, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !23, i64 192, !23, i64 196, !23, i64 200, !23, i64 204, !11, i64 208, !11, i64 210, !23, i64 212, !23, i64 216, !23, i64 220, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !23, i64 232, !23, i64 236, !23, i64 240, !23, i64 244, !23, i64 248, !23, i64 252}
!306 = !{!305, !9, i64 176}
!307 = !{!305, !9, i64 168}
!308 = !{!309, !23, i64 320}
!309 = !{!"Bone", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !24, i64 32, !7, i64 48, !10, i64 112, !7, i64 116, !7, i64 128, !7, i64 140, !23, i64 176, !7, i64 180, !7, i64 192, !7, i64 204, !10, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !10, i64 284, !10, i64 288, !10, i64 292, !10, i64 296, !10, i64 300, !10, i64 304, !7, i64 308, !23, i64 320, !11, i64 324, !7, i64 326}
!310 = !{!305, !23, i64 216}
!311 = !{!77, !11, i64 1266}
!312 = !{!77, !7, i64 1265}
!313 = !{!46, !9, i64 152}
!314 = !{!292, !7, i64 128}
