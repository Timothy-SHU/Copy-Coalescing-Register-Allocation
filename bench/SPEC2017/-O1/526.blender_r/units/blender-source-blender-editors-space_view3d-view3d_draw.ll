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
%struct.Camera = type { %struct.ID, ptr, i8, i8, i16, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, i8, [7 x i8] }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
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
@__const.view3d_main_area_clear.z_up = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 4
@__const.draw_rotation_guide.color = private unnamed_addr constant [4 x float] [float 0.000000e+00, float 0x3FDB1A9FC0000000, float 1.000000e+00, float 1.000000e+00], align 16
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
@switch.table.view3d_main_area_draw = private unnamed_addr constant [6 x i32] [i32 637, i32 637, i32 636, i32 636, i32 638, i32 638], align 4

; Function Attrs: nounwind uwtable
define dso_local void @circf(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @gluNewQuadric() #11
  tail call void @gluQuadricDrawStyle(ptr noundef %4, i32 noundef 100012) #11
  tail call void @glPushMatrix() #11
  tail call void @glTranslatef(float noundef %0, float noundef %1, float noundef 0.000000e+00) #11
  %5 = fpext float %2 to double
  tail call void @gluDisk(ptr noundef %4, double noundef 0.000000e+00, double noundef %5, i32 noundef 32, i32 noundef 1) #11
  tail call void @glPopMatrix() #11
  tail call void @gluDeleteQuadric(ptr noundef %4) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @gluNewQuadric() local_unnamed_addr #2

declare void @gluQuadricDrawStyle(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @glPushMatrix() local_unnamed_addr #2

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @gluDisk(ptr noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glPopMatrix() local_unnamed_addr #2

declare void @gluDeleteQuadric(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @circ(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @gluNewQuadric() #11
  tail call void @gluQuadricDrawStyle(ptr noundef %4, i32 noundef 100013) #11
  tail call void @glPushMatrix() #11
  tail call void @glTranslatef(float noundef %0, float noundef %1, float noundef 0.000000e+00) #11
  %5 = fpext float %2 to double
  tail call void @gluDisk(ptr noundef %4, double noundef 0.000000e+00, double noundef %5, i32 noundef 32, i32 noundef 1) #11
  tail call void @glPopMatrix() #11
  tail call void @gluDeleteQuadric(ptr noundef %4) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_clipping_set(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [4 x double], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #11
  %3 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 27
  %4 = load i8, ptr %3, align 1, !tbaa !34
  %5 = and i8 %4, 4
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds double, ptr %2, i64 1
  %8 = getelementptr inbounds double, ptr %2, i64 2
  %9 = getelementptr inbounds double, ptr %2, i64 3
  %10 = select i1 %6, i64 6, i64 4
  br label %11

11:                                               ; preds = %1, %11
  %12 = phi i64 [ 0, %1 ], [ %28, %11 ]
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 7, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !41
  %15 = fpext float %14 to double
  store double %15, ptr %2, align 16, !tbaa !42
  %16 = getelementptr inbounds float, ptr %13, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !41
  %18 = fpext float %17 to double
  store double %18, ptr %7, align 8, !tbaa !42
  %19 = getelementptr inbounds float, ptr %13, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !41
  %21 = fpext float %20 to double
  store double %21, ptr %8, align 16, !tbaa !42
  %22 = getelementptr inbounds float, ptr %13, i64 3
  %23 = load float, ptr %22, align 4, !tbaa !41
  %24 = fpext float %23 to double
  store double %24, ptr %9, align 8, !tbaa !42
  %25 = add nuw nsw i64 %12, 12288
  %26 = trunc i64 %25 to i32
  call void @glClipPlane(i32 noundef %26, ptr noundef nonnull %2) #11
  %27 = trunc i64 %25 to i32
  call void @glEnable(i32 noundef %27) #11
  %28 = add nuw nsw i64 %12, 1
  %29 = icmp eq i64 %28, %10
  br i1 %29, label %30, label %11, !llvm.loop !44

30:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #11
  ret void
}

declare void @glClipPlane(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_clipping_disable() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %4, %1 ]
  %3 = or disjoint i32 %2, 12288
  tail call void @glDisable(i32 noundef %3) #11
  %4 = add nuw nsw i32 %2, 1
  %5 = icmp eq i32 %4, 6
  br i1 %5, label %6, label %1, !llvm.loop !47

6:                                                ; preds = %1
  ret void
}

declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_clipping_enable() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %4, %1 ]
  %3 = or disjoint i32 %2, 12288
  tail call void @glEnable(i32 noundef %3) #11
  %4 = add nuw nsw i32 %2, 1
  %5 = icmp eq i32 %4, 6
  br i1 %5, label %6, label %1, !llvm.loop !48

6:                                                ; preds = %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @ED_view3d_clipping_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = icmp eq i8 %2, 0
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 8
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 7
  %7 = select i1 %4, ptr %6, ptr %5
  %8 = load float, ptr %1, align 4, !tbaa !41
  %9 = load float, ptr %7, align 4, !tbaa !41
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !41
  %12 = getelementptr inbounds float, ptr %7, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !41
  %14 = fmul float %11, %13
  %15 = tail call float @llvm.fmuladd.f32(float %8, float %9, float %14)
  %16 = getelementptr inbounds float, ptr %1, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !41
  %18 = getelementptr inbounds float, ptr %7, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !41
  %20 = tail call float @llvm.fmuladd.f32(float %17, float %19, float %15)
  %21 = getelementptr inbounds float, ptr %7, i64 3
  %22 = load float, ptr %21, align 4, !tbaa !41
  %23 = fadd float %20, %22
  %24 = fcmp ogt float %23, 0.000000e+00
  br i1 %24, label %25, label %67

25:                                               ; preds = %3
  %26 = getelementptr inbounds [4 x float], ptr %7, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !41
  %28 = getelementptr inbounds [4 x float], ptr %7, i64 1, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !41
  %30 = fmul float %11, %29
  %31 = tail call float @llvm.fmuladd.f32(float %8, float %27, float %30)
  %32 = getelementptr inbounds [4 x float], ptr %7, i64 1, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !41
  %34 = tail call float @llvm.fmuladd.f32(float %17, float %33, float %31)
  %35 = getelementptr inbounds [4 x float], ptr %7, i64 1, i64 3
  %36 = load float, ptr %35, align 4, !tbaa !41
  %37 = fadd float %36, %34
  %38 = fcmp ogt float %37, 0.000000e+00
  br i1 %38, label %39, label %67

39:                                               ; preds = %25
  %40 = getelementptr inbounds [4 x float], ptr %7, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !41
  %42 = getelementptr inbounds [4 x float], ptr %7, i64 2, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !41
  %44 = fmul float %11, %43
  %45 = tail call float @llvm.fmuladd.f32(float %8, float %41, float %44)
  %46 = getelementptr inbounds [4 x float], ptr %7, i64 2, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !41
  %48 = tail call float @llvm.fmuladd.f32(float %17, float %47, float %45)
  %49 = getelementptr inbounds [4 x float], ptr %7, i64 2, i64 3
  %50 = load float, ptr %49, align 4, !tbaa !41
  %51 = fadd float %50, %48
  %52 = fcmp ogt float %51, 0.000000e+00
  br i1 %52, label %53, label %67

53:                                               ; preds = %39
  %54 = getelementptr inbounds [4 x float], ptr %7, i64 3
  %55 = load float, ptr %54, align 4, !tbaa !41
  %56 = getelementptr inbounds [4 x float], ptr %7, i64 3, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !41
  %58 = fmul float %11, %57
  %59 = tail call float @llvm.fmuladd.f32(float %8, float %55, float %58)
  %60 = getelementptr inbounds [4 x float], ptr %7, i64 3, i64 2
  %61 = load float, ptr %60, align 4, !tbaa !41
  %62 = tail call float @llvm.fmuladd.f32(float %17, float %61, float %59)
  %63 = getelementptr inbounds [4 x float], ptr %7, i64 3, i64 3
  %64 = load float, ptr %63, align 4, !tbaa !41
  %65 = fadd float %64, %62
  %66 = fcmp ogt float %65, 0.000000e+00
  br i1 %66, label %68, label %67

67:                                               ; preds = %53, %39, %25, %3
  br label %68

68:                                               ; preds = %53, %67
  %69 = phi i8 [ 1, %67 ], [ 0, %53 ]
  ret i8 %69
}

; Function Attrs: nounwind uwtable
define dso_local float @ED_scene_grid_scale(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 38
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 38, i32 1
  %7 = load i8, ptr %6, align 4, !tbaa !49
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %10 = zext i8 %7 to i32
  call void @bUnit_GetSystem(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %10, i32 noundef 1) #11
  %11 = load ptr, ptr %3, align 8, !tbaa !72
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = call i32 @bUnit_GetBaseUnit(ptr noundef nonnull %11) #11
  %15 = icmp eq ptr %1, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %3, align 8, !tbaa !72
  %18 = call ptr @bUnit_GetNameDisplay(ptr noundef %17, i32 noundef %14) #11
  store ptr %18, ptr %1, align 8, !tbaa !72
  br label %19

19:                                               ; preds = %16, %13
  %20 = load ptr, ptr %3, align 8, !tbaa !72
  %21 = call double @bUnit_GetScaler(ptr noundef %20, i32 noundef %14) #11
  %22 = fptrunc double %21 to float
  %23 = load float, ptr %5, align 8, !tbaa !73
  %24 = fdiv float %22, %23
  br label %25

25:                                               ; preds = %9, %19
  %26 = phi float [ %24, %19 ], [ undef, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br i1 %12, label %27, label %28

27:                                               ; preds = %25, %2
  br label %28

28:                                               ; preds = %25, %27
  %29 = phi float [ %26, %25 ], [ 1.000000e+00, %27 ]
  ret float %29
}

declare void @bUnit_GetSystem(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @bUnit_GetBaseUnit(ptr noundef) local_unnamed_addr #2

declare ptr @bUnit_GetNameDisplay(ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @bUnit_GetScaler(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local float @ED_view3d_grid_scale(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 31
  %7 = load float, ptr %6, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 38
  %9 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 38, i32 1
  %10 = load i8, ptr %9, align 4, !tbaa !49
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %13 = zext i8 %10 to i32
  call void @bUnit_GetSystem(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %13, i32 noundef 1) #11
  %14 = load ptr, ptr %4, align 8, !tbaa !72
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = call i32 @bUnit_GetBaseUnit(ptr noundef nonnull %14) #11
  %18 = icmp eq ptr %2, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %4, align 8, !tbaa !72
  %21 = call ptr @bUnit_GetNameDisplay(ptr noundef %20, i32 noundef %17) #11
  store ptr %21, ptr %2, align 8, !tbaa !72
  br label %22

22:                                               ; preds = %19, %16
  %23 = load ptr, ptr %4, align 8, !tbaa !72
  %24 = call double @bUnit_GetScaler(ptr noundef %23, i32 noundef %17) #11
  %25 = fptrunc double %24 to float
  %26 = load float, ptr %8, align 8, !tbaa !73
  %27 = fdiv float %25, %26
  br label %28

28:                                               ; preds = %22, %12
  %29 = phi float [ %27, %22 ], [ undef, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br i1 %15, label %30, label %31

30:                                               ; preds = %28, %3
  br label %31

31:                                               ; preds = %28, %30
  %32 = phi float [ %29, %28 ], [ 1.000000e+00, %30 ]
  %33 = fmul float %7, %32
  ret float %33
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_calc_camera_border_size(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.rctf, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call fastcc void @view3d_camera_border(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i8 noundef zeroext 1, i8 noundef zeroext 1)
  %7 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 1
  %8 = load float, ptr %7, align 4, !tbaa !76
  %9 = load float, ptr %6, align 4, !tbaa !77
  %10 = fsub float %8, %9
  store float %10, ptr %4, align 4, !tbaa !41
  %11 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 3
  %12 = load float, ptr %11, align 4, !tbaa !78
  %13 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 2
  %14 = load float, ptr %13, align 4, !tbaa !79
  %15 = fsub float %12, %14
  %16 = getelementptr inbounds float, ptr %4, i64 1
  store float %15, ptr %16, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @view3d_camera_border(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4, i8 noundef zeroext %5, i8 noundef zeroext %6) unnamed_addr #0 {
  %8 = alloca %struct.CameraParams, align 4
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %8) #11
  call void @BKE_camera_params_init(ptr noundef nonnull %8) #11
  call void @BKE_camera_params_from_view3d(ptr noundef nonnull %8, ptr noundef %2, ptr noundef %3) #11
  %9 = icmp eq i8 %6, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.CameraParams, ptr %8, i64 0, i32 3
  store float 1.000000e+00, ptr %11, align 4, !tbaa !80
  br label %12

12:                                               ; preds = %10, %7
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %14 = load i16, ptr %13, align 8, !tbaa !82
  %15 = sext i16 %14 to i32
  %16 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %17 = load i16, ptr %16, align 2, !tbaa !85
  %18 = sext i16 %17 to i32
  call void @BKE_camera_params_compute_viewplane(ptr noundef nonnull %8, i32 noundef %15, i32 noundef %18, float noundef 1.000000e+00, float noundef 1.000000e+00) #11
  %19 = getelementptr inbounds %struct.CameraParams, ptr %8, i64 0, i32 19
  %20 = load float, ptr %19, align 4, !tbaa.struct !86
  %21 = getelementptr inbounds %struct.CameraParams, ptr %8, i64 0, i32 19, i32 1
  %22 = load float, ptr %21, align 4, !tbaa.struct !87
  %23 = getelementptr inbounds %struct.CameraParams, ptr %8, i64 0, i32 19, i32 2
  %24 = load float, ptr %23, align 4, !tbaa.struct !88
  %25 = getelementptr inbounds %struct.CameraParams, ptr %8, i64 0, i32 19, i32 3
  %26 = load float, ptr %25, align 4, !tbaa.struct !89
  call void @BKE_camera_params_init(ptr noundef nonnull %8) #11
  %27 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 32
  %28 = load float, ptr %27, align 4, !tbaa !90
  %29 = getelementptr inbounds %struct.CameraParams, ptr %8, i64 0, i32 11
  store float %28, ptr %29, align 4, !tbaa !91
  %30 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 33
  %31 = load float, ptr %30, align 8, !tbaa !92
  %32 = getelementptr inbounds %struct.CameraParams, ptr %8, i64 0, i32 12
  store float %31, ptr %32, align 4, !tbaa !93
  %33 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 15
  %34 = load ptr, ptr %33, align 8, !tbaa !94
  call void @BKE_camera_params_from_object(ptr noundef nonnull %8, ptr noundef %34) #11
  %35 = icmp eq i8 %5, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %12
  %37 = getelementptr inbounds %struct.CameraParams, ptr %8, i64 0, i32 4
  store float 0.000000e+00, ptr %37, align 4, !tbaa !95
  %38 = getelementptr inbounds %struct.CameraParams, ptr %8, i64 0, i32 5
  store float 0.000000e+00, ptr %38, align 4, !tbaa !96
  br label %39

39:                                               ; preds = %36, %12
  %40 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 33
  %41 = load i32, ptr %40, align 4, !tbaa !97
  %42 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 34
  %43 = load i32, ptr %42, align 8, !tbaa !98
  %44 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 63
  %45 = load float, ptr %44, align 4, !tbaa !99
  %46 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 64
  %47 = load float, ptr %46, align 8, !tbaa !100
  call void @BKE_camera_params_compute_viewplane(ptr noundef nonnull %8, i32 noundef %41, i32 noundef %43, float noundef %45, float noundef %47) #11
  %48 = load float, ptr %19, align 4, !tbaa.struct !86
  %49 = load float, ptr %21, align 4, !tbaa.struct !87
  %50 = load float, ptr %23, align 4, !tbaa.struct !88
  %51 = load float, ptr %25, align 4, !tbaa.struct !89
  %52 = fsub float %48, %20
  %53 = fsub float %22, %20
  %54 = fdiv float %52, %53
  %55 = load i16, ptr %13, align 8, !tbaa !82
  %56 = sitofp i16 %55 to float
  %57 = fmul float %54, %56
  store float %57, ptr %4, align 4, !tbaa !77
  %58 = fsub float %49, %20
  %59 = fdiv float %58, %53
  %60 = fmul float %59, %56
  %61 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 1
  store float %60, ptr %61, align 4, !tbaa !76
  %62 = fsub float %50, %24
  %63 = fsub float %26, %24
  %64 = fdiv float %62, %63
  %65 = load i16, ptr %16, align 2, !tbaa !85
  %66 = sitofp i16 %65 to float
  %67 = fmul float %64, %66
  %68 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  store float %67, ptr %68, align 4, !tbaa !79
  %69 = fsub float %51, %24
  %70 = fdiv float %69, %63
  %71 = fmul float %70, %66
  %72 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 3
  store float %71, ptr %72, align 4, !tbaa !78
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %8) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_calc_camera_border(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  tail call fastcc void @view3d_camera_border(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @view3d_opengl_read_pixels(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !102
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  tail call void @GPU_offscreen_bind(ptr noundef nonnull %12) #11
  tail call void @glReadBuffer(i32 noundef 36064) #11
  tail call void @glReadPixels(i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) #11
  %15 = load ptr, ptr %11, align 8, !tbaa !102
  tail call void @GPU_offscreen_unbind(ptr noundef %15) #11
  br label %23

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !103
  %19 = add nsw i32 %18, %1
  %20 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !104
  %22 = add nsw i32 %21, %2
  tail call void @glReadPixels(i32 noundef %19, i32 noundef %22, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) #11
  br label %23

23:                                               ; preds = %16, %14
  ret void
}

declare void @GPU_offscreen_bind(ptr noundef) local_unnamed_addr #2

declare void @glReadBuffer(i32 noundef) local_unnamed_addr #2

declare void @glReadPixels(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @GPU_offscreen_unbind(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @view3d_validate_backbuf(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [4 x double], align 16
  %3 = alloca [256 x i8], align 16
  %4 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !105
  %6 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 28
  %7 = load i16, ptr %6, align 8, !tbaa !107
  %8 = and i16 %7, 8
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %204, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 8, !tbaa !108
  %12 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !109
  %14 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 30
  %15 = load ptr, ptr %14, align 8, !tbaa !101
  %16 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !110
  %18 = icmp eq ptr %17, null
  br i1 %18, label %50, label %19

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.Base, ptr %17, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !111
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 27
  %23 = load i32, ptr %22, align 8, !tbaa !113
  %24 = and i32 %23, 12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %65

26:                                               ; preds = %19
  %27 = tail call zeroext i8 @BKE_paint_select_face_test(ptr noundef %21) #11
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %65

29:                                               ; preds = %26
  %30 = load ptr, ptr %20, align 8, !tbaa !111
  %31 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 27
  %32 = load i32, ptr %31, align 8, !tbaa !113
  %33 = and i32 %32, 16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 24
  %37 = load i16, ptr %36, align 8, !tbaa !116
  %38 = icmp sgt i16 %37, 2
  br i1 %38, label %65, label %39

39:                                               ; preds = %35, %29
  %40 = and i32 %32, 32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 24
  %44 = load i16, ptr %43, align 8, !tbaa !116
  %45 = icmp sgt i16 %44, 2
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i16, ptr %6, align 8, !tbaa !107
  %48 = and i16 %47, 4096
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %46, %42, %39, %10
  %51 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !117
  %53 = icmp eq ptr %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 24
  %56 = load i16, ptr %55, align 8, !tbaa !116
  %57 = icmp sgt i16 %56, 2
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i16, ptr %6, align 8, !tbaa !107
  %60 = and i16 %59, 4096
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58, %54, %50
  %63 = load i16, ptr %6, align 8, !tbaa !107
  %64 = and i16 %63, -9
  store i16 %64, ptr %6, align 8, !tbaa !107
  br label %204

65:                                               ; preds = %58, %46, %35, %26, %19
  %66 = load i16, ptr %6, align 8, !tbaa !107
  %67 = and i16 %66, 8
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %204, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 24
  %71 = load i16, ptr %70, align 8, !tbaa !116
  %72 = icmp sgt i16 %71, 2
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 47
  store i8 1, ptr %74, align 8, !tbaa !118
  br label %75

75:                                               ; preds = %73, %69
  tail call void @glDisable(i32 noundef 3024) #11
  %76 = tail call zeroext i8 @glIsEnabled(i32 noundef 32925) #11
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  tail call void @glDisable(i32 noundef 32925) #11
  br label %79

79:                                               ; preds = %78, %75
  %80 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 88), align 8, !tbaa !119
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %115, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 3
  %84 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 3, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !123
  %86 = load i32, ptr %83, align 4, !tbaa !124
  %87 = sub nsw i32 %85, %86
  %88 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 3, i32 3
  %89 = load i32, ptr %88, align 4, !tbaa !125
  %90 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 3, i32 2
  %91 = load i32, ptr %90, align 4, !tbaa !126
  %92 = sub nsw i32 %89, %91
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #11
  %93 = getelementptr inbounds %struct.RegionView3D, ptr %15, i64 0, i32 13
  %94 = load ptr, ptr %93, align 8, !tbaa !102
  %95 = icmp eq ptr %94, null
  br i1 %95, label %105, label %96

96:                                               ; preds = %82
  %97 = tail call i32 @GPU_offscreen_width(ptr noundef nonnull %94) #11
  %98 = icmp eq i32 %97, %87
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load ptr, ptr %93, align 8, !tbaa !102
  %101 = tail call i32 @GPU_offscreen_height(ptr noundef %100) #11
  %102 = icmp eq i32 %101, %92
  br i1 %102, label %105, label %103

103:                                              ; preds = %99, %96
  %104 = load ptr, ptr %93, align 8, !tbaa !102
  tail call void @GPU_offscreen_free(ptr noundef %104) #11
  store ptr null, ptr %93, align 8, !tbaa !102
  br label %105

105:                                              ; preds = %103, %99, %82
  %106 = load ptr, ptr %93, align 8, !tbaa !102
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = call ptr @GPU_offscreen_create(i32 noundef %87, i32 noundef %92, ptr noundef nonnull %3) #11
  store ptr %109, ptr %93, align 8, !tbaa !102
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load ptr, ptr @stderr, align 8, !tbaa !72
  %113 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef nonnull @.str.6, ptr noundef nonnull %3) #12
  br label %114

114:                                              ; preds = %111, %108, %105
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #11
  br label %115

115:                                              ; preds = %114, %79
  %116 = getelementptr inbounds %struct.RegionView3D, ptr %15, i64 0, i32 13
  %117 = load ptr, ptr %116, align 8, !tbaa !102
  %118 = icmp eq ptr %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  call void @GPU_offscreen_bind(ptr noundef nonnull %117) #11
  br label %131

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 3
  %122 = load i32, ptr %121, align 8, !tbaa !124
  %123 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 3, i32 2
  %124 = load i32, ptr %123, align 8, !tbaa !126
  %125 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 3, i32 1
  %126 = load i32, ptr %125, align 4, !tbaa !123
  %127 = sub nsw i32 %126, %122
  %128 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 3, i32 3
  %129 = load i32, ptr %128, align 4, !tbaa !125
  %130 = sub nsw i32 %129, %124
  call void @glScissor(i32 noundef %122, i32 noundef %124, i32 noundef %127, i32 noundef %130) #11
  br label %131

131:                                              ; preds = %120, %119
  call void @glClearColor(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #11
  %132 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 47
  %133 = load i8, ptr %132, align 8, !tbaa !118
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %131
  call void @glEnable(i32 noundef 2929) #11
  call void @glClear(i32 noundef 16640) #11
  br label %137

136:                                              ; preds = %131
  call void @glClear(i32 noundef 16384) #11
  call void @glDisable(i32 noundef 2929) #11
  br label %137

137:                                              ; preds = %136, %135
  %138 = getelementptr inbounds %struct.RegionView3D, ptr %15, i64 0, i32 32
  %139 = load i16, ptr %138, align 2, !tbaa !127
  %140 = and i16 %139, 4
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %170, label %142

142:                                              ; preds = %137
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #11
  %143 = getelementptr inbounds %struct.RegionView3D, ptr %15, i64 0, i32 27
  %144 = load i8, ptr %143, align 1, !tbaa !34
  %145 = and i8 %144, 4
  %146 = icmp eq i8 %145, 0
  %147 = getelementptr inbounds double, ptr %2, i64 1
  %148 = getelementptr inbounds double, ptr %2, i64 2
  %149 = getelementptr inbounds double, ptr %2, i64 3
  %150 = select i1 %146, i64 6, i64 4
  br label %151

151:                                              ; preds = %151, %142
  %152 = phi i64 [ 0, %142 ], [ %167, %151 ]
  %153 = getelementptr inbounds %struct.RegionView3D, ptr %15, i64 0, i32 7, i64 %152
  %154 = load float, ptr %153, align 4, !tbaa !41
  %155 = fpext float %154 to double
  store double %155, ptr %2, align 16, !tbaa !42
  %156 = getelementptr inbounds float, ptr %153, i64 1
  %157 = load float, ptr %156, align 4, !tbaa !41
  %158 = fpext float %157 to double
  store double %158, ptr %147, align 8, !tbaa !42
  %159 = getelementptr inbounds float, ptr %153, i64 2
  %160 = load float, ptr %159, align 4, !tbaa !41
  %161 = fpext float %160 to double
  store double %161, ptr %148, align 16, !tbaa !42
  %162 = getelementptr inbounds float, ptr %153, i64 3
  %163 = load float, ptr %162, align 4, !tbaa !41
  %164 = fpext float %163 to double
  store double %164, ptr %149, align 8, !tbaa !42
  %165 = trunc i64 %152 to i32
  %166 = add i32 %165, 12288
  call void @glClipPlane(i32 noundef %166, ptr noundef nonnull %2) #11
  call void @glEnable(i32 noundef %166) #11
  %167 = add nuw nsw i64 %152, 1
  %168 = icmp eq i64 %167, %150
  br i1 %168, label %169, label %151, !llvm.loop !44

169:                                              ; preds = %151
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #11
  br label %170

170:                                              ; preds = %169, %137
  %171 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !128
  %172 = or i32 %171, 16
  store i32 %172, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !128
  br i1 %18, label %183, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.Base, ptr %17, i64 0, i32 2
  %175 = load i32, ptr %174, align 8, !tbaa !130
  %176 = getelementptr inbounds %struct.View3D, ptr %5, i64 0, i32 22
  %177 = load i32, ptr %176, align 8, !tbaa !131
  %178 = and i32 %177, %175
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.Base, ptr %17, i64 0, i32 7
  %182 = load ptr, ptr %181, align 8, !tbaa !111
  call void @draw_object_backbufsel(ptr noundef %11, ptr noundef %5, ptr noundef %15, ptr noundef %182) #11
  br label %183

183:                                              ; preds = %180, %173, %170
  %184 = load ptr, ptr %116, align 8, !tbaa !102
  %185 = icmp eq ptr %184, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %183
  call void @GPU_offscreen_unbind(ptr noundef nonnull %184) #11
  br label %189

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 16
  store i16 0, ptr %188, align 8, !tbaa !132
  br label %189

189:                                              ; preds = %187, %186
  %190 = load i16, ptr %6, align 8, !tbaa !107
  %191 = and i16 %190, -9
  store i16 %191, ptr %6, align 8, !tbaa !107
  %192 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !128
  %193 = and i32 %192, -17
  store i32 %193, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !128
  store i8 0, ptr %132, align 8, !tbaa !118
  call void @glDisable(i32 noundef 2929) #11
  call void @glEnable(i32 noundef 3024) #11
  br i1 %77, label %195, label %194

194:                                              ; preds = %189
  call void @glEnable(i32 noundef 32925) #11
  br label %195

195:                                              ; preds = %194, %189
  %196 = load i16, ptr %138, align 2, !tbaa !127
  %197 = and i16 %196, 4
  %198 = icmp eq i16 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %195, %199
  %200 = phi i32 [ %202, %199 ], [ 0, %195 ]
  %201 = or disjoint i32 %200, 12288
  call void @glDisable(i32 noundef %201) #11
  %202 = add nuw nsw i32 %200, 1
  %203 = icmp eq i32 %202, 6
  br i1 %203, label %204, label %199, !llvm.loop !47

204:                                              ; preds = %199, %195, %65, %62, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @view3d_sample_backbuf(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %5 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !109
  %7 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 5
  %8 = load i16, ptr %7, align 8, !tbaa !82
  %9 = sext i16 %8 to i32
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %11, label %35

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 6
  %13 = load i16, ptr %12, align 2, !tbaa !85
  %14 = sext i16 %13 to i32
  %15 = icmp sgt i32 %14, %2
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  tail call void @view3d_validate_backbuf(ptr noundef %0)
  %17 = load ptr, ptr %5, align 8, !tbaa !109
  %18 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 30
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 13
  %21 = load ptr, ptr %20, align 8, !tbaa !102
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  tail call void @GPU_offscreen_bind(ptr noundef nonnull %21) #11
  tail call void @glReadBuffer(i32 noundef 36064) #11
  call void @glReadPixels(i32 noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 1, i32 noundef 6408, i32 noundef 5121, ptr noundef nonnull %4) #11
  %24 = load ptr, ptr %20, align 8, !tbaa !102
  call void @GPU_offscreen_unbind(ptr noundef %24) #11
  br label %32

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !103
  %28 = add nsw i32 %27, %1
  %29 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 3, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !104
  %31 = add nsw i32 %30, %2
  call void @glReadPixels(i32 noundef %28, i32 noundef %31, i32 noundef 1, i32 noundef 1, i32 noundef 6408, i32 noundef 5121, ptr noundef nonnull %4) #11
  br label %32

32:                                               ; preds = %23, %25
  call void @glReadBuffer(i32 noundef 1029) #11
  %33 = load i32, ptr %4, align 4, !tbaa !133
  %34 = call i32 @WM_framebuffer_to_index(i32 noundef %33) #11
  br label %35

35:                                               ; preds = %3, %11, %32
  %36 = phi i32 [ %34, %32 ], [ 0, %11 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %36
}

declare i32 @WM_framebuffer_to_index(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @view3d_read_backbuf(ptr nocapture noundef readonly %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4) local_unnamed_addr #0 {
  %6 = sext i16 %1 to i32
  %7 = tail call i16 @llvm.smax.i16(i16 %1, i16 0)
  %8 = sext i16 %3 to i32
  %9 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !109
  %11 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 5
  %12 = load i16, ptr %11, align 8, !tbaa !82
  %13 = icmp sgt i16 %12, %3
  %14 = add i16 %12, -1
  %15 = select i1 %13, i16 %3, i16 %14
  %16 = zext nneg i16 %7 to i32
  %17 = sext i16 %15 to i32
  %18 = icmp sgt i16 %7, %15
  br i1 %18, label %119, label %19

19:                                               ; preds = %5
  %20 = sext i16 %2 to i32
  %21 = tail call i16 @llvm.smax.i16(i16 %2, i16 0)
  %22 = sext i16 %4 to i32
  %23 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 6
  %24 = load i16, ptr %23, align 2, !tbaa !85
  %25 = icmp sgt i16 %24, %4
  %26 = add i16 %24, -1
  %27 = select i1 %25, i16 %4, i16 %26
  %28 = icmp sgt i16 %21, %27
  br i1 %28, label %119, label %29

29:                                               ; preds = %19
  %30 = zext nneg i16 %21 to i32
  %31 = sext i16 %27 to i32
  %32 = sub nsw i32 %17, %16
  %33 = add nsw i32 %32, 1
  %34 = sub nsw i32 %31, %30
  %35 = add nsw i32 %34, 1
  %36 = tail call ptr @IMB_allocImBuf(i32 noundef %33, i32 noundef %35, i8 noundef zeroext 32, i32 noundef 1) #11
  tail call void @view3d_validate_backbuf(ptr noundef %0)
  %37 = load ptr, ptr %9, align 8, !tbaa !109
  %38 = getelementptr inbounds %struct.ImBuf, ptr %36, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !134
  %40 = getelementptr inbounds %struct.ARegion, ptr %37, i64 0, i32 30
  %41 = load ptr, ptr %40, align 8, !tbaa !101
  %42 = getelementptr inbounds %struct.RegionView3D, ptr %41, i64 0, i32 13
  %43 = load ptr, ptr %42, align 8, !tbaa !102
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %29
  tail call void @GPU_offscreen_bind(ptr noundef nonnull %43) #11
  tail call void @glReadBuffer(i32 noundef 36064) #11
  tail call void @glReadPixels(i32 noundef %16, i32 noundef %30, i32 noundef %33, i32 noundef %35, i32 noundef 6408, i32 noundef 5121, ptr noundef %39) #11
  %46 = load ptr, ptr %42, align 8, !tbaa !102
  tail call void @GPU_offscreen_unbind(ptr noundef %46) #11
  br label %54

47:                                               ; preds = %29
  %48 = getelementptr inbounds %struct.ARegion, ptr %37, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !103
  %50 = add nsw i32 %49, %16
  %51 = getelementptr inbounds %struct.ARegion, ptr %37, i64 0, i32 3, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !104
  %53 = add nsw i32 %52, %30
  tail call void @glReadPixels(i32 noundef %50, i32 noundef %53, i32 noundef %33, i32 noundef %35, i32 noundef 6408, i32 noundef 5121, ptr noundef %39) #11
  br label %54

54:                                               ; preds = %45, %47
  tail call void @glReadBuffer(i32 noundef 1029) #11
  %55 = mul nsw i32 %35, %33
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %38, align 8, !tbaa !134
  br label %59

59:                                               ; preds = %57, %67
  %60 = phi i32 [ %62, %67 ], [ %55, %57 ]
  %61 = phi ptr [ %68, %67 ], [ %58, %57 ]
  %62 = add nsw i32 %60, -1
  %63 = load i32, ptr %61, align 4, !tbaa !133
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = tail call i32 @WM_framebuffer_to_index(i32 noundef %63) #11
  store i32 %66, ptr %61, align 4, !tbaa !133
  br label %67

67:                                               ; preds = %65, %59
  %68 = getelementptr inbounds i32, ptr %61, i64 1
  %69 = icmp eq i32 %62, 0
  br i1 %69, label %70, label %59, !llvm.loop !137

70:                                               ; preds = %67, %54
  %71 = icmp eq i16 %15, %3
  %72 = or i16 %2, %1
  %73 = icmp sgt i16 %72, -1
  %74 = and i1 %73, %71
  %75 = icmp eq i16 %27, %4
  %76 = and i1 %74, %75
  br i1 %76, label %119, label %77

77:                                               ; preds = %70
  %78 = sub nsw i32 %8, %6
  %79 = add nsw i32 %78, 1
  %80 = sub nsw i32 %22, %20
  %81 = add nsw i32 %80, 1
  %82 = tail call ptr @IMB_allocImBuf(i32 noundef %79, i32 noundef %81, i8 noundef zeroext 32, i32 noundef 1) #11
  %83 = icmp sgt i16 %2, %4
  br i1 %83, label %118, label %84

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.ImBuf, ptr %82, i64 0, i32 8
  %86 = load ptr, ptr %85, align 8, !tbaa !134
  %87 = load ptr, ptr %38, align 8, !tbaa !134
  %88 = icmp sgt i16 %1, %3
  br label %89

89:                                               ; preds = %84, %113
  %90 = phi i16 [ %2, %84 ], [ %116, %113 ]
  %91 = phi ptr [ %86, %84 ], [ %115, %113 ]
  %92 = phi ptr [ %87, %84 ], [ %114, %113 ]
  br i1 %88, label %113, label %93

93:                                               ; preds = %89
  %94 = icmp sgt i16 %21, %90
  %95 = icmp sgt i16 %90, %27
  br label %96

96:                                               ; preds = %93, %108
  %97 = phi i16 [ %1, %93 ], [ %110, %108 ]
  %98 = phi ptr [ %91, %93 ], [ %111, %108 ]
  %99 = phi ptr [ %92, %93 ], [ %109, %108 ]
  %100 = icmp slt i16 %97, %7
  %101 = icmp sgt i16 %97, %15
  %102 = or i1 %100, %101
  %103 = or i1 %94, %102
  %104 = or i1 %95, %103
  br i1 %104, label %108, label %105

105:                                              ; preds = %96
  %106 = load i32, ptr %99, align 4, !tbaa !133
  store i32 %106, ptr %98, align 4, !tbaa !133
  %107 = getelementptr inbounds i32, ptr %99, i64 1
  br label %108

108:                                              ; preds = %96, %105
  %109 = phi ptr [ %107, %105 ], [ %99, %96 ]
  %110 = add i16 %97, 1
  %111 = getelementptr inbounds i32, ptr %98, i64 1
  %112 = icmp sgt i16 %110, %3
  br i1 %112, label %113, label %96, !llvm.loop !138

113:                                              ; preds = %108, %89
  %114 = phi ptr [ %92, %89 ], [ %109, %108 ]
  %115 = phi ptr [ %91, %89 ], [ %111, %108 ]
  %116 = add i16 %90, 1
  %117 = icmp sgt i16 %116, %4
  br i1 %117, label %118, label %89, !llvm.loop !139

118:                                              ; preds = %113, %77
  tail call void @IMB_freeImBuf(ptr noundef %36) #11
  br label %119

119:                                              ; preds = %70, %19, %5, %118
  %120 = phi ptr [ %82, %118 ], [ null, %5 ], [ null, %19 ], [ %36, %70 ]
  ret ptr %120
}

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @view3d_sample_backbuf_rect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5, i16 noundef signext %6, ptr noundef %7, ptr nocapture noundef readonly %8) local_unnamed_addr #0 {
  %10 = alloca [4 x [2 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #11
  %11 = add nsw i32 %2, -1
  %12 = sdiv i32 %11, 2
  %13 = load i32, ptr %1, align 4, !tbaa !133
  %14 = add nsw i32 %12, 1
  %15 = sub nsw i32 %13, %14
  %16 = getelementptr inbounds i32, ptr %1, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !133
  %18 = sub nsw i32 %17, %14
  %19 = trunc i32 %15 to i16
  %20 = trunc i32 %18 to i16
  %21 = add nsw i32 %15, %2
  %22 = trunc i32 %21 to i16
  %23 = add i16 %22, -1
  %24 = add nsw i32 %18, %2
  %25 = trunc i32 %24 to i16
  %26 = add i16 %25, -1
  %27 = tail call ptr @view3d_read_backbuf(ptr noundef %0, i16 noundef signext %19, i16 noundef signext %20, i16 noundef signext %23, i16 noundef signext %26)
  %28 = icmp eq ptr %27, null
  br i1 %28, label %112, label %29

29:                                               ; preds = %9
  store i32 1, ptr %10, align 16, !tbaa !133
  %30 = getelementptr inbounds [2 x i32], ptr %10, i64 0, i64 1
  store i32 0, ptr %30, align 4, !tbaa !133
  %31 = getelementptr inbounds [4 x [2 x i32]], ptr %10, i64 0, i64 1
  store i32 0, ptr %31, align 8, !tbaa !133
  %32 = sub nsw i32 0, %2
  %33 = getelementptr inbounds [4 x [2 x i32]], ptr %10, i64 0, i64 1, i64 1
  store i32 %32, ptr %33, align 4, !tbaa !133
  %34 = getelementptr inbounds [4 x [2 x i32]], ptr %10, i64 0, i64 2
  store i32 -1, ptr %34, align 16, !tbaa !133
  %35 = getelementptr inbounds [4 x [2 x i32]], ptr %10, i64 0, i64 2, i64 1
  store i32 0, ptr %35, align 4, !tbaa !133
  %36 = getelementptr inbounds [4 x [2 x i32]], ptr %10, i64 0, i64 3
  store i32 0, ptr %36, align 8, !tbaa !133
  %37 = getelementptr inbounds [4 x [2 x i32]], ptr %10, i64 0, i64 3, i64 1
  store i32 %2, ptr %37, align 4, !tbaa !133
  %38 = getelementptr inbounds %struct.ImBuf, ptr %27, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !134
  %40 = mul nsw i32 %2, %2
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %39, i64 %41
  %43 = icmp slt i32 %2, 1
  br i1 %43, label %110, label %44

44:                                               ; preds = %29
  %45 = add nuw i32 %2, 1
  %46 = mul i32 %12, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %39, i64 %47
  %49 = icmp eq i16 %6, 0
  br label %50

50:                                               ; preds = %44, %100
  %51 = phi i32 [ 2, %44 ], [ %102, %100 ]
  %52 = phi i32 [ 0, %44 ], [ %56, %100 ]
  %53 = phi i32 [ 1, %44 ], [ %101, %100 ]
  %54 = phi i32 [ 0, %44 ], [ %97, %100 ]
  %55 = phi ptr [ %48, %44 ], [ %87, %100 ]
  %56 = add i32 %52, %51
  br label %57

57:                                               ; preds = %50, %95
  %58 = phi i32 [ %52, %50 ], [ %65, %95 ]
  %59 = phi i32 [ %54, %50 ], [ %97, %95 ]
  %60 = phi i32 [ 0, %50 ], [ %98, %95 ]
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
  %70 = load i32, ptr %69, align 4, !tbaa !133
  %71 = icmp ne i32 %70, 0
  %72 = icmp uge i32 %70, %3
  %73 = and i1 %71, %72
  %74 = icmp ult i32 %70, %4
  %75 = and i1 %74, %73
  br i1 %75, label %76, label %82

76:                                               ; preds = %66
  br i1 %49, label %104, label %77

77:                                               ; preds = %76
  %78 = sub i32 %70, %3
  %79 = add i32 %78, 1
  %80 = tail call zeroext i8 %8(ptr noundef %7, i32 noundef %79) #11
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %77, %66
  %83 = load i32, ptr %63, align 8, !tbaa !133
  %84 = load i32, ptr %64, align 4, !tbaa !133
  %85 = add nsw i32 %84, %83
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, ptr %69, i64 %86
  %88 = icmp uge ptr %87, %39
  %89 = icmp ult ptr %87, %42
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %91, label %110

91:                                               ; preds = %82
  %92 = add nuw nsw i32 %68, 1
  %93 = add nsw i32 %67, 1
  %94 = icmp eq i32 %92, %53
  br i1 %94, label %95, label %66, !llvm.loop !140

95:                                               ; preds = %91
  %96 = add nuw nsw i32 %59, 1
  %97 = and i32 %96, 3
  %98 = add nuw nsw i32 %60, 1
  %99 = icmp eq i32 %60, 0
  br i1 %99, label %57, label %100, !llvm.loop !141

100:                                              ; preds = %95
  %101 = add nuw i32 %53, 1
  %102 = add i32 %51, 2
  %103 = icmp eq i32 %53, %2
  br i1 %103, label %110, label %50, !llvm.loop !142

104:                                              ; preds = %76, %77
  %105 = sitofp i32 %67 to float
  %106 = tail call float @sqrtf(float noundef %105) #11
  store float %106, ptr %5, align 4, !tbaa !41
  %107 = load i32, ptr %69, align 4, !tbaa !133
  %108 = sub i32 %107, %3
  %109 = add i32 %108, 1
  br label %110

110:                                              ; preds = %100, %82, %104, %29
  %111 = phi i32 [ 0, %29 ], [ %109, %104 ], [ 0, %82 ], [ 0, %100 ]
  tail call void @IMB_freeImBuf(ptr noundef nonnull %27) #11
  br label %112

112:                                              ; preds = %9, %110
  %113 = phi i32 [ %111, %110 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #11
  ret i32 %113
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_after_add(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %5 = tail call ptr %4(i64 noundef 32, ptr noundef nonnull @.str) #11
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.View3DAfter, ptr %5, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !143
  %7 = getelementptr inbounds %struct.View3DAfter, ptr %5, i64 0, i32 3
  store i16 %2, ptr %7, align 8, !tbaa !145
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @view3d_update_depths_rect(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !tbaa !124
  %5 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %6 = load i16, ptr %5, align 8, !tbaa !82
  %7 = sext i16 %6 to i32
  %8 = add nsw i32 %7, -1
  %9 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  store i32 %8, ptr %9, align 4, !tbaa !123
  %10 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !126
  %11 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %12 = load i16, ptr %11, align 2, !tbaa !85
  %13 = sext i16 %12 to i32
  %14 = add nsw i32 %13, -1
  %15 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  store i32 %14, ptr %15, align 4, !tbaa !125
  %16 = call zeroext i8 @BLI_rcti_isect(ptr noundef nonnull %4, ptr noundef %2, ptr noundef %2) #11
  %17 = load i32, ptr %2, align 4, !tbaa !124
  %18 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !126
  %20 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !123
  %22 = sub nsw i32 %21, %17
  %23 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !125
  %25 = sub nsw i32 %24, %19
  %26 = icmp slt i32 %22, 1
  %27 = icmp slt i32 %25, 1
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !146
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %34(ptr noundef nonnull %31) #11
  br label %35

35:                                               ; preds = %33, %29
  store ptr null, ptr %30, align 8, !tbaa !146
  br label %81

36:                                               ; preds = %3
  %37 = load i16, ptr %1, align 8, !tbaa !148
  %38 = zext i16 %37 to i32
  %39 = icmp eq i32 %22, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 1
  %42 = load i16, ptr %41, align 2, !tbaa !149
  %43 = zext i16 %42 to i32
  %44 = icmp eq i32 %25, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 2
  %47 = load i16, ptr %46, align 4, !tbaa !150
  %48 = sext i16 %47 to i32
  %49 = icmp eq i32 %17, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 3
  %52 = load i16, ptr %51, align 2, !tbaa !151
  %53 = sext i16 %52 to i32
  %54 = icmp eq i32 %19, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !146
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %84

59:                                               ; preds = %55, %50, %45, %40, %36
  %60 = trunc i32 %17 to i16
  %61 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 2
  store i16 %60, ptr %61, align 4, !tbaa !150
  %62 = trunc i32 %19 to i16
  %63 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 3
  store i16 %62, ptr %63, align 2, !tbaa !151
  %64 = trunc i32 %22 to i16
  store i16 %64, ptr %1, align 8, !tbaa !148
  %65 = trunc i32 %25 to i16
  %66 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 1
  store i16 %65, ptr %66, align 2, !tbaa !149
  %67 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !146
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %59
  %71 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %71(ptr noundef nonnull %68) #11
  br label %72

72:                                               ; preds = %70, %59
  %73 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %74 = load i16, ptr %1, align 8, !tbaa !148
  %75 = zext i16 %74 to i64
  %76 = shl nuw nsw i64 %75, 2
  %77 = load i16, ptr %66, align 2, !tbaa !149
  %78 = zext i16 %77 to i64
  %79 = mul nuw nsw i64 %76, %78
  %80 = call ptr %73(i64 noundef %79, ptr noundef nonnull @.str.1) #11
  store ptr %80, ptr %67, align 8, !tbaa !146
  br label %81

81:                                               ; preds = %35, %72
  %82 = phi i8 [ 1, %72 ], [ 0, %35 ]
  %83 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 6
  store i8 %82, ptr %83, align 8, !tbaa !152
  br label %84

84:                                               ; preds = %81, %55
  %85 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 6
  %86 = load i8, ptr %85, align 8, !tbaa !152
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %109, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 2
  %90 = load i16, ptr %89, align 4, !tbaa !150
  %91 = sext i16 %90 to i32
  %92 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 3
  %93 = load i16, ptr %92, align 2, !tbaa !151
  %94 = sext i16 %93 to i32
  %95 = load i16, ptr %1, align 8, !tbaa !148
  %96 = zext i16 %95 to i32
  %97 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 1
  %98 = load i16, ptr %97, align 2, !tbaa !149
  %99 = zext i16 %98 to i32
  %100 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !146
  %102 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %103 = load i32, ptr %102, align 8, !tbaa !103
  %104 = add nsw i32 %103, %91
  %105 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %106 = load i32, ptr %105, align 8, !tbaa !104
  %107 = add nsw i32 %106, %94
  call void @glReadPixels(i32 noundef %104, i32 noundef %107, i32 noundef %96, i32 noundef %99, i32 noundef 6402, i32 noundef 5126, ptr noundef %101) #11
  %108 = getelementptr inbounds %struct.ViewDepths, ptr %1, i64 0, i32 5
  call void @glGetDoublev(i32 noundef 2928, ptr noundef nonnull %108) #11
  store i8 0, ptr %85, align 8, !tbaa !152
  br label %109

109:                                              ; preds = %88, %84
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret void
}

declare zeroext i8 @BLI_rcti_isect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glGetDoublev(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_depth_update(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %3 = load ptr, ptr %2, align 8, !tbaa !101
  %4 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !153
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %9 = tail call ptr %8(i64 noundef 40, ptr noundef nonnull @.str.2) #11
  store ptr %9, ptr %4, align 8, !tbaa !153
  br label %10

10:                                               ; preds = %7, %1
  %11 = load ptr, ptr %4, align 8, !tbaa !153
  %12 = icmp eq ptr %11, null
  br i1 %12, label %76, label %13

13:                                               ; preds = %10
  %14 = load i16, ptr %11, align 8, !tbaa !148
  %15 = zext i16 %14 to i32
  %16 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %17 = load i16, ptr %16, align 8, !tbaa !82
  %18 = sext i16 %17 to i32
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.ViewDepths, ptr %11, i64 0, i32 1
  %22 = load i16, ptr %21, align 2, !tbaa !149
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %25 = load i16, ptr %24, align 2, !tbaa !85
  %26 = sext i16 %25 to i32
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.ViewDepths, ptr %11, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !146
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %28, %20, %13
  store i16 %17, ptr %11, align 8, !tbaa !148
  %33 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %34 = load i16, ptr %33, align 2, !tbaa !85
  %35 = getelementptr inbounds %struct.ViewDepths, ptr %11, i64 0, i32 1
  store i16 %34, ptr %35, align 2, !tbaa !149
  %36 = getelementptr inbounds %struct.ViewDepths, ptr %11, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !146
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %40(ptr noundef nonnull %37) #11
  br label %41

41:                                               ; preds = %39, %32
  %42 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !72
  %43 = load i16, ptr %11, align 8, !tbaa !148
  %44 = zext i16 %43 to i64
  %45 = shl nuw nsw i64 %44, 2
  %46 = load i16, ptr %35, align 2, !tbaa !149
  %47 = zext i16 %46 to i64
  %48 = mul nuw nsw i64 %45, %47
  %49 = tail call ptr %42(i64 noundef %48, ptr noundef nonnull @.str.3) #11
  store ptr %49, ptr %36, align 8, !tbaa !146
  %50 = getelementptr inbounds %struct.ViewDepths, ptr %11, i64 0, i32 6
  store i8 1, ptr %50, align 8, !tbaa !152
  br label %51

51:                                               ; preds = %41, %28
  %52 = getelementptr inbounds %struct.ViewDepths, ptr %11, i64 0, i32 6
  %53 = load i8, ptr %52, align 8, !tbaa !152
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %76, label %55

55:                                               ; preds = %51
  %56 = load i16, ptr %11, align 8, !tbaa !148
  %57 = zext i16 %56 to i32
  %58 = getelementptr inbounds %struct.ViewDepths, ptr %11, i64 0, i32 1
  %59 = load i16, ptr %58, align 2, !tbaa !149
  %60 = zext i16 %59 to i32
  %61 = getelementptr inbounds %struct.ViewDepths, ptr %11, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !146
  %63 = load ptr, ptr %2, align 8, !tbaa !101
  %64 = getelementptr inbounds %struct.RegionView3D, ptr %63, i64 0, i32 13
  %65 = load ptr, ptr %64, align 8, !tbaa !102
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %55
  tail call void @GPU_offscreen_bind(ptr noundef nonnull %65) #11
  tail call void @glReadBuffer(i32 noundef 36064) #11
  tail call void @glReadPixels(i32 noundef 0, i32 noundef 0, i32 noundef %57, i32 noundef %60, i32 noundef 6402, i32 noundef 5126, ptr noundef %62) #11
  %68 = load ptr, ptr %64, align 8, !tbaa !102
  tail call void @GPU_offscreen_unbind(ptr noundef %68) #11
  br label %74

69:                                               ; preds = %55
  %70 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3
  %71 = load i32, ptr %70, align 8, !tbaa !103
  %72 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 3, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !104
  tail call void @glReadPixels(i32 noundef %71, i32 noundef %73, i32 noundef %57, i32 noundef %60, i32 noundef 6402, i32 noundef 5126, ptr noundef %62) #11
  br label %74

74:                                               ; preds = %67, %69
  %75 = getelementptr inbounds %struct.ViewDepths, ptr %11, i64 0, i32 5
  tail call void @glGetDoublev(i32 noundef 2928, ptr noundef nonnull %75) #11
  store i8 0, ptr %52, align 8, !tbaa !152
  br label %76

76:                                               ; preds = %51, %74, %10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local float @view3d_depth_near(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.ViewDepths, ptr %0, i64 0, i32 5
  %3 = load double, ptr %2, align 8, !tbaa !42
  %4 = fptrunc double %3 to float
  %5 = getelementptr inbounds %struct.ViewDepths, ptr %0, i64 0, i32 5, i64 1
  %6 = load double, ptr %5, align 8, !tbaa !42
  %7 = fptrunc double %6 to float
  %8 = load i16, ptr %0, align 8, !tbaa !148
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.ViewDepths, ptr %0, i64 0, i32 1
  %11 = load i16, ptr %10, align 2, !tbaa !149
  %12 = zext i16 %11 to i32
  %13 = mul nuw nsw i32 %12, %9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.ViewDepths, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !146
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi i32 [ %22, %18 ], [ %13, %15 ]
  %20 = phi ptr [ %23, %18 ], [ %17, %15 ]
  %21 = phi float [ %28, %18 ], [ %7, %15 ]
  %22 = add nsw i32 %19, -1
  %23 = getelementptr inbounds float, ptr %20, i64 1
  %24 = load float, ptr %20, align 4, !tbaa !41
  %25 = fcmp olt float %24, %21
  %26 = fcmp ogt float %24, %4
  %27 = select i1 %25, i1 %26, i1 false
  %28 = select i1 %27, float %24, float %21
  %29 = icmp eq i32 %22, 0
  br i1 %29, label %30, label %18, !llvm.loop !154

30:                                               ; preds = %18, %1
  %31 = phi float [ %7, %1 ], [ %28, %18 ]
  %32 = fcmp oeq float %31, %7
  %33 = select i1 %32, float 0x47EFFFFFE0000000, float %31
  ret float %33
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_draw_depth_gpencil(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 47
  %5 = load i8, ptr %4, align 8, !tbaa !118
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %7 = load ptr, ptr %6, align 8, !tbaa !101
  tail call void @view3d_winmatrix_set(ptr noundef %1, ptr noundef %2, ptr noundef null) #11
  tail call void @view3d_viewmatrix_set(ptr noundef %0, ptr noundef %2, ptr noundef %7) #11
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 3
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 1
  tail call void @mul_m4_m4m4(ptr noundef nonnull %8, ptr noundef %7, ptr noundef nonnull %9) #11
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 4
  %11 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %8) #11
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 2
  %13 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %12, ptr noundef nonnull %9) #11
  tail call void @glClear(i32 noundef 256) #11
  tail call void @glLoadMatrixf(ptr noundef nonnull %9) #11
  store i8 1, ptr %4, align 8, !tbaa !118
  tail call void @glEnable(i32 noundef 2929) #11
  %14 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %15 = load i16, ptr %14, align 2, !tbaa !155
  %16 = and i16 %15, 16
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  tail call void @ED_gpencil_draw_view3d(ptr noundef %0, ptr noundef %2, ptr noundef %1, i8 noundef zeroext 1) #11
  br label %19

19:                                               ; preds = %18, %3
  store i8 %5, ptr %4, align 8, !tbaa !118
  ret void
}

declare void @view3d_winmatrix_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @view3d_viewmatrix_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glClear(i32 noundef) local_unnamed_addr #2

declare void @glLoadMatrixf(ptr noundef) local_unnamed_addr #2

declare void @ED_gpencil_draw_view3d(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_draw_depth(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca [4 x double], align 16
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %9 = load ptr, ptr %8, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 47
  %11 = load i8, ptr %10, align 8, !tbaa !118
  %12 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  %13 = load i16, ptr %12, align 8, !tbaa !107
  %14 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 90), align 4, !tbaa !156
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 67), align 4, !tbaa !157
  %16 = and i16 %13, -2049
  store i16 %16, ptr %12, align 8, !tbaa !107
  %17 = icmp eq i8 %3, 0
  %18 = select i1 %17, float %14, float 5.000000e-01
  store float %18, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 90), align 4, !tbaa !156
  store i16 0, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 67), align 4, !tbaa !157
  tail call void @view3d_winmatrix_set(ptr noundef %1, ptr noundef %2, ptr noundef null) #11
  tail call void @view3d_viewmatrix_set(ptr noundef %0, ptr noundef %2, ptr noundef %9) #11
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 3
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 1
  tail call void @mul_m4_m4m4(ptr noundef nonnull %19, ptr noundef %9, ptr noundef nonnull %20) #11
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 4
  %22 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %21, ptr noundef nonnull %19) #11
  %23 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 2
  %24 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %23, ptr noundef nonnull %20) #11
  tail call void @glClear(i32 noundef 256) #11
  tail call void @glLoadMatrixf(ptr noundef nonnull %20) #11
  %25 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 32
  %26 = load i16, ptr %25, align 2, !tbaa !127
  %27 = and i16 %26, 4
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %57, label %29

29:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  %30 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 27
  %31 = load i8, ptr %30, align 1, !tbaa !34
  %32 = and i8 %31, 4
  %33 = icmp eq i8 %32, 0
  %34 = getelementptr inbounds double, ptr %5, i64 1
  %35 = getelementptr inbounds double, ptr %5, i64 2
  %36 = getelementptr inbounds double, ptr %5, i64 3
  %37 = select i1 %33, i64 6, i64 4
  br label %38

38:                                               ; preds = %38, %29
  %39 = phi i64 [ 0, %29 ], [ %54, %38 ]
  %40 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 7, i64 %39
  %41 = load float, ptr %40, align 4, !tbaa !41
  %42 = fpext float %41 to double
  store double %42, ptr %5, align 16, !tbaa !42
  %43 = getelementptr inbounds float, ptr %40, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !41
  %45 = fpext float %44 to double
  store double %45, ptr %34, align 8, !tbaa !42
  %46 = getelementptr inbounds float, ptr %40, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !41
  %48 = fpext float %47 to double
  store double %48, ptr %35, align 16, !tbaa !42
  %49 = getelementptr inbounds float, ptr %40, i64 3
  %50 = load float, ptr %49, align 4, !tbaa !41
  %51 = fpext float %50 to double
  store double %51, ptr %36, align 8, !tbaa !42
  %52 = trunc i64 %39 to i32
  %53 = add i32 %52, 12288
  call void @glClipPlane(i32 noundef %53, ptr noundef nonnull %5) #11
  call void @glEnable(i32 noundef %53) #11
  %54 = add nuw nsw i64 %39, 1
  %55 = icmp eq i64 %54, %37
  br i1 %55, label %56, label %38, !llvm.loop !44

56:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  br label %57

57:                                               ; preds = %56, %4
  store i8 1, ptr %10, align 8, !tbaa !118
  call void @glEnable(i32 noundef 2929) #11
  %58 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !158
  %60 = icmp eq ptr %59, null
  br i1 %60, label %85, label %61

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  store ptr %59, ptr %6, align 8, !tbaa !72
  %62 = call ptr @_setlooper_base_step(ptr noundef nonnull %6, ptr noundef null) #11
  %63 = icmp eq ptr %62, null
  br i1 %63, label %84, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 22
  br label %66

66:                                               ; preds = %64, %81
  %67 = phi ptr [ %62, %64 ], [ %82, %81 ]
  %68 = load i32, ptr %65, align 8, !tbaa !131
  %69 = getelementptr inbounds %struct.Base, ptr %67, i64 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !130
  %71 = and i32 %70, %68
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %66
  call void @draw_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %67, i16 noundef signext 0) #11
  %74 = getelementptr inbounds %struct.Base, ptr %67, i64 0, i32 7
  %75 = load ptr, ptr %74, align 8, !tbaa !111
  %76 = getelementptr inbounds %struct.Object, ptr %75, i64 0, i32 55
  %77 = load i16, ptr %76, align 8, !tbaa !159
  %78 = and i16 %77, 2840
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  call fastcc void @draw_dupli_objects_color(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %67, i16 noundef signext 2, i32 noundef -1)
  br label %81

81:                                               ; preds = %66, %80, %73
  %82 = call ptr @_setlooper_base_step(ptr noundef nonnull %6, ptr noundef nonnull %67) #11
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %66, !llvm.loop !160

84:                                               ; preds = %81, %61
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %85

85:                                               ; preds = %84, %57
  %86 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %87 = load ptr, ptr %86, align 8, !tbaa !72
  %88 = icmp eq ptr %87, null
  br i1 %88, label %110, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 22
  br label %91

91:                                               ; preds = %89, %107
  %92 = phi ptr [ %87, %89 ], [ %108, %107 ]
  %93 = load i32, ptr %90, align 8, !tbaa !131
  %94 = getelementptr inbounds %struct.Base, ptr %92, i64 0, i32 2
  %95 = load i32, ptr %94, align 8, !tbaa !130
  %96 = and i32 %95, %93
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.Base, ptr %92, i64 0, i32 7
  %100 = load ptr, ptr %99, align 8, !tbaa !111
  %101 = getelementptr inbounds %struct.Object, ptr %100, i64 0, i32 55
  %102 = load i16, ptr %101, align 8, !tbaa !159
  %103 = and i16 %102, 2840
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %98
  call fastcc void @draw_dupli_objects_color(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %92, i16 noundef signext 2, i32 noundef -1)
  br label %106

106:                                              ; preds = %105, %98
  call void @draw_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %92, i16 noundef signext 2) #11
  br label %107

107:                                              ; preds = %91, %106
  %108 = load ptr, ptr %92, align 8, !tbaa !72
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %91, !llvm.loop !161

110:                                              ; preds = %107, %85
  %111 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 44
  %112 = load ptr, ptr %111, align 8, !tbaa !162
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 45
  %116 = load ptr, ptr %115, align 8, !tbaa !163
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 46
  %120 = load ptr, ptr %119, align 8, !tbaa !164
  %121 = icmp eq ptr %120, null
  br i1 %121, label %176, label %122

122:                                              ; preds = %118, %114, %110
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  %123 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 49
  store i8 1, ptr %123, align 2, !tbaa !165
  call void @glGetIntegerv(i32 noundef 2930, ptr noundef nonnull %7) #11
  %124 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 45
  %125 = load ptr, ptr %124, align 8, !tbaa !163
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 46
  %129 = load ptr, ptr %128, align 8, !tbaa !164
  %130 = icmp eq ptr %129, null
  br i1 %130, label %141, label %131

131:                                              ; preds = %127, %122
  call void @glDepthFunc(i32 noundef 519) #11
  %132 = load ptr, ptr %124, align 8, !tbaa !163
  %133 = icmp eq ptr %132, null
  br i1 %133, label %140, label %134

134:                                              ; preds = %131, %134
  %135 = phi ptr [ %136, %134 ], [ %132, %131 ]
  %136 = load ptr, ptr %135, align 8, !tbaa !166
  %137 = getelementptr inbounds %struct.View3DAfter, ptr %135, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !143
  call void @draw_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %138, i16 noundef signext 2) #11
  %139 = icmp eq ptr %136, null
  br i1 %139, label %140, label %134, !llvm.loop !167

140:                                              ; preds = %134, %131
  call void @glDepthFunc(i32 noundef 515) #11
  br label %141

141:                                              ; preds = %140, %127
  store i8 0, ptr %123, align 2, !tbaa !165
  %142 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 48
  store i8 1, ptr %142, align 1, !tbaa !168
  %143 = load ptr, ptr %111, align 8, !tbaa !162
  %144 = icmp eq ptr %143, null
  br i1 %144, label %152, label %145

145:                                              ; preds = %141, %145
  %146 = phi ptr [ %147, %145 ], [ %143, %141 ]
  %147 = load ptr, ptr %146, align 8, !tbaa !166
  %148 = getelementptr inbounds %struct.View3DAfter, ptr %146, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !143
  call void @draw_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %149, i16 noundef signext 2) #11
  call void @BLI_remlink(ptr noundef nonnull %111, ptr noundef nonnull %146) #11
  %150 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %150(ptr noundef nonnull %146) #11
  %151 = icmp eq ptr %147, null
  br i1 %151, label %152, label %145, !llvm.loop !169

152:                                              ; preds = %145, %141
  store i8 1, ptr %123, align 2, !tbaa !165
  store i8 0, ptr %142, align 1, !tbaa !168
  %153 = load ptr, ptr %124, align 8, !tbaa !163
  %154 = icmp eq ptr %153, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %152, %155
  %156 = phi ptr [ %157, %155 ], [ %153, %152 ]
  %157 = load ptr, ptr %156, align 8, !tbaa !166
  %158 = getelementptr inbounds %struct.View3DAfter, ptr %156, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !143
  call void @draw_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %159, i16 noundef signext 2) #11
  call void @BLI_remlink(ptr noundef nonnull %124, ptr noundef nonnull %156) #11
  %160 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %160(ptr noundef nonnull %156) #11
  %161 = icmp eq ptr %157, null
  br i1 %161, label %162, label %155, !llvm.loop !170

162:                                              ; preds = %155, %152
  store i8 1, ptr %123, align 2, !tbaa !165
  store i8 1, ptr %142, align 1, !tbaa !168
  %163 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 46
  %164 = load ptr, ptr %163, align 8, !tbaa !164
  %165 = icmp eq ptr %164, null
  br i1 %165, label %173, label %166

166:                                              ; preds = %162, %166
  %167 = phi ptr [ %168, %166 ], [ %164, %162 ]
  %168 = load ptr, ptr %167, align 8, !tbaa !166
  %169 = getelementptr inbounds %struct.View3DAfter, ptr %167, i64 0, i32 2
  %170 = load ptr, ptr %169, align 8, !tbaa !143
  call void @draw_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %170, i16 noundef signext 2) #11
  call void @BLI_remlink(ptr noundef nonnull %163, ptr noundef nonnull %167) #11
  %171 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %171(ptr noundef nonnull %167) #11
  %172 = icmp eq ptr %168, null
  br i1 %172, label %173, label %166, !llvm.loop !171

173:                                              ; preds = %166, %162
  store i8 0, ptr %123, align 2, !tbaa !165
  store i8 0, ptr %142, align 1, !tbaa !168
  %174 = load i32, ptr %7, align 4, !tbaa !133
  %175 = trunc i32 %174 to i8
  call void @glDepthMask(i8 noundef zeroext %175) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  br label %176

176:                                              ; preds = %173, %118
  %177 = load i16, ptr %25, align 2, !tbaa !127
  %178 = and i16 %177, 4
  %179 = icmp eq i16 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %176, %180
  %181 = phi i32 [ %183, %180 ], [ 0, %176 ]
  %182 = or disjoint i32 %181, 12288
  call void @glDisable(i32 noundef %182) #11
  %183 = add nuw nsw i32 %181, 1
  %184 = icmp eq i32 %183, 6
  br i1 %184, label %185, label %180, !llvm.loop !47

185:                                              ; preds = %180, %176
  store i8 %11, ptr %10, align 8, !tbaa !118
  %186 = icmp eq i8 %11, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %185
  call void @glDisable(i32 noundef 2929) #11
  br label %188

188:                                              ; preds = %187, %185
  store float %14, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 90), align 4, !tbaa !156
  store i16 %13, ptr %12, align 8, !tbaa !107
  store i16 %15, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 67), align 4, !tbaa !157
  ret void
}

declare ptr @_setlooper_base_step(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @draw_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_dupli_objects_color(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i16 noundef signext %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.Base, align 8
  %8 = alloca %struct.BoundBox, align 4
  %9 = alloca [3 x i8], align 1
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #11
  %12 = or i16 %4, 2
  %13 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !111
  %15 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 102
  %16 = load i8, ptr %15, align 8, !tbaa !172
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %199

20:                                               ; preds = %6
  %21 = and i32 %17, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %25 = load i16, ptr %24, align 2, !tbaa !155
  %26 = and i16 %25, 4
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %199

28:                                               ; preds = %23, %20
  %29 = and i16 %4, 2
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @UI_GetThemeColorBlend3ubv(i32 noundef %5, i32 noundef 2, float noundef 5.000000e-01, ptr noundef nonnull %9) #11
  br label %32

32:                                               ; preds = %28, %31
  %33 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !173
  %35 = or i32 %34, 512
  %36 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 4
  store i32 %35, ptr %36, align 8, !tbaa !173
  %37 = load ptr, ptr @G, align 8, !tbaa !174
  %38 = getelementptr inbounds %struct.Main, ptr %37, i64 0, i32 46
  %39 = load ptr, ptr %38, align 8, !tbaa !175
  %40 = load ptr, ptr %13, align 8, !tbaa !111
  %41 = call ptr @object_duplilist(ptr noundef %39, ptr noundef %0, ptr noundef %40) #11
  %42 = load ptr, ptr %13, align 8, !tbaa !111
  %43 = call ptr @duplilist_apply(ptr noundef %42, ptr noundef %41) #11
  br label %44

44:                                               ; preds = %48, %32
  %45 = phi ptr [ %41, %32 ], [ %46, %48 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !72
  %47 = icmp eq ptr %46, null
  br i1 %47, label %60, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.DupliObject, ptr %46, i64 0, i32 7
  %50 = load i8, ptr %49, align 2, !tbaa !177
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %44, !llvm.loop !179

52:                                               ; preds = %48, %56
  %53 = phi ptr [ %54, %56 ], [ %46, %48 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !180
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.DupliObject, ptr %54, i64 0, i32 7
  %58 = load i8, ptr %57, align 2, !tbaa !177
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %52, !llvm.loop !179

60:                                               ; preds = %44, %56, %52
  %61 = phi ptr [ %54, %52 ], [ %54, %56 ], [ null, %44 ]
  %62 = icmp eq ptr %46, null
  br i1 %62, label %192, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 7
  %65 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  br label %66

66:                                               ; preds = %63, %187
  %67 = phi ptr [ null, %63 ], [ %68, %187 ]
  %68 = phi ptr [ %46, %63 ], [ %70, %187 ]
  %69 = phi i8 [ 0, %63 ], [ %119, %187 ]
  %70 = phi ptr [ %61, %63 ], [ %188, %187 ]
  %71 = phi i8 [ 0, %63 ], [ %172, %187 ]
  %72 = phi i32 [ 0, %63 ], [ %171, %187 ]
  %73 = getelementptr inbounds %struct.DupliObject, ptr %68, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !181
  store ptr %74, ptr %64, align 8, !tbaa !111
  %75 = getelementptr inbounds %struct.Object, ptr %74, i64 0, i32 133
  %76 = load ptr, ptr %75, align 8, !tbaa !182
  %77 = getelementptr inbounds %struct.Object, ptr %74, i64 0, i32 87
  %78 = load i8, ptr %77, align 2, !tbaa !183
  %79 = load ptr, ptr %13, align 8, !tbaa !111
  %80 = getelementptr inbounds %struct.Object, ptr %79, i64 0, i32 87
  %81 = load i8, ptr %80, align 2, !tbaa !183
  %82 = call i8 @llvm.umin.i8(i8 %78, i8 %81)
  store i8 %82, ptr %77, align 2, !tbaa !183
  %83 = getelementptr inbounds %struct.Object, ptr %74, i64 0, i32 86
  %84 = load i16, ptr %83, align 4, !tbaa !184
  %85 = icmp eq i8 %82, 1
  br i1 %85, label %89, label %86

86:                                               ; preds = %66
  %87 = getelementptr inbounds %struct.Object, ptr %79, i64 0, i32 86
  %88 = load i16, ptr %87, align 4, !tbaa !184
  store i16 %88, ptr %83, align 4, !tbaa !184
  br label %89

89:                                               ; preds = %86, %66
  %90 = getelementptr inbounds %struct.Object, ptr %74, i64 0, i32 55
  %91 = load i16, ptr %90, align 8, !tbaa !159
  %92 = getelementptr inbounds %struct.DupliObject, ptr %68, i64 0, i32 3
  %93 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %92) #11
  %94 = icmp eq i8 %93, 0
  %95 = load ptr, ptr %64, align 8, !tbaa !111
  %96 = getelementptr inbounds %struct.Object, ptr %95, i64 0, i32 55
  %97 = load i16, ptr %96, align 8, !tbaa !159
  %98 = and i16 %97, -5
  %99 = select i1 %94, i16 0, i16 4
  %100 = or disjoint i16 %98, %99
  store i16 %100, ptr %96, align 8, !tbaa !159
  br i1 %30, label %101, label %102

101:                                              ; preds = %89
  call void @glColor3ubv(ptr noundef nonnull %9) #11
  br label %102

102:                                              ; preds = %101, %89
  %103 = icmp eq ptr %67, null
  br i1 %103, label %112, label %104

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.DupliObject, ptr %67, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !181
  %107 = load ptr, ptr %73, align 8, !tbaa !181
  %108 = icmp eq ptr %106, %107
  br i1 %108, label %112, label %109

109:                                              ; preds = %104
  %110 = icmp eq i8 %71, 1
  br i1 %110, label %111, label %112

111:                                              ; preds = %109
  call void @glDeleteLists(i32 noundef %72, i32 noundef 1) #11
  br label %112

112:                                              ; preds = %109, %111, %104, %102
  %113 = phi i8 [ %71, %104 ], [ %71, %102 ], [ 0, %111 ], [ 0, %109 ]
  %114 = load ptr, ptr %73, align 8, !tbaa !181
  %115 = call ptr @BKE_object_boundbox_get(ptr noundef %114) #11
  %116 = icmp ne ptr %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %8, ptr noundef nonnull align 4 dereferenceable(104) %115, i64 104, i1 false), !tbaa.struct !185
  br label %118

118:                                              ; preds = %117, %112
  %119 = phi i8 [ 1, %117 ], [ %69, %112 ]
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = call zeroext i8 @ED_view3d_boundbox_clip_ex(ptr noundef %11, ptr noundef nonnull %8, ptr noundef nonnull %92) #11
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %170, label %124

124:                                              ; preds = %121, %118
  %125 = icmp eq i8 %113, 0
  br i1 %125, label %126, label %163

126:                                              ; preds = %124
  %127 = icmp eq ptr %70, null
  br i1 %127, label %163, label %128

128:                                              ; preds = %126
  %129 = getelementptr inbounds %struct.DupliObject, ptr %70, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !181
  %131 = load ptr, ptr %73, align 8, !tbaa !181
  %132 = icmp eq ptr %130, %131
  br i1 %132, label %133, label %163

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.Object, ptr %131, i64 0, i32 3
  %135 = load i16, ptr %134, align 8, !tbaa !187
  %136 = icmp eq i16 %135, 10
  br i1 %136, label %163, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.DupliObject, ptr %68, i64 0, i32 6
  %139 = load i16, ptr %138, align 4, !tbaa !188
  %140 = icmp eq i16 %139, 256
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.DupliObject, ptr %68, i64 0, i32 8
  %143 = load i8, ptr %142, align 1, !tbaa !189
  %144 = icmp eq i8 %143, 0
  %145 = and i1 %116, %144
  br i1 %145, label %147, label %163

146:                                              ; preds = %137
  br i1 %116, label %147, label %163

147:                                              ; preds = %141, %146
  %148 = call zeroext i8 @draw_glsl_material(ptr noundef %0, ptr noundef %131, ptr noundef %2, i8 noundef zeroext %78) #11
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %147
  %151 = call zeroext i8 @check_object_draw_texture(ptr noundef %0, ptr noundef %2, i8 noundef zeroext %78) #11
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %150
  %154 = load i16, ptr %65, align 2, !tbaa !155
  %155 = and i16 %154, 4096
  %156 = icmp eq i16 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = load ptr, ptr %73, align 8, !tbaa !181
  call void @BKE_object_boundbox_flag(ptr noundef %158, i32 noundef 1, i8 noundef zeroext 1) #11
  %159 = load ptr, ptr %73, align 8, !tbaa !181
  %160 = getelementptr inbounds %struct.Object, ptr %159, i64 0, i32 47
  call void @unit_m4(ptr noundef nonnull %160) #11
  %161 = call i32 @glGenLists(i32 noundef 1) #11
  call void @glNewList(i32 noundef %161, i32 noundef 4864) #11
  call void @draw_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7, i16 noundef signext %12) #11
  call void @glEndList() #11
  %162 = load ptr, ptr %73, align 8, !tbaa !181
  call void @BKE_object_boundbox_flag(ptr noundef %162, i32 noundef 1, i8 noundef zeroext 0) #11
  br label %163

163:                                              ; preds = %126, %128, %133, %141, %146, %147, %150, %153, %157, %124
  %164 = phi i32 [ %161, %157 ], [ %72, %124 ], [ %72, %153 ], [ %72, %150 ], [ %72, %147 ], [ %72, %146 ], [ %72, %141 ], [ %72, %133 ], [ %72, %128 ], [ %72, %126 ]
  %165 = phi i1 [ false, %157 ], [ false, %124 ], [ true, %153 ], [ true, %150 ], [ true, %147 ], [ true, %146 ], [ true, %141 ], [ true, %133 ], [ true, %128 ], [ true, %126 ]
  br i1 %165, label %167, label %166

166:                                              ; preds = %163
  call void @glPushMatrix() #11
  call void @glMultMatrixf(ptr noundef nonnull %92) #11
  call void @glCallList(i32 noundef %164) #11
  call void @glPopMatrix() #11
  br label %170

167:                                              ; preds = %163
  %168 = load ptr, ptr %73, align 8, !tbaa !181
  %169 = getelementptr inbounds %struct.Object, ptr %168, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %169, ptr noundef nonnull %92) #11
  call void @draw_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7, i16 noundef signext %12) #11
  br label %170

170:                                              ; preds = %166, %167, %121
  %171 = phi i32 [ %164, %166 ], [ %164, %167 ], [ %72, %121 ]
  %172 = phi i8 [ 1, %166 ], [ 0, %167 ], [ %113, %121 ]
  %173 = load ptr, ptr %64, align 8, !tbaa !111
  %174 = getelementptr inbounds %struct.Object, ptr %173, i64 0, i32 87
  store i8 %78, ptr %174, align 2, !tbaa !183
  %175 = getelementptr inbounds %struct.Object, ptr %173, i64 0, i32 86
  store i16 %84, ptr %175, align 4, !tbaa !184
  %176 = getelementptr inbounds %struct.Object, ptr %173, i64 0, i32 55
  store i16 %91, ptr %176, align 8, !tbaa !159
  %177 = getelementptr inbounds %struct.Object, ptr %173, i64 0, i32 133
  store ptr %76, ptr %177, align 8, !tbaa !182
  %178 = icmp eq ptr %70, null
  br i1 %178, label %187, label %179

179:                                              ; preds = %170, %183
  %180 = phi ptr [ %181, %183 ], [ %70, %170 ]
  %181 = load ptr, ptr %180, align 8, !tbaa !180
  %182 = icmp eq ptr %181, null
  br i1 %182, label %187, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.DupliObject, ptr %181, i64 0, i32 7
  %185 = load i8, ptr %184, align 2, !tbaa !177
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %187, label %179, !llvm.loop !179

187:                                              ; preds = %183, %179, %170
  %188 = phi ptr [ null, %170 ], [ %181, %179 ], [ %181, %183 ]
  %189 = icmp eq ptr %70, null
  br i1 %189, label %190, label %66, !llvm.loop !190

190:                                              ; preds = %187
  %191 = icmp eq i8 %172, 0
  br label %192

192:                                              ; preds = %190, %60
  %193 = phi i32 [ 0, %60 ], [ %171, %190 ]
  %194 = phi i1 [ true, %60 ], [ %191, %190 ]
  %195 = icmp eq ptr %43, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %192
  call void @duplilist_restore(ptr noundef nonnull %41, ptr noundef nonnull %43) #11
  call void @duplilist_free_apply_data(ptr noundef nonnull %43) #11
  br label %197

197:                                              ; preds = %196, %192
  call void @free_object_duplilist(ptr noundef nonnull %41) #11
  br i1 %194, label %199, label %198

198:                                              ; preds = %197
  call void @glDeleteLists(i32 noundef %193, i32 noundef 1) #11
  br label %199

199:                                              ; preds = %197, %198, %23, %6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #11
  ret void
}

declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glDepthFunc(i32 noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glDepthMask(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @ED_view3d_datamask(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 24
  %4 = load i16, ptr %3, align 8, !tbaa !116
  switch i16 %4, label %28 [
    i16 5, label %10
    i16 4, label %10
    i16 3, label %5
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %7 = load i16, ptr %6, align 2, !tbaa !155
  %8 = and i16 %7, 8
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %2, %2, %5
  %11 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %0) #11
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load i16, ptr %3, align 8, !tbaa !116
  %15 = icmp eq i16 %14, 4
  %16 = select i1 %15, i64 16480, i64 96
  br label %28

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 37, i32 20
  %19 = load i16, ptr %18, align 2, !tbaa !191
  %20 = icmp eq i16 %19, 2
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i16, ptr %3, align 8, !tbaa !116
  %23 = icmp eq i16 %22, 5
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %17
  %25 = load i16, ptr %3, align 8, !tbaa !116
  %26 = icmp eq i16 %25, 4
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21
  br label %28

28:                                               ; preds = %13, %2, %27, %24, %5
  %29 = phi i64 [ 16480, %27 ], [ 96, %24 ], [ 0, %5 ], [ 0, %2 ], [ %16, %13 ]
  ret i64 %29
}

declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @ED_view3d_screen_datamask(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !192
  %4 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !194
  %5 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = icmp eq ptr %6, null
  br i1 %7, label %50, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 20
  br label %10

10:                                               ; preds = %8, %46
  %11 = phi ptr [ %6, %8 ], [ %48, %46 ]
  %12 = phi i64 [ %4, %8 ], [ %47, %46 ]
  %13 = getelementptr inbounds %struct.ScrArea, ptr %11, i64 0, i32 8
  %14 = load i8, ptr %13, align 8, !tbaa !195
  %15 = icmp eq i8 %14, 1
  br i1 %15, label %16, label %46

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.ScrArea, ptr %11, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !197
  %19 = getelementptr inbounds %struct.View3D, ptr %18, i64 0, i32 24
  %20 = load i16, ptr %19, align 8, !tbaa !116
  switch i16 %20, label %43 [
    i16 5, label %26
    i16 4, label %26
    i16 3, label %21
  ]

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.View3D, ptr %18, i64 0, i32 29
  %23 = load i16, ptr %22, align 2, !tbaa !155
  %24 = and i16 %23, 8
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %21, %16, %16
  %27 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %3) #11
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i16, ptr %19, align 8, !tbaa !116
  %31 = icmp eq i16 %30, 4
  %32 = select i1 %31, i64 16480, i64 96
  br label %43

33:                                               ; preds = %26
  %34 = load i16, ptr %9, align 2, !tbaa !191
  %35 = icmp eq i16 %34, 2
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i16, ptr %19, align 8, !tbaa !116
  %38 = icmp eq i16 %37, 5
  br i1 %38, label %42, label %39

39:                                               ; preds = %36, %33
  %40 = load i16, ptr %19, align 8, !tbaa !116
  %41 = icmp eq i16 %40, 4
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %16, %21, %29, %39, %42
  %44 = phi i64 [ 16480, %42 ], [ 96, %39 ], [ 0, %21 ], [ 0, %16 ], [ %32, %29 ]
  %45 = or i64 %44, %12
  br label %46

46:                                               ; preds = %10, %43
  %47 = phi i64 [ %45, %43 ], [ %12, %10 ]
  %48 = load ptr, ptr %11, align 8, !tbaa !72
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %10, !llvm.loop !198

50:                                               ; preds = %46, %1
  %51 = phi i64 [ %4, %1 ], [ %47, %46 ]
  ret i64 %51
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_update_viewmat(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %7 = load ptr, ptr %6, align 8, !tbaa !101
  %8 = icmp eq ptr %4, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @copy_m4_m4(ptr noundef %7, ptr noundef nonnull %4) #11
  br label %11

10:                                               ; preds = %5
  tail call void @view3d_winmatrix_set(ptr noundef %2, ptr noundef %1, ptr noundef null) #11
  br label %11

11:                                               ; preds = %10, %9
  %12 = icmp eq ptr %3, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 1
  tail call void @copy_m4_m4(ptr noundef nonnull %14, ptr noundef nonnull %3) #11
  br label %16

15:                                               ; preds = %11
  tail call void @view3d_viewmatrix_set(ptr noundef %0, ptr noundef %1, ptr noundef %7) #11
  br label %16

16:                                               ; preds = %15, %13
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 3
  %18 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 1
  tail call void @mul_m4_m4m4(ptr noundef nonnull %17, ptr noundef %7, ptr noundef nonnull %18) #11
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 4
  %20 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %19, ptr noundef nonnull %17) #11
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 2
  %22 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %21, ptr noundef nonnull %18) #11
  %23 = load float, ptr %17, align 8, !tbaa !41
  %24 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 3, i64 1
  %25 = load float, ptr %24, align 8, !tbaa !41
  %26 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 3, i64 2
  %27 = load float, ptr %26, align 8, !tbaa !41
  %28 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 3, i64 0, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !41
  %30 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 3, i64 1, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !41
  %32 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 3, i64 2, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !41
  %34 = fmul float %25, %25
  %35 = tail call float @llvm.fmuladd.f32(float %23, float %23, float %34)
  %36 = tail call float @llvm.fmuladd.f32(float %27, float %27, float %35)
  %37 = fmul float %31, %31
  %38 = tail call float @llvm.fmuladd.f32(float %29, float %29, float %37)
  %39 = tail call float @llvm.fmuladd.f32(float %33, float %33, float %38)
  %40 = fcmp olt float %36, %39
  %41 = select i1 %40, float %36, float %39
  %42 = tail call float @sqrtf(float noundef %41) #11
  %43 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 5
  %44 = load i16, ptr %43, align 8, !tbaa !82
  %45 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 6
  %46 = load i16, ptr %45, align 2, !tbaa !85
  %47 = tail call i16 @llvm.smax.i16(i16 %44, i16 %46)
  %48 = fdiv float 2.000000e+00, %42
  %49 = sitofp i16 %47 to float
  %50 = fdiv float %48, %49
  %51 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 21
  store float %50, ptr %51, align 4, !tbaa !199
  ret void
}

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_draw_offscreen_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 24
  %4 = load i16, ptr %3, align 8, !tbaa !116
  %5 = trunc i16 %4 to i8
  %6 = tail call zeroext i8 @draw_glsl_material(ptr noundef %0, ptr noundef null, ptr noundef %1, i8 noundef zeroext %5) #11
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call fastcc void @gpu_update_lamps_shadows(ptr noundef %0, ptr noundef %1)
  br label %9

9:                                                ; preds = %8, %2
  ret void
}

declare zeroext i8 @draw_glsl_material(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @gpu_update_lamps_shadows(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.ARegion, align 8
  %9 = alloca %struct.RegionView3D, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %10 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 26
  %11 = load i16, ptr %10, align 4, !tbaa !200
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 60
  %15 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 61
  %16 = load i16, ptr %15, align 8, !tbaa !201
  %17 = sext i16 %16 to i32
  %18 = tail call ptr @BLI_findlink(ptr noundef nonnull %14, i32 noundef %17) #11
  br label %19

19:                                               ; preds = %2, %13
  %20 = phi ptr [ %18, %13 ], [ null, %2 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store ptr %0, ptr %4, align 8, !tbaa !72
  %21 = call ptr @_setlooper_base_step(ptr noundef nonnull %4, ptr noundef null) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %71, %19
  %24 = load ptr, ptr %3, align 8, !tbaa !72
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
  br label %74

37:                                               ; preds = %19, %71
  %38 = phi ptr [ %72, %71 ], [ %21, %19 ]
  %39 = getelementptr inbounds %struct.Base, ptr %38, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !111
  %41 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 3
  %42 = load i16, ptr %41, align 8, !tbaa !187
  %43 = icmp eq i16 %42, 10
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 47
  call fastcc void @gpu_render_lamp_update(ptr noundef %0, ptr noundef %1, ptr noundef %40, ptr noundef null, ptr noundef nonnull %45, ptr noundef nonnull %3, ptr noundef %20)
  br label %46

46:                                               ; preds = %44, %37
  %47 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 55
  %48 = load i16, ptr %47, align 8, !tbaa !159
  %49 = and i16 %48, 2840
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %71, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr @G, align 8, !tbaa !174
  %53 = getelementptr inbounds %struct.Main, ptr %52, i64 0, i32 46
  %54 = load ptr, ptr %53, align 8, !tbaa !175
  %55 = call ptr @object_duplilist(ptr noundef %54, ptr noundef %0, ptr noundef %40) #11
  %56 = load ptr, ptr %55, align 8, !tbaa !72
  %57 = icmp eq ptr %56, null
  br i1 %57, label %70, label %58

58:                                               ; preds = %51, %67
  %59 = phi ptr [ %68, %67 ], [ %56, %51 ]
  %60 = getelementptr inbounds %struct.DupliObject, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !181
  %62 = getelementptr inbounds %struct.Object, ptr %61, i64 0, i32 3
  %63 = load i16, ptr %62, align 8, !tbaa !187
  %64 = icmp eq i16 %63, 10
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.DupliObject, ptr %59, i64 0, i32 3
  call fastcc void @gpu_render_lamp_update(ptr noundef %0, ptr noundef %1, ptr noundef %61, ptr noundef %40, ptr noundef nonnull %66, ptr noundef nonnull %3, ptr noundef %20)
  br label %67

67:                                               ; preds = %58, %65
  %68 = load ptr, ptr %59, align 8, !tbaa !72
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %58, !llvm.loop !202

70:                                               ; preds = %67, %51
  call void @free_object_duplilist(ptr noundef nonnull %55) #11
  br label %71

71:                                               ; preds = %46, %70
  %72 = call ptr @_setlooper_base_step(ptr noundef nonnull %4, ptr noundef nonnull %38) #11
  %73 = icmp eq ptr %72, null
  br i1 %73, label %23, label %37, !llvm.loop !203

74:                                               ; preds = %26, %74
  %75 = phi ptr [ %24, %26 ], [ %92, %74 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  %76 = load i16, ptr %27, align 2, !tbaa !155
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %8) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %8, i8 0, i64 384, i1 false)
  call void @llvm.lifetime.start.p0(i64 880, ptr nonnull %9) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(880) %9, i8 0, i64 880, i1 false)
  %77 = load i16, ptr %28, align 8, !tbaa !116
  %78 = load i32, ptr %29, align 8, !tbaa !131
  store i16 3, ptr %28, align 8, !tbaa !116
  %79 = getelementptr inbounds %struct.View3DShadow, ptr %75, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !204
  %81 = call i32 @GPU_lamp_shadow_layer(ptr noundef %80) #11
  %82 = load i32, ptr %29, align 8, !tbaa !131
  %83 = and i32 %82, %81
  store i32 %83, ptr %29, align 8, !tbaa !131
  %84 = load i16, ptr %27, align 2, !tbaa !155
  %85 = and i16 %84, -8269
  %86 = or disjoint i16 %85, 68
  store i16 %86, ptr %27, align 2, !tbaa !155
  %87 = load ptr, ptr %79, align 8, !tbaa !204
  call void @GPU_lamp_shadow_buffer_bind(ptr noundef %87, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6) #11
  store ptr %9, ptr %30, align 8, !tbaa !101
  store i16 0, ptr %31, align 2, !tbaa !206
  store i8 2, ptr %32, align 1, !tbaa !207
  call void @copy_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %6) #11
  call void @copy_m4_m4(ptr noundef nonnull %33, ptr noundef nonnull %5) #11
  %88 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %34, ptr noundef nonnull %33) #11
  call void @mul_m4_m4m4(ptr noundef nonnull %35, ptr noundef nonnull %9, ptr noundef nonnull %33) #11
  %89 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %36, ptr noundef nonnull %34) #11
  %90 = load i32, ptr %7, align 4, !tbaa !133
  call void @ED_view3d_draw_offscreen(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, i32 noundef %90, i32 noundef %90, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %91 = load ptr, ptr %79, align 8, !tbaa !204
  call void @GPU_lamp_shadow_buffer_unbind(ptr noundef %91) #11
  store i16 %77, ptr %28, align 8, !tbaa !116
  store i32 %78, ptr %29, align 8, !tbaa !131
  store i16 %76, ptr %27, align 2, !tbaa !155
  call void @llvm.lifetime.end.p0(i64 880, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  %92 = load ptr, ptr %75, align 8, !tbaa !72
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %74, !llvm.loop !208

94:                                               ; preds = %74, %23
  call void @BLI_freelistN(ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_draw_offscreen(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i8 noundef zeroext %7, i8 noundef zeroext %8) local_unnamed_addr #0 {
  %10 = alloca %struct.rcti, align 4
  %11 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10)
  tail call void @glPushMatrix() #11
  %12 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 5
  %13 = load i16, ptr %12, align 8, !tbaa !82
  %14 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 6
  %15 = load i16, ptr %14, align 2, !tbaa !85
  %16 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 16, i1 false), !tbaa.struct !209
  %17 = trunc i32 %3 to i16
  store i16 %17, ptr %12, align 8, !tbaa !82
  %18 = trunc i32 %4 to i16
  store i16 %18, ptr %14, align 2, !tbaa !85
  store i32 0, ptr %16, align 8, !tbaa !103
  %19 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 2
  store i32 0, ptr %19, align 8, !tbaa !104
  %20 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 1
  store i32 %3, ptr %20, align 4, !tbaa !210
  %21 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 3
  store i32 %4, ptr %21, align 4, !tbaa !211
  tail call void @UI_SetTheme(i32 noundef 1, i32 noundef 0) #11
  %22 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !128
  %23 = or i32 %22, 1
  store i32 %23, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !128
  %24 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %25 = load i16, ptr %24, align 2, !tbaa !155
  %26 = and i16 %25, 64
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %9
  tail call void @GPU_free_images_anim() #11
  br label %29

29:                                               ; preds = %28, %9
  %30 = icmp eq i8 %8, 0
  br i1 %30, label %54, label %31

31:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  %32 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !212
  %34 = icmp eq ptr %33, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.World, ptr %33, i64 0, i32 6
  %37 = load float, ptr %36, align 4, !tbaa !41
  %38 = tail call float @linearrgb_to_srgb(float noundef %37) #11
  store float %38, ptr %11, align 4, !tbaa !41
  %39 = getelementptr inbounds %struct.World, ptr %33, i64 0, i32 7
  %40 = load float, ptr %39, align 4, !tbaa !41
  %41 = tail call float @linearrgb_to_srgb(float noundef %40) #11
  %42 = getelementptr inbounds float, ptr %11, i64 1
  store float %41, ptr %42, align 4, !tbaa !41
  %43 = getelementptr inbounds %struct.World, ptr %33, i64 0, i32 8
  %44 = load float, ptr %43, align 4, !tbaa !41
  %45 = tail call float @linearrgb_to_srgb(float noundef %44) #11
  %46 = getelementptr inbounds float, ptr %11, i64 2
  store float %45, ptr %46, align 4, !tbaa !41
  br label %48

47:                                               ; preds = %31
  call void @UI_GetThemeColor3fv(i32 noundef 2, ptr noundef nonnull %11) #11
  br label %48

48:                                               ; preds = %35, %47
  %49 = load float, ptr %11, align 4, !tbaa !41
  %50 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !41
  %52 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !41
  call void @glClearColor(float noundef %49, float noundef %51, float noundef %53, float noundef 1.000000e+00) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  br label %55

54:                                               ; preds = %29
  tail call void @glClearColor(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #11
  br label %55

55:                                               ; preds = %54, %48
  call void @glClear(i32 noundef 16640) #11
  %56 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %57 = load ptr, ptr %56, align 8, !tbaa !101
  call void @ED_view3d_update_viewmat(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %5, ptr noundef %6)
  call void @glMatrixMode(i32 noundef 5889) #11
  call void @glLoadMatrixf(ptr noundef %57) #11
  call void @glMatrixMode(i32 noundef 5888) #11
  %58 = getelementptr inbounds %struct.RegionView3D, ptr %57, i64 0, i32 1
  call void @glLoadMatrixf(ptr noundef nonnull %58) #11
  call fastcc void @view3d_draw_objects(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, i8 noundef zeroext %7, i8 noundef zeroext 1)
  %59 = load i16, ptr %24, align 2, !tbaa !155
  %60 = and i16 %59, 64
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  call void @ED_region_pixelspace(ptr noundef %2) #11
  %63 = load i16, ptr %24, align 2, !tbaa !155
  %64 = and i16 %63, 16
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  call void @ED_gpencil_draw_view3d(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0) #11
  br label %67

67:                                               ; preds = %66, %62
  call void @GPU_free_images_anim() #11
  br label %68

68:                                               ; preds = %67, %55
  store i16 %13, ptr %12, align 8, !tbaa !82
  store i16 %15, ptr %14, align 2, !tbaa !85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !209
  call void @glPopMatrix() #11
  call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #11
  %69 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !128
  %70 = and i32 %69, -2
  store i32 %70, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !128
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare void @UI_SetTheme(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @GPU_free_images_anim() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_offscreen_sky_color_get(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !212
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 6
  %8 = load float, ptr %7, align 4, !tbaa !41
  %9 = tail call float @linearrgb_to_srgb(float noundef %8) #11
  store float %9, ptr %1, align 4, !tbaa !41
  %10 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 7
  %11 = load float, ptr %10, align 4, !tbaa !41
  %12 = tail call float @linearrgb_to_srgb(float noundef %11) #11
  %13 = getelementptr inbounds float, ptr %1, i64 1
  store float %12, ptr %13, align 4, !tbaa !41
  %14 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 8
  %15 = load float, ptr %14, align 4, !tbaa !41
  %16 = tail call float @linearrgb_to_srgb(float noundef %15) #11
  %17 = getelementptr inbounds float, ptr %1, i64 2
  store float %16, ptr %17, align 4, !tbaa !41
  br label %19

18:                                               ; preds = %2
  tail call void @UI_GetThemeColor3fv(i32 noundef 2, ptr noundef %1) #11
  br label %19

19:                                               ; preds = %18, %6
  ret void
}

declare void @glClearColor(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @view3d_draw_objects(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6) unnamed_addr #0 {
  %8 = alloca [4 x double], align 16
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca [4 x double], align 16
  %12 = alloca [3 x i8], align 1
  %13 = alloca [3 x i8], align 1
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca [3 x i8], align 1
  %17 = alloca [4 x [3 x float]], align 16
  %18 = alloca [3 x i8], align 1
  %19 = alloca [3 x i8], align 1
  %20 = alloca [3 x i8], align 1
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x i8], align 1
  %23 = alloca [6 x [4 x i32]], align 16
  %24 = alloca [4 x i8], align 1
  %25 = alloca ptr, align 8
  %26 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 30
  %27 = load ptr, ptr %26, align 8, !tbaa !101
  %28 = icmp eq i8 %6, 0
  %29 = zext i1 %28 to i8
  br i1 %28, label %30, label %31

30:                                               ; preds = %7
  tail call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %3, i32 noundef 2) #11
  br label %31

31:                                               ; preds = %30, %7
  %32 = getelementptr inbounds %struct.RegionView3D, ptr %27, i64 0, i32 32
  %33 = load i16, ptr %32, align 2, !tbaa !127
  %34 = and i16 %33, 4
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.RegionView3D, ptr %27, i64 0, i32 9
  %38 = load ptr, ptr %37, align 8, !tbaa !213
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %23) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %23, ptr noundef nonnull align 16 dereferenceable(96) @__const.view3d_draw_clipping.clipping_index, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #11
  call void @UI_GetThemeColorShade3ubv(i32 noundef 2, i32 noundef -8, ptr noundef nonnull %24) #11
  %41 = getelementptr inbounds [4 x i8], ptr %24, i64 0, i64 3
  store i8 0, ptr %41, align 1, !tbaa !186
  call void @glColor4ubv(ptr noundef nonnull %24) #11
  call void @glEnableClientState(i32 noundef 32884) #11
  call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %38) #11
  call void @glDrawElements(i32 noundef 7, i32 noundef 24, i32 noundef 5125, ptr noundef nonnull %23) #11
  call void @glDisableClientState(i32 noundef 32884) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %23) #11
  br label %42

42:                                               ; preds = %40, %36, %31
  %43 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 24
  %44 = load i16, ptr %43, align 8, !tbaa !116
  %45 = icmp sgt i16 %44, 2
  %46 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 47
  %47 = zext i1 %45 to i8
  store i8 %47, ptr %46, align 8, !tbaa !118
  %48 = icmp slt i16 %44, 3
  br i1 %48, label %49, label %66

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !117
  %52 = icmp eq ptr %51, null
  br i1 %52, label %66, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.Object, ptr %51, i64 0, i32 3
  %55 = load i16, ptr %54, align 8, !tbaa !187
  %56 = icmp eq i16 %55, 1
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.Object, ptr %51, i64 0, i32 19
  %59 = load ptr, ptr %58, align 8, !tbaa !214
  %60 = getelementptr inbounds %struct.Mesh, ptr %59, i64 0, i32 36
  %61 = load i32, ptr %60, align 8, !tbaa !215
  %62 = and i32 %61, 16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 47
  store i8 1, ptr %65, align 8, !tbaa !118
  br label %66

66:                                               ; preds = %57, %64, %49, %53, %42
  %67 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 47
  %68 = load i8, ptr %67, align 8, !tbaa !118
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  call void @glEnable(i32 noundef 2929) #11
  br label %71

71:                                               ; preds = %70, %66
  br i1 %28, label %72, label %395

72:                                               ; preds = %71
  %73 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 31
  %74 = load float, ptr %73, align 8, !tbaa !74
  %75 = getelementptr inbounds %struct.RegionView3D, ptr %27, i64 0, i32 36
  store float %74, ptr %75, align 8, !tbaa !218
  %76 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 38
  %77 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 38, i32 1
  %78 = load i8, ptr %77, align 4, !tbaa !49
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %72
  %81 = load float, ptr %76, align 8, !tbaa !73
  %82 = fdiv float %74, %81
  store float %82, ptr %75, align 8, !tbaa !218
  br label %83

83:                                               ; preds = %80, %72
  %84 = getelementptr inbounds %struct.RegionView3D, ptr %27, i64 0, i32 26
  %85 = load i8, ptr %84, align 2, !tbaa !219
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.RegionView3D, ptr %27, i64 0, i32 25
  %89 = load i8, ptr %88, align 1, !tbaa !207
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %224, label %91

91:                                               ; preds = %87, %83
  %92 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %93 = load i16, ptr %92, align 2, !tbaa !155
  %94 = and i16 %93, 4
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %395

96:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %16) #11
  %97 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 37
  %98 = load i16, ptr %97, align 2, !tbaa !220
  %99 = sdiv i16 %98, 2
  %100 = sext i16 %99 to i32
  %101 = icmp slt i16 %98, 3
  br i1 %101, label %223, label %102

102:                                              ; preds = %96
  br i1 %79, label %121, label %103

103:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  %104 = zext i8 %78 to i32
  call void @bUnit_GetSystem(ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef %104, i32 noundef 1) #11
  %105 = load ptr, ptr %9, align 8, !tbaa !72
  %106 = icmp eq ptr %105, null
  br i1 %106, label %119, label %107

107:                                              ; preds = %103
  %108 = call i32 @bUnit_GetBaseUnit(ptr noundef nonnull %105) #11
  %109 = icmp eq ptr %4, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load ptr, ptr %9, align 8, !tbaa !72
  %112 = call ptr @bUnit_GetNameDisplay(ptr noundef %111, i32 noundef %108) #11
  store ptr %112, ptr %4, align 8, !tbaa !72
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr %9, align 8, !tbaa !72
  %115 = call double @bUnit_GetScaler(ptr noundef %114, i32 noundef %108) #11
  %116 = fptrunc double %115 to float
  %117 = load float, ptr %76, align 8, !tbaa !73
  %118 = fdiv float %116, %117
  br label %119

119:                                              ; preds = %113, %103
  %120 = phi float [ %118, %113 ], [ undef, %103 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br i1 %106, label %121, label %122

121:                                              ; preds = %119, %102
  br label %122

122:                                              ; preds = %119, %121
  %123 = phi float [ %120, %119 ], [ 1.000000e+00, %121 ]
  %124 = fmul float %74, %123
  %125 = sitofp i16 %99 to float
  %126 = fmul float %124, %125
  %127 = load i8, ptr %67, align 8, !tbaa !118
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %131 = load ptr, ptr %130, align 8, !tbaa !117
  %132 = icmp eq ptr %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %129
  call void @glDepthMask(i8 noundef zeroext 0) #11
  br label %134

134:                                              ; preds = %133, %129, %122
  call void @UI_GetThemeColor3ubv(i32 noundef 24, ptr noundef nonnull %16) #11
  %135 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 39
  %136 = load i8, ptr %135, align 2, !tbaa !221
  %137 = and i8 %136, 1
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %192, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 38
  %141 = load i16, ptr %140, align 8, !tbaa !222
  %142 = sext i16 %141 to i32
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %17) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %17, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %18) #11
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %19) #11
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %20) #11
  call void @UI_GetThemeColor3ubv(i32 noundef 2, ptr noundef nonnull %18) #11
  call void @UI_GetColorPtrShade3ubv(ptr noundef nonnull %16, ptr noundef nonnull %20, i32 noundef 10) #11
  %143 = load i8, ptr %16, align 1, !tbaa !186
  %144 = zext i8 %143 to i32
  %145 = getelementptr inbounds [3 x i8], ptr %16, i64 0, i64 1
  %146 = load i8, ptr %145, align 1, !tbaa !186
  %147 = zext i8 %146 to i32
  %148 = getelementptr inbounds [3 x i8], ptr %16, i64 0, i64 2
  %149 = load i8, ptr %148, align 1, !tbaa !186
  %150 = zext i8 %149 to i32
  %151 = add nuw nsw i32 %144, 30
  %152 = add nuw nsw i32 %151, %147
  %153 = add nuw nsw i32 %152, %150
  %154 = load i8, ptr %18, align 1, !tbaa !186
  %155 = zext i8 %154 to i32
  %156 = getelementptr inbounds [3 x i8], ptr %18, i64 0, i64 1
  %157 = load i8, ptr %156, align 1, !tbaa !186
  %158 = zext i8 %157 to i32
  %159 = add nuw nsw i32 %158, %155
  %160 = getelementptr inbounds [3 x i8], ptr %18, i64 0, i64 2
  %161 = load i8, ptr %160, align 1, !tbaa !186
  %162 = zext i8 %161 to i32
  %163 = add nuw nsw i32 %159, %162
  %164 = icmp ugt i32 %153, %163
  %165 = select i1 %164, i32 20, i32 -10
  call void @UI_GetColorPtrShade3ubv(ptr noundef nonnull %16, ptr noundef nonnull %19, i32 noundef %165) #11
  %166 = getelementptr inbounds [4 x [3 x float]], ptr %17, i64 0, i64 2
  %167 = getelementptr inbounds [4 x [3 x float]], ptr %17, i64 0, i64 2, i64 1
  store float %126, ptr %167, align 4, !tbaa !41
  store float %126, ptr %17, align 16, !tbaa !41
  %168 = fneg float %126
  %169 = getelementptr inbounds [4 x [3 x float]], ptr %17, i64 0, i64 3
  %170 = getelementptr inbounds [4 x [3 x float]], ptr %17, i64 0, i64 3, i64 1
  store float %168, ptr %170, align 8, !tbaa !41
  %171 = getelementptr inbounds [4 x [3 x float]], ptr %17, i64 0, i64 1
  store float %168, ptr %171, align 4, !tbaa !41
  call void @glEnableClientState(i32 noundef 32884) #11
  call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %17) #11
  %172 = sub nsw i32 0, %100
  %173 = getelementptr inbounds [4 x [3 x float]], ptr %17, i64 0, i64 1, i64 1
  %174 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 1
  %175 = call i32 @llvm.abs.i32(i32 %100, i1 true)
  br label %176

176:                                              ; preds = %139, %187
  %177 = phi i32 [ %172, %139 ], [ %189, %187 ]
  %178 = phi i32 [ -1, %139 ], [ %188, %187 ]
  %179 = sitofp i32 %177 to float
  %180 = fmul float %124, %179
  %181 = srem i32 %177, %142
  %182 = icmp eq i32 %181, 0
  %183 = zext i1 %182 to i32
  %184 = icmp eq i32 %178, %183
  br i1 %184, label %187, label %185

185:                                              ; preds = %176
  %186 = select i1 %182, ptr %19, ptr %20
  call void @glColor3ubv(ptr noundef nonnull %186) #11
  br label %187

187:                                              ; preds = %185, %176
  %188 = phi i32 [ %183, %185 ], [ %178, %176 ]
  store float %180, ptr %169, align 4, !tbaa !41
  store float %180, ptr %166, align 8, !tbaa !41
  store float %180, ptr %173, align 16, !tbaa !41
  store float %180, ptr %174, align 4, !tbaa !41
  call void @glDrawArrays(i32 noundef 1, i32 noundef 0, i32 noundef 4) #11
  %189 = add nsw i32 %177, 1
  %190 = icmp eq i32 %177, %175
  br i1 %190, label %191, label %176, !llvm.loop !223

191:                                              ; preds = %187
  call void @glDisableClientState(i32 noundef 32884) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %17) #11
  br label %192

192:                                              ; preds = %191, %134
  %193 = load i8, ptr %135, align 2, !tbaa !221
  %194 = and i8 %193, 14
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %215, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds float, ptr %21, i64 1
  %198 = getelementptr inbounds float, ptr %21, i64 2
  %199 = fneg float %126
  br label %200

200:                                              ; preds = %196, %212
  %201 = phi i64 [ 0, %196 ], [ %213, %212 ]
  %202 = load i8, ptr %135, align 2, !tbaa !221
  %203 = zext i8 %202 to i32
  %204 = trunc i64 %201 to i32
  %205 = shl nuw nsw i32 2, %204
  %206 = and i32 %205, %203
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %212, label %208

208:                                              ; preds = %200
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #11
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %22) #11
  %209 = trunc i64 %201 to i8
  %210 = or disjoint i8 %209, 88
  call void @UI_make_axis_color(ptr noundef nonnull %16, ptr noundef nonnull %22, i8 noundef zeroext %210) #11
  call void @glColor3ubv(ptr noundef nonnull %22) #11
  call void @glBegin(i32 noundef 3) #11
  store float 0.000000e+00, ptr %21, align 4, !tbaa !41
  store float 0.000000e+00, ptr %197, align 4, !tbaa !41
  store float 0.000000e+00, ptr %198, align 4, !tbaa !41
  %211 = getelementptr inbounds [3 x float], ptr %21, i64 0, i64 %201
  store float %126, ptr %211, align 4, !tbaa !41
  call void @glVertex3fv(ptr noundef nonnull %21) #11
  store float %199, ptr %211, align 4, !tbaa !41
  call void @glVertex3fv(ptr noundef nonnull %21) #11
  call void @glEnd() #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %22) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #11
  br label %212

212:                                              ; preds = %208, %200
  %213 = add nuw nsw i64 %201, 1
  %214 = icmp eq i64 %213, 3
  br i1 %214, label %215, label %200, !llvm.loop !224

215:                                              ; preds = %212, %192
  %216 = load i8, ptr %67, align 8, !tbaa !118
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %220 = load ptr, ptr %219, align 8, !tbaa !117
  %221 = icmp eq ptr %220, null
  br i1 %221, label %223, label %222

222:                                              ; preds = %218
  call void @glDepthMask(i8 noundef zeroext 1) #11
  br label %223

223:                                              ; preds = %96, %215, %218, %222
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %16) #11
  br label %395

224:                                              ; preds = %87
  %225 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %226 = load i16, ptr %225, align 2, !tbaa !155
  %227 = and i16 %226, 4
  %228 = icmp eq i16 %227, 0
  br i1 %228, label %229, label %395

229:                                              ; preds = %224
  call void @ED_region_pixelspace(ptr noundef %3) #11
  %230 = load ptr, ptr %26, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %13) #11
  %231 = getelementptr inbounds %struct.RegionView3D, ptr %230, i64 0, i32 3
  %232 = getelementptr inbounds %struct.RegionView3D, ptr %230, i64 0, i32 3, i64 3
  %233 = load float, ptr %232, align 8, !tbaa !41
  %234 = fpext float %233 to double
  %235 = getelementptr inbounds %struct.RegionView3D, ptr %230, i64 0, i32 3, i64 3, i64 1
  %236 = load float, ptr %235, align 4, !tbaa !41
  %237 = fpext float %236 to double
  %238 = getelementptr inbounds %struct.RegionView3D, ptr %230, i64 0, i32 3, i64 3, i64 3
  %239 = load float, ptr %238, align 4, !tbaa !41
  %240 = fpext float %239 to double
  %241 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 5
  %242 = load i16, ptr %241, align 8, !tbaa !82
  %243 = sitofp i16 %242 to double
  %244 = fmul double %243, 5.000000e-01
  %245 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 6
  %246 = load i16, ptr %245, align 2, !tbaa !85
  %247 = sitofp i16 %246 to double
  %248 = fmul double %247, 5.000000e-01
  %249 = fmul double %244, %234
  %250 = fdiv double %249, %240
  %251 = fmul double %248, %237
  %252 = fdiv double %251, %240
  %253 = load float, ptr %73, align 8, !tbaa !74
  %254 = fpext float %253 to double
  %255 = getelementptr inbounds [4 x double], ptr %11, i64 0, i64 1
  store double %254, ptr %255, align 8, !tbaa !42
  store double %254, ptr %11, align 16, !tbaa !42
  %256 = getelementptr inbounds [4 x double], ptr %11, i64 0, i64 2
  store double 0.000000e+00, ptr %256, align 16, !tbaa !42
  %257 = getelementptr inbounds [4 x double], ptr %11, i64 0, i64 3
  store double 1.000000e+00, ptr %257, align 8, !tbaa !42
  call void @mul_m4_v4d(ptr noundef nonnull %231, ptr noundef nonnull %11) #11
  %258 = load double, ptr %11, align 16, !tbaa !42
  %259 = load double, ptr %257, align 8, !tbaa !42
  %260 = fmul double %244, %258
  %261 = fdiv double %260, %259
  %262 = fsub double %250, %261
  %263 = call double @llvm.fabs.f64(double %262)
  %264 = fcmp oeq double %262, 0.000000e+00
  br i1 %264, label %265, label %271

265:                                              ; preds = %229
  %266 = load double, ptr %255, align 8, !tbaa !42
  %267 = fmul double %248, %266
  %268 = fdiv double %267, %259
  %269 = fsub double %252, %268
  %270 = call double @llvm.fabs.f64(double %269)
  br label %271

271:                                              ; preds = %265, %229
  %272 = phi double [ %270, %265 ], [ %263, %229 ]
  call void @glDepthMask(i8 noundef zeroext 0) #11
  call void @UI_ThemeColor(i32 noundef 24) #11
  %273 = load i8, ptr %77, align 4, !tbaa !225
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %322, label %275

275:                                              ; preds = %271
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #11
  %276 = zext i8 %273 to i32
  call void @bUnit_GetSystem(ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef %276, i32 noundef 1) #11
  %277 = load ptr, ptr %14, align 8, !tbaa !72
  %278 = icmp eq ptr %277, null
  br i1 %278, label %321, label %279

279:                                              ; preds = %275
  %280 = load i32, ptr %15, align 4, !tbaa !133
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %321, label %282

282:                                              ; preds = %279
  %283 = getelementptr inbounds %struct.RegionView3D, ptr %230, i64 0, i32 36
  br label %284

284:                                              ; preds = %282, %319
  %285 = phi i32 [ %280, %282 ], [ %286, %319 ]
  %286 = add nsw i32 %285, -1
  %287 = load ptr, ptr %14, align 8, !tbaa !72
  %288 = call double @bUnit_GetScaler(ptr noundef %287, i32 noundef %286) #11
  %289 = fmul double %272, %288
  %290 = load float, ptr %76, align 4, !tbaa !226
  %291 = fpext float %290 to double
  %292 = fdiv double %289, %291
  %293 = fcmp olt double %292, 1.200000e+01
  br i1 %293, label %319, label %294, !llvm.loop !227

294:                                              ; preds = %284
  %295 = load ptr, ptr %4, align 8, !tbaa !72
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %307

297:                                              ; preds = %294
  %298 = load ptr, ptr %14, align 8, !tbaa !72
  %299 = call ptr @bUnit_GetNameDisplay(ptr noundef %298, i32 noundef %286) #11
  store ptr %299, ptr %4, align 8, !tbaa !72
  %300 = load float, ptr %73, align 8, !tbaa !74
  %301 = fpext float %300 to double
  %302 = fmul double %288, %301
  %303 = load float, ptr %76, align 4, !tbaa !226
  %304 = fpext float %303 to double
  %305 = fdiv double %302, %304
  %306 = fptrunc double %305 to float
  store float %306, ptr %283, align 8, !tbaa !218
  br label %307

307:                                              ; preds = %297, %294
  %308 = fptrunc double %292 to float
  %309 = fdiv float 1.200000e+01, %308
  %310 = fsub float 1.000000e+00, %309
  %311 = fmul float %310, %310
  %312 = fmul float %311, 2.000000e+00
  %313 = fcmp olt float %312, 0x3FD3333340000000
  br i1 %313, label %317, label %314

314:                                              ; preds = %307
  %315 = fcmp ogt float %312, 1.000000e+00
  br i1 %315, label %316, label %317

316:                                              ; preds = %314
  br label %317

317:                                              ; preds = %316, %314, %307
  %318 = phi float [ 1.000000e+00, %316 ], [ %312, %314 ], [ 0x3FD3333340000000, %307 ]
  call void @UI_ThemeColorBlend(i32 noundef 180, i32 noundef 24, float noundef %318) #11
  call fastcc void @drawgrid_draw(ptr noundef %3, double noundef %244, double noundef %248, double noundef %250, double noundef %252, double noundef %292)
  br label %319

319:                                              ; preds = %317, %284
  %320 = icmp eq i32 %286, 0
  br i1 %320, label %321, label %284

321:                                              ; preds = %319, %279, %275
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #11
  br label %376

322:                                              ; preds = %271
  %323 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 38
  %324 = load i16, ptr %323, align 8, !tbaa !222
  %325 = sitofp i16 %324 to double
  %326 = sitofp i16 %324 to float
  %327 = fcmp olt double %272, 6.000000e+00
  br i1 %327, label %328, label %351

328:                                              ; preds = %322
  %329 = getelementptr inbounds %struct.RegionView3D, ptr %230, i64 0, i32 36
  %330 = load float, ptr %329, align 8, !tbaa !218
  %331 = fmul float %330, %326
  store float %331, ptr %329, align 8, !tbaa !218
  %332 = fmul double %272, %325
  %333 = fcmp olt double %332, 6.000000e+00
  br i1 %333, label %334, label %347

334:                                              ; preds = %328
  %335 = fmul float %331, %326
  store float %335, ptr %329, align 8, !tbaa !218
  %336 = fmul double %332, %325
  %337 = fcmp olt double %336, 6.000000e+00
  br i1 %337, label %338, label %343

338:                                              ; preds = %334
  %339 = fmul float %335, %326
  store float %339, ptr %329, align 8, !tbaa !218
  %340 = fmul double %336, %325
  %341 = fcmp olt double %340, 6.000000e+00
  br i1 %341, label %376, label %342

342:                                              ; preds = %338
  call void @UI_ThemeColor(i32 noundef 24) #11
  call fastcc void @drawgrid_draw(ptr noundef %3, double noundef %244, double noundef %248, double noundef %250, double noundef %252, double noundef %340)
  br label %376

343:                                              ; preds = %334
  %344 = fdiv double %336, 3.600000e+01
  %345 = fptrunc double %344 to float
  call void @UI_ThemeColorBlend(i32 noundef 180, i32 noundef 24, float noundef %345) #11
  call fastcc void @drawgrid_draw(ptr noundef %3, double noundef %244, double noundef %248, double noundef %250, double noundef %252, double noundef %336)
  call void @UI_ThemeColor(i32 noundef 24) #11
  %346 = fmul double %336, %325
  call fastcc void @drawgrid_draw(ptr noundef %3, double noundef %244, double noundef %248, double noundef %250, double noundef %252, double noundef %346)
  br label %376

347:                                              ; preds = %328
  %348 = fdiv double %332, 3.600000e+01
  %349 = fptrunc double %348 to float
  call void @UI_ThemeColorBlend(i32 noundef 180, i32 noundef 24, float noundef %349) #11
  call fastcc void @drawgrid_draw(ptr noundef %3, double noundef %244, double noundef %248, double noundef %250, double noundef %252, double noundef %332)
  call void @UI_ThemeColor(i32 noundef 24) #11
  %350 = fmul double %332, %325
  call fastcc void @drawgrid_draw(ptr noundef %3, double noundef %244, double noundef %248, double noundef %250, double noundef %252, double noundef %350)
  br label %376

351:                                              ; preds = %322
  %352 = fcmp ogt double %272, 6.000000e+01
  br i1 %352, label %353, label %372

353:                                              ; preds = %351
  %354 = getelementptr inbounds %struct.RegionView3D, ptr %230, i64 0, i32 36
  %355 = load float, ptr %354, align 8, !tbaa !218
  %356 = fdiv float %355, %326
  store float %356, ptr %354, align 8, !tbaa !218
  %357 = fdiv double %272, %325
  %358 = fcmp ogt double %357, 6.000000e+01
  br i1 %358, label %359, label %368

359:                                              ; preds = %353
  %360 = fdiv float %356, %326
  store float %360, ptr %354, align 8, !tbaa !218
  %361 = fdiv double %357, %325
  %362 = fcmp ogt double %361, 6.000000e+01
  br i1 %362, label %363, label %364

363:                                              ; preds = %359
  call void @UI_ThemeColor(i32 noundef 24) #11
  call fastcc void @drawgrid_draw(ptr noundef %3, double noundef %244, double noundef %248, double noundef %250, double noundef %252, double noundef %361)
  br label %376

364:                                              ; preds = %359
  %365 = fdiv double %361, 3.600000e+01
  %366 = fptrunc double %365 to float
  call void @UI_ThemeColorBlend(i32 noundef 180, i32 noundef 24, float noundef %366) #11
  call fastcc void @drawgrid_draw(ptr noundef %3, double noundef %244, double noundef %248, double noundef %250, double noundef %252, double noundef %361)
  call void @UI_ThemeColor(i32 noundef 24) #11
  %367 = fmul double %361, %325
  call fastcc void @drawgrid_draw(ptr noundef %3, double noundef %244, double noundef %248, double noundef %250, double noundef %252, double noundef %367)
  br label %376

368:                                              ; preds = %353
  %369 = fdiv double %357, 3.600000e+01
  %370 = fptrunc double %369 to float
  call void @UI_ThemeColorBlend(i32 noundef 180, i32 noundef 24, float noundef %370) #11
  call fastcc void @drawgrid_draw(ptr noundef %3, double noundef %244, double noundef %248, double noundef %250, double noundef %252, double noundef %357)
  call void @UI_ThemeColor(i32 noundef 24) #11
  %371 = fmul double %357, %325
  call fastcc void @drawgrid_draw(ptr noundef %3, double noundef %244, double noundef %248, double noundef %250, double noundef %252, double noundef %371)
  br label %376

372:                                              ; preds = %351
  %373 = fdiv double %272, 3.600000e+01
  %374 = fptrunc double %373 to float
  call void @UI_ThemeColorBlend(i32 noundef 180, i32 noundef 24, float noundef %374) #11
  call fastcc void @drawgrid_draw(ptr noundef %3, double noundef %244, double noundef %248, double noundef %250, double noundef %252, double noundef %272)
  call void @UI_ThemeColor(i32 noundef 24) #11
  %375 = fmul double %272, %325
  call fastcc void @drawgrid_draw(ptr noundef %3, double noundef %244, double noundef %248, double noundef %250, double noundef %252, double noundef %375)
  br label %376

376:                                              ; preds = %372, %368, %364, %363, %347, %343, %342, %338, %321
  %377 = fadd double %248, %252
  call void @UI_GetThemeColor3ubv(i32 noundef 24, ptr noundef nonnull %12) #11
  call void @setlinestyle(i32 noundef 0) #11
  %378 = getelementptr inbounds %struct.RegionView3D, ptr %230, i64 0, i32 26
  %379 = load i8, ptr %378, align 2, !tbaa !219
  %380 = add i8 %379, -3
  %381 = icmp ult i8 %380, 2
  %382 = select i1 %381, i8 89, i8 88
  call void @UI_make_axis_color(ptr noundef nonnull %12, ptr noundef nonnull %13, i8 noundef zeroext %382) #11
  call void @glColor3ubv(ptr noundef nonnull %13) #11
  %383 = fptrunc double %377 to float
  %384 = load i16, ptr %241, align 8, !tbaa !82
  %385 = sitofp i16 %384 to float
  call void @fdrawline(float noundef 0.000000e+00, float noundef %383, float noundef %385, float noundef %383) #11
  %386 = load i8, ptr %378, align 2, !tbaa !219
  %387 = add i8 %386, -5
  %388 = icmp ult i8 %387, 2
  %389 = select i1 %388, i8 89, i8 90
  call void @UI_make_axis_color(ptr noundef nonnull %12, ptr noundef nonnull %13, i8 noundef zeroext %389) #11
  %390 = fadd double %244, %250
  call void @glColor3ubv(ptr noundef nonnull %13) #11
  %391 = fptrunc double %390 to float
  %392 = load i16, ptr %245, align 2, !tbaa !85
  %393 = sitofp i16 %392 to float
  call void @fdrawline(float noundef %391, float noundef 0.000000e+00, float noundef %391, float noundef %393) #11
  call void @glDepthMask(i8 noundef zeroext 1) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #11
  call void @glMatrixMode(i32 noundef 5889) #11
  call void @glLoadMatrixf(ptr noundef %27) #11
  call void @glMatrixMode(i32 noundef 5888) #11
  %394 = getelementptr inbounds %struct.RegionView3D, ptr %27, i64 0, i32 1
  call void @glLoadMatrixf(ptr noundef nonnull %394) #11
  br label %395

395:                                              ; preds = %223, %91, %376, %224, %71
  %396 = icmp eq i8 %5, 0
  br i1 %396, label %416, label %397

397:                                              ; preds = %395
  %398 = load ptr, ptr %26, align 8, !tbaa !101
  %399 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  %400 = load i16, ptr %399, align 8, !tbaa !107
  %401 = and i16 %400, 2
  %402 = icmp eq i16 %401, 0
  br i1 %402, label %416, label %403

403:                                              ; preds = %397
  %404 = getelementptr inbounds %struct.RegionView3D, ptr %398, i64 0, i32 26
  %405 = load i8, ptr %404, align 2, !tbaa !219
  %406 = icmp eq i8 %405, 0
  br i1 %406, label %411, label %407

407:                                              ; preds = %403
  %408 = getelementptr inbounds %struct.RegionView3D, ptr %398, i64 0, i32 25
  %409 = load i8, ptr %408, align 1, !tbaa !207
  %410 = icmp eq i8 %409, 0
  br i1 %410, label %415, label %411

411:                                              ; preds = %407, %403
  %412 = getelementptr inbounds %struct.RegionView3D, ptr %398, i64 0, i32 25
  %413 = load i8, ptr %412, align 1, !tbaa !207
  %414 = icmp eq i8 %413, 2
  br i1 %414, label %415, label %416

415:                                              ; preds = %407, %411
  call fastcc void @view3d_draw_bgpic(ptr noundef %1, ptr noundef %3, ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext %29)
  br label %416

416:                                              ; preds = %415, %411, %397, %395
  %417 = load i16, ptr %32, align 2, !tbaa !127
  %418 = and i16 %417, 4
  %419 = icmp eq i16 %418, 0
  br i1 %419, label %448, label %420

420:                                              ; preds = %416
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #11
  %421 = getelementptr inbounds %struct.RegionView3D, ptr %27, i64 0, i32 27
  %422 = load i8, ptr %421, align 1, !tbaa !34
  %423 = and i8 %422, 4
  %424 = icmp eq i8 %423, 0
  %425 = getelementptr inbounds double, ptr %8, i64 1
  %426 = getelementptr inbounds double, ptr %8, i64 2
  %427 = getelementptr inbounds double, ptr %8, i64 3
  %428 = select i1 %424, i64 6, i64 4
  br label %429

429:                                              ; preds = %429, %420
  %430 = phi i64 [ 0, %420 ], [ %445, %429 ]
  %431 = getelementptr inbounds %struct.RegionView3D, ptr %27, i64 0, i32 7, i64 %430
  %432 = load float, ptr %431, align 4, !tbaa !41
  %433 = fpext float %432 to double
  store double %433, ptr %8, align 16, !tbaa !42
  %434 = getelementptr inbounds float, ptr %431, i64 1
  %435 = load float, ptr %434, align 4, !tbaa !41
  %436 = fpext float %435 to double
  store double %436, ptr %425, align 8, !tbaa !42
  %437 = getelementptr inbounds float, ptr %431, i64 2
  %438 = load float, ptr %437, align 4, !tbaa !41
  %439 = fpext float %438 to double
  store double %439, ptr %426, align 16, !tbaa !42
  %440 = getelementptr inbounds float, ptr %431, i64 3
  %441 = load float, ptr %440, align 4, !tbaa !41
  %442 = fpext float %441 to double
  store double %442, ptr %427, align 8, !tbaa !42
  %443 = trunc i64 %430 to i32
  %444 = add i32 %443, 12288
  call void @glClipPlane(i32 noundef %444, ptr noundef nonnull %8) #11
  call void @glEnable(i32 noundef %444) #11
  %445 = add nuw nsw i64 %430, 1
  %446 = icmp eq i64 %445, %428
  br i1 %446, label %447, label %429, !llvm.loop !44

447:                                              ; preds = %429
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #11
  br label %448

448:                                              ; preds = %447, %416
  %449 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 4
  %450 = load ptr, ptr %449, align 8, !tbaa !158
  %451 = icmp eq ptr %450, null
  br i1 %451, label %476, label %452

452:                                              ; preds = %448
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #11
  store ptr %450, ptr %25, align 8, !tbaa !72
  %453 = call ptr @_setlooper_base_step(ptr noundef nonnull %25, ptr noundef null) #11
  %454 = icmp eq ptr %453, null
  br i1 %454, label %475, label %455

455:                                              ; preds = %452
  %456 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 22
  br label %457

457:                                              ; preds = %455, %472
  %458 = phi ptr [ %453, %455 ], [ %473, %472 ]
  %459 = load i32, ptr %456, align 8, !tbaa !131
  %460 = getelementptr inbounds %struct.Base, ptr %458, i64 0, i32 2
  %461 = load i32, ptr %460, align 8, !tbaa !130
  %462 = and i32 %461, %459
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %472, label %464

464:                                              ; preds = %457
  call void @UI_ThemeColorBlend(i32 noundef 25, i32 noundef 2, float noundef 0x3FE3333340000000) #11
  call void @draw_object(ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef nonnull %458, i16 noundef signext 6) #11
  %465 = getelementptr inbounds %struct.Base, ptr %458, i64 0, i32 7
  %466 = load ptr, ptr %465, align 8, !tbaa !111
  %467 = getelementptr inbounds %struct.Object, ptr %466, i64 0, i32 55
  %468 = load i16, ptr %467, align 8, !tbaa !159
  %469 = and i16 %468, 2840
  %470 = icmp eq i16 %469, 0
  br i1 %470, label %472, label %471

471:                                              ; preds = %464
  call fastcc void @draw_dupli_objects_color(ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef nonnull %458, i16 noundef signext 6, i32 noundef -1)
  br label %472

472:                                              ; preds = %457, %471, %464
  %473 = call ptr @_setlooper_base_step(ptr noundef nonnull %25, ptr noundef nonnull %458) #11
  %474 = icmp eq ptr %473, null
  br i1 %474, label %475, label %457, !llvm.loop !228

475:                                              ; preds = %472, %452
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #11
  br label %476

476:                                              ; preds = %475, %448
  %477 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %478 = load ptr, ptr %477, align 8, !tbaa !72
  %479 = icmp eq ptr %478, null
  br i1 %28, label %517, label %480

480:                                              ; preds = %476
  br i1 %479, label %596, label %481

481:                                              ; preds = %480
  %482 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 22
  br label %483

483:                                              ; preds = %481, %514
  %484 = phi ptr [ %478, %481 ], [ %515, %514 ]
  %485 = load i32, ptr %482, align 8, !tbaa !131
  %486 = getelementptr inbounds %struct.Base, ptr %484, i64 0, i32 2
  %487 = load i32, ptr %486, align 8, !tbaa !130
  %488 = and i32 %487, %485
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %514, label %490

490:                                              ; preds = %483
  %491 = getelementptr inbounds %struct.Base, ptr %484, i64 0, i32 7
  %492 = load ptr, ptr %491, align 8, !tbaa !111
  %493 = getelementptr inbounds %struct.Object, ptr %492, i64 0, i32 55
  %494 = load i16, ptr %493, align 8, !tbaa !159
  %495 = and i16 %494, 2840
  %496 = icmp eq i16 %495, 0
  br i1 %496, label %513, label %497

497:                                              ; preds = %490
  %498 = getelementptr inbounds %struct.Base, ptr %484, i64 0, i32 4
  %499 = load i32, ptr %498, align 8, !tbaa !173
  %500 = and i32 %499, 1
  %501 = icmp eq i32 %500, 0
  %502 = select i1 %501, i32 25, i32 28
  %503 = getelementptr inbounds %struct.Object, ptr %492, i64 0, i32 112
  %504 = load ptr, ptr %503, align 8, !tbaa !229
  %505 = icmp eq ptr %504, null
  br i1 %505, label %511, label %506

506:                                              ; preds = %497
  %507 = getelementptr inbounds %struct.ID, ptr %504, i64 0, i32 6
  %508 = load i32, ptr %507, align 4, !tbaa !230
  %509 = icmp sgt i32 %508, 0
  %510 = select i1 %509, i32 %502, i32 0
  br label %511

511:                                              ; preds = %497, %506
  %512 = phi i32 [ %502, %497 ], [ %510, %506 ]
  call fastcc void @draw_dupli_objects_color(ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef nonnull %484, i16 noundef signext 0, i32 noundef %512)
  br label %513

513:                                              ; preds = %511, %490
  call void @draw_object(ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef nonnull %484, i16 noundef signext 0) #11
  br label %514

514:                                              ; preds = %483, %513
  %515 = load ptr, ptr %484, align 8, !tbaa !72
  %516 = icmp eq ptr %515, null
  br i1 %516, label %596, label %483, !llvm.loop !232

517:                                              ; preds = %476
  br i1 %479, label %566, label %518

518:                                              ; preds = %517
  %519 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 22
  %520 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  br label %521

521:                                              ; preds = %518, %563
  %522 = phi ptr [ %478, %518 ], [ %564, %563 ]
  %523 = phi i32 [ 0, %518 ], [ %526, %563 ]
  %524 = getelementptr inbounds %struct.Base, ptr %522, i64 0, i32 2
  %525 = load i32, ptr %524, align 8, !tbaa !130
  %526 = or i32 %525, %523
  %527 = load i32, ptr %519, align 8, !tbaa !131
  %528 = and i32 %527, %525
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %563, label %530

530:                                              ; preds = %521
  %531 = getelementptr inbounds %struct.Base, ptr %522, i64 0, i32 7
  %532 = load ptr, ptr %531, align 8, !tbaa !111
  %533 = getelementptr inbounds %struct.Object, ptr %532, i64 0, i32 55
  %534 = load i16, ptr %533, align 8, !tbaa !159
  %535 = and i16 %534, 2840
  %536 = icmp eq i16 %535, 0
  br i1 %536, label %553, label %537

537:                                              ; preds = %530
  %538 = getelementptr inbounds %struct.Base, ptr %522, i64 0, i32 4
  %539 = load i32, ptr %538, align 8, !tbaa !173
  %540 = and i32 %539, 1
  %541 = icmp eq i32 %540, 0
  %542 = select i1 %541, i32 25, i32 28
  %543 = getelementptr inbounds %struct.Object, ptr %532, i64 0, i32 112
  %544 = load ptr, ptr %543, align 8, !tbaa !229
  %545 = icmp eq ptr %544, null
  br i1 %545, label %551, label %546

546:                                              ; preds = %537
  %547 = getelementptr inbounds %struct.ID, ptr %544, i64 0, i32 6
  %548 = load i32, ptr %547, align 4, !tbaa !230
  %549 = icmp sgt i32 %548, 0
  %550 = select i1 %549, i32 %542, i32 0
  br label %551

551:                                              ; preds = %537, %546
  %552 = phi i32 [ %542, %537 ], [ %550, %546 ]
  call fastcc void @draw_dupli_objects_color(ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef nonnull %522, i16 noundef signext 0, i32 noundef %552)
  br label %553

553:                                              ; preds = %551, %530
  %554 = getelementptr inbounds %struct.Base, ptr %522, i64 0, i32 4
  %555 = load i32, ptr %554, align 8, !tbaa !173
  %556 = and i32 %555, 1
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %558, label %563

558:                                              ; preds = %553
  %559 = load ptr, ptr %531, align 8, !tbaa !111
  %560 = load ptr, ptr %520, align 8, !tbaa !117
  %561 = icmp eq ptr %559, %560
  br i1 %561, label %563, label %562

562:                                              ; preds = %558
  call void @draw_object(ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef nonnull %522, i16 noundef signext 0) #11
  br label %563

563:                                              ; preds = %521, %558, %562, %553
  %564 = load ptr, ptr %522, align 8, !tbaa !72
  %565 = icmp eq ptr %564, null
  br i1 %565, label %566, label %521, !llvm.loop !233

566:                                              ; preds = %563, %517
  %567 = phi i32 [ 0, %517 ], [ %526, %563 ]
  %568 = and i32 %567, 1048575
  %569 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 12
  store i32 %568, ptr %569, align 8, !tbaa !234
  %570 = load ptr, ptr %477, align 8, !tbaa !72
  %571 = icmp eq ptr %570, null
  br i1 %571, label %596, label %572

572:                                              ; preds = %566
  %573 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 22
  %574 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  br label %575

575:                                              ; preds = %572, %593
  %576 = phi ptr [ %570, %572 ], [ %594, %593 ]
  %577 = load i32, ptr %573, align 8, !tbaa !131
  %578 = getelementptr inbounds %struct.Base, ptr %576, i64 0, i32 2
  %579 = load i32, ptr %578, align 8, !tbaa !130
  %580 = and i32 %579, %577
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %593, label %582

582:                                              ; preds = %575
  %583 = getelementptr inbounds %struct.Base, ptr %576, i64 0, i32 7
  %584 = load ptr, ptr %583, align 8, !tbaa !111
  %585 = load ptr, ptr %574, align 8, !tbaa !117
  %586 = icmp eq ptr %584, %585
  br i1 %586, label %592, label %587

587:                                              ; preds = %582
  %588 = getelementptr inbounds %struct.Base, ptr %576, i64 0, i32 4
  %589 = load i32, ptr %588, align 8, !tbaa !173
  %590 = and i32 %589, 1
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %593, label %592

592:                                              ; preds = %587, %582
  call void @draw_object(ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef nonnull %576, i16 noundef signext 0) #11
  br label %593

593:                                              ; preds = %575, %592, %587
  %594 = load ptr, ptr %576, align 8, !tbaa !72
  %595 = icmp eq ptr %594, null
  br i1 %595, label %596, label %575, !llvm.loop !235

596:                                              ; preds = %514, %593, %480, %566
  %597 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %598 = load i16, ptr %597, align 2, !tbaa !155
  %599 = and i16 %598, 16
  %600 = icmp eq i16 %599, 0
  br i1 %600, label %609, label %601

601:                                              ; preds = %596
  %602 = load i8, ptr %67, align 8, !tbaa !118
  %603 = icmp eq i8 %602, 0
  br i1 %603, label %605, label %604

604:                                              ; preds = %601
  call void @glDisable(i32 noundef 2929) #11
  br label %605

605:                                              ; preds = %604, %601
  call void @ED_gpencil_draw_view3d(ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 1) #11
  %606 = load i8, ptr %67, align 8, !tbaa !118
  %607 = icmp eq i8 %606, 0
  br i1 %607, label %609, label %608

608:                                              ; preds = %605
  call void @glEnable(i32 noundef 2929) #11
  br label %609

609:                                              ; preds = %605, %608, %596
  %610 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 44
  %611 = load ptr, ptr %610, align 8, !tbaa !162
  %612 = icmp eq ptr %611, null
  br i1 %612, label %627, label %613

613:                                              ; preds = %609
  call void @glDepthMask(i8 noundef zeroext 0) #11
  %614 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 48
  store i8 1, ptr %614, align 1, !tbaa !168
  %615 = load ptr, ptr %610, align 8, !tbaa !162
  %616 = icmp eq ptr %615, null
  br i1 %616, label %626, label %617

617:                                              ; preds = %613, %617
  %618 = phi ptr [ %619, %617 ], [ %615, %613 ]
  %619 = load ptr, ptr %618, align 8, !tbaa !166
  %620 = getelementptr inbounds %struct.View3DAfter, ptr %618, i64 0, i32 2
  %621 = load ptr, ptr %620, align 8, !tbaa !143
  %622 = getelementptr inbounds %struct.View3DAfter, ptr %618, i64 0, i32 3
  %623 = load i16, ptr %622, align 8, !tbaa !145
  call void @draw_object(ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef %621, i16 noundef signext %623) #11
  call void @BLI_remlink(ptr noundef nonnull %610, ptr noundef nonnull %618) #11
  %624 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %624(ptr noundef nonnull %618) #11
  %625 = icmp eq ptr %619, null
  br i1 %625, label %626, label %617, !llvm.loop !236

626:                                              ; preds = %617, %613
  store i8 0, ptr %614, align 1, !tbaa !168
  call void @glDepthMask(i8 noundef zeroext 1) #11
  br label %627

627:                                              ; preds = %626, %609
  %628 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 45
  %629 = load ptr, ptr %628, align 8, !tbaa !163
  %630 = icmp eq ptr %629, null
  br i1 %630, label %649, label %631

631:                                              ; preds = %627
  %632 = load i8, ptr %67, align 8, !tbaa !118
  %633 = icmp eq i8 %632, 0
  br i1 %633, label %635, label %634

634:                                              ; preds = %631
  call void @glClear(i32 noundef 256) #11
  br label %635

635:                                              ; preds = %634, %631
  %636 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 49
  store i8 1, ptr %636, align 2, !tbaa !165
  %637 = load ptr, ptr %628, align 8, !tbaa !163
  %638 = icmp eq ptr %637, null
  br i1 %638, label %648, label %639

639:                                              ; preds = %635, %639
  %640 = phi ptr [ %641, %639 ], [ %637, %635 ]
  %641 = load ptr, ptr %640, align 8, !tbaa !166
  %642 = getelementptr inbounds %struct.View3DAfter, ptr %640, i64 0, i32 2
  %643 = load ptr, ptr %642, align 8, !tbaa !143
  %644 = getelementptr inbounds %struct.View3DAfter, ptr %640, i64 0, i32 3
  %645 = load i16, ptr %644, align 8, !tbaa !145
  call void @draw_object(ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef %643, i16 noundef signext %645) #11
  call void @BLI_remlink(ptr noundef nonnull %628, ptr noundef nonnull %640) #11
  %646 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %646(ptr noundef nonnull %640) #11
  %647 = icmp eq ptr %641, null
  br i1 %647, label %648, label %639, !llvm.loop !237

648:                                              ; preds = %639, %635
  store i8 0, ptr %636, align 2, !tbaa !165
  br label %649

649:                                              ; preds = %648, %627
  %650 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 46
  %651 = load ptr, ptr %650, align 8, !tbaa !164
  %652 = icmp eq ptr %651, null
  br i1 %652, label %672, label %653

653:                                              ; preds = %649
  %654 = load i8, ptr %67, align 8, !tbaa !118
  %655 = icmp eq i8 %654, 0
  br i1 %655, label %657, label %656

656:                                              ; preds = %653
  call void @glClear(i32 noundef 256) #11
  br label %657

657:                                              ; preds = %656, %653
  %658 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 49
  store i8 1, ptr %658, align 2, !tbaa !165
  %659 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 48
  store i8 1, ptr %659, align 1, !tbaa !168
  %660 = load ptr, ptr %650, align 8, !tbaa !164
  %661 = icmp eq ptr %660, null
  br i1 %661, label %671, label %662

662:                                              ; preds = %657, %662
  %663 = phi ptr [ %664, %662 ], [ %660, %657 ]
  %664 = load ptr, ptr %663, align 8, !tbaa !166
  %665 = getelementptr inbounds %struct.View3DAfter, ptr %663, i64 0, i32 2
  %666 = load ptr, ptr %665, align 8, !tbaa !143
  %667 = getelementptr inbounds %struct.View3DAfter, ptr %663, i64 0, i32 3
  %668 = load i16, ptr %667, align 8, !tbaa !145
  call void @draw_object(ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef %666, i16 noundef signext %668) #11
  call void @BLI_remlink(ptr noundef nonnull %650, ptr noundef nonnull %663) #11
  %669 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  call void %669(ptr noundef nonnull %663) #11
  %670 = icmp eq ptr %664, null
  br i1 %670, label %671, label %662, !llvm.loop !238

671:                                              ; preds = %662, %657
  store i8 0, ptr %659, align 1, !tbaa !168
  store i8 0, ptr %658, align 2, !tbaa !165
  br label %672

672:                                              ; preds = %671, %649
  br i1 %28, label %673, label %674

673:                                              ; preds = %672
  call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %3, i32 noundef 0) #11
  br label %674

674:                                              ; preds = %673, %672
  %675 = load i16, ptr %32, align 2, !tbaa !127
  %676 = and i16 %675, 4
  %677 = icmp eq i16 %676, 0
  br i1 %677, label %683, label %678

678:                                              ; preds = %674, %678
  %679 = phi i32 [ %681, %678 ], [ 0, %674 ]
  %680 = or disjoint i32 %679, 12288
  call void @glDisable(i32 noundef %680) #11
  %681 = add nuw nsw i32 %679, 1
  %682 = icmp eq i32 %681, 6
  br i1 %682, label %683, label %678, !llvm.loop !47

683:                                              ; preds = %678, %674
  br i1 %396, label %703, label %684

684:                                              ; preds = %683
  %685 = load ptr, ptr %26, align 8, !tbaa !101
  %686 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  %687 = load i16, ptr %686, align 8, !tbaa !107
  %688 = and i16 %687, 2
  %689 = icmp eq i16 %688, 0
  br i1 %689, label %703, label %690

690:                                              ; preds = %684
  %691 = getelementptr inbounds %struct.RegionView3D, ptr %685, i64 0, i32 26
  %692 = load i8, ptr %691, align 2, !tbaa !219
  %693 = icmp eq i8 %692, 0
  br i1 %693, label %698, label %694

694:                                              ; preds = %690
  %695 = getelementptr inbounds %struct.RegionView3D, ptr %685, i64 0, i32 25
  %696 = load i8, ptr %695, align 1, !tbaa !207
  %697 = icmp eq i8 %696, 0
  br i1 %697, label %702, label %698

698:                                              ; preds = %694, %690
  %699 = getelementptr inbounds %struct.RegionView3D, ptr %685, i64 0, i32 25
  %700 = load i8, ptr %699, align 1, !tbaa !207
  %701 = icmp eq i8 %700, 2
  br i1 %701, label %702, label %703

702:                                              ; preds = %694, %698
  call fastcc void @view3d_draw_bgpic(ptr noundef %1, ptr noundef %3, ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext %29)
  br label %703

703:                                              ; preds = %702, %698, %684, %683
  br i1 %28, label %704, label %705

704:                                              ; preds = %703
  call void @BIF_draw_manipulator(ptr noundef %0) #11
  br label %705

705:                                              ; preds = %704, %703
  %706 = load i8, ptr %67, align 8, !tbaa !118
  %707 = icmp eq i8 %706, 0
  br i1 %707, label %709, label %708

708:                                              ; preds = %705
  store i8 0, ptr %67, align 8, !tbaa !118
  call void @glDisable(i32 noundef 2929) #11
  br label %709

709:                                              ; preds = %708, %705
  %710 = load i16, ptr %597, align 2, !tbaa !155
  %711 = and i16 %710, 64
  %712 = icmp eq i16 %711, 0
  br i1 %712, label %713, label %714

713:                                              ; preds = %709
  call void @GPU_free_images_old() #11
  br label %714

714:                                              ; preds = %713, %709
  ret void
}

declare void @ED_region_pixelspace(ptr noundef) local_unnamed_addr #2

declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @UI_GetThemeColor3fv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_view3d_draw_offscreen_imbuf(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = alloca %struct.CameraParams, align 4
  %11 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %12 = load ptr, ptr %11, align 8, !tbaa !101
  %13 = icmp eq i32 %7, 0
  %14 = zext i1 %13 to i8
  tail call void @glPushAttrib(i32 noundef 64) #11
  %15 = tail call ptr @GPU_offscreen_create(i32 noundef %3, i32 noundef %4, ptr noundef %8) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  tail call void @glPopAttrib() #11
  br label %66

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 24
  %20 = load i16, ptr %19, align 8, !tbaa !116
  %21 = trunc i16 %20 to i8
  %22 = tail call zeroext i8 @draw_glsl_material(ptr noundef %0, ptr noundef null, ptr noundef %1, i8 noundef zeroext %21) #11
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  tail call fastcc void @gpu_update_lamps_shadows(ptr noundef %0, ptr noundef %1)
  br label %25

25:                                               ; preds = %18, %24
  tail call void @GPU_offscreen_bind(ptr noundef nonnull %15) #11
  %26 = getelementptr inbounds %struct.RegionView3D, ptr %12, i64 0, i32 25
  %27 = load i8, ptr %26, align 1, !tbaa !207
  %28 = icmp eq i8 %27, 2
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 15
  %31 = load ptr, ptr %30, align 8, !tbaa !94
  %32 = icmp eq ptr %31, null
  br i1 %32, label %46, label %33

33:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %10) #11
  call void @BKE_camera_params_init(ptr noundef nonnull %10) #11
  %34 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 32
  %35 = load float, ptr %34, align 4, !tbaa !90
  %36 = getelementptr inbounds %struct.CameraParams, ptr %10, i64 0, i32 11
  store float %35, ptr %36, align 4, !tbaa !91
  %37 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 33
  %38 = load float, ptr %37, align 8, !tbaa !92
  %39 = getelementptr inbounds %struct.CameraParams, ptr %10, i64 0, i32 12
  store float %38, ptr %39, align 4, !tbaa !93
  %40 = load ptr, ptr %30, align 8, !tbaa !94
  call void @BKE_camera_params_from_object(ptr noundef nonnull %10, ptr noundef %40) #11
  %41 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 63
  %42 = load float, ptr %41, align 4, !tbaa !99
  %43 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 64
  %44 = load float, ptr %43, align 8, !tbaa !100
  call void @BKE_camera_params_compute_viewplane(ptr noundef nonnull %10, i32 noundef %3, i32 noundef %4, float noundef %42, float noundef %44) #11
  call void @BKE_camera_params_compute_matrix(ptr noundef nonnull %10) #11
  %45 = getelementptr inbounds %struct.CameraParams, ptr %10, i64 0, i32 20
  call void @ED_view3d_draw_offscreen(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef null, ptr noundef nonnull %45, i8 noundef zeroext %6, i8 noundef zeroext %14)
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %10) #11
  br label %47

46:                                               ; preds = %29, %25
  tail call void @ED_view3d_draw_offscreen(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef null, ptr noundef null, i8 noundef zeroext %6, i8 noundef zeroext %14)
  br label %47

47:                                               ; preds = %46, %33
  %48 = call ptr @IMB_allocImBuf(i32 noundef %3, i32 noundef %4, i8 noundef zeroext 32, i32 noundef %5) #11
  %49 = getelementptr inbounds %struct.ImBuf, ptr %48, i64 0, i32 9
  %50 = load ptr, ptr %49, align 8, !tbaa !239
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  call void @GPU_offscreen_read_pixels(ptr noundef nonnull %15, i32 noundef 5126, ptr noundef nonnull %50) #11
  br label %58

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.ImBuf, ptr %48, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !134
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  call void @GPU_offscreen_read_pixels(ptr noundef nonnull %15, i32 noundef 5121, ptr noundef nonnull %55) #11
  br label %58

58:                                               ; preds = %53, %57, %52
  call void @GPU_offscreen_unbind(ptr noundef nonnull %15) #11
  call void @GPU_offscreen_free(ptr noundef nonnull %15) #11
  call void @glPopAttrib() #11
  %59 = load ptr, ptr %49, align 8, !tbaa !239
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.ImBuf, ptr %48, i64 0, i32 8
  %63 = load ptr, ptr %62, align 8, !tbaa !134
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  call void @IMB_rect_from_float(ptr noundef %48) #11
  br label %66

66:                                               ; preds = %58, %61, %65, %17
  %67 = phi ptr [ null, %17 ], [ %48, %65 ], [ %48, %61 ], [ %48, %58 ]
  ret ptr %67
}

declare void @glPushAttrib(i32 noundef) local_unnamed_addr #2

declare ptr @GPU_offscreen_create(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glPopAttrib() local_unnamed_addr #2

declare void @BKE_camera_params_init(ptr noundef) local_unnamed_addr #2

declare void @BKE_camera_params_from_object(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_camera_params_compute_viewplane(ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @BKE_camera_params_compute_matrix(ptr noundef) local_unnamed_addr #2

declare void @GPU_offscreen_read_pixels(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @GPU_offscreen_free(ptr noundef) local_unnamed_addr #2

declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_view3d_draw_offscreen_imbuf_simple(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i32 noundef %8, ptr noundef %9) local_unnamed_addr #0 {
  %11 = alloca %struct.View3D, align 8
  %12 = alloca %struct.ARegion, align 8
  %13 = alloca %struct.RegionView3D, align 8
  %14 = alloca %struct.CameraParams, align 4
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %11) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %11, i8 0, i64 376, i1 false)
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %12) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %12, i8 0, i64 384, i1 false)
  call void @llvm.lifetime.start.p0(i64 880, ptr nonnull %13) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(880) %13, i8 0, i64 880, i1 false)
  %15 = getelementptr inbounds %struct.View3D, ptr %11, i64 0, i32 2
  %16 = getelementptr inbounds %struct.View3D, ptr %11, i64 0, i32 2, i32 1
  store ptr %12, ptr %16, align 8, !tbaa !240
  store ptr %12, ptr %15, align 8, !tbaa !241
  %17 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 30
  store ptr %13, ptr %17, align 8, !tbaa !101
  %18 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 8
  store i16 0, ptr %18, align 2, !tbaa !206
  %19 = getelementptr inbounds %struct.View3D, ptr %11, i64 0, i32 15
  store ptr %1, ptr %19, align 8, !tbaa !94
  %20 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 12
  %21 = load i32, ptr %20, align 8, !tbaa !242
  %22 = getelementptr inbounds %struct.View3D, ptr %11, i64 0, i32 22
  store i32 %21, ptr %22, align 8, !tbaa !131
  %23 = trunc i32 %5 to i16
  %24 = getelementptr inbounds %struct.View3D, ptr %11, i64 0, i32 24
  store i16 %23, ptr %24, align 8, !tbaa !116
  %25 = icmp eq i8 %6, 0
  %26 = select i1 %25, i16 4, i16 12
  %27 = getelementptr inbounds %struct.View3D, ptr %11, i64 0, i32 29
  store i16 %26, ptr %27, align 2, !tbaa !155
  %28 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 25
  store i8 2, ptr %28, align 1, !tbaa !207
  %29 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 2
  %30 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %29, ptr noundef nonnull %30) #11
  call void @normalize_m4(ptr noundef nonnull %29) #11
  %31 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 1
  %32 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %31, ptr noundef nonnull %29) #11
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %14) #11
  call void @BKE_camera_params_init(ptr noundef nonnull %14) #11
  %33 = load ptr, ptr %19, align 8, !tbaa !94
  call void @BKE_camera_params_from_object(ptr noundef nonnull %14, ptr noundef %33) #11
  %34 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 63
  %35 = load float, ptr %34, align 4, !tbaa !99
  %36 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 64
  %37 = load float, ptr %36, align 8, !tbaa !100
  call void @BKE_camera_params_compute_viewplane(ptr noundef nonnull %14, i32 noundef %2, i32 noundef %3, float noundef %35, float noundef %37) #11
  call void @BKE_camera_params_compute_matrix(ptr noundef nonnull %14) #11
  %38 = getelementptr inbounds %struct.CameraParams, ptr %14, i64 0, i32 20
  call void @copy_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %38) #11
  %39 = getelementptr inbounds %struct.CameraParams, ptr %14, i64 0, i32 11
  %40 = load float, ptr %39, align 4, !tbaa !91
  %41 = getelementptr inbounds %struct.View3D, ptr %11, i64 0, i32 32
  store float %40, ptr %41, align 4, !tbaa !90
  %42 = getelementptr inbounds %struct.CameraParams, ptr %14, i64 0, i32 12
  %43 = load float, ptr %42, align 4, !tbaa !93
  %44 = getelementptr inbounds %struct.View3D, ptr %11, i64 0, i32 33
  store float %43, ptr %44, align 8, !tbaa !92
  %45 = getelementptr inbounds %struct.CameraParams, ptr %14, i64 0, i32 1
  %46 = load float, ptr %45, align 4, !tbaa !243
  %47 = getelementptr inbounds %struct.View3D, ptr %11, i64 0, i32 30
  store float %46, ptr %47, align 4, !tbaa !244
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %14) #11
  %48 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 3
  call void @mul_m4_m4m4(ptr noundef nonnull %48, ptr noundef nonnull %13, ptr noundef nonnull %31) #11
  %49 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 4
  %50 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %49, ptr noundef nonnull %29) #11
  %51 = call ptr @ED_view3d_draw_offscreen_imbuf(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %7, i32 noundef %8, ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 880, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %11) #11
  ret ptr %51
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare void @normalize_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_scene_draw_fps(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [16 x i8], align 16
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 30
  %5 = load ptr, ptr %4, align 8, !tbaa !245
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %73, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ScreenFrameRateInfo, ptr %5, i64 0, i32 1
  %9 = load double, ptr %8, align 8, !tbaa !246
  %10 = fcmp une double %9, 0.000000e+00
  br i1 %10, label %11, label %73

11:                                               ; preds = %7
  %12 = load double, ptr %5, align 8, !tbaa !248
  %13 = fcmp une double %12, 0.000000e+00
  br i1 %13, label %14, label %73

14:                                               ; preds = %11
  store i8 0, ptr %3, align 16, !tbaa !186
  %15 = load double, ptr %5, align 8, !tbaa !248
  %16 = fsub double %9, %15
  %17 = fdiv double 1.000000e+00, %16
  %18 = fptrunc double %17 to float
  %19 = getelementptr inbounds %struct.ScreenFrameRateInfo, ptr %5, i64 0, i32 3
  %20 = load i16, ptr %19, align 8, !tbaa !249
  %21 = sext i16 %20 to i64
  %22 = getelementptr inbounds %struct.ScreenFrameRateInfo, ptr %5, i64 0, i32 2, i64 %21
  store float %18, ptr %22, align 4, !tbaa !41
  br label %23

23:                                               ; preds = %14, %23
  %24 = phi i64 [ 0, %14 ], [ %34, %23 ]
  %25 = phi i32 [ 0, %14 ], [ %33, %23 ]
  %26 = phi float [ 0.000000e+00, %14 ], [ %31, %23 ]
  %27 = getelementptr inbounds %struct.ScreenFrameRateInfo, ptr %5, i64 0, i32 2, i64 %24
  %28 = load float, ptr %27, align 4, !tbaa !41
  %29 = fcmp une float %28, 0.000000e+00
  %30 = select i1 %29, float %28, float -0.000000e+00
  %31 = fadd float %26, %30
  %32 = zext i1 %29 to i32
  %33 = add nuw nsw i32 %25, %32
  %34 = add nuw nsw i64 %24, 1
  %35 = icmp eq i64 %34, 8
  br i1 %35, label %36, label %23, !llvm.loop !250

36:                                               ; preds = %23
  %37 = icmp eq i32 %33, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %36
  %39 = sext i16 %20 to i32
  %40 = add nsw i32 %39, 1
  %41 = srem i32 %40, 8
  %42 = trunc i32 %41 to i16
  store i16 %42, ptr %19, align 8, !tbaa !249
  %43 = sitofp i32 %33 to float
  %44 = fdiv float %31, %43
  br label %45

45:                                               ; preds = %38, %36
  %46 = phi float [ %44, %38 ], [ %31, %36 ]
  %47 = fadd float %46, 5.000000e-01
  %48 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 55
  %49 = load i16, ptr %48, align 4, !tbaa !251
  %50 = sitofp i16 %49 to double
  %51 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 65
  %52 = load float, ptr %51, align 4, !tbaa !252
  %53 = fpext float %52 to double
  %54 = fdiv double %50, %53
  %55 = fptrunc double %54 to float
  %56 = fcmp olt float %47, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  tail call void @UI_ThemeColor(i32 noundef 0) #11
  %58 = fpext float %46 to double
  %59 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 16, ptr noundef nonnull @.str.4, double noundef %58) #11
  br label %63

60:                                               ; preds = %45
  tail call void @UI_ThemeColor(i32 noundef 4) #11
  %61 = fptosi float %47 to i32
  %62 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %61) #11
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, ptr %1, align 4, !tbaa !124
  %65 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !253
  %66 = sext i16 %65 to i32
  %67 = add nsw i32 %64, %66
  %68 = sitofp i32 %67 to float
  %69 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %70 = load i32, ptr %69, align 4, !tbaa !125
  %71 = sub nsw i32 %70, %66
  %72 = sitofp i32 %71 to float
  call void @BLF_draw_default_ascii(float noundef %68, float noundef %72, float noundef 0.000000e+00, ptr noundef nonnull %3, i64 noundef 16) #11
  br label %73

73:                                               ; preds = %2, %7, %11, %63
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret void
}

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BLF_draw_default_ascii(float noundef, float noundef, float noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_view3d_calc_render_border(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.rctf, align 4
  %6 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %7 = load ptr, ptr %6, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %8 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 24
  %9 = load i16, ptr %8, align 8, !tbaa !116
  %10 = icmp eq i16 %9, 6
  br i1 %10, label %11, label %102

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 115
  %13 = tail call ptr @RE_engines_find(ptr noundef nonnull %12) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %102, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.RenderEngineType, ptr %13, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !254
  %18 = icmp eq ptr %17, null
  br i1 %18, label %102, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.RenderEngineType, ptr %13, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !257
  %22 = icmp eq ptr %21, null
  br i1 %22, label %102, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.RegionView3D, ptr %7, i64 0, i32 25
  %25 = load i8, ptr %24, align 1, !tbaa !207
  %26 = icmp eq i8 %25, 2
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 47
  %29 = load i32, ptr %28, align 8, !tbaa !258
  %30 = lshr i32 %29, 9
  %31 = trunc i32 %30 to i8
  br label %37

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %34 = load i16, ptr %33, align 2, !tbaa !155
  %35 = lshr i16 %34, 11
  %36 = trunc i16 %35 to i8
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i8 [ %31, %27 ], [ %36, %32 ]
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %102, label %41

41:                                               ; preds = %37
  br i1 %26, label %42, label %69

42:                                               ; preds = %41
  call fastcc void @view3d_camera_border(ptr noundef %0, ptr noundef %2, ptr noundef %1, ptr noundef %7, ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %43 = load float, ptr %5, align 4, !tbaa !77
  %44 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 58
  %45 = load float, ptr %44, align 8, !tbaa !259
  %46 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 1
  %47 = load float, ptr %46, align 4, !tbaa !76
  %48 = fsub float %47, %43
  %49 = tail call float @llvm.fmuladd.f32(float %45, float %48, float %43)
  %50 = fptosi float %49 to i32
  store i32 %50, ptr %3, align 4, !tbaa !124
  %51 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 2
  %52 = load float, ptr %51, align 4, !tbaa !79
  %53 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 58, i32 2
  %54 = load float, ptr %53, align 8, !tbaa !260
  %55 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 3
  %56 = load float, ptr %55, align 4, !tbaa !78
  %57 = fsub float %56, %52
  %58 = tail call float @llvm.fmuladd.f32(float %54, float %57, float %52)
  %59 = fptosi float %58 to i32
  %60 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  store i32 %59, ptr %60, align 4, !tbaa !126
  %61 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 58, i32 1
  %62 = load float, ptr %61, align 4, !tbaa !261
  %63 = tail call float @llvm.fmuladd.f32(float %62, float %48, float %43)
  %64 = fptosi float %63 to i32
  %65 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  store i32 %64, ptr %65, align 4, !tbaa !123
  %66 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 58, i32 3
  %67 = load float, ptr %66, align 4, !tbaa !262
  %68 = tail call float @llvm.fmuladd.f32(float %67, float %57, float %52)
  br label %93

69:                                               ; preds = %41
  %70 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 17
  %71 = load float, ptr %70, align 8, !tbaa !263
  %72 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 5
  %73 = load i16, ptr %72, align 8, !tbaa !82
  %74 = sitofp i16 %73 to float
  %75 = fmul float %71, %74
  %76 = fptosi float %75 to i32
  store i32 %76, ptr %3, align 4, !tbaa !124
  %77 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 17, i32 1
  %78 = load float, ptr %77, align 4, !tbaa !264
  %79 = fmul float %78, %74
  %80 = fptosi float %79 to i32
  %81 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  store i32 %80, ptr %81, align 4, !tbaa !123
  %82 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 17, i32 2
  %83 = load float, ptr %82, align 8, !tbaa !265
  %84 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 6
  %85 = load i16, ptr %84, align 2, !tbaa !85
  %86 = sitofp i16 %85 to float
  %87 = fmul float %83, %86
  %88 = fptosi float %87 to i32
  %89 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  store i32 %88, ptr %89, align 4, !tbaa !126
  %90 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 17, i32 3
  %91 = load float, ptr %90, align 4, !tbaa !266
  %92 = fmul float %91, %86
  br label %93

93:                                               ; preds = %69, %42
  %94 = phi float [ %92, %69 ], [ %68, %42 ]
  %95 = fptosi float %94 to i32
  %96 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  store i32 %95, ptr %96, align 4, !tbaa !125
  %97 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3
  %98 = load i32, ptr %97, align 8, !tbaa !103
  %99 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 3, i32 2
  %100 = load i32, ptr %99, align 8, !tbaa !104
  tail call void @BLI_rcti_translate(ptr noundef %3, i32 noundef %98, i32 noundef %100) #11
  %101 = tail call zeroext i8 @BLI_rcti_isect(ptr noundef nonnull %97, ptr noundef %3, ptr noundef %3) #11
  br label %102

102:                                              ; preds = %15, %11, %37, %4, %19, %93
  %103 = phi i8 [ 1, %93 ], [ 0, %19 ], [ 0, %4 ], [ 0, %37 ], [ 0, %11 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret i8 %103
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

declare void @BLI_rcti_translate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @view3d_main_area_draw(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [32 x i8], align 16
  %4 = alloca [4 x float], align 16
  %5 = alloca [300 x i8], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i32], align 4
  %9 = alloca %struct.rctf, align 4
  %10 = alloca %struct.rcti, align 4
  %11 = alloca [32 x i8], align 16
  %12 = alloca [4 x i32], align 16
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [4 x float], align 16
  %16 = alloca [4 x float], align 16
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [16 x [16 x [4 x i8]]], align 16
  %22 = alloca [2 x float], align 4
  %23 = alloca [3 x float], align 4
  %24 = alloca [3 x float], align 4
  %25 = alloca [3 x float], align 4
  %26 = alloca [3 x float], align 4
  %27 = alloca ptr, align 8
  %28 = alloca %struct.rcti, align 4
  %29 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %30 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #11
  store ptr null, ptr %27, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %28) #11
  %31 = call zeroext i8 @ED_view3d_calc_render_border(ptr noundef %29, ptr noundef %30, ptr noundef %1, ptr noundef nonnull %28), !range !267
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 4
  %35 = call zeroext i8 @BLI_rcti_compare(ptr noundef nonnull %34, ptr noundef nonnull %28) #11
  %36 = icmp eq i8 %35, 0
  %37 = zext i1 %36 to i8
  br label %38

38:                                               ; preds = %33, %2
  %39 = phi i8 [ 0, %2 ], [ %37, %33 ]
  %40 = getelementptr inbounds %struct.View3D, ptr %30, i64 0, i32 24
  %41 = load i16, ptr %40, align 8, !tbaa !116
  %42 = icmp eq i16 %41, 6
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 22, i32 115
  %45 = call ptr @RE_engines_find(ptr noundef nonnull %44) #11
  %46 = icmp eq ptr %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.RenderEngineType, ptr %45, i64 0, i32 8
  %49 = load ptr, ptr %48, align 8, !tbaa !254
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.RenderEngineType, ptr %45, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !257
  %54 = icmp ne ptr %53, null
  %55 = zext i1 %54 to i8
  br label %56

56:                                               ; preds = %43, %47, %51
  %57 = phi i8 [ 0, %47 ], [ 0, %43 ], [ %55, %51 ]
  %58 = icmp eq i8 %57, 0
  %59 = icmp ne i8 %39, 0
  %60 = select i1 %58, i1 true, i1 %59
  br i1 %60, label %61, label %371

61:                                               ; preds = %56, %38
  %62 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %63 = load ptr, ptr %62, align 8, !tbaa !101
  %64 = getelementptr inbounds %struct.View3D, ptr %30, i64 0, i32 12
  %65 = load i32, ptr %64, align 8, !tbaa !234
  %66 = load i16, ptr %40, align 8, !tbaa !116
  %67 = trunc i16 %66 to i8
  %68 = call zeroext i8 @draw_glsl_material(ptr noundef %29, ptr noundef null, ptr noundef %30, i8 noundef zeroext %67) #11
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  call fastcc void @gpu_update_lamps_shadows(ptr noundef %29, ptr noundef %30)
  br label %71

71:                                               ; preds = %70, %61
  %72 = getelementptr inbounds %struct.RegionView3D, ptr %63, i64 0, i32 32
  %73 = load i16, ptr %72, align 2, !tbaa !127
  %74 = and i16 %73, 16
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = and i16 %73, -17
  store i16 %77, ptr %72, align 2, !tbaa !127
  %78 = call i32 @GPU_default_lights() #11
  br label %79

79:                                               ; preds = %76, %71
  %80 = load ptr, ptr %62, align 8, !tbaa !101
  call void @view3d_winmatrix_set(ptr noundef %1, ptr noundef %30, ptr noundef null) #11
  call void @view3d_viewmatrix_set(ptr noundef %29, ptr noundef %30, ptr noundef %80) #11
  %81 = getelementptr inbounds %struct.RegionView3D, ptr %80, i64 0, i32 3
  %82 = getelementptr inbounds %struct.RegionView3D, ptr %80, i64 0, i32 1
  call void @mul_m4_m4m4(ptr noundef nonnull %81, ptr noundef %80, ptr noundef nonnull %82) #11
  %83 = getelementptr inbounds %struct.RegionView3D, ptr %80, i64 0, i32 4
  %84 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %83, ptr noundef nonnull %81) #11
  %85 = getelementptr inbounds %struct.RegionView3D, ptr %80, i64 0, i32 2
  %86 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %85, ptr noundef nonnull %82) #11
  %87 = load float, ptr %81, align 8, !tbaa !41
  %88 = getelementptr inbounds %struct.RegionView3D, ptr %80, i64 0, i32 3, i64 1
  %89 = load float, ptr %88, align 8, !tbaa !41
  %90 = getelementptr inbounds %struct.RegionView3D, ptr %80, i64 0, i32 3, i64 2
  %91 = load float, ptr %90, align 8, !tbaa !41
  %92 = getelementptr inbounds %struct.RegionView3D, ptr %80, i64 0, i32 3, i64 0, i64 1
  %93 = load float, ptr %92, align 4, !tbaa !41
  %94 = getelementptr inbounds %struct.RegionView3D, ptr %80, i64 0, i32 3, i64 1, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !41
  %96 = getelementptr inbounds %struct.RegionView3D, ptr %80, i64 0, i32 3, i64 2, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !41
  %98 = fmul float %89, %89
  %99 = call float @llvm.fmuladd.f32(float %87, float %87, float %98)
  %100 = call float @llvm.fmuladd.f32(float %91, float %91, float %99)
  %101 = fmul float %95, %95
  %102 = call float @llvm.fmuladd.f32(float %93, float %93, float %101)
  %103 = call float @llvm.fmuladd.f32(float %97, float %97, float %102)
  %104 = fcmp olt float %100, %103
  %105 = select i1 %104, float %100, float %103
  %106 = call float @sqrtf(float noundef %105) #11
  %107 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %108 = load i16, ptr %107, align 8, !tbaa !82
  %109 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %110 = load i16, ptr %109, align 2, !tbaa !85
  %111 = call i16 @llvm.smax.i16(i16 %108, i16 %110)
  %112 = fdiv float 2.000000e+00, %106
  %113 = sitofp i16 %111 to float
  %114 = fdiv float %112, %113
  %115 = getelementptr inbounds %struct.RegionView3D, ptr %80, i64 0, i32 21
  store float %114, ptr %115, align 4, !tbaa !199
  call void @glMatrixMode(i32 noundef 5889) #11
  call void @glLoadMatrixf(ptr noundef %80) #11
  call void @glMatrixMode(i32 noundef 5888) #11
  call void @glLoadMatrixf(ptr noundef nonnull %82) #11
  %116 = load i16, ptr %72, align 2, !tbaa !127
  %117 = and i16 %116, -33
  store i16 %117, ptr %72, align 2, !tbaa !127
  %118 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !212
  %120 = icmp eq ptr %119, null
  br i1 %120, label %243, label %121

121:                                              ; preds = %79
  %122 = getelementptr inbounds %struct.View3D, ptr %30, i64 0, i32 29
  %123 = load i16, ptr %122, align 2, !tbaa !155
  %124 = and i16 %123, 4
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %243, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.World, ptr %119, i64 0, i32 22
  %128 = load i16, ptr %127, align 8, !tbaa !268
  %129 = and i16 %128, 1
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %234, label %131

131:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #11
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %21) #11
  %132 = load ptr, ptr %118, align 8, !tbaa !212
  %133 = getelementptr inbounds %struct.World, ptr %132, i64 0, i32 6
  %134 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 44
  %135 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 45
  call void @IMB_colormanagement_pixel_to_display_space_v3(ptr noundef nonnull %19, ptr noundef nonnull %133, ptr noundef nonnull %134, ptr noundef nonnull %135) #11
  %136 = load ptr, ptr %118, align 8, !tbaa !212
  %137 = getelementptr inbounds %struct.World, ptr %136, i64 0, i32 9
  call void @IMB_colormanagement_pixel_to_display_space_v3(ptr noundef nonnull %20, ptr noundef nonnull %137, ptr noundef nonnull %134, ptr noundef nonnull %135) #11
  call void @glMatrixMode(i32 noundef 5889) #11
  call void @glPushMatrix() #11
  call void @glLoadIdentity() #11
  call void @glMatrixMode(i32 noundef 5888) #11
  call void @glPushMatrix() #11
  call void @glLoadIdentity() #11
  call void @glShadeModel(i32 noundef 7425) #11
  %138 = load i1, ptr @view3d_main_area_clear.buf_calculated, align 1
  br i1 %138, label %183, label %139

139:                                              ; preds = %131, %158
  %140 = phi i64 [ %159, %158 ], [ 0, %131 ]
  %141 = trunc i64 %140 to i32
  %142 = sitofp i32 %141 to float
  %143 = fdiv float %142, 1.500000e+01
  %144 = fadd float %143, -5.000000e-01
  %145 = fmul float %144, 2.000000e+00
  br label %146

146:                                              ; preds = %139, %146
  %147 = phi i64 [ 0, %139 ], [ %156, %146 ]
  %148 = trunc i64 %147 to i32
  %149 = sitofp i32 %148 to float
  %150 = fdiv float %149, 1.500000e+01
  %151 = getelementptr inbounds [16 x [16 x [3 x float]]], ptr @view3d_main_area_clear.grid_pos, i64 0, i64 %140, i64 %147
  store float %145, ptr %151, align 4, !tbaa !41
  %152 = fadd float %150, -5.000000e-01
  %153 = fmul float %152, 2.000000e+00
  %154 = getelementptr inbounds [16 x [16 x [3 x float]]], ptr @view3d_main_area_clear.grid_pos, i64 0, i64 %140, i64 %147, i64 1
  store float %153, ptr %154, align 4, !tbaa !41
  %155 = getelementptr inbounds [16 x [16 x [3 x float]]], ptr @view3d_main_area_clear.grid_pos, i64 0, i64 %140, i64 %147, i64 2
  store float 1.000000e+00, ptr %155, align 4, !tbaa !41
  %156 = add nuw nsw i64 %147, 1
  %157 = icmp eq i64 %156, 16
  br i1 %157, label %158, label %146, !llvm.loop !270

158:                                              ; preds = %146
  %159 = add nuw nsw i64 %140, 1
  %160 = icmp eq i64 %159, 16
  br i1 %160, label %161, label %139, !llvm.loop !271

161:                                              ; preds = %158, %179
  %162 = phi i64 [ %180, %179 ], [ 0, %158 ]
  %163 = shl nuw nsw i64 %162, 4
  %164 = add nuw nsw i64 %163, 16
  br label %165

165:                                              ; preds = %161, %165
  %166 = phi i64 [ 0, %161 ], [ %177, %165 ]
  %167 = or disjoint i64 %166, %163
  %168 = trunc i64 %167 to i16
  %169 = getelementptr inbounds [15 x [15 x [4 x i16]]], ptr @view3d_main_area_clear.indices, i64 0, i64 %162, i64 %166
  store i16 %168, ptr %169, align 8, !tbaa !272
  %170 = add nuw nsw i16 %168, 1
  %171 = getelementptr inbounds [15 x [15 x [4 x i16]]], ptr @view3d_main_area_clear.indices, i64 0, i64 %162, i64 %166, i64 1
  store i16 %170, ptr %171, align 2, !tbaa !272
  %172 = add nuw nsw i64 %166, %164
  %173 = trunc i64 %172 to i16
  %174 = add nuw nsw i16 %173, 1
  %175 = getelementptr inbounds [15 x [15 x [4 x i16]]], ptr @view3d_main_area_clear.indices, i64 0, i64 %162, i64 %166, i64 2
  store i16 %174, ptr %175, align 4, !tbaa !272
  %176 = getelementptr inbounds [15 x [15 x [4 x i16]]], ptr @view3d_main_area_clear.indices, i64 0, i64 %162, i64 %166, i64 3
  store i16 %173, ptr %176, align 2, !tbaa !272
  %177 = add nuw nsw i64 %166, 1
  %178 = icmp eq i64 %177, 15
  br i1 %178, label %179, label %165, !llvm.loop !273

179:                                              ; preds = %165
  %180 = add nuw nsw i64 %162, 1
  %181 = icmp eq i64 %180, 15
  br i1 %181, label %182, label %161, !llvm.loop !274

182:                                              ; preds = %179
  store i1 true, ptr @view3d_main_area_clear.buf_calculated, align 1
  br label %183

183:                                              ; preds = %182, %131
  %184 = getelementptr inbounds float, ptr %22, i64 1
  br label %185

185:                                              ; preds = %183, %230
  %186 = phi i64 [ 0, %183 ], [ %231, %230 ]
  %187 = trunc i64 %186 to i32
  %188 = sitofp i32 %187 to float
  %189 = fdiv float %188, 1.500000e+01
  br label %190

190:                                              ; preds = %185, %225
  %191 = phi i64 [ 0, %185 ], [ %228, %225 ]
  %192 = trunc i64 %191 to i32
  %193 = sitofp i32 %192 to float
  %194 = fdiv float %193, 1.500000e+01
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #11
  %195 = load i16, ptr %107, align 8, !tbaa !82
  %196 = sitofp i16 %195 to float
  %197 = fmul float %189, %196
  store float %197, ptr %22, align 4, !tbaa !41
  %198 = load i16, ptr %109, align 2, !tbaa !85
  %199 = sitofp i16 %198 to float
  %200 = fmul float %194, %199
  store float %200, ptr %184, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %23, ptr noundef nonnull align 4 dereferenceable(12) @__const.view3d_main_area_clear.z_up, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #11
  %201 = getelementptr inbounds [16 x [16 x [4 x i8]]], ptr %21, i64 0, i64 %186, i64 %191
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #11
  call void @ED_view3d_win_to_vector(ptr noundef %1, ptr noundef nonnull %22, ptr noundef nonnull %24) #11
  %202 = load ptr, ptr %118, align 8, !tbaa !212
  %203 = getelementptr inbounds %struct.World, ptr %202, i64 0, i32 22
  %204 = load i16, ptr %203, align 8, !tbaa !268
  %205 = zext i16 %204 to i32
  %206 = and i32 %205, 4
  %207 = icmp eq i32 %206, 0
  %208 = and i32 %205, 2
  %209 = icmp eq i32 %208, 0
  br i1 %207, label %216, label %210

210:                                              ; preds = %190
  %211 = fmul float %193, 6.250000e-02
  br i1 %209, label %225, label %212

212:                                              ; preds = %210
  %213 = fadd float %211, -5.000000e-01
  %214 = call float @llvm.fabs.f32(float %213)
  %215 = fmul float %214, 2.000000e+00
  br label %225

216:                                              ; preds = %190
  %217 = call float @angle_normalized_v3v3(ptr noundef nonnull %23, ptr noundef nonnull %24) #11
  %218 = fdiv float %217, 0x400921FB60000000
  br i1 %209, label %223, label %219

219:                                              ; preds = %216
  %220 = fadd float %218, -5.000000e-01
  %221 = call float @llvm.fabs.f32(float %220)
  %222 = fmul float %221, 2.000000e+00
  br label %225

223:                                              ; preds = %216
  %224 = fsub float 1.000000e+00, %218
  br label %225

225:                                              ; preds = %210, %223, %219, %212
  %226 = phi float [ %215, %212 ], [ %222, %219 ], [ %224, %223 ], [ %211, %210 ]
  call void @interp_v3_v3v3(ptr noundef nonnull %25, ptr noundef nonnull %19, ptr noundef nonnull %20, float noundef %226) #11
  call void @rgb_float_to_uchar(ptr noundef nonnull %201, ptr noundef nonnull %25) #11
  %227 = getelementptr inbounds i8, ptr %201, i64 3
  store i8 0, ptr %227, align 1, !tbaa !186
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #11
  %228 = add nuw nsw i64 %191, 1
  %229 = icmp eq i64 %228, 16
  br i1 %229, label %230, label %190, !llvm.loop !275

230:                                              ; preds = %225
  %231 = add nuw nsw i64 %186, 1
  %232 = icmp eq i64 %231, 16
  br i1 %232, label %233, label %185, !llvm.loop !276

233:                                              ; preds = %230
  call void @glEnable(i32 noundef 2929) #11
  call void @glDepthFunc(i32 noundef 519) #11
  call void @glEnableClientState(i32 noundef 32884) #11
  call void @glEnableClientState(i32 noundef 32886) #11
  call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull @view3d_main_area_clear.grid_pos) #11
  call void @glColorPointer(i32 noundef 4, i32 noundef 5121, i32 noundef 0, ptr noundef nonnull %21) #11
  call void @glDrawElements(i32 noundef 7, i32 noundef 900, i32 noundef 5123, ptr noundef nonnull @view3d_main_area_clear.indices) #11
  call void @glDisableClientState(i32 noundef 32884) #11
  call void @glDisableClientState(i32 noundef 32886) #11
  call void @glDepthFunc(i32 noundef 515) #11
  call void @glDisable(i32 noundef 2929) #11
  call void @glMatrixMode(i32 noundef 5889) #11
  call void @glPopMatrix() #11
  call void @glMatrixMode(i32 noundef 5888) #11
  call void @glPopMatrix() #11
  call void @glShadeModel(i32 noundef 7424) #11
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %21) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #11
  br label %248

234:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #11
  %235 = getelementptr inbounds %struct.World, ptr %119, i64 0, i32 6
  %236 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 44
  %237 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 45
  call void @IMB_colormanagement_pixel_to_display_space_v3(ptr noundef nonnull %26, ptr noundef nonnull %235, ptr noundef nonnull %236, ptr noundef nonnull %237) #11
  %238 = load float, ptr %26, align 4, !tbaa !41
  %239 = getelementptr inbounds [3 x float], ptr %26, i64 0, i64 1
  %240 = load float, ptr %239, align 4, !tbaa !41
  %241 = getelementptr inbounds [3 x float], ptr %26, i64 0, i64 2
  %242 = load float, ptr %241, align 4, !tbaa !41
  call void @glClearColor(float noundef %238, float noundef %240, float noundef %242, float noundef 0.000000e+00) #11
  call void @glClear(i32 noundef 16640) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #11
  br label %248

243:                                              ; preds = %121, %79
  %244 = call i32 @UI_GetThemeValue(i32 noundef 181) #11
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %243
  call void @glMatrixMode(i32 noundef 5889) #11
  call void @glPushMatrix() #11
  call void @glLoadIdentity() #11
  call void @glMatrixMode(i32 noundef 5888) #11
  call void @glPushMatrix() #11
  call void @glLoadIdentity() #11
  call void @glEnable(i32 noundef 2929) #11
  call void @glDepthFunc(i32 noundef 519) #11
  call void @glShadeModel(i32 noundef 7425) #11
  call void @glBegin(i32 noundef 7) #11
  call void @UI_ThemeColor(i32 noundef 179) #11
  call void @glVertex3f(float noundef -1.000000e+00, float noundef -1.000000e+00, float noundef 1.000000e+00) #11
  call void @glVertex3f(float noundef 1.000000e+00, float noundef -1.000000e+00, float noundef 1.000000e+00) #11
  call void @UI_ThemeColor(i32 noundef 180) #11
  call void @glVertex3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #11
  call void @glVertex3f(float noundef -1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #11
  call void @glEnd() #11
  call void @glShadeModel(i32 noundef 7424) #11
  call void @glDepthFunc(i32 noundef 515) #11
  call void @glDisable(i32 noundef 2929) #11
  call void @glMatrixMode(i32 noundef 5889) #11
  call void @glPopMatrix() #11
  call void @glMatrixMode(i32 noundef 5888) #11
  call void @glPopMatrix() #11
  br label %248

247:                                              ; preds = %243
  call void @UI_ThemeClearColor(i32 noundef 180) #11
  call void @glClear(i32 noundef 16640) #11
  br label %248

248:                                              ; preds = %247, %246, %234, %233
  %249 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 88), align 8, !tbaa !119
  %250 = icmp eq i16 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %248
  call void @glEnable(i32 noundef 32925) #11
  br label %252

252:                                              ; preds = %251, %248
  call fastcc void @view3d_draw_objects(ptr noundef %0, ptr noundef %29, ptr noundef %30, ptr noundef %1, ptr noundef nonnull %27, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %253 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 88), align 8, !tbaa !119
  %254 = icmp eq i16 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %252
  call void @glDisable(i32 noundef 32925) #11
  br label %256

256:                                              ; preds = %255, %252
  %257 = load i32, ptr %64, align 8, !tbaa !234
  %258 = icmp eq i32 %257, %65
  br i1 %258, label %262, label %259

259:                                              ; preds = %256
  %260 = call ptr @CTX_wm_area(ptr noundef %0) #11
  %261 = call ptr @BKE_area_find_region_type(ptr noundef %260, i32 noundef 1) #11
  call void @ED_region_tag_redraw(ptr noundef %261) #11
  br label %262

262:                                              ; preds = %259, %256
  %263 = getelementptr inbounds %struct.View3D, ptr %30, i64 0, i32 29
  %264 = load i16, ptr %263, align 2, !tbaa !155
  %265 = and i16 %264, 4
  %266 = icmp eq i16 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %262
  call void @BDR_drawSketch(ptr noundef %0) #11
  br label %268

268:                                              ; preds = %267, %262
  %269 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 87), align 4, !tbaa !277
  %270 = and i32 %269, 1
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %370, label %272

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.RegionView3D, ptr %63, i64 0, i32 27
  %274 = load i8, ptr %273, align 1, !tbaa !34
  %275 = and i8 %274, 1
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %277, label %370

277:                                              ; preds = %272
  %278 = getelementptr inbounds %struct.RegionView3D, ptr %63, i64 0, i32 25
  %279 = load i8, ptr %278, align 1, !tbaa !207
  %280 = icmp eq i8 %279, 2
  br i1 %280, label %370, label %281

281:                                              ; preds = %277
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %15, ptr noundef nonnull align 16 dereferenceable(16) @__const.draw_rotation_guide.color, i64 16, i1 false)
  %282 = getelementptr inbounds %struct.RegionView3D, ptr %63, i64 0, i32 22
  %283 = load float, ptr %282, align 4, !tbaa !41
  %284 = fneg float %283
  store float %284, ptr %13, align 4, !tbaa !41
  %285 = getelementptr inbounds %struct.RegionView3D, ptr %63, i64 0, i32 22, i64 1
  %286 = load float, ptr %285, align 4, !tbaa !41
  %287 = fneg float %286
  %288 = getelementptr inbounds float, ptr %13, i64 1
  store float %287, ptr %288, align 4, !tbaa !41
  %289 = getelementptr inbounds %struct.RegionView3D, ptr %63, i64 0, i32 22, i64 2
  %290 = load float, ptr %289, align 4, !tbaa !41
  %291 = fneg float %290
  %292 = getelementptr inbounds float, ptr %13, i64 2
  store float %291, ptr %292, align 4, !tbaa !41
  call void @glEnable(i32 noundef 3042) #11
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #11
  call void @glShadeModel(i32 noundef 7425) #11
  call void @glPointSize(float noundef 5.000000e+00) #11
  call void @glEnable(i32 noundef 2832) #11
  call void @glDepthMask(i8 noundef zeroext 0) #11
  %293 = getelementptr inbounds %struct.RegionView3D, ptr %63, i64 0, i32 38
  %294 = load float, ptr %293, align 8, !tbaa !278
  %295 = fcmp une float %294, 0.000000e+00
  br i1 %295, label %296, label %367

296:                                              ; preds = %281
  %297 = getelementptr inbounds %struct.RegionView3D, ptr %63, i64 0, i32 18
  %298 = load float, ptr %297, align 8, !tbaa !279
  %299 = getelementptr inbounds %struct.RegionView3D, ptr %63, i64 0, i32 39
  %300 = load float, ptr %299, align 4, !tbaa !41
  %301 = fmul float %298, %300
  %302 = getelementptr inbounds %struct.RegionView3D, ptr %63, i64 0, i32 39, i64 1
  %303 = load float, ptr %302, align 4, !tbaa !41
  %304 = fmul float %298, %303
  %305 = getelementptr inbounds %struct.RegionView3D, ptr %63, i64 0, i32 39, i64 2
  %306 = load float, ptr %305, align 4, !tbaa !41
  %307 = fmul float %298, %306
  call void @glBegin(i32 noundef 3) #11
  %308 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 3
  store float 0.000000e+00, ptr %308, align 4, !tbaa !41
  call void @glColor4fv(ptr noundef nonnull %15) #11
  %309 = load float, ptr %13, align 4, !tbaa !41
  %310 = fadd float %301, %309
  store float %310, ptr %14, align 4, !tbaa !41
  %311 = load float, ptr %288, align 4, !tbaa !41
  %312 = fadd float %304, %311
  %313 = getelementptr inbounds float, ptr %14, i64 1
  store float %312, ptr %313, align 4, !tbaa !41
  %314 = load float, ptr %292, align 4, !tbaa !41
  %315 = fadd float %307, %314
  %316 = getelementptr inbounds float, ptr %14, i64 2
  store float %315, ptr %316, align 4, !tbaa !41
  call void @glVertex3fv(ptr noundef nonnull %14) #11
  store float 5.000000e-01, ptr %308, align 4, !tbaa !41
  call void @glColor4fv(ptr noundef nonnull %15) #11
  call void @glVertex3fv(ptr noundef nonnull %13) #11
  store float 0.000000e+00, ptr %308, align 4, !tbaa !41
  call void @glColor4fv(ptr noundef nonnull %15) #11
  %317 = load float, ptr %13, align 4, !tbaa !41
  %318 = fsub float %317, %301
  store float %318, ptr %14, align 4, !tbaa !41
  %319 = load float, ptr %288, align 4, !tbaa !41
  %320 = fsub float %319, %304
  store float %320, ptr %313, align 4, !tbaa !41
  %321 = load float, ptr %292, align 4, !tbaa !41
  %322 = fsub float %321, %307
  store float %322, ptr %316, align 4, !tbaa !41
  call void @glVertex3fv(ptr noundef nonnull %14) #11
  call void @glEnd() #11
  %323 = fmul float %298, 0x3FA99999A0000000
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #11
  %324 = load float, ptr %305, align 4, !tbaa !41
  %325 = call float @llvm.fabs.f32(float %324)
  %326 = fcmp oge float %325, 0x3FEE666660000000
  br i1 %326, label %342, label %327

327:                                              ; preds = %296
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #11
  %328 = load float, ptr %302, align 4, !tbaa !41
  %329 = fneg float %328
  %330 = call float @llvm.fmuladd.f32(float %324, float 0.000000e+00, float %329)
  store float %330, ptr %17, align 4, !tbaa !41
  %331 = load float, ptr %299, align 4, !tbaa !41
  %332 = fmul float %324, 0.000000e+00
  %333 = fsub float %331, %332
  %334 = getelementptr inbounds float, ptr %17, i64 1
  store float %333, ptr %334, align 4, !tbaa !41
  %335 = fmul float %331, -0.000000e+00
  %336 = call float @llvm.fmuladd.f32(float %328, float 0.000000e+00, float %335)
  %337 = getelementptr inbounds float, ptr %17, i64 2
  store float %336, ptr %337, align 4, !tbaa !41
  %338 = fmul float %328, 0.000000e+00
  %339 = call float @llvm.fmuladd.f32(float %331, float 0.000000e+00, float %338)
  %340 = fadd float %324, %339
  %341 = call float @acosf(float noundef %340) #11
  call void @axis_angle_to_quat(ptr noundef nonnull %16, ptr noundef nonnull %17, float noundef %341) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #11
  br label %342

342:                                              ; preds = %327, %296
  store float 2.500000e-01, ptr %308, align 4, !tbaa !41
  call void @glColor4fv(ptr noundef nonnull %15) #11
  call void @glBegin(i32 noundef 2) #11
  %343 = getelementptr inbounds float, ptr %18, i64 1
  %344 = getelementptr inbounds float, ptr %18, i64 2
  br label %345

345:                                              ; preds = %342, %353
  %346 = phi float [ 0.000000e+00, %342 ], [ %364, %353 ]
  %347 = phi i32 [ 0, %342 ], [ %363, %353 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #11
  %348 = call float @cosf(float noundef %346) #11
  %349 = fmul float %323, %348
  store float %349, ptr %18, align 4, !tbaa !41
  %350 = call float @sinf(float noundef %346) #11
  %351 = fmul float %323, %350
  store float %351, ptr %343, align 4, !tbaa !41
  store float 0.000000e+00, ptr %344, align 4, !tbaa !41
  br i1 %326, label %353, label %352

352:                                              ; preds = %345
  call void @mul_qt_v3(ptr noundef nonnull %16, ptr noundef nonnull %18) #11
  br label %353

353:                                              ; preds = %352, %345
  %354 = load float, ptr %13, align 4, !tbaa !41
  %355 = load float, ptr %18, align 4, !tbaa !41
  %356 = fadd float %354, %355
  store float %356, ptr %18, align 4, !tbaa !41
  %357 = load float, ptr %288, align 4, !tbaa !41
  %358 = load float, ptr %343, align 4, !tbaa !41
  %359 = fadd float %357, %358
  store float %359, ptr %343, align 4, !tbaa !41
  %360 = load float, ptr %292, align 4, !tbaa !41
  %361 = load float, ptr %344, align 4, !tbaa !41
  %362 = fadd float %360, %361
  store float %362, ptr %344, align 4, !tbaa !41
  call void @glVertex3fv(ptr noundef nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #11
  %363 = add nuw nsw i32 %347, 1
  %364 = fadd float %346, 0x3FDEEEBF20000000
  %365 = icmp eq i32 %363, 13
  br i1 %365, label %366, label %345, !llvm.loop !280

366:                                              ; preds = %353
  call void @glEnd() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #11
  store float 1.000000e+00, ptr %308, align 4, !tbaa !41
  br label %369

367:                                              ; preds = %281
  %368 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 3
  store float 5.000000e-01, ptr %368, align 4, !tbaa !41
  br label %369

369:                                              ; preds = %367, %366
  call void @glColor4fv(ptr noundef nonnull %15) #11
  call void @glBegin(i32 noundef 0) #11
  call void @glVertex3fv(ptr noundef nonnull %13) #11
  call void @glEnd() #11
  call void @glDisable(i32 noundef 3042) #11
  call void @glDisable(i32 noundef 2832) #11
  call void @glDepthMask(i8 noundef zeroext 1) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #11
  br label %370

370:                                              ; preds = %268, %272, %277, %369
  call void @ED_region_pixelspace(ptr noundef %1) #11
  br label %371

371:                                              ; preds = %56, %370
  %372 = load i16, ptr %40, align 8, !tbaa !116
  %373 = icmp eq i16 %372, 6
  br i1 %373, label %374, label %512

374:                                              ; preds = %371
  %375 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %376 = load ptr, ptr %375, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #11
  %377 = getelementptr inbounds %struct.RegionView3D, ptr %376, i64 0, i32 11
  %378 = load ptr, ptr %377, align 8, !tbaa !281
  %379 = icmp eq ptr %378, null
  br i1 %379, label %380, label %399

380:                                              ; preds = %374
  %381 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 22, i32 115
  %382 = call ptr @RE_engines_find(ptr noundef nonnull %381) #11
  %383 = getelementptr inbounds %struct.RenderEngineType, ptr %382, i64 0, i32 8
  %384 = load ptr, ptr %383, align 8, !tbaa !254
  %385 = icmp eq ptr %384, null
  br i1 %385, label %511, label %386

386:                                              ; preds = %380
  %387 = getelementptr inbounds %struct.RenderEngineType, ptr %382, i64 0, i32 9
  %388 = load ptr, ptr %387, align 8, !tbaa !257
  %389 = icmp eq ptr %388, null
  br i1 %389, label %511, label %390

390:                                              ; preds = %386
  %391 = call ptr @RE_engine_create_ex(ptr noundef %382, i8 noundef zeroext 1) #11
  %392 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 22, i32 37
  %393 = load i32, ptr %392, align 8, !tbaa !282
  %394 = getelementptr inbounds %struct.RenderEngine, ptr %391, i64 0, i32 5
  store i32 %393, ptr %394, align 4, !tbaa !283
  %395 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 22, i32 38
  %396 = load i32, ptr %395, align 4, !tbaa !285
  %397 = getelementptr inbounds %struct.RenderEngine, ptr %391, i64 0, i32 6
  store i32 %396, ptr %397, align 8, !tbaa !286
  %398 = load ptr, ptr %383, align 8, !tbaa !254
  call void %398(ptr noundef %391, ptr noundef %0) #11
  store ptr %391, ptr %377, align 8, !tbaa !281
  br label %399

399:                                              ; preds = %390, %374
  %400 = load ptr, ptr %375, align 8, !tbaa !101
  call void @view3d_winmatrix_set(ptr noundef %1, ptr noundef %30, ptr noundef null) #11
  call void @view3d_viewmatrix_set(ptr noundef %29, ptr noundef %30, ptr noundef %400) #11
  %401 = getelementptr inbounds %struct.RegionView3D, ptr %400, i64 0, i32 3
  %402 = getelementptr inbounds %struct.RegionView3D, ptr %400, i64 0, i32 1
  call void @mul_m4_m4m4(ptr noundef nonnull %401, ptr noundef %400, ptr noundef nonnull %402) #11
  %403 = getelementptr inbounds %struct.RegionView3D, ptr %400, i64 0, i32 4
  %404 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %403, ptr noundef nonnull %401) #11
  %405 = getelementptr inbounds %struct.RegionView3D, ptr %400, i64 0, i32 2
  %406 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %405, ptr noundef nonnull %402) #11
  %407 = load float, ptr %401, align 8, !tbaa !41
  %408 = getelementptr inbounds %struct.RegionView3D, ptr %400, i64 0, i32 3, i64 1
  %409 = load float, ptr %408, align 8, !tbaa !41
  %410 = getelementptr inbounds %struct.RegionView3D, ptr %400, i64 0, i32 3, i64 2
  %411 = load float, ptr %410, align 8, !tbaa !41
  %412 = getelementptr inbounds %struct.RegionView3D, ptr %400, i64 0, i32 3, i64 0, i64 1
  %413 = load float, ptr %412, align 4, !tbaa !41
  %414 = getelementptr inbounds %struct.RegionView3D, ptr %400, i64 0, i32 3, i64 1, i64 1
  %415 = load float, ptr %414, align 4, !tbaa !41
  %416 = getelementptr inbounds %struct.RegionView3D, ptr %400, i64 0, i32 3, i64 2, i64 1
  %417 = load float, ptr %416, align 4, !tbaa !41
  %418 = fmul float %409, %409
  %419 = call float @llvm.fmuladd.f32(float %407, float %407, float %418)
  %420 = call float @llvm.fmuladd.f32(float %411, float %411, float %419)
  %421 = fmul float %415, %415
  %422 = call float @llvm.fmuladd.f32(float %413, float %413, float %421)
  %423 = call float @llvm.fmuladd.f32(float %417, float %417, float %422)
  %424 = fcmp olt float %420, %423
  %425 = select i1 %424, float %420, float %423
  %426 = call float @sqrtf(float noundef %425) #11
  %427 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %428 = load i16, ptr %427, align 8, !tbaa !82
  %429 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %430 = load i16, ptr %429, align 2, !tbaa !85
  %431 = call i16 @llvm.smax.i16(i16 %428, i16 %430)
  %432 = fdiv float 2.000000e+00, %426
  %433 = sitofp i16 %431 to float
  %434 = fdiv float %432, %433
  %435 = getelementptr inbounds %struct.RegionView3D, ptr %400, i64 0, i32 21
  store float %434, ptr %435, align 4, !tbaa !199
  call void @glMatrixMode(i32 noundef 5889) #11
  call void @glLoadMatrixf(ptr noundef %400) #11
  call void @glMatrixMode(i32 noundef 5888) #11
  call void @glLoadMatrixf(ptr noundef nonnull %402) #11
  call void @ED_region_pixelspace(ptr noundef %1) #11
  %436 = icmp eq i8 %39, 0
  br i1 %436, label %455, label %437

437:                                              ; preds = %399
  %438 = getelementptr inbounds %struct.rcti, ptr %28, i64 0, i32 1
  %439 = load i32, ptr %438, align 4, !tbaa !123
  %440 = load i32, ptr %28, align 4, !tbaa !124
  %441 = icmp sgt i32 %439, %440
  br i1 %441, label %442, label %511

442:                                              ; preds = %437
  %443 = getelementptr inbounds %struct.rcti, ptr %28, i64 0, i32 3
  %444 = load i32, ptr %443, align 4, !tbaa !125
  %445 = getelementptr inbounds %struct.rcti, ptr %28, i64 0, i32 2
  %446 = load i32, ptr %445, align 4, !tbaa !126
  %447 = icmp sgt i32 %444, %446
  br i1 %447, label %448, label %511

448:                                              ; preds = %442
  call void @glGetIntegerv(i32 noundef 3088, ptr noundef nonnull %12) #11
  %449 = load i32, ptr %28, align 4, !tbaa !124
  %450 = load i32, ptr %445, align 4, !tbaa !126
  %451 = load i32, ptr %438, align 4, !tbaa !123
  %452 = sub nsw i32 %451, %449
  %453 = load i32, ptr %443, align 4, !tbaa !125
  %454 = sub nsw i32 %453, %450
  call void @glScissor(i32 noundef %449, i32 noundef %450, i32 noundef %452, i32 noundef %454) #11
  br label %455

455:                                              ; preds = %448, %399
  call void @glClearColor(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #11
  call void @glClear(i32 noundef 16640) #11
  %456 = getelementptr inbounds %struct.View3D, ptr %30, i64 0, i32 28
  %457 = load i16, ptr %456, align 8, !tbaa !107
  %458 = and i16 %457, 2
  %459 = icmp eq i16 %458, 0
  br i1 %459, label %475, label %460

460:                                              ; preds = %455
  %461 = load ptr, ptr %375, align 8, !tbaa !101
  %462 = getelementptr inbounds %struct.RegionView3D, ptr %461, i64 0, i32 26
  %463 = load i8, ptr %462, align 2, !tbaa !219
  %464 = icmp eq i8 %463, 0
  br i1 %464, label %469, label %465

465:                                              ; preds = %460
  %466 = getelementptr inbounds %struct.RegionView3D, ptr %461, i64 0, i32 25
  %467 = load i8, ptr %466, align 1, !tbaa !207
  %468 = icmp eq i8 %467, 0
  br i1 %468, label %474, label %469

469:                                              ; preds = %465, %460
  %470 = getelementptr inbounds %struct.RegionView3D, ptr %461, i64 0, i32 25
  %471 = load i8, ptr %470, align 1, !tbaa !207
  %472 = icmp eq i8 %471, 2
  br i1 %472, label %473, label %480

473:                                              ; preds = %469
  call fastcc void @view3d_draw_bgpic(ptr noundef %29, ptr noundef %1, ptr noundef %30, i8 noundef zeroext 0, i8 noundef zeroext 1)
  br label %480

474:                                              ; preds = %465
  call fastcc void @view3d_draw_bgpic(ptr noundef %29, ptr noundef %1, ptr noundef %30, i8 noundef zeroext 0, i8 noundef zeroext 1)
  br label %480

475:                                              ; preds = %455
  %476 = load i16, ptr %427, align 8, !tbaa !82
  %477 = sitofp i16 %476 to float
  %478 = load i16, ptr %429, align 2, !tbaa !85
  %479 = sitofp i16 %478 to float
  call void @fdrawcheckerboard(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %477, float noundef %479) #11
  br label %480

480:                                              ; preds = %474, %473, %469, %475
  %481 = load ptr, ptr %377, align 8, !tbaa !281
  %482 = load ptr, ptr %481, align 8, !tbaa !287
  %483 = getelementptr inbounds %struct.RenderEngineType, ptr %482, i64 0, i32 9
  %484 = load ptr, ptr %483, align 8, !tbaa !257
  call void %484(ptr noundef nonnull %481, ptr noundef %0) #11
  %485 = load i16, ptr %456, align 8, !tbaa !107
  %486 = and i16 %485, 2
  %487 = icmp eq i16 %486, 0
  br i1 %487, label %502, label %488

488:                                              ; preds = %480
  %489 = load ptr, ptr %375, align 8, !tbaa !101
  %490 = getelementptr inbounds %struct.RegionView3D, ptr %489, i64 0, i32 26
  %491 = load i8, ptr %490, align 2, !tbaa !219
  %492 = icmp eq i8 %491, 0
  br i1 %492, label %497, label %493

493:                                              ; preds = %488
  %494 = getelementptr inbounds %struct.RegionView3D, ptr %489, i64 0, i32 25
  %495 = load i8, ptr %494, align 1, !tbaa !207
  %496 = icmp eq i8 %495, 0
  br i1 %496, label %501, label %497

497:                                              ; preds = %493, %488
  %498 = getelementptr inbounds %struct.RegionView3D, ptr %489, i64 0, i32 25
  %499 = load i8, ptr %498, align 1, !tbaa !207
  %500 = icmp eq i8 %499, 2
  br i1 %500, label %501, label %502

501:                                              ; preds = %493, %497
  call fastcc void @view3d_draw_bgpic(ptr noundef %29, ptr noundef %1, ptr noundef %30, i8 noundef zeroext 1, i8 noundef zeroext 1)
  br label %502

502:                                              ; preds = %501, %497, %480
  br i1 %436, label %511, label %503

503:                                              ; preds = %502
  %504 = load i32, ptr %12, align 16, !tbaa !133
  %505 = getelementptr inbounds [4 x i32], ptr %12, i64 0, i64 1
  %506 = load i32, ptr %505, align 4, !tbaa !133
  %507 = getelementptr inbounds [4 x i32], ptr %12, i64 0, i64 2
  %508 = load i32, ptr %507, align 8, !tbaa !133
  %509 = getelementptr inbounds [4 x i32], ptr %12, i64 0, i64 3
  %510 = load i32, ptr %509, align 4, !tbaa !133
  call void @glScissor(i32 noundef %504, i32 noundef %506, i32 noundef %508, i32 noundef %510) #11
  br label %511

511:                                              ; preds = %380, %386, %437, %442, %502, %503
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #11
  br label %512

512:                                              ; preds = %511, %371
  %513 = load ptr, ptr %27, align 8, !tbaa !72
  %514 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %515 = load ptr, ptr %514, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #11
  call void @ED_region_visible_rect(ptr noundef %1, ptr noundef nonnull %10) #11
  %516 = getelementptr inbounds %struct.RegionView3D, ptr %515, i64 0, i32 25
  %517 = load i8, ptr %516, align 1, !tbaa !207
  %518 = icmp eq i8 %517, 2
  br i1 %518, label %519, label %759

519:                                              ; preds = %512
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #11
  %520 = load ptr, ptr %514, align 8, !tbaa !101
  %521 = getelementptr inbounds %struct.View3D, ptr %30, i64 0, i32 15
  %522 = load ptr, ptr %521, align 8, !tbaa !94
  %523 = icmp eq ptr %522, null
  br i1 %523, label %758, label %524

524:                                              ; preds = %519
  %525 = getelementptr inbounds %struct.Object, ptr %522, i64 0, i32 3
  %526 = load i16, ptr %525, align 8, !tbaa !187
  %527 = icmp eq i16 %526, 11
  br i1 %527, label %528, label %531

528:                                              ; preds = %524
  %529 = getelementptr inbounds %struct.Object, ptr %522, i64 0, i32 19
  %530 = load ptr, ptr %529, align 8, !tbaa !214
  br label %531

531:                                              ; preds = %528, %524
  %532 = phi ptr [ %530, %528 ], [ null, %524 ]
  call fastcc void @view3d_camera_border(ptr noundef %29, ptr noundef %1, ptr noundef %30, ptr noundef %520, ptr noundef nonnull %9, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %533 = load float, ptr %9, align 4, !tbaa !77
  %534 = getelementptr inbounds %struct.rctf, ptr %9, i64 0, i32 2
  %535 = load float, ptr %534, align 4, !tbaa !79
  %536 = getelementptr inbounds %struct.rctf, ptr %9, i64 0, i32 1
  %537 = load float, ptr %536, align 4, !tbaa !76
  %538 = getelementptr inbounds %struct.rctf, ptr %9, i64 0, i32 3
  %539 = load float, ptr %538, align 4, !tbaa !78
  %540 = fadd float %533, 0xBFF00068E0000000
  %541 = fptosi float %540 to i32
  %542 = sitofp i32 %541 to float
  %543 = fadd float %535, 0xBFF00068E0000000
  %544 = fptosi float %543 to i32
  %545 = sitofp i32 %544 to float
  %546 = fadd float %537, 0x3FEFFF2E40000000
  %547 = fptosi float %546 to i32
  %548 = sitofp i32 %547 to float
  %549 = fadd float %539, 0x3FEFFF2E40000000
  %550 = fptosi float %549 to i32
  %551 = sitofp i32 %550 to float
  %552 = icmp eq ptr %532, null
  br i1 %552, label %590, label %553

553:                                              ; preds = %531
  %554 = getelementptr inbounds %struct.Camera, ptr %532, i64 0, i32 4
  %555 = load i16, ptr %554, align 2, !tbaa !288
  %556 = and i16 %555, 4
  %557 = icmp eq i16 %556, 0
  br i1 %557, label %590, label %558

558:                                              ; preds = %553
  %559 = getelementptr inbounds %struct.Camera, ptr %532, i64 0, i32 5
  %560 = load float, ptr %559, align 4, !tbaa !290
  %561 = fcmp ogt float %560, 0x3EB0C6F7A0000000
  br i1 %561, label %562, label %590

562:                                              ; preds = %558
  %563 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %564 = load i16, ptr %563, align 8, !tbaa !82
  %565 = sext i16 %564 to i32
  %566 = add nsw i32 %565, 1
  %567 = sitofp i32 %566 to float
  %568 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %569 = load i16, ptr %568, align 2, !tbaa !85
  %570 = sext i16 %569 to i32
  %571 = add nsw i32 %570, 1
  %572 = sitofp i32 %571 to float
  %573 = fcmp oeq float %560, 1.000000e+00
  br i1 %573, label %574, label %575

574:                                              ; preds = %562
  call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #11
  br label %577

575:                                              ; preds = %562
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #11
  call void @glEnable(i32 noundef 3042) #11
  %576 = load float, ptr %559, align 4, !tbaa !290
  call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %576) #11
  br label %577

577:                                              ; preds = %575, %574
  %578 = icmp sgt i32 %541, 0
  br i1 %578, label %579, label %580

579:                                              ; preds = %577
  call void @glRectf(float noundef 0.000000e+00, float noundef %572, float noundef %542, float noundef 0.000000e+00) #11
  br label %580

580:                                              ; preds = %579, %577
  %581 = fcmp olt float %548, %567
  br i1 %581, label %582, label %583

582:                                              ; preds = %580
  call void @glRectf(float noundef %548, float noundef %572, float noundef %567, float noundef 0.000000e+00) #11
  br label %583

583:                                              ; preds = %582, %580
  %584 = fcmp olt float %551, %572
  br i1 %584, label %585, label %586

585:                                              ; preds = %583
  call void @glRectf(float noundef %542, float noundef %572, float noundef %548, float noundef %551) #11
  br label %586

586:                                              ; preds = %585, %583
  %587 = icmp sgt i32 %550, 0
  br i1 %587, label %588, label %589

588:                                              ; preds = %586
  call void @glRectf(float noundef %542, float noundef %545, float noundef %548, float noundef 0.000000e+00) #11
  br label %589

589:                                              ; preds = %588, %586
  call void @glDisable(i32 noundef 3042) #11
  br label %590

590:                                              ; preds = %589, %558, %553, %531
  call void @glPolygonMode(i32 noundef 1032, i32 noundef 6913) #11
  call void @setlinestyle(i32 noundef 0) #11
  call void @UI_ThemeColor(i32 noundef 2) #11
  call void @glRectf(float noundef %542, float noundef %545, float noundef %548, float noundef %551) #11
  %591 = load i8, ptr @view3d_camera_border_hack_test, align 1, !tbaa !186
  %592 = icmp eq i8 %591, 1
  br i1 %592, label %593, label %598

593:                                              ; preds = %590
  call void @glColor3ubv(ptr noundef nonnull @view3d_camera_border_hack_col) #11
  %594 = fadd float %542, 1.000000e+00
  %595 = fadd float %545, 1.000000e+00
  %596 = fadd float %548, -1.000000e+00
  %597 = fadd float %551, -1.000000e+00
  call void @glRectf(float noundef %594, float noundef %595, float noundef %596, float noundef %597) #11
  store i8 0, ptr @view3d_camera_border_hack_test, align 1, !tbaa !186
  br label %598

598:                                              ; preds = %593, %590
  call void @setlinestyle(i32 noundef 3) #11
  %599 = getelementptr inbounds %struct.View3D, ptr %30, i64 0, i32 29
  %600 = load i16, ptr %599, align 2, !tbaa !155
  %601 = and i16 %600, 32
  %602 = icmp eq i16 %601, 0
  br i1 %602, label %608, label %603

603:                                              ; preds = %598
  call void @UI_ThemeColor(i32 noundef 0) #11
  %604 = fadd float %542, -1.000000e+00
  %605 = fadd float %545, -1.000000e+00
  %606 = fadd float %548, 1.000000e+00
  %607 = fadd float %551, 1.000000e+00
  call void @glRectf(float noundef %604, float noundef %605, float noundef %606, float noundef %607) #11
  br label %608

608:                                              ; preds = %603, %598
  call void @UI_ThemeColor(i32 noundef 192) #11
  call void @glRectf(float noundef %542, float noundef %545, float noundef %548, float noundef %551) #11
  %609 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 22, i32 47
  %610 = load i32, ptr %609, align 8, !tbaa !258
  %611 = and i32 %610, 512
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %632, label %613

613:                                              ; preds = %608
  %614 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 22, i32 58
  %615 = load float, ptr %614, align 8, !tbaa !259
  %616 = fsub float %537, %533
  %617 = call float @llvm.fmuladd.f32(float %615, float %616, float %533)
  %618 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 22, i32 58, i32 2
  %619 = load float, ptr %618, align 8, !tbaa !260
  %620 = fsub float %539, %535
  %621 = call float @llvm.fmuladd.f32(float %619, float %620, float %535)
  %622 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 22, i32 58, i32 1
  %623 = load float, ptr %622, align 4, !tbaa !261
  %624 = call float @llvm.fmuladd.f32(float %623, float %616, float %533)
  %625 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 22, i32 58, i32 3
  %626 = load float, ptr %625, align 4, !tbaa !262
  %627 = call float @llvm.fmuladd.f32(float %626, float %620, float %535)
  call void @cpack(i32 noundef 4210943) #11
  %628 = fptosi float %617 to i32
  %629 = fptosi float %621 to i32
  %630 = fptosi float %624 to i32
  %631 = fptosi float %627 to i32
  call void @glRecti(i32 noundef %628, i32 noundef %629, i32 noundef %630, i32 noundef %631) #11
  br label %632

632:                                              ; preds = %613, %608
  br i1 %552, label %757, label %633

633:                                              ; preds = %632
  %634 = getelementptr inbounds %struct.Camera, ptr %532, i64 0, i32 3
  %635 = load i8, ptr %634, align 1, !tbaa !291
  %636 = and i8 %635, 1
  %637 = icmp eq i8 %636, 0
  br i1 %637, label %643, label %638

638:                                              ; preds = %633
  call void @UI_ThemeColorBlendShade(i32 noundef 192, i32 noundef 2, float noundef 2.500000e-01, i32 noundef 0) #11
  %639 = fsub float %537, %533
  %640 = call float @llvm.fmuladd.f32(float %639, float 5.000000e-01, float %533)
  %641 = fsub float %539, %535
  %642 = call float @llvm.fmuladd.f32(float %641, float 5.000000e-01, float %535)
  call void @glBegin(i32 noundef 1) #11
  call void @glVertex2f(float noundef %533, float noundef %642) #11
  call void @glVertex2f(float noundef %537, float noundef %642) #11
  call void @glVertex2f(float noundef %640, float noundef %535) #11
  call void @glVertex2f(float noundef %640, float noundef %539) #11
  call void @glEnd() #11
  br label %643

643:                                              ; preds = %638, %633
  %644 = load i8, ptr %634, align 1, !tbaa !291
  %645 = and i8 %644, 2
  %646 = icmp eq i8 %645, 0
  br i1 %646, label %648, label %647

647:                                              ; preds = %643
  call void @UI_ThemeColorBlendShade(i32 noundef 192, i32 noundef 2, float noundef 2.500000e-01, i32 noundef 0) #11
  call void @glBegin(i32 noundef 1) #11
  call void @glVertex2f(float noundef %533, float noundef %535) #11
  call void @glVertex2f(float noundef %537, float noundef %539) #11
  call void @glVertex2f(float noundef %533, float noundef %539) #11
  call void @glVertex2f(float noundef %537, float noundef %535) #11
  call void @glEnd() #11
  br label %648

648:                                              ; preds = %647, %643
  %649 = load i8, ptr %634, align 1, !tbaa !291
  %650 = and i8 %649, 4
  %651 = icmp eq i8 %650, 0
  br i1 %651, label %653, label %652

652:                                              ; preds = %648
  call void @UI_ThemeColorBlendShade(i32 noundef 192, i32 noundef 2, float noundef 2.500000e-01, i32 noundef 0) #11
  call fastcc void @drawviewborder_grid3(float noundef %533, float noundef %537, float noundef %535, float noundef %539, float noundef 0x3FD5555560000000)
  br label %653

653:                                              ; preds = %652, %648
  %654 = load i8, ptr %634, align 1, !tbaa !291
  %655 = and i8 %654, 8
  %656 = icmp eq i8 %655, 0
  br i1 %656, label %658, label %657

657:                                              ; preds = %653
  call void @UI_ThemeColorBlendShade(i32 noundef 192, i32 noundef 2, float noundef 2.500000e-01, i32 noundef 0) #11
  call fastcc void @drawviewborder_grid3(float noundef %533, float noundef %537, float noundef %535, float noundef %539, float noundef 0x3FD8722180000000)
  br label %658

658:                                              ; preds = %657, %653
  %659 = load i8, ptr %634, align 1, !tbaa !291
  %660 = and i8 %659, 16
  %661 = icmp eq i8 %660, 0
  br i1 %661, label %663, label %662

662:                                              ; preds = %658
  call void @UI_ThemeColorBlendShade(i32 noundef 192, i32 noundef 2, float noundef 2.500000e-01, i32 noundef 0) #11
  call fastcc void @drawviewborder_triangle(float noundef %533, float noundef %537, float noundef %535, float noundef %539, i8 noundef zeroext 0, i8 noundef zeroext 65)
  br label %663

663:                                              ; preds = %662, %658
  %664 = load i8, ptr %634, align 1, !tbaa !291
  %665 = and i8 %664, 32
  %666 = icmp eq i8 %665, 0
  br i1 %666, label %668, label %667

667:                                              ; preds = %663
  call void @UI_ThemeColorBlendShade(i32 noundef 192, i32 noundef 2, float noundef 2.500000e-01, i32 noundef 0) #11
  call fastcc void @drawviewborder_triangle(float noundef %533, float noundef %537, float noundef %535, float noundef %539, i8 noundef zeroext 0, i8 noundef zeroext 66)
  br label %668

668:                                              ; preds = %667, %663
  %669 = load i8, ptr %634, align 1, !tbaa !291
  %670 = and i8 %669, 64
  %671 = icmp eq i8 %670, 0
  br i1 %671, label %673, label %672

672:                                              ; preds = %668
  call void @UI_ThemeColorBlendShade(i32 noundef 192, i32 noundef 2, float noundef 2.500000e-01, i32 noundef 0) #11
  call fastcc void @drawviewborder_triangle(float noundef %533, float noundef %537, float noundef %535, float noundef %539, i8 noundef zeroext 1, i8 noundef zeroext 65)
  br label %673

673:                                              ; preds = %672, %668
  %674 = load i8, ptr %634, align 1, !tbaa !291
  %675 = icmp sgt i8 %674, -1
  br i1 %675, label %677, label %676

676:                                              ; preds = %673
  call void @UI_ThemeColorBlendShade(i32 noundef 192, i32 noundef 2, float noundef 2.500000e-01, i32 noundef 0) #11
  call fastcc void @drawviewborder_triangle(float noundef %533, float noundef %537, float noundef %535, float noundef %539, i8 noundef zeroext 1, i8 noundef zeroext 66)
  br label %677

677:                                              ; preds = %676, %673
  %678 = getelementptr inbounds %struct.Camera, ptr %532, i64 0, i32 4
  %679 = load i16, ptr %678, align 2, !tbaa !288
  %680 = and i16 %679, 8
  %681 = icmp eq i16 %680, 0
  br i1 %681, label %697, label %682

682:                                              ; preds = %677
  call void @UI_ThemeColorBlendShade(i32 noundef 192, i32 noundef 2, float noundef 2.500000e-01, i32 noundef 0) #11
  %683 = fsub float %537, %533
  %684 = fmul float %683, 0x3FB99999A0000000
  %685 = fsub float %539, %535
  %686 = fmul float %685, 0x3FA99999A0000000
  %687 = fadd float %533, %684
  %688 = fadd float %535, %686
  %689 = fsub float %537, %684
  %690 = fsub float %539, %686
  call void @uiDrawBox(i32 noundef 2, float noundef %687, float noundef %688, float noundef %689, float noundef %690, float noundef 2.000000e+00) #11
  %691 = fmul float %683, 0x3FA1EB8520000000
  %692 = fmul float %685, 0x3FA1EB8520000000
  %693 = fadd float %533, %691
  %694 = fadd float %535, %692
  %695 = fsub float %537, %691
  %696 = fsub float %539, %692
  call void @uiDrawBox(i32 noundef 2, float noundef %693, float noundef %694, float noundef %695, float noundef %696, float noundef 2.000000e+00) #11
  br label %697

697:                                              ; preds = %682, %677
  %698 = load i16, ptr %678, align 2, !tbaa !288
  %699 = and i16 %698, 256
  %700 = icmp eq i16 %699, 0
  br i1 %700, label %749, label %701

701:                                              ; preds = %697
  %702 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 22, i32 33
  %703 = load i32, ptr %702, align 4, !tbaa !97
  %704 = sitofp i32 %703 to float
  %705 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 22, i32 63
  %706 = load float, ptr %705, align 4, !tbaa !99
  %707 = fmul float %706, %704
  %708 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 22, i32 34
  %709 = load i32, ptr %708, align 8, !tbaa !98
  %710 = sitofp i32 %709 to float
  %711 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 22, i32 64
  %712 = load float, ptr %711, align 8, !tbaa !100
  %713 = fmul float %712, %710
  %714 = getelementptr inbounds %struct.Camera, ptr %532, i64 0, i32 18
  %715 = load i8, ptr %714, align 8, !tbaa !292
  %716 = zext i8 %715 to i32
  %717 = call i32 @BKE_camera_sensor_fit(i32 noundef %716, float noundef %707, float noundef %713) #11
  %718 = getelementptr inbounds %struct.Camera, ptr %532, i64 0, i32 11
  %719 = load float, ptr %718, align 4, !tbaa !293
  %720 = load i8, ptr %714, align 8, !tbaa !292
  %721 = icmp eq i8 %720, 0
  br i1 %721, label %725, label %722

722:                                              ; preds = %701
  %723 = getelementptr inbounds %struct.Camera, ptr %532, i64 0, i32 12
  %724 = load float, ptr %723, align 8, !tbaa !294
  br label %725

725:                                              ; preds = %722, %701
  %726 = phi float [ %724, %722 ], [ %719, %701 ]
  %727 = icmp eq i32 %717, 1
  br i1 %727, label %728, label %736

728:                                              ; preds = %725
  %729 = fsub float %548, %542
  %730 = fdiv float %729, %719
  %731 = fmul float %730, %726
  %732 = fadd float %545, %551
  %733 = fmul float %731, -5.000000e-01
  %734 = call float @llvm.fmuladd.f32(float %732, float 5.000000e-01, float %733)
  %735 = fadd float %731, %734
  br label %744

736:                                              ; preds = %725
  %737 = fsub float %551, %545
  %738 = fdiv float %737, %726
  %739 = fmul float %719, %738
  %740 = fadd float %542, %548
  %741 = fmul float %739, -5.000000e-01
  %742 = call float @llvm.fmuladd.f32(float %740, float 5.000000e-01, float %741)
  %743 = fadd float %739, %742
  br label %744

744:                                              ; preds = %736, %728
  %745 = phi float [ %548, %728 ], [ %743, %736 ]
  %746 = phi float [ %542, %728 ], [ %742, %736 ]
  %747 = phi float [ %734, %728 ], [ %545, %736 ]
  %748 = phi float [ %735, %728 ], [ %551, %736 ]
  call void @UI_ThemeColorShade(i32 noundef 192, i32 noundef 100) #11
  call void @uiDrawBox(i32 noundef 2, float noundef %746, float noundef %747, float noundef %745, float noundef %748, float noundef 2.000000e+00) #11
  br label %749

749:                                              ; preds = %744, %697
  call void @setlinestyle(i32 noundef 0) #11
  call void @glPolygonMode(i32 noundef 1032, i32 noundef 6914) #11
  %750 = load i16, ptr %678, align 2, !tbaa !288
  %751 = and i16 %750, 16
  %752 = icmp eq i16 %751, 0
  br i1 %752, label %758, label %753

753:                                              ; preds = %749
  call void @UI_ThemeColor(i32 noundef 4) #11
  %754 = fadd float %545, -1.500000e+01
  %755 = load ptr, ptr %521, align 8, !tbaa !94
  %756 = getelementptr inbounds %struct.ID, ptr %755, i64 0, i32 4, i64 2
  call void @BLF_draw_default(float noundef %542, float noundef %754, float noundef 0.000000e+00, ptr noundef nonnull %756, i64 noundef 64) #11
  call void @UI_ThemeColor(i32 noundef 25) #11
  br label %758

757:                                              ; preds = %632
  call void @setlinestyle(i32 noundef 0) #11
  call void @glPolygonMode(i32 noundef 1032, i32 noundef 6914) #11
  br label %758

758:                                              ; preds = %757, %753, %749, %519
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  br label %787

759:                                              ; preds = %512
  %760 = getelementptr inbounds %struct.View3D, ptr %30, i64 0, i32 29
  %761 = load i16, ptr %760, align 2, !tbaa !155
  %762 = and i16 %761, 2048
  %763 = icmp eq i16 %762, 0
  br i1 %763, label %787, label %764

764:                                              ; preds = %759
  call void @glPolygonMode(i32 noundef 1032, i32 noundef 6913) #11
  call void @setlinestyle(i32 noundef 3) #11
  call void @cpack(i32 noundef 4210943) #11
  %765 = getelementptr inbounds %struct.View3D, ptr %30, i64 0, i32 17
  %766 = load float, ptr %765, align 8, !tbaa !263
  %767 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %768 = load i16, ptr %767, align 8, !tbaa !82
  %769 = sitofp i16 %768 to float
  %770 = fmul float %766, %769
  %771 = fptosi float %770 to i32
  %772 = getelementptr inbounds %struct.View3D, ptr %30, i64 0, i32 17, i32 2
  %773 = load float, ptr %772, align 8, !tbaa !265
  %774 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %775 = load i16, ptr %774, align 2, !tbaa !85
  %776 = sitofp i16 %775 to float
  %777 = fmul float %773, %776
  %778 = fptosi float %777 to i32
  %779 = getelementptr inbounds %struct.View3D, ptr %30, i64 0, i32 17, i32 1
  %780 = load float, ptr %779, align 4, !tbaa !264
  %781 = fmul float %780, %769
  %782 = fptosi float %781 to i32
  %783 = getelementptr inbounds %struct.View3D, ptr %30, i64 0, i32 17, i32 3
  %784 = load float, ptr %783, align 4, !tbaa !266
  %785 = fmul float %784, %776
  %786 = fptosi float %785 to i32
  call void @glRecti(i32 noundef %771, i32 noundef %778, i32 noundef %782, i32 noundef %786) #11
  call void @setlinestyle(i32 noundef 0) #11
  call void @glPolygonMode(i32 noundef 1032, i32 noundef 6914) #11
  br label %787

787:                                              ; preds = %764, %759, %758
  %788 = getelementptr inbounds %struct.View3D, ptr %30, i64 0, i32 29
  %789 = load i16, ptr %788, align 2, !tbaa !155
  %790 = and i16 %789, 16
  %791 = icmp eq i16 %790, 0
  br i1 %791, label %793, label %792

792:                                              ; preds = %787
  call void @ED_gpencil_draw_view3d(ptr noundef %29, ptr noundef %30, ptr noundef %1, i8 noundef zeroext 0) #11
  br label %793

793:                                              ; preds = %792, %787
  %794 = load i16, ptr %788, align 2, !tbaa !155
  %795 = and i16 %794, 4
  %796 = icmp eq i16 %795, 0
  br i1 %796, label %797, label %1076

797:                                              ; preds = %793
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %798 = call ptr @ED_view3d_cursor3d_get(ptr noundef %29, ptr noundef %30) #11
  %799 = call i32 @ED_view3d_project_int_global(ptr noundef %1, ptr noundef %798, ptr noundef nonnull %8, i32 noundef 0) #11
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %801, label %846

801:                                              ; preds = %797
  %802 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !253
  %803 = sitofp i16 %802 to float
  %804 = fmul float %803, 2.500000e-01
  %805 = fmul float %803, 5.000000e-01
  call void @setlinestyle(i32 noundef 0) #11
  call void @cpack(i32 noundef 255) #11
  %806 = load i32, ptr %8, align 4, !tbaa !133
  %807 = sitofp i32 %806 to float
  %808 = getelementptr inbounds [2 x i32], ptr %8, i64 0, i64 1
  %809 = load i32, ptr %808, align 4, !tbaa !133
  %810 = sitofp i32 %809 to float
  %811 = call ptr @gluNewQuadric() #11
  call void @gluQuadricDrawStyle(ptr noundef %811, i32 noundef 100013) #11
  call void @glPushMatrix() #11
  call void @glTranslatef(float noundef %807, float noundef %810, float noundef 0.000000e+00) #11
  %812 = fpext float %805 to double
  call void @gluDisk(ptr noundef %811, double noundef 0.000000e+00, double noundef %812, i32 noundef 32, i32 noundef 1) #11
  call void @glPopMatrix() #11
  call void @gluDeleteQuadric(ptr noundef %811) #11
  call void @setlinestyle(i32 noundef 4) #11
  call void @cpack(i32 noundef 16777215) #11
  %813 = load i32, ptr %8, align 4, !tbaa !133
  %814 = sitofp i32 %813 to float
  %815 = load i32, ptr %808, align 4, !tbaa !133
  %816 = sitofp i32 %815 to float
  %817 = call ptr @gluNewQuadric() #11
  call void @gluQuadricDrawStyle(ptr noundef %817, i32 noundef 100013) #11
  call void @glPushMatrix() #11
  call void @glTranslatef(float noundef %814, float noundef %816, float noundef 0.000000e+00) #11
  call void @gluDisk(ptr noundef %817, double noundef 0.000000e+00, double noundef %812, i32 noundef 32, i32 noundef 1) #11
  call void @glPopMatrix() #11
  call void @gluDeleteQuadric(ptr noundef %817) #11
  call void @setlinestyle(i32 noundef 0) #11
  call void @UI_ThemeColor(i32 noundef 192) #11
  %818 = load i32, ptr %8, align 4, !tbaa !133
  %819 = sitofp i32 %818 to float
  %820 = fsub float %819, %803
  %821 = fptosi float %820 to i32
  %822 = load i32, ptr %808, align 4, !tbaa !133
  %823 = fsub float %819, %804
  %824 = fptosi float %823 to i32
  call void @sdrawline(i32 noundef %821, i32 noundef %822, i32 noundef %824, i32 noundef %822) #11
  %825 = load i32, ptr %8, align 4, !tbaa !133
  %826 = sitofp i32 %825 to float
  %827 = fadd float %804, %826
  %828 = fptosi float %827 to i32
  %829 = load i32, ptr %808, align 4, !tbaa !133
  %830 = fadd float %803, %826
  %831 = fptosi float %830 to i32
  call void @sdrawline(i32 noundef %828, i32 noundef %829, i32 noundef %831, i32 noundef %829) #11
  %832 = load i32, ptr %8, align 4, !tbaa !133
  %833 = load i32, ptr %808, align 4, !tbaa !133
  %834 = sitofp i32 %833 to float
  %835 = fsub float %834, %803
  %836 = fptosi float %835 to i32
  %837 = fsub float %834, %804
  %838 = fptosi float %837 to i32
  call void @sdrawline(i32 noundef %832, i32 noundef %836, i32 noundef %832, i32 noundef %838) #11
  %839 = load i32, ptr %8, align 4, !tbaa !133
  %840 = load i32, ptr %808, align 4, !tbaa !133
  %841 = sitofp i32 %840 to float
  %842 = fadd float %804, %841
  %843 = fptosi float %842 to i32
  %844 = fadd float %803, %841
  %845 = fptosi float %844 to i32
  call void @sdrawline(i32 noundef %839, i32 noundef %843, i32 noundef %839, i32 noundef %845) #11
  br label %846

846:                                              ; preds = %801, %797
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  %847 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !295
  %848 = and i32 %847, 131072
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %895, label %850

850:                                              ; preds = %846
  %851 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 68), align 2, !tbaa !296
  %852 = sitofp i16 %851 to float
  %853 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !297
  %854 = fmul float %853, %852
  %855 = fadd float %854, 1.000000e+00
  %856 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 69), align 8, !tbaa !298
  %857 = sext i16 %856 to i32
  %858 = sub nsw i32 10, %857
  %859 = mul nsw i32 %858, -20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #11
  store i16 120, ptr %7, align 2
  %860 = load i32, ptr %10, align 4, !tbaa !124
  %861 = sitofp i32 %860 to float
  %862 = fadd float %855, %861
  %863 = getelementptr inbounds %struct.rcti, ptr %10, i64 0, i32 2
  %864 = load i32, ptr %863, align 4, !tbaa !126
  %865 = sitofp i32 %864 to float
  %866 = fadd float %855, %865
  call void @glLineWidth(float noundef 2.000000e+00) #11
  call void @glEnable(i32 noundef 3042) #11
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #11
  %867 = getelementptr inbounds float, ptr %6, i64 1
  %868 = getelementptr inbounds float, ptr %6, i64 2
  %869 = getelementptr inbounds %struct.RegionView3D, ptr %515, i64 0, i32 17
  br label %870

870:                                              ; preds = %850, %889
  %871 = phi i64 [ 0, %850 ], [ %892, %889 ]
  store float 0.000000e+00, ptr %6, align 4, !tbaa !41
  store float 0.000000e+00, ptr %867, align 4, !tbaa !41
  store float 0.000000e+00, ptr %868, align 4, !tbaa !41
  %872 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %871
  store float 1.000000e+00, ptr %872, align 4, !tbaa !41
  call void @mul_qt_v3(ptr noundef nonnull %869, ptr noundef nonnull %6) #11
  %873 = load float, ptr %6, align 4, !tbaa !41
  %874 = fmul float %854, %873
  %875 = load float, ptr %867, align 4, !tbaa !41
  %876 = fmul float %854, %875
  %877 = trunc i64 %871 to i32
  %878 = or i32 %877, 176
  call void @UI_ThemeColorShadeAlpha(i32 noundef %878, i32 noundef 0, i32 noundef %859) #11
  call void @glBegin(i32 noundef 1) #11
  call void @glVertex2f(float noundef %862, float noundef %866) #11
  %879 = fadd float %862, %874
  %880 = fadd float %866, %876
  call void @glVertex2f(float noundef %879, float noundef %880) #11
  call void @glEnd() #11
  %881 = call float @llvm.fabs.f32(float %874)
  %882 = fcmp ogt float %881, 5.000000e-01
  %883 = call float @llvm.fabs.f32(float %876)
  %884 = fcmp ogt float %883, 5.000000e-01
  %885 = select i1 %882, i1 true, i1 %884
  br i1 %885, label %886, label %889

886:                                              ; preds = %870
  %887 = fadd float %879, 2.000000e+00
  %888 = fadd float %880, 2.000000e+00
  call void @BLF_draw_default_ascii(float noundef %887, float noundef %888, float noundef 0.000000e+00, ptr noundef nonnull %7, i64 noundef 1) #11
  br label %889

889:                                              ; preds = %886, %870
  %890 = load i8, ptr %7, align 2, !tbaa !186
  %891 = add i8 %890, 1
  store i8 %891, ptr %7, align 2, !tbaa !186
  call void @glEnable(i32 noundef 3042) #11
  %892 = add nuw nsw i64 %871, 1
  %893 = icmp eq i64 %892, 3
  br i1 %893, label %894, label %870, !llvm.loop !299

894:                                              ; preds = %889
  call void @glLineWidth(float noundef 1.000000e+00) #11
  call void @glDisable(i32 noundef 3042) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  br label %913

895:                                              ; preds = %846
  %896 = getelementptr inbounds %struct.RegionView3D, ptr %515, i64 0, i32 26
  %897 = load i8, ptr %896, align 2, !tbaa !219
  %898 = add i8 %897, -1
  %899 = icmp ult i8 %898, 6
  br i1 %899, label %900, label %913

900:                                              ; preds = %895
  %901 = zext nneg i8 %898 to i64
  %902 = getelementptr inbounds [6 x i32], ptr @switch.table.view3d_main_area_draw, i64 0, i64 %901
  %903 = load i32, ptr %902, align 4
  call void @glEnable(i32 noundef 3042) #11
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #11
  %904 = load i32, ptr %10, align 4, !tbaa !124
  %905 = sitofp i32 %904 to double
  %906 = fadd double %905, 5.000000e+00
  %907 = fptrunc double %906 to float
  %908 = getelementptr inbounds %struct.rcti, ptr %10, i64 0, i32 2
  %909 = load i32, ptr %908, align 4, !tbaa !126
  %910 = sitofp i32 %909 to double
  %911 = fadd double %910, 5.000000e+00
  %912 = fptrunc double %911 to float
  call void @UI_icon_draw(float noundef %907, float noundef %912, i32 noundef %903) #11
  call void @glDisable(i32 noundef 3042) #11
  br label %913

913:                                              ; preds = %895, %900, %894
  %914 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 6
  %915 = load ptr, ptr %914, align 8, !tbaa !110
  %916 = icmp eq ptr %915, null
  br i1 %916, label %920, label %917

917:                                              ; preds = %913
  %918 = getelementptr inbounds %struct.Base, ptr %915, i64 0, i32 7
  %919 = load ptr, ptr %918, align 8, !tbaa !111
  br label %920

920:                                              ; preds = %917, %913
  %921 = phi ptr [ %919, %917 ], [ null, %913 ]
  %922 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !295
  %923 = and i32 %922, 16
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %1076, label %925

925:                                              ; preds = %920
  %926 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 22, i32 5
  %927 = load i32, ptr %926, align 8, !tbaa !300
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %5) #11
  %928 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !253
  %929 = sitofp i16 %928 to float
  %930 = load i32, ptr %10, align 4, !tbaa !124
  %931 = sitofp i32 %930 to float
  %932 = call float @llvm.fmuladd.f32(float %929, float 1.500000e+00, float %931)
  %933 = fptosi float %932 to i16
  %934 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %927) #11
  %935 = sext i32 %934 to i64
  %936 = getelementptr inbounds i8, ptr %5, i64 %935
  %937 = call ptr @BKE_scene_find_marker_name(ptr noundef %29, i32 noundef %927) #11
  %938 = icmp eq ptr %921, null
  br i1 %938, label %1050, label %939

939:                                              ; preds = %925
  %940 = getelementptr inbounds i8, ptr %936, i64 1
  store i8 32, ptr %936, align 1, !tbaa !186
  %941 = getelementptr inbounds %struct.ID, ptr %921, i64 0, i32 4, i64 2
  %942 = call i64 @BLI_strcpy_rlen(ptr noundef nonnull %940, ptr noundef nonnull %941) #11
  %943 = getelementptr inbounds i8, ptr %940, i64 %942
  %944 = getelementptr inbounds %struct.Object, ptr %921, i64 0, i32 3
  %945 = load i16, ptr %944, align 8, !tbaa !187
  switch i16 %945, label %1044 [
    i16 25, label %946
    i16 1, label %986
    i16 2, label %1019
    i16 22, label %1019
  ]

946:                                              ; preds = %939
  %947 = getelementptr inbounds %struct.Object, ptr %921, i64 0, i32 19
  %948 = load ptr, ptr %947, align 8, !tbaa !214
  %949 = getelementptr inbounds %struct.bArmature, ptr %948, i64 0, i32 4
  %950 = load ptr, ptr %949, align 8, !tbaa !301
  %951 = icmp eq ptr %950, null
  br i1 %951, label %963, label %952

952:                                              ; preds = %946
  %953 = getelementptr inbounds %struct.bArmature, ptr %948, i64 0, i32 6
  %954 = load ptr, ptr %953, align 8, !tbaa !303
  %955 = icmp eq ptr %954, null
  br i1 %955, label %1044, label %956

956:                                              ; preds = %952
  %957 = call i64 @BLI_strcpy_rlen(ptr noundef nonnull %943, ptr noundef nonnull @.str.10) #11
  %958 = getelementptr inbounds i8, ptr %943, i64 %957
  %959 = load ptr, ptr %953, align 8, !tbaa !303
  %960 = getelementptr inbounds %struct.EditBone, ptr %959, i64 0, i32 5
  %961 = call i64 @BLI_strcpy_rlen(ptr noundef nonnull %958, ptr noundef nonnull %960) #11
  %962 = getelementptr inbounds i8, ptr %958, i64 %961
  br label %1044

963:                                              ; preds = %946
  %964 = getelementptr inbounds %struct.Object, ptr %921, i64 0, i32 27
  %965 = load i32, ptr %964, align 8, !tbaa !113
  %966 = and i32 %965, 64
  %967 = icmp eq i32 %966, 0
  br i1 %967, label %1044, label %968

968:                                              ; preds = %963
  %969 = getelementptr inbounds %struct.bArmature, ptr %948, i64 0, i32 5
  %970 = load ptr, ptr %969, align 8, !tbaa !304
  %971 = icmp eq ptr %970, null
  br i1 %971, label %1044, label %972

972:                                              ; preds = %968
  %973 = getelementptr inbounds %struct.Bone, ptr %970, i64 0, i32 25
  %974 = load i32, ptr %973, align 8, !tbaa !305
  %975 = getelementptr inbounds %struct.bArmature, ptr %948, i64 0, i32 15
  %976 = load i32, ptr %975, align 8, !tbaa !307
  %977 = and i32 %976, %974
  %978 = icmp eq i32 %977, 0
  br i1 %978, label %1044, label %979

979:                                              ; preds = %972
  %980 = call i64 @BLI_strcpy_rlen(ptr noundef nonnull %943, ptr noundef nonnull @.str.10) #11
  %981 = getelementptr inbounds i8, ptr %943, i64 %980
  %982 = load ptr, ptr %969, align 8, !tbaa !304
  %983 = getelementptr inbounds %struct.Bone, ptr %982, i64 0, i32 5
  %984 = call i64 @BLI_strcpy_rlen(ptr noundef nonnull %981, ptr noundef nonnull %983) #11
  %985 = getelementptr inbounds i8, ptr %981, i64 %984
  br label %1044

986:                                              ; preds = %939
  %987 = getelementptr inbounds %struct.Object, ptr %921, i64 0, i32 27
  %988 = load i32, ptr %987, align 8, !tbaa !113
  %989 = and i32 %988, 8
  %990 = icmp eq i32 %989, 0
  br i1 %990, label %1019, label %991

991:                                              ; preds = %986
  %992 = call ptr @BKE_object_pose_armature_get(ptr noundef nonnull %921) #11
  %993 = icmp eq ptr %992, null
  br i1 %993, label %1019, label %994

994:                                              ; preds = %991
  %995 = getelementptr inbounds %struct.Object, ptr %992, i64 0, i32 27
  %996 = load i32, ptr %995, align 8, !tbaa !113
  %997 = and i32 %996, 64
  %998 = icmp eq i32 %997, 0
  br i1 %998, label %1019, label %999

999:                                              ; preds = %994
  %1000 = getelementptr inbounds %struct.Object, ptr %992, i64 0, i32 19
  %1001 = load ptr, ptr %1000, align 8, !tbaa !214
  %1002 = getelementptr inbounds %struct.bArmature, ptr %1001, i64 0, i32 5
  %1003 = load ptr, ptr %1002, align 8, !tbaa !304
  %1004 = icmp eq ptr %1003, null
  br i1 %1004, label %1019, label %1005

1005:                                             ; preds = %999
  %1006 = getelementptr inbounds %struct.Bone, ptr %1003, i64 0, i32 25
  %1007 = load i32, ptr %1006, align 8, !tbaa !305
  %1008 = getelementptr inbounds %struct.bArmature, ptr %1001, i64 0, i32 15
  %1009 = load i32, ptr %1008, align 8, !tbaa !307
  %1010 = and i32 %1009, %1007
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %1019, label %1012

1012:                                             ; preds = %1005
  %1013 = call i64 @BLI_strcpy_rlen(ptr noundef nonnull %943, ptr noundef nonnull @.str.10) #11
  %1014 = getelementptr inbounds i8, ptr %943, i64 %1013
  %1015 = load ptr, ptr %1002, align 8, !tbaa !304
  %1016 = getelementptr inbounds %struct.Bone, ptr %1015, i64 0, i32 5
  %1017 = call i64 @BLI_strcpy_rlen(ptr noundef nonnull %1014, ptr noundef nonnull %1016) #11
  %1018 = getelementptr inbounds i8, ptr %1014, i64 %1017
  br label %1019

1019:                                             ; preds = %939, %939, %1012, %1005, %999, %994, %991, %986
  %1020 = phi ptr [ %943, %986 ], [ %943, %994 ], [ %943, %991 ], [ %1018, %1012 ], [ %943, %1005 ], [ %943, %999 ], [ %943, %939 ], [ %943, %939 ]
  %1021 = call ptr @BKE_key_from_object(ptr noundef nonnull %921) #11
  %1022 = icmp eq ptr %1021, null
  br i1 %1022, label %1044, label %1023

1023:                                             ; preds = %1019
  %1024 = getelementptr inbounds %struct.Key, ptr %1021, i64 0, i32 6
  %1025 = getelementptr inbounds %struct.Object, ptr %921, i64 0, i32 115
  %1026 = load i16, ptr %1025, align 2, !tbaa !308
  %1027 = sext i16 %1026 to i32
  %1028 = add nsw i32 %1027, -1
  %1029 = call ptr @BLI_findlink(ptr noundef nonnull %1024, i32 noundef %1028) #11
  %1030 = icmp eq ptr %1029, null
  br i1 %1030, label %1044, label %1031

1031:                                             ; preds = %1023
  %1032 = call i64 @BLI_strcpy_rlen(ptr noundef %1020, ptr noundef nonnull @.str.10) #11
  %1033 = getelementptr inbounds i8, ptr %1020, i64 %1032
  %1034 = getelementptr inbounds %struct.KeyBlock, ptr %1029, i64 0, i32 11
  %1035 = call i64 @BLI_strcpy_rlen(ptr noundef %1033, ptr noundef nonnull %1034) #11
  %1036 = getelementptr inbounds i8, ptr %1033, i64 %1035
  %1037 = getelementptr inbounds %struct.Object, ptr %921, i64 0, i32 114
  %1038 = load i8, ptr %1037, align 1, !tbaa !309
  %1039 = and i8 %1038, 1
  %1040 = icmp eq i8 %1039, 0
  br i1 %1040, label %1044, label %1041

1041:                                             ; preds = %1031
  %1042 = call i64 @BLI_strcpy_rlen(ptr noundef %1036, ptr noundef nonnull @.str.9) #11
  %1043 = getelementptr inbounds i8, ptr %1036, i64 %1042
  br label %1044

1044:                                             ; preds = %939, %1041, %1031, %1023, %1019, %979, %972, %968, %963, %956, %952
  %1045 = phi ptr [ %962, %956 ], [ %943, %952 ], [ %985, %979 ], [ %943, %972 ], [ %943, %968 ], [ %943, %963 ], [ %943, %939 ], [ %1043, %1041 ], [ %1036, %1031 ], [ %1020, %1023 ], [ %1020, %1019 ]
  %1046 = sitofp i32 %927 to float
  %1047 = call zeroext i8 @id_frame_has_keyframe(ptr noundef nonnull %921, float noundef %1046, i16 noundef signext 1) #11
  %1048 = icmp eq i8 %1047, 0
  %1049 = select i1 %1048, i32 4, i32 34
  br label %1050

1050:                                             ; preds = %925, %1044
  %1051 = phi i32 [ %1049, %1044 ], [ 4, %925 ]
  %1052 = phi ptr [ %1045, %1044 ], [ %936, %925 ]
  call void @UI_ThemeColor(i32 noundef %1051) #11
  %1053 = icmp eq ptr %937, null
  br i1 %1053, label %1056, label %1054

1054:                                             ; preds = %1050
  %1055 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1052, ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %937) #11
  br label %1056

1056:                                             ; preds = %1054, %1050
  %1057 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !295
  %1058 = and i32 %1057, 131072
  %1059 = icmp eq i32 %1058, 0
  br i1 %1059, label %1070, label %1060

1060:                                             ; preds = %1056
  %1061 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !253
  %1062 = zext i16 %1061 to i32
  %1063 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 68), align 2, !tbaa !296
  %1064 = sext i16 %1063 to i32
  %1065 = shl nsw i32 %1064, 1
  %1066 = load i32, ptr %10, align 4, !tbaa !124
  %1067 = add i32 %1066, %1062
  %1068 = add i32 %1067, %1065
  %1069 = trunc i32 %1068 to i16
  br label %1070

1070:                                             ; preds = %1060, %1056
  %1071 = phi i16 [ %1069, %1060 ], [ %933, %1056 ]
  %1072 = sitofp i16 %1071 to float
  %1073 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !253
  %1074 = sitofp i16 %1073 to float
  %1075 = fmul float %1074, 5.000000e-01
  call void @BLF_draw_default(float noundef %1072, float noundef %1075, float noundef 0.000000e+00, ptr noundef nonnull %5, i64 noundef 300) #11
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %5) #11
  br label %1076

1076:                                             ; preds = %1070, %920, %793
  %1077 = getelementptr inbounds %struct.RegionView3D, ptr %515, i64 0, i32 11
  %1078 = load ptr, ptr %1077, align 8, !tbaa !281
  %1079 = icmp eq ptr %1078, null
  br i1 %1079, label %1115, label %1080

1080:                                             ; preds = %1076
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) @__const.view3d_main_area_draw_engine_info.fill_color, i64 16, i1 false)
  %1081 = getelementptr inbounds %struct.RenderEngine, ptr %1078, i64 0, i32 9
  %1082 = load i8, ptr %1081, align 8, !tbaa !186
  %1083 = icmp eq i8 %1082, 0
  br i1 %1083, label %1114, label %1084

1084:                                             ; preds = %1080
  br i1 %32, label %1111, label %1085

1085:                                             ; preds = %1084
  %1086 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  %1087 = load float, ptr %1086, align 4, !tbaa !41
  %1088 = fsub float 1.000000e+00, %1087
  %1089 = call ptr @ED_view3d_camera_data_get(ptr noundef %30, ptr noundef %515) #11
  %1090 = icmp eq ptr %1089, null
  br i1 %1090, label %1101, label %1091

1091:                                             ; preds = %1085
  %1092 = getelementptr inbounds %struct.Camera, ptr %1089, i64 0, i32 4
  %1093 = load i16, ptr %1092, align 2, !tbaa !288
  %1094 = and i16 %1093, 4
  %1095 = icmp eq i16 %1094, 0
  br i1 %1095, label %1101, label %1096

1096:                                             ; preds = %1091
  %1097 = getelementptr inbounds %struct.Camera, ptr %1089, i64 0, i32 5
  %1098 = load float, ptr %1097, align 4, !tbaa !290
  %1099 = fsub float 1.000000e+00, %1098
  %1100 = fmul float %1088, %1099
  br label %1101

1101:                                             ; preds = %1096, %1091, %1085
  %1102 = phi float [ %1100, %1096 ], [ %1088, %1091 ], [ %1088, %1085 ]
  call void @UI_GetThemeColor3fv(i32 noundef 180, ptr noundef nonnull %4) #11
  %1103 = load float, ptr %4, align 16, !tbaa !41
  %1104 = fmul float %1102, %1103
  store float %1104, ptr %4, align 16, !tbaa !41
  %1105 = getelementptr inbounds float, ptr %4, i64 1
  %1106 = load float, ptr %1105, align 4, !tbaa !41
  %1107 = fmul float %1102, %1106
  store float %1107, ptr %1105, align 4, !tbaa !41
  %1108 = getelementptr inbounds float, ptr %4, i64 2
  %1109 = load float, ptr %1108, align 8, !tbaa !41
  %1110 = fmul float %1102, %1109
  store float %1110, ptr %1108, align 8, !tbaa !41
  store float 1.000000e+00, ptr %1086, align 4, !tbaa !41
  br label %1111

1111:                                             ; preds = %1101, %1084
  %1112 = load ptr, ptr %1077, align 8, !tbaa !281
  %1113 = getelementptr inbounds %struct.RenderEngine, ptr %1112, i64 0, i32 9
  call void @ED_region_info_draw(ptr noundef %1, ptr noundef nonnull %1113, i32 noundef 1, ptr noundef nonnull %4) #11
  br label %1114

1114:                                             ; preds = %1111, %1080
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %1217

1115:                                             ; preds = %1076
  %1116 = load i16, ptr %788, align 2, !tbaa !155
  %1117 = and i16 %1116, 4
  %1118 = icmp eq i16 %1117, 0
  br i1 %1118, label %1119, label %1217

1119:                                             ; preds = %1115
  %1120 = call ptr @CTX_wm_manager(ptr noundef %0) #11
  %1121 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !295
  %1122 = and i32 %1121, 2097152
  %1123 = icmp eq i32 %1122, 0
  br i1 %1123, label %1128, label %1124

1124:                                             ; preds = %1119
  %1125 = call ptr @ED_screen_animation_playing(ptr noundef %1120) #11
  %1126 = icmp eq ptr %1125, null
  br i1 %1126, label %1128, label %1127

1127:                                             ; preds = %1124
  call void @ED_scene_draw_fps(ptr noundef %29, ptr noundef nonnull %10)
  br label %1194

1128:                                             ; preds = %1124, %1119
  %1129 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !295
  %1130 = and i32 %1129, 262144
  %1131 = icmp eq i32 %1130, 0
  br i1 %1131, label %1194, label %1132

1132:                                             ; preds = %1128
  %1133 = load ptr, ptr %514, align 8, !tbaa !101
  %1134 = getelementptr inbounds %struct.RegionView3D, ptr %1133, i64 0, i32 26
  %1135 = load i8, ptr %1134, align 2, !tbaa !219
  %1136 = getelementptr inbounds %struct.RegionView3D, ptr %1133, i64 0, i32 25
  %1137 = load i8, ptr %1136, align 1, !tbaa !207
  switch i8 %1135, label %1156 [
    i8 1, label %1138
    i8 2, label %1141
    i8 5, label %1144
    i8 6, label %1147
    i8 4, label %1150
    i8 3, label %1153
  ]

1138:                                             ; preds = %1132
  %1139 = icmp eq i8 %1137, 0
  %1140 = select i1 %1139, ptr @.str.14, ptr @.str.15
  br label %1176

1141:                                             ; preds = %1132
  %1142 = icmp eq i8 %1137, 0
  %1143 = select i1 %1142, ptr @.str.16, ptr @.str.17
  br label %1176

1144:                                             ; preds = %1132
  %1145 = icmp eq i8 %1137, 0
  %1146 = select i1 %1145, ptr @.str.18, ptr @.str.19
  br label %1176

1147:                                             ; preds = %1132
  %1148 = icmp eq i8 %1137, 0
  %1149 = select i1 %1148, ptr @.str.20, ptr @.str.21
  br label %1176

1150:                                             ; preds = %1132
  %1151 = icmp eq i8 %1137, 0
  %1152 = select i1 %1151, ptr @.str.22, ptr @.str.23
  br label %1176

1153:                                             ; preds = %1132
  %1154 = icmp eq i8 %1137, 0
  %1155 = select i1 %1154, ptr @.str.24, ptr @.str.25
  br label %1176

1156:                                             ; preds = %1132
  %1157 = icmp eq i8 %1137, 2
  br i1 %1157, label %1158, label %1173

1158:                                             ; preds = %1156
  %1159 = getelementptr inbounds %struct.View3D, ptr %30, i64 0, i32 15
  %1160 = load ptr, ptr %1159, align 8, !tbaa !94
  %1161 = icmp eq ptr %1160, null
  br i1 %1161, label %1176, label %1162

1162:                                             ; preds = %1158
  %1163 = getelementptr inbounds %struct.Object, ptr %1160, i64 0, i32 3
  %1164 = load i16, ptr %1163, align 8, !tbaa !187
  %1165 = icmp eq i16 %1164, 11
  br i1 %1165, label %1166, label %1176

1166:                                             ; preds = %1162
  %1167 = getelementptr inbounds %struct.Object, ptr %1160, i64 0, i32 19
  %1168 = load ptr, ptr %1167, align 8, !tbaa !214
  %1169 = getelementptr inbounds %struct.Camera, ptr %1168, i64 0, i32 2
  %1170 = load i8, ptr %1169, align 8, !tbaa !310
  %1171 = icmp eq i8 %1170, 1
  %1172 = select i1 %1171, ptr @.str.27, ptr @.str.26
  br label %1176

1173:                                             ; preds = %1156
  %1174 = icmp eq i8 %1137, 0
  %1175 = select i1 %1174, ptr @.str.29, ptr @.str.30
  br label %1176

1176:                                             ; preds = %1173, %1166, %1162, %1158, %1153, %1150, %1147, %1144, %1141, %1138
  %1177 = phi ptr [ %1172, %1166 ], [ %1175, %1173 ], [ %1140, %1138 ], [ %1143, %1141 ], [ %1146, %1144 ], [ %1149, %1147 ], [ %1152, %1150 ], [ %1155, %1153 ], [ @.str.28, %1162 ], [ @.str.28, %1158 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  %1178 = getelementptr inbounds %struct.View3D, ptr %30, i64 0, i32 20
  %1179 = load ptr, ptr %1178, align 8, !tbaa !311
  %1180 = icmp eq ptr %1179, null
  br i1 %1180, label %1183, label %1181

1181:                                             ; preds = %1176
  %1182 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 32, ptr noundef nonnull @.str.13, ptr noundef nonnull %1177) #11
  br label %1183

1183:                                             ; preds = %1181, %1176
  %1184 = phi ptr [ %3, %1181 ], [ %1177, %1176 ]
  call void @UI_ThemeColor(i32 noundef 4) #11
  %1185 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !253
  %1186 = sext i16 %1185 to i32
  %1187 = load i32, ptr %10, align 4, !tbaa !124
  %1188 = add nsw i32 %1187, %1186
  %1189 = sitofp i32 %1188 to float
  %1190 = getelementptr inbounds %struct.rcti, ptr %10, i64 0, i32 3
  %1191 = load i32, ptr %1190, align 4, !tbaa !125
  %1192 = sub nsw i32 %1191, %1186
  %1193 = sitofp i32 %1192 to float
  call void @BLF_draw_default_ascii(float noundef %1189, float noundef %1193, float noundef 0.000000e+00, ptr noundef %1184, i64 noundef 32) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  br label %1194

1194:                                             ; preds = %1183, %1128, %1127
  %1195 = icmp eq ptr %513, null
  br i1 %1195, label %1217, label %1196

1196:                                             ; preds = %1194
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  call void @UI_ThemeColor(i32 noundef 4) #11
  %1197 = getelementptr inbounds %struct.View3D, ptr %30, i64 0, i32 31
  %1198 = load float, ptr %1197, align 8, !tbaa !74
  %1199 = fcmp une float %1198, 1.000000e+00
  br i1 %1199, label %1200, label %1203

1200:                                             ; preds = %1196
  %1201 = fpext float %1198 to double
  %1202 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %11, i64 noundef 32, ptr noundef nonnull @.str.8, ptr noundef nonnull %513, double noundef %1201) #11
  br label %1203

1203:                                             ; preds = %1200, %1196
  %1204 = load i32, ptr %10, align 4, !tbaa !124
  %1205 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !253
  %1206 = sext i16 %1205 to i32
  %1207 = add nsw i32 %1204, %1206
  %1208 = sitofp i32 %1207 to float
  %1209 = getelementptr inbounds %struct.rcti, ptr %10, i64 0, i32 3
  %1210 = load i32, ptr %1209, align 4, !tbaa !125
  %1211 = shl nsw i32 %1206, 1
  %1212 = sub nsw i32 %1210, %1211
  %1213 = sitofp i32 %1212 to float
  %1214 = load i8, ptr %11, align 16, !tbaa !186
  %1215 = icmp eq i8 %1214, 0
  %1216 = select i1 %1215, ptr %513, ptr %11
  call void @BLF_draw_default_ascii(float noundef %1208, float noundef %1213, float noundef 0.000000e+00, ptr noundef nonnull %1216, i64 noundef 32) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #11
  br label %1217

1217:                                             ; preds = %1114, %1115, %1194, %1203
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #11
  %1218 = getelementptr inbounds %struct.View3D, ptr %30, i64 0, i32 28
  %1219 = load i16, ptr %1218, align 8, !tbaa !107
  %1220 = or i16 %1219, 8
  store i16 %1220, ptr %1218, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %28) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #11
  ret void
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_rcti_compare(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_camera_params_from_view3d(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_paint_select_face_test(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @glIsEnabled(i32 noundef) local_unnamed_addr #2

declare i32 @GPU_offscreen_width(ptr noundef) local_unnamed_addr #2

declare i32 @GPU_offscreen_height(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

declare void @glScissor(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @draw_object_backbufsel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_GetThemeColorBlend3ubv(i32 noundef, i32 noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare ptr @object_duplilist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @duplilist_apply(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @is_negative_m4(ptr noundef) local_unnamed_addr #2

declare void @glColor3ubv(ptr noundef) local_unnamed_addr #2

declare void @glDeleteLists(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_object_boundbox_get(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_view3d_boundbox_clip_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @check_object_draw_texture(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_object_boundbox_flag(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @unit_m4(ptr noundef) local_unnamed_addr #2

declare i32 @glGenLists(i32 noundef) local_unnamed_addr #2

declare void @glNewList(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glEndList() local_unnamed_addr #2

declare void @glMultMatrixf(ptr noundef) local_unnamed_addr #2

declare void @glCallList(i32 noundef) local_unnamed_addr #2

declare void @duplilist_restore(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @duplilist_free_apply_data(ptr noundef) local_unnamed_addr #2

declare void @free_object_duplilist(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @gpu_render_lamp_update(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !214
  %10 = tail call ptr @GPU_lamp_from_blender(ptr noundef %0, ptr noundef %2, ptr noundef %3) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %49, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 52
  %14 = load i32, ptr %13, align 8, !tbaa !312
  %15 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 102
  %16 = load i8, ptr %15, align 8, !tbaa !172
  %17 = and i8 %16, 4
  %18 = zext nneg i8 %17 to i32
  tail call void @GPU_lamp_update(ptr noundef nonnull %10, i32 noundef %14, i32 noundef %18, ptr noundef %4) #11
  %19 = getelementptr inbounds %struct.Lamp, ptr %9, i64 0, i32 7
  %20 = load float, ptr %19, align 4, !tbaa !313
  %21 = getelementptr inbounds %struct.Lamp, ptr %9, i64 0, i32 8
  %22 = load float, ptr %21, align 8, !tbaa !315
  %23 = getelementptr inbounds %struct.Lamp, ptr %9, i64 0, i32 9
  %24 = load float, ptr %23, align 4, !tbaa !316
  %25 = getelementptr inbounds %struct.Lamp, ptr %9, i64 0, i32 15
  %26 = load float, ptr %25, align 4, !tbaa !317
  tail call void @GPU_lamp_update_colors(ptr noundef nonnull %10, float noundef %20, float noundef %22, float noundef %24, float noundef %26) #11
  %27 = load i32, ptr %13, align 8, !tbaa !312
  %28 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 22
  %29 = load i32, ptr %28, align 8, !tbaa !131
  %30 = and i32 %29, %27
  %31 = icmp eq ptr %6, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %12
  %33 = getelementptr inbounds %struct.SceneRenderLayer, ptr %6, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !318
  %35 = and i32 %34, %30
  br label %36

36:                                               ; preds = %32, %12
  %37 = phi i32 [ %35, %32 ], [ %30, %12 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  %40 = tail call zeroext i8 @GPU_lamp_override_visible(ptr noundef nonnull %10, ptr noundef %6, ptr noundef null) #11
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = tail call zeroext i8 @GPU_lamp_has_shadow_buffer(ptr noundef nonnull %10) #11
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %47 = tail call ptr %46(i64 noundef 24, ptr noundef nonnull @.str.7) #11
  %48 = getelementptr inbounds %struct.View3DShadow, ptr %47, i64 0, i32 2
  store ptr %10, ptr %48, align 8, !tbaa !204
  tail call void @BLI_addtail(ptr noundef %5, ptr noundef %47) #11
  br label %49

49:                                               ; preds = %36, %39, %42, %45, %7
  ret void
}

declare i32 @GPU_lamp_shadow_layer(ptr noundef) local_unnamed_addr #2

declare void @GPU_lamp_shadow_buffer_bind(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GPU_lamp_shadow_buffer_unbind(ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare ptr @GPU_lamp_from_blender(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GPU_lamp_update(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @GPU_lamp_update_colors(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare zeroext i8 @GPU_lamp_override_visible(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @GPU_lamp_has_shadow_buffer(ptr noundef) local_unnamed_addr #2

declare void @glMatrixMode(i32 noundef) local_unnamed_addr #2

declare void @ED_region_draw_cb_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @UI_ThemeColorBlend(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #2

declare void @BIF_draw_manipulator(ptr noundef) local_unnamed_addr #2

declare void @GPU_free_images_old() local_unnamed_addr #2

declare void @UI_GetThemeColorShade3ubv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glColor4ubv(ptr noundef) local_unnamed_addr #2

declare void @glEnableClientState(i32 noundef) local_unnamed_addr #2

declare void @glVertexPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glDrawElements(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glDisableClientState(i32 noundef) local_unnamed_addr #2

declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_GetColorPtrShade3ubv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @glDrawArrays(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @UI_make_axis_color(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glVertex3fv(ptr noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare void @mul_m4_v4d(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: nounwind uwtable
define internal fastcc void @drawgrid_draw(ptr nocapture noundef readonly %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) unnamed_addr #0 {
  %7 = alloca [2 x [2 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #11
  %8 = fadd double %1, %3
  %9 = fadd double %2, %4
  %10 = getelementptr inbounds [2 x double], ptr %7, i64 0, i64 1
  store double 0.000000e+00, ptr %10, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %12 = load i16, ptr %11, align 2, !tbaa !85
  %13 = sitofp i16 %12 to double
  %14 = getelementptr inbounds [2 x [2 x double]], ptr %7, i64 0, i64 1
  %15 = getelementptr inbounds [2 x [2 x double]], ptr %7, i64 0, i64 1, i64 1
  store double %13, ptr %15, align 8, !tbaa !42
  %16 = fdiv double %8, %5
  %17 = tail call double @llvm.floor.f64(double %16)
  %18 = fneg double %5
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %17, double %8)
  store double %19, ptr %14, align 16, !tbaa !42
  store double %19, ptr %7, align 16, !tbaa !42
  tail call void @glEnableClientState(i32 noundef 32884) #11
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5130, i32 noundef 0, ptr noundef nonnull %7) #11
  %20 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %21 = load double, ptr %7, align 16, !tbaa !42
  %22 = load i16, ptr %20, align 8, !tbaa !82
  %23 = sitofp i16 %22 to double
  %24 = fcmp olt double %21, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %6, %25
  call void @glDrawArrays(i32 noundef 1, i32 noundef 0, i32 noundef 2) #11
  %26 = load double, ptr %7, align 16, !tbaa !42
  %27 = fadd double %26, %5
  store double %27, ptr %14, align 16, !tbaa !42
  store double %27, ptr %7, align 16, !tbaa !42
  %28 = load i16, ptr %20, align 8, !tbaa !82
  %29 = sitofp i16 %28 to double
  %30 = fcmp olt double %27, %29
  br i1 %30, label %25, label %31, !llvm.loop !321

31:                                               ; preds = %25, %6
  %32 = phi double [ %23, %6 ], [ %29, %25 ]
  store double 0.000000e+00, ptr %7, align 16, !tbaa !42
  store double %32, ptr %14, align 16, !tbaa !42
  %33 = fdiv double %9, %5
  %34 = call double @llvm.floor.f64(double %33)
  %35 = call double @llvm.fmuladd.f64(double %18, double %34, double %9)
  store double %35, ptr %15, align 8, !tbaa !42
  store double %35, ptr %10, align 8, !tbaa !42
  %36 = load i16, ptr %11, align 2, !tbaa !85
  %37 = sitofp i16 %36 to double
  %38 = fcmp olt double %35, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %31, %39
  call void @glDrawArrays(i32 noundef 1, i32 noundef 0, i32 noundef 2) #11
  %40 = load double, ptr %10, align 8, !tbaa !42
  %41 = fadd double %40, %5
  store double %41, ptr %15, align 8, !tbaa !42
  store double %41, ptr %10, align 8, !tbaa !42
  %42 = load i16, ptr %11, align 2, !tbaa !85
  %43 = sitofp i16 %42 to double
  %44 = fcmp olt double %41, %43
  br i1 %44, label %39, label %45, !llvm.loop !322

45:                                               ; preds = %39, %31
  call void @glDisableClientState(i32 noundef 32884) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #11
  ret void
}

declare void @setlinestyle(i32 noundef) local_unnamed_addr #2

declare void @fdrawline(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nounwind uwtable
define internal fastcc void @view3d_draw_bgpic(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.rctf, align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 8
  %11 = alloca [3 x float], align 4
  %12 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %13 = load ptr, ptr %12, align 8, !tbaa !101
  %14 = icmp eq i8 %3, 0
  %15 = select i1 %14, i32 0, i32 16
  %16 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 18
  %17 = load ptr, ptr %16, align 8, !tbaa !72
  %18 = icmp eq ptr %17, null
  br i1 %18, label %377, label %19

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 26
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 25
  %22 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 2
  %23 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %24 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %25 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 25
  %26 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %27 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %28 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 3
  %29 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  %30 = icmp eq i8 %4, 0
  %31 = getelementptr inbounds %struct.rctf, ptr %7, i64 0, i32 2
  %32 = getelementptr inbounds %struct.rctf, ptr %7, i64 0, i32 1
  %33 = getelementptr inbounds %struct.rctf, ptr %7, i64 0, i32 3
  %34 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %35 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %36 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %37 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %38 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %39 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %40 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 47
  br label %41

41:                                               ; preds = %19, %374
  %42 = phi ptr [ %17, %19 ], [ %375, %374 ]
  %43 = getelementptr inbounds %struct.BGpic, ptr %42, i64 0, i32 3
  store ptr %0, ptr %43, align 8, !tbaa !323
  %44 = getelementptr inbounds %struct.BGpic, ptr %42, i64 0, i32 11
  %45 = load i16, ptr %44, align 2, !tbaa !327
  %46 = and i16 %45, 16
  %47 = zext nneg i16 %46 to i32
  %48 = icmp eq i32 %15, %47
  br i1 %48, label %49, label %374

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.BGpic, ptr %42, i64 0, i32 10
  %51 = load i16, ptr %50, align 8, !tbaa !328
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %49
  %54 = sext i16 %51 to i32
  %55 = load i8, ptr %20, align 2, !tbaa !219
  %56 = zext nneg i8 %55 to i32
  %57 = shl nuw i32 1, %56
  %58 = and i32 %57, %54
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load i8, ptr %21, align 1, !tbaa !207
  %62 = icmp eq i8 %61, 2
  %63 = icmp eq i16 %51, 256
  %64 = and i1 %63, %62
  br i1 %64, label %65, label %374

65:                                               ; preds = %60, %53, %49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %66 = zext i16 %45 to i32
  %67 = and i32 %66, 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %373

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.BGpic, ptr %42, i64 0, i32 12
  %71 = load i16, ptr %70, align 4, !tbaa !329
  switch i16 %71, label %121 [
    i16 0, label %72
    i16 1, label %92
  ]

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.BGpic, ptr %42, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !330
  %75 = icmp eq ptr %74, null
  br i1 %75, label %373, label %76

76:                                               ; preds = %72
  %77 = load i32, ptr %24, align 8, !tbaa !300
  call void @BKE_image_user_frame_calc(ptr noundef nonnull %43, i32 noundef %77, i32 noundef 0) #11
  %78 = getelementptr inbounds %struct.Image, ptr %74, i64 0, i32 11
  %79 = load i16, ptr %78, align 8, !tbaa !331
  %80 = icmp eq i16 %79, 2
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.BGpic, ptr %42, i64 0, i32 3, i32 12
  %83 = load i16, ptr %82, align 2, !tbaa !333
  %84 = and i16 %83, 1024
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %81, %76
  %87 = call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %74, ptr noundef nonnull %43, ptr noundef nonnull %6) #11
  br label %88

88:                                               ; preds = %81, %86
  %89 = phi ptr [ %87, %86 ], [ null, %81 ]
  %90 = getelementptr inbounds %struct.Image, ptr %74, i64 0, i32 34
  %91 = getelementptr inbounds %struct.Image, ptr %74, i64 0, i32 35
  br label %112

92:                                               ; preds = %69
  %93 = and i32 %66, 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr %22, align 8, !tbaa !334
  %97 = icmp eq ptr %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %95
  %99 = call ptr @BKE_object_movieclip_get(ptr noundef %0, ptr noundef nonnull %96, i8 noundef zeroext 1) #11
  br label %103

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.BGpic, ptr %42, i64 0, i32 4
  %102 = load ptr, ptr %101, align 8, !tbaa !335
  br label %103

103:                                              ; preds = %95, %98, %100
  %104 = phi ptr [ %99, %98 ], [ null, %95 ], [ %102, %100 ]
  %105 = icmp eq ptr %104, null
  br i1 %105, label %373, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.BGpic, ptr %42, i64 0, i32 5
  %108 = load i32, ptr %23, align 8, !tbaa !300
  call void @BKE_movieclip_user_set_frame(ptr noundef nonnull %107, i32 noundef %108) #11
  %109 = call ptr @BKE_movieclip_get_ibuf(ptr noundef nonnull %104, ptr noundef nonnull %107) #11
  %110 = getelementptr inbounds %struct.MovieClip, ptr %104, i64 0, i32 6
  %111 = getelementptr inbounds %struct.MovieClip, ptr %104, i64 0, i32 7
  br label %112

112:                                              ; preds = %88, %106
  %113 = phi ptr [ %111, %106 ], [ %91, %88 ]
  %114 = phi ptr [ %110, %106 ], [ %90, %88 ]
  %115 = phi ptr [ null, %106 ], [ %74, %88 ]
  %116 = phi ptr [ null, %106 ], [ %89, %88 ]
  %117 = phi ptr [ %109, %106 ], [ null, %88 ]
  %118 = phi ptr [ %109, %106 ], [ %89, %88 ]
  %119 = load float, ptr %114, align 8, !tbaa !41
  %120 = load float, ptr %113, align 4, !tbaa !41
  br label %121

121:                                              ; preds = %112, %69
  %122 = phi float [ 1.000000e+00, %69 ], [ %120, %112 ]
  %123 = phi float [ 1.000000e+00, %69 ], [ %119, %112 ]
  %124 = phi ptr [ null, %69 ], [ %115, %112 ]
  %125 = phi ptr [ null, %69 ], [ %116, %112 ]
  %126 = phi ptr [ null, %69 ], [ %117, %112 ]
  %127 = phi ptr [ null, %69 ], [ %118, %112 ]
  %128 = icmp eq ptr %127, null
  br i1 %128, label %373, label %129

129:                                              ; preds = %121
  %130 = getelementptr inbounds %struct.ImBuf, ptr %127, i64 0, i32 8
  %131 = load ptr, ptr %130, align 8, !tbaa !134
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.ImBuf, ptr %127, i64 0, i32 9
  %135 = load ptr, ptr %134, align 8, !tbaa !239
  %136 = icmp eq ptr %135, null
  br i1 %136, label %141, label %137

137:                                              ; preds = %133, %129
  %138 = getelementptr inbounds %struct.ImBuf, ptr %127, i64 0, i32 5
  %139 = load i32, ptr %138, align 4, !tbaa !336
  %140 = icmp eq i32 %139, 4
  br i1 %140, label %146, label %141

141:                                              ; preds = %137, %133
  %142 = icmp eq ptr %126, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %141
  call void @IMB_freeImBuf(ptr noundef nonnull %126) #11
  br label %144

144:                                              ; preds = %143, %141
  %145 = icmp eq ptr %125, null
  br i1 %145, label %373, label %371

146:                                              ; preds = %137
  br i1 %132, label %147, label %148

147:                                              ; preds = %146
  call void @IMB_rect_from_float(ptr noundef nonnull %127) #11
  br label %148

148:                                              ; preds = %147, %146
  %149 = load i8, ptr %25, align 1, !tbaa !207
  %150 = icmp eq i8 %149, 2
  br i1 %150, label %151, label %226

151:                                              ; preds = %148
  br i1 %30, label %157, label %152

152:                                              ; preds = %151
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  call fastcc void @view3d_camera_border(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %13, ptr noundef nonnull %7, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %153 = load float, ptr %7, align 4, !tbaa !77
  %154 = load float, ptr %31, align 4, !tbaa !79
  %155 = load float, ptr %32, align 4, !tbaa !76
  %156 = load float, ptr %33, align 4, !tbaa !78
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  br label %166

157:                                              ; preds = %151
  %158 = load i32, ptr %34, align 8, !tbaa !103
  %159 = sitofp i32 %158 to float
  %160 = load i32, ptr %35, align 8, !tbaa !104
  %161 = sitofp i32 %160 to float
  %162 = load i32, ptr %36, align 4, !tbaa !210
  %163 = sitofp i32 %162 to float
  %164 = load i32, ptr %37, align 4, !tbaa !211
  %165 = sitofp i32 %164 to float
  br label %166

166:                                              ; preds = %157, %152
  %167 = phi float [ %156, %152 ], [ %165, %157 ]
  %168 = phi float [ %155, %152 ], [ %163, %157 ]
  %169 = phi float [ %154, %152 ], [ %161, %157 ]
  %170 = phi float [ %153, %152 ], [ %159, %157 ]
  %171 = fsub float %168, %170
  %172 = fsub float %167, %169
  %173 = fcmp ogt float %171, %172
  %174 = select i1 %173, float %171, float %172
  %175 = getelementptr inbounds %struct.BGpic, ptr %42, i64 0, i32 6
  %176 = load float, ptr %175, align 8, !tbaa !337
  %177 = fmul float %176, %174
  %178 = getelementptr inbounds %struct.BGpic, ptr %42, i64 0, i32 7
  %179 = load float, ptr %178, align 4, !tbaa !338
  %180 = fmul float %179, %174
  %181 = fadd float %170, %177
  %182 = fadd float %169, %180
  %183 = fadd float %168, %177
  %184 = fadd float %167, %180
  %185 = load i16, ptr %44, align 2, !tbaa !327
  %186 = zext i16 %185 to i32
  %187 = and i32 %186, 32
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %263, label %189

189:                                              ; preds = %166
  %190 = getelementptr inbounds %struct.ImBuf, ptr %127, i64 0, i32 2
  %191 = load i32, ptr %190, align 8, !tbaa !339
  %192 = sitofp i32 %191 to float
  %193 = fmul float %123, %192
  %194 = getelementptr inbounds %struct.ImBuf, ptr %127, i64 0, i32 3
  %195 = load i32, ptr %194, align 4, !tbaa !340
  %196 = sitofp i32 %195 to float
  %197 = fmul float %122, %196
  %198 = fsub float %181, %183
  %199 = fsub float %182, %184
  %200 = fdiv float %193, %197
  %201 = fdiv float %198, %199
  %202 = fsub float %200, %201
  %203 = call float @llvm.fabs.f32(float %202)
  %204 = fcmp ult float %203, 0x3E80000000000000
  br i1 %204, label %263, label %205

205:                                              ; preds = %189
  %206 = fcmp ogt float %200, %201
  %207 = and i32 %186, 64
  %208 = icmp eq i32 %207, 0
  %209 = xor i1 %208, %206
  br i1 %209, label %210, label %218

210:                                              ; preds = %205
  %211 = fdiv float %200, %201
  %212 = fadd float %181, %183
  %213 = fmul float %212, 5.000000e-01
  %214 = fsub float %181, %213
  %215 = call float @llvm.fmuladd.f32(float %214, float %211, float %213)
  %216 = fsub float %183, %213
  %217 = call float @llvm.fmuladd.f32(float %216, float %211, float %213)
  br label %263

218:                                              ; preds = %205
  %219 = fdiv float %201, %200
  %220 = fadd float %182, %184
  %221 = fmul float %220, 5.000000e-01
  %222 = fsub float %182, %221
  %223 = call float @llvm.fmuladd.f32(float %222, float %219, float %221)
  %224 = fsub float %184, %221
  %225 = call float @llvm.fmuladd.f32(float %224, float %219, float %221)
  br label %263

226:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  store i64 1065353216, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, i8 0, i64 12, i1 false)
  %227 = call float @ED_view3d_calc_zfac(ptr noundef %13, ptr noundef nonnull %11, ptr noundef null) #11
  call void @ED_view3d_win_to_delta(ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %8, float noundef %227) #11
  %228 = load float, ptr %8, align 4, !tbaa !41
  %229 = call float @llvm.fabs.f32(float %228)
  %230 = load float, ptr %26, align 4, !tbaa !41
  %231 = call float @llvm.fabs.f32(float %230)
  %232 = load float, ptr %27, align 4, !tbaa !41
  %233 = call float @llvm.fabs.f32(float %232)
  %234 = fcmp ogt float %231, %233
  %235 = select i1 %234, float %231, float %233
  %236 = fcmp ogt float %229, %235
  %237 = select i1 %236, float %229, float %235
  %238 = fdiv float 1.000000e+00, %237
  %239 = getelementptr inbounds %struct.ImBuf, ptr %127, i64 0, i32 3
  %240 = load i32, ptr %239, align 4, !tbaa !340
  %241 = sitofp i32 %240 to float
  %242 = getelementptr inbounds %struct.ImBuf, ptr %127, i64 0, i32 2
  %243 = load i32, ptr %242, align 8, !tbaa !339
  %244 = sitofp i32 %243 to float
  %245 = fdiv float %241, %244
  store float 0.000000e+00, ptr %8, align 4, !tbaa !41
  store float 0.000000e+00, ptr %26, align 4, !tbaa !41
  store float 0.000000e+00, ptr %27, align 4, !tbaa !41
  call void @ED_view3d_project_float_v2_m4(ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %28) #11
  %246 = load float, ptr %9, align 4, !tbaa !41
  %247 = getelementptr inbounds %struct.BGpic, ptr %42, i64 0, i32 6
  %248 = load float, ptr %247, align 8, !tbaa !337
  %249 = getelementptr inbounds %struct.BGpic, ptr %42, i64 0, i32 8
  %250 = load float, ptr %249, align 8, !tbaa !341
  %251 = fsub float %248, %250
  %252 = call float @llvm.fmuladd.f32(float %238, float %251, float %246)
  %253 = load float, ptr %29, align 4, !tbaa !41
  %254 = fmul float %245, %238
  %255 = getelementptr inbounds %struct.BGpic, ptr %42, i64 0, i32 7
  %256 = load float, ptr %255, align 4, !tbaa !338
  %257 = fsub float %256, %250
  %258 = call float @llvm.fmuladd.f32(float %254, float %257, float %253)
  %259 = fadd float %248, %250
  %260 = call float @llvm.fmuladd.f32(float %238, float %259, float %246)
  %261 = fadd float %250, %256
  %262 = call float @llvm.fmuladd.f32(float %254, float %261, float %253)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #11
  br label %263

263:                                              ; preds = %189, %218, %210, %166, %226
  %264 = phi float [ %184, %166 ], [ %262, %226 ], [ %184, %210 ], [ %225, %218 ], [ %184, %189 ]
  %265 = phi float [ %183, %166 ], [ %260, %226 ], [ %217, %210 ], [ %183, %218 ], [ %183, %189 ]
  %266 = phi float [ %182, %166 ], [ %258, %226 ], [ %182, %210 ], [ %223, %218 ], [ %182, %189 ]
  %267 = phi float [ %181, %166 ], [ %252, %226 ], [ %215, %210 ], [ %181, %218 ], [ %181, %189 ]
  %268 = fcmp olt float %265, 0.000000e+00
  %269 = fcmp olt float %264, 0.000000e+00
  %270 = select i1 %268, i1 true, i1 %269
  br i1 %270, label %279, label %271

271:                                              ; preds = %263
  %272 = load i16, ptr %38, align 8, !tbaa !82
  %273 = sitofp i16 %272 to float
  %274 = fcmp ogt float %267, %273
  br i1 %274, label %279, label %275

275:                                              ; preds = %271
  %276 = load i16, ptr %39, align 2, !tbaa !85
  %277 = sitofp i16 %276 to float
  %278 = fcmp ogt float %266, %277
  br i1 %278, label %279, label %284

279:                                              ; preds = %275, %271, %263
  %280 = icmp eq ptr %126, null
  br i1 %280, label %282, label %281

281:                                              ; preds = %279
  call void @IMB_freeImBuf(ptr noundef nonnull %126) #11
  br label %282

282:                                              ; preds = %281, %279
  %283 = icmp eq ptr %125, null
  br i1 %283, label %373, label %371

284:                                              ; preds = %275
  %285 = fsub float %265, %267
  %286 = getelementptr inbounds %struct.ImBuf, ptr %127, i64 0, i32 2
  %287 = load i32, ptr %286, align 8, !tbaa !339
  %288 = sitofp i32 %287 to float
  %289 = fdiv float %285, %288
  %290 = fsub float %264, %266
  %291 = getelementptr inbounds %struct.ImBuf, ptr %127, i64 0, i32 3
  %292 = load i32, ptr %291, align 4, !tbaa !340
  %293 = sitofp i32 %292 to float
  %294 = fdiv float %290, %293
  %295 = fcmp olt float %289, 1.000000e+00
  %296 = fcmp olt float %294, 1.000000e+00
  %297 = select i1 %295, i1 true, i1 %296
  br i1 %297, label %298, label %346

298:                                              ; preds = %284
  %299 = fcmp olt float %289, %294
  %300 = select i1 %299, float %289, float %294
  %301 = getelementptr inbounds %struct.ImBuf, ptr %127, i64 0, i32 23
  %302 = load i32, ptr %301, align 4, !tbaa !342
  %303 = and i32 %302, 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %308, label %305

305:                                              ; preds = %298
  call void @IMB_remakemipmap(ptr noundef nonnull %127, i32 noundef 0) #11
  %306 = load i32, ptr %301, align 4, !tbaa !342
  %307 = and i32 %306, -5
  store i32 %307, ptr %301, align 4, !tbaa !342
  br label %313

308:                                              ; preds = %298
  %309 = getelementptr inbounds %struct.ImBuf, ptr %127, i64 0, i32 19
  %310 = load ptr, ptr %309, align 8, !tbaa !72
  %311 = icmp eq ptr %310, null
  br i1 %311, label %312, label %313

312:                                              ; preds = %308
  call void @IMB_makemipmap(ptr noundef nonnull %127, i32 noundef 0) #11
  br label %313

313:                                              ; preds = %308, %312, %305
  %314 = fcmp olt float %300, 1.000000e+00
  br i1 %314, label %315, label %336

315:                                              ; preds = %313, %323
  %316 = phi i64 [ %327, %323 ], [ 0, %313 ]
  %317 = phi float [ %324, %323 ], [ %300, %313 ]
  %318 = phi float [ %325, %323 ], [ %289, %313 ]
  %319 = phi float [ %326, %323 ], [ %294, %313 ]
  %320 = getelementptr inbounds %struct.ImBuf, ptr %127, i64 0, i32 19, i64 %316
  %321 = load ptr, ptr %320, align 8, !tbaa !72
  %322 = icmp eq ptr %321, null
  br i1 %322, label %331, label %323

323:                                              ; preds = %315
  %324 = fmul float %317, 2.000000e+00
  %325 = fmul float %318, 2.000000e+00
  %326 = fmul float %319, 2.000000e+00
  %327 = add nuw nsw i64 %316, 1
  %328 = fcmp olt float %324, 1.000000e+00
  %329 = icmp ult i64 %316, 7
  %330 = and i1 %328, %329
  br i1 %330, label %315, label %331, !llvm.loop !343

331:                                              ; preds = %323, %315
  %332 = phi float [ %319, %315 ], [ %326, %323 ]
  %333 = phi float [ %318, %315 ], [ %325, %323 ]
  %334 = phi i64 [ %316, %315 ], [ %327, %323 ]
  %335 = trunc i64 %334 to i32
  br label %336

336:                                              ; preds = %331, %313
  %337 = phi float [ %294, %313 ], [ %332, %331 ]
  %338 = phi float [ %289, %313 ], [ %333, %331 ]
  %339 = phi i32 [ 0, %313 ], [ %335, %331 ]
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %346, label %341

341:                                              ; preds = %336
  %342 = add nsw i32 %339, -1
  %343 = zext nneg i32 %342 to i64
  %344 = getelementptr inbounds %struct.ImBuf, ptr %127, i64 0, i32 19, i64 %343
  %345 = load ptr, ptr %344, align 8, !tbaa !72
  br label %346

346:                                              ; preds = %336, %341, %284
  %347 = phi ptr [ %127, %284 ], [ %345, %341 ], [ %127, %336 ]
  %348 = phi float [ %294, %284 ], [ %337, %341 ], [ %337, %336 ]
  %349 = phi float [ %289, %284 ], [ %338, %341 ], [ %338, %336 ]
  %350 = load i8, ptr %40, align 8, !tbaa !118
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %353, label %352

352:                                              ; preds = %346
  call void @glDisable(i32 noundef 2929) #11
  br label %353

353:                                              ; preds = %352, %346
  call void @glDepthMask(i8 noundef zeroext 0) #11
  call void @glEnable(i32 noundef 3042) #11
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #11
  call void @glMatrixMode(i32 noundef 5889) #11
  call void @glPushMatrix() #11
  call void @glMatrixMode(i32 noundef 5888) #11
  call void @glPushMatrix() #11
  call void @ED_region_pixelspace(ptr noundef %1) #11
  call void @glPixelZoom(float noundef %349, float noundef %348) #11
  %354 = getelementptr inbounds %struct.BGpic, ptr %42, i64 0, i32 9
  %355 = load float, ptr %354, align 4, !tbaa !344
  %356 = fsub float 1.000000e+00, %355
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef %356) #11
  %357 = getelementptr inbounds %struct.ImBuf, ptr %347, i64 0, i32 2
  %358 = load i32, ptr %357, align 8, !tbaa !339
  %359 = getelementptr inbounds %struct.ImBuf, ptr %347, i64 0, i32 3
  %360 = load i32, ptr %359, align 4, !tbaa !340
  %361 = getelementptr inbounds %struct.ImBuf, ptr %347, i64 0, i32 8
  %362 = load ptr, ptr %361, align 8, !tbaa !134
  call void @glaDrawPixelsTex(float noundef %267, float noundef %266, i32 noundef %358, i32 noundef %360, i32 noundef 6408, i32 noundef 5121, i32 noundef 9729, ptr noundef %362) #11
  call void @glPixelZoom(float noundef 1.000000e+00, float noundef 1.000000e+00) #11
  call void @glPixelTransferf(i32 noundef 3356, float noundef 1.000000e+00) #11
  call void @glMatrixMode(i32 noundef 5889) #11
  call void @glPopMatrix() #11
  call void @glMatrixMode(i32 noundef 5888) #11
  call void @glPopMatrix() #11
  call void @glDisable(i32 noundef 3042) #11
  call void @glDepthMask(i8 noundef zeroext 1) #11
  %363 = load i8, ptr %40, align 8, !tbaa !118
  %364 = icmp eq i8 %363, 0
  br i1 %364, label %366, label %365

365:                                              ; preds = %353
  call void @glEnable(i32 noundef 2929) #11
  br label %366

366:                                              ; preds = %365, %353
  %367 = icmp eq ptr %126, null
  br i1 %367, label %369, label %368

368:                                              ; preds = %366
  call void @IMB_freeImBuf(ptr noundef nonnull %126) #11
  br label %369

369:                                              ; preds = %368, %366
  %370 = icmp eq ptr %125, null
  br i1 %370, label %373, label %371

371:                                              ; preds = %369, %282, %144
  %372 = load ptr, ptr %6, align 8, !tbaa !72
  call void @BKE_image_release_ibuf(ptr noundef %124, ptr noundef nonnull %125, ptr noundef %372) #11
  br label %373

373:                                              ; preds = %371, %369, %282, %144, %121, %103, %72, %65
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %374

374:                                              ; preds = %373, %60, %41
  %375 = load ptr, ptr %42, align 8, !tbaa !72
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %41, !llvm.loop !345

377:                                              ; preds = %374, %5
  ret void
}

declare void @BKE_image_user_frame_calc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_object_movieclip_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_movieclip_user_set_frame(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_movieclip_get_ibuf(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

declare float @ED_view3d_calc_zfac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_win_to_delta(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @ED_view3d_project_float_v2_m4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_remakemipmap(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @IMB_makemipmap(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glPixelZoom(float noundef, float noundef) local_unnamed_addr #2

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glaDrawPixelsTex(float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glPixelTransferf(i32 noundef, float noundef) local_unnamed_addr #2

declare float @linearrgb_to_srgb(float noundef) local_unnamed_addr #2

declare ptr @RE_engines_find(ptr noundef) local_unnamed_addr #2

declare i32 @GPU_default_lights() local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

declare void @BDR_drawSketch(ptr noundef) local_unnamed_addr #2

declare void @IMB_colormanagement_pixel_to_display_space_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glLoadIdentity() local_unnamed_addr #2

declare void @glShadeModel(i32 noundef) local_unnamed_addr #2

declare void @ED_view3d_win_to_vector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glColorPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @UI_GetThemeValue(i32 noundef) local_unnamed_addr #2

declare void @glVertex3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @UI_ThemeClearColor(i32 noundef) local_unnamed_addr #2

declare void @glPointSize(float noundef) local_unnamed_addr #2

declare void @glColor4fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #4

declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #4

declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RE_engine_create_ex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @fdrawcheckerboard(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @ED_region_visible_rect(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glPolygonMode(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @cpack(i32 noundef) local_unnamed_addr #2

declare void @glRecti(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare ptr @ED_screen_animation_playing(ptr noundef) local_unnamed_addr #2

declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @UI_ThemeColorBlendShade(i32 noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @drawviewborder_grid3(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #0 {
  %6 = fsub float %1, %0
  %7 = tail call float @llvm.fmuladd.f32(float %4, float %6, float %0)
  %8 = fsub float %3, %2
  %9 = tail call float @llvm.fmuladd.f32(float %4, float %8, float %2)
  %10 = fsub float 1.000000e+00, %4
  %11 = tail call float @llvm.fmuladd.f32(float %10, float %6, float %0)
  %12 = tail call float @llvm.fmuladd.f32(float %10, float %8, float %2)
  tail call void @glBegin(i32 noundef 1) #11
  tail call void @glVertex2f(float noundef %0, float noundef %9) #11
  tail call void @glVertex2f(float noundef %1, float noundef %9) #11
  tail call void @glVertex2f(float noundef %0, float noundef %12) #11
  tail call void @glVertex2f(float noundef %1, float noundef %12) #11
  tail call void @glVertex2f(float noundef %7, float noundef %2) #11
  tail call void @glVertex2f(float noundef %7, float noundef %3) #11
  tail call void @glVertex2f(float noundef %11, float noundef %2) #11
  tail call void @glVertex2f(float noundef %11, float noundef %3) #11
  tail call void @glEnd() #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @drawviewborder_triangle(float noundef %0, float noundef %1, float noundef %2, float noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = fsub float %1, %0
  %8 = fsub float %3, %2
  tail call void @glBegin(i32 noundef 1) #11
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
  tail call void @glVertex2f(float noundef %0, float noundef %18) #11
  tail call void @glVertex2f(float noundef %1, float noundef %17) #11
  tail call void @glVertex2f(float noundef %1, float noundef %18) #11
  %19 = fsub float %7, %16
  %20 = fadd float %19, %0
  tail call void @glVertex2f(float noundef %20, float noundef %17) #11
  tail call void @glVertex2f(float noundef %0, float noundef %17) #11
  %21 = fadd float %16, %0
  tail call void @glVertex2f(float noundef %21, float noundef %18) #11
  br label %32

22:                                               ; preds = %6
  %23 = fmul float %8, 0x3FD8722180000000
  %24 = fdiv float %7, %8
  %25 = fmul float %7, %24
  %26 = select i1 %10, float %25, float %23
  %27 = select i1 %11, float %0, float %1
  %28 = select i1 %11, float %1, float %0
  tail call void @glVertex2f(float noundef %28, float noundef %2) #11
  tail call void @glVertex2f(float noundef %27, float noundef %3) #11
  tail call void @glVertex2f(float noundef %27, float noundef %2) #11
  %29 = fadd float %26, %2
  tail call void @glVertex2f(float noundef %28, float noundef %29) #11
  tail call void @glVertex2f(float noundef %28, float noundef %3) #11
  %30 = fsub float %8, %26
  %31 = fadd float %30, %2
  tail call void @glVertex2f(float noundef %27, float noundef %31) #11
  br label %32

32:                                               ; preds = %22, %12
  tail call void @glEnd() #11
  ret void
}

declare void @uiDrawBox(i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare i32 @BKE_camera_sensor_fit(i32 noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BLF_draw_default(float noundef, float noundef, float noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ED_view3d_project_int_global(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @sdrawline(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glLineWidth(float noundef) local_unnamed_addr #2

declare void @UI_ThemeColorShadeAlpha(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @UI_icon_draw(float noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

declare ptr @BKE_scene_find_marker_name(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @BLI_strcpy_rlen(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_object_pose_armature_get(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @id_frame_has_keyframe(ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @ED_view3d_camera_data_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_info_draw(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { cold }

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
!34 = !{!35, !36, i64 811}
!35 = !{!"RegionView3D", !36, i64 0, !36, i64 64, !36, i64 128, !36, i64 192, !36, i64 256, !36, i64 320, !36, i64 384, !36, i64 448, !36, i64 544, !38, i64 640, !38, i64 648, !38, i64 656, !38, i64 664, !38, i64 672, !38, i64 680, !38, i64 688, !36, i64 696, !36, i64 760, !39, i64 776, !39, i64 780, !39, i64 784, !39, i64 788, !36, i64 792, !39, i64 804, !36, i64 808, !36, i64 809, !36, i64 810, !36, i64 811, !36, i64 812, !36, i64 813, !36, i64 816, !40, i64 824, !40, i64 826, !36, i64 828, !40, i64 844, !40, i64 846, !39, i64 848, !36, i64 852, !39, i64 864, !36, i64 868}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"any pointer", !36, i64 0}
!39 = !{!"float", !36, i64 0}
!40 = !{!"short", !36, i64 0}
!41 = !{!39, !39, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"double", !36, i64 0}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = distinct !{!47, !45, !46}
!48 = distinct !{!48, !45, !46}
!49 = !{!50, !36, i64 4604}
!50 = !{!"Scene", !51, i64 0, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !53, i64 152, !38, i64 168, !38, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !52, i64 232, !52, i64 236, !52, i64 240, !40, i64 244, !36, i64 246, !36, i64 247, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !54, i64 280, !63, i64 4264, !53, i64 4296, !53, i64 4312, !38, i64 4328, !38, i64 4336, !38, i64 4344, !38, i64 4352, !38, i64 4360, !38, i64 4368, !40, i64 4376, !40, i64 4378, !52, i64 4380, !53, i64 4384, !64, i64 4400, !65, i64 4416, !68, i64 4600, !38, i64 4608, !69, i64 4616, !38, i64 4640, !70, i64 4648, !70, i64 4656, !56, i64 4664, !57, i64 4824, !71, i64 4888, !38, i64 4952}
!51 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !36, i64 32, !40, i64 98, !52, i64 100, !52, i64 104, !52, i64 108, !38, i64 112}
!52 = !{!"int", !36, i64 0}
!53 = !{!"ListBase", !38, i64 0, !38, i64 8}
!54 = !{!"RenderData", !55, i64 0, !38, i64 248, !38, i64 256, !58, i64 264, !59, i64 328, !52, i64 400, !52, i64 404, !52, i64 408, !39, i64 412, !52, i64 416, !52, i64 420, !52, i64 424, !52, i64 428, !40, i64 432, !40, i64 434, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !52, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !52, i64 484, !52, i64 488, !40, i64 492, !40, i64 494, !52, i64 496, !52, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !36, i64 514, !36, i64 515, !52, i64 516, !52, i64 520, !52, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !60, i64 544, !60, i64 560, !61, i64 576, !53, i64 592, !40, i64 608, !40, i64 610, !39, i64 612, !39, i64 616, !39, i64 620, !39, i64 624, !52, i64 628, !39, i64 632, !39, i64 636, !39, i64 640, !39, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !39, i64 660, !39, i64 664, !40, i64 668, !40, i64 670, !39, i64 672, !39, i64 676, !36, i64 680, !52, i64 1704, !40, i64 1708, !40, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !52, i64 2520, !40, i64 2524, !40, i64 2526, !39, i64 2528, !39, i64 2532, !40, i64 2536, !40, i64 2538, !39, i64 2540, !40, i64 2544, !40, i64 2546, !52, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !39, i64 2560, !39, i64 2564, !38, i64 2568, !52, i64 2576, !39, i64 2580, !36, i64 2584, !62, i64 2616, !52, i64 3976, !52, i64 3980}
!55 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !40, i64 8, !40, i64 10, !39, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !56, i64 24, !57, i64 184}
!56 = !{!"ColorManagedViewSettings", !52, i64 0, !52, i64 4, !36, i64 8, !36, i64 72, !39, i64 136, !39, i64 140, !38, i64 144, !38, i64 152}
!57 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!58 = !{!"QuicktimeCodecSettings", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !52, i64 32, !52, i64 36, !52, i64 40, !52, i64 44, !40, i64 48, !40, i64 50, !52, i64 52, !52, i64 56, !52, i64 60}
!59 = !{!"FFMpegCodecData", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !39, i64 32, !52, i64 36, !52, i64 40, !52, i64 44, !52, i64 48, !52, i64 52, !52, i64 56, !52, i64 60, !38, i64 64}
!60 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!61 = !{!"rcti", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12}
!62 = !{!"BakeData", !55, i64 0, !36, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !39, i64 1280, !39, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!63 = !{!"AudioData", !52, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !52, i64 16, !40, i64 20, !40, i64 22, !39, i64 24, !39, i64 28}
!64 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!65 = !{!"GameData", !64, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !36, i64 34, !66, i64 40, !40, i64 64, !40, i64 66, !39, i64 68, !67, i64 72, !39, i64 128, !39, i64 132, !52, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180}
!66 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !39, i64 8, !39, i64 12, !38, i64 16}
!67 = !{!"RecastData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !52, i64 40, !39, i64 44, !39, i64 48, !40, i64 52, !40, i64 54}
!68 = !{!"UnitSettings", !39, i64 0, !36, i64 4, !36, i64 5, !40, i64 6}
!69 = !{!"PhysicsSettings", !36, i64 0, !52, i64 12, !52, i64 16, !52, i64 20}
!70 = !{!"long", !36, i64 0}
!71 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!72 = !{!38, !38, i64 0}
!73 = !{!50, !39, i64 4600}
!74 = !{!75, !39, i64 248}
!75 = !{!"View3D", !38, i64 0, !38, i64 8, !53, i64 16, !52, i64 32, !39, i64 36, !36, i64 40, !36, i64 56, !39, i64 72, !39, i64 76, !36, i64 80, !36, i64 81, !52, i64 84, !52, i64 88, !40, i64 92, !40, i64 94, !38, i64 96, !38, i64 104, !60, i64 112, !53, i64 128, !38, i64 144, !38, i64 152, !36, i64 160, !52, i64 224, !52, i64 228, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !40, i64 240, !40, i64 242, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !36, i64 260, !36, i64 272, !40, i64 284, !40, i64 286, !40, i64 288, !36, i64 290, !36, i64 291, !36, i64 292, !36, i64 293, !36, i64 294, !53, i64 296, !53, i64 312, !53, i64 328, !36, i64 344, !36, i64 345, !36, i64 346, !36, i64 347, !38, i64 352, !38, i64 360, !38, i64 368}
!76 = !{!60, !39, i64 4}
!77 = !{!60, !39, i64 0}
!78 = !{!60, !39, i64 12}
!79 = !{!60, !39, i64 8}
!80 = !{!81, !39, i64 12}
!81 = !{!"CameraParams", !36, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !52, i64 40, !39, i64 44, !39, i64 48, !52, i64 52, !52, i64 56, !52, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !60, i64 76, !36, i64 92}
!82 = !{!83, !40, i64 208}
!83 = !{!"ARegion", !38, i64 0, !38, i64 8, !84, i64 16, !61, i64 176, !61, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !39, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !38, i64 240, !53, i64 248, !53, i64 264, !53, i64 280, !53, i64 296, !53, i64 312, !53, i64 328, !53, i64 344, !38, i64 360, !38, i64 368, !38, i64 376}
!84 = !{!"View2D", !60, i64 0, !60, i64 16, !61, i64 32, !61, i64 48, !61, i64 64, !36, i64 80, !36, i64 88, !39, i64 96, !39, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !38, i64 128, !52, i64 136, !52, i64 140, !38, i64 144, !38, i64 152}
!85 = !{!83, !40, i64 210}
!86 = !{i64 0, i64 4, !41, i64 4, i64 4, !41, i64 8, i64 4, !41, i64 12, i64 4, !41}
!87 = !{i64 0, i64 4, !41, i64 4, i64 4, !41, i64 8, i64 4, !41}
!88 = !{i64 0, i64 4, !41, i64 4, i64 4, !41}
!89 = !{i64 0, i64 4, !41}
!90 = !{!75, !39, i64 252}
!91 = !{!81, !39, i64 44}
!92 = !{!75, !39, i64 256}
!93 = !{!81, !39, i64 48}
!94 = !{!75, !38, i64 96}
!95 = !{!81, !39, i64 16}
!96 = !{!81, !39, i64 20}
!97 = !{!50, !52, i64 764}
!98 = !{!50, !52, i64 768}
!99 = !{!50, !39, i64 892}
!100 = !{!50, !39, i64 896}
!101 = !{!83, !38, i64 376}
!102 = !{!35, !38, i64 672}
!103 = !{!83, !52, i64 176}
!104 = !{!83, !52, i64 184}
!105 = !{!106, !38, i64 32}
!106 = !{!"ViewContext", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !36, i64 56}
!107 = !{!75, !40, i64 240}
!108 = !{!106, !38, i64 0}
!109 = !{!106, !38, i64 24}
!110 = !{!50, !38, i64 168}
!111 = !{!112, !38, i64 32}
!112 = !{!"Base", !38, i64 0, !38, i64 8, !52, i64 16, !52, i64 20, !52, i64 24, !40, i64 28, !40, i64 30, !38, i64 32}
!113 = !{!114, !52, i64 432}
!114 = !{!"Object", !51, i64 0, !38, i64 120, !38, i64 128, !40, i64 136, !40, i64 138, !52, i64 140, !52, i64 144, !52, i64 148, !36, i64 152, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !38, i64 296, !38, i64 304, !115, i64 312, !38, i64 360, !53, i64 368, !53, i64 384, !53, i64 400, !53, i64 416, !52, i64 432, !52, i64 436, !38, i64 440, !38, i64 448, !52, i64 456, !52, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !39, i64 616, !39, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !52, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !36, i64 966, !36, i64 967, !52, i64 968, !52, i64 972, !52, i64 976, !52, i64 980, !52, i64 984, !39, i64 988, !39, i64 992, !39, i64 996, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !39, i64 1028, !39, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !36, i64 1042, !36, i64 1043, !40, i64 1044, !36, i64 1046, !36, i64 1047, !39, i64 1048, !39, i64 1052, !53, i64 1056, !53, i64 1072, !53, i64 1088, !53, i64 1104, !39, i64 1120, !40, i64 1124, !40, i64 1126, !36, i64 1128, !52, i64 1144, !52, i64 1148, !38, i64 1152, !36, i64 1160, !36, i64 1161, !40, i64 1162, !36, i64 1164, !53, i64 1176, !53, i64 1192, !53, i64 1208, !53, i64 1224, !38, i64 1240, !38, i64 1248, !38, i64 1256, !36, i64 1264, !36, i64 1265, !40, i64 1266, !39, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !70, i64 1304, !70, i64 1312, !52, i64 1320, !52, i64 1324, !53, i64 1328, !53, i64 1344, !38, i64 1360, !38, i64 1368, !38, i64 1376, !36, i64 1384, !38, i64 1392, !53, i64 1400, !38, i64 1416}
!115 = !{!"bAnimVizSettings", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !52, i64 32, !52, i64 36, !52, i64 40, !52, i64 44}
!116 = !{!75, !40, i64 232}
!117 = !{!50, !38, i64 176}
!118 = !{!75, !36, i64 344}
!119 = !{!120, !40, i64 8968}
!120 = !{!"UserDef", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !52, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !52, i64 8484, !52, i64 8488, !52, i64 8492, !40, i64 8496, !40, i64 8498, !52, i64 8500, !52, i64 8504, !52, i64 8508, !52, i64 8512, !52, i64 8516, !52, i64 8520, !52, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !53, i64 8536, !53, i64 8552, !53, i64 8568, !53, i64 8584, !53, i64 8600, !53, i64 8616, !53, i64 8632, !36, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !36, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !52, i64 8912, !52, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !39, i64 8956, !39, i64 8960, !52, i64 8964, !40, i64 8968, !40, i64 8970, !39, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !121, i64 8984, !36, i64 9760, !36, i64 9772, !40, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !52, i64 10896, !52, i64 10900, !39, i64 10904, !39, i64 10908, !52, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !122, i64 10928}
!121 = !{!"ColorBand", !40, i64 0, !40, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!122 = !{!"WalkNavigation", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !40, i64 24, !36, i64 26}
!123 = !{!61, !52, i64 4}
!124 = !{!61, !52, i64 0}
!125 = !{!61, !52, i64 12}
!126 = !{!61, !52, i64 8}
!127 = !{!35, !40, i64 826}
!128 = !{!129, !52, i64 2096}
!129 = !{!"Global", !38, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !53, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !36, i64 2090, !40, i64 2092, !52, i64 2096, !52, i64 2100, !36, i64 2104, !52, i64 2108, !52, i64 2112, !36, i64 2116}
!130 = !{!112, !52, i64 16}
!131 = !{!75, !52, i64 224}
!132 = !{!83, !40, i64 232}
!133 = !{!52, !52, i64 0}
!134 = !{!135, !38, i64 40}
!135 = !{!"ImBuf", !38, i64 0, !38, i64 8, !52, i64 16, !52, i64 20, !36, i64 24, !52, i64 28, !52, i64 32, !52, i64 36, !38, i64 40, !38, i64 48, !36, i64 56, !52, i64 72, !52, i64 76, !52, i64 80, !52, i64 84, !38, i64 88, !38, i64 96, !38, i64 104, !39, i64 112, !36, i64 120, !52, i64 280, !52, i64 284, !52, i64 288, !52, i64 292, !38, i64 296, !38, i64 304, !52, i64 312, !36, i64 316, !36, i64 1340, !38, i64 2368, !52, i64 2376, !38, i64 2384, !52, i64 2392, !52, i64 2396, !38, i64 2400, !38, i64 2408, !38, i64 2416, !38, i64 2424, !52, i64 2432, !61, i64 2436, !136, i64 2456}
!136 = !{!"DDSData", !52, i64 0, !52, i64 4, !38, i64 8, !52, i64 16}
!137 = distinct !{!137, !45, !46}
!138 = distinct !{!138, !45, !46}
!139 = distinct !{!139, !45, !46}
!140 = distinct !{!140, !45, !46}
!141 = distinct !{!141, !45, !46}
!142 = distinct !{!142, !45, !46}
!143 = !{!144, !38, i64 16}
!144 = !{!"View3DAfter", !38, i64 0, !38, i64 8, !38, i64 16, !40, i64 24}
!145 = !{!144, !40, i64 24}
!146 = !{!147, !38, i64 8}
!147 = !{!"ViewDepths", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !38, i64 8, !36, i64 16, !36, i64 32}
!148 = !{!147, !40, i64 0}
!149 = !{!147, !40, i64 2}
!150 = !{!147, !40, i64 4}
!151 = !{!147, !40, i64 6}
!152 = !{!147, !36, i64 32}
!153 = !{!35, !38, i64 664}
!154 = distinct !{!154, !45, !46}
!155 = !{!75, !40, i64 242}
!156 = !{!120, !39, i64 8972}
!157 = !{!120, !40, i64 8924}
!158 = !{!50, !38, i64 144}
!159 = !{!114, !40, i64 952}
!160 = distinct !{!160, !45, !46}
!161 = distinct !{!161, !45, !46}
!162 = !{!75, !38, i64 296}
!163 = !{!75, !38, i64 312}
!164 = !{!75, !38, i64 328}
!165 = !{!75, !36, i64 346}
!166 = !{!144, !38, i64 0}
!167 = distinct !{!167, !45, !46}
!168 = !{!75, !36, i64 345}
!169 = distinct !{!169, !45, !46}
!170 = distinct !{!170, !45, !46}
!171 = distinct !{!171, !45, !46}
!172 = !{!114, !36, i64 1160}
!173 = !{!112, !52, i64 24}
!174 = !{!129, !38, i64 0}
!175 = !{!176, !38, i64 1888}
!176 = !{!"Main", !38, i64 0, !38, i64 8, !36, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !70, i64 1048, !36, i64 1056, !40, i64 1072, !38, i64 1080, !53, i64 1088, !53, i64 1104, !53, i64 1120, !53, i64 1136, !53, i64 1152, !53, i64 1168, !53, i64 1184, !53, i64 1200, !53, i64 1216, !53, i64 1232, !53, i64 1248, !53, i64 1264, !53, i64 1280, !53, i64 1296, !53, i64 1312, !53, i64 1328, !53, i64 1344, !53, i64 1360, !53, i64 1376, !53, i64 1392, !53, i64 1408, !53, i64 1424, !53, i64 1440, !53, i64 1456, !53, i64 1472, !53, i64 1488, !53, i64 1504, !53, i64 1520, !53, i64 1536, !53, i64 1552, !53, i64 1568, !53, i64 1584, !53, i64 1600, !53, i64 1616, !36, i64 1632, !38, i64 1888, !38, i64 1896}
!177 = !{!178, !36, i64 110}
!178 = !{!"DupliObject", !38, i64 0, !38, i64 8, !38, i64 16, !36, i64 24, !36, i64 88, !36, i64 100, !40, i64 108, !36, i64 110, !36, i64 111, !36, i64 112, !38, i64 144}
!179 = distinct !{!179, !45, !46}
!180 = !{!178, !38, i64 0}
!181 = !{!178, !38, i64 16}
!182 = !{!114, !38, i64 1416}
!183 = !{!114, !36, i64 1046}
!184 = !{!114, !40, i64 1044}
!185 = !{i64 0, i64 96, !186, i64 96, i64 4, !133, i64 100, i64 4, !133}
!186 = !{!36, !36, i64 0}
!187 = !{!114, !40, i64 136}
!188 = !{!178, !40, i64 108}
!189 = !{!178, !36, i64 111}
!190 = distinct !{!190, !45, !46}
!191 = !{!50, !40, i64 4558}
!192 = !{!193, !38, i64 184}
!193 = !{!"bScreen", !51, i64 0, !53, i64 120, !53, i64 136, !53, i64 152, !53, i64 168, !38, i64 184, !38, i64 192, !52, i64 200, !52, i64 204, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !38, i64 232, !38, i64 240}
!194 = !{!70, !70, i64 0}
!195 = !{!196, !36, i64 72}
!196 = !{!"ScrArea", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !61, i64 56, !36, i64 72, !36, i64 73, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !40, i64 84, !36, i64 86, !36, i64 87, !38, i64 88, !53, i64 96, !53, i64 112, !53, i64 128, !53, i64 144}
!197 = !{!196, !38, i64 96}
!198 = distinct !{!198, !45, !46}
!199 = !{!35, !39, i64 788}
!200 = !{!75, !40, i64 236}
!201 = !{!50, !40, i64 888}
!202 = distinct !{!202, !45, !46}
!203 = distinct !{!203, !45, !46}
!204 = !{!205, !38, i64 16}
!205 = !{!"View3DShadow", !38, i64 0, !38, i64 8, !38, i64 16}
!206 = !{!83, !40, i64 214}
!207 = !{!35, !36, i64 809}
!208 = distinct !{!208, !45, !46}
!209 = !{i64 0, i64 4, !133, i64 4, i64 4, !133, i64 8, i64 4, !133, i64 12, i64 4, !133}
!210 = !{!83, !52, i64 180}
!211 = !{!83, !52, i64 188}
!212 = !{!50, !38, i64 136}
!213 = !{!35, !38, i64 640}
!214 = !{!114, !38, i64 296}
!215 = !{!216, !52, i64 1344}
!216 = !{!"Mesh", !51, i64 0, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !38, i64 152, !38, i64 160, !38, i64 168, !38, i64 176, !38, i64 184, !38, i64 192, !38, i64 200, !38, i64 208, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !217, i64 280, !217, i64 480, !217, i64 680, !217, i64 880, !217, i64 1080, !52, i64 1280, !52, i64 1284, !52, i64 1288, !52, i64 1292, !52, i64 1296, !52, i64 1300, !52, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !52, i64 1344, !40, i64 1348, !40, i64 1350, !39, i64 1352, !52, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !40, i64 1366, !38, i64 1368}
!217 = !{!"CustomData", !38, i64 0, !36, i64 8, !52, i64 172, !52, i64 176, !52, i64 180, !38, i64 184, !38, i64 192}
!218 = !{!35, !39, i64 848}
!219 = !{!35, !36, i64 810}
!220 = !{!75, !40, i64 286}
!221 = !{!75, !36, i64 290}
!222 = !{!75, !40, i64 288}
!223 = distinct !{!223, !45, !46}
!224 = distinct !{!224, !45, !46}
!225 = !{!68, !36, i64 4}
!226 = !{!68, !39, i64 0}
!227 = distinct !{!227, !45, !46}
!228 = distinct !{!228, !45, !46}
!229 = !{!114, !38, i64 1256}
!230 = !{!231, !52, i64 100}
!231 = !{!"Group", !51, i64 0, !53, i64 120, !52, i64 136, !36, i64 140}
!232 = distinct !{!232, !45, !46}
!233 = distinct !{!233, !45, !46}
!234 = !{!75, !52, i64 88}
!235 = distinct !{!235, !45, !46}
!236 = distinct !{!236, !45, !46}
!237 = distinct !{!237, !45, !46}
!238 = distinct !{!238, !45, !46}
!239 = !{!135, !38, i64 48}
!240 = !{!75, !38, i64 24}
!241 = !{!75, !38, i64 16}
!242 = !{!50, !52, i64 232}
!243 = !{!81, !39, i64 4}
!244 = !{!75, !39, i64 244}
!245 = !{!50, !38, i64 4360}
!246 = !{!247, !43, i64 8}
!247 = !{!"ScreenFrameRateInfo", !43, i64 0, !43, i64 8, !36, i64 16, !40, i64 48}
!248 = !{!247, !43, i64 0}
!249 = !{!247, !40, i64 48}
!250 = distinct !{!250, !45, !46}
!251 = !{!50, !40, i64 820}
!252 = !{!50, !39, i64 900}
!253 = !{!120, !40, i64 8948}
!254 = !{!255, !38, i64 176}
!255 = !{!"RenderEngineType", !38, i64 0, !38, i64 8, !36, i64 16, !36, i64 80, !52, i64 144, !38, i64 152, !38, i64 160, !38, i64 168, !38, i64 176, !38, i64 184, !38, i64 192, !256, i64 200}
!256 = !{!"ExtensionRNA", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24}
!257 = !{!255, !38, i64 184}
!258 = !{!50, !52, i64 800}
!259 = !{!50, !39, i64 840}
!260 = !{!50, !39, i64 848}
!261 = !{!50, !39, i64 844}
!262 = !{!50, !39, i64 852}
!263 = !{!75, !39, i64 112}
!264 = !{!75, !39, i64 116}
!265 = !{!75, !39, i64 120}
!266 = !{!75, !39, i64 124}
!267 = !{i8 0, i8 2}
!268 = !{!269, !40, i64 200}
!269 = !{!"World", !51, i64 0, !38, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !38, i64 336, !38, i64 344, !38, i64 352, !36, i64 360, !40, i64 504, !40, i64 506, !36, i64 508, !38, i64 512, !38, i64 520}
!270 = distinct !{!270, !45, !46}
!271 = distinct !{!271, !45, !46}
!272 = !{!40, !40, i64 0}
!273 = distinct !{!273, !45, !46}
!274 = distinct !{!274, !45, !46}
!275 = distinct !{!275, !45, !46}
!276 = distinct !{!276, !45, !46}
!277 = !{!120, !52, i64 8964}
!278 = !{!35, !39, i64 864}
!279 = !{!35, !39, i64 776}
!280 = distinct !{!280, !45, !46}
!281 = !{!35, !38, i64 656}
!282 = !{!50, !52, i64 776}
!283 = !{!284, !52, i64 36}
!284 = !{!"RenderEngine", !38, i64 0, !38, i64 8, !52, i64 16, !38, i64 24, !52, i64 32, !52, i64 36, !52, i64 40, !38, i64 48, !53, i64 56, !36, i64 72, !52, i64 584, !52, i64 588, !38, i64 592, !52, i64 600, !52, i64 604, !60, i64 608, !61, i64 624, !36, i64 640, !52, i64 704, !52, i64 708}
!285 = !{!50, !52, i64 780}
!286 = !{!284, !52, i64 40}
!287 = !{!284, !38, i64 0}
!288 = !{!289, !40, i64 130}
!289 = !{!"Camera", !51, i64 0, !38, i64 120, !36, i64 128, !36, i64 129, !40, i64 130, !39, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !38, i64 176, !38, i64 184, !36, i64 192, !36, i64 193}
!290 = !{!289, !39, i64 132}
!291 = !{!289, !36, i64 129}
!292 = !{!289, !36, i64 192}
!293 = !{!289, !39, i64 156}
!294 = !{!289, !39, i64 160}
!295 = !{!120, !52, i64 8484}
!296 = !{!120, !40, i64 8926}
!297 = !{!120, !39, i64 10908}
!298 = !{!120, !40, i64 8928}
!299 = distinct !{!299, !45, !46}
!300 = !{!50, !52, i64 680}
!301 = !{!302, !38, i64 160}
!302 = !{!"bArmature", !51, i64 0, !38, i64 120, !53, i64 128, !53, i64 144, !38, i64 160, !38, i64 168, !38, i64 176, !38, i64 184, !52, i64 192, !52, i64 196, !52, i64 200, !52, i64 204, !40, i64 208, !40, i64 210, !52, i64 212, !52, i64 216, !52, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !52, i64 232, !52, i64 236, !52, i64 240, !52, i64 244, !52, i64 248, !52, i64 252}
!303 = !{!302, !38, i64 176}
!304 = !{!302, !38, i64 168}
!305 = !{!306, !52, i64 320}
!306 = !{!"Bone", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !53, i64 32, !36, i64 48, !39, i64 112, !36, i64 116, !36, i64 128, !36, i64 140, !52, i64 176, !36, i64 180, !36, i64 192, !36, i64 204, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !36, i64 308, !52, i64 320, !40, i64 324, !36, i64 326}
!307 = !{!302, !52, i64 216}
!308 = !{!114, !40, i64 1266}
!309 = !{!114, !36, i64 1265}
!310 = !{!289, !36, i64 128}
!311 = !{!75, !38, i64 152}
!312 = !{!114, !52, i64 944}
!313 = !{!314, !39, i64 140}
!314 = !{!"Lamp", !51, i64 0, !38, i64 120, !40, i64 128, !40, i64 130, !52, i64 132, !40, i64 136, !40, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !38, i64 200, !40, i64 208, !40, i64 210, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !40, i64 240, !40, i64 242, !40, i64 244, !40, i64 246, !36, i64 248, !36, i64 249, !40, i64 250, !40, i64 252, !40, i64 254, !40, i64 256, !40, i64 258, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !40, i64 276, !40, i64 278, !40, i64 280, !40, i64 282, !40, i64 284, !40, i64 286, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !39, i64 336, !40, i64 340, !36, i64 342, !38, i64 344, !36, i64 352, !40, i64 496, !40, i64 498, !36, i64 500, !38, i64 504, !38, i64 512}
!315 = !{!314, !39, i64 144}
!316 = !{!314, !39, i64 148}
!317 = !{!314, !39, i64 172}
!318 = !{!319, !52, i64 96}
!319 = !{!"SceneRenderLayer", !38, i64 0, !38, i64 8, !36, i64 16, !38, i64 80, !38, i64 88, !52, i64 96, !52, i64 100, !52, i64 104, !52, i64 108, !52, i64 112, !52, i64 116, !52, i64 120, !39, i64 124, !320, i64 128}
!320 = !{!"FreestyleConfig", !53, i64 0, !52, i64 16, !52, i64 20, !52, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !53, i64 40}
!321 = distinct !{!321, !45, !46}
!322 = distinct !{!322, !45, !46}
!323 = !{!324, !38, i64 24}
!324 = !{!"BGpic", !38, i64 0, !38, i64 8, !38, i64 16, !325, i64 24, !38, i64 64, !326, i64 72, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102}
!325 = !{!"ImageUser", !38, i64 0, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !52, i64 36}
!326 = !{!"MovieClipUser", !52, i64 0, !40, i64 4, !40, i64 6}
!327 = !{!324, !40, i64 98}
!328 = !{!324, !40, i64 96}
!329 = !{!324, !40, i64 100}
!330 = !{!324, !38, i64 16}
!331 = !{!332, !40, i64 1248}
!332 = !{!"Image", !51, i64 0, !36, i64 120, !38, i64 1144, !38, i64 1152, !38, i64 1160, !38, i64 1168, !36, i64 1176, !40, i64 1240, !40, i64 1242, !40, i64 1244, !40, i64 1246, !40, i64 1248, !40, i64 1250, !52, i64 1252, !40, i64 1256, !40, i64 1258, !40, i64 1260, !40, i64 1262, !40, i64 1264, !40, i64 1266, !52, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !39, i64 1296, !52, i64 1300, !40, i64 1304, !40, i64 1306, !52, i64 1308, !52, i64 1312, !36, i64 1316, !36, i64 1317, !40, i64 1318, !36, i64 1320, !39, i64 1336, !39, i64 1340, !71, i64 1344, !36, i64 1408, !36, i64 1409, !36, i64 1416}
!333 = !{!324, !40, i64 58}
!334 = !{!50, !38, i64 128}
!335 = !{!324, !38, i64 64}
!336 = !{!135, !52, i64 28}
!337 = !{!324, !39, i64 80}
!338 = !{!324, !39, i64 84}
!339 = !{!135, !52, i64 16}
!340 = !{!135, !52, i64 20}
!341 = !{!324, !39, i64 88}
!342 = !{!135, !52, i64 292}
!343 = distinct !{!343, !45, !46}
!344 = !{!324, !39, i64 92}
!345 = distinct !{!345, !45, !46}
