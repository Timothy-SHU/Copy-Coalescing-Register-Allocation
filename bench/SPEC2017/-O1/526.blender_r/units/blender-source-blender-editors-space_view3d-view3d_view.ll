; ModuleID = 'blender/source/blender/editors/space_view3d/view3d_view.c'
source_filename = "blender/source/blender/editors/space_view3d/view3d_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
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
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.SmoothView3DStore = type { %struct.SmoothView3DState, %struct.SmoothView3DState, %struct.SmoothView3DState, i8, i8, double }
%struct.SmoothView3DState = type { float, float, [4 x float], [3 x float] }
%struct.Camera = type { %struct.ID, ptr, i8, i8, i16, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, i8, [7 x i8] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.wmTimer = type { ptr, ptr, ptr, double, i32, ptr, double, double, double, double, double, i32 }
%struct.ObjectTfmProtectedChannels = type { [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.bglMats = type { [16 x double], [16 x double], [4 x i32] }
%struct.BoundBox = type { [8 x [3 x float]], i32, i32 }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.ViewDepths = type { i16, i16, i16, i16, ptr, [2 x double], i8 }
%struct.CameraParams = type { i8, float, float, float, float, float, float, float, float, float, i32, float, float, i32, i32, i32, float, float, float, %struct.rctf, [4 x [4 x float]] }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.DupliObject = type { ptr, ptr, ptr, [4 x [4 x float]], [3 x float], [2 x float], i16, i8, i8, [8 x i32], ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }

@__const.ED_view3d_smooth_view_ex.vec2 = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 4
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"smoothview v3d\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Smooth View\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"VIEW3D_OT_smoothview\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Align Camera To View\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Set camera view to active view\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"VIEW3D_OT_camera_to_view\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Camera Fit Frame to Selected\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"Move the camera so selected objects are framed\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"VIEW3D_OT_camera_to_view_selected\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Set Active Object as Camera\00", align 1
@.str.12 = private unnamed_addr constant [66 x i8] c"Set the active object as the active camera for this view or scene\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"VIEW3D_OT_object_as_camera\00", align 1
@view3d_quat_axis = internal global [6 x [4 x float]] [[4 x float] [float 0x3FE6A09E60000000, float 0xBFE6A09E60000000, float 0.000000e+00, float 0.000000e+00], [4 x float] [float 0.000000e+00, float 0.000000e+00, float 0xBFE6A09E60000000, float 0xBFE6A09E60000000], [4 x float] [float 5.000000e-01, float -5.000000e-01, float 5.000000e-01, float 5.000000e-01], [4 x float] [float 5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -5.000000e-01], [4 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], [4 x float] [float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00]], align 16
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.15 = private unnamed_addr constant [11 x i8] c"Local View\00", align 1
@.str.16 = private unnamed_addr constant [69 x i8] c"Toggle display of selected object(s) separately and centered in view\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"VIEW3D_OT_localview\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Start Game Engine\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"Start game engine\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"VIEW3D_OT_game_start\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [17 x i8] c"No active camera\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"Object not a camera\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"Orthographic cameras not supported\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"No more than 8 local views\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"localview\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"localview region\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"Game engine is disabled in this build\00", align 1
@str = private unnamed_addr constant [56 x i8] c"view3d_region_operator_needs_opengl error, wrong region\00", align 1
@str.28 = private unnamed_addr constant [34 x i8] c"Too many objects in select buffer\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @view3d_operator_needs_opengl(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #17
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 8
  %7 = load i16, ptr %6, align 2, !tbaa !34
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5, %1
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %18

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 30
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 7
  %15 = load i16, ptr %14, align 4, !tbaa !47
  %16 = sext i16 %15 to i32
  tail call void @wmSubWindowSet(ptr noundef %2, i32 noundef %16) #17
  tail call void @glMatrixMode(i32 noundef 5889) #17
  tail call void @glLoadMatrixf(ptr noundef %13) #17
  tail call void @glMatrixMode(i32 noundef 5888) #17
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %13, i64 0, i32 1
  tail call void @glLoadMatrixf(ptr noundef nonnull %17) #17
  br label %18

18:                                               ; preds = %9, %11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @view3d_region_operator_needs_opengl(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 8
  %6 = load i16, ptr %5, align 2, !tbaa !34
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %2
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %17

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 7
  %14 = load i16, ptr %13, align 4, !tbaa !47
  %15 = sext i16 %14 to i32
  tail call void @wmSubWindowSet(ptr noundef %0, i32 noundef %15) #17
  tail call void @glMatrixMode(i32 noundef 5889) #17
  tail call void @glLoadMatrixf(ptr noundef %12) #17
  tail call void @glMatrixMode(i32 noundef 5888) #17
  %16 = getelementptr inbounds %struct.RegionView3D, ptr %12, i64 0, i32 1
  tail call void @glLoadMatrixf(ptr noundef nonnull %16) #17
  br label %17

17:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @wmSubWindowSet(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @glMatrixMode(i32 noundef) local_unnamed_addr #2

declare void @glLoadMatrixf(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @ED_view3d_cursor3d_get(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 35
  br label %12

10:                                               ; preds = %4, %2
  %11 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 8
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %9, %8 ], [ %11, %10 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ED_view3d_camera_data_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 25
  %4 = load i8, ptr %3, align 1, !tbaa !50
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !53
  %13 = icmp eq i16 %12, 11
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  br label %17

17:                                               ; preds = %2, %6, %10, %14
  %18 = phi ptr [ %16, %14 ], [ null, %10 ], [ null, %6 ], [ null, %2 ]
  ret ptr %18
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_smooth_view_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef readonly %9, ptr noundef readonly %10, i32 noundef %11) local_unnamed_addr #0 {
  %13 = alloca %struct.SmoothView3DStore, align 8
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [4 x float], align 16
  %17 = alloca [4 x float], align 16
  %18 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 30
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %13) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %13, i8 0, i64 120, i1 false)
  %20 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 1
  %21 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 1, i32 3
  %22 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 22
  %23 = load float, ptr %22, align 4, !tbaa !59
  store float %23, ptr %21, align 4, !tbaa !59
  %24 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 22, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !59
  %26 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 1, i32 3, i64 1
  store float %25, ptr %26, align 8, !tbaa !59
  %27 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 22, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !59
  %29 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 1, i32 3, i64 2
  store float %28, ptr %29, align 4, !tbaa !59
  %30 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 1, i32 2
  %31 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 17
  call void @copy_qt_qt(ptr noundef nonnull %30, ptr noundef nonnull %31) #17
  %32 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 18
  %33 = load float, ptr %32, align 8, !tbaa !60
  store float %33, ptr %20, align 4, !tbaa !61
  %34 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 30
  %35 = load float, ptr %34, align 4, !tbaa !63
  %36 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 1, i32 1
  store float %35, ptr %36, align 8, !tbaa !64
  %37 = getelementptr inbounds %struct.SmoothView3DState, ptr %13, i64 0, i32 3
  %38 = load float, ptr %22, align 4, !tbaa !59
  store float %38, ptr %37, align 8, !tbaa !59
  %39 = load float, ptr %24, align 4, !tbaa !59
  %40 = getelementptr inbounds %struct.SmoothView3DState, ptr %13, i64 0, i32 3, i64 1
  store float %39, ptr %40, align 4, !tbaa !59
  %41 = load float, ptr %27, align 4, !tbaa !59
  %42 = getelementptr inbounds %struct.SmoothView3DState, ptr %13, i64 0, i32 3, i64 2
  store float %41, ptr %42, align 8, !tbaa !59
  %43 = getelementptr inbounds %struct.SmoothView3DState, ptr %13, i64 0, i32 2
  call void @copy_qt_qt(ptr noundef nonnull %43, ptr noundef nonnull %31) #17
  %44 = load float, ptr %32, align 8, !tbaa !60
  store float %44, ptr %13, align 8, !tbaa !61
  %45 = load float, ptr %34, align 4, !tbaa !63
  %46 = getelementptr inbounds %struct.SmoothView3DState, ptr %13, i64 0, i32 1
  store float %45, ptr %46, align 4, !tbaa !64
  %47 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 14
  %48 = load ptr, ptr %47, align 8, !tbaa !65
  %49 = icmp eq ptr %48, null
  %50 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 2
  br i1 %49, label %51, label %63

51:                                               ; preds = %12
  %52 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 2, i32 3
  %53 = load float, ptr %22, align 4, !tbaa !59
  store float %53, ptr %52, align 8, !tbaa !59
  %54 = load float, ptr %24, align 4, !tbaa !59
  %55 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 2, i32 3, i64 1
  store float %54, ptr %55, align 4, !tbaa !59
  %56 = load float, ptr %27, align 4, !tbaa !59
  %57 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 2, i32 3, i64 2
  store float %56, ptr %57, align 8, !tbaa !59
  %58 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 2, i32 2
  call void @copy_qt_qt(ptr noundef nonnull %58, ptr noundef nonnull %31) #17
  %59 = load float, ptr %32, align 8, !tbaa !60
  store float %59, ptr %50, align 8, !tbaa !61
  %60 = load float, ptr %34, align 4, !tbaa !63
  %61 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 2, i32 1
  store float %60, ptr %61, align 4, !tbaa !64
  %62 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 26
  br label %66

63:                                               ; preds = %12
  %64 = getelementptr inbounds %struct.SmoothView3DStore, ptr %48, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %50, ptr noundef nonnull align 8 dereferenceable(36) %64, i64 36, i1 false), !tbaa.struct !66
  %65 = getelementptr inbounds %struct.SmoothView3DStore, ptr %48, i64 0, i32 4
  br label %66

66:                                               ; preds = %63, %51
  %67 = phi ptr [ %65, %63 ], [ %62, %51 ]
  %68 = load i8, ptr %67, align 1, !tbaa !67
  %69 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 4
  store i8 %68, ptr %69, align 1, !tbaa !68
  %70 = icmp eq ptr %6, null
  %71 = icmp eq ptr %5, null
  %72 = and i1 %71, %70
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  call void @ED_view3d_camera_lock_init(ptr noundef %3, ptr noundef %19) #17
  br label %74

74:                                               ; preds = %73, %66
  %75 = icmp ne ptr %7, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %74
  %77 = load float, ptr %7, align 4, !tbaa !59
  store float %77, ptr %21, align 4, !tbaa !59
  %78 = getelementptr inbounds float, ptr %7, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !59
  store float %79, ptr %26, align 8, !tbaa !59
  %80 = getelementptr inbounds float, ptr %7, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !59
  store float %81, ptr %29, align 4, !tbaa !59
  br label %82

82:                                               ; preds = %76, %74
  %83 = icmp eq ptr %8, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %82
  call void @copy_qt_qt(ptr noundef nonnull %30, ptr noundef nonnull %8) #17
  br label %85

85:                                               ; preds = %84, %82
  %86 = icmp ne ptr %9, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %85
  %88 = load float, ptr %9, align 4, !tbaa !59
  store float %88, ptr %20, align 4, !tbaa !71
  br label %89

89:                                               ; preds = %87, %85
  %90 = icmp eq ptr %10, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %89
  %92 = load float, ptr %10, align 4, !tbaa !59
  store float %92, ptr %36, align 8, !tbaa !72
  br label %93

93:                                               ; preds = %91, %89
  br i1 %70, label %98, label %94

94:                                               ; preds = %93
  %95 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 47
  %96 = call float @ED_view3d_offset_distance(ptr noundef nonnull %95, ptr noundef %7, float noundef 1.000000e+00) #17
  store float %96, ptr %20, align 4, !tbaa !71
  call void @ED_view3d_from_object(ptr noundef nonnull %6, ptr noundef nonnull %21, ptr noundef nonnull %30, ptr noundef nonnull %20, ptr noundef nonnull %36) #17
  %97 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 3
  store i8 1, ptr %97, align 4, !tbaa !73
  br label %98

98:                                               ; preds = %94, %93
  %99 = icmp eq i32 %11, 0
  br i1 %99, label %217, label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 24
  %102 = load i16, ptr %101, align 8, !tbaa !74
  %103 = icmp eq i16 %102, 6
  br i1 %103, label %217, label %104

104:                                              ; preds = %100
  %105 = icmp eq ptr %5, %6
  br i1 %105, label %106, label %148

106:                                              ; preds = %104
  %107 = load float, ptr %20, align 4, !tbaa !71
  %108 = load float, ptr %32, align 8, !tbaa !60
  %109 = fcmp une float %107, %108
  br i1 %109, label %148, label %110

110:                                              ; preds = %106
  %111 = load float, ptr %36, align 8, !tbaa !72
  %112 = load float, ptr %34, align 4, !tbaa !63
  %113 = fcmp une float %111, %112
  br i1 %113, label %148, label %114

114:                                              ; preds = %110
  %115 = load float, ptr %21, align 4, !tbaa !59
  %116 = load float, ptr %22, align 4, !tbaa !59
  %117 = fcmp oeq float %115, %116
  br i1 %117, label %118, label %148

118:                                              ; preds = %114
  %119 = load float, ptr %26, align 8, !tbaa !59
  %120 = load float, ptr %24, align 4, !tbaa !59
  %121 = fcmp oeq float %119, %120
  br i1 %121, label %122, label %148

122:                                              ; preds = %118
  %123 = load float, ptr %29, align 4, !tbaa !59
  %124 = load float, ptr %27, align 4, !tbaa !59
  %125 = fcmp une float %123, %124
  br i1 %125, label %148, label %126

126:                                              ; preds = %122
  %127 = load float, ptr %30, align 4, !tbaa !59
  %128 = load float, ptr %31, align 4, !tbaa !59
  %129 = fcmp oeq float %127, %128
  br i1 %129, label %130, label %148

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 1, i32 2, i64 1
  %132 = load float, ptr %131, align 8, !tbaa !59
  %133 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 17, i64 1
  %134 = load float, ptr %133, align 4, !tbaa !59
  %135 = fcmp oeq float %132, %134
  br i1 %135, label %136, label %148

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 1, i32 2, i64 2
  %138 = load float, ptr %137, align 4, !tbaa !59
  %139 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 17, i64 2
  %140 = load float, ptr %139, align 4, !tbaa !59
  %141 = fcmp oeq float %138, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 1, i32 2, i64 3
  %144 = load float, ptr %143, align 8, !tbaa !59
  %145 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 17, i64 3
  %146 = load float, ptr %145, align 4, !tbaa !59
  %147 = fcmp oeq float %144, %146
  br label %148

148:                                              ; preds = %118, %114, %142, %136, %130, %126, %122, %110, %106, %104
  %149 = phi i1 [ false, %104 ], [ false, %106 ], [ false, %110 ], [ false, %122 ], [ false, %136 ], [ false, %130 ], [ false, %126 ], [ %147, %142 ], [ false, %114 ], [ false, %118 ]
  br i1 %149, label %217, label %150

150:                                              ; preds = %148
  br i1 %71, label %154, label %151

151:                                              ; preds = %150
  %152 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 47
  %153 = call float @ED_view3d_offset_distance(ptr noundef nonnull %152, ptr noundef nonnull %22, float noundef 0.000000e+00) #17
  store float %153, ptr %13, align 8, !tbaa !75
  call void @ED_view3d_from_object(ptr noundef nonnull %5, ptr noundef nonnull %37, ptr noundef nonnull %43, ptr noundef nonnull %13, ptr noundef nonnull %46) #17
  br label %154

154:                                              ; preds = %151, %150
  %155 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 27
  %156 = load i8, ptr %155, align 1, !tbaa !76
  %157 = and i8 %156, 1
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 26
  store i8 0, ptr %160, align 2, !tbaa !77
  br label %161

161:                                              ; preds = %159, %154
  %162 = sitofp i32 %11 to double
  %163 = fdiv double %162, 1.000000e+03
  %164 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 5
  store double %163, ptr %164, align 8, !tbaa !78
  %165 = or i1 %75, %83
  %166 = or i1 %165, %86
  br i1 %166, label %173, label %167

167:                                              ; preds = %161
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %14, ptr noundef nonnull align 4 dereferenceable(12) @__const.ED_view3d_smooth_view_ex.vec2, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %15, ptr noundef nonnull align 4 dereferenceable(12) @__const.ED_view3d_smooth_view_ex.vec2, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #17
  call void @invert_qt_qt(ptr noundef nonnull %16, ptr noundef nonnull %30) #17
  call void @invert_qt_qt(ptr noundef nonnull %17, ptr noundef nonnull %43) #17
  call void @mul_qt_v3(ptr noundef nonnull %16, ptr noundef nonnull %14) #17
  call void @mul_qt_v3(ptr noundef nonnull %17, ptr noundef nonnull %15) #17
  %168 = call float @angle_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %15) #17
  %169 = fpext float %168 to double
  %170 = fdiv double %169, 0x400921FB54442D18
  %171 = load double, ptr %164, align 8, !tbaa !78
  %172 = fmul double %171, %170
  store double %172, ptr %164, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #17
  br label %173

173:                                              ; preds = %167, %161
  %174 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 3
  %175 = load i8, ptr %174, align 4, !tbaa !73
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %195, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 24
  %179 = load i8, ptr %178, align 8, !tbaa !79
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 3
  %183 = load i16, ptr %182, align 8, !tbaa !53
  %184 = icmp eq i16 %183, 11
  br i1 %184, label %185, label %192

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %187 = load ptr, ptr %186, align 8, !tbaa !58
  %188 = getelementptr inbounds %struct.Camera, ptr %187, i64 0, i32 2
  %189 = load i8, ptr %188, align 8, !tbaa !80
  %190 = icmp ne i8 %189, 1
  %191 = zext i1 %190 to i8
  br label %192

192:                                              ; preds = %185, %181, %177
  %193 = phi i8 [ 1, %181 ], [ 1, %177 ], [ %191, %185 ]
  %194 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 25
  store i8 %193, ptr %194, align 1, !tbaa !50
  br label %195

195:                                              ; preds = %192, %173
  %196 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 32
  %197 = load i16, ptr %196, align 2, !tbaa !82
  %198 = or i16 %197, 8
  store i16 %198, ptr %196, align 2, !tbaa !82
  %199 = load float, ptr %37, align 8, !tbaa !59
  store float %199, ptr %22, align 4, !tbaa !59
  %200 = load float, ptr %40, align 4, !tbaa !59
  store float %200, ptr %24, align 4, !tbaa !59
  %201 = load float, ptr %42, align 8, !tbaa !59
  store float %201, ptr %27, align 4, !tbaa !59
  call void @copy_qt_qt(ptr noundef nonnull %31, ptr noundef nonnull %43) #17
  %202 = load float, ptr %13, align 8, !tbaa !61
  store float %202, ptr %32, align 8, !tbaa !60
  %203 = load float, ptr %46, align 4, !tbaa !64
  store float %203, ptr %34, align 4, !tbaa !63
  %204 = load ptr, ptr %47, align 8, !tbaa !65
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %209

206:                                              ; preds = %195
  %207 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !83
  %208 = call ptr %207(i64 noundef 120, ptr noundef nonnull @.str.1) #17
  store ptr %208, ptr %47, align 8, !tbaa !65
  br label %209

209:                                              ; preds = %206, %195
  %210 = load ptr, ptr %47, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %210, ptr noundef nonnull align 8 dereferenceable(120) %13, i64 120, i1 false), !tbaa.struct !84
  %211 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 15
  %212 = load ptr, ptr %211, align 8, !tbaa !86
  %213 = icmp eq ptr %212, null
  br i1 %213, label %215, label %214

214:                                              ; preds = %209
  call void @WM_event_remove_timer(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %212) #17
  br label %215

215:                                              ; preds = %214, %209
  %216 = call ptr @WM_event_add_timer(ptr noundef %0, ptr noundef %1, i32 noundef 274, double noundef 1.000000e-02) #17
  store ptr %216, ptr %211, align 8, !tbaa !86
  br i1 %149, label %217, label %235

217:                                              ; preds = %148, %100, %98, %215
  %218 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 3
  %219 = load i8, ptr %218, align 4, !tbaa !73
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %217
  %222 = load float, ptr %21, align 4, !tbaa !59
  store float %222, ptr %22, align 4, !tbaa !59
  %223 = load float, ptr %26, align 8, !tbaa !59
  store float %223, ptr %24, align 4, !tbaa !59
  %224 = load float, ptr %29, align 4, !tbaa !59
  store float %224, ptr %27, align 4, !tbaa !59
  call void @copy_qt_qt(ptr noundef nonnull %31, ptr noundef nonnull %30) #17
  %225 = load float, ptr %20, align 4, !tbaa !71
  store float %225, ptr %32, align 8, !tbaa !60
  %226 = load float, ptr %36, align 8, !tbaa !72
  store float %226, ptr %34, align 4, !tbaa !63
  %227 = call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %3, ptr noundef %19) #17
  br label %228

