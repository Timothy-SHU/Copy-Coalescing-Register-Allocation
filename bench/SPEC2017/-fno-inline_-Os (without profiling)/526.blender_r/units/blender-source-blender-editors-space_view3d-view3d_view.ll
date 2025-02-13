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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @view3d_operator_needs_opengl(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #18
  tail call void @view3d_region_operator_needs_opengl(ptr noundef %2, ptr noundef %3) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @view3d_region_operator_needs_opengl(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 8
  %6 = load i16, ptr %5, align 2, !tbaa !5
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %2
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %17

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %12 = load ptr, ptr %11, align 8, !tbaa !17
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 7
  %14 = load i16, ptr %13, align 4, !tbaa !18
  %15 = sext i16 %14 to i32
  tail call void @wmSubWindowSet(ptr noundef %0, i32 noundef %15) #18
  tail call void @glMatrixMode(i32 noundef 5889) #18
  tail call void @glLoadMatrixf(ptr noundef %12) #18
  tail call void @glMatrixMode(i32 noundef 5888) #18
  %16 = getelementptr inbounds %struct.RegionView3D, ptr %12, i64 0, i32 1
  tail call void @glLoadMatrixf(ptr noundef nonnull %16) #18
  br label %17

17:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @wmSubWindowSet(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glMatrixMode(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLoadMatrixf(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @ED_view3d_cursor3d_get(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !19
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ED_view3d_camera_data_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 25
  %4 = load i8, ptr %3, align 1, !tbaa !21
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !23
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !24
  %13 = icmp eq i16 %12, 11
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !29
  br label %17

17:                                               ; preds = %2, %6, %10, %14
  %18 = phi ptr [ %16, %14 ], [ null, %10 ], [ null, %6 ], [ null, %2 ]
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_smooth_view_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef readonly %9, ptr noundef readonly %10, i32 noundef %11) local_unnamed_addr #0 {
  %13 = alloca %struct.SmoothView3DStore, align 8
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [4 x float], align 16
  %17 = alloca [4 x float], align 16
  %18 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 30
  %19 = load ptr, ptr %18, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %13) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %13, i8 0, i64 120, i1 false)
  %20 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 1
  call fastcc void @view3d_smooth_view_state_backup(ptr noundef nonnull %20, ptr noundef %3, ptr noundef %19) #19
  call fastcc void @view3d_smooth_view_state_backup(ptr noundef nonnull %13, ptr noundef %3, ptr noundef %19) #19
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 14
  %22 = load ptr, ptr %21, align 8, !tbaa !30
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 2
  br i1 %23, label %25, label %27

25:                                               ; preds = %12
  call fastcc void @view3d_smooth_view_state_backup(ptr noundef nonnull %24, ptr noundef %3, ptr noundef nonnull %19) #19
  %26 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 26
  br label %30

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.SmoothView3DStore, ptr %22, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %24, ptr noundef nonnull align 8 dereferenceable(36) %28, i64 36, i1 false), !tbaa.struct !31
  %29 = getelementptr inbounds %struct.SmoothView3DStore, ptr %22, i64 0, i32 4
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi ptr [ %26, %25 ], [ %29, %27 ]
  %32 = load i8, ptr %31, align 1, !tbaa !33
  %33 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 4
  store i8 %32, ptr %33, align 1
  %34 = icmp eq ptr %6, null
  %35 = icmp eq ptr %5, null
  %36 = and i1 %35, %34
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  call void @ED_view3d_camera_lock_init(ptr noundef %3, ptr noundef nonnull %19) #18
  br label %38

38:                                               ; preds = %37, %30
  %39 = icmp ne ptr %7, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 1, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %41, ptr noundef nonnull %7) #19
  br label %42

42:                                               ; preds = %40, %38
  %43 = icmp eq ptr %8, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 1, i32 2
  call void @copy_qt_qt(ptr noundef nonnull %45, ptr noundef nonnull %8) #18
  br label %46

46:                                               ; preds = %44, %42
  %47 = icmp ne ptr %9, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %46
  %49 = load float, ptr %9, align 4, !tbaa !32
  store float %49, ptr %20, align 4, !tbaa !34
  br label %50

50:                                               ; preds = %48, %46
  %51 = icmp eq ptr %10, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %50
  %53 = load float, ptr %10, align 4, !tbaa !32
  %54 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 1, i32 1
  store float %53, ptr %54, align 8, !tbaa !38
  br label %55

55:                                               ; preds = %52, %50
  br i1 %34, label %63, label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 47
  %58 = call float @ED_view3d_offset_distance(ptr noundef nonnull %57, ptr noundef %7, float noundef 1.000000e+00) #18
  store float %58, ptr %20, align 4, !tbaa !34
  %59 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 1, i32 3
  %60 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 1, i32 2
  %61 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 1, i32 1
  call void @ED_view3d_from_object(ptr noundef nonnull %6, ptr noundef nonnull %59, ptr noundef nonnull %60, ptr noundef nonnull %20, ptr noundef nonnull %61) #18
  %62 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 3
  store i8 1, ptr %62, align 4, !tbaa !39
  br label %63

63:                                               ; preds = %56, %55
  %64 = icmp eq i32 %11, 0
  br i1 %64, label %160, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 24
  %67 = load i16, ptr %66, align 8, !tbaa !40
  %68 = icmp eq i16 %67, 6
  br i1 %68, label %160, label %69

69:                                               ; preds = %65
  %70 = icmp eq ptr %5, %6
  br i1 %70, label %71, label %92

71:                                               ; preds = %69
  %72 = load float, ptr %20, align 4, !tbaa !34
  %73 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 18
  %74 = load float, ptr %73, align 8, !tbaa !41
  %75 = fcmp une float %72, %74
  br i1 %75, label %92, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 1, i32 1
  %78 = load float, ptr %77, align 8, !tbaa !38
  %79 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 30
  %80 = load float, ptr %79, align 4, !tbaa !42
  %81 = fcmp une float %78, %80
  br i1 %81, label %92, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 1, i32 3
  %84 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 22
  %85 = call fastcc zeroext i8 @equals_v3v3(ptr noundef nonnull %83, ptr noundef nonnull %84) #19, !range !43
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 1, i32 2
  %89 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 17
  %90 = call fastcc zeroext i8 @equals_v4v4(ptr noundef nonnull %88, ptr noundef nonnull %89) #19, !range !43
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %160

92:                                               ; preds = %82, %76, %71, %69, %87
  br i1 %35, label %100, label %93

93:                                               ; preds = %92
  %94 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 47
  %95 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 22
  %96 = call float @ED_view3d_offset_distance(ptr noundef nonnull %94, ptr noundef nonnull %95, float noundef 0.000000e+00) #18
  store float %96, ptr %13, align 8, !tbaa !44
  %97 = getelementptr inbounds %struct.SmoothView3DState, ptr %13, i64 0, i32 3
  %98 = getelementptr inbounds %struct.SmoothView3DState, ptr %13, i64 0, i32 2
  %99 = getelementptr inbounds %struct.SmoothView3DState, ptr %13, i64 0, i32 1
  call void @ED_view3d_from_object(ptr noundef nonnull %5, ptr noundef nonnull %97, ptr noundef nonnull %98, ptr noundef nonnull %13, ptr noundef nonnull %99) #18
  br label %100

100:                                              ; preds = %93, %92
  %101 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 27
  %102 = load i8, ptr %101, align 1, !tbaa !45
  %103 = and i8 %102, 1
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 26
  store i8 0, ptr %106, align 2, !tbaa !46
  br label %107

107:                                              ; preds = %105, %100
  %108 = sitofp i32 %11 to double
  %109 = fdiv double %108, 1.000000e+03
  %110 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 5
  store double %109, ptr %110, align 8, !tbaa !47
  %111 = or i1 %39, %43
  %112 = or i1 %111, %47
  br i1 %112, label %121, label %113

113:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %14, ptr noundef nonnull align 4 dereferenceable(12) @__const.ED_view3d_smooth_view_ex.vec2, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %15, ptr noundef nonnull align 4 dereferenceable(12) @__const.ED_view3d_smooth_view_ex.vec2, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #20
  %114 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 1, i32 2
  call void @invert_qt_qt(ptr noundef nonnull %16, ptr noundef nonnull %114) #18
  %115 = getelementptr inbounds %struct.SmoothView3DState, ptr %13, i64 0, i32 2
  call void @invert_qt_qt(ptr noundef nonnull %17, ptr noundef nonnull %115) #18
  call void @mul_qt_v3(ptr noundef nonnull %16, ptr noundef nonnull %14) #18
  call void @mul_qt_v3(ptr noundef nonnull %17, ptr noundef nonnull %15) #18
  %116 = call float @angle_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %15) #18
  %117 = fpext float %116 to double
  %118 = fdiv double %117, 0x400921FB54442D18
  %119 = load double, ptr %110, align 8, !tbaa !47
  %120 = fmul double %119, %118
  store double %120, ptr %110, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #20
  br label %121

121:                                              ; preds = %113, %107
  %122 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 3
  %123 = load i8, ptr %122, align 4, !tbaa !39
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %143, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 24
  %127 = load i8, ptr %126, align 8, !tbaa !48
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 3
  %131 = load i16, ptr %130, align 8, !tbaa !24
  %132 = icmp eq i16 %131, 11
  br i1 %132, label %133, label %140

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %135 = load ptr, ptr %134, align 8, !tbaa !29
  %136 = getelementptr inbounds %struct.Camera, ptr %135, i64 0, i32 2
  %137 = load i8, ptr %136, align 8, !tbaa !49
  %138 = icmp ne i8 %137, 1
  %139 = zext i1 %138 to i8
  br label %140

140:                                              ; preds = %133, %129, %125
  %141 = phi i8 [ 1, %129 ], [ 1, %125 ], [ %139, %133 ]
  %142 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 25
  store i8 %141, ptr %142, align 1, !tbaa !21
  br label %143

143:                                              ; preds = %140, %121
  %144 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 32
  %145 = load i16, ptr %144, align 2, !tbaa !51
  %146 = or i16 %145, 8
  store i16 %146, ptr %144, align 2, !tbaa !51
  call fastcc void @view3d_smooth_view_state_restore(ptr noundef nonnull %13, ptr noundef nonnull %3, ptr noundef nonnull %19) #19
  %147 = load ptr, ptr %21, align 8, !tbaa !30
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !52
  %151 = call ptr %150(i64 noundef 120, ptr noundef nonnull @.str.1) #18
  store ptr %151, ptr %21, align 8, !tbaa !30
  br label %152

152:                                              ; preds = %149, %143
  %153 = phi ptr [ %151, %149 ], [ %147, %143 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %153, ptr noundef nonnull align 8 dereferenceable(120) %13, i64 120, i1 false), !tbaa.struct !53
  %154 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 15
  %155 = load ptr, ptr %154, align 8, !tbaa !55
  %156 = icmp eq ptr %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %152
  call void @WM_event_remove_timer(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %155) #18
  br label %158

158:                                              ; preds = %157, %152
  %159 = call ptr @WM_event_add_timer(ptr noundef %0, ptr noundef %1, i32 noundef 274, double noundef 1.000000e-02) #18
  store ptr %159, ptr %154, align 8, !tbaa !55
  br label %182

160:                                              ; preds = %87, %65, %63
  %161 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 3
  %162 = load i8, ptr %161, align 4, !tbaa !39
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 22
  %166 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 1, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %165, ptr noundef nonnull %166) #19
  %167 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 17
  %168 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 1, i32 2
  call void @copy_qt_qt(ptr noundef nonnull %167, ptr noundef nonnull %168) #18
  %169 = load float, ptr %20, align 4, !tbaa !34
  %170 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 18
  store float %169, ptr %170, align 8, !tbaa !41
  %171 = getelementptr inbounds %struct.SmoothView3DStore, ptr %13, i64 0, i32 1, i32 1
  %172 = load float, ptr %171, align 8, !tbaa !38
  %173 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 30
  store float %172, ptr %173, align 4, !tbaa !42
  %174 = call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %3, ptr noundef nonnull %19) #18
  br label %175

175:                                              ; preds = %164, %160
  %176 = getelementptr inbounds %struct.RegionView3D, ptr %19, i64 0, i32 27
  %177 = load i8, ptr %176, align 1, !tbaa !45
  %178 = and i8 %177, 2
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %175
  call void @view3d_boxview_copy(ptr noundef %2, ptr noundef nonnull %4) #18
  br label %181

181:                                              ; preds = %180, %175
  call void @ED_region_tag_redraw(ptr noundef nonnull %4) #18
  br label %182

182:                                              ; preds = %158, %181
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %13) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_smooth_view_state_backup(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.SmoothView3DState, ptr %0, i64 0, i32 3
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 22
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %6 = getelementptr inbounds %struct.SmoothView3DState, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 17
  tail call void @copy_qt_qt(ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 18
  %9 = load float, ptr %8, align 8, !tbaa !41
  store float %9, ptr %0, align 4, !tbaa !56
  %10 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 30
  %11 = load float, ptr %10, align 4, !tbaa !42
  %12 = getelementptr inbounds %struct.SmoothView3DState, ptr %0, i64 0, i32 1
  store float %11, ptr %12, align 4, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare void @ED_view3d_camera_lock_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = load float, ptr %1, align 4, !tbaa !32
  store float %3, ptr %0, align 4, !tbaa !32
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !32
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !32
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !32
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !32
  ret void
}

; Function Attrs: optsize
declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @ED_view3d_offset_distance(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_from_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @equals_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %0, align 4, !tbaa !32
  %4 = load float, ptr %1, align 4, !tbaa !32
  %5 = fcmp oeq float %3, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !32
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !32
  %11 = fcmp oeq float %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !32
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !32
  %17 = fcmp oeq float %14, %16
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %12, %6, %2
  %20 = phi i8 [ 0, %6 ], [ 0, %2 ], [ %18, %12 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @equals_v4v4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %0, align 4, !tbaa !32
  %4 = load float, ptr %1, align 4, !tbaa !32
  %5 = fcmp oeq float %3, %4
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !32
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !32
  %11 = fcmp oeq float %8, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %6
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !32
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !32
  %17 = fcmp oeq float %14, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = getelementptr inbounds float, ptr %0, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !32
  %21 = getelementptr inbounds float, ptr %1, i64 3
  %22 = load float, ptr %21, align 4, !tbaa !32
  %23 = fcmp oeq float %20, %22
  %24 = zext i1 %23 to i8
  br label %25

25:                                               ; preds = %18, %12, %6, %2
  %26 = phi i8 [ 0, %12 ], [ 0, %6 ], [ 0, %2 ], [ %24, %18 ]
  ret i8 %26
}

; Function Attrs: optsize
declare void @invert_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @angle_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_smooth_view_state_restore(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 22
  %5 = getelementptr inbounds %struct.SmoothView3DState, ptr %0, i64 0, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 17
  %7 = getelementptr inbounds %struct.SmoothView3DState, ptr %0, i64 0, i32 2
  tail call void @copy_qt_qt(ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %8 = load float, ptr %0, align 4, !tbaa !56
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 18
  store float %8, ptr %9, align 8, !tbaa !41
  %10 = getelementptr inbounds %struct.SmoothView3DState, ptr %0, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !57
  %12 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 30
  store float %11, ptr %12, align 4, !tbaa !42
  ret void
}

; Function Attrs: optsize
declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @view3d_boxview_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_smooth_view(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = tail call ptr @CTX_wm_manager(ptr noundef %0) #18
  %12 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  %13 = tail call ptr @CTX_wm_area(ptr noundef %0) #18
  tail call void @ED_view3d_smooth_view_ex(ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %9) #19
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_smoothview(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.2, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.3, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view3d_smoothview_invoke, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 64, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %6, align 8, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view3d_smoothview_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #18
  %5 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #18
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !30
  %8 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = icmp eq ptr %9, null
  br i1 %10, label %95, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = icmp eq ptr %9, %13
  br i1 %14, label %15, label %95

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 5
  %17 = load double, ptr %16, align 8, !tbaa !47
  %18 = fcmp une double %17, 0.000000e+00
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.wmTimer, ptr %9, i64 0, i32 6
  %21 = load double, ptr %20, align 8, !tbaa !68
  %22 = fdiv double %21, %17
  %23 = fptrunc double %22 to float
  %24 = fcmp ult float %23, 1.000000e+00
  br i1 %24, label %54, label %25

25:                                               ; preds = %15, %19
  %26 = phi float [ %23, %19 ], [ 1.000000e+00, %15 ]
  %27 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 3
  %28 = load i8, ptr %27, align 4, !tbaa !39
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 25
  store i8 2, ptr %31, align 1, !tbaa !21
  %32 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 2
  tail call fastcc void @view3d_smooth_view_state_restore(ptr noundef nonnull %32, ptr noundef %4, ptr noundef nonnull %5) #19
  br label %36

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 1
  tail call fastcc void @view3d_smooth_view_state_restore(ptr noundef nonnull %34, ptr noundef %4, ptr noundef nonnull %5) #19
  %35 = tail call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %4, ptr noundef nonnull %5) #18
  br label %36

36:                                               ; preds = %33, %30
  %37 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 27
  %38 = load i8, ptr %37, align 1, !tbaa !45
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 4
  %43 = load i8, ptr %42, align 1, !tbaa !70
  %44 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 26
  store i8 %43, ptr %44, align 2, !tbaa !46
  br label %45

45:                                               ; preds = %41, %36
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  %47 = load ptr, ptr %6, align 8, !tbaa !30
  tail call void %46(ptr noundef %47) #18
  store ptr null, ptr %6, align 8, !tbaa !30
  %48 = tail call ptr @CTX_wm_manager(ptr noundef %0) #18
  %49 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  %50 = load ptr, ptr %8, align 8, !tbaa !55
  tail call void @WM_event_remove_timer(ptr noundef %48, ptr noundef %49, ptr noundef %50) #18
  store ptr null, ptr %8, align 8, !tbaa !55
  %51 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 32
  %52 = load i16, ptr %51, align 2, !tbaa !51
  %53 = and i16 %52, -9
  store i16 %53, ptr %51, align 2, !tbaa !51
  br label %81

54:                                               ; preds = %19
  %55 = fmul float %23, 3.000000e+00
  %56 = fmul float %23, -2.000000e+00
  %57 = fmul float %56, %23
  %58 = fmul float %57, %23
  %59 = tail call float @llvm.fmuladd.f32(float %55, float %23, float %58)
  %60 = fsub float 1.000000e+00, %59
  %61 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 22
  %62 = getelementptr inbounds %struct.SmoothView3DState, ptr %7, i64 0, i32 3
  %63 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 1
  %64 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 1, i32 3
  tail call void @interp_v3_v3v3(ptr noundef nonnull %61, ptr noundef nonnull %62, ptr noundef nonnull %64, float noundef %59) #18
  %65 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 17
  %66 = getelementptr inbounds %struct.SmoothView3DState, ptr %7, i64 0, i32 2
  %67 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 1, i32 2
  tail call void @interp_qt_qtqt(ptr noundef nonnull %65, ptr noundef nonnull %66, ptr noundef nonnull %67, float noundef %59) #18
  %68 = load float, ptr %63, align 4, !tbaa !34
  %69 = load float, ptr %7, align 8, !tbaa !44
  %70 = fmul float %60, %69
  %71 = tail call float @llvm.fmuladd.f32(float %68, float %59, float %70)
  %72 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 18
  store float %71, ptr %72, align 8, !tbaa !41
  %73 = getelementptr inbounds %struct.SmoothView3DStore, ptr %7, i64 0, i32 1, i32 1
  %74 = load float, ptr %73, align 4, !tbaa !38
  %75 = getelementptr inbounds %struct.SmoothView3DState, ptr %7, i64 0, i32 1
  %76 = load float, ptr %75, align 4, !tbaa !71
  %77 = fmul float %60, %76
  %78 = tail call float @llvm.fmuladd.f32(float %74, float %59, float %77)
  %79 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 30
  store float %78, ptr %79, align 4, !tbaa !42
  %80 = tail call zeroext i8 @ED_view3d_camera_lock_sync(ptr noundef %4, ptr noundef nonnull %5) #18
  br label %81

81:                                               ; preds = %54, %45
  %82 = phi float [ %26, %45 ], [ %59, %54 ]
  %83 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 27
  %84 = load i8, ptr %83, align 1, !tbaa !45
  %85 = and i8 %84, 2
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %81
  %88 = tail call ptr @CTX_wm_area(ptr noundef %0) #18
  %89 = tail call ptr @CTX_wm_region(ptr noundef %0) #18
  tail call void @view3d_boxview_copy(ptr noundef %88, ptr noundef %89) #18
  br label %90

90:                                               ; preds = %87, %81
  %91 = fcmp ult float %82, 1.000000e+00
  br i1 %91, label %93, label %92

92:                                               ; preds = %90
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %4) #18
  br label %95

93:                                               ; preds = %90
  %94 = tail call ptr @CTX_wm_region(ptr noundef %0) #18
  tail call void @ED_region_tag_redraw(ptr noundef %94) #18
  br label %95

95:                                               ; preds = %92, %93, %3, %11
  %96 = phi i32 [ 8, %11 ], [ 8, %3 ], [ 4, %93 ], [ 4, %92 ]
  ret i32 %96
}

; Function Attrs: optsize
declare i32 @ED_operator_view3d_active(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_camera_to_view(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.5, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.6, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_camera_to_view_exec, ptr %4, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @view3d_camera_to_view_poll, ptr %5, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !64
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view3d_camera_to_view_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.ObjectTfmProtectedChannels, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #20
  %6 = call zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %7 = load ptr, ptr %4, align 8, !tbaa !52
  %8 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 30
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  call void @ED_view3d_lastview_store(ptr noundef %9) #18
  %10 = load ptr, ptr %3, align 8, !tbaa !52
  %11 = getelementptr inbounds %struct.View3D, ptr %10, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !23
  call void @BKE_object_tfm_protected_backup(ptr noundef %12, ptr noundef nonnull %5) #18
  %13 = load ptr, ptr %3, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.View3D, ptr %13, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !23
  %16 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 22
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 17
  %18 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 18
  %19 = load float, ptr %18, align 8, !tbaa !41
  call void @ED_view3d_to_object(ptr noundef %15, ptr noundef nonnull %16, ptr noundef nonnull %17, float noundef %19) #18
  %20 = load ptr, ptr %3, align 8, !tbaa !52
  %21 = getelementptr inbounds %struct.View3D, ptr %20, i64 0, i32 15
  %22 = load ptr, ptr %21, align 8, !tbaa !23
  %23 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 56
  %24 = load i16, ptr %23, align 2, !tbaa !73
  call void @BKE_object_tfm_protected_restore(ptr noundef %22, ptr noundef nonnull %5, i16 noundef signext %24) #18
  %25 = load ptr, ptr %3, align 8, !tbaa !52
  %26 = getelementptr inbounds %struct.View3D, ptr %25, i64 0, i32 15
  %27 = load ptr, ptr %26, align 8, !tbaa !23
  call void @DAG_id_tag_update(ptr noundef %27, i16 noundef signext 1) #18
  %28 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 25
  store i8 2, ptr %28, align 1, !tbaa !21
  %29 = load ptr, ptr %3, align 8, !tbaa !52
  %30 = getelementptr inbounds %struct.View3D, ptr %29, i64 0, i32 15
  %31 = load ptr, ptr %30, align 8, !tbaa !23
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef %31) #18
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view3d_camera_to_view_poll(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %4 = call zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #18
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %32, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8, !tbaa !52
  %8 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 30
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = load ptr, ptr %2, align 8, !tbaa !52
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.View3D, ptr %10, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !23
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !74
  %19 = icmp eq ptr %18, null
  %20 = icmp ne ptr %9, null
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 27
  %24 = load i8, ptr %23, align 1, !tbaa !45
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.RegionView3D, ptr %9, i64 0, i32 25
  %29 = load i8, ptr %28, align 1, !tbaa !21
  %30 = icmp eq i8 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %22, %27, %16, %12, %6
  br label %32

32:                                               ; preds = %1, %31, %27
  %33 = phi i32 [ 1, %27 ], [ 0, %31 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret i32 %33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_camera_to_view_selected(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.8, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.9, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_camera_to_view_selected_exec, ptr %4, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !64
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view3d_camera_to_view_selected_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca %struct.ObjectTfmProtectedChannels, align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #18
  %7 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #18
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 15
  %10 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 2
  %11 = select i1 %8, ptr %10, ptr %9
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #20
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !75
  tail call void @BKE_report(ptr noundef %16, i32 noundef 32, ptr noundef nonnull @.str.21) #18
  br label %39

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !24
  %20 = icmp eq i16 %19, 11
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  tail call void @BKE_report(ptr noundef %23, i32 noundef 32, ptr noundef nonnull @.str.22) #18
  br label %39

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !29
  %27 = getelementptr inbounds %struct.Camera, ptr %26, i64 0, i32 2
  %28 = load i8, ptr %27, align 8, !tbaa !49
  %29 = icmp eq i8 %28, 8
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !75
  tail call void @BKE_report(ptr noundef %32, i32 noundef 32, ptr noundef nonnull @.str.23) #18
  br label %39

33:                                               ; preds = %24
  %34 = call zeroext i8 @BKE_camera_view_frame_fit_to_scene(ptr noundef %6, ptr noundef %7, ptr noundef nonnull %12, ptr noundef nonnull %3) #18
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #20
  %37 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %37) #18
  %38 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %38, ptr noundef nonnull %3) #19
  call void @BKE_object_tfm_protected_backup(ptr noundef nonnull %12, ptr noundef nonnull %4) #18
  call void @BKE_object_apply_mat4(ptr noundef nonnull %12, ptr noundef nonnull %5, i8 noundef zeroext 1, i8 noundef zeroext 1) #18
  call void @BKE_object_tfm_protected_restore(ptr noundef nonnull %12, ptr noundef nonnull %4, i16 noundef signext 1472) #18
  call void @DAG_id_tag_update(ptr noundef nonnull %12, i16 noundef signext 1) #18
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #20
  br label %39

39:                                               ; preds = %33, %36, %30, %21, %14
  %40 = phi i32 [ 2, %14 ], [ 2, %21 ], [ 2, %30 ], [ 4, %36 ], [ 2, %33 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  ret i32 %40
}

; Function Attrs: optsize
declare i32 @ED_operator_scene_editable(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_operator_rv3d_user_region_poll(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %4 = call zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #18
  %5 = zext i8 %4 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret i32 %5
}

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_context_user_region(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_object_as_camera(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.11, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.12, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view3d_setobjectascamera_exec, ptr %4, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_rv3d_user_region_poll, ptr %5, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !64
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view3d_setobjectascamera_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #18
  %6 = tail call ptr @CTX_data_active_object(ptr noundef %0) #18
  %7 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #18
  %8 = call zeroext i8 @ED_view3d_context_user_region(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %9 = load ptr, ptr %4, align 8, !tbaa !52
  %10 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 30
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %6, null
  br i1 %12, label %54, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 25
  %15 = load i8, ptr %14, align 1, !tbaa !21
  %16 = icmp eq i8 %15, 2
  %17 = load ptr, ptr %3, align 8, !tbaa !52
  %18 = getelementptr inbounds %struct.View3D, ptr %17, i64 0, i32 26
  %19 = load i16, ptr %18, align 4, !tbaa !77
  br i1 %16, label %20, label %31

20:                                               ; preds = %13
  %21 = icmp eq i16 %19, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.View3D, ptr %17, i64 0, i32 15
  %24 = load ptr, ptr %23, align 8, !tbaa !23
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  store i8 2, ptr %14, align 1, !tbaa !21
  %27 = getelementptr inbounds %struct.View3D, ptr %17, i64 0, i32 15
  br label %37

28:                                               ; preds = %22, %20
  %29 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !78
  br label %31

31:                                               ; preds = %13, %28
  %32 = phi ptr [ %30, %28 ], [ null, %13 ]
  store i8 2, ptr %14, align 1, !tbaa !21
  %33 = getelementptr inbounds %struct.View3D, ptr %17, i64 0, i32 15
  store ptr %6, ptr %33, align 8, !tbaa !23
  %34 = icmp eq i16 %19, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 2
  br label %37

37:                                               ; preds = %35, %26
  %38 = phi ptr [ %27, %26 ], [ %36, %35 ]
  %39 = phi ptr [ %24, %26 ], [ %32, %35 ]
  store ptr %6, ptr %38, align 8, !tbaa !52
  br label %40

40:                                               ; preds = %37, %31
  %41 = phi ptr [ %32, %31 ], [ %39, %37 ]
  %42 = icmp eq ptr %41, %6
  br i1 %42, label %52, label %43

43:                                               ; preds = %40
  call void @ED_view3d_lastview_store(ptr noundef nonnull %11) #18
  %44 = load ptr, ptr %3, align 8, !tbaa !52
  %45 = load ptr, ptr %4, align 8, !tbaa !52
  %46 = getelementptr inbounds %struct.View3D, ptr %44, i64 0, i32 15
  %47 = load ptr, ptr %46, align 8, !tbaa !23
  %48 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 22
  %49 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 17
  %50 = getelementptr inbounds %struct.RegionView3D, ptr %11, i64 0, i32 18
  %51 = getelementptr inbounds %struct.View3D, ptr %44, i64 0, i32 30
  call void @ED_view3d_smooth_view(ptr noundef %0, ptr noundef %44, ptr noundef %45, ptr noundef %41, ptr noundef %47, ptr noundef nonnull %48, ptr noundef nonnull %49, ptr noundef nonnull %50, ptr noundef nonnull %51, i32 noundef %7) #19
  br label %52

52:                                               ; preds = %43, %40
  %53 = call ptr @CTX_data_scene(ptr noundef %0) #18
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %53) #18
  br label %54

54:                                               ; preds = %52, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_clipping_calc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  %7 = load double, ptr %2, align 8, !tbaa !54
  %8 = tail call double @llvm.fabs.f64(double %7)
  %9 = fcmp olt double %8, 0x3EB0C6F7A0B5ED8D
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  store double 0.000000e+00, ptr %2, align 8, !tbaa !54
  br label %11

11:                                               ; preds = %10, %4
  %12 = getelementptr inbounds [16 x double], ptr %2, i64 0, i64 5
  %13 = load double, ptr %12, align 8, !tbaa !54
  %14 = tail call double @llvm.fabs.f64(double %13)
  %15 = fcmp olt double %14, 0x3EB0C6F7A0B5ED8D
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store double 0.000000e+00, ptr %12, align 8, !tbaa !54
  br label %17

17:                                               ; preds = %16, %11
  %18 = getelementptr inbounds %struct.bglMats, ptr %2, i64 0, i32 2
  store i32 0, ptr %18, align 8, !tbaa !95
  %19 = getelementptr inbounds %struct.bglMats, ptr %2, i64 0, i32 2, i64 1
  store i32 0, ptr %19, align 4, !tbaa !95
  %20 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %21 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %22 = getelementptr inbounds %struct.bglMats, ptr %2, i64 0, i32 1
  %23 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 1
  %24 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 2
  %25 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  br label %26

26:                                               ; preds = %17, %30
  %27 = phi i64 [ 0, %17 ], [ %43, %30 ]
  %28 = trunc i64 %27 to i32
  switch i32 %28, label %29 [
    i32 3, label %30
    i32 0, label %30
  ]

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %26, %26, %29
  %31 = phi ptr [ %25, %29 ], [ %3, %26 ], [ %3, %26 ]
  %32 = load i32, ptr %31, align 4, !tbaa !95
  %33 = sitofp i32 %32 to double
  %34 = icmp ult i64 %27, 2
  %35 = select i1 %34, ptr %20, ptr %21
  %36 = load i32, ptr %35, align 4, !tbaa !95
  %37 = sitofp i32 %36 to double
  %38 = call i32 @gluUnProject(double noundef %33, double noundef %37, double noundef 0.000000e+00, ptr noundef nonnull %2, ptr noundef nonnull %22, ptr noundef nonnull %18, ptr noundef nonnull %6, ptr noundef nonnull %23, ptr noundef nonnull %24) #18
  %39 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 %27
  call fastcc void @copy_v3fl_v3db(ptr noundef %39, ptr noundef nonnull %6) #19
  %40 = call i32 @gluUnProject(double noundef %33, double noundef %37, double noundef 1.000000e+00, ptr noundef nonnull %2, ptr noundef nonnull %22, ptr noundef nonnull %18, ptr noundef nonnull %6, ptr noundef nonnull %23, ptr noundef nonnull %24) #18
  %41 = or disjoint i64 %27, 4
  %42 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 %41
  call fastcc void @copy_v3fl_v3db(ptr noundef nonnull %42, ptr noundef nonnull %6) #19
  %43 = add nuw nsw i64 %27, 1
  %44 = icmp eq i64 %43, 4
  br i1 %44, label %45, label %26, !llvm.loop !96

45:                                               ; preds = %30, %45
  %46 = phi i64 [ %51, %45 ], [ 0, %30 ]
  %47 = getelementptr inbounds [16 x double], ptr %2, i64 0, i64 %46
  %48 = load <2 x double>, ptr %47, align 8, !tbaa !54
  %49 = fptrunc <2 x double> %48 to <2 x float>
  %50 = getelementptr inbounds float, ptr %5, i64 %46
  store <2 x float> %49, ptr %50, align 8, !tbaa !32
  %51 = add nuw i64 %46, 2
  %52 = icmp eq i64 %51, 16
  br i1 %52, label %53, label %45, !llvm.loop !98

53:                                               ; preds = %45
  %54 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %5) #18
  %55 = icmp eq i8 %54, 0
  br label %56

56:                                               ; preds = %53, %69
  %57 = phi i64 [ 0, %53 ], [ %61, %69 ]
  %58 = getelementptr inbounds [4 x float], ptr %1, i64 %57
  %59 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 %57
  %60 = icmp eq i64 %57, 3
  %61 = add nuw nsw i64 %57, 1
  %62 = and i64 %61, 4294967295
  %63 = select i1 %60, i64 0, i64 %62
  %64 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 %63
  %65 = or disjoint i64 %57, 4
  %66 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 %65
  %67 = call float @normal_tri_v3(ptr noundef %58, ptr noundef %59, ptr noundef %64, ptr noundef nonnull %66) #18
  br i1 %55, label %69, label %68

68:                                               ; preds = %56
  call fastcc void @negate_v3(ptr noundef %58) #19
  br label %69

69:                                               ; preds = %68, %56
  %70 = call fastcc float @dot_v3v3(ptr noundef %58, ptr noundef %59) #19
  %71 = fneg float %70
  %72 = getelementptr inbounds [4 x float], ptr %1, i64 %57, i64 3
  store float %71, ptr %72, align 4, !tbaa !32
  %73 = icmp eq i64 %61, 4
  br i1 %73, label %74, label %56, !llvm.loop !101

74:                                               ; preds = %69
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: optsize
declare i32 @gluUnProject(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3fl_v3db(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = load <2 x double>, ptr %1, align 8, !tbaa !54
  %4 = fptrunc <2 x double> %3 to <2 x float>
  store <2 x float> %4, ptr %0, align 4, !tbaa !32
  %5 = getelementptr inbounds double, ptr %1, i64 2
  %6 = load double, ptr %5, align 8, !tbaa !54
  %7 = fptrunc double %6 to float
  %8 = getelementptr inbounds float, ptr %0, i64 2
  store float %7, ptr %8, align 4, !tbaa !32
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_negative_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !32
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !32
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !32
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load float, ptr %0, align 4, !tbaa !32
  %4 = load float, ptr %1, align 4, !tbaa !32
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !32
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !32
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !32
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !32
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_view3d_boundbox_clip_ex(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #20
  %5 = icmp eq ptr %1, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.BoundBox, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !102
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 3
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %12, ptr noundef %2) #18
  %13 = call fastcc zeroext i8 @view3d_boundbox_clip_m4(ptr noundef nonnull %1, ptr noundef nonnull %4) #19
  br label %14

14:                                               ; preds = %6, %3, %11
  %15 = phi i8 [ %13, %11 ], [ 1, %3 ], [ 1, %6 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #20
  ret i8 %15
}

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @view3d_boundbox_clip_m4(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [4 x float], align 16
  %4 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 3
  %5 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 1
  %6 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 2
  br label %10

7:                                                ; preds = %10
  %8 = add nuw nsw i64 %11, 1
  %9 = icmp eq i64 %8, 8
  br i1 %9, label %38, label %10, !llvm.loop !104

10:                                               ; preds = %2, %7
  %11 = phi i64 [ 0, %2 ], [ %8, %7 ]
  %12 = phi i32 [ -1, %2 ], [ %36, %7 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %13 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 %11
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef %13) #19
  store float 1.000000e+00, ptr %4, align 4, !tbaa !32
  call void @mul_m4_v4(ptr noundef %1, ptr noundef nonnull %3) #18
  %14 = load float, ptr %4, align 4, !tbaa !32
  %15 = fneg float %14
  %16 = load float, ptr %3, align 16, !tbaa !32
  %17 = fcmp olt float %16, %15
  %18 = zext i1 %17 to i32
  %19 = fcmp ogt float %16, %14
  %20 = or disjoint i32 %18, 2
  %21 = select i1 %19, i32 %20, i32 %18
  %22 = load float, ptr %5, align 4, !tbaa !32
  %23 = fcmp olt float %22, %15
  %24 = or disjoint i32 %21, 4
  %25 = select i1 %23, i32 %24, i32 %21
  %26 = fcmp ogt float %22, %14
  %27 = or disjoint i32 %25, 8
  %28 = select i1 %26, i32 %27, i32 %25
  %29 = load float, ptr %6, align 8, !tbaa !32
  %30 = fcmp olt float %29, %15
  %31 = add nuw nsw i32 %28, 16
  %32 = select i1 %30, i32 %31, i32 %28
  %33 = fcmp ogt float %29, %14
  %34 = add nuw nsw i32 %32, 32
  %35 = select i1 %33, i32 %34, i32 %32
  %36 = and i32 %35, %12
  %37 = icmp eq i32 %36, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  br i1 %37, label %38, label %7

38:                                               ; preds = %7, %10
  %39 = phi i8 [ 1, %10 ], [ 0, %7 ]
  ret i8 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_view3d_boundbox_clip(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.BoundBox, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !102
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 6
  %11 = tail call fastcc zeroext i8 @view3d_boundbox_clip_m4(ptr noundef nonnull %1, ptr noundef nonnull %10) #19
  br label %12

12:                                               ; preds = %4, %2, %9
  %13 = phi i8 [ %11, %9 ], [ 1, %2 ], [ 1, %4 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ED_view3d_depth_read_cached(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !105
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !107
  %8 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !108
  %10 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !109
  %12 = sub nsw i32 %1, %11
  %13 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 3, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !110
  %15 = sub nsw i32 %2, %14
  %16 = icmp eq ptr %7, null
  br i1 %16, label %40, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.ViewDepths, ptr %7, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !111
  %20 = icmp ne ptr %19, null
  %21 = icmp sgt i32 %12, 0
  %22 = select i1 %20, i1 %21, i1 false
  %23 = icmp sgt i32 %15, 0
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %40

25:                                               ; preds = %17
  %26 = load i16, ptr %7, align 8, !tbaa !113
  %27 = zext i16 %26 to i32
  %28 = icmp ult i32 %12, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ViewDepths, ptr %7, i64 0, i32 1
  %31 = load i16, ptr %30, align 2, !tbaa !114
  %32 = zext i16 %31 to i32
  %33 = icmp ult i32 %15, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = mul nuw nsw i32 %15, %27
  %36 = add nuw nsw i32 %35, %12
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, ptr %19, i64 %37
  %39 = load float, ptr %38, align 4, !tbaa !32
  br label %40

40:                                               ; preds = %3, %17, %25, %29, %34
  %41 = phi float [ %39, %34 ], [ 1.000000e+00, %29 ], [ 1.000000e+00, %25 ], [ 1.000000e+00, %17 ], [ 1.000000e+00, %3 ]
  ret float %41
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_view3d_depth_tag_update(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ViewDepths, ptr %3, i64 0, i32 6
  store i8 1, ptr %6, align 8, !tbaa !115
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @ED_view3d_dist_range_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 31
  %4 = load float, ptr %3, align 8, !tbaa !116
  %5 = fmul float %4, 0x3F50624DE0000000
  store float %5, ptr %1, align 4, !tbaa !32
  %6 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 33
  %7 = load float, ptr %6, align 8, !tbaa !117
  %8 = fmul float %7, 1.000000e+01
  %9 = getelementptr inbounds float, ptr %1, i64 1
  store float %8, ptr %9, align 4, !tbaa !32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ED_view3d_clip_range_get(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.CameraParams, align 4
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %6) #20
  call void @BKE_camera_params_init(ptr noundef nonnull %6) #18
  call void @BKE_camera_params_from_view3d(ptr noundef nonnull %6, ptr noundef %0, ptr noundef %1) #18
  %7 = icmp ne i8 %4, 0
  %8 = load i8, ptr %6, align 4
  %9 = icmp ne i8 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.CameraParams, ptr %6, i64 0, i32 11
  %13 = load <2 x float>, ptr %12, align 4, !tbaa !32
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %15 = fsub <2 x float> %14, %13
  %16 = extractelement <2 x float> %15, i64 0
  %17 = fdiv float 2.000000e+00, %16
  %18 = insertelement <2 x float> poison, float %17, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = fmul <2 x float> %13, %19
  store <2 x float> %20, ptr %12, align 4, !tbaa !32
  br label %21

21:                                               ; preds = %11, %5
  %22 = icmp eq ptr %2, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.CameraParams, ptr %6, i64 0, i32 11
  %25 = load float, ptr %24, align 4, !tbaa !118
  store float %25, ptr %2, align 4, !tbaa !32
  br label %26

26:                                               ; preds = %23, %21
  %27 = icmp eq ptr %3, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.CameraParams, ptr %6, i64 0, i32 12
  %30 = load float, ptr %29, align 4, !tbaa !120
  store float %30, ptr %3, align 4, !tbaa !32
  br label %31

31:                                               ; preds = %28, %26
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %6) #20
  ret i8 %8
}

; Function Attrs: optsize
declare void @BKE_camera_params_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_camera_params_from_view3d(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ED_view3d_viewplane_get(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef writeonly %4, ptr noundef writeonly %5, ptr noundef writeonly %6, ptr noundef writeonly %7) local_unnamed_addr #0 {
  %9 = alloca %struct.CameraParams, align 4
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %9) #20
  call void @BKE_camera_params_init(ptr noundef nonnull %9) #18
  call void @BKE_camera_params_from_view3d(ptr noundef nonnull %9, ptr noundef %0, ptr noundef %1) #18
  call void @BKE_camera_params_compute_viewplane(ptr noundef nonnull %9, i32 noundef %2, i32 noundef %3, float noundef 1.000000e+00, float noundef 1.000000e+00) #18
  %10 = icmp eq ptr %4, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.CameraParams, ptr %9, i64 0, i32 19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !121
  br label %13

13:                                               ; preds = %11, %8
  %14 = icmp eq ptr %5, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.CameraParams, ptr %9, i64 0, i32 11
  %17 = load float, ptr %16, align 4, !tbaa !118
  store float %17, ptr %5, align 4, !tbaa !32
  br label %18

18:                                               ; preds = %15, %13
  %19 = icmp eq ptr %6, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.CameraParams, ptr %9, i64 0, i32 12
  %22 = load float, ptr %21, align 4, !tbaa !120
  store float %22, ptr %6, align 4, !tbaa !32
  br label %23

23:                                               ; preds = %20, %18
  %24 = icmp eq ptr %7, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.CameraParams, ptr %9, i64 0, i32 17
  %27 = load float, ptr %26, align 4, !tbaa !122
  store float %27, ptr %7, align 4, !tbaa !32
  br label %28

28:                                               ; preds = %25, %23
  %29 = load i8, ptr %9, align 4, !tbaa !123
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %9) #20
  ret i8 %29
}

; Function Attrs: optsize
declare void @BKE_camera_params_compute_viewplane(ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_view3d_polygon_offset(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 18
  %4 = load float, ptr %3, align 8, !tbaa !41
  %5 = fcmp une float %1, 0.000000e+00
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 25
  %8 = load i8, ptr %7, align 1, !tbaa !21
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 24
  %12 = load i8, ptr %11, align 8, !tbaa !48
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load float, ptr %0, align 8, !tbaa !32
  %16 = tail call float @llvm.fabs.f32(float %15)
  %17 = getelementptr inbounds [4 x [4 x float]], ptr %0, i64 0, i64 1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !32
  %19 = tail call float @llvm.fabs.f32(float %18)
  %20 = tail call fastcc float @max_ff(float noundef %16, float noundef %19) #19
  %21 = fdiv float 1.000000e+00, %20
  br label %22

22:                                               ; preds = %6, %14, %10, %2
  %23 = phi float [ %21, %14 ], [ %4, %10 ], [ %4, %6 ], [ %4, %2 ]
  tail call void @bglPolygonOffset(float noundef %23, float noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #11 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: optsize
declare void @bglPolygonOffset(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @view3d_winmatrix_set(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.rctf, align 16
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %8 = load ptr, ptr %7, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  %9 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %10 = load i16, ptr %9, align 8, !tbaa !124
  %11 = sext i16 %10 to i32
  %12 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %13 = load i16, ptr %12, align 2, !tbaa !125
  %14 = sext i16 %13 to i32
  %15 = call zeroext i8 @ED_view3d_viewplane_get(ptr noundef %1, ptr noundef %8, i32 noundef %11, i32 noundef %14, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null) #19
  %16 = icmp eq i8 %15, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.RegionView3D, ptr %8, i64 0, i32 24
  store i8 %17, ptr %18, align 8, !tbaa !48
  %19 = icmp eq ptr %2, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %3
  %21 = load <4 x float>, ptr %4, align 16
  %22 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %4) #19
  %23 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  %24 = load float, ptr %23, align 8, !tbaa !126
  %25 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %4) #19
  %26 = load <2 x i16>, ptr %9, align 8, !tbaa !127
  %27 = sitofp <2 x i16> %26 to <2 x float>
  %28 = shufflevector <2 x float> %27, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %29 = load <4 x float>, ptr %2, align 4, !tbaa !32
  %30 = fdiv <4 x float> %29, %28
  %31 = insertelement <4 x float> poison, float %22, i64 0
  %32 = insertelement <4 x float> %31, float %25, i64 1
  %33 = shufflevector <4 x float> %32, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %34 = insertelement <4 x float> %21, float %24, i64 1
  %35 = shufflevector <4 x float> %34, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %36 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %33, <4 x float> %30, <4 x float> %35)
  store <4 x float> %36, ptr %4, align 16
  br label %37

37:                                               ; preds = %20, %3
  %38 = load float, ptr %4, align 16, !tbaa !128
  %39 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 1
  %40 = load float, ptr %39, align 4, !tbaa !129
  %41 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  %42 = load float, ptr %41, align 8, !tbaa !126
  %43 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 3
  %44 = load float, ptr %43, align 4, !tbaa !130
  %45 = load float, ptr %5, align 4, !tbaa !32
  %46 = load float, ptr %6, align 4, !tbaa !32
  br i1 %16, label %48, label %47

47:                                               ; preds = %37
  call void @wmOrtho(float noundef %38, float noundef %40, float noundef %42, float noundef %44, float noundef %45, float noundef %46) #18
  br label %49

48:                                               ; preds = %37
  call void @wmFrustum(float noundef %38, float noundef %40, float noundef %42, float noundef %44, float noundef %45, float noundef %46) #18
  br label %49

49:                                               ; preds = %48, %47
  call void @glGetFloatv(i32 noundef 2983, ptr noundef nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !129
  %4 = load float, ptr %0, align 4, !tbaa !128
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !130
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !126
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: optsize
declare void @wmOrtho(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wmFrustum(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glGetFloatv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_view3d_quat_from_axis_view(i8 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = add i8 %0, -1
  %4 = icmp ult i8 %3, 6
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = zext nneg i8 %0 to i64
  %7 = add nuw nsw i64 %6, 4294967295
  %8 = and i64 %7, 4294967295
  %9 = getelementptr inbounds [6 x [4 x float]], ptr @view3d_quat_axis, i64 0, i64 %8
  tail call void @copy_qt_qt(ptr noundef %1, ptr noundef nonnull %9) #18
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi i8 [ 1, %5 ], [ 0, %2 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ED_view3d_quat_to_axis_view(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %2, %9
  %4 = phi i64 [ 1, %2 ], [ %10, %9 ]
  %5 = add nsw i64 %4, -1
  %6 = getelementptr inbounds [6 x [4 x float]], ptr @view3d_quat_axis, i64 0, i64 %5
  %7 = tail call float @angle_qtqt(ptr noundef %0, ptr noundef nonnull %6) #18
  %8 = fcmp olt float %7, %1
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = add nuw nsw i64 %4, 1
  %11 = icmp eq i64 %10, 7
  br i1 %11, label %14, label %3, !llvm.loop !131

12:                                               ; preds = %3
  %13 = trunc i64 %4 to i8
  br label %14

14:                                               ; preds = %9, %12
  %15 = phi i8 [ %13, %12 ], [ 0, %9 ]
  ret i8 %15
}

; Function Attrs: optsize
declare float @angle_qtqt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @ED_view3d_lock_view_from_index(i32 noundef %0) local_unnamed_addr #11 {
  %2 = icmp ult i32 %0, 3
  %3 = trunc i32 %0 to i24
  %4 = shl nuw nsw i24 %3, 3
  %5 = lshr i24 263425, %4
  %6 = trunc i24 %5 to i8
  %7 = select i1 %2, i8 %6, i8 0
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_view3d_lock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 26
  %3 = load i8, ptr %2, align 2, !tbaa !46
  %4 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 17
  %5 = tail call zeroext i8 @ED_view3d_quat_from_axis_view(i8 noundef zeroext %3, ptr noundef nonnull %4) #19, !range !43
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @view3d_viewmatrix_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [3 x float], align 4
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 25
  %10 = load i8, ptr %9, align 1, !tbaa !21
  %11 = icmp eq i8 %10, 2
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !23
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  tail call void @BKE_object_where_is_calc(ptr noundef %0, ptr noundef nonnull %14) #18
  %17 = load ptr, ptr %13, align 8, !tbaa !23
  tail call fastcc void @obmat_to_viewmat(ptr noundef nonnull %2, ptr noundef %17) #19
  br label %111

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 1
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 17
  tail call void @quat_to_mat4(ptr noundef nonnull %19, ptr noundef nonnull %20) #18
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 18
  %22 = load float, ptr %21, align 8, !tbaa !41
  %23 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 1, i64 3, i64 2
  %24 = load float, ptr %23, align 8, !tbaa !32
  %25 = fsub float %24, %22
  store float %25, ptr %23, align 8, !tbaa !32
  br label %111

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 27
  %28 = load i8, ptr %27, align 1, !tbaa !45
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = tail call zeroext i8 @ED_view3d_lock(ptr noundef nonnull %2) #19, !range !43
  br label %33

33:                                               ; preds = %31, %26
  %34 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 1
  %35 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 17
  tail call void @quat_to_mat4(ptr noundef nonnull %34, ptr noundef nonnull %35) #18
  %36 = load i8, ptr %9, align 1, !tbaa !21
  %37 = icmp eq i8 %36, 1
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 18
  %40 = load float, ptr %39, align 8, !tbaa !41
  %41 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 1, i64 3, i64 2
  %42 = load float, ptr %41, align 8, !tbaa !32
  %43 = fsub float %42, %40
  store float %43, ptr %41, align 8, !tbaa !32
  br label %44

44:                                               ; preds = %38, %33
  %45 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 16
  %46 = load ptr, ptr %45, align 8, !tbaa !132
  %47 = icmp eq ptr %46, null
  br i1 %47, label %74, label %48

48:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  %49 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 47
  %50 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 47, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %50) #19
  %51 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 3
  %52 = load i16, ptr %51, align 8, !tbaa !24
  %53 = icmp eq i16 %52, 25
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 21
  %56 = load i8, ptr %55, align 8, !tbaa !33
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 18
  %60 = load ptr, ptr %59, align 8, !tbaa !133
  %61 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %60, ptr noundef nonnull %55) #18
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.bPoseChannel, ptr %61, i64 0, i32 29, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %64) #19
  call void @mul_m4_v3(ptr noundef nonnull %49, ptr noundef nonnull %4) #18
  br label %65

65:                                               ; preds = %58, %63, %54, %48
  %66 = load float, ptr %4, align 4, !tbaa !32
  %67 = fneg float %66
  %68 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !32
  %70 = fneg float %69
  %71 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !32
  %73 = fneg float %72
  call void @translate_m4(ptr noundef nonnull %34, float noundef %67, float noundef %70, float noundef %73) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  br label %95

74:                                               ; preds = %44
  %75 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 25
  %76 = load i16, ptr %75, align 2, !tbaa !134
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  %79 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %0, ptr noundef nonnull %1) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %79) #19
  %80 = load float, ptr %5, align 4, !tbaa !32
  %81 = fneg float %80
  %82 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !32
  %84 = fneg float %83
  %85 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !32
  %87 = fneg float %86
  tail call void @translate_m4(ptr noundef nonnull %34, float noundef %81, float noundef %84, float noundef %87) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  br label %95

88:                                               ; preds = %74
  %89 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 22
  %90 = load float, ptr %89, align 8, !tbaa !32
  %91 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 22, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !32
  %93 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 22, i64 2
  %94 = load float, ptr %93, align 8, !tbaa !32
  tail call void @translate_m4(ptr noundef nonnull %34, float noundef %90, float noundef %92, float noundef %94) #18
  br label %111

95:                                               ; preds = %78, %65
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #20
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %34) #18
  %96 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %6) #18
  %97 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 30
  %98 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 24
  %99 = load i8, ptr %98, align 8, !tbaa !48
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 18
  %103 = load float, ptr %102, align 8, !tbaa !41
  br label %104

104:                                              ; preds = %95, %101
  %105 = phi float [ %103, %101 ], [ 1.000000e+00, %95 ]
  call fastcc void @mul_v2_v2fl(ptr noundef nonnull %8, ptr noundef nonnull %97, float noundef %105) #19
  %106 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0.000000e+00, ptr %106, align 4, !tbaa !32
  call void @mul_mat3_m4_v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #18
  %107 = load float, ptr %8, align 4, !tbaa !32
  %108 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !32
  %110 = load float, ptr %106, align 4, !tbaa !32
  call void @translate_m4(ptr noundef nonnull %34, float noundef %107, float noundef %109, float noundef %110) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #20
  br label %111

111:                                              ; preds = %104, %88, %16, %18
  ret void
}

; Function Attrs: optsize
declare void @BKE_object_where_is_calc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @obmat_to_viewmat(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #20
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 26
  store i8 0, ptr %5, align 2, !tbaa !46
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %6) #18
  call void @normalize_m4(ptr noundef nonnull %3) #18
  %7 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 1
  %8 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %3) #18
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef nonnull %7) #18
  %9 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 17
  call void @mat3_to_quat(ptr noundef nonnull %9, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #20
  ret void
}

; Function Attrs: optsize
declare void @quat_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @translate_m4(ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #7 {
  %4 = load float, ptr %1, align 4, !tbaa !32
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !32
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !32
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !32
  ret void
}

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local signext i16 @view3d_opengl_select(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.rctf, align 16
  %7 = load ptr, ptr %0, align 8, !tbaa !135
  %8 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !136
  %10 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  %12 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !137
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !138
  %18 = icmp eq ptr %17, null
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %15, %5
  %21 = phi i8 [ 0, %5 ], [ %19, %15 ]
  %22 = icmp eq i8 %4, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = tail call zeroext i8 @GPU_select_query_check_active() #18
  %25 = icmp eq i8 %24, 0
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i1 [ true, %20 ], [ %25, %23 ]
  %28 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !139
  %29 = or i32 %28, 32
  store i32 %29, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !139
  %30 = load <2 x i32>, ptr %3, align 4, !tbaa !95
  %31 = shufflevector <2 x i32> %30, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %32 = icmp eq <2 x i32> %30, %31
  %33 = extractelement <2 x i1> %32, i64 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !141
  %37 = shufflevector <2 x i32> %30, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %38 = insertelement <4 x i32> %37, i32 %36, i64 1
  %39 = shufflevector <4 x i32> %38, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %40 = add nsw <4 x i32> %39, <i32 -12, i32 12, i32 -12, i32 12>
  %41 = sitofp <4 x i32> %40 to <4 x float>
  store <4 x float> %41, ptr %6, align 16, !tbaa !32
  br label %43

42:                                               ; preds = %26
  call void @BLI_rctf_rcti_copy(ptr noundef nonnull %6, ptr noundef nonnull %3) #18
  br label %43

43:                                               ; preds = %42, %34
  call void @view3d_winmatrix_set(ptr noundef %11, ptr noundef %9, ptr noundef nonnull %6) #19
  %44 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !105
  %46 = getelementptr inbounds %struct.RegionView3D, ptr %45, i64 0, i32 3
  %47 = getelementptr inbounds %struct.RegionView3D, ptr %45, i64 0, i32 1
  call void @mul_m4_m4m4(ptr noundef nonnull %46, ptr noundef %45, ptr noundef nonnull %47) #18
  %48 = getelementptr inbounds %struct.View3D, ptr %9, i64 0, i32 24
  %49 = load i16, ptr %48, align 8, !tbaa !40
  %50 = icmp sgt i16 %49, 2
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.View3D, ptr %9, i64 0, i32 47
  store i8 1, ptr %52, align 8, !tbaa !142
  call void @glEnable(i32 noundef 2929) #18
  br label %53

53:                                               ; preds = %51, %43
  %54 = load ptr, ptr %44, align 8, !tbaa !105
  %55 = getelementptr inbounds %struct.RegionView3D, ptr %54, i64 0, i32 32
  %56 = load i16, ptr %55, align 2, !tbaa !51
  %57 = and i16 %56, 4
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  call void @ED_view3d_clipping_set(ptr noundef nonnull %54) #18
  br label %60

60:                                               ; preds = %59, %53
  %61 = select i1 %27, i8 1, i8 2
  call void @GPU_select_begin(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %6, i8 noundef zeroext %61, i32 noundef 0) #18
  call fastcc void @view3d_select_loop(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %11, i8 noundef zeroext %21) #19
  %62 = call i32 @GPU_select_end() #18
  br i1 %27, label %67, label %63

63:                                               ; preds = %60
  %64 = shl i32 %62, 16
  %65 = ashr exact i32 %64, 16
  call void @GPU_select_begin(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %6, i8 noundef zeroext 3, i32 noundef %65) #18
  call fastcc void @view3d_select_loop(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %11, i8 noundef zeroext %21) #19
  %66 = call i32 @GPU_select_end() #18
  br label %67

67:                                               ; preds = %63, %60
  %68 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !139
  %69 = and i32 %68, -33
  store i32 %69, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !139
  call void @view3d_winmatrix_set(ptr noundef %11, ptr noundef nonnull %9, ptr noundef null) #19
  %70 = load ptr, ptr %44, align 8, !tbaa !105
  %71 = getelementptr inbounds %struct.RegionView3D, ptr %70, i64 0, i32 3
  %72 = getelementptr inbounds %struct.RegionView3D, ptr %70, i64 0, i32 1
  call void @mul_m4_m4m4(ptr noundef nonnull %71, ptr noundef %70, ptr noundef nonnull %72) #18
  %73 = load i16, ptr %48, align 8, !tbaa !40
  %74 = icmp sgt i16 %73, 2
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.View3D, ptr %9, i64 0, i32 47
  store i8 0, ptr %76, align 8, !tbaa !142
  call void @glDisable(i32 noundef 2929) #18
  br label %77

77:                                               ; preds = %75, %67
  %78 = load ptr, ptr %44, align 8, !tbaa !105
  %79 = getelementptr inbounds %struct.RegionView3D, ptr %78, i64 0, i32 32
  %80 = load i16, ptr %79, align 2, !tbaa !51
  %81 = and i16 %80, 4
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  call void @ED_view3d_clipping_disable() #18
  br label %84

84:                                               ; preds = %83, %77
  %85 = and i32 %62, 32768
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  br label %89

89:                                               ; preds = %87, %84
  %90 = trunc i32 %62 to i16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  ret i16 %90
}

; Function Attrs: optsize
declare zeroext i8 @GPU_select_query_check_active() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_rctf_rcti_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_clipping_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_select_begin(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view3d_select_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.Base, align 8
  %7 = alloca [4 x [4 x float]], align 16
  %8 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !138
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !24
  switch i16 %13, label %23 [
    i16 5, label %14
    i16 25, label %17
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !143
  tail call void @draw_object(ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef %16, i16 noundef signext 3) #18
  br label %111

17:                                               ; preds = %11
  %18 = tail call i32 @BDR_drawSketchNames(ptr noundef nonnull %0) #18
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %111

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !143
  tail call void @draw_object(ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef %22, i16 noundef signext 3) #18
  br label %111

23:                                               ; preds = %11, %5
  %24 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 49
  store i8 1, ptr %24, align 2, !tbaa !144
  %25 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !52
  %27 = icmp eq ptr %26, null
  br i1 %27, label %110, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 22
  %30 = icmp eq i8 %4, 0
  %31 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %32 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 4
  %33 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 7
  br label %34

34:                                               ; preds = %28, %106
  %35 = phi ptr [ %26, %28 ], [ %108, %106 ]
  %36 = phi i16 [ 1, %28 ], [ %107, %106 ]
  %37 = getelementptr inbounds %struct.Base, ptr %35, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !145
  %39 = load i32, ptr %29, align 8, !tbaa !147
  %40 = and i32 %39, %38
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %106, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.Base, ptr %35, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !148
  %45 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 102
  %46 = load i8, ptr %45, align 8, !tbaa !149
  %47 = and i8 %46, 2
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  br i1 %30, label %59, label %50

50:                                               ; preds = %49
  %51 = load ptr, ptr %31, align 8, !tbaa !137
  %52 = getelementptr inbounds %struct.Object, ptr %51, i64 0, i32 19
  %53 = load ptr, ptr %52, align 8, !tbaa !29
  %54 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 19
  %55 = load ptr, ptr %54, align 8, !tbaa !29
  %56 = icmp eq ptr %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50, %42
  %58 = getelementptr inbounds %struct.Base, ptr %35, i64 0, i32 3
  store i32 0, ptr %58, align 4, !tbaa !150
  br label %106

59:                                               ; preds = %50, %49
  %60 = sext i16 %36 to i32
  %61 = getelementptr inbounds %struct.Base, ptr %35, i64 0, i32 3
  store i32 %60, ptr %61, align 4, !tbaa !150
  %62 = call zeroext i8 @GPU_select_load_id(i32 noundef %60) #18
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %104, label %64

64:                                               ; preds = %59
  call void @draw_object(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %2, ptr noundef nonnull %35, i16 noundef signext 3) #18
  %65 = load ptr, ptr %43, align 8, !tbaa !148
  %66 = getelementptr inbounds %struct.Object, ptr %65, i64 0, i32 55
  %67 = load i16, ptr %66, align 8, !tbaa !151
  %68 = and i16 %67, 2840
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %104, label %70

70:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #20
  store i32 512, ptr %32, align 8, !tbaa !152
  %71 = load ptr, ptr @G, align 8, !tbaa !153
  %72 = getelementptr inbounds %struct.Main, ptr %71, i64 0, i32 46
  %73 = load ptr, ptr %72, align 8, !tbaa !154
  %74 = call ptr @object_duplilist(ptr noundef %73, ptr noundef %1, ptr noundef nonnull %65) #18
  %75 = load ptr, ptr %74, align 8, !tbaa !52
  %76 = icmp eq ptr %75, null
  br i1 %76, label %103, label %77

77:                                               ; preds = %70, %77
  %78 = phi ptr [ %101, %77 ], [ %75, %70 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #20
  %79 = getelementptr inbounds %struct.DupliObject, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !156
  store ptr %80, ptr %33, align 8, !tbaa !148
  %81 = getelementptr inbounds %struct.Object, ptr %80, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %81) #18
  %82 = load ptr, ptr %79, align 8, !tbaa !156
  %83 = getelementptr inbounds %struct.Object, ptr %82, i64 0, i32 47
  %84 = getelementptr inbounds %struct.DupliObject, ptr %78, i64 0, i32 3
  call void @copy_m4_m4(ptr noundef nonnull %83, ptr noundef nonnull %84) #18
  %85 = load ptr, ptr %33, align 8, !tbaa !148
  %86 = getelementptr inbounds %struct.Object, ptr %85, i64 0, i32 87
  %87 = load i8, ptr %86, align 2, !tbaa !158
  %88 = load ptr, ptr %43, align 8, !tbaa !148
  %89 = getelementptr inbounds %struct.Object, ptr %88, i64 0, i32 87
  %90 = load i8, ptr %89, align 2, !tbaa !158
  %91 = call i8 @llvm.umin.i8(i8 %87, i8 %90)
  store i8 %91, ptr %86, align 2, !tbaa !158
  %92 = getelementptr inbounds %struct.Object, ptr %85, i64 0, i32 86
  %93 = load i16, ptr %92, align 4, !tbaa !159
  %94 = getelementptr inbounds %struct.Object, ptr %88, i64 0, i32 86
  %95 = load i16, ptr %94, align 4, !tbaa !159
  store i16 %95, ptr %92, align 4, !tbaa !159
  call void @draw_object(ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef nonnull %6, i16 noundef signext 3) #18
  %96 = load ptr, ptr %33, align 8, !tbaa !148
  %97 = getelementptr inbounds %struct.Object, ptr %96, i64 0, i32 87
  store i8 %87, ptr %97, align 2, !tbaa !158
  %98 = getelementptr inbounds %struct.Object, ptr %96, i64 0, i32 86
  store i16 %93, ptr %98, align 4, !tbaa !159
  %99 = load ptr, ptr %79, align 8, !tbaa !156
  %100 = getelementptr inbounds %struct.Object, ptr %99, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %100, ptr noundef nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #20
  %101 = load ptr, ptr %78, align 8, !tbaa !52
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %77, !llvm.loop !160

103:                                              ; preds = %77, %70
  call void @free_object_duplilist(ptr noundef nonnull %74) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #20
  br label %104

104:                                              ; preds = %64, %103, %59
  %105 = add i16 %36, 1
  br label %106

106:                                              ; preds = %34, %104, %57
  %107 = phi i16 [ %36, %57 ], [ %105, %104 ], [ %36, %34 ]
  %108 = load ptr, ptr %35, align 8, !tbaa !52
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %34, !llvm.loop !161

110:                                              ; preds = %106, %23
  store i8 0, ptr %24, align 2, !tbaa !144
  br label %111

111:                                              ; preds = %110, %20, %17, %14
  ret void
}

; Function Attrs: optsize
declare i32 @GPU_select_end() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_clipping_disable() local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local i32 @ED_view3d_scene_layer_set(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #12 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi i64 [ 0, %3 ], [ %12, %4 ]
  %6 = phi <4 x i32> [ zeroinitializer, %3 ], [ %11, %4 ]
  %7 = getelementptr inbounds i32, ptr %1, i64 %5
  %8 = load <4 x i32>, ptr %7, align 4, !tbaa !95
  %9 = icmp ne <4 x i32> %8, zeroinitializer
  %10 = zext <4 x i1> %9 to <4 x i32>
  %11 = add <4 x i32> %6, %10
  %12 = add nuw i64 %5, 4
  %13 = icmp eq i64 %12, 20
  br i1 %13, label %14, label %4, !llvm.loop !162

14:                                               ; preds = %4
  %15 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %11)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %58, label %17

17:                                               ; preds = %14
  %18 = icmp eq ptr %2, null
  br label %19

19:                                               ; preds = %17, %32
  %20 = phi i64 [ 0, %17 ], [ %42, %32 ]
  %21 = phi i32 [ %0, %17 ], [ %41, %32 ]
  br i1 %18, label %32, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds i32, ptr %1, i64 %20
  %24 = load i32, ptr %23, align 4, !tbaa !95
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = trunc i64 %20 to i32
  %28 = shl nuw nsw i32 1, %27
  %29 = and i32 %28, %21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 %28, ptr %2, align 4, !tbaa !95
  br label %32

32:                                               ; preds = %22, %26, %31, %19
  %33 = getelementptr inbounds i32, ptr %1, i64 %20
  %34 = load i32, ptr %33, align 4, !tbaa !95
  %35 = icmp eq i32 %34, 0
  %36 = trunc i64 %20 to i32
  %37 = shl nuw nsw i32 1, %36
  %38 = or i32 %37, %21
  %39 = xor i32 %37, -1
  %40 = and i32 %21, %39
  %41 = select i1 %35, i32 %40, i32 %38
  %42 = add nuw nsw i64 %20, 1
  %43 = icmp eq i64 %42, 20
  br i1 %43, label %44, label %19, !llvm.loop !163

44:                                               ; preds = %32
  br i1 %18, label %58, label %45

45:                                               ; preds = %44
  %46 = load i32, ptr %2, align 4, !tbaa !95
  %47 = and i32 %46, %41
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %58

49:                                               ; preds = %52
  %50 = add nuw nsw i32 %53, 1
  %51 = icmp eq i32 %50, 20
  br i1 %51, label %58, label %52, !llvm.loop !164

52:                                               ; preds = %45, %49
  %53 = phi i32 [ %50, %49 ], [ 0, %45 ]
  %54 = shl nuw nsw i32 1, %53
  %55 = and i32 %54, %41
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %49, label %57

57:                                               ; preds = %52
  store i32 %54, ptr %2, align 4, !tbaa !95
  br label %58

58:                                               ; preds = %49, %44, %45, %57, %14
  %59 = phi i32 [ %0, %14 ], [ %41, %57 ], [ %41, %45 ], [ %41, %44 ], [ %41, %49 ]
  ret i32 %59
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_localview(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @localview_exec, ptr %4, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %6, align 8, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @localview_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @WM_operator_smooth_viewtx_get(ptr noundef %1) #18
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #18
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #18
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #18
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #18
  %9 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #18
  %10 = getelementptr inbounds %struct.View3D, ptr %9, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = tail call fastcc zeroext i8 @view3d_localview_exit(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %3) #19, !range !43
  br label %19

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  %18 = tail call fastcc zeroext i8 @view3d_localview_init(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %3, ptr noundef %17) #19, !range !43
  br label %19

19:                                               ; preds = %15, %13
  %20 = phi i8 [ %14, %13 ], [ %18, %15 ]
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  tail call void @DAG_id_type_tag(ptr noundef %6, i16 noundef signext 16975) #18
  tail call void @ED_area_tag_redraw(ptr noundef %8) #18
  %23 = load ptr, ptr %10, align 8, !tbaa !19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %7) #18
  br label %26

26:                                               ; preds = %19, %22, %25
  %27 = phi i32 [ 4, %25 ], [ 4, %22 ], [ 2, %19 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_view3d_context_activate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_screen(ptr noundef %0) #18
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %7 = load i8, ptr %6, align 8, !tbaa !165
  %8 = icmp eq i8 %7, 1
  br i1 %8, label %19, label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.bScreen, ptr %2, i64 0, i32 3
  br label %11

11:                                               ; preds = %15, %9
  %12 = phi ptr [ %10, %9 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ScrArea, ptr %13, i64 0, i32 8
  %17 = load i8, ptr %16, align 8, !tbaa !165
  %18 = icmp eq i8 %17, 1
  br i1 %18, label %19, label %11, !llvm.loop !167

19:                                               ; preds = %15, %5
  %20 = phi ptr [ %3, %5 ], [ %13, %15 ]
  %21 = getelementptr inbounds %struct.ScrArea, ptr %20, i64 0, i32 20
  br label %22

22:                                               ; preds = %26, %19
  %23 = phi ptr [ %21, %19 ], [ %24, %26 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !52
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 8
  %28 = load i16, ptr %27, align 2, !tbaa !5
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %22, !llvm.loop !168

30:                                               ; preds = %26
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %20) #18
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %24) #18
  br label %31

31:                                               ; preds = %11, %22, %30
  %32 = phi i8 [ 1, %30 ], [ 0, %22 ], [ 0, %11 ]
  ret i8 %32
}

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_wm_area_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_game_start(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @game_engine_exec, ptr %4, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @game_engine_poll, ptr %5, align 8, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @game_engine_exec(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  tail call void @BKE_report(ptr noundef %4, i32 noundef 32, ptr noundef nonnull @.str.27) #18
  ret i32 2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @game_engine_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @CTX_data_mode_enum(ptr noundef %0) #18
  %12 = icmp eq i32 %11, 13
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !169
  %16 = tail call zeroext i8 @BKE_scene_uses_blender_game(ptr noundef %15) #18
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %13, %10, %7, %4, %1
  %20 = phi i32 [ 0, %1 ], [ 0, %4 ], [ 0, %7 ], [ 0, %10 ], [ %18, %13 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ED_view3d_pixel_size(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 3
  %4 = tail call fastcc float @mul_project_m4_v3_zfac(ptr noundef nonnull %3, ptr noundef %1) #19
  %5 = getelementptr inbounds %struct.RegionView3D, ptr %0, i64 0, i32 21
  %6 = load float, ptr %5, align 4, !tbaa !171
  %7 = fmul float %4, %6
  %8 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !172
  %9 = fmul float %7, %8
  ret float %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @mul_project_m4_v3_zfac(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !32
  %5 = load float, ptr %1, align 4, !tbaa !32
  %6 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  %7 = load float, ptr %6, align 4, !tbaa !32
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !32
  %10 = fmul float %7, %9
  %11 = tail call float @llvm.fmuladd.f32(float %4, float %5, float %10)
  %12 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %13 = load float, ptr %12, align 4, !tbaa !32
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !32
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %15, float %11)
  %17 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  %18 = load float, ptr %17, align 4, !tbaa !32
  %19 = fadd float %16, %18
  ret float %19
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local float @ED_view3d_radius_to_persp_dist(float noundef %0, float noundef %1) local_unnamed_addr #13 {
  %3 = fmul float %1, 5.000000e-01
  %4 = fsub float 0x400921FB60000000, %0
  %5 = fmul float %4, 5.000000e-01
  %6 = tail call float @cosf(float noundef %5) #18
  %7 = fdiv float 1.000000e+00, %6
  %8 = tail call float @llvm.fabs.f32(float %7)
  %9 = fmul float %3, %8
  ret float %9
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef float @ED_view3d_radius_to_ortho_dist(float noundef %0, float noundef %1) local_unnamed_addr #11 {
  %3 = fdiv float 3.200000e+01, %0
  %4 = fdiv float %1, %3
  ret float %4
}

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @interp_qt_qtqt(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_lastview_store(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_object_tfm_protected_backup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_to_object(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_object_tfm_protected_restore(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_camera_view_frame_fit_to_scene(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_object_apply_mat4(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_operator_smooth_viewtx_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_v4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @normalize_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mat3_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @draw_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BDR_drawSketchNames(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @GPU_select_load_id(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @object_duplilist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_object_duplilist(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @view3d_localview_exit(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !176
  %9 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %59, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 22
  %14 = load i32, ptr %13, align 8, !tbaa !147
  %15 = and i32 %14, -16777216
  tail call fastcc void @restore_localviewdata(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5) #19
  %16 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 26
  %17 = load i16, ptr %16, align 4, !tbaa !77
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 12
  %21 = load i32, ptr %20, align 8, !tbaa !177
  store i32 %21, ptr %13, align 8, !tbaa !147
  br label %22

22:                                               ; preds = %19, %12
  %23 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !52
  %25 = icmp eq ptr %24, null
  br i1 %25, label %58, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 23
  %28 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  br label %29

29:                                               ; preds = %26, %55
  %30 = phi ptr [ %24, %26 ], [ %56, %55 ]
  %31 = getelementptr inbounds %struct.Base, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !145
  %33 = and i32 %32, %15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %29
  %36 = sub i32 %32, %15
  store i32 %36, ptr %31, align 8, !tbaa !145
  %37 = icmp eq i32 %32, %15
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, ptr %27, align 4, !tbaa !178
  store i32 %39, ptr %31, align 8, !tbaa !145
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi i32 [ %39, %38 ], [ %36, %35 ]
  %42 = getelementptr inbounds %struct.Base, ptr %30, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !148
  %44 = load ptr, ptr %28, align 8, !tbaa !137
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.Base, ptr %30, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !152
  %49 = or i32 %48, 1
  store i32 %49, ptr %47, align 8, !tbaa !152
  %50 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 53
  %51 = load i16, ptr %50, align 4, !tbaa !179
  %52 = or i16 %51, 1
  store i16 %52, ptr %50, align 4, !tbaa !179
  br label %53

53:                                               ; preds = %46, %40
  %54 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 52
  store i32 %41, ptr %54, align 8, !tbaa !180
  br label %55

55:                                               ; preds = %29, %53
  %56 = load ptr, ptr %30, align 8, !tbaa !52
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %29, !llvm.loop !181

58:                                               ; preds = %55, %22
  tail call void @DAG_on_visible_update(ptr noundef %2, i8 noundef zeroext 0) #18
  br label %59

59:                                               ; preds = %6, %58
  %60 = phi i8 [ 1, %58 ], [ 0, %6 ]
  ret i8 %60
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @view3d_localview_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca [3 x float], align 8
  %9 = alloca [3 x float], align 8
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca float, align 4
  %13 = alloca [3 x float], align 4
  %14 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #20
  %16 = getelementptr inbounds %struct.View3D, ptr %15, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %177

19:                                               ; preds = %7
  %20 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0x46293E5940000000, ptr %20, align 8, !tbaa !32
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %8, align 8, !tbaa !32
  %21 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %21, align 8, !tbaa !32
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %9, align 8, !tbaa !32
  %22 = tail call fastcc i32 @free_localbit(ptr noundef %2) #19, !range !182
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  tail call void @BKE_report(ptr noundef %6, i32 noundef 32, ptr noundef nonnull @.str.24) #18
  br label %143

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !137
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  call void @BKE_object_minmax(ptr noundef nonnull %27, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext 0) #18
  %30 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !143
  %32 = getelementptr inbounds %struct.Base, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !145
  %34 = or i32 %33, %22
  store i32 %34, ptr %32, align 8, !tbaa !145
  %35 = load ptr, ptr %26, align 8, !tbaa !137
  %36 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 52
  store i32 %34, ptr %36, align 8, !tbaa !180
  br label %72

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !52
  %40 = icmp eq ptr %39, null
  br i1 %40, label %72, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.View3D, ptr %15, i64 0, i32 22
  br label %43

43:                                               ; preds = %41, %68
  %44 = phi ptr [ %39, %41 ], [ %70, %68 ]
  %45 = phi i8 [ 0, %41 ], [ %69, %68 ]
  %46 = getelementptr inbounds %struct.Base, ptr %44, i64 0, i32 4
  %47 = load i32, ptr %46, align 8, !tbaa !152
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %68, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.Base, ptr %44, i64 0, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !145
  %53 = load i32, ptr %42, align 8, !tbaa !147
  %54 = and i32 %53, %52
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.Base, ptr %44, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !148
  %59 = getelementptr inbounds %struct.Object, ptr %58, i64 0, i32 102
  %60 = load i8, ptr %59, align 8, !tbaa !149
  %61 = and i8 %60, 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  call void @BKE_object_minmax(ptr noundef nonnull %58, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext 0) #18
  %64 = load i32, ptr %51, align 8, !tbaa !145
  %65 = or i32 %64, %22
  store i32 %65, ptr %51, align 8, !tbaa !145
  %66 = load ptr, ptr %57, align 8, !tbaa !148
  %67 = getelementptr inbounds %struct.Object, ptr %66, i64 0, i32 52
  store i32 %65, ptr %67, align 8, !tbaa !180
  br label %68

68:                                               ; preds = %43, %50, %56, %63
  %69 = phi i8 [ 1, %63 ], [ %45, %56 ], [ %45, %50 ], [ %45, %43 ]
  %70 = load ptr, ptr %44, align 8, !tbaa !52
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %43, !llvm.loop !183

72:                                               ; preds = %68, %37, %29
  %73 = phi i8 [ 1, %29 ], [ 0, %37 ], [ %69, %68 ]
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %8) #19
  %74 = load float, ptr %10, align 4, !tbaa !32
  %75 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !32
  %77 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !32
  %79 = call fastcc float @max_fff(float noundef %74, float noundef %76, float noundef %78) #19
  %80 = getelementptr inbounds %struct.View3D, ptr %15, i64 0, i32 32
  %81 = load float, ptr %80, align 4, !tbaa !184
  %82 = fmul float %81, 1.500000e+00
  %83 = call fastcc float @max_ff(float noundef %79, float noundef %82) #19
  %84 = getelementptr inbounds %struct.View3D, ptr %15, i64 0, i32 30
  %85 = load float, ptr %84, align 4, !tbaa !42
  %86 = call float @focallength_to_fov(float noundef %85, float noundef 3.200000e+01) #18
  %87 = fmul float %83, 5.000000e-01
  %88 = call float @ED_view3d_radius_to_persp_dist(float noundef %86, float noundef %87) #19
  %89 = load float, ptr %84, align 4, !tbaa !42
  %90 = call float @ED_view3d_radius_to_ortho_dist(float noundef %89, float noundef %87) #19
  %91 = icmp eq i8 %73, 1
  br i1 %91, label %92, label %143

92:                                               ; preds = %72
  %93 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !52
  %94 = call ptr %93(i64 noundef 376, ptr noundef nonnull @.str.25) #18
  store ptr %94, ptr %16, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %94, ptr noundef nonnull align 8 dereferenceable(376) %15, i64 376, i1 false)
  call void @mid_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %9) #18
  %95 = getelementptr inbounds %struct.View3D, ptr %15, i64 0, i32 35
  call fastcc void @copy_v3_v3(ptr noundef nonnull %95, ptr noundef nonnull %11) #19
  %96 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 20
  %97 = load ptr, ptr %96, align 8, !tbaa !52
  %98 = icmp eq ptr %97, null
  br i1 %98, label %141, label %99

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.View3D, ptr %15, i64 0, i32 15
  br label %101

101:                                              ; preds = %99, %138
  %102 = phi ptr [ %97, %99 ], [ %139, %138 ]
  %103 = getelementptr inbounds %struct.ARegion, ptr %102, i64 0, i32 8
  %104 = load i16, ptr %103, align 2, !tbaa !5
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %106, label %138

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.ARegion, ptr %102, i64 0, i32 30
  %108 = load ptr, ptr %107, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #20
  %109 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !52
  %110 = call ptr %109(i64 noundef 880, ptr noundef nonnull @.str.26) #18
  %111 = getelementptr inbounds %struct.RegionView3D, ptr %108, i64 0, i32 10
  store ptr %110, ptr %111, align 8, !tbaa !185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(880) %110, ptr noundef nonnull align 8 dereferenceable(880) %108, i64 880, i1 false)
  call fastcc void @negate_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %11) #19
  %112 = getelementptr inbounds %struct.RegionView3D, ptr %108, i64 0, i32 25
  %113 = load i8, ptr %112, align 1, !tbaa !21
  %114 = freeze i8 %113
  switch i8 %114, label %118 [
    i8 2, label %115
    i8 0, label %117
  ]

115:                                              ; preds = %106
  store i8 1, ptr %112, align 1, !tbaa !21
  %116 = load ptr, ptr %100, align 8, !tbaa !23
  br label %118

117:                                              ; preds = %106
  br label %118

118:                                              ; preds = %106, %115, %117
  %119 = phi ptr [ null, %117 ], [ %116, %115 ], [ null, %106 ]
  %120 = phi float [ %90, %117 ], [ %88, %115 ], [ %88, %106 ]
  %121 = fmul float %120, 0x3FF6666660000000
  store float %121, ptr %12, align 4, !tbaa !32
  %122 = getelementptr inbounds %struct.ARegion, ptr %102, i64 0, i32 6
  %123 = load i16, ptr %122, align 2, !tbaa !125
  %124 = icmp sgt i16 %123, 2
  br i1 %124, label %125, label %137

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.ARegion, ptr %102, i64 0, i32 5
  %127 = load i16, ptr %126, align 8, !tbaa !124
  %128 = icmp sgt i16 %127, 2
  br i1 %128, label %129, label %137

129:                                              ; preds = %125
  %130 = sitofp i16 %127 to float
  %131 = sitofp i16 %123 to float
  %132 = fdiv float %130, %131
  %133 = fcmp olt float %132, 1.000000e+00
  %134 = fdiv float 1.000000e+00, %132
  %135 = select i1 %133, float %134, float %132
  %136 = fmul float %121, %135
  store float %136, ptr %12, align 4, !tbaa !32
  br label %137

137:                                              ; preds = %129, %125, %118
  call void @ED_view3d_smooth_view_ex(ptr noundef %0, ptr noundef %1, ptr noundef %4, ptr noundef %15, ptr noundef nonnull %102, ptr noundef %119, ptr noundef null, ptr noundef nonnull %13, ptr noundef null, ptr noundef nonnull %12, ptr noundef null, i32 noundef %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #20
  br label %138

138:                                              ; preds = %101, %137
  %139 = load ptr, ptr %102, align 8, !tbaa !52
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %101, !llvm.loop !186

141:                                              ; preds = %138, %92
  %142 = getelementptr inbounds %struct.View3D, ptr %15, i64 0, i32 22
  store i32 %22, ptr %142, align 8, !tbaa !147
  br label %177

143:                                              ; preds = %24, %72
  %144 = phi i8 [ 0, %24 ], [ %73, %72 ]
  %145 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 5
  %146 = load ptr, ptr %145, align 8, !tbaa !52
  %147 = icmp eq ptr %146, null
  br i1 %147, label %177, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.View3D, ptr %15, i64 0, i32 23
  %150 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  br label %151

151:                                              ; preds = %148, %174
  %152 = phi ptr [ %146, %148 ], [ %175, %174 ]
  %153 = getelementptr inbounds %struct.Base, ptr %152, i64 0, i32 2
  %154 = load i32, ptr %153, align 8, !tbaa !145
  %155 = and i32 %154, %22
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %174, label %157

157:                                              ; preds = %151
  %158 = sub i32 %154, %22
  store i32 %158, ptr %153, align 8, !tbaa !145
  %159 = icmp eq i32 %154, %22
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = load i32, ptr %149, align 4, !tbaa !178
  store i32 %161, ptr %153, align 8, !tbaa !145
  br label %162

162:                                              ; preds = %160, %157
  %163 = phi i32 [ %161, %160 ], [ %158, %157 ]
  %164 = getelementptr inbounds %struct.Base, ptr %152, i64 0, i32 7
  %165 = load ptr, ptr %164, align 8, !tbaa !148
  %166 = load ptr, ptr %150, align 8, !tbaa !137
  %167 = icmp eq ptr %165, %166
  br i1 %167, label %172, label %168

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.Base, ptr %152, i64 0, i32 4
  %170 = load i32, ptr %169, align 8, !tbaa !152
  %171 = or i32 %170, 1
  store i32 %171, ptr %169, align 8, !tbaa !152
  br label %172

172:                                              ; preds = %168, %162
  %173 = getelementptr inbounds %struct.Object, ptr %165, i64 0, i32 52
  store i32 %163, ptr %173, align 8, !tbaa !180
  br label %174

174:                                              ; preds = %151, %172
  %175 = load ptr, ptr %152, align 8, !tbaa !52
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %151, !llvm.loop !187

177:                                              ; preds = %174, %143, %141, %7
  %178 = phi i8 [ 0, %7 ], [ 1, %141 ], [ %144, %143 ], [ %144, %174 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #20
  ret i8 %178
}

; Function Attrs: optsize
declare void @DAG_id_type_tag(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @restore_localviewdata(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !176
  %9 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %65, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !23
  %15 = getelementptr inbounds %struct.View3D, ptr %10, i64 0, i32 15
  %16 = load ptr, ptr %15, align 8, !tbaa !23
  %17 = getelementptr inbounds %struct.View3D, ptr %10, i64 0, i32 32
  %18 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 32
  %19 = load <2 x float>, ptr %17, align 4, !tbaa !32
  store <2 x float> %19, ptr %18, align 4, !tbaa !32
  %20 = getelementptr inbounds %struct.View3D, ptr %10, i64 0, i32 22
  %21 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 22
  %22 = load <2 x i32>, ptr %20, align 8, !tbaa !95
  store <2 x i32> %22, ptr %21, align 8, !tbaa !95
  %23 = getelementptr inbounds %struct.View3D, ptr %10, i64 0, i32 24
  %24 = load i16, ptr %23, align 8, !tbaa !40
  %25 = getelementptr inbounds %struct.View3D, ptr %8, i64 0, i32 24
  store i16 %24, ptr %25, align 8, !tbaa !40
  store ptr %16, ptr %13, align 8, !tbaa !23
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %26(ptr noundef nonnull %10) #18
  store ptr null, ptr %9, align 8, !tbaa !19
  %27 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 20
  %28 = load ptr, ptr %27, align 8, !tbaa !52
  %29 = icmp eq ptr %28, null
  br i1 %29, label %65, label %30

30:                                               ; preds = %12, %62
  %31 = phi ptr [ %63, %62 ], [ %28, %12 ]
  %32 = getelementptr inbounds %struct.ARegion, ptr %31, i64 0, i32 8
  %33 = load i16, ptr %32, align 2, !tbaa !5
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ARegion, ptr %31, i64 0, i32 30
  %37 = load ptr, ptr %36, align 8, !tbaa !17
  %38 = getelementptr inbounds %struct.RegionView3D, ptr %37, i64 0, i32 10
  %39 = load ptr, ptr %38, align 8, !tbaa !185
  %40 = icmp eq ptr %39, null
  br i1 %40, label %61, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.RegionView3D, ptr %37, i64 0, i32 25
  %43 = load i8, ptr %42, align 1, !tbaa !21
  %44 = icmp eq i8 %43, 2
  %45 = select i1 %44, ptr %14, ptr null
  %46 = getelementptr inbounds %struct.RegionView3D, ptr %39, i64 0, i32 25
  %47 = load i8, ptr %46, align 1, !tbaa !21
  %48 = icmp eq i8 %47, 2
  %49 = select i1 %48, ptr %16, ptr null
  %50 = getelementptr inbounds %struct.RegionView3D, ptr %39, i64 0, i32 26
  %51 = load i8, ptr %50, align 2, !tbaa !46
  %52 = getelementptr inbounds %struct.RegionView3D, ptr %37, i64 0, i32 26
  store i8 %51, ptr %52, align 2, !tbaa !46
  store i8 %47, ptr %42, align 1, !tbaa !21
  %53 = getelementptr inbounds %struct.RegionView3D, ptr %39, i64 0, i32 23
  %54 = load float, ptr %53, align 4, !tbaa !188
  %55 = getelementptr inbounds %struct.RegionView3D, ptr %37, i64 0, i32 23
  store float %54, ptr %55, align 4, !tbaa !188
  %56 = getelementptr inbounds %struct.RegionView3D, ptr %39, i64 0, i32 22
  %57 = getelementptr inbounds %struct.RegionView3D, ptr %39, i64 0, i32 17
  %58 = getelementptr inbounds %struct.RegionView3D, ptr %39, i64 0, i32 18
  tail call void @ED_view3d_smooth_view_ex(ptr noundef %0, ptr noundef %1, ptr noundef %4, ptr noundef %8, ptr noundef nonnull %31, ptr noundef %45, ptr noundef %49, ptr noundef nonnull %56, ptr noundef nonnull %57, ptr noundef nonnull %58, ptr noundef null, i32 noundef %5) #19
  %59 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  %60 = load ptr, ptr %38, align 8, !tbaa !185
  tail call void %59(ptr noundef %60) #18
  store ptr null, ptr %38, align 8, !tbaa !185
  br label %61

61:                                               ; preds = %41, %35
  tail call void @ED_view3d_shade_update(ptr noundef %2, ptr noundef %3, ptr noundef %8, ptr noundef %4) #18
  br label %62

62:                                               ; preds = %30, %61
  %63 = load ptr, ptr %31, align 8, !tbaa !52
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %30, !llvm.loop !189

65:                                               ; preds = %62, %12, %6
  ret void
}

; Function Attrs: optsize
declare void @DAG_on_visible_update(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_shade_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @free_localbit(ptr nocapture noundef readonly %0) unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 26
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = icmp eq ptr %3, null
  br i1 %4, label %63, label %9

5:                                                ; preds = %15, %9
  %6 = phi i32 [ %11, %9 ], [ %16, %15 ]
  %7 = load ptr, ptr %10, align 8, !tbaa !52
  %8 = icmp eq ptr %7, null
  br i1 %8, label %39, label %9, !llvm.loop !190

9:                                                ; preds = %1, %5
  %10 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %11 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %12 = getelementptr inbounds %struct.bScreen, ptr %10, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = icmp eq ptr %13, null
  br i1 %14, label %5, label %19

15:                                               ; preds = %35, %19
  %16 = phi i32 [ %21, %19 ], [ %36, %35 ]
  %17 = load ptr, ptr %20, align 8, !tbaa !52
  %18 = icmp eq ptr %17, null
  br i1 %18, label %5, label %19, !llvm.loop !191

19:                                               ; preds = %9, %15
  %20 = phi ptr [ %17, %15 ], [ %13, %9 ]
  %21 = phi i32 [ %16, %15 ], [ %11, %9 ]
  %22 = getelementptr inbounds %struct.ScrArea, ptr %20, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  %24 = icmp eq ptr %23, null
  br i1 %24, label %15, label %25

25:                                               ; preds = %19, %35
  %26 = phi ptr [ %37, %35 ], [ %23, %19 ]
  %27 = phi i32 [ %36, %35 ], [ %21, %19 ]
  %28 = getelementptr inbounds %struct.SpaceLink, ptr %26, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !192
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.View3D, ptr %26, i64 0, i32 22
  %33 = load i32, ptr %32, align 8, !tbaa !147
  %34 = or i32 %33, %27
  br label %35

35:                                               ; preds = %25, %31
  %36 = phi i32 [ %34, %31 ], [ %27, %25 ]
  %37 = load ptr, ptr %26, align 8, !tbaa !52
  %38 = icmp eq ptr %37, null
  br i1 %38, label %15, label %25, !llvm.loop !194

39:                                               ; preds = %5
  %40 = and i32 %6, 16777216
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %63, label %42

42:                                               ; preds = %39
  %43 = and i32 %6, 33554432
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %63, label %45

45:                                               ; preds = %42
  %46 = and i32 %6, 67108864
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %45
  %49 = and i32 %6, 134217728
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %48
  %52 = and i32 %6, 268435456
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %51
  %55 = and i32 %6, 536870912
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = and i32 %6, 1073741824
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = and i32 %6, -2147483648
  %62 = xor i32 %61, -2147483648
  br label %63

63:                                               ; preds = %1, %60, %57, %54, %51, %48, %45, %42, %39
  %64 = phi i32 [ 16777216, %39 ], [ 33554432, %42 ], [ 67108864, %45 ], [ 134217728, %48 ], [ 268435456, %51 ], [ 536870912, %54 ], [ 1073741824, %57 ], [ %62, %60 ], [ 16777216, %1 ]
  ret i32 %64
}

; Function Attrs: optsize
declare void @BKE_object_minmax(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 {
  %4 = load float, ptr %1, align 4, !tbaa !32
  %5 = load float, ptr %2, align 4, !tbaa !32
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !32
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !32
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !32
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !32
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !32
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !32
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #11 {
  %4 = tail call fastcc float @max_ff(float noundef %0, float noundef %1) #19
  %5 = tail call fastcc float @max_ff(float noundef %4, float noundef %2) #19
  ret float %5
}

; Function Attrs: optsize
declare float @focallength_to_fov(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = load float, ptr %1, align 4, !tbaa !32
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !32
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !32
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !32
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !32
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !32
  ret void
}

; Function Attrs: optsize
declare i32 @CTX_data_mode_enum(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_uses_blender_game(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !15, i64 214}
!6 = !{!"ARegion", !7, i64 0, !7, i64 8, !10, i64 16, !13, i64 176, !13, i64 192, !15, i64 208, !15, i64 210, !15, i64 212, !15, i64 214, !15, i64 216, !15, i64 218, !12, i64 220, !15, i64 224, !15, i64 226, !15, i64 228, !15, i64 230, !15, i64 232, !15, i64 234, !15, i64 236, !15, i64 238, !7, i64 240, !16, i64 248, !16, i64 264, !16, i64 280, !16, i64 296, !16, i64 312, !16, i64 328, !16, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"View2D", !11, i64 0, !11, i64 16, !13, i64 32, !13, i64 48, !13, i64 64, !8, i64 80, !8, i64 88, !12, i64 96, !12, i64 100, !15, i64 104, !15, i64 106, !15, i64 108, !15, i64 110, !15, i64 112, !15, i64 114, !15, i64 116, !15, i64 118, !15, i64 120, !15, i64 122, !15, i64 124, !15, i64 126, !7, i64 128, !14, i64 136, !14, i64 140, !7, i64 144, !7, i64 152}
!11 = !{!"rctf", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!12 = !{!"float", !8, i64 0}
!13 = !{!"rcti", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12}
!14 = !{!"int", !8, i64 0}
!15 = !{!"short", !8, i64 0}
!16 = !{!"ListBase", !7, i64 0, !7, i64 8}
!17 = !{!6, !7, i64 376}
!18 = !{!6, !15, i64 212}
!19 = !{!20, !7, i64 152}
!20 = !{!"View3D", !7, i64 0, !7, i64 8, !16, i64 16, !14, i64 32, !12, i64 36, !8, i64 40, !8, i64 56, !12, i64 72, !12, i64 76, !8, i64 80, !8, i64 81, !14, i64 84, !14, i64 88, !15, i64 92, !15, i64 94, !7, i64 96, !7, i64 104, !11, i64 112, !16, i64 128, !7, i64 144, !7, i64 152, !8, i64 160, !14, i64 224, !14, i64 228, !15, i64 232, !15, i64 234, !15, i64 236, !15, i64 238, !15, i64 240, !15, i64 242, !12, i64 244, !12, i64 248, !12, i64 252, !12, i64 256, !8, i64 260, !8, i64 272, !15, i64 284, !15, i64 286, !15, i64 288, !8, i64 290, !8, i64 291, !8, i64 292, !8, i64 293, !8, i64 294, !16, i64 296, !16, i64 312, !16, i64 328, !8, i64 344, !8, i64 345, !8, i64 346, !8, i64 347, !7, i64 352, !7, i64 360, !7, i64 368}
!21 = !{!22, !8, i64 809}
!22 = !{!"RegionView3D", !8, i64 0, !8, i64 64, !8, i64 128, !8, i64 192, !8, i64 256, !8, i64 320, !8, i64 384, !8, i64 448, !8, i64 544, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !7, i64 672, !7, i64 680, !7, i64 688, !8, i64 696, !8, i64 760, !12, i64 776, !12, i64 780, !12, i64 784, !12, i64 788, !8, i64 792, !12, i64 804, !8, i64 808, !8, i64 809, !8, i64 810, !8, i64 811, !8, i64 812, !8, i64 813, !8, i64 816, !15, i64 824, !15, i64 826, !8, i64 828, !15, i64 844, !15, i64 846, !12, i64 848, !8, i64 852, !12, i64 864, !8, i64 868}
!23 = !{!20, !7, i64 96}
!24 = !{!25, !15, i64 136}
!25 = !{!"Object", !26, i64 0, !7, i64 120, !7, i64 128, !15, i64 136, !15, i64 138, !14, i64 140, !14, i64 144, !14, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !27, i64 312, !7, i64 360, !16, i64 368, !16, i64 384, !16, i64 400, !16, i64 416, !14, i64 432, !14, i64 436, !7, i64 440, !7, i64 448, !14, i64 456, !14, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !12, i64 616, !12, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !14, i64 944, !15, i64 948, !15, i64 950, !15, i64 952, !15, i64 954, !15, i64 956, !15, i64 958, !15, i64 960, !15, i64 962, !15, i64 964, !8, i64 966, !8, i64 967, !14, i64 968, !14, i64 972, !14, i64 976, !14, i64 980, !14, i64 984, !12, i64 988, !12, i64 992, !12, i64 996, !12, i64 1000, !12, i64 1004, !12, i64 1008, !12, i64 1012, !12, i64 1016, !12, i64 1020, !12, i64 1024, !12, i64 1028, !12, i64 1032, !15, i64 1036, !15, i64 1038, !15, i64 1040, !8, i64 1042, !8, i64 1043, !15, i64 1044, !8, i64 1046, !8, i64 1047, !12, i64 1048, !12, i64 1052, !16, i64 1056, !16, i64 1072, !16, i64 1088, !16, i64 1104, !12, i64 1120, !15, i64 1124, !15, i64 1126, !8, i64 1128, !14, i64 1144, !14, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !15, i64 1162, !8, i64 1164, !16, i64 1176, !16, i64 1192, !16, i64 1208, !16, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !15, i64 1266, !12, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !28, i64 1304, !28, i64 1312, !14, i64 1320, !14, i64 1324, !16, i64 1328, !16, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !16, i64 1400, !7, i64 1416}
!26 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !15, i64 98, !14, i64 100, !14, i64 104, !14, i64 108, !7, i64 112}
!27 = !{!"bAnimVizSettings", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !15, i64 16, !15, i64 18, !15, i64 20, !15, i64 22, !15, i64 24, !15, i64 26, !15, i64 28, !15, i64 30, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44}
!28 = !{!"long", !8, i64 0}
!29 = !{!25, !7, i64 296}
!30 = !{!22, !7, i64 680}
!31 = !{i64 0, i64 4, !32, i64 4, i64 4, !32, i64 8, i64 16, !33, i64 24, i64 12, !33}
!32 = !{!12, !12, i64 0}
!33 = !{!8, !8, i64 0}
!34 = !{!35, !12, i64 36}
!35 = !{!"SmoothView3DStore", !36, i64 0, !36, i64 36, !36, i64 72, !8, i64 108, !8, i64 109, !37, i64 112}
!36 = !{!"SmoothView3DState", !12, i64 0, !12, i64 4, !8, i64 8, !8, i64 24}
!37 = !{!"double", !8, i64 0}
!38 = !{!35, !12, i64 40}
!39 = !{!35, !8, i64 108}
!40 = !{!20, !15, i64 232}
!41 = !{!22, !12, i64 776}
!42 = !{!20, !12, i64 244}
!43 = !{i8 0, i8 2}
!44 = !{!35, !12, i64 0}
!45 = !{!22, !8, i64 811}
!46 = !{!22, !8, i64 810}
!47 = !{!35, !37, i64 112}
!48 = !{!22, !8, i64 808}
!49 = !{!50, !8, i64 128}
!50 = !{!"Camera", !26, i64 0, !7, i64 120, !8, i64 128, !8, i64 129, !15, i64 130, !12, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !7, i64 176, !7, i64 184, !8, i64 192, !8, i64 193}
!51 = !{!22, !15, i64 826}
!52 = !{!7, !7, i64 0}
!53 = !{i64 0, i64 4, !32, i64 4, i64 4, !32, i64 8, i64 16, !33, i64 24, i64 12, !33, i64 36, i64 4, !32, i64 40, i64 4, !32, i64 44, i64 16, !33, i64 60, i64 12, !33, i64 72, i64 4, !32, i64 76, i64 4, !32, i64 80, i64 16, !33, i64 96, i64 12, !33, i64 108, i64 1, !33, i64 109, i64 1, !33, i64 112, i64 8, !54}
!54 = !{!37, !37, i64 0}
!55 = !{!22, !7, i64 688}
!56 = !{!36, !12, i64 0}
!57 = !{!36, !12, i64 4}
!58 = !{!59, !7, i64 0}
!59 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !16, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !60, i64 152, !15, i64 184}
!60 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!61 = !{!59, !7, i64 24}
!62 = !{!59, !7, i64 8}
!63 = !{!59, !7, i64 48}
!64 = !{!59, !15, i64 184}
!65 = !{!59, !7, i64 72}
!66 = !{!67, !7, i64 112}
!67 = !{!"wmEvent", !7, i64 0, !7, i64 8, !15, i64 16, !15, i64 18, !14, i64 20, !14, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !15, i64 44, !15, i64 46, !14, i64 48, !14, i64 52, !37, i64 56, !14, i64 64, !14, i64 68, !15, i64 72, !15, i64 74, !15, i64 76, !15, i64 78, !15, i64 80, !15, i64 82, !7, i64 88, !7, i64 96, !15, i64 104, !15, i64 106, !14, i64 108, !7, i64 112}
!68 = !{!69, !37, i64 48}
!69 = !{!"wmTimer", !7, i64 0, !7, i64 8, !7, i64 16, !37, i64 24, !14, i64 32, !7, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !14, i64 88}
!70 = !{!35, !8, i64 109}
!71 = !{!35, !12, i64 4}
!72 = !{!59, !7, i64 32}
!73 = !{!25, !15, i64 954}
!74 = !{!25, !7, i64 24}
!75 = !{!76, !7, i64 120}
!76 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !16, i64 128, !7, i64 144, !7, i64 152, !15, i64 160, !8, i64 162}
!77 = !{!20, !15, i64 236}
!78 = !{!79, !7, i64 128}
!79 = !{!"Scene", !26, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !16, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !14, i64 232, !14, i64 236, !14, i64 240, !15, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !80, i64 280, !87, i64 4264, !16, i64 4296, !16, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !15, i64 4376, !15, i64 4378, !14, i64 4380, !16, i64 4384, !88, i64 4400, !89, i64 4416, !92, i64 4600, !7, i64 4608, !93, i64 4616, !7, i64 4640, !28, i64 4648, !28, i64 4656, !82, i64 4664, !83, i64 4824, !94, i64 4888, !7, i64 4952}
!80 = !{!"RenderData", !81, i64 0, !7, i64 248, !7, i64 256, !84, i64 264, !85, i64 328, !14, i64 400, !14, i64 404, !14, i64 408, !12, i64 412, !14, i64 416, !14, i64 420, !14, i64 424, !14, i64 428, !15, i64 432, !15, i64 434, !12, i64 436, !12, i64 440, !12, i64 444, !12, i64 448, !12, i64 452, !15, i64 456, !15, i64 458, !15, i64 460, !15, i64 462, !15, i64 464, !15, i64 466, !14, i64 468, !15, i64 472, !15, i64 474, !15, i64 476, !15, i64 478, !15, i64 480, !15, i64 482, !14, i64 484, !14, i64 488, !15, i64 492, !15, i64 494, !14, i64 496, !14, i64 500, !15, i64 504, !15, i64 506, !15, i64 508, !15, i64 510, !15, i64 512, !8, i64 514, !8, i64 515, !14, i64 516, !14, i64 520, !14, i64 524, !15, i64 528, !15, i64 530, !15, i64 532, !15, i64 534, !15, i64 536, !15, i64 538, !15, i64 540, !15, i64 542, !11, i64 544, !11, i64 560, !13, i64 576, !16, i64 592, !15, i64 608, !15, i64 610, !12, i64 612, !12, i64 616, !12, i64 620, !12, i64 624, !14, i64 628, !12, i64 632, !12, i64 636, !12, i64 640, !12, i64 644, !15, i64 648, !15, i64 650, !15, i64 652, !15, i64 654, !15, i64 656, !15, i64 658, !12, i64 660, !12, i64 664, !15, i64 668, !15, i64 670, !12, i64 672, !12, i64 676, !8, i64 680, !14, i64 1704, !15, i64 1708, !15, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !14, i64 2520, !15, i64 2524, !15, i64 2526, !12, i64 2528, !12, i64 2532, !15, i64 2536, !15, i64 2538, !12, i64 2540, !15, i64 2544, !15, i64 2546, !14, i64 2548, !15, i64 2552, !15, i64 2554, !15, i64 2556, !15, i64 2558, !12, i64 2560, !12, i64 2564, !7, i64 2568, !14, i64 2576, !12, i64 2580, !8, i64 2584, !86, i64 2616, !14, i64 3976, !14, i64 3980}
!81 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !15, i64 8, !15, i64 10, !12, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !82, i64 24, !83, i64 184}
!82 = !{!"ColorManagedViewSettings", !14, i64 0, !14, i64 4, !8, i64 8, !8, i64 72, !12, i64 136, !12, i64 140, !7, i64 144, !7, i64 152}
!83 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!84 = !{!"QuicktimeCodecSettings", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !15, i64 48, !15, i64 50, !14, i64 52, !14, i64 56, !14, i64 60}
!85 = !{!"FFMpegCodecData", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !12, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !14, i64 56, !14, i64 60, !7, i64 64}
!86 = !{!"BakeData", !81, i64 0, !8, i64 248, !15, i64 1272, !15, i64 1274, !15, i64 1276, !15, i64 1278, !12, i64 1280, !12, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!87 = !{!"AudioData", !14, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !14, i64 16, !15, i64 20, !15, i64 22, !12, i64 24, !12, i64 28}
!88 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!89 = !{!"GameData", !88, i64 0, !15, i64 16, !15, i64 18, !15, i64 20, !15, i64 22, !15, i64 24, !15, i64 26, !15, i64 28, !15, i64 30, !15, i64 32, !8, i64 34, !90, i64 40, !15, i64 64, !15, i64 66, !12, i64 68, !91, i64 72, !12, i64 128, !12, i64 132, !14, i64 136, !15, i64 140, !15, i64 142, !15, i64 144, !15, i64 146, !15, i64 148, !15, i64 150, !15, i64 152, !15, i64 154, !15, i64 156, !15, i64 158, !15, i64 160, !15, i64 162, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180}
!90 = !{!"GameDome", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6, !12, i64 8, !12, i64 12, !7, i64 16}
!91 = !{!"RecastData", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !14, i64 40, !12, i64 44, !12, i64 48, !15, i64 52, !15, i64 54}
!92 = !{!"UnitSettings", !12, i64 0, !8, i64 4, !8, i64 5, !15, i64 6}
!93 = !{!"PhysicsSettings", !8, i64 0, !14, i64 12, !14, i64 16, !14, i64 20}
!94 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!95 = !{!14, !14, i64 0}
!96 = distinct !{!96, !97}
!97 = !{!"llvm.loop.mustprogress"}
!98 = distinct !{!98, !97, !99, !100}
!99 = !{!"llvm.loop.isvectorized", i32 1}
!100 = !{!"llvm.loop.unroll.runtime.disable"}
!101 = distinct !{!101, !97}
!102 = !{!103, !14, i64 96}
!103 = !{!"BoundBox", !8, i64 0, !14, i64 96, !14, i64 100}
!104 = distinct !{!104, !97}
!105 = !{!106, !7, i64 40}
!106 = !{!"ViewContext", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !8, i64 56}
!107 = !{!22, !7, i64 664}
!108 = !{!106, !7, i64 24}
!109 = !{!6, !14, i64 176}
!110 = !{!6, !14, i64 184}
!111 = !{!112, !7, i64 8}
!112 = !{!"ViewDepths", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6, !7, i64 8, !8, i64 16, !8, i64 32}
!113 = !{!112, !15, i64 0}
!114 = !{!112, !15, i64 2}
!115 = !{!112, !8, i64 32}
!116 = !{!20, !12, i64 248}
!117 = !{!20, !12, i64 256}
!118 = !{!119, !12, i64 44}
!119 = !{!"CameraParams", !8, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !14, i64 40, !12, i64 44, !12, i64 48, !14, i64 52, !14, i64 56, !14, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !11, i64 76, !8, i64 92}
!120 = !{!119, !12, i64 48}
!121 = !{i64 0, i64 4, !32, i64 4, i64 4, !32, i64 8, i64 4, !32, i64 12, i64 4, !32}
!122 = !{!119, !12, i64 68}
!123 = !{!119, !8, i64 0}
!124 = !{!6, !15, i64 208}
!125 = !{!6, !15, i64 210}
!126 = !{!11, !12, i64 8}
!127 = !{!15, !15, i64 0}
!128 = !{!11, !12, i64 0}
!129 = !{!11, !12, i64 4}
!130 = !{!11, !12, i64 12}
!131 = distinct !{!131, !97}
!132 = !{!20, !7, i64 104}
!133 = !{!25, !7, i64 288}
!134 = !{!20, !15, i64 234}
!135 = !{!106, !7, i64 0}
!136 = !{!106, !7, i64 32}
!137 = !{!79, !7, i64 176}
!138 = !{!106, !7, i64 16}
!139 = !{!140, !14, i64 2096}
!140 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !16, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !15, i64 2084, !15, i64 2086, !15, i64 2088, !8, i64 2090, !15, i64 2092, !14, i64 2096, !14, i64 2100, !8, i64 2104, !14, i64 2108, !14, i64 2112, !8, i64 2116}
!141 = !{!13, !14, i64 8}
!142 = !{!20, !8, i64 344}
!143 = !{!79, !7, i64 168}
!144 = !{!20, !8, i64 346}
!145 = !{!146, !14, i64 16}
!146 = !{!"Base", !7, i64 0, !7, i64 8, !14, i64 16, !14, i64 20, !14, i64 24, !15, i64 28, !15, i64 30, !7, i64 32}
!147 = !{!20, !14, i64 224}
!148 = !{!146, !7, i64 32}
!149 = !{!25, !8, i64 1160}
!150 = !{!146, !14, i64 20}
!151 = !{!25, !15, i64 952}
!152 = !{!146, !14, i64 24}
!153 = !{!140, !7, i64 0}
!154 = !{!155, !7, i64 1888}
!155 = !{!"Main", !7, i64 0, !7, i64 8, !8, i64 16, !15, i64 1040, !15, i64 1042, !15, i64 1044, !15, i64 1046, !28, i64 1048, !8, i64 1056, !15, i64 1072, !7, i64 1080, !16, i64 1088, !16, i64 1104, !16, i64 1120, !16, i64 1136, !16, i64 1152, !16, i64 1168, !16, i64 1184, !16, i64 1200, !16, i64 1216, !16, i64 1232, !16, i64 1248, !16, i64 1264, !16, i64 1280, !16, i64 1296, !16, i64 1312, !16, i64 1328, !16, i64 1344, !16, i64 1360, !16, i64 1376, !16, i64 1392, !16, i64 1408, !16, i64 1424, !16, i64 1440, !16, i64 1456, !16, i64 1472, !16, i64 1488, !16, i64 1504, !16, i64 1520, !16, i64 1536, !16, i64 1552, !16, i64 1568, !16, i64 1584, !16, i64 1600, !16, i64 1616, !8, i64 1632, !7, i64 1888, !7, i64 1896}
!156 = !{!157, !7, i64 16}
!157 = !{!"DupliObject", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !8, i64 88, !8, i64 100, !15, i64 108, !8, i64 110, !8, i64 111, !8, i64 112, !7, i64 144}
!158 = !{!25, !8, i64 1046}
!159 = !{!25, !15, i64 1044}
!160 = distinct !{!160, !97}
!161 = distinct !{!161, !97}
!162 = distinct !{!162, !97, !99, !100}
!163 = distinct !{!163, !97}
!164 = distinct !{!164, !97}
!165 = !{!166, !8, i64 72}
!166 = !{!"ScrArea", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !13, i64 56, !8, i64 72, !8, i64 73, !15, i64 74, !15, i64 76, !15, i64 78, !15, i64 80, !15, i64 82, !15, i64 84, !8, i64 86, !8, i64 87, !7, i64 88, !16, i64 96, !16, i64 112, !16, i64 128, !16, i64 144}
!167 = distinct !{!167, !97}
!168 = distinct !{!168, !97}
!169 = !{!170, !7, i64 184}
!170 = !{!"bScreen", !26, i64 0, !16, i64 120, !16, i64 136, !16, i64 152, !16, i64 168, !7, i64 184, !7, i64 192, !14, i64 200, !14, i64 204, !15, i64 208, !15, i64 210, !15, i64 212, !15, i64 214, !15, i64 216, !15, i64 218, !15, i64 220, !15, i64 222, !15, i64 224, !15, i64 226, !15, i64 228, !15, i64 230, !7, i64 232, !7, i64 240}
!171 = !{!22, !12, i64 788}
!172 = !{!173, !12, i64 10908}
!173 = !{!"UserDef", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !14, i64 8468, !15, i64 8472, !15, i64 8474, !15, i64 8476, !15, i64 8478, !15, i64 8480, !15, i64 8482, !14, i64 8484, !14, i64 8488, !14, i64 8492, !15, i64 8496, !15, i64 8498, !14, i64 8500, !14, i64 8504, !14, i64 8508, !14, i64 8512, !14, i64 8516, !14, i64 8520, !14, i64 8524, !15, i64 8528, !15, i64 8530, !15, i64 8532, !15, i64 8534, !16, i64 8536, !16, i64 8552, !16, i64 8568, !16, i64 8584, !16, i64 8600, !16, i64 8616, !16, i64 8632, !8, i64 8648, !15, i64 8712, !15, i64 8714, !15, i64 8716, !15, i64 8718, !15, i64 8720, !15, i64 8722, !15, i64 8724, !15, i64 8726, !8, i64 8728, !15, i64 8896, !15, i64 8898, !15, i64 8900, !15, i64 8902, !15, i64 8904, !15, i64 8906, !15, i64 8908, !15, i64 8910, !14, i64 8912, !14, i64 8916, !15, i64 8920, !15, i64 8922, !15, i64 8924, !15, i64 8926, !15, i64 8928, !15, i64 8930, !15, i64 8932, !15, i64 8934, !15, i64 8936, !15, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !15, i64 8944, !15, i64 8946, !15, i64 8948, !15, i64 8950, !15, i64 8952, !15, i64 8954, !12, i64 8956, !12, i64 8960, !14, i64 8964, !15, i64 8968, !15, i64 8970, !12, i64 8972, !15, i64 8976, !15, i64 8978, !15, i64 8980, !15, i64 8982, !174, i64 8984, !8, i64 9760, !8, i64 9772, !15, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !14, i64 10896, !14, i64 10900, !12, i64 10904, !12, i64 10908, !14, i64 10912, !15, i64 10916, !15, i64 10918, !15, i64 10920, !15, i64 10922, !15, i64 10924, !15, i64 10926, !175, i64 10928}
!174 = !{!"ColorBand", !15, i64 0, !15, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!175 = !{!"WalkNavigation", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !15, i64 24, !8, i64 26}
!176 = !{!166, !7, i64 96}
!177 = !{!79, !14, i64 232}
!178 = !{!20, !14, i64 228}
!179 = !{!25, !15, i64 948}
!180 = !{!25, !14, i64 944}
!181 = distinct !{!181, !97}
!182 = !{i32 0, i32 -2147483647}
!183 = distinct !{!183, !97}
!184 = !{!20, !12, i64 252}
!185 = !{!22, !7, i64 648}
!186 = distinct !{!186, !97}
!187 = distinct !{!187, !97}
!188 = !{!22, !12, i64 804}
!189 = distinct !{!189, !97}
!190 = distinct !{!190, !97}
!191 = distinct !{!191, !97}
!192 = !{!193, !14, i64 32}
!193 = !{!"SpaceLink", !7, i64 0, !7, i64 8, !16, i64 16, !14, i64 32, !12, i64 36, !8, i64 40}
!194 = distinct !{!194, !97}