228:                                              ; preds = %221, %217
  %229 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 27
  %230 = load i8, ptr %229, align 1, !tbaa !76
  %231 = and i8 %230, 2
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %228
  call void @view3d_boxview_copy(ptr noundef %2, ptr noundef %4) #17
  br label %234

234:                                              ; preds = %233, %228
  call void @ED_region_tag_redraw(ptr noundef %4) #17
  br label %235

235:                                              ; preds = %234, %215
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %13) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare void @ED_view3d_camera_lock_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @ED_view3d_offset_distance(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @ED_view3d_from_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @invert_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @angle_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

declare zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @view3d_boxview_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_smooth_view(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = tail call ptr @CTX_wm_manager(ptr noundef %0) #17
  %12 = tail call ptr @CTX_wm_window(ptr noundef %0) #17
  %13 = tail call ptr @CTX_wm_area(ptr noundef %0) #17
  tail call void @ED_view3d_smooth_view_ex(ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %9)
  ret void
}

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_smoothview(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.2, ptr %0, align 8, !tbaa !87
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.3, ptr %2, align 8, !tbaa !90
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %3, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view3d_smoothview_invoke, ptr %4, align 8, !tbaa !92
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 64, ptr %5, align 8, !tbaa !93
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %6, align 8, !tbaa !94
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view3d_smoothview_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #17
  %5 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #17
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = icmp eq ptr %9, null
  br i1 %10, label %128, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %13 = load ptr, ptr %12, align 8, !tbaa !95
  %14 = icmp eq ptr %9, %13
  br i1 %14, label %15, label %128

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 5
  %17 = load double, ptr %16, align 8, !tbaa !78
  %18 = fcmp une double %17, 0.000000e+00
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.wmTimer, ptr %9, i64 0, i32 6
  %21 = load double, ptr %20, align 8, !tbaa !97
  %22 = fdiv double %21, %17
  %23 = fptrunc double %22 to float
  br label %24

24:                                               ; preds = %15, %19
  %25 = phi float [ %23, %19 ], [ 1.000000e+00, %15 ]
  %26 = fcmp ult float %25, 1.000000e+00
  br i1 %26, label %87, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 3
  %29 = load i8, ptr %28, align 4, !tbaa !73
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %50, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 25
  store i8 2, ptr %32, align 1, !tbaa !50
  %33 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 2
  %34 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 22
  %35 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 2, i32 3
  %36 = load float, ptr %35, align 4, !tbaa !59
  store float %36, ptr %34, align 4, !tbaa !59
  %37 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 2, i32 3, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !59
  %39 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 22, i64 1
  store float %38, ptr %39, align 4, !tbaa !59
  %40 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 2, i32 3, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !59
  %42 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 22, i64 2
  store float %41, ptr %42, align 4, !tbaa !59
  %43 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 17
  %44 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 2, i32 2
  tail call void @copy_qt_qt(ptr noundef nonnull %43, ptr noundef nonnull %44) #17
  %45 = load float, ptr %33, align 4, !tbaa !61
  %46 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 18
  store float %45, ptr %46, align 8, !tbaa !60
  %47 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 2, i32 1
  %48 = load float, ptr %47, align 4, !tbaa !64
  %49 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 30
  store float %48, ptr %49, align 4, !tbaa !63
  br label %69

50:                                               ; preds = %27
  %51 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 1
  %52 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 22
  %53 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 1, i32 3
  %54 = load float, ptr %53, align 4, !tbaa !59
  store float %54, ptr %52, align 4, !tbaa !59
  %55 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 1, i32 3, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !59
  %57 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 22, i64 1
  store float %56, ptr %57, align 4, !tbaa !59
  %58 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 1, i32 3, i64 2
  %59 = load float, ptr %58, align 4, !tbaa !59
  %60 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 22, i64 2
  store float %59, ptr %60, align 4, !tbaa !59
  %61 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 17
  %62 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 1, i32 2
  tail call void @copy_qt_qt(ptr noundef nonnull %61, ptr noundef nonnull %62) #17
  %63 = load float, ptr %51, align 4, !tbaa !61
  %64 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 18
  store float %63, ptr %64, align 8, !tbaa !60
  %65 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 1, i32 1
  %66 = load float, ptr %65, align 4, !tbaa !64
  %67 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 30
  store float %66, ptr %67, align 4, !tbaa !63
  %68 = tail call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %4, ptr noundef %5) #17
  br label %69

69:                                               ; preds = %50, %31
  %70 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 27
  %71 = load i8, ptr %70, align 1, !tbaa !76
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 4
  %76 = load i8, ptr %75, align 1, !tbaa !68
  %77 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 26
  store i8 %76, ptr %77, align 2, !tbaa !77
  br label %78

78:                                               ; preds = %74, %69
  %79 = load ptr, ptr @MEM_freeN, align 8, !tbaa !83
  %80 = load ptr, ptr %6, align 8, !tbaa !65
  tail call void %79(ptr noundef %80) #17
  store ptr null, ptr %6, align 8, !tbaa !65
  %81 = tail call ptr @CTX_wm_manager(ptr noundef %0) #17
  %82 = tail call ptr @CTX_wm_window(ptr noundef %0) #17
  %83 = load ptr, ptr %8, align 8, !tbaa !86
  tail call void @WM_event_remove_timer(ptr noundef %81, ptr noundef %82, ptr noundef %83) #17
  store ptr null, ptr %8, align 8, !tbaa !86
  %84 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 32
  %85 = load i16, ptr %84, align 2, !tbaa !82
  %86 = and i16 %85, -9
  store i16 %86, ptr %84, align 2, !tbaa !82
  br label %114

87:                                               ; preds = %24
  %88 = fmul float %25, 3.000000e+00
  %89 = fmul float %25, -2.000000e+00
  %90 = fmul float %25, %89
  %91 = fmul float %25, %90
  %92 = tail call float @llvm.fmuladd.f32(float %88, float %25, float %91)
  %93 = fsub float 1.000000e+00, %92
  %94 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 22
  %95 = getelementptr inbounds %struct.SmoothView3DState, ptr %7, i64 0, i32 3
  %96 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 1
  %97 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 1, i32 3
  tail call void @interp_v3_v3v3(ptr noundef nonnull %94, ptr noundef nonnull %95, ptr noundef nonnull %97, float noundef %92) #17
  %98 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 17
  %99 = getelementptr inbounds %struct.SmoothView3DState, ptr %7, i64 0, i32 2
  %100 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 1, i32 2
  tail call void @interp_qt_qtqt(ptr noundef nonnull %98, ptr noundef nonnull %99, ptr noundef nonnull %100, float noundef %92) #17
  %101 = load float, ptr %96, align 4, !tbaa !71
  %102 = load float, ptr %7, align 8, !tbaa !75
  %103 = fmul float %93, %102
  %104 = tail call float @llvm.fmuladd.f32(float %101, float %92, float %103)
  %105 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 18
  store float %104, ptr %105, align 8, !tbaa !60
  %106 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 1, i32 1
  %107 = load float, ptr %106, align 4, !tbaa !72
  %108 = getelementptr inbounds %struct.SmoothView3DState, ptr %7, i64 0, i32 1
  %109 = load float, ptr %108, align 4, !tbaa !99
  %110 = fmul float %93, %109
  %111 = tail call float @llvm.fmuladd.f32(float %107, float %92, float %110)
  %112 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 30
  store float %111, ptr %112, align 4, !tbaa !63
  %113 = tail call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %4, ptr noundef %5) #17
  br label %114

114:                                              ; preds = %87, %78
  %115 = phi float [ %25, %78 ], [ %92, %87 ]
  %116 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 27
  %117 = load i8, ptr %116, align 1, !tbaa !76
  %118 = and i8 %117, 2
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %114
  %121 = tail call ptr @CTX_wm_area(ptr noundef %0) #17
  %122 = tail call ptr @CTX_wm_region(ptr noundef %0) #17
  tail call void @view3d_boxview_copy(ptr noundef %121, ptr noundef %122) #17
  br label %123

123:                                              ; preds = %120, %114
  %124 = fcmp ult float %115, 1.000000e+00
  br i1 %124, label %126, label %125

125:                                              ; preds = %123
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %4) #17
  br label %128

126:                                              ; preds = %123
  %127 = tail call ptr @CTX_wm_region(ptr noundef %0) #17
  tail call void @ED_region_tag_redraw(ptr noundef %127) #17
  br label %128

128:                                              ; preds = %125, %126, %3, %11
  %129 = phi i32 [ 8, %11 ], [ 8, %3 ], [ 4, %126 ], [ 4, %125 ]
  ret i32 %129
}

declare i32 @ED_operator_view3d_active(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_camera_to_view(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.5, ptr %0, align 8, !tbaa !87
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.6, ptr %2, align 8, !tbaa !90
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %3, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_camera_to_view_exec, ptr %4, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view3d_camera_to_view_poll, ptr %5, align 8, !tbaa !94
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !93
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view3d_camera_to_view_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.ObjectTfmProtectedChannels, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #17
  %6 = call zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %7 = load ptr, ptr %4, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 30
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  call void @ED_view3d_lastview_store(ptr noundef %9) #17
  %10 = load ptr, ptr %3, align 8, !tbaa !83
  %11 = getelementptr inbounds %struct.View3D, ptr %10, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  call void @BKE_object_tfm_protected_backup(ptr noundef %12, ptr noundef nonnull %5) #17
  %13 = load ptr, ptr %3, align 8, !tbaa !83
  %14 = getelementptr inbounds %struct.View3D, ptr %13, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 22
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 17
  %18 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 18
  %19 = load float, ptr %18, align 8, !tbaa !60
  call void @ED_view3d_to_object(ptr noundef %15, ptr noundef nonnull %16, ptr noundef nonnull %17, float noundef %19) #17
  %20 = load ptr, ptr %3, align 8, !tbaa !83
  %21 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 15
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 56
  %24 = load i16, ptr %23, align 2, !tbaa !101
  call void @BKE_object_tfm_protected_restore(ptr noundef %22, ptr noundef nonnull %5, i16 noundef signext %24) #17
  %25 = load ptr, ptr %3, align 8, !tbaa !83
  %26 = getelementptr inbounds %struct.View3D, ptr %25, i64 0, i32 15
  %27 = load ptr, ptr %26, align 8, !tbaa !52
  call void @DAG_id_tag_update(ptr noundef %27, i16 noundef signext 1) #17
  %28 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 25
  store i8 2, ptr %28, align 1, !tbaa !50
  %29 = load ptr, ptr %3, align 8, !tbaa !83
  %30 = getelementptr inbounds %struct.View3D, ptr %29, i64 0, i32 15
  %31 = load ptr, ptr %30, align 8, !tbaa !52
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef %31) #17
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view3d_camera_to_view_poll(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %4 = call zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #17
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %32, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 30
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = load ptr, ptr %2, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.View3D, ptr %10, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !102
  %19 = icmp eq ptr %18, null
  %20 = icmp ne ptr %9, null
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 27
  %24 = load i8, ptr %23, align 1, !tbaa !76
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 25
  %29 = load i8, ptr %28, align 1, !tbaa !50
  %30 = icmp eq i8 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %22, %27, %16, %12, %6
  br label %32

32:                                               ; preds = %1, %31, %27
  %33 = phi i32 [ 1, %27 ], [ 0, %31 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret i32 %33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_camera_to_view_selected(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.8, ptr %0, align 8, !tbaa !87
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.9, ptr %2, align 8, !tbaa !90
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %3, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_camera_to_view_selected_exec, ptr %4, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !94
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !93
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view3d_camera_to_view_selected_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca %struct.ObjectTfmProtectedChannels, align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  %7 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #17
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 15
  %10 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 2
  %11 = select i1 %8, ptr %10, ptr %9
  %12 = load ptr, ptr %11, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !103
  tail call void @BKE_report(ptr noundef %16, i32 noundef 32, ptr noundef nonnull @.str.21) #17
  br label %46

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !53
  %20 = icmp eq i16 %19, 11
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !103
  tail call void @BKE_report(ptr noundef %23, i32 noundef 32, ptr noundef nonnull @.str.22) #17
  br label %46

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !58
  %27 = getelementptr inbounds %struct.Camera, ptr %26, i64 0, i32 2
  %28 = load i8, ptr %27, align 8, !tbaa !80
  %29 = icmp eq i8 %28, 8
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !103
  tail call void @BKE_report(ptr noundef %32, i32 noundef 32, ptr noundef nonnull @.str.23) #17
  br label %46

33:                                               ; preds = %24
  %34 = call zeroext i8 @BKE_camera_view_frame_fit_to_scene(ptr noundef %6, ptr noundef %7, ptr noundef nonnull %12, ptr noundef nonnull %3) #17
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  %37 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %37) #17
  %38 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3
  %39 = load float, ptr %3, align 4, !tbaa !59
  store float %39, ptr %38, align 16, !tbaa !59
  %40 = getelementptr inbounds float, ptr %3, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !59
  %42 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 1
  store float %41, ptr %42, align 4, !tbaa !59
  %43 = getelementptr inbounds float, ptr %3, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !59
  %45 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 2
  store float %44, ptr %45, align 8, !tbaa !59
  call void @BKE_object_tfm_protected_backup(ptr noundef nonnull %12, ptr noundef nonnull %4) #17
  call void @BKE_object_apply_mat4(ptr noundef nonnull %12, ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  call void @BKE_object_tfm_protected_restore(ptr noundef nonnull %12, ptr noundef nonnull %4, i16 noundef signext 1472) #17
  call void @DAG_id_tag_update(ptr noundef nonnull %12, i16 noundef signext 1) #17
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #17
  br label %46

46:                                               ; preds = %33, %36, %30, %21, %14
  %47 = phi i32 [ 2, %14 ], [ 2, %21 ], [ 2, %30 ], [ 4, %36 ], [ 2, %33 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  ret i32 %47
}

declare i32 @ED_operator_scene_editable(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ED_operator_rv3d_user_region_poll(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %4 = call zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #17
  %5 = zext i8 %4 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret i32 %5
}

declare zeroext i8 @ED_view3d_context_user_region(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_object_as_camera(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.11, ptr %0, align 8, !tbaa !87
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.12, ptr %2, align 8, !tbaa !90
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %3, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_setobjectascamera_exec, ptr %4, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_rv3d_user_region_poll, ptr %5, align 8, !tbaa !94
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !93
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view3d_setobjectascamera_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  %6 = tail call ptr @CTX_data_active_object(ptr noundef %0) #17
  %7 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #17
  %8 = call zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %9 = load ptr, ptr %4, align 8, !tbaa !83
  %10 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 30
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %6, null
  br i1 %12, label %54, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 25
  %15 = load i8, ptr %14, align 1, !tbaa !50
  %16 = icmp eq i8 %15, 2
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load ptr, ptr %3, align 8, !tbaa !83
  %19 = getelementptr inbounds %struct.View3D, ptr %18, i64 0, i32 26
  %20 = load i16, ptr %19, align 4, !tbaa !105
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.View3D, ptr %18, i64 0, i32 15
  %24 = load ptr, ptr %23, align 8, !tbaa !52
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %17
  %27 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !106
  br label %29

29:                                               ; preds = %22, %13, %26
  %30 = phi ptr [ %28, %26 ], [ null, %13 ], [ %24, %22 ]
  store i8 2, ptr %14, align 1, !tbaa !50
  %31 = load ptr, ptr %3, align 8, !tbaa !83
  %32 = getelementptr inbounds %struct.View3D, ptr %31, i64 0, i32 15
  store ptr %6, ptr %32, align 8, !tbaa !52
  %33 = getelementptr inbounds %struct.View3D, ptr %31, i64 0, i32 26
  %34 = load i16, ptr %33, align 4, !tbaa !105
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 2
  store ptr %6, ptr %37, align 8, !tbaa !106
  br label %38

38:                                               ; preds = %36, %29
  %39 = icmp eq ptr %30, %6
  br i1 %39, label %52, label %40

40:                                               ; preds = %38
  call void @ED_view3d_lastview_store(ptr noundef %11) #17
  %41 = load ptr, ptr %3, align 8, !tbaa !83
  %42 = load ptr, ptr %4, align 8, !tbaa !83
  %43 = getelementptr inbounds %struct.View3D, ptr %41, i64 0, i32 15
  %44 = load ptr, ptr %43, align 8, !tbaa !52
  %45 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 22
  %46 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 17
  %47 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 18
  %48 = getelementptr inbounds %struct.View3D, ptr %41, i64 0, i32 30
  %49 = call ptr @CTX_wm_manager(ptr noundef %0) #17
  %50 = call ptr @CTX_wm_window(ptr noundef %0) #17
  %51 = call ptr @CTX_wm_area(ptr noundef %0) #17
  call void @ED_view3d_smooth_view_ex(ptr noundef %49, ptr noundef %50, ptr noundef %51, ptr noundef %41, ptr noundef %42, ptr noundef %30, ptr noundef %44, ptr noundef nonnull %45, ptr noundef nonnull %46, ptr noundef nonnull %47, ptr noundef nonnull %48, i32 noundef %7)
  br label %52

52:                                               ; preds = %40, %38
  %53 = call ptr @CTX_data_scene(ptr noundef %0) #17
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %53) #17
  br label %54

54:                                               ; preds = %52, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_clipping_calc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  %7 = load double, ptr %2, align 8, !tbaa !85
  %8 = tail call double @llvm.fabs.f64(double %7)
  %9 = fcmp olt double %8, 0x3EB0C6F7A0B5ED8D
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  store double 0.000000e+00, ptr %2, align 8, !tbaa !85
  br label %11

11:                                               ; preds = %10, %4
  %12 = getelementptr inbounds [16 x double], ptr %2, i64 0, i64 5
  %13 = load double, ptr %12, align 8, !tbaa !85
  %14 = tail call double @llvm.fabs.f64(double %13)
  %15 = fcmp olt double %14, 0x3EB0C6F7A0B5ED8D
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store double 0.000000e+00, ptr %12, align 8, !tbaa !85
  br label %17

17:                                               ; preds = %16, %11
  %18 = getelementptr inbounds %struct.bglMats, ptr %2, i64 0, i32 2
  store i32 0, ptr %18, align 8, !tbaa !123
  %19 = getelementptr inbounds %struct.bglMats, ptr %2, i64 0, i32 2, i64 1
  store i32 0, ptr %19, align 4, !tbaa !123
  %20 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %21 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %22 = getelementptr inbounds %struct.bglMats, ptr %2, i64 0, i32 1
  %23 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 1
  %24 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 2
  %25 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  br label %26

26:                                               ; preds = %17, %30
  %27 = phi i64 [ 0, %17 ], [ %59, %30 ]
  %28 = trunc i64 %27 to i32
  switch i32 %28, label %29 [
    i32 3, label %30
    i32 0, label %30
  ]

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %26, %26, %29
  %31 = phi ptr [ %25, %29 ], [ %3, %26 ], [ %3, %26 ]
  %32 = load i32, ptr %31, align 4, !tbaa !123
  %33 = sitofp i32 %32 to double
  %34 = icmp ult i64 %27, 2
  %35 = select i1 %34, ptr %20, ptr %21
  %36 = load i32, ptr %35, align 4, !tbaa !123
  %37 = sitofp i32 %36 to double
  %38 = call i32 @gluUnProject(double noundef %33, double noundef %37, double noundef 0.000000e+00, ptr noundef nonnull %2, ptr noundef nonnull %22, ptr noundef nonnull %18, ptr noundef nonnull %6, ptr noundef nonnull %23, ptr noundef nonnull %24) #17
  %39 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 %27
  %40 = load double, ptr %6, align 16, !tbaa !85
  %41 = fptrunc double %40 to float
  store float %41, ptr %39, align 4, !tbaa !59
  %42 = load double, ptr %23, align 8, !tbaa !85
  %43 = fptrunc double %42 to float
  %44 = getelementptr inbounds float, ptr %39, i64 1
  store float %43, ptr %44, align 4, !tbaa !59
  %45 = load double, ptr %24, align 16, !tbaa !85
  %46 = fptrunc double %45 to float
  %47 = getelementptr inbounds float, ptr %39, i64 2
  store float %46, ptr %47, align 4, !tbaa !59
  %48 = call i32 @gluUnProject(double noundef %33, double noundef %37, double noundef 1.000000e+00, ptr noundef nonnull %2, ptr noundef nonnull %22, ptr noundef nonnull %18, ptr noundef nonnull %6, ptr noundef nonnull %23, ptr noundef nonnull %24) #17
  %49 = or disjoint i64 %27, 4
  %50 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 %49
  %51 = load double, ptr %6, align 16, !tbaa !85
  %52 = fptrunc double %51 to float
  store float %52, ptr %50, align 4, !tbaa !59
  %53 = load double, ptr %23, align 8, !tbaa !85
  %54 = fptrunc double %53 to float
  %55 = getelementptr inbounds float, ptr %50, i64 1
  store float %54, ptr %55, align 4, !tbaa !59
  %56 = load double, ptr %24, align 16, !tbaa !85
  %57 = fptrunc double %56 to float
  %58 = getelementptr inbounds float, ptr %50, i64 2
  store float %57, ptr %58, align 4, !tbaa !59
  %59 = add nuw nsw i64 %27, 1
  %60 = icmp eq i64 %59, 4
  br i1 %60, label %61, label %26, !llvm.loop !124

61:                                               ; preds = %30, %61
  %62 = phi i64 [ %67, %61 ], [ 0, %30 ]
  %63 = getelementptr inbounds [16 x double], ptr %2, i64 0, i64 %62
  %64 = load double, ptr %63, align 8, !tbaa !85
  %65 = fptrunc double %64 to float
  %66 = getelementptr inbounds float, ptr %5, i64 %62
  store float %65, ptr %66, align 4, !tbaa !59
  %67 = add nuw nsw i64 %62, 1
  %68 = icmp eq i64 %67, 16
  br i1 %68, label %69, label %61, !llvm.loop !127

69:                                               ; preds = %61
  %70 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %5) #17
  %71 = icmp eq i8 %70, 0
  br label %72

72:                                               ; preds = %69, %93
  %73 = phi i64 [ 0, %69 ], [ %77, %93 ]
  %74 = getelementptr inbounds [4 x float], ptr %1, i64 %73
  %75 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 %73
  %76 = icmp eq i64 %73, 3
  %77 = add nuw nsw i64 %73, 1
  %78 = and i64 %77, 4294967295
  %79 = select i1 %76, i64 0, i64 %78
  %80 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 %79
  %81 = or disjoint i64 %73, 4
  %82 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 %81
  %83 = call float @normal_tri_v3(ptr noundef %74, ptr noundef %75, ptr noundef %80, ptr noundef nonnull %82) #17
  br i1 %71, label %93, label %84

84:                                               ; preds = %72
  %85 = load float, ptr %74, align 4, !tbaa !59
  %86 = fneg float %85
  store float %86, ptr %74, align 4, !tbaa !59
  %87 = getelementptr inbounds float, ptr %74, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !59
  %89 = fneg float %88
  store float %89, ptr %87, align 4, !tbaa !59
  %90 = getelementptr inbounds float, ptr %74, i64 2
  %91 = load float, ptr %90, align 4, !tbaa !59
  %92 = fneg float %91
  store float %92, ptr %90, align 4, !tbaa !59
  br label %93

93:                                               ; preds = %84, %72
  %94 = load float, ptr %74, align 4, !tbaa !59
  %95 = load float, ptr %75, align 4, !tbaa !59
  %96 = getelementptr inbounds float, ptr %74, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !59
  %98 = getelementptr inbounds float, ptr %75, i64 1
  %99 = load float, ptr %98, align 4, !tbaa !59
  %100 = fmul float %97, %99
  %101 = call float @llvm.fmuladd.f32(float %94, float %95, float %100)
  %102 = getelementptr inbounds float, ptr %74, i64 2
  %103 = load float, ptr %102, align 4, !tbaa !59
  %104 = getelementptr inbounds float, ptr %75, i64 2
  %105 = load float, ptr %104, align 4, !tbaa !59
  %106 = call float @llvm.fmuladd.f32(float %103, float %105, float %101)
  %107 = fneg float %106
  %108 = getelementptr inbounds [4 x float], ptr %1, i64 %73, i64 3
  store float %107, ptr %108, align 4, !tbaa !59
  %109 = icmp eq i64 %77, 4
  br i1 %109, label %110, label %72, !llvm.loop !128

110:                                              ; preds = %93
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

declare i32 @gluUnProject(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @is_negative_m4(ptr noundef) local_unnamed_addr #2

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_view3d_boundbox_clip_ex(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  %6 = icmp eq ptr %1, null
  br i1 %6, label %53, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BoundBox, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !129
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %53

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 3
  call void @mul_m4_m4m4(ptr noundef nonnull %5, ptr noundef nonnull %13, ptr noundef %2) #17
  %14 = getelementptr inbounds float, ptr %4, i64 1
  %15 = getelementptr inbounds float, ptr %4, i64 2
  %16 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  br label %20

17:                                               ; preds = %20
  %18 = add nuw nsw i64 %21, 1
  %19 = icmp eq i64 %18, 8
  br i1 %19, label %53, label %20, !llvm.loop !131

20:                                               ; preds = %17, %12
  %21 = phi i64 [ 0, %12 ], [ %18, %17 ]
  %22 = phi i32 [ -1, %12 ], [ %51, %17 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %23 = getelementptr inbounds [8 x [3 x float]], ptr %1, i64 0, i64 %21
  %24 = load float, ptr %23, align 4, !tbaa !59
  store float %24, ptr %4, align 16, !tbaa !59
  %25 = getelementptr inbounds float, ptr %23, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !59
  store float %26, ptr %14, align 4, !tbaa !59
  %27 = getelementptr inbounds float, ptr %23, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !59
  store float %28, ptr %15, align 8, !tbaa !59
  store float 1.000000e+00, ptr %16, align 4, !tbaa !59
  call void @mul_m4_v4(ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  %29 = load float, ptr %16, align 4, !tbaa !59
  %30 = fneg float %29
  %31 = load float, ptr %4, align 16, !tbaa !59
  %32 = fcmp olt float %31, %30
  %33 = zext i1 %32 to i32
  %34 = fcmp ogt float %31, %29
  %35 = or disjoint i32 %33, 2
  %36 = select i1 %34, i32 %35, i32 %33
  %37 = load float, ptr %14, align 4, !tbaa !59
  %38 = fcmp olt float %37, %30
  %39 = or disjoint i32 %36, 4
  %40 = select i1 %38, i32 %39, i32 %36
  %41 = fcmp ogt float %37, %29
  %42 = or disjoint i32 %40, 8
  %43 = select i1 %41, i32 %42, i32 %40
  %44 = load float, ptr %15, align 8, !tbaa !59
  %45 = fcmp olt float %44, %30
  %46 = add nuw nsw i32 %43, 16
  %47 = select i1 %45, i32 %46, i32 %43
  %48 = fcmp ogt float %44, %29
  %49 = add nuw nsw i32 %47, 32
  %50 = select i1 %48, i32 %49, i32 %47
  %51 = and i32 %50, %22
  %52 = icmp eq i32 %51, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  br i1 %52, label %53, label %17

53:                                               ; preds = %20, %17, %7, %3
  %54 = phi i8 [ 1, %3 ], [ 1, %7 ], [ 1, %20 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  ret i8 %54
}

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_view3d_boundbox_clip(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [4 x float], align 16
  %4 = icmp eq ptr %1, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.BoundBox, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !129
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 6
  %12 = getelementptr inbounds float, ptr %3, i64 1
  %13 = getelementptr inbounds float, ptr %3, i64 2
  %14 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 3
  br label %18

15:                                               ; preds = %18
  %16 = add nuw nsw i64 %19, 1
  %17 = icmp eq i64 %16, 8
  br i1 %17, label %51, label %18, !llvm.loop !131

18:                                               ; preds = %15, %10
  %19 = phi i64 [ 0, %10 ], [ %16, %15 ]
  %20 = phi i32 [ -1, %10 ], [ %49, %15 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  %21 = getelementptr inbounds [8 x [3 x float]], ptr %1, i64 0, i64 %19
  %22 = load float, ptr %21, align 4, !tbaa !59
  store float %22, ptr %3, align 16, !tbaa !59
  %23 = getelementptr inbounds float, ptr %21, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !59
  store float %24, ptr %12, align 4, !tbaa !59
  %25 = getelementptr inbounds float, ptr %21, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !59
  store float %26, ptr %13, align 8, !tbaa !59
  store float 1.000000e+00, ptr %14, align 4, !tbaa !59
  call void @mul_m4_v4(ptr noundef nonnull %11, ptr noundef nonnull %3) #17
  %27 = load float, ptr %14, align 4, !tbaa !59
  %28 = fneg float %27
  %29 = load float, ptr %3, align 16, !tbaa !59
  %30 = fcmp olt float %29, %28
  %31 = zext i1 %30 to i32
  %32 = fcmp ogt float %29, %27
  %33 = or disjoint i32 %31, 2
  %34 = select i1 %32, i32 %33, i32 %31
  %35 = load float, ptr %12, align 4, !tbaa !59
  %36 = fcmp olt float %35, %28
  %37 = or disjoint i32 %34, 4
  %38 = select i1 %36, i32 %37, i32 %34
  %39 = fcmp ogt float %35, %27
  %40 = or disjoint i32 %38, 8
  %41 = select i1 %39, i32 %40, i32 %38
  %42 = load float, ptr %13, align 8, !tbaa !59
  %43 = fcmp olt float %42, %28
  %44 = add nuw nsw i32 %41, 16
  %45 = select i1 %43, i32 %44, i32 %41
  %46 = fcmp ogt float %42, %27
  %47 = add nuw nsw i32 %45, 32
  %48 = select i1 %46, i32 %47, i32 %45
  %49 = and i32 %48, %20
  %50 = icmp eq i32 %49, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  br i1 %50, label %51, label %15

51:                                               ; preds = %18, %15, %5, %2
  %52 = phi i8 [ 1, %2 ], [ 1, %5 ], [ 1, %18 ], [ 0, %15 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ED_view3d_depth_read_cached(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !132
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !134
  %8 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !135
  %10 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !136
  %12 = sub nsw i32 %1, %11
  %13 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 3, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !137
  %15 = sub nsw i32 %2, %14
  %16 = icmp eq ptr %7, null
  br i1 %16, label %40, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.ViewDepths, ptr %7, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !138
  %20 = icmp ne ptr %19, null
  %21 = icmp sgt i32 %12, 0
  %22 = select i1 %20, i1 %21, i1 false
  %23 = icmp sgt i32 %15, 0
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %40

25:                                               ; preds = %17
  %26 = load i16, ptr %7, align 8, !tbaa !140
  %27 = zext i16 %26 to i32
  %28 = icmp slt i32 %12, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ViewDepths, ptr %7, i64 0, i32 1
  %31 = load i16, ptr %30, align 2, !tbaa !141
  %32 = zext i16 %31 to i32
  %33 = icmp slt i32 %15, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = mul nuw nsw i32 %15, %27
  %36 = add nuw nsw i32 %35, %12
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, ptr %19, i64 %37
  %39 = load float, ptr %38, align 4, !tbaa !59
  br label %40

40:                                               ; preds = %3, %17, %25, %29, %34
  %41 = phi float [ %39, %34 ], [ 1.000000e+00, %29 ], [ 1.000000e+00, %25 ], [ 1.000000e+00, %17 ], [ 1.000000e+00, %3 ]
  ret float %41
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_view3d_depth_tag_update(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !134
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ViewDepths, ptr %3, i64 0, i32 6
  store i8 1, ptr %6, align 8, !tbaa !142
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ED_view3d_dist_range_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 31
  %4 = load float, ptr %3, align 8, !tbaa !143
  %5 = fmul float %4, 0x3F50624DE0000000
  store float %5, ptr %1, align 4, !tbaa !59
  %6 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 33
  %7 = load float, ptr %6, align 8, !tbaa !144
  %8 = fmul float %7, 1.000000e+01
  %9 = getelementptr inbounds float, ptr %1, i64 1
  store float %8, ptr %9, align 4, !tbaa !59
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ED_view3d_clip_range_get(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.CameraParams, align 4
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %6) #17
  call void @BKE_camera_params_init(ptr noundef nonnull %6) #17
  call void @BKE_camera_params_from_view3d(ptr noundef nonnull %6, ptr noundef %0, ptr noundef %1) #17
  %7 = icmp ne i8 %4, 0
  %8 = load i8, ptr %6, align 4
  %9 = icmp ne i8 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %20

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.CameraParams, ptr %6, i64 0, i32 12
  %13 = load float, ptr %12, align 4, !tbaa !145
  %14 = getelementptr inbounds %struct.CameraParams, ptr %6, i64 0, i32 11
  %15 = load float, ptr %14, align 4, !tbaa !147
  %16 = fsub float %13, %15
  %17 = fdiv float 2.000000e+00, %16
  %18 = fmul float %15, %17
  store float %18, ptr %14, align 4, !tbaa !147
  %19 = fmul float %13, %17
  store float %19, ptr %12, align 4, !tbaa !145
  br label %20

20:                                               ; preds = %11, %5
  %21 = icmp eq ptr %2, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.CameraParams, ptr %6, i64 0, i32 11
  %24 = load float, ptr %23, align 4, !tbaa !147
  store float %24, ptr %2, align 4, !tbaa !59
  br label %25

25:                                               ; preds = %22, %20
  %26 = icmp eq ptr %3, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.CameraParams, ptr %6, i64 0, i32 12
  %29 = load float, ptr %28, align 4, !tbaa !145
  store float %29, ptr %3, align 4, !tbaa !59
  br label %30

30:                                               ; preds = %27, %25
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %6) #17
  ret i8 %8
}

declare void @BKE_camera_params_init(ptr noundef) local_unnamed_addr #2

declare void @BKE_camera_params_from_view3d(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ED_view3d_viewplane_get(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef writeonly %4, ptr noundef writeonly %5, ptr noundef writeonly %6, ptr noundef writeonly %7) local_unnamed_addr #0 {
  %9 = alloca %struct.CameraParams, align 4
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %9) #17
  call void @BKE_camera_params_init(ptr noundef nonnull %9) #17
  call void @BKE_camera_params_from_view3d(ptr noundef nonnull %9, ptr noundef %0, ptr noundef %1) #17
  call void @BKE_camera_params_compute_viewplane(ptr noundef nonnull %9, i32 noundef %2, i32 noundef %3, float noundef 1.000000e+00, float noundef 1.000000e+00) #17
  %10 = icmp eq ptr %4, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.CameraParams, ptr %9, i64 0, i32 19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !148
  br label %13

13:                                               ; preds = %11, %8
  %14 = icmp eq ptr %5, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.CameraParams, ptr %9, i64 0, i32 11
  %17 = load float, ptr %16, align 4, !tbaa !147
  store float %17, ptr %5, align 4, !tbaa !59
  br label %18

18:                                               ; preds = %15, %13
  %19 = icmp eq ptr %6, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.CameraParams, ptr %9, i64 0, i32 12
  %22 = load float, ptr %21, align 4, !tbaa !145
  store float %22, ptr %6, align 4, !tbaa !59
  br label %23

23:                                               ; preds = %20, %18
  %24 = icmp eq ptr %7, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.CameraParams, ptr %9, i64 0, i32 17
  %27 = load float, ptr %26, align 4, !tbaa !149
  store float %27, ptr %7, align 4, !tbaa !59
  br label %28

28:                                               ; preds = %25, %23
  %29 = load i8, ptr %9, align 4, !tbaa !150
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %9) #17
  ret i8 %29
}

declare void @BKE_camera_params_compute_viewplane(ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_view3d_polygon_offset(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 18
  %4 = load float, ptr %3, align 8, !tbaa !60
  %5 = fcmp une float %1, 0.000000e+00
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 25
  %8 = load i8, ptr %7, align 1, !tbaa !50
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 24
  %12 = load i8, ptr %11, align 8, !tbaa !79
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load float, ptr %0, align 8, !tbaa !59
  %16 = tail call float @llvm.fabs.f32(float %15)
  %17 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !59
  %19 = tail call float @llvm.fabs.f32(float %18)
  %20 = fcmp ogt float %16, %19
  %21 = select i1 %20, float %16, float %19
  %22 = fdiv float 1.000000e+00, %21
  br label %23

23:                                               ; preds = %6, %14, %10, %2
  %24 = phi float [ %22, %14 ], [ %4, %10 ], [ %4, %6 ], [ %4, %2 ]
  tail call void @bglPolygonOffset(float noundef %24, float noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

declare void @bglPolygonOffset(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @view3d_winmatrix_set(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.CameraParams, align 4
  %5 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %8 = load i16, ptr %7, align 8, !tbaa !151
  %9 = sext i16 %8 to i32
  %10 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %11 = load i16, ptr %10, align 2, !tbaa !152
  %12 = sext i16 %11 to i32
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %4) #17
  call void @BKE_camera_params_init(ptr noundef nonnull %4) #17
  call void @BKE_camera_params_from_view3d(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %6) #17
  call void @BKE_camera_params_compute_viewplane(ptr noundef nonnull %4, i32 noundef %9, i32 noundef %12, float noundef 1.000000e+00, float noundef 1.000000e+00) #17
  %13 = getelementptr inbounds %struct.CameraParams, ptr %4, i64 0, i32 19
  %14 = load float, ptr %13, align 4, !tbaa.struct !148
  %15 = getelementptr inbounds %struct.CameraParams, ptr %4, i64 0, i32 19, i32 1
  %16 = load float, ptr %15, align 4, !tbaa.struct !153
  %17 = getelementptr inbounds %struct.CameraParams, ptr %4, i64 0, i32 19, i32 2
  %18 = load float, ptr %17, align 4, !tbaa.struct !154
  %19 = getelementptr inbounds %struct.CameraParams, ptr %4, i64 0, i32 19, i32 3
  %20 = load float, ptr %19, align 4, !tbaa.struct !155
  %21 = getelementptr inbounds %struct.CameraParams, ptr %4, i64 0, i32 11
  %22 = load float, ptr %21, align 4, !tbaa !147
  %23 = getelementptr inbounds %struct.CameraParams, ptr %4, i64 0, i32 12
  %24 = load float, ptr %23, align 4, !tbaa !145
  %25 = load i8, ptr %4, align 4, !tbaa !150
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %4) #17
  %26 = icmp eq i8 %25, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 24
  store i8 %27, ptr %28, align 8, !tbaa !79
  %29 = icmp eq ptr %2, null
  br i1 %29, label %52, label %30

30:                                               ; preds = %3
  %31 = fsub float %16, %14
  %32 = load float, ptr %2, align 4, !tbaa !156
  %33 = load i16, ptr %7, align 8, !tbaa !151
  %34 = sitofp i16 %33 to float
  %35 = fdiv float %32, %34
  %36 = call float @llvm.fmuladd.f32(float %31, float %35, float %14)
  %37 = fsub float %20, %18
  %38 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 2
  %39 = load float, ptr %38, align 4, !tbaa !157
  %40 = load i16, ptr %10, align 2, !tbaa !152
  %41 = sitofp i16 %40 to float
  %42 = fdiv float %39, %41
  %43 = call float @llvm.fmuladd.f32(float %37, float %42, float %18)
  %44 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 1
  %45 = load float, ptr %44, align 4, !tbaa !158
  %46 = fdiv float %45, %34
  %47 = call float @llvm.fmuladd.f32(float %31, float %46, float %14)
  %48 = getelementptr inbounds %struct.rctf, ptr %2, i64 0, i32 3
  %49 = load float, ptr %48, align 4, !tbaa !159
  %50 = fdiv float %49, %41
  %51 = call float @llvm.fmuladd.f32(float %37, float %50, float %18)
  br label %52

52:                                               ; preds = %30, %3
  %53 = phi float [ %16, %3 ], [ %47, %30 ]
  %54 = phi float [ %14, %3 ], [ %36, %30 ]
  %55 = phi float [ %18, %3 ], [ %43, %30 ]
  %56 = phi float [ %20, %3 ], [ %51, %30 ]
  br i1 %26, label %58, label %57

57:                                               ; preds = %52
  call void @wmOrtho(float noundef %54, float noundef %53, float noundef %55, float noundef %56, float noundef %22, float noundef %24) #17
  br label %59

58:                                               ; preds = %52
  call void @wmFrustum(float noundef %54, float noundef %53, float noundef %55, float noundef %56, float noundef %22, float noundef %24) #17
  br label %59

59:                                               ; preds = %58, %57
  call void @glGetFloatv(i32 noundef 2983, ptr noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

declare void @wmOrtho(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @wmFrustum(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glGetFloatv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_view3d_quat_from_axis_view(i8 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = add i8 %0, -1
  %4 = icmp ult i8 %3, 6
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = zext nneg i8 %0 to i64
  %7 = add nuw nsw i64 %6, 4294967295
  %8 = and i64 %7, 4294967295
  %9 = getelementptr inbounds [6 x [4 x float]], ptr @view3d_quat_axis, i64 0, i64 %8
  tail call void @copy_qt_qt(ptr noundef %1, ptr noundef nonnull %9) #17
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi i8 [ 1, %5 ], [ 0, %2 ]
  ret i8 %11
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ED_view3d_quat_to_axis_view(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %2, %9
  %4 = phi i64 [ 1, %2 ], [ %10, %9 ]
  %5 = add nsw i64 %4, -1
  %6 = getelementptr inbounds [6 x [4 x float]], ptr @view3d_quat_axis, i64 0, i64 %5
  %7 = tail call float @angle_qtqt(ptr noundef %0, ptr noundef nonnull %6) #17
  %8 = fcmp olt float %7, %1
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = add nuw nsw i64 %4, 1
  %11 = icmp eq i64 %10, 7
  br i1 %11, label %14, label %3, !llvm.loop !160

12:                                               ; preds = %3
  %13 = trunc i64 %4 to i8
  br label %14

14:                                               ; preds = %9, %12
  %15 = phi i8 [ %13, %12 ], [ 0, %9 ]
  ret i8 %15
}

declare float @angle_qtqt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @ED_view3d_lock_view_from_index(i32 noundef %0) local_unnamed_addr #11 {
  %2 = icmp ult i32 %0, 3
  %3 = trunc i32 %0 to i24
  %4 = shl nuw nsw i24 %3, 3
  %5 = lshr i24 263425, %4
  %6 = trunc i24 %5 to i8
  %7 = select i1 %2, i8 %6, i8 0
  ret i8 %7
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_view3d_lock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 26
  %3 = load i8, ptr %2, align 2, !tbaa !77
  %4 = add i8 %3, -1
  %5 = icmp ult i8 %4, 6
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 17
  %8 = zext nneg i8 %3 to i64
  %9 = add nuw nsw i64 %8, 4294967295
  %10 = and i64 %9, 4294967295
  %11 = getelementptr inbounds [6 x [4 x float]], ptr @view3d_quat_axis, i64 0, i64 %10
  tail call void @copy_qt_qt(ptr noundef nonnull %7, ptr noundef nonnull %11) #17
  br label %12

12:                                               ; preds = %1, %6
  %13 = phi i8 [ 1, %6 ], [ 0, %1 ]
  ret i8 %13
}

; Function Attrs: nounwind uwtable
define dso_local void @view3d_viewmatrix_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [3 x float], align 4
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 25
  %11 = load i8, ptr %10, align 1, !tbaa !50
  %12 = icmp eq i8 %11, 2
  br i1 %12, label %13, label %32

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  tail call void @BKE_object_where_is_calc(ptr noundef %0, ptr noundef nonnull %15) #17
  %18 = load ptr, ptr %14, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #17
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 26
  store i8 0, ptr %19, align 2, !tbaa !77
  %20 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %20) #17
  call void @normalize_m4(ptr noundef nonnull %4) #17
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 1
  %22 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %21, ptr noundef nonnull %4) #17
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %21) #17
  %23 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 17
  call void @mat3_to_quat(ptr noundef nonnull %23, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  br label %151

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 1
  %26 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 17
  tail call void @quat_to_mat4(ptr noundef nonnull %25, ptr noundef nonnull %26) #17
  %27 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 18
  %28 = load float, ptr %27, align 8, !tbaa !60
  %29 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 1, i64 3, i64 2
  %30 = load float, ptr %29, align 8, !tbaa !59
  %31 = fsub float %30, %28
  store float %31, ptr %29, align 8, !tbaa !59
  br label %151

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 27
  %34 = load i8, ptr %33, align 1, !tbaa !76
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 26
  %39 = load i8, ptr %38, align 2, !tbaa !77
  %40 = add i8 %39, -1
  %41 = icmp ult i8 %40, 6
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 17
  %44 = zext nneg i8 %39 to i64
  %45 = add nuw nsw i64 %44, 4294967295
  %46 = and i64 %45, 4294967295
  %47 = getelementptr inbounds [6 x [4 x float]], ptr @view3d_quat_axis, i64 0, i64 %46
  tail call void @copy_qt_qt(ptr noundef nonnull %43, ptr noundef nonnull %47) #17
  br label %48

48:                                               ; preds = %42, %37, %32
  %49 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 1
  %50 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 17
  tail call void @quat_to_mat4(ptr noundef nonnull %49, ptr noundef nonnull %50) #17
  %51 = load i8, ptr %10, align 1, !tbaa !50
  %52 = icmp eq i8 %51, 1
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 18
  %55 = load float, ptr %54, align 8, !tbaa !60
  %56 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 1, i64 3, i64 2
  %57 = load float, ptr %56, align 8, !tbaa !59
  %58 = fsub float %57, %55
  store float %58, ptr %56, align 8, !tbaa !59
  br label %59

59:                                               ; preds = %53, %48
  %60 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 16
  %61 = load ptr, ptr %60, align 8, !tbaa !161
  %62 = icmp eq ptr %61, null
  br i1 %62, label %99, label %63

63:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  %64 = getelementptr inbounds %struct.Object, ptr %61, i64 0, i32 47
  %65 = getelementptr inbounds %struct.Object, ptr %61, i64 0, i32 47, i64 3
  %66 = load float, ptr %65, align 4, !tbaa !59
  store float %66, ptr %6, align 4, !tbaa !59
  %67 = getelementptr inbounds %struct.Object, ptr %61, i64 0, i32 47, i64 3, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !59
  %69 = getelementptr inbounds float, ptr %6, i64 1
  store float %68, ptr %69, align 4, !tbaa !59
  %70 = getelementptr inbounds %struct.Object, ptr %61, i64 0, i32 47, i64 3, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !59
  %72 = getelementptr inbounds float, ptr %6, i64 2
  store float %71, ptr %72, align 4, !tbaa !59
  %73 = getelementptr inbounds %struct.Object, ptr %61, i64 0, i32 3
  %74 = load i16, ptr %73, align 8, !tbaa !53
  %75 = icmp eq i16 %74, 25
  br i1 %75, label %76, label %92

76:                                               ; preds = %63
  %77 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 21
  %78 = load i8, ptr %77, align 8, !tbaa !67
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.Object, ptr %61, i64 0, i32 18
  %82 = load ptr, ptr %81, align 8, !tbaa !162
  %83 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %82, ptr noundef nonnull %77) #17
  %84 = icmp eq ptr %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.bPoseChannel, ptr %83, i64 0, i32 29, i64 3
  %87 = load float, ptr %86, align 4, !tbaa !59
  store float %87, ptr %6, align 4, !tbaa !59
  %88 = getelementptr inbounds %struct.bPoseChannel, ptr %83, i64 0, i32 29, i64 3, i64 1
  %89 = load float, ptr %88, align 4, !tbaa !59
  store float %89, ptr %69, align 4, !tbaa !59
  %90 = getelementptr inbounds %struct.bPoseChannel, ptr %83, i64 0, i32 29, i64 3, i64 2
  %91 = load float, ptr %90, align 4, !tbaa !59
  store float %91, ptr %72, align 4, !tbaa !59
  call void @mul_m4_v3(ptr noundef nonnull %64, ptr noundef nonnull %6) #17
  br label %92

92:                                               ; preds = %80, %85, %76, %63
  %93 = load float, ptr %6, align 4, !tbaa !59
  %94 = fneg float %93
  %95 = load float, ptr %69, align 4, !tbaa !59
  %96 = fneg float %95
  %97 = load float, ptr %72, align 4, !tbaa !59
  %98 = fneg float %97
  call void @translate_m4(ptr noundef nonnull %49, float noundef %94, float noundef %96, float noundef %98) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  br label %130

99:                                               ; preds = %59
  %100 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 25
  %101 = load i16, ptr %100, align 2, !tbaa !163
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %123, label %103

103:                                              ; preds = %99
  %104 = icmp eq ptr %1, null
  br i1 %104, label %111, label %105

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 20
  %107 = load ptr, ptr %106, align 8, !tbaa !48
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 35
  br label %113

111:                                              ; preds = %105, %103
  %112 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 8
  br label %113

113:                                              ; preds = %109, %111
  %114 = phi ptr [ %110, %109 ], [ %112, %111 ]
  %115 = load float, ptr %114, align 4, !tbaa !59
  %116 = getelementptr inbounds float, ptr %114, i64 1
  %117 = load float, ptr %116, align 4, !tbaa !59
  %118 = getelementptr inbounds float, ptr %114, i64 2
  %119 = load float, ptr %118, align 4, !tbaa !59
  %120 = fneg float %115
  %121 = fneg float %117
  %122 = fneg float %119
  tail call void @translate_m4(ptr noundef nonnull %49, float noundef %120, float noundef %121, float noundef %122) #17
  br label %130

123:                                              ; preds = %99
  %124 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 22
  %125 = load float, ptr %124, align 8, !tbaa !59
  %126 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 22, i64 1
  %127 = load float, ptr %126, align 4, !tbaa !59
  %128 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 22, i64 2
  %129 = load float, ptr %128, align 8, !tbaa !59
  tail call void @translate_m4(ptr noundef nonnull %49, float noundef %125, float noundef %127, float noundef %129) #17
  br label %151

130:                                              ; preds = %113, %92
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef %2, ptr noundef nonnull %49) #17
  %131 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %7) #17
  %132 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 30
  %133 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 24
  %134 = load i8, ptr %133, align 8, !tbaa !79
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 18
  %138 = load float, ptr %137, align 8, !tbaa !60
  br label %139

139:                                              ; preds = %130, %136
  %140 = phi float [ %138, %136 ], [ 1.000000e+00, %130 ]
  %141 = load float, ptr %132, align 4, !tbaa !59
  %142 = fmul float %140, %141
  store float %142, ptr %9, align 4, !tbaa !59
  %143 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 30, i64 1
  %144 = load float, ptr %143, align 4, !tbaa !59
  %145 = fmul float %140, %144
  %146 = getelementptr inbounds float, ptr %9, i64 1
  store float %145, ptr %146, align 4, !tbaa !59
  %147 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 0.000000e+00, ptr %147, align 4, !tbaa !59
  call void @mul_mat3_m4_v3(ptr noundef nonnull %8, ptr noundef nonnull %9) #17
  %148 = load float, ptr %9, align 4, !tbaa !59
  %149 = load float, ptr %146, align 4, !tbaa !59
  %150 = load float, ptr %147, align 4, !tbaa !59
  call void @translate_m4(ptr noundef nonnull %49, float noundef %148, float noundef %149, float noundef %150) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #17
  br label %151

151:                                              ; preds = %139, %123, %17, %24
  ret void
}

declare void @BKE_object_where_is_calc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @quat_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @translate_m4(ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local signext i16 @view3d_opengl_select(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.rctf, align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !164
  %8 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !165
  %10 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !135
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  %12 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !166
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !167
  %18 = icmp eq ptr %17, null
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %15, %5
  %21 = phi i8 [ 0, %5 ], [ %19, %15 ]
  %22 = icmp eq i8 %4, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = tail call zeroext i8 @GPU_select_query_check_active() #17
  %25 = icmp eq i8 %24, 0
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i1 [ true, %20 ], [ %25, %23 ]
  %28 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !168
  %29 = or i32 %28, 32
  store i32 %29, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !168
  %30 = load i32, ptr %3, align 4, !tbaa !170
  %31 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !171
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %26
  %35 = add nsw i32 %30, -12
  %36 = sitofp i32 %35 to float
  store float %36, ptr %6, align 4, !tbaa !156
  %37 = add nsw i32 %30, 12
  %38 = sitofp i32 %37 to float
  %39 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 1
  store float %38, ptr %39, align 4, !tbaa !158
  %40 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !172
  %42 = add nsw i32 %41, -12
  %43 = sitofp i32 %42 to float
  %44 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 2
  store float %43, ptr %44, align 4, !tbaa !157
  %45 = add nsw i32 %41, 12
  %46 = sitofp i32 %45 to float
  %47 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 3
  store float %46, ptr %47, align 4, !tbaa !159
  br label %49

48:                                               ; preds = %26
  call void @BLI_rctf_rcti_copy(ptr noundef nonnull %6, ptr noundef nonnull %3) #17
  br label %49

49:                                               ; preds = %48, %34
  call void @view3d_winmatrix_set(ptr noundef %11, ptr noundef %9, ptr noundef nonnull %6)
  %50 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !132
  %52 = getelementptr inbounds %struct.RegionView3D, ptr %51, i64 0, i32 3
  %53 = getelementptr inbounds %struct.RegionView3D, ptr %51, i64 0, i32 1
  call void @mul_m4_m4m4(ptr noundef nonnull %52, ptr noundef %51, ptr noundef nonnull %53) #17
  %54 = getelementptr inbounds %struct.View3D, ptr %9, i64 0, i32 24
  %55 = load i16, ptr %54, align 8, !tbaa !74
  %56 = icmp sgt i16 %55, 2
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.View3D, ptr %9, i64 0, i32 47
  store i8 1, ptr %58, align 8, !tbaa !173
  call void @glEnable(i32 noundef 2929) #17
  br label %59

59:                                               ; preds = %57, %49
  %60 = load ptr, ptr %50, align 8, !tbaa !132
  %61 = getelementptr inbounds %struct.RegionView3D, ptr %60, i64 0, i32 32
  %62 = load i16, ptr %61, align 2, !tbaa !82
  %63 = and i16 %62, 4
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  call void @ED_view3d_clipping_set(ptr noundef %60) #17
  br label %66

66:                                               ; preds = %65, %59
  %67 = select i1 %27, i8 1, i8 2
  call void @GPU_select_begin(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %6, i8 noundef zeroext %67, i32 noundef 0) #17
  call fastcc void @view3d_select_loop(ptr noundef nonnull %0, ptr noundef %7, ptr noundef %9, ptr noundef %11, i8 noundef zeroext %21)
  %68 = call i32 @GPU_select_end() #17
  br i1 %27, label %73, label %69

69:                                               ; preds = %66
  %70 = shl i32 %68, 16
  %71 = ashr exact i32 %70, 16
  call void @GPU_select_begin(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %6, i8 noundef zeroext 3, i32 noundef %71) #17
  call fastcc void @view3d_select_loop(ptr noundef nonnull %0, ptr noundef %7, ptr noundef %9, ptr noundef %11, i8 noundef zeroext %21)
  %72 = call i32 @GPU_select_end() #17
  br label %73

73:                                               ; preds = %69, %66
  %74 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !168
  %75 = and i32 %74, -33
  store i32 %75, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !168
  call void @view3d_winmatrix_set(ptr noundef %11, ptr noundef %9, ptr noundef null)
  %76 = load ptr, ptr %50, align 8, !tbaa !132
  %77 = getelementptr inbounds %struct.RegionView3D, ptr %76, i64 0, i32 3
  %78 = getelementptr inbounds %struct.RegionView3D, ptr %76, i64 0, i32 1
  call void @mul_m4_m4m4(ptr noundef nonnull %77, ptr noundef %76, ptr noundef nonnull %78) #17
  %79 = load i16, ptr %54, align 8, !tbaa !74
  %80 = icmp sgt i16 %79, 2
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.View3D, ptr %9, i64 0, i32 47
  store i8 0, ptr %82, align 8, !tbaa !173
  call void @glDisable(i32 noundef 2929) #17
  br label %83

83:                                               ; preds = %81, %73
  %84 = load ptr, ptr %50, align 8, !tbaa !132
  %85 = getelementptr inbounds %struct.RegionView3D, ptr %84, i64 0, i32 32
  %86 = load i16, ptr %85, align 2, !tbaa !82
  %87 = and i16 %86, 4
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  call void @ED_view3d_clipping_disable() #17
  br label %90

90:                                               ; preds = %89, %83
  %91 = and i32 %68, 32768
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  br label %95

95:                                               ; preds = %93, %90
  %96 = trunc i32 %68 to i16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  ret i16 %96
}

declare zeroext i8 @GPU_select_query_check_active() local_unnamed_addr #2

declare void @BLI_rctf_rcti_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @ED_view3d_clipping_set(ptr noundef) local_unnamed_addr #2

declare void @GPU_select_begin(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @view3d_select_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.Base, align 8
  %7 = alloca [4 x [4 x float]], align 16
  %8 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !167
  %10 = icmp eq ptr %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !53
  %14 = icmp eq i16 %13, 5
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !174
  tail call void @draw_object(ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef %17, i16 noundef signext 3) #17
  br label %118

18:                                               ; preds = %11
  br i1 %10, label %29, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !53
  %22 = icmp eq i16 %21, 25
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = tail call i32 @BDR_drawSketchNames(ptr noundef %0) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %118

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !174
  tail call void @draw_object(ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef %28, i16 noundef signext 3) #17
  br label %118

29:                                               ; preds = %5, %19, %18
  %30 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 49
  store i8 1, ptr %30, align 2, !tbaa !175
  %31 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !83
  %33 = icmp eq ptr %32, null
  br i1 %33, label %117, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 22
  %36 = icmp eq i8 %4, 0
  %37 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %38 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 4
  %39 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 7
  br label %40

40:                                               ; preds = %34, %113
  %41 = phi ptr [ %32, %34 ], [ %115, %113 ]
  %42 = phi i16 [ 1, %34 ], [ %114, %113 ]
  %43 = getelementptr inbounds %struct.Base, ptr %41, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !176
  %45 = load i32, ptr %35, align 8, !tbaa !178
  %46 = and i32 %45, %44
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %113, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.Base, ptr %41, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !179
  %51 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 102
  %52 = load i8, ptr %51, align 8, !tbaa !180
  %53 = and i8 %52, 2
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  br i1 %36, label %65, label %56

56:                                               ; preds = %55
  %57 = load ptr, ptr %37, align 8, !tbaa !166
  %58 = getelementptr inbounds %struct.Object, ptr %57, i64 0, i32 19
  %59 = load ptr, ptr %58, align 8, !tbaa !58
  %60 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 19
  %61 = load ptr, ptr %60, align 8, !tbaa !58
  %62 = icmp eq ptr %59, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %56, %48
  %64 = getelementptr inbounds %struct.Base, ptr %41, i64 0, i32 3
  store i32 0, ptr %64, align 4, !tbaa !181
  br label %113

65:                                               ; preds = %56, %55
  %66 = sext i16 %42 to i32
  %67 = getelementptr inbounds %struct.Base, ptr %41, i64 0, i32 3
  store i32 %66, ptr %67, align 4, !tbaa !181
  %68 = call zeroext i8 @GPU_select_load_id(i32 noundef %66) #17
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %111, label %70

70:                                               ; preds = %65
  call void @draw_object(ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef nonnull %41, i16 noundef signext 3) #17
  %71 = load ptr, ptr %49, align 8, !tbaa !179
  %72 = getelementptr inbounds %struct.Object, ptr %71, i64 0, i32 55
  %73 = load i16, ptr %72, align 8, !tbaa !182
  %74 = and i16 %73, 2840
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %111, label %76

76:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #17
  store i32 512, ptr %38, align 8, !tbaa !183
  %77 = load ptr, ptr @G, align 8, !tbaa !184
  %78 = getelementptr inbounds %struct.Main, ptr %77, i64 0, i32 46
  %79 = load ptr, ptr %78, align 8, !tbaa !185
  %80 = load ptr, ptr %49, align 8, !tbaa !179
  %81 = call ptr @object_duplilist(ptr noundef %79, ptr noundef %1, ptr noundef %80) #17
  %82 = load ptr, ptr %81, align 8, !tbaa !83
  %83 = icmp eq ptr %82, null
  br i1 %83, label %110, label %84

84:                                               ; preds = %76, %84
  %85 = phi ptr [ %108, %84 ], [ %82, %76 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #17
  %86 = getelementptr inbounds %struct.DupliObject, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !187
  store ptr %87, ptr %39, align 8, !tbaa !179
  %88 = getelementptr inbounds %struct.Object, ptr %87, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %88) #17
  %89 = load ptr, ptr %86, align 8, !tbaa !187
  %90 = getelementptr inbounds %struct.Object, ptr %89, i64 0, i32 47
  %91 = getelementptr inbounds %struct.DupliObject, ptr %85, i64 0, i32 3
  call void @copy_m4_m4(ptr noundef nonnull %90, ptr noundef nonnull %91) #17
  %92 = load ptr, ptr %39, align 8, !tbaa !179
  %93 = getelementptr inbounds %struct.Object, ptr %92, i64 0, i32 87
  %94 = load i8, ptr %93, align 2, !tbaa !189
  %95 = load ptr, ptr %49, align 8, !tbaa !179
  %96 = getelementptr inbounds %struct.Object, ptr %95, i64 0, i32 87
  %97 = load i8, ptr %96, align 2, !tbaa !189
  %98 = call i8 @llvm.umin.i8(i8 %94, i8 %97)
  store i8 %98, ptr %93, align 2, !tbaa !189
  %99 = getelementptr inbounds %struct.Object, ptr %92, i64 0, i32 86
  %100 = load i16, ptr %99, align 4, !tbaa !190
  %101 = getelementptr inbounds %struct.Object, ptr %95, i64 0, i32 86
  %102 = load i16, ptr %101, align 4, !tbaa !190
  store i16 %102, ptr %99, align 4, !tbaa !190
  call void @draw_object(ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef nonnull %6, i16 noundef signext 3) #17
  %103 = load ptr, ptr %39, align 8, !tbaa !179
  %104 = getelementptr inbounds %struct.Object, ptr %103, i64 0, i32 87
  store i8 %94, ptr %104, align 2, !tbaa !189
  %105 = getelementptr inbounds %struct.Object, ptr %103, i64 0, i32 86
  store i16 %100, ptr %105, align 4, !tbaa !190
  %106 = load ptr, ptr %86, align 8, !tbaa !187
  %107 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %107, ptr noundef nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #17
  %108 = load ptr, ptr %85, align 8, !tbaa !83
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %84, !llvm.loop !191

110:                                              ; preds = %84, %76
  call void @free_object_duplilist(ptr noundef nonnull %81) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  br label %111

111:                                              ; preds = %70, %110, %65
  %112 = add i16 %42, 1
  br label %113

113:                                              ; preds = %40, %111, %63
  %114 = phi i16 [ %42, %63 ], [ %112, %111 ], [ %42, %40 ]
  %115 = load ptr, ptr %41, align 8, !tbaa !83
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %40, !llvm.loop !192

117:                                              ; preds = %113, %29
  store i8 0, ptr %30, align 2, !tbaa !175
  br label %118

118:                                              ; preds = %117, %26, %23, %15
  ret void
}

declare i32 @GPU_select_end() local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @ED_view3d_clipping_disable() local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @ED_view3d_scene_layer_set(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #12 {
  br label %4

4:                                                ; preds = %3, %4
  %5 = phi i64 [ 0, %3 ], [ %12, %4 ]
  %6 = phi i32 [ 0, %3 ], [ %11, %4 ]
  %7 = getelementptr inbounds i32, ptr %1, i64 %5
  %8 = load i32, ptr %7, align 4, !tbaa !123
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = add nuw nsw i32 %6, %10
  %12 = add nuw nsw i64 %5, 1
  %13 = icmp eq i64 %12, 20
  br i1 %13, label %14, label %4, !llvm.loop !193

14:                                               ; preds = %4
  %15 = icmp eq i32 %11, 0
  br i1 %15, label %58, label %16

16:                                               ; preds = %14
  %17 = icmp eq ptr %2, null
  br label %18

18:                                               ; preds = %16, %31
  %19 = phi i64 [ 0, %16 ], [ %41, %31 ]
  %20 = phi i32 [ %0, %16 ], [ %40, %31 ]
  br i1 %17, label %31, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds i32, ptr %1, i64 %19
  %23 = load i32, ptr %22, align 4, !tbaa !123
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = trunc i64 %19 to i32
  %27 = shl nuw nsw i32 1, %26
  %28 = and i32 %27, %20
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 %27, ptr %2, align 4, !tbaa !123
  br label %31

31:                                               ; preds = %21, %25, %30, %18
  %32 = getelementptr inbounds i32, ptr %1, i64 %19
  %33 = load i32, ptr %32, align 4, !tbaa !123
  %34 = icmp eq i32 %33, 0
  %35 = trunc i64 %19 to i32
  %36 = shl nuw nsw i32 1, %35
  %37 = or i32 %36, %20
  %38 = xor i32 %36, -1
  %39 = and i32 %20, %38
  %40 = select i1 %34, i32 %39, i32 %37
  %41 = add nuw nsw i64 %19, 1
  %42 = icmp eq i64 %41, 20
  br i1 %42, label %43, label %18, !llvm.loop !194

43:                                               ; preds = %31
  %44 = icmp eq ptr %2, null
  br i1 %44, label %58, label %45

45:                                               ; preds = %43
  %46 = load i32, ptr %2, align 4, !tbaa !123
  %47 = and i32 %46, %40
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %58

49:                                               ; preds = %52
  %50 = add nuw nsw i32 %53, 1
  %51 = icmp eq i32 %50, 20
  br i1 %51, label %58, label %52, !llvm.loop !195

52:                                               ; preds = %45, %49
  %53 = phi i32 [ %50, %49 ], [ 0, %45 ]
  %54 = shl nuw nsw i32 1, %53
  %55 = and i32 %54, %40
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %49, label %57

57:                                               ; preds = %52
  store i32 %54, ptr %2, align 4, !tbaa !123
  br label %58

58:                                               ; preds = %49, %43, %45, %57, %14
  %59 = phi i32 [ %0, %14 ], [ %40, %57 ], [ %40, %45 ], [ %40, %43 ], [ %40, %49 ]
  ret i32 %59
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_localview(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !87
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %2, align 8, !tbaa !90
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @localview_exec, ptr %4, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %5, align 8, !tbaa !93
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %6, align 8, !tbaa !94
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @localview_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca float, align 4
  %7 = alloca [3 x float], align 4
  %8 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #17
  %9 = tail call ptr @CTX_wm_manager(ptr noundef %0) #17
  %10 = tail call ptr @CTX_wm_window(ptr noundef %0) #17
  %11 = tail call ptr @CTX_data_main(ptr noundef %0) #17
  %12 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  %13 = tail call ptr @CTX_wm_area(ptr noundef %0) #17
  %14 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #17
  %15 = getelementptr inbounds %struct.View3D, ptr %14, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  %17 = icmp eq ptr %16, null
  br i1 %17, label %128, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.ScrArea, ptr %13, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !196
  %21 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 20
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = icmp eq ptr %22, null
  br i1 %23, label %401, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 22
  %26 = load i32, ptr %25, align 8, !tbaa !178
  %27 = and i32 %26, -16777216
  %28 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 15
  %29 = load ptr, ptr %28, align 8, !tbaa !52
  %30 = getelementptr inbounds %struct.View3D, ptr %22, i64 0, i32 15
  %31 = load ptr, ptr %30, align 8, !tbaa !52
  %32 = getelementptr inbounds %struct.View3D, ptr %22, i64 0, i32 32
  %33 = load float, ptr %32, align 4, !tbaa !198
  %34 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 32
  store float %33, ptr %34, align 4, !tbaa !198
  %35 = getelementptr inbounds %struct.View3D, ptr %22, i64 0, i32 33
  %36 = load float, ptr %35, align 8, !tbaa !144
  %37 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 33
  store float %36, ptr %37, align 8, !tbaa !144
  %38 = getelementptr inbounds %struct.View3D, ptr %22, i64 0, i32 22
  %39 = load i32, ptr %38, align 8, !tbaa !178
  store i32 %39, ptr %25, align 8, !tbaa !178
  %40 = getelementptr inbounds %struct.View3D, ptr %22, i64 0, i32 23
  %41 = load i32, ptr %40, align 4, !tbaa !199
  %42 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 23
  store i32 %41, ptr %42, align 4, !tbaa !199
  %43 = getelementptr inbounds %struct.View3D, ptr %22, i64 0, i32 24
  %44 = load i16, ptr %43, align 8, !tbaa !74
  %45 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 24
  store i16 %44, ptr %45, align 8, !tbaa !74
  store ptr %31, ptr %28, align 8, !tbaa !52
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !83
  tail call void %46(ptr noundef nonnull %22) #17
  store ptr null, ptr %21, align 8, !tbaa !48
  %47 = getelementptr inbounds %struct.ScrArea, ptr %13, i64 0, i32 20
  %48 = load ptr, ptr %47, align 8, !tbaa !83
  %49 = icmp eq ptr %48, null
  br i1 %49, label %85, label %50

50:                                               ; preds = %24, %82
  %51 = phi ptr [ %83, %82 ], [ %48, %24 ]
  %52 = getelementptr inbounds %struct.ARegion, ptr %51, i64 0, i32 8
  %53 = load i16, ptr %52, align 2, !tbaa !34
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.ARegion, ptr %51, i64 0, i32 30
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  %58 = getelementptr inbounds %struct.RegionView3D, ptr %57, i64 0, i32 10
  %59 = load ptr, ptr %58, align 8, !tbaa !200
  %60 = icmp eq ptr %59, null
  br i1 %60, label %81, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.RegionView3D, ptr %57, i64 0, i32 25
  %63 = load i8, ptr %62, align 1, !tbaa !50
  %64 = icmp eq i8 %63, 2
  %65 = select i1 %64, ptr %29, ptr null
  %66 = getelementptr inbounds %struct.RegionView3D, ptr %59, i64 0, i32 25
  %67 = load i8, ptr %66, align 1, !tbaa !50
  %68 = icmp eq i8 %67, 2
  %69 = select i1 %68, ptr %31, ptr null
  %70 = getelementptr inbounds %struct.RegionView3D, ptr %59, i64 0, i32 26
  %71 = load i8, ptr %70, align 2, !tbaa !77
  %72 = getelementptr inbounds %struct.RegionView3D, ptr %57, i64 0, i32 26
  store i8 %71, ptr %72, align 2, !tbaa !77
  store i8 %67, ptr %62, align 1, !tbaa !50
  %73 = getelementptr inbounds %struct.RegionView3D, ptr %59, i64 0, i32 23
  %74 = load float, ptr %73, align 4, !tbaa !201
  %75 = getelementptr inbounds %struct.RegionView3D, ptr %57, i64 0, i32 23
  store float %74, ptr %75, align 4, !tbaa !201
  %76 = getelementptr inbounds %struct.RegionView3D, ptr %59, i64 0, i32 22
  %77 = getelementptr inbounds %struct.RegionView3D, ptr %59, i64 0, i32 17
  %78 = getelementptr inbounds %struct.RegionView3D, ptr %59, i64 0, i32 18
  tail call void @ED_view3d_smooth_view_ex(ptr noundef %9, ptr noundef %10, ptr noundef %13, ptr noundef %20, ptr noundef nonnull %51, ptr noundef %65, ptr noundef %69, ptr noundef nonnull %76, ptr noundef nonnull %77, ptr noundef nonnull %78, ptr noundef null, i32 noundef %8)
  %79 = load ptr, ptr @MEM_freeN, align 8, !tbaa !83
  %80 = load ptr, ptr %58, align 8, !tbaa !200
  tail call void %79(ptr noundef %80) #17
  store ptr null, ptr %58, align 8, !tbaa !200
  br label %81

81:                                               ; preds = %61, %55
  tail call void @ED_view3d_shade_update(ptr noundef %11, ptr noundef %12, ptr noundef %20, ptr noundef %13) #17
  br label %82

82:                                               ; preds = %81, %50
  %83 = load ptr, ptr %51, align 8, !tbaa !83
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %50, !llvm.loop !202

85:                                               ; preds = %82, %24
  %86 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 26
  %87 = load i16, ptr %86, align 4, !tbaa !105
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 12
  %91 = load i32, ptr %90, align 8, !tbaa !203
  store i32 %91, ptr %25, align 8, !tbaa !178
  br label %92

92:                                               ; preds = %89, %85
  %93 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 5
  %94 = load ptr, ptr %93, align 8, !tbaa !83
  %95 = icmp eq ptr %94, null
  br i1 %95, label %127, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 7
  br label %98

98:                                               ; preds = %96, %124
  %99 = phi ptr [ %94, %96 ], [ %125, %124 ]
  %100 = getelementptr inbounds %struct.Base, ptr %99, i64 0, i32 2
  %101 = load i32, ptr %100, align 8, !tbaa !176
  %102 = and i32 %101, %27
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %124, label %104

104:                                              ; preds = %98
  %105 = sub i32 %101, %27
  store i32 %105, ptr %100, align 8, !tbaa !176
  %106 = icmp eq i32 %101, %27
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32, ptr %42, align 4, !tbaa !199
  store i32 %108, ptr %100, align 8, !tbaa !176
  br label %109

109:                                              ; preds = %107, %104
  %110 = getelementptr inbounds %struct.Base, ptr %99, i64 0, i32 7
  %111 = load ptr, ptr %110, align 8, !tbaa !179
  %112 = load ptr, ptr %97, align 8, !tbaa !166
  %113 = icmp eq ptr %111, %112
  br i1 %113, label %121, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.Base, ptr %99, i64 0, i32 4
  %116 = load i32, ptr %115, align 8, !tbaa !183
  %117 = or i32 %116, 1
  store i32 %117, ptr %115, align 8, !tbaa !183
  %118 = getelementptr inbounds %struct.Object, ptr %111, i64 0, i32 53
  %119 = load i16, ptr %118, align 4, !tbaa !204
  %120 = or i16 %119, 1
  store i16 %120, ptr %118, align 4, !tbaa !204
  br label %121

121:                                              ; preds = %114, %109
  %122 = load i32, ptr %100, align 8, !tbaa !176
  %123 = getelementptr inbounds %struct.Object, ptr %111, i64 0, i32 52
  store i32 %122, ptr %123, align 8, !tbaa !205
  br label %124

124:                                              ; preds = %121, %98
  %125 = load ptr, ptr %99, align 8, !tbaa !83
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %98, !llvm.loop !206

127:                                              ; preds = %124, %92
  tail call void @DAG_on_visible_update(ptr noundef %11, i8 noundef zeroext 0) #17
  br label %397

128:                                              ; preds = %2
  %129 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %130 = load ptr, ptr %129, align 8, !tbaa !103
  %131 = getelementptr inbounds %struct.ScrArea, ptr %13, i64 0, i32 19
  %132 = load ptr, ptr %131, align 8, !tbaa !196
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  %133 = getelementptr inbounds %struct.View3D, ptr %132, i64 0, i32 20
  %134 = load ptr, ptr %133, align 8, !tbaa !48
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %394

136:                                              ; preds = %128
  %137 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float 0x46293E5940000000, ptr %137, align 4, !tbaa !59
  %138 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  store float 0x46293E5940000000, ptr %138, align 4, !tbaa !59
  store float 0x46293E5940000000, ptr %3, align 4, !tbaa !59
  %139 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %139, align 4, !tbaa !59
  %140 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %140, align 4, !tbaa !59
  store float 0xC6293E5940000000, ptr %4, align 4, !tbaa !59
  %141 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 26
  %142 = load ptr, ptr %141, align 8, !tbaa !83
  %143 = icmp eq ptr %142, null
  br i1 %143, label %178, label %148

144:                                              ; preds = %154, %148
  %145 = phi i32 [ %150, %148 ], [ %155, %154 ]
  %146 = load ptr, ptr %149, align 8, !tbaa !83
  %147 = icmp eq ptr %146, null
  br i1 %147, label %178, label %148, !llvm.loop !207

148:                                              ; preds = %136, %144
  %149 = phi ptr [ %146, %144 ], [ %142, %136 ]
  %150 = phi i32 [ %145, %144 ], [ 0, %136 ]
  %151 = getelementptr inbounds %struct.bScreen, ptr %149, i64 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !83
  %153 = icmp eq ptr %152, null
  br i1 %153, label %144, label %158

154:                                              ; preds = %174, %158
  %155 = phi i32 [ %160, %158 ], [ %175, %174 ]
  %156 = load ptr, ptr %159, align 8, !tbaa !83
  %157 = icmp eq ptr %156, null
  br i1 %157, label %144, label %158, !llvm.loop !208

158:                                              ; preds = %148, %154
  %159 = phi ptr [ %156, %154 ], [ %152, %148 ]
  %160 = phi i32 [ %155, %154 ], [ %150, %148 ]
  %161 = getelementptr inbounds %struct.ScrArea, ptr %159, i64 0, i32 19
  %162 = load ptr, ptr %161, align 8, !tbaa !83
  %163 = icmp eq ptr %162, null
  br i1 %163, label %154, label %164

164:                                              ; preds = %158, %174
  %165 = phi ptr [ %176, %174 ], [ %162, %158 ]
  %166 = phi i32 [ %175, %174 ], [ %160, %158 ]
  %167 = getelementptr inbounds %struct.SpaceLink, ptr %165, i64 0, i32 3
  %168 = load i32, ptr %167, align 8, !tbaa !209
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.View3D, ptr %165, i64 0, i32 22
  %172 = load i32, ptr %171, align 8, !tbaa !178
  %173 = or i32 %172, %166
  br label %174

174:                                              ; preds = %170, %164
  %175 = phi i32 [ %173, %170 ], [ %166, %164 ]
  %176 = load ptr, ptr %165, align 8, !tbaa !83
  %177 = icmp eq ptr %176, null
  br i1 %177, label %154, label %164, !llvm.loop !211

178:                                              ; preds = %144, %136
  %179 = phi i32 [ 0, %136 ], [ %145, %144 ]
  %180 = and i32 %179, 16777216
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %203, label %182

182:                                              ; preds = %178
  %183 = and i32 %179, 33554432
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %203, label %185

185:                                              ; preds = %182
  %186 = and i32 %179, 67108864
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %203, label %188

188:                                              ; preds = %185
  %189 = and i32 %179, 134217728
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %203, label %191

191:                                              ; preds = %188
  %192 = and i32 %179, 268435456
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %203, label %194

194:                                              ; preds = %191
  %195 = and i32 %179, 536870912
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %203, label %197

197:                                              ; preds = %194
  %198 = and i32 %179, 1073741824
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %197
  %201 = and i32 %179, -2147483648
  %202 = xor i32 %201, -2147483648
  br label %203

203:                                              ; preds = %200, %197, %194, %191, %188, %185, %182, %178
  %204 = phi i32 [ 16777216, %178 ], [ 33554432, %182 ], [ 67108864, %185 ], [ 134217728, %188 ], [ 268435456, %191 ], [ 536870912, %194 ], [ 1073741824, %197 ], [ %202, %200 ]
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %203
  tail call void @BKE_report(ptr noundef %130, i32 noundef 32, ptr noundef nonnull @.str.24) #17
  br label %290

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 7
  %209 = load ptr, ptr %208, align 8, !tbaa !166
  %210 = icmp eq ptr %209, null
  br i1 %210, label %219, label %211

211:                                              ; preds = %207
  call void @BKE_object_minmax(ptr noundef nonnull %209, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 0) #17
  %212 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 6
  %213 = load ptr, ptr %212, align 8, !tbaa !174
  %214 = getelementptr inbounds %struct.Base, ptr %213, i64 0, i32 2
  %215 = load i32, ptr %214, align 8, !tbaa !176
  %216 = or i32 %215, %204
  store i32 %216, ptr %214, align 8, !tbaa !176
  %217 = load ptr, ptr %208, align 8, !tbaa !166
  %218 = getelementptr inbounds %struct.Object, ptr %217, i64 0, i32 52
  store i32 %216, ptr %218, align 8, !tbaa !205
  br label %254

219:                                              ; preds = %207
  %220 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 5
  %221 = load ptr, ptr %220, align 8, !tbaa !83
  %222 = icmp eq ptr %221, null
  br i1 %222, label %254, label %223

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.View3D, ptr %132, i64 0, i32 22
  br label %225

225:                                              ; preds = %223, %250
  %226 = phi ptr [ %221, %223 ], [ %252, %250 ]
  %227 = phi i8 [ 0, %223 ], [ %251, %250 ]
  %228 = getelementptr inbounds %struct.Base, ptr %226, i64 0, i32 4
  %229 = load i32, ptr %228, align 8, !tbaa !183
  %230 = and i32 %229, 1
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %250, label %232

232:                                              ; preds = %225
  %233 = getelementptr inbounds %struct.Base, ptr %226, i64 0, i32 2
  %234 = load i32, ptr %233, align 8, !tbaa !176
  %235 = load i32, ptr %224, align 8, !tbaa !178
  %236 = and i32 %235, %234
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %250, label %238

238:                                              ; preds = %232
  %239 = getelementptr inbounds %struct.Base, ptr %226, i64 0, i32 7
  %240 = load ptr, ptr %239, align 8, !tbaa !179
  %241 = getelementptr inbounds %struct.Object, ptr %240, i64 0, i32 102
  %242 = load i8, ptr %241, align 8, !tbaa !180
  %243 = and i8 %242, 1
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %238
  call void @BKE_object_minmax(ptr noundef %240, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 0) #17
  %246 = load i32, ptr %233, align 8, !tbaa !176
  %247 = or i32 %246, %204
  store i32 %247, ptr %233, align 8, !tbaa !176
  %248 = load ptr, ptr %239, align 8, !tbaa !179
  %249 = getelementptr inbounds %struct.Object, ptr %248, i64 0, i32 52
  store i32 %247, ptr %249, align 8, !tbaa !205
  br label %250

250:                                              ; preds = %245, %238, %232, %225
  %251 = phi i8 [ 1, %245 ], [ %227, %238 ], [ %227, %232 ], [ %227, %225 ]
  %252 = load ptr, ptr %226, align 8, !tbaa !83
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %225, !llvm.loop !212

254:                                              ; preds = %250, %219, %211
  %255 = phi i8 [ 1, %211 ], [ 0, %219 ], [ %251, %250 ]
  %256 = load float, ptr %4, align 4, !tbaa !59
  %257 = load float, ptr %3, align 4, !tbaa !59
  %258 = fsub float %256, %257
  %259 = load float, ptr %140, align 4, !tbaa !59
  %260 = load float, ptr %138, align 4, !tbaa !59
  %261 = fsub float %259, %260
  %262 = load float, ptr %139, align 4, !tbaa !59
  %263 = load float, ptr %137, align 4, !tbaa !59
  %264 = fsub float %262, %263
  %265 = fcmp ogt float %258, %261
  %266 = select i1 %265, float %258, float %261
  %267 = fcmp ogt float %266, %264
  %268 = select i1 %267, float %266, float %264
  %269 = getelementptr inbounds %struct.View3D, ptr %132, i64 0, i32 32
  %270 = load float, ptr %269, align 4, !tbaa !198
  %271 = fmul float %270, 1.500000e+00
  %272 = fcmp ogt float %268, %271
  %273 = select i1 %272, float %268, float %271
  %274 = getelementptr inbounds %struct.View3D, ptr %132, i64 0, i32 30
  %275 = load float, ptr %274, align 4, !tbaa !63
  %276 = call float @focallength_to_fov(float noundef %275, float noundef 3.200000e+01) #17
  %277 = fmul float %273, 5.000000e-01
  %278 = fmul float %277, 5.000000e-01
  %279 = fsub float 0x400921FB60000000, %276
  %280 = fmul float %279, 5.000000e-01
  %281 = call float @cosf(float noundef %280) #17
  %282 = fdiv float 1.000000e+00, %281
  %283 = call float @llvm.fabs.f32(float %282)
  %284 = fmul float %283, %278
  %285 = fmul float %284, 0x3FF6666660000000
  %286 = load float, ptr %274, align 4, !tbaa !63
  %287 = fdiv float 3.200000e+01, %286
  %288 = fdiv float %277, %287
  %289 = fmul float %288, 0x3FF6666660000000
  br label %290

290:                                              ; preds = %254, %206
  %291 = phi float [ 0.000000e+00, %206 ], [ %285, %254 ]
  %292 = phi float [ 0.000000e+00, %206 ], [ %289, %254 ]
  %293 = phi i8 [ 0, %206 ], [ %255, %254 ]
  %294 = icmp eq i8 %293, 1
  br i1 %294, label %295, label %361

295:                                              ; preds = %290
  %296 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !83
  %297 = call ptr %296(i64 noundef 376, ptr noundef nonnull @.str.25) #17
  store ptr %297, ptr %133, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %297, ptr noundef nonnull align 8 dereferenceable(376) %132, i64 376, i1 false)
  call void @mid_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %298 = getelementptr inbounds %struct.View3D, ptr %132, i64 0, i32 35
  %299 = load float, ptr %5, align 4, !tbaa !59
  store float %299, ptr %298, align 4, !tbaa !59
  %300 = getelementptr inbounds float, ptr %5, i64 1
  %301 = load float, ptr %300, align 4, !tbaa !59
  %302 = getelementptr inbounds %struct.View3D, ptr %132, i64 0, i32 35, i64 1
  store float %301, ptr %302, align 4, !tbaa !59
  %303 = getelementptr inbounds float, ptr %5, i64 2
  %304 = load float, ptr %303, align 4, !tbaa !59
  %305 = getelementptr inbounds %struct.View3D, ptr %132, i64 0, i32 35, i64 2
  store float %304, ptr %305, align 4, !tbaa !59
  %306 = getelementptr inbounds %struct.ScrArea, ptr %13, i64 0, i32 20
  %307 = load ptr, ptr %306, align 8, !tbaa !83
  %308 = icmp eq ptr %307, null
  br i1 %308, label %359, label %309

309:                                              ; preds = %295
  %310 = getelementptr inbounds float, ptr %7, i64 1
  %311 = getelementptr inbounds float, ptr %7, i64 2
  %312 = getelementptr inbounds %struct.View3D, ptr %132, i64 0, i32 15
  br label %313

313:                                              ; preds = %309, %356
  %314 = phi ptr [ %307, %309 ], [ %357, %356 ]
  %315 = getelementptr inbounds %struct.ARegion, ptr %314, i64 0, i32 8
  %316 = load i16, ptr %315, align 2, !tbaa !34
  %317 = icmp eq i16 %316, 0
  br i1 %317, label %318, label %356

318:                                              ; preds = %313
  %319 = getelementptr inbounds %struct.ARegion, ptr %314, i64 0, i32 30
  %320 = load ptr, ptr %319, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  %321 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !83
  %322 = call ptr %321(i64 noundef 880, ptr noundef nonnull @.str.26) #17
  %323 = getelementptr inbounds %struct.RegionView3D, ptr %320, i64 0, i32 10
  store ptr %322, ptr %323, align 8, !tbaa !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(880) %322, ptr noundef nonnull align 8 dereferenceable(880) %320, i64 880, i1 false)
  %324 = load float, ptr %5, align 4, !tbaa !59
  %325 = fneg float %324
  store float %325, ptr %7, align 4, !tbaa !59
  %326 = load float, ptr %300, align 4, !tbaa !59
  %327 = fneg float %326
  store float %327, ptr %310, align 4, !tbaa !59
  %328 = load float, ptr %303, align 4, !tbaa !59
  %329 = fneg float %328
  store float %329, ptr %311, align 4, !tbaa !59
  %330 = getelementptr inbounds %struct.RegionView3D, ptr %320, i64 0, i32 25
  %331 = load i8, ptr %330, align 1, !tbaa !50
  %332 = icmp eq i8 %331, 2
  br i1 %332, label %333, label %335

333:                                              ; preds = %318
  store i8 1, ptr %330, align 1, !tbaa !50
  %334 = load ptr, ptr %312, align 8, !tbaa !52
  br label %335

335:                                              ; preds = %333, %318
  %336 = phi ptr [ %334, %333 ], [ null, %318 ]
  %337 = load i8, ptr %330, align 1, !tbaa !50
  %338 = icmp eq i8 %337, 0
  %339 = select i1 %338, float %292, float %291
  store float %339, ptr %6, align 4, !tbaa !59
  %340 = getelementptr inbounds %struct.ARegion, ptr %314, i64 0, i32 6
  %341 = load i16, ptr %340, align 2, !tbaa !152
  %342 = icmp sgt i16 %341, 2
  br i1 %342, label %343, label %355

343:                                              ; preds = %335
  %344 = getelementptr inbounds %struct.ARegion, ptr %314, i64 0, i32 5
  %345 = load i16, ptr %344, align 8, !tbaa !151
  %346 = icmp sgt i16 %345, 2
  br i1 %346, label %347, label %355

347:                                              ; preds = %343
  %348 = sitofp i16 %345 to float
  %349 = sitofp i16 %341 to float
  %350 = fdiv float %348, %349
  %351 = fcmp olt float %350, 1.000000e+00
  %352 = fdiv float 1.000000e+00, %350
  %353 = select i1 %351, float %352, float %350
  %354 = fmul float %339, %353
  store float %354, ptr %6, align 4, !tbaa !59
  br label %355

355:                                              ; preds = %347, %343, %335
  call void @ED_view3d_smooth_view_ex(ptr noundef %9, ptr noundef %10, ptr noundef %13, ptr noundef %132, ptr noundef nonnull %314, ptr noundef %336, ptr noundef null, ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull %6, ptr noundef null, i32 noundef %8)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  br label %356

356:                                              ; preds = %355, %313
  %357 = load ptr, ptr %314, align 8, !tbaa !83
  %358 = icmp eq ptr %357, null
  br i1 %358, label %359, label %313, !llvm.loop !213

359:                                              ; preds = %356, %295
  %360 = getelementptr inbounds %struct.View3D, ptr %132, i64 0, i32 22
  store i32 %204, ptr %360, align 8, !tbaa !178
  br label %394

361:                                              ; preds = %290
  %362 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 5
  %363 = load ptr, ptr %362, align 8, !tbaa !83
  %364 = icmp eq ptr %363, null
  br i1 %364, label %394, label %365

365:                                              ; preds = %361
  %366 = getelementptr inbounds %struct.View3D, ptr %132, i64 0, i32 23
  %367 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 7
  br label %368

368:                                              ; preds = %365, %391
  %369 = phi ptr [ %363, %365 ], [ %392, %391 ]
  %370 = getelementptr inbounds %struct.Base, ptr %369, i64 0, i32 2
  %371 = load i32, ptr %370, align 8, !tbaa !176
  %372 = and i32 %371, %204
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %391, label %374

374:                                              ; preds = %368
  %375 = sub i32 %371, %204
  store i32 %375, ptr %370, align 8, !tbaa !176
  %376 = icmp eq i32 %371, %204
  br i1 %376, label %377, label %379

377:                                              ; preds = %374
  %378 = load i32, ptr %366, align 4, !tbaa !199
  store i32 %378, ptr %370, align 8, !tbaa !176
  br label %379

379:                                              ; preds = %377, %374
  %380 = getelementptr inbounds %struct.Base, ptr %369, i64 0, i32 7
  %381 = load ptr, ptr %380, align 8, !tbaa !179
  %382 = load ptr, ptr %367, align 8, !tbaa !166
  %383 = icmp eq ptr %381, %382
  br i1 %383, label %388, label %384

384:                                              ; preds = %379
  %385 = getelementptr inbounds %struct.Base, ptr %369, i64 0, i32 4
  %386 = load i32, ptr %385, align 8, !tbaa !183
  %387 = or i32 %386, 1
  store i32 %387, ptr %385, align 8, !tbaa !183
  br label %388

388:                                              ; preds = %384, %379
  %389 = load i32, ptr %370, align 8, !tbaa !176
  %390 = getelementptr inbounds %struct.Object, ptr %381, i64 0, i32 52
  store i32 %389, ptr %390, align 8, !tbaa !205
  br label %391

391:                                              ; preds = %388, %368
  %392 = load ptr, ptr %369, align 8, !tbaa !83
  %393 = icmp eq ptr %392, null
  br i1 %393, label %394, label %368, !llvm.loop !214

394:                                              ; preds = %391, %361, %128, %359
  %395 = phi i8 [ 0, %128 ], [ 1, %359 ], [ %293, %361 ], [ %293, %391 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %401, label %397

397:                                              ; preds = %127, %394
  call void @DAG_id_type_tag(ptr noundef %11, i16 noundef signext 16975) #17
  call void @ED_area_tag_redraw(ptr noundef %13) #17
  %398 = load ptr, ptr %15, align 8, !tbaa !48
  %399 = icmp eq ptr %398, null
  br i1 %399, label %400, label %401

400:                                              ; preds = %397
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %12) #17
  br label %401

401:                                              ; preds = %18, %394, %397, %400
  %402 = phi i32 [ 4, %400 ], [ 4, %397 ], [ 2, %394 ], [ 2, %18 ]
  ret i32 %402
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_view3d_context_activate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_screen(ptr noundef %0) #17
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %7 = load i8, ptr %6, align 8, !tbaa !215
  %8 = icmp eq i8 %7, 1
  br i1 %8, label %19, label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.bScreen, ptr %2, i64 0, i32 3
  br label %11

11:                                               ; preds = %15, %9
  %12 = phi ptr [ %10, %9 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !83
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ScrArea, ptr %13, i64 0, i32 8
  %17 = load i8, ptr %16, align 8, !tbaa !215
  %18 = icmp eq i8 %17, 1
  br i1 %18, label %19, label %11, !llvm.loop !216

19:                                               ; preds = %11, %15, %5
  %20 = phi ptr [ %3, %5 ], [ %13, %15 ], [ null, %11 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ScrArea, ptr %20, i64 0, i32 20
  br label %24

24:                                               ; preds = %28, %22
  %25 = phi ptr [ %23, %22 ], [ %26, %28 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !83
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ARegion, ptr %26, i64 0, i32 8
  %30 = load i16, ptr %29, align 2, !tbaa !34
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %24, !llvm.loop !217

32:                                               ; preds = %28
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %20) #17
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %26) #17
  br label %33

33:                                               ; preds = %24, %19, %32
  %34 = phi i8 [ 1, %32 ], [ 0, %19 ], [ 0, %24 ]
  ret i8 %34
}

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

declare void @CTX_wm_area_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_game_start(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !87
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !90
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @game_engine_exec, ptr %4, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @game_engine_poll, ptr %5, align 8, !tbaa !94
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @game_engine_exec(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  tail call void @BKE_report(ptr noundef %4, i32 noundef 32, ptr noundef nonnull @.str.27) #17
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal i32 @game_engine_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @CTX_data_mode_enum(ptr noundef %0) #17
  %12 = icmp eq i32 %11, 13
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !218
  %16 = tail call zeroext i8 @BKE_scene_uses_blender_game(ptr noundef %15) #17
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %13, %10, %7, %4, %1
  %20 = phi i32 [ 0, %1 ], [ 0, %4 ], [ 0, %7 ], [ 0, %10 ], [ %18, %13 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ED_view3d_pixel_size(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 3, i64 0, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !59
  %5 = load float, ptr %1, align 4, !tbaa !59
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 3, i64 1, i64 3
  %7 = load float, ptr %6, align 4, !tbaa !59
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !59
  %10 = fmul float %7, %9
  %11 = tail call float @llvm.fmuladd.f32(float %4, float %5, float %10)
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 3, i64 2, i64 3
  %13 = load float, ptr %12, align 4, !tbaa !59
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !59
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %11)
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 3, i64 3, i64 3
  %18 = load float, ptr %17, align 4, !tbaa !59
  %19 = fadd float %16, %18
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 21
  %21 = load float, ptr %20, align 4, !tbaa !220
  %22 = fmul float %19, %21
  %23 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !221
  %24 = fmul float %22, %23
  ret float %24
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local float @ED_view3d_radius_to_persp_dist(float noundef %0, float noundef %1) local_unnamed_addr #13 {
  %3 = fmul float %1, 5.000000e-01
  %4 = fsub float 0x400921FB60000000, %0
  %5 = fmul float %4, 5.000000e-01
  %6 = tail call float @cosf(float noundef %5) #17
  %7 = fdiv float 1.000000e+00, %6
  %8 = tail call float @llvm.fabs.f32(float %7)
  %9 = fmul float %3, %8
  ret float %9
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @ED_view3d_radius_to_ortho_dist(float noundef %0, float noundef %1) local_unnamed_addr #11 {
  %3 = fdiv float 3.200000e+01, %0
  %4 = fdiv float %1, %3
  ret float %4
}

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @interp_qt_qtqt(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_lastview_store(ptr noundef) local_unnamed_addr #2

declare void @BKE_object_tfm_protected_backup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_to_object(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @BKE_object_tfm_protected_restore(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_camera_view_frame_fit_to_scene(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_object_apply_mat4(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare i32 @WM_operator_smooth_viewtx_get(ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @normalize_m4(ptr noundef) local_unnamed_addr #2

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mat3_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @draw_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare i32 @BDR_drawSketchNames(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @GPU_select_load_id(i32 noundef) local_unnamed_addr #2

declare ptr @object_duplilist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @free_object_duplilist(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare void @DAG_id_type_tag(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

declare void @DAG_on_visible_update(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @ED_view3d_shade_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_object_minmax(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare float @focallength_to_fov(float noundef, float noundef) local_unnamed_addr #2

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CTX_data_mode_enum(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_scene_uses_blender_game(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }

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
!34 = !{!35, !44, i64 214}
!35 = !{!"ARegion", !36, i64 0, !36, i64 8, !39, i64 16, !42, i64 176, !42, i64 192, !44, i64 208, !44, i64 210, !44, i64 212, !44, i64 214, !44, i64 216, !44, i64 218, !41, i64 220, !44, i64 224, !44, i64 226, !44, i64 228, !44, i64 230, !44, i64 232, !44, i64 234, !44, i64 236, !44, i64 238, !36, i64 240, !45, i64 248, !45, i64 264, !45, i64 280, !45, i64 296, !45, i64 312, !45, i64 328, !45, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"View2D", !40, i64 0, !40, i64 16, !42, i64 32, !42, i64 48, !42, i64 64, !37, i64 80, !37, i64 88, !41, i64 96, !41, i64 100, !44, i64 104, !44, i64 106, !44, i64 108, !44, i64 110, !44, i64 112, !44, i64 114, !44, i64 116, !44, i64 118, !44, i64 120, !44, i64 122, !44, i64 124, !44, i64 126, !36, i64 128, !43, i64 136, !43, i64 140, !36, i64 144, !36, i64 152}
!40 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!41 = !{!"float", !37, i64 0}
!42 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!43 = !{!"int", !37, i64 0}
!44 = !{!"short", !37, i64 0}
!45 = !{!"ListBase", !36, i64 0, !36, i64 8}
!46 = !{!35, !36, i64 376}
!47 = !{!35, !44, i64 212}
!48 = !{!49, !36, i64 152}
!49 = !{!"View3D", !36, i64 0, !36, i64 8, !45, i64 16, !43, i64 32, !41, i64 36, !37, i64 40, !37, i64 56, !41, i64 72, !41, i64 76, !37, i64 80, !37, i64 81, !43, i64 84, !43, i64 88, !44, i64 92, !44, i64 94, !36, i64 96, !36, i64 104, !40, i64 112, !45, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !43, i64 224, !43, i64 228, !44, i64 232, !44, i64 234, !44, i64 236, !44, i64 238, !44, i64 240, !44, i64 242, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !37, i64 260, !37, i64 272, !44, i64 284, !44, i64 286, !44, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !45, i64 296, !45, i64 312, !45, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!50 = !{!51, !37, i64 809}
!51 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !37, i64 696, !37, i64 760, !41, i64 776, !41, i64 780, !41, i64 784, !41, i64 788, !37, i64 792, !41, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !44, i64 824, !44, i64 826, !37, i64 828, !44, i64 844, !44, i64 846, !41, i64 848, !37, i64 852, !41, i64 864, !37, i64 868}
!52 = !{!49, !36, i64 96}
!53 = !{!54, !44, i64 136}
!54 = !{!"Object", !55, i64 0, !36, i64 120, !36, i64 128, !44, i64 136, !44, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !56, i64 312, !36, i64 360, !45, i64 368, !45, i64 384, !45, i64 400, !45, i64 416, !43, i64 432, !43, i64 436, !36, i64 440, !36, i64 448, !43, i64 456, !43, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !43, i64 944, !44, i64 948, !44, i64 950, !44, i64 952, !44, i64 954, !44, i64 956, !44, i64 958, !44, i64 960, !44, i64 962, !44, i64 964, !37, i64 966, !37, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !44, i64 1036, !44, i64 1038, !44, i64 1040, !37, i64 1042, !37, i64 1043, !44, i64 1044, !37, i64 1046, !37, i64 1047, !41, i64 1048, !41, i64 1052, !45, i64 1056, !45, i64 1072, !45, i64 1088, !45, i64 1104, !41, i64 1120, !44, i64 1124, !44, i64 1126, !37, i64 1128, !43, i64 1144, !43, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !44, i64 1162, !37, i64 1164, !45, i64 1176, !45, i64 1192, !45, i64 1208, !45, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !44, i64 1266, !41, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !57, i64 1304, !57, i64 1312, !43, i64 1320, !43, i64 1324, !45, i64 1328, !45, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !45, i64 1400, !36, i64 1416}
!55 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !44, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !36, i64 112}
!56 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !44, i64 28, !44, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!57 = !{!"long", !37, i64 0}
!58 = !{!54, !36, i64 296}
!59 = !{!41, !41, i64 0}
!60 = !{!51, !41, i64 776}
!61 = !{!62, !41, i64 0}
!62 = !{!"SmoothView3DState", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 24}
!63 = !{!49, !41, i64 244}
!64 = !{!62, !41, i64 4}
!65 = !{!51, !36, i64 680}
!66 = !{i64 0, i64 4, !59, i64 4, i64 4, !59, i64 8, i64 16, !67, i64 24, i64 12, !67}
!67 = !{!37, !37, i64 0}
!68 = !{!69, !37, i64 109}
!69 = !{!"SmoothView3DStore", !62, i64 0, !62, i64 36, !62, i64 72, !37, i64 108, !37, i64 109, !70, i64 112}
!70 = !{!"double", !37, i64 0}
!71 = !{!69, !41, i64 36}
!72 = !{!69, !41, i64 40}
!73 = !{!69, !37, i64 108}
!74 = !{!49, !44, i64 232}
!75 = !{!69, !41, i64 0}
!76 = !{!51, !37, i64 811}
!77 = !{!51, !37, i64 810}
!78 = !{!69, !70, i64 112}
!79 = !{!51, !37, i64 808}
!80 = !{!81, !37, i64 128}
!81 = !{!"Camera", !55, i64 0, !36, i64 120, !37, i64 128, !37, i64 129, !44, i64 130, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !36, i64 176, !36, i64 184, !37, i64 192, !37, i64 193}
!82 = !{!51, !44, i64 826}
!83 = !{!36, !36, i64 0}
!84 = !{i64 0, i64 4, !59, i64 4, i64 4, !59, i64 8, i64 16, !67, i64 24, i64 12, !67, i64 36, i64 4, !59, i64 40, i64 4, !59, i64 44, i64 16, !67, i64 60, i64 12, !67, i64 72, i64 4, !59, i64 76, i64 4, !59, i64 80, i64 16, !67, i64 96, i64 12, !67, i64 108, i64 1, !67, i64 109, i64 1, !67, i64 112, i64 8, !85}
!85 = !{!70, !70, i64 0}
!86 = !{!51, !36, i64 688}
!87 = !{!88, !36, i64 0}
!88 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !45, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !89, i64 152, !44, i64 184}
!89 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!90 = !{!88, !36, i64 24}
!91 = !{!88, !36, i64 8}
!92 = !{!88, !36, i64 48}
!93 = !{!88, !44, i64 184}
!94 = !{!88, !36, i64 72}
!95 = !{!96, !36, i64 112}
!96 = !{!"wmEvent", !36, i64 0, !36, i64 8, !44, i64 16, !44, i64 18, !43, i64 20, !43, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !44, i64 44, !44, i64 46, !43, i64 48, !43, i64 52, !70, i64 56, !43, i64 64, !43, i64 68, !44, i64 72, !44, i64 74, !44, i64 76, !44, i64 78, !44, i64 80, !44, i64 82, !36, i64 88, !36, i64 96, !44, i64 104, !44, i64 106, !43, i64 108, !36, i64 112}
!97 = !{!98, !70, i64 48}
!98 = !{!"wmTimer", !36, i64 0, !36, i64 8, !36, i64 16, !70, i64 24, !43, i64 32, !36, i64 40, !70, i64 48, !70, i64 56, !70, i64 64, !70, i64 72, !70, i64 80, !43, i64 88}
!99 = !{!69, !41, i64 4}
!100 = !{!88, !36, i64 32}
!101 = !{!54, !44, i64 954}
!102 = !{!54, !36, i64 24}
!103 = !{!104, !36, i64 120}
!104 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !45, i64 128, !36, i64 144, !36, i64 152, !44, i64 160, !37, i64 162}
!105 = !{!49, !44, i64 236}
!106 = !{!107, !36, i64 128}
!107 = !{!"Scene", !55, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !45, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !43, i64 232, !43, i64 236, !43, i64 240, !44, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !108, i64 280, !115, i64 4264, !45, i64 4296, !45, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !44, i64 4376, !44, i64 4378, !43, i64 4380, !45, i64 4384, !116, i64 4400, !117, i64 4416, !120, i64 4600, !36, i64 4608, !121, i64 4616, !36, i64 4640, !57, i64 4648, !57, i64 4656, !110, i64 4664, !111, i64 4824, !122, i64 4888, !36, i64 4952}
!108 = !{!"RenderData", !109, i64 0, !36, i64 248, !36, i64 256, !112, i64 264, !113, i64 328, !43, i64 400, !43, i64 404, !43, i64 408, !41, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !44, i64 432, !44, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !44, i64 456, !44, i64 458, !44, i64 460, !44, i64 462, !44, i64 464, !44, i64 466, !43, i64 468, !44, i64 472, !44, i64 474, !44, i64 476, !44, i64 478, !44, i64 480, !44, i64 482, !43, i64 484, !43, i64 488, !44, i64 492, !44, i64 494, !43, i64 496, !43, i64 500, !44, i64 504, !44, i64 506, !44, i64 508, !44, i64 510, !44, i64 512, !37, i64 514, !37, i64 515, !43, i64 516, !43, i64 520, !43, i64 524, !44, i64 528, !44, i64 530, !44, i64 532, !44, i64 534, !44, i64 536, !44, i64 538, !44, i64 540, !44, i64 542, !40, i64 544, !40, i64 560, !42, i64 576, !45, i64 592, !44, i64 608, !44, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !43, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !44, i64 648, !44, i64 650, !44, i64 652, !44, i64 654, !44, i64 656, !44, i64 658, !41, i64 660, !41, i64 664, !44, i64 668, !44, i64 670, !41, i64 672, !41, i64 676, !37, i64 680, !43, i64 1704, !44, i64 1708, !44, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !43, i64 2520, !44, i64 2524, !44, i64 2526, !41, i64 2528, !41, i64 2532, !44, i64 2536, !44, i64 2538, !41, i64 2540, !44, i64 2544, !44, i64 2546, !43, i64 2548, !44, i64 2552, !44, i64 2554, !44, i64 2556, !44, i64 2558, !41, i64 2560, !41, i64 2564, !36, i64 2568, !43, i64 2576, !41, i64 2580, !37, i64 2584, !114, i64 2616, !43, i64 3976, !43, i64 3980}
!109 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !44, i64 8, !44, i64 10, !41, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !110, i64 24, !111, i64 184}
!110 = !{!"ColorManagedViewSettings", !43, i64 0, !43, i64 4, !37, i64 8, !37, i64 72, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!111 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!112 = !{!"QuicktimeCodecSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !44, i64 48, !44, i64 50, !43, i64 52, !43, i64 56, !43, i64 60}
!113 = !{!"FFMpegCodecData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !41, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !36, i64 64}
!114 = !{!"BakeData", !109, i64 0, !37, i64 248, !44, i64 1272, !44, i64 1274, !44, i64 1276, !44, i64 1278, !41, i64 1280, !41, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!115 = !{!"AudioData", !43, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !43, i64 16, !44, i64 20, !44, i64 22, !41, i64 24, !41, i64 28}
!116 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!117 = !{!"GameData", !116, i64 0, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !44, i64 28, !44, i64 30, !44, i64 32, !37, i64 34, !118, i64 40, !44, i64 64, !44, i64 66, !41, i64 68, !119, i64 72, !41, i64 128, !41, i64 132, !43, i64 136, !44, i64 140, !44, i64 142, !44, i64 144, !44, i64 146, !44, i64 148, !44, i64 150, !44, i64 152, !44, i64 154, !44, i64 156, !44, i64 158, !44, i64 160, !44, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!118 = !{!"GameDome", !44, i64 0, !44, i64 2, !44, i64 4, !44, i64 6, !41, i64 8, !41, i64 12, !36, i64 16}
!119 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !43, i64 40, !41, i64 44, !41, i64 48, !44, i64 52, !44, i64 54}
!120 = !{!"UnitSettings", !41, i64 0, !37, i64 4, !37, i64 5, !44, i64 6}
!121 = !{!"PhysicsSettings", !37, i64 0, !43, i64 12, !43, i64 16, !43, i64 20}
!122 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!123 = !{!43, !43, i64 0}
!124 = distinct !{!124, !125, !126}
!125 = !{!"llvm.loop.mustprogress"}
!126 = !{!"llvm.loop.unroll.disable"}
!127 = distinct !{!127, !125, !126}
!128 = distinct !{!128, !125, !126}
!129 = !{!130, !43, i64 96}
!130 = !{!"BoundBox", !37, i64 0, !43, i64 96, !43, i64 100}
!131 = distinct !{!131, !125, !126}
!132 = !{!133, !36, i64 40}
!133 = !{!"ViewContext", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !37, i64 56}
!134 = !{!51, !36, i64 664}
!135 = !{!133, !36, i64 24}
!136 = !{!35, !43, i64 176}
!137 = !{!35, !43, i64 184}
!138 = !{!139, !36, i64 8}
!139 = !{!"ViewDepths", !44, i64 0, !44, i64 2, !44, i64 4, !44, i64 6, !36, i64 8, !37, i64 16, !37, i64 32}
!140 = !{!139, !44, i64 0}
!141 = !{!139, !44, i64 2}
!142 = !{!139, !37, i64 32}
!143 = !{!49, !41, i64 248}
!144 = !{!49, !41, i64 256}
!145 = !{!146, !41, i64 48}
!146 = !{!"CameraParams", !37, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !43, i64 40, !41, i64 44, !41, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !40, i64 76, !37, i64 92}
!147 = !{!146, !41, i64 44}
!148 = !{i64 0, i64 4, !59, i64 4, i64 4, !59, i64 8, i64 4, !59, i64 12, i64 4, !59}
!149 = !{!146, !41, i64 68}
!150 = !{!146, !37, i64 0}
!151 = !{!35, !44, i64 208}
!152 = !{!35, !44, i64 210}
!153 = !{i64 0, i64 4, !59, i64 4, i64 4, !59, i64 8, i64 4, !59}
!154 = !{i64 0, i64 4, !59, i64 4, i64 4, !59}
!155 = !{i64 0, i64 4, !59}
!156 = !{!40, !41, i64 0}
!157 = !{!40, !41, i64 8}
!158 = !{!40, !41, i64 4}
!159 = !{!40, !41, i64 12}
!160 = distinct !{!160, !125, !126}
!161 = !{!49, !36, i64 104}
!162 = !{!54, !36, i64 288}
!163 = !{!49, !44, i64 234}
!164 = !{!133, !36, i64 0}
!165 = !{!133, !36, i64 32}
!166 = !{!107, !36, i64 176}
!167 = !{!133, !36, i64 16}
!168 = !{!169, !43, i64 2096}
!169 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !45, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !44, i64 2084, !44, i64 2086, !44, i64 2088, !37, i64 2090, !44, i64 2092, !43, i64 2096, !43, i64 2100, !37, i64 2104, !43, i64 2108, !43, i64 2112, !37, i64 2116}
!170 = !{!42, !43, i64 0}
!171 = !{!42, !43, i64 4}
!172 = !{!42, !43, i64 8}
!173 = !{!49, !37, i64 344}
!174 = !{!107, !36, i64 168}
!175 = !{!49, !37, i64 346}
!176 = !{!177, !43, i64 16}
!177 = !{!"Base", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !44, i64 28, !44, i64 30, !36, i64 32}
!178 = !{!49, !43, i64 224}
!179 = !{!177, !36, i64 32}
!180 = !{!54, !37, i64 1160}
!181 = !{!177, !43, i64 20}
!182 = !{!54, !44, i64 952}
!183 = !{!177, !43, i64 24}
!184 = !{!169, !36, i64 0}
!185 = !{!186, !36, i64 1888}
!186 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !44, i64 1040, !44, i64 1042, !44, i64 1044, !44, i64 1046, !57, i64 1048, !37, i64 1056, !44, i64 1072, !36, i64 1080, !45, i64 1088, !45, i64 1104, !45, i64 1120, !45, i64 1136, !45, i64 1152, !45, i64 1168, !45, i64 1184, !45, i64 1200, !45, i64 1216, !45, i64 1232, !45, i64 1248, !45, i64 1264, !45, i64 1280, !45, i64 1296, !45, i64 1312, !45, i64 1328, !45, i64 1344, !45, i64 1360, !45, i64 1376, !45, i64 1392, !45, i64 1408, !45, i64 1424, !45, i64 1440, !45, i64 1456, !45, i64 1472, !45, i64 1488, !45, i64 1504, !45, i64 1520, !45, i64 1536, !45, i64 1552, !45, i64 1568, !45, i64 1584, !45, i64 1600, !45, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!187 = !{!188, !36, i64 16}
!188 = !{!"DupliObject", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 100, !44, i64 108, !37, i64 110, !37, i64 111, !37, i64 112, !36, i64 144}
!189 = !{!54, !37, i64 1046}
!190 = !{!54, !44, i64 1044}
!191 = distinct !{!191, !125, !126}
!192 = distinct !{!192, !125, !126}
!193 = distinct !{!193, !125, !126}
!194 = distinct !{!194, !125, !126}
!195 = distinct !{!195, !125, !126}
!196 = !{!197, !36, i64 96}
!197 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !42, i64 56, !37, i64 72, !37, i64 73, !44, i64 74, !44, i64 76, !44, i64 78, !44, i64 80, !44, i64 82, !44, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !45, i64 96, !45, i64 112, !45, i64 128, !45, i64 144}
!198 = !{!49, !41, i64 252}
!199 = !{!49, !43, i64 228}
!200 = !{!51, !36, i64 648}
!201 = !{!51, !41, i64 804}
!202 = distinct !{!202, !125, !126}
!203 = !{!107, !43, i64 232}
!204 = !{!54, !44, i64 948}
!205 = !{!54, !43, i64 944}
!206 = distinct !{!206, !125, !126}
!207 = distinct !{!207, !125, !126}
!208 = distinct !{!208, !125, !126}
!209 = !{!210, !43, i64 32}
!210 = !{!"SpaceLink", !36, i64 0, !36, i64 8, !45, i64 16, !43, i64 32, !41, i64 36, !37, i64 40}
!211 = distinct !{!211, !125, !126}
!212 = distinct !{!212, !125, !126}
!213 = distinct !{!213, !125, !126}
!214 = distinct !{!214, !125, !126}
!215 = !{!197, !37, i64 72}
!216 = distinct !{!216, !125, !126}
!217 = distinct !{!217, !125, !126}
!218 = !{!219, !36, i64 184}
!219 = !{!"bScreen", !55, i64 0, !45, i64 120, !45, i64 136, !45, i64 152, !45, i64 168, !36, i64 184, !36, i64 192, !43, i64 200, !43, i64 204, !44, i64 208, !44, i64 210, !44, i64 212, !44, i64 214, !44, i64 216, !44, i64 218, !44, i64 220, !44, i64 222, !44, i64 224, !44, i64 226, !44, i64 228, !44, i64 230, !36, i64 232, !36, i64 240}
!220 = !{!51, !41, i64 788}
!221 = !{!222, !41, i64 10908}
!222 = !{!"UserDef", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !43, i64 8468, !44, i64 8472, !44, i64 8474, !44, i64 8476, !44, i64 8478, !44, i64 8480, !44, i64 8482, !43, i64 8484, !43, i64 8488, !43, i64 8492, !44, i64 8496, !44, i64 8498, !43, i64 8500, !43, i64 8504, !43, i64 8508, !43, i64 8512, !43, i64 8516, !43, i64 8520, !43, i64 8524, !44, i64 8528, !44, i64 8530, !44, i64 8532, !44, i64 8534, !45, i64 8536, !45, i64 8552, !45, i64 8568, !45, i64 8584, !45, i64 8600, !45, i64 8616, !45, i64 8632, !37, i64 8648, !44, i64 8712, !44, i64 8714, !44, i64 8716, !44, i64 8718, !44, i64 8720, !44, i64 8722, !44, i64 8724, !44, i64 8726, !37, i64 8728, !44, i64 8896, !44, i64 8898, !44, i64 8900, !44, i64 8902, !44, i64 8904, !44, i64 8906, !44, i64 8908, !44, i64 8910, !43, i64 8912, !43, i64 8916, !44, i64 8920, !44, i64 8922, !44, i64 8924, !44, i64 8926, !44, i64 8928, !44, i64 8930, !44, i64 8932, !44, i64 8934, !44, i64 8936, !44, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !44, i64 8944, !44, i64 8946, !44, i64 8948, !44, i64 8950, !44, i64 8952, !44, i64 8954, !41, i64 8956, !41, i64 8960, !43, i64 8964, !44, i64 8968, !44, i64 8970, !41, i64 8972, !44, i64 8976, !44, i64 8978, !44, i64 8980, !44, i64 8982, !223, i64 8984, !37, i64 9760, !37, i64 9772, !44, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !43, i64 10896, !43, i64 10900, !41, i64 10904, !41, i64 10908, !43, i64 10912, !44, i64 10916, !44, i64 10918, !44, i64 10920, !44, i64 10922, !44, i64 10924, !44, i64 10926, !224, i64 10928}
!223 = !{!"ColorBand", !44, i64 0, !44, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!224 = !{!"WalkNavigation", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !44, i64 24, !37, i64 26}
