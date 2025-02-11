; ModuleID = 'blender/source/blender/editors/render/render_update.c'
source_filename = "blender/source/blender/editors/render/render_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.RenderEngine = type { ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.ListBase, [512 x i8], i32, i32, ptr, i32, i32, %struct.rctf, %struct.rcti, [4 x [4 x float]], i32, i32 }
%struct.RenderEngineType = type { ptr, ptr, [64 x i8], [64 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
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
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

@ED_render_scene_update.recursive_check = internal unnamed_addr global i1 false, align 1
@RE_engine_id_BLENDER_RENDER = external local_unnamed_addr global ptr, align 8
@U = external local_unnamed_addr global %struct.UserDef, align 8
@defmaterial = external global %struct.Material, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_render_scene_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @BLI_thread_is_main() #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %68, label %6

6:                                                ; preds = %3
  %7 = load i1, ptr @ED_render_scene_update.recursive_check, align 1
  br i1 %7, label %68, label %8

8:                                                ; preds = %6
  store i1 true, ptr @ED_render_scene_update.recursive_check, align 1
  %9 = tail call ptr @CTX_create() #5
  tail call void @CTX_data_main_set(ptr noundef %9, ptr noundef %0) #5
  tail call void @CTX_data_scene_set(ptr noundef %9, ptr noundef %1) #5
  %10 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 40
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  tail call void @CTX_wm_manager_set(ptr noundef %9, ptr noundef %11) #5
  %12 = load ptr, ptr %10, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.wmWindowManager, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %67, label %16

16:                                               ; preds = %8
  %17 = icmp eq i32 %2, 0
  br label %21

18:                                               ; preds = %64, %21
  %19 = load ptr, ptr %22, align 8, !tbaa !13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %67, label %21, !llvm.loop !14

21:                                               ; preds = %16, %18
  %22 = phi ptr [ %14, %16 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.wmWindow, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !16
  tail call void @CTX_wm_window_set(ptr noundef %9, ptr noundef nonnull %22) #5
  %25 = getelementptr inbounds %struct.bScreen, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %18, label %28

28:                                               ; preds = %21, %64
  %29 = phi ptr [ %65, %64 ], [ %26, %21 ]
  %30 = getelementptr inbounds %struct.ScrArea, ptr %29, i64 0, i32 8
  %31 = load i8, ptr %30, align 8, !tbaa !19
  %32 = icmp eq i8 %31, 1
  br i1 %32, label %33, label %64

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ScrArea, ptr %29, i64 0, i32 20
  %35 = load ptr, ptr %34, align 8, !tbaa !13
  %36 = icmp eq ptr %35, null
  br i1 %36, label %64, label %37

37:                                               ; preds = %33, %61
  %38 = phi ptr [ %62, %61 ], [ %35, %33 ]
  %39 = getelementptr inbounds %struct.ARegion, ptr %38, i64 0, i32 8
  %40 = load i16, ptr %39, align 2, !tbaa !22
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.ARegion, ptr %38, i64 0, i32 30
  %44 = load ptr, ptr %43, align 8, !tbaa !27
  %45 = getelementptr inbounds %struct.RegionView3D, ptr %44, i64 0, i32 11
  %46 = load ptr, ptr %45, align 8, !tbaa !28
  %47 = icmp eq ptr %46, null
  br i1 %47, label %61, label %48

48:                                               ; preds = %42
  br i1 %17, label %49, label %54

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.RenderEngine, ptr %46, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !30
  %52 = and i32 %51, 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %49, %48
  tail call void @CTX_wm_screen_set(ptr noundef %9, ptr noundef %24) #5
  tail call void @CTX_wm_area_set(ptr noundef %9, ptr noundef nonnull %29) #5
  tail call void @CTX_wm_region_set(ptr noundef %9, ptr noundef nonnull %38) #5
  %55 = getelementptr inbounds %struct.RenderEngine, ptr %46, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !30
  %57 = and i32 %56, -9
  store i32 %57, ptr %55, align 8, !tbaa !30
  %58 = load ptr, ptr %46, align 8, !tbaa !32
  %59 = getelementptr inbounds %struct.RenderEngineType, ptr %58, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !33
  tail call void %60(ptr noundef nonnull %46, ptr noundef %9) #5
  br label %61

61:                                               ; preds = %42, %49, %54, %37
  %62 = load ptr, ptr %38, align 8, !tbaa !13
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %37, !llvm.loop !36

64:                                               ; preds = %61, %33, %28
  %65 = load ptr, ptr %29, align 8, !tbaa !13
  %66 = icmp eq ptr %65, null
  br i1 %66, label %18, label %28, !llvm.loop !37

67:                                               ; preds = %18, %8
  tail call void @CTX_free(ptr noundef %9) #5
  store i1 false, ptr @ED_render_scene_update.recursive_check, align 1
  br label %68

68:                                               ; preds = %6, %3, %67
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_thread_is_main() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_create() local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_data_main_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_data_scene_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_wm_manager_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_wm_window_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_wm_screen_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_wm_area_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_render_engine_area_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 8
  %3 = load i8, ptr %2, align 8, !tbaa !19
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %5, label %26

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %5, %23
  %10 = phi ptr [ %24, %23 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 8
  %12 = load i16, ptr %11, align 2, !tbaa !22
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 30
  %16 = load ptr, ptr %15, align 8, !tbaa !27
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !28
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @RE_engine_free(ptr noundef nonnull %20) #5
  store ptr null, ptr %19, align 8, !tbaa !28
  br label %23

23:                                               ; preds = %18, %22, %9, %14
  %24 = load ptr, ptr %10, align 8, !tbaa !13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %9, !llvm.loop !38

26:                                               ; preds = %23, %5, %1
  ret void
}

; Function Attrs: optsize
declare void @RE_engine_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_render_engine_changed(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 26
  %3 = load ptr, ptr %2, align 8, !tbaa !13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %8

5:                                                ; preds = %13, %8
  %6 = load ptr, ptr %9, align 8, !tbaa !13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8, !llvm.loop !39

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.bScreen, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %5, label %13

13:                                               ; preds = %8, %13
  %14 = phi ptr [ %15, %13 ], [ %11, %8 ]
  tail call void @ED_render_engine_area_exit(ptr noundef nonnull %14) #6
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %5, label %13, !llvm.loop !40

17:                                               ; preds = %5, %1
  tail call void @RE_FreePersistentData() #5
  %18 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17, %21
  %22 = phi ptr [ %23, %21 ], [ %19, %17 ]
  tail call void @ED_render_id_flush_update(ptr noundef %0, ptr noundef nonnull %22) #6
  %23 = load ptr, ptr %22, align 8, !tbaa !13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %21, !llvm.loop !41

25:                                               ; preds = %21, %17
  ret void
}

; Function Attrs: optsize
declare void @RE_FreePersistentData() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_render_id_flush_update(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @BLI_thread_is_main() #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !42
  switch i16 %7, label %14 [
    i16 16717, label %8
    i16 17748, label %9
    i16 20311, label %10
    i16 16716, label %11
    i16 19785, label %12
    i16 17235, label %13
  ]

8:                                                ; preds = %5
  tail call fastcc void @material_changed(ptr noundef %0, ptr noundef nonnull %1) #6
  tail call fastcc void @render_engine_flag_changed(ptr noundef %0, i32 noundef 1) #6
  br label %15

9:                                                ; preds = %5
  tail call fastcc void @texture_changed(ptr noundef %0, ptr noundef nonnull %1) #6
  br label %15

10:                                               ; preds = %5
  tail call fastcc void @world_changed(ptr noundef %0, ptr noundef nonnull %1) #6
  br label %15

11:                                               ; preds = %5
  tail call fastcc void @lamp_changed(ptr noundef %0, ptr noundef nonnull %1) #6
  br label %15

12:                                               ; preds = %5
  tail call fastcc void @image_changed(ptr noundef %0, ptr noundef nonnull %1) #6
  br label %15

13:                                               ; preds = %5
  tail call fastcc void @scene_changed(ptr noundef %0, ptr noundef nonnull %1) #6
  tail call fastcc void @render_engine_flag_changed(ptr noundef %0, i32 noundef 2) #6
  br label %15

14:                                               ; preds = %5
  tail call fastcc void @render_engine_flag_changed(ptr noundef %0, i32 noundef 2) #6
  br label %15

15:                                               ; preds = %2, %14, %13, %12, %11, %10, %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @material_changed(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @BKE_icon_getid(ptr noundef %1) #5
  tail call void @BKE_icon_changed(i32 noundef %3) #5
  %4 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 136
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @GPU_material_free(ptr noundef nonnull %1) #5
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %8, %30
  %13 = phi ptr [ %31, %30 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.Material, ptr %13, i64 0, i32 77
  %15 = load i8, ptr %14, align 1, !tbaa !48
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.Material, ptr %13, i64 0, i32 103
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = tail call fastcc i32 @nodes_use_material(ptr noundef nonnull %19, ptr noundef %1) #6, !range !50
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @BKE_icon_getid(ptr noundef nonnull %13) #5
  tail call void @BKE_icon_changed(i32 noundef %25) #5
  %26 = getelementptr inbounds %struct.Material, ptr %13, i64 0, i32 136
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call void @GPU_material_free(ptr noundef nonnull %13) #5
  br label %30

30:                                               ; preds = %24, %29, %12, %17, %21
  %31 = load ptr, ptr %13, align 8, !tbaa !13
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %12, !llvm.loop !51

33:                                               ; preds = %30, %8
  %34 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  br label %35

35:                                               ; preds = %39, %33
  %36 = phi ptr [ %34, %33 ], [ %37, %39 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !13
  %38 = icmp eq ptr %37, null
  br i1 %38, label %81, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.Scene, ptr %37, i64 0, i32 42
  %41 = load i64, ptr %40, align 8, !tbaa !52
  %42 = and i64 %41, 32
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %35, label %44, !llvm.loop !69

44:                                               ; preds = %39
  %45 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 20), align 8, !tbaa !70
  %46 = and i16 %45, 8
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %81

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %50 = load ptr, ptr %49, align 8, !tbaa !13
  %51 = icmp eq ptr %50, null
  br i1 %51, label %81, label %52

52:                                               ; preds = %48, %78
  %53 = phi ptr [ %79, %78 ], [ %50, %48 ]
  %54 = getelementptr inbounds %struct.Object, ptr %53, i64 0, i32 120
  %55 = load ptr, ptr %54, align 8, !tbaa !74
  %56 = tail call ptr @give_matarar(ptr noundef nonnull %53) #5
  %57 = tail call ptr @give_totcolp(ptr noundef nonnull %53) #5
  %58 = icmp ne ptr %55, null
  %59 = icmp ne ptr %57, null
  %60 = select i1 %58, i1 %59, i1 false
  %61 = icmp ne ptr %56, null
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %78

63:                                               ; preds = %52
  %64 = load i16, ptr %57, align 2, !tbaa !42
  %65 = icmp sgt i16 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load ptr, ptr %56, align 8, !tbaa !13
  %68 = zext nneg i16 %64 to i64
  br label %72

69:                                               ; preds = %72
  %70 = add nuw nsw i64 %73, 1
  %71 = icmp eq i64 %70, %68
  br i1 %71, label %78, label %72, !llvm.loop !77

72:                                               ; preds = %66, %69
  %73 = phi i64 [ 0, %66 ], [ %70, %69 ]
  %74 = getelementptr inbounds ptr, ptr %67, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !13
  %76 = icmp eq ptr %75, %1
  br i1 %76, label %77, label %69

77:                                               ; preds = %72
  tail call void @GPU_drawobject_free(ptr noundef nonnull %55) #5
  br label %78

78:                                               ; preds = %69, %63, %77, %52
  %79 = load ptr, ptr %53, align 8, !tbaa !13
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %52, !llvm.loop !78

81:                                               ; preds = %35, %78, %48, %44
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @render_engine_flag_changed(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 26
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %9

6:                                                ; preds = %41, %9
  %7 = load ptr, ptr %10, align 8, !tbaa !13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %44, label %9, !llvm.loop !79

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %11 = getelementptr inbounds %struct.bScreen, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %6, label %14

14:                                               ; preds = %9, %41
  %15 = phi ptr [ %42, %41 ], [ %12, %9 ]
  %16 = getelementptr inbounds %struct.ScrArea, ptr %15, i64 0, i32 8
  %17 = load i8, ptr %16, align 8, !tbaa !19
  %18 = icmp eq i8 %17, 1
  br i1 %18, label %19, label %41

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ScrArea, ptr %15, i64 0, i32 20
  %21 = load ptr, ptr %20, align 8, !tbaa !13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %41, label %23

23:                                               ; preds = %19, %38
  %24 = phi ptr [ %39, %38 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 8
  %26 = load i16, ptr %25, align 2, !tbaa !22
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 30
  %30 = load ptr, ptr %29, align 8, !tbaa !27
  %31 = getelementptr inbounds %struct.RegionView3D, ptr %30, i64 0, i32 11
  %32 = load ptr, ptr %31, align 8, !tbaa !28
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.RenderEngine, ptr %32, i64 0, i32 13
  %36 = load i32, ptr %35, align 8, !tbaa !80
  %37 = or i32 %36, %1
  store i32 %37, ptr %35, align 8, !tbaa !80
  br label %38

38:                                               ; preds = %28, %34, %23
  %39 = load ptr, ptr %24, align 8, !tbaa !13
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %23, !llvm.loop !81

41:                                               ; preds = %38, %19, %14
  %42 = load ptr, ptr %15, align 8, !tbaa !13
  %43 = icmp eq ptr %42, null
  br i1 %43, label %6, label %14, !llvm.loop !82

44:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @texture_changed(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @BKE_icon_getid(ptr noundef %1) #5
  tail call void @BKE_icon_changed(i32 noundef %3) #5
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %2 ]
  tail call void @BKE_paint_invalidate_overlay_tex(ptr noundef nonnull %8, ptr noundef %1) #5
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7, !llvm.loop !83

11:                                               ; preds = %7, %2
  %12 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %11, %25
  %16 = phi ptr [ %26, %25 ], [ %13, %11 ]
  %17 = tail call fastcc i32 @material_uses_texture(ptr noundef nonnull %16, ptr noundef %1) #6, !range !50
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @BKE_icon_getid(ptr noundef nonnull %16) #5
  tail call void @BKE_icon_changed(i32 noundef %20) #5
  %21 = getelementptr inbounds %struct.Material, ptr %16, i64 0, i32 136
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void @GPU_material_free(ptr noundef nonnull %16) #5
  br label %25

25:                                               ; preds = %19, %24, %15
  %26 = load ptr, ptr %16, align 8, !tbaa !13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %15, !llvm.loop !84

28:                                               ; preds = %25, %11
  %29 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 21
  %30 = load ptr, ptr %29, align 8, !tbaa !13
  %31 = icmp eq ptr %30, null
  br i1 %31, label %48, label %32

32:                                               ; preds = %28, %45
  %33 = phi ptr [ %46, %45 ], [ %30, %28 ]
  %34 = getelementptr inbounds %struct.Lamp, ptr %33, i64 0, i32 69
  %35 = tail call fastcc i32 @mtex_use_tex(ptr noundef nonnull %34, ptr noundef %1) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.Lamp, ptr %33, i64 0, i32 74
  %39 = load ptr, ptr %38, align 8, !tbaa !85
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = tail call fastcc i32 @nodes_use_tex(ptr noundef nonnull %39, ptr noundef %1) #6, !range !50
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %32
  tail call fastcc void @lamp_changed(ptr noundef %0, ptr noundef nonnull %33) #6
  br label %45

45:                                               ; preds = %44, %37, %41
  %46 = load ptr, ptr %33, align 8, !tbaa !13
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %32, !llvm.loop !87

48:                                               ; preds = %45, %28
  %49 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 25
  %50 = load ptr, ptr %49, align 8, !tbaa !13
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %69, %48
  %53 = load ptr, ptr %4, align 8, !tbaa !13
  %54 = icmp eq ptr %53, null
  br i1 %54, label %156, label %72

55:                                               ; preds = %48, %69
  %56 = phi ptr [ %70, %69 ], [ %50, %48 ]
  %57 = getelementptr inbounds %struct.World, ptr %56, i64 0, i32 70
  %58 = tail call fastcc i32 @mtex_use_tex(ptr noundef nonnull %57, ptr noundef %1) #6
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.World, ptr %56, i64 0, i32 75
  %62 = load ptr, ptr %61, align 8, !tbaa !88
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = tail call fastcc i32 @nodes_use_tex(ptr noundef nonnull %62, ptr noundef %1) #6, !range !50
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64, %55
  %68 = tail call i32 @BKE_icon_getid(ptr noundef nonnull %56) #5
  tail call void @BKE_icon_changed(i32 noundef %68) #5
  br label %69

69:                                               ; preds = %60, %64, %67
  %70 = load ptr, ptr %56, align 8, !tbaa !13
  %71 = icmp eq ptr %70, null
  br i1 %71, label %52, label %55, !llvm.loop !90

72:                                               ; preds = %52, %95
  %73 = phi ptr [ %101, %95 ], [ %53, %52 ]
  %74 = phi i8 [ %100, %95 ], [ 0, %52 ]
  %75 = getelementptr inbounds %struct.Scene, ptr %73, i64 0, i32 16
  %76 = load i8, ptr %75, align 2, !tbaa !91
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %95, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.Scene, ptr %73, i64 0, i32 18
  %80 = load ptr, ptr %79, align 8, !tbaa !92
  %81 = icmp eq ptr %80, null
  br i1 %81, label %95, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.bNodeTree, ptr %80, i64 0, i32 7
  %84 = load ptr, ptr %83, align 8, !tbaa !13
  %85 = icmp eq ptr %84, null
  br i1 %85, label %95, label %86

86:                                               ; preds = %82, %92
  %87 = phi ptr [ %93, %92 ], [ %84, %82 ]
  %88 = getelementptr inbounds %struct.bNode, ptr %87, i64 0, i32 20
  %89 = load ptr, ptr %88, align 8, !tbaa !93
  %90 = icmp eq ptr %89, %1
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  tail call void @ED_node_tag_update_id(ptr noundef nonnull %73) #5
  br label %92

92:                                               ; preds = %86, %91
  %93 = load ptr, ptr %87, align 8, !tbaa !13
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %86, !llvm.loop !95

95:                                               ; preds = %92, %82, %78, %72
  %96 = getelementptr inbounds %struct.Scene, ptr %73, i64 0, i32 42
  %97 = load i64, ptr %96, align 8, !tbaa !52
  %98 = and i64 %97, 32
  %99 = icmp eq i64 %98, 0
  %100 = select i1 %99, i8 %74, i8 1
  %101 = load ptr, ptr %73, align 8, !tbaa !13
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %72, !llvm.loop !96

103:                                              ; preds = %95
  %104 = icmp eq i8 %100, 0
  br i1 %104, label %156, label %105

105:                                              ; preds = %103
  %106 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 20), align 8, !tbaa !70
  %107 = and i16 %106, 8
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %109, label %156

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %111 = load ptr, ptr %110, align 8, !tbaa !13
  %112 = icmp eq ptr %111, null
  br i1 %112, label %156, label %113

113:                                              ; preds = %109, %153
  %114 = phi ptr [ %154, %153 ], [ %111, %109 ]
  %115 = getelementptr inbounds %struct.Object, ptr %114, i64 0, i32 120
  %116 = load ptr, ptr %115, align 8, !tbaa !74
  %117 = tail call ptr @give_matarar(ptr noundef nonnull %114) #5
  %118 = tail call ptr @give_totcolp(ptr noundef nonnull %114) #5
  %119 = icmp ne ptr %116, null
  %120 = icmp ne ptr %118, null
  %121 = select i1 %119, i1 %120, i1 false
  %122 = icmp ne ptr %117, null
  %123 = select i1 %121, i1 %122, i1 false
  br i1 %123, label %124, label %153

124:                                              ; preds = %113
  %125 = load i16, ptr %118, align 2, !tbaa !42
  %126 = icmp sgt i16 %125, 0
  br i1 %126, label %127, label %153

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.Object, ptr %114, i64 0, i32 30
  %129 = load ptr, ptr %128, align 8, !tbaa !97
  %130 = icmp eq ptr %129, null
  %131 = getelementptr inbounds %struct.Object, ptr %114, i64 0, i32 29
  %132 = zext nneg i16 %125 to i64
  br label %133

133:                                              ; preds = %127, %150
  %134 = phi i64 [ 0, %127 ], [ %151, %150 ]
  br i1 %130, label %139, label %135

135:                                              ; preds = %133
  %136 = getelementptr inbounds i8, ptr %129, i64 %134
  %137 = load i8, ptr %136, align 1, !tbaa !98
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %135, %133
  br label %140

140:                                              ; preds = %135, %139
  %141 = phi ptr [ %117, %139 ], [ %131, %135 ]
  %142 = load ptr, ptr %141, align 8, !tbaa !13
  %143 = getelementptr inbounds ptr, ptr %142, i64 %134
  %144 = load ptr, ptr %143, align 8, !tbaa !13
  %145 = icmp eq ptr %144, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %140
  %147 = tail call fastcc i32 @material_uses_texture(ptr noundef nonnull %144, ptr noundef %1) #6, !range !50
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %146
  tail call void @GPU_drawobject_free(ptr noundef nonnull %116) #5
  br label %153

150:                                              ; preds = %140, %146
  %151 = add nuw nsw i64 %134, 1
  %152 = icmp eq i64 %151, %132
  br i1 %152, label %153, label %133, !llvm.loop !99

153:                                              ; preds = %150, %124, %149, %113
  %154 = load ptr, ptr %114, align 8, !tbaa !13
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %113, !llvm.loop !100

156:                                              ; preds = %153, %52, %109, %105, %103
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @world_changed(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @BKE_icon_getid(ptr noundef %1) #5
  tail call void @BKE_icon_changed(i32 noundef %3) #5
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2, %13
  %8 = phi ptr [ %14, %13 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 136
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @GPU_material_free(ptr noundef nonnull %8) #5
  br label %13

13:                                               ; preds = %7, %12
  %14 = load ptr, ptr %8, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !101

16:                                               ; preds = %13, %2
  %17 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 136), align 8, !tbaa !43
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @GPU_material_free(ptr noundef nonnull @defmaterial) #5
  br label %20

20:                                               ; preds = %19, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lamp_changed(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @BKE_icon_getid(ptr noundef %1) #5
  tail call void @BKE_icon_changed(i32 noundef %3) #5
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2, %17
  %8 = phi ptr [ %18, %17 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !102
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 125
  %14 = load ptr, ptr %13, align 8, !tbaa !103
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @GPU_lamp_free(ptr noundef nonnull %8) #5
  br label %17

17:                                               ; preds = %7, %12, %16
  %18 = load ptr, ptr %8, align 8, !tbaa !13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !llvm.loop !104

20:                                               ; preds = %17, %2
  %21 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %22 = load ptr, ptr %21, align 8, !tbaa !13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %20, %30
  %25 = phi ptr [ %31, %30 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.Material, ptr %25, i64 0, i32 136
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call void @GPU_material_free(ptr noundef nonnull %25) #5
  br label %30

30:                                               ; preds = %24, %29
  %31 = load ptr, ptr %25, align 8, !tbaa !13
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %24, !llvm.loop !105

33:                                               ; preds = %30, %20
  %34 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 136), align 8, !tbaa !43
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @GPU_material_free(ptr noundef nonnull @defmaterial) #5
  br label %37

37:                                               ; preds = %36, %33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @image_changed(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @BKE_icon_getid(ptr noundef %1) #5
  tail call void @BKE_icon_changed(i32 noundef %3) #5
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2, %13
  %8 = phi ptr [ %14, %13 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.Tex, ptr %8, i64 0, i32 54
  %10 = load ptr, ptr %9, align 8, !tbaa !106
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call fastcc void @texture_changed(ptr noundef %0, ptr noundef nonnull %8) #6
  br label %13

13:                                               ; preds = %7, %12
  %14 = load ptr, ptr %8, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !109

16:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scene_changed(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2, %21
  %7 = phi ptr [ %22, %21 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 125
  %9 = load ptr, ptr %8, align 8, !tbaa !103
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @GPU_lamp_free(ptr noundef nonnull %7) #5
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 27
  %14 = load i32, ptr %13, align 8, !tbaa !110
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  tail call void @BKE_texpaint_slots_refresh_object(ptr noundef %1, ptr noundef nonnull %7) #5
  %18 = tail call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef %1, ptr noundef nonnull %7, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #5
  %19 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 120
  %20 = load ptr, ptr %19, align 8, !tbaa !74
  tail call void @GPU_drawobject_free(ptr noundef %20) #5
  br label %21

21:                                               ; preds = %12, %17
  %22 = load ptr, ptr %7, align 8, !tbaa !13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %6, !llvm.loop !111

24:                                               ; preds = %21, %2
  %25 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %24, %34
  %29 = phi ptr [ %35, %34 ], [ %26, %24 ]
  %30 = getelementptr inbounds %struct.Material, ptr %29, i64 0, i32 136
  %31 = load ptr, ptr %30, align 8, !tbaa !43
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call void @GPU_material_free(ptr noundef nonnull %29) #5
  br label %34

34:                                               ; preds = %28, %33
  %35 = load ptr, ptr %29, align 8, !tbaa !13
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %28, !llvm.loop !112

37:                                               ; preds = %34, %24
  %38 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 136), align 8, !tbaa !43
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @GPU_material_free(ptr noundef nonnull @defmaterial) #5
  br label %41

41:                                               ; preds = %40, %37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_render_internal_init() local_unnamed_addr #0 {
  %1 = load ptr, ptr @RE_engine_id_BLENDER_RENDER, align 8, !tbaa !13
  %2 = tail call ptr @RE_engines_find(ptr noundef %1) #5
  %3 = getelementptr inbounds %struct.RenderEngineType, ptr %2, i64 0, i32 8
  store ptr @render_view3d_update, ptr %3, align 8, !tbaa !33
  %4 = getelementptr inbounds %struct.RenderEngineType, ptr %2, i64 0, i32 9
  store ptr @render_view3d_draw, ptr %4, align 8, !tbaa !113
  ret void
}

; Function Attrs: optsize
declare ptr @RE_engines_find(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @render_view3d_update(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @render_view3d_draw(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @BKE_icon_changed(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BKE_icon_getid(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_material_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @nodes_use_material(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %2, %20
  %7 = phi ptr [ %21, %20 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %9, %1
  br i1 %12, label %23, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 8
  %15 = load i16, ptr %14, align 4, !tbaa !114
  %16 = icmp eq i16 %15, 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = tail call fastcc i32 @nodes_use_material(ptr noundef nonnull %9, ptr noundef %1) #6, !range !50
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %6, %13, %17
  %21 = load ptr, ptr %7, align 8, !tbaa !13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %6, !llvm.loop !115

23:                                               ; preds = %11, %17, %20, %2
  %24 = phi i32 [ 0, %2 ], [ 0, %20 ], [ 1, %17 ], [ 1, %11 ]
  ret i32 %24
}

; Function Attrs: optsize
declare ptr @give_matarar(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @give_totcolp(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_drawobject_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_paint_invalidate_overlay_tex(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @material_uses_texture(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102
  %4 = tail call fastcc i32 @mtex_use_tex(ptr noundef nonnull %3, ptr noundef %1) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 77
  %8 = load i8, ptr %7, align 1, !tbaa !48
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = tail call fastcc i32 @nodes_use_tex(ptr noundef nonnull %12, ptr noundef %1) #6, !range !50
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %6, %10, %14
  br label %18

18:                                               ; preds = %14, %2, %17
  %19 = phi i32 [ 0, %17 ], [ 1, %2 ], [ 1, %14 ]
  ret i32 %19
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @mtex_use_tex(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %13
  %5 = phi i64 [ %14, %13 ], [ 0, %2 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !116
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %16, label %13

13:                                               ; preds = %4, %9
  %14 = add nuw nsw i64 %5, 1
  %15 = icmp eq i64 %14, 18
  br i1 %15, label %16, label %4, !llvm.loop !118

16:                                               ; preds = %13, %9, %2
  %17 = phi i32 [ 0, %2 ], [ 0, %13 ], [ 1, %9 ]
  ret i32 %17
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @nodes_use_tex(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %2, %28
  %7 = phi ptr [ %29, %28 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %9, %1
  br i1 %12, label %31, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %15 = load i16, ptr %14, align 8, !tbaa !42
  %16 = icmp eq i16 %15, 16717
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Material, ptr %9, i64 0, i32 102
  %19 = tail call fastcc i32 @mtex_use_tex(ptr noundef nonnull %18, ptr noundef %1) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %31

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 8
  %23 = load i16, ptr %22, align 4, !tbaa !114
  %24 = icmp eq i16 %23, 2
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = tail call fastcc i32 @nodes_use_tex(ptr noundef nonnull %9, ptr noundef %1) #6, !range !50
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %6, %17, %25, %21
  %29 = load ptr, ptr %7, align 8, !tbaa !13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %6, !llvm.loop !119

31:                                               ; preds = %11, %17, %25, %28, %2
  %32 = phi i32 [ 0, %2 ], [ 0, %28 ], [ 1, %25 ], [ 1, %17 ], [ 1, %11 ]
  ret i32 %32
}

; Function Attrs: optsize
declare void @ED_node_tag_update_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_lamp_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_texpaint_slots_refresh_object(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 1552}
!6 = !{!"Main", !7, i64 0, !7, i64 8, !8, i64 16, !10, i64 1040, !10, i64 1042, !10, i64 1044, !10, i64 1046, !11, i64 1048, !8, i64 1056, !10, i64 1072, !7, i64 1080, !12, i64 1088, !12, i64 1104, !12, i64 1120, !12, i64 1136, !12, i64 1152, !12, i64 1168, !12, i64 1184, !12, i64 1200, !12, i64 1216, !12, i64 1232, !12, i64 1248, !12, i64 1264, !12, i64 1280, !12, i64 1296, !12, i64 1312, !12, i64 1328, !12, i64 1344, !12, i64 1360, !12, i64 1376, !12, i64 1392, !12, i64 1408, !12, i64 1424, !12, i64 1440, !12, i64 1456, !12, i64 1472, !12, i64 1488, !12, i64 1504, !12, i64 1520, !12, i64 1536, !12, i64 1552, !12, i64 1568, !12, i64 1584, !12, i64 1600, !12, i64 1616, !8, i64 1632, !7, i64 1888, !7, i64 1896}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"short", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!"ListBase", !7, i64 0, !7, i64 8}
!13 = !{!7, !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !7, i64 24}
!17 = !{!"wmWindow", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !10, i64 104, !10, i64 106, !10, i64 108, !10, i64 110, !10, i64 112, !10, i64 114, !10, i64 116, !10, i64 118, !10, i64 120, !10, i64 122, !10, i64 124, !10, i64 126, !18, i64 128, !10, i64 132, !10, i64 134, !7, i64 136, !7, i64 144, !7, i64 152, !18, i64 160, !18, i64 164, !7, i64 168, !12, i64 176, !12, i64 192, !12, i64 208, !12, i64 224, !12, i64 240}
!18 = !{!"int", !8, i64 0}
!19 = !{!20, !8, i64 72}
!20 = !{!"ScrArea", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !21, i64 56, !8, i64 72, !8, i64 73, !10, i64 74, !10, i64 76, !10, i64 78, !10, i64 80, !10, i64 82, !10, i64 84, !8, i64 86, !8, i64 87, !7, i64 88, !12, i64 96, !12, i64 112, !12, i64 128, !12, i64 144}
!21 = !{!"rcti", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12}
!22 = !{!23, !10, i64 214}
!23 = !{!"ARegion", !7, i64 0, !7, i64 8, !24, i64 16, !21, i64 176, !21, i64 192, !10, i64 208, !10, i64 210, !10, i64 212, !10, i64 214, !10, i64 216, !10, i64 218, !26, i64 220, !10, i64 224, !10, i64 226, !10, i64 228, !10, i64 230, !10, i64 232, !10, i64 234, !10, i64 236, !10, i64 238, !7, i64 240, !12, i64 248, !12, i64 264, !12, i64 280, !12, i64 296, !12, i64 312, !12, i64 328, !12, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!24 = !{!"View2D", !25, i64 0, !25, i64 16, !21, i64 32, !21, i64 48, !21, i64 64, !8, i64 80, !8, i64 88, !26, i64 96, !26, i64 100, !10, i64 104, !10, i64 106, !10, i64 108, !10, i64 110, !10, i64 112, !10, i64 114, !10, i64 116, !10, i64 118, !10, i64 120, !10, i64 122, !10, i64 124, !10, i64 126, !7, i64 128, !18, i64 136, !18, i64 140, !7, i64 144, !7, i64 152}
!25 = !{!"rctf", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12}
!26 = !{!"float", !8, i64 0}
!27 = !{!23, !7, i64 376}
!28 = !{!29, !7, i64 656}
!29 = !{!"RegionView3D", !8, i64 0, !8, i64 64, !8, i64 128, !8, i64 192, !8, i64 256, !8, i64 320, !8, i64 384, !8, i64 448, !8, i64 544, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !7, i64 672, !7, i64 680, !7, i64 688, !8, i64 696, !8, i64 760, !26, i64 776, !26, i64 780, !26, i64 784, !26, i64 788, !8, i64 792, !26, i64 804, !8, i64 808, !8, i64 809, !8, i64 810, !8, i64 811, !8, i64 812, !8, i64 813, !8, i64 816, !10, i64 824, !10, i64 826, !8, i64 828, !10, i64 844, !10, i64 846, !26, i64 848, !8, i64 852, !26, i64 864, !8, i64 868}
!30 = !{!31, !18, i64 16}
!31 = !{!"RenderEngine", !7, i64 0, !7, i64 8, !18, i64 16, !7, i64 24, !18, i64 32, !18, i64 36, !18, i64 40, !7, i64 48, !12, i64 56, !8, i64 72, !18, i64 584, !18, i64 588, !7, i64 592, !18, i64 600, !18, i64 604, !25, i64 608, !21, i64 624, !8, i64 640, !18, i64 704, !18, i64 708}
!32 = !{!31, !7, i64 0}
!33 = !{!34, !7, i64 176}
!34 = !{!"RenderEngineType", !7, i64 0, !7, i64 8, !8, i64 16, !8, i64 80, !18, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !35, i64 200}
!35 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !15}
!42 = !{!10, !10, i64 0}
!43 = !{!44, !7, i64 928}
!44 = !{!"Material", !45, i64 0, !7, i64 120, !10, i64 128, !10, i64 130, !26, i64 132, !26, i64 136, !26, i64 140, !26, i64 144, !26, i64 148, !26, i64 152, !26, i64 156, !26, i64 160, !26, i64 164, !26, i64 168, !26, i64 172, !26, i64 176, !26, i64 180, !26, i64 184, !26, i64 188, !26, i64 192, !26, i64 196, !26, i64 200, !26, i64 204, !26, i64 208, !26, i64 212, !26, i64 216, !26, i64 220, !46, i64 224, !47, i64 312, !26, i64 328, !26, i64 332, !26, i64 336, !26, i64 340, !26, i64 344, !26, i64 348, !26, i64 352, !10, i64 356, !10, i64 358, !10, i64 360, !8, i64 362, !8, i64 363, !26, i64 364, !26, i64 368, !10, i64 372, !10, i64 374, !26, i64 376, !26, i64 380, !26, i64 384, !26, i64 388, !10, i64 392, !10, i64 394, !18, i64 396, !18, i64 400, !18, i64 404, !18, i64 408, !10, i64 412, !10, i64 414, !10, i64 416, !10, i64 418, !26, i64 420, !26, i64 424, !26, i64 428, !26, i64 432, !26, i64 436, !26, i64 440, !26, i64 444, !26, i64 448, !26, i64 452, !26, i64 456, !8, i64 460, !26, i64 524, !26, i64 528, !26, i64 532, !18, i64 536, !8, i64 540, !8, i64 541, !8, i64 542, !8, i64 543, !10, i64 544, !10, i64 546, !10, i64 548, !8, i64 550, !8, i64 551, !10, i64 552, !10, i64 554, !26, i64 556, !26, i64 560, !8, i64 564, !26, i64 580, !26, i64 584, !10, i64 588, !10, i64 590, !7, i64 592, !7, i64 600, !8, i64 608, !8, i64 609, !8, i64 610, !8, i64 611, !10, i64 612, !10, i64 614, !26, i64 616, !26, i64 620, !8, i64 624, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !26, i64 800, !26, i64 804, !26, i64 808, !26, i64 812, !26, i64 816, !10, i64 820, !10, i64 822, !8, i64 824, !8, i64 836, !26, i64 848, !26, i64 852, !26, i64 856, !26, i64 860, !26, i64 864, !26, i64 868, !26, i64 872, !10, i64 876, !10, i64 878, !18, i64 880, !10, i64 884, !10, i64 886, !8, i64 888, !10, i64 904, !10, i64 906, !10, i64 908, !10, i64 910, !10, i64 912, !8, i64 914, !7, i64 920, !12, i64 928}
!45 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !10, i64 98, !18, i64 100, !18, i64 104, !18, i64 108, !7, i64 112}
!46 = !{!"VolumeSettings", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !8, i64 16, !8, i64 28, !8, i64 40, !26, i64 52, !26, i64 56, !26, i64 60, !10, i64 64, !10, i64 66, !10, i64 68, !10, i64 70, !26, i64 72, !26, i64 76, !26, i64 80, !26, i64 84}
!47 = !{!"GameSettings", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12}
!48 = !{!44, !8, i64 543}
!49 = !{!44, !7, i64 768}
!50 = !{i32 0, i32 2}
!51 = distinct !{!51, !15}
!52 = !{!53, !11, i64 4648}
!53 = !{!"Scene", !45, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !12, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !18, i64 232, !18, i64 236, !18, i64 240, !10, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !54, i64 280, !61, i64 4264, !12, i64 4296, !12, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !10, i64 4376, !10, i64 4378, !18, i64 4380, !12, i64 4384, !62, i64 4400, !63, i64 4416, !66, i64 4600, !7, i64 4608, !67, i64 4616, !7, i64 4640, !11, i64 4648, !11, i64 4656, !56, i64 4664, !57, i64 4824, !68, i64 4888, !7, i64 4952}
!54 = !{!"RenderData", !55, i64 0, !7, i64 248, !7, i64 256, !58, i64 264, !59, i64 328, !18, i64 400, !18, i64 404, !18, i64 408, !26, i64 412, !18, i64 416, !18, i64 420, !18, i64 424, !18, i64 428, !10, i64 432, !10, i64 434, !26, i64 436, !26, i64 440, !26, i64 444, !26, i64 448, !26, i64 452, !10, i64 456, !10, i64 458, !10, i64 460, !10, i64 462, !10, i64 464, !10, i64 466, !18, i64 468, !10, i64 472, !10, i64 474, !10, i64 476, !10, i64 478, !10, i64 480, !10, i64 482, !18, i64 484, !18, i64 488, !10, i64 492, !10, i64 494, !18, i64 496, !18, i64 500, !10, i64 504, !10, i64 506, !10, i64 508, !10, i64 510, !10, i64 512, !8, i64 514, !8, i64 515, !18, i64 516, !18, i64 520, !18, i64 524, !10, i64 528, !10, i64 530, !10, i64 532, !10, i64 534, !10, i64 536, !10, i64 538, !10, i64 540, !10, i64 542, !25, i64 544, !25, i64 560, !21, i64 576, !12, i64 592, !10, i64 608, !10, i64 610, !26, i64 612, !26, i64 616, !26, i64 620, !26, i64 624, !18, i64 628, !26, i64 632, !26, i64 636, !26, i64 640, !26, i64 644, !10, i64 648, !10, i64 650, !10, i64 652, !10, i64 654, !10, i64 656, !10, i64 658, !26, i64 660, !26, i64 664, !10, i64 668, !10, i64 670, !26, i64 672, !26, i64 676, !8, i64 680, !18, i64 1704, !10, i64 1708, !10, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !18, i64 2520, !10, i64 2524, !10, i64 2526, !26, i64 2528, !26, i64 2532, !10, i64 2536, !10, i64 2538, !26, i64 2540, !10, i64 2544, !10, i64 2546, !18, i64 2548, !10, i64 2552, !10, i64 2554, !10, i64 2556, !10, i64 2558, !26, i64 2560, !26, i64 2564, !7, i64 2568, !18, i64 2576, !26, i64 2580, !8, i64 2584, !60, i64 2616, !18, i64 3976, !18, i64 3980}
!55 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !10, i64 8, !10, i64 10, !26, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !56, i64 24, !57, i64 184}
!56 = !{!"ColorManagedViewSettings", !18, i64 0, !18, i64 4, !8, i64 8, !8, i64 72, !26, i64 136, !26, i64 140, !7, i64 144, !7, i64 152}
!57 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!58 = !{!"QuicktimeCodecSettings", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !18, i64 24, !18, i64 28, !18, i64 32, !18, i64 36, !18, i64 40, !18, i64 44, !10, i64 48, !10, i64 50, !18, i64 52, !18, i64 56, !18, i64 60}
!59 = !{!"FFMpegCodecData", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !18, i64 24, !18, i64 28, !26, i64 32, !18, i64 36, !18, i64 40, !18, i64 44, !18, i64 48, !18, i64 52, !18, i64 56, !18, i64 60, !7, i64 64}
!60 = !{!"BakeData", !55, i64 0, !8, i64 248, !10, i64 1272, !10, i64 1274, !10, i64 1276, !10, i64 1278, !26, i64 1280, !26, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!61 = !{!"AudioData", !18, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !18, i64 16, !10, i64 20, !10, i64 22, !26, i64 24, !26, i64 28}
!62 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!63 = !{!"GameData", !62, i64 0, !10, i64 16, !10, i64 18, !10, i64 20, !10, i64 22, !10, i64 24, !10, i64 26, !10, i64 28, !10, i64 30, !10, i64 32, !8, i64 34, !64, i64 40, !10, i64 64, !10, i64 66, !26, i64 68, !65, i64 72, !26, i64 128, !26, i64 132, !18, i64 136, !10, i64 140, !10, i64 142, !10, i64 144, !10, i64 146, !10, i64 148, !10, i64 150, !10, i64 152, !10, i64 154, !10, i64 156, !10, i64 158, !10, i64 160, !10, i64 162, !26, i64 164, !26, i64 168, !26, i64 172, !26, i64 176, !26, i64 180}
!64 = !{!"GameDome", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !26, i64 8, !26, i64 12, !7, i64 16}
!65 = !{!"RecastData", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20, !26, i64 24, !26, i64 28, !26, i64 32, !26, i64 36, !18, i64 40, !26, i64 44, !26, i64 48, !10, i64 52, !10, i64 54}
!66 = !{!"UnitSettings", !26, i64 0, !8, i64 4, !8, i64 5, !10, i64 6}
!67 = !{!"PhysicsSettings", !8, i64 0, !18, i64 12, !18, i64 16, !18, i64 20}
!68 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!69 = distinct !{!69, !15}
!70 = !{!71, !10, i64 8480}
!71 = !{!"UserDef", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !18, i64 8468, !10, i64 8472, !10, i64 8474, !10, i64 8476, !10, i64 8478, !10, i64 8480, !10, i64 8482, !18, i64 8484, !18, i64 8488, !18, i64 8492, !10, i64 8496, !10, i64 8498, !18, i64 8500, !18, i64 8504, !18, i64 8508, !18, i64 8512, !18, i64 8516, !18, i64 8520, !18, i64 8524, !10, i64 8528, !10, i64 8530, !10, i64 8532, !10, i64 8534, !12, i64 8536, !12, i64 8552, !12, i64 8568, !12, i64 8584, !12, i64 8600, !12, i64 8616, !12, i64 8632, !8, i64 8648, !10, i64 8712, !10, i64 8714, !10, i64 8716, !10, i64 8718, !10, i64 8720, !10, i64 8722, !10, i64 8724, !10, i64 8726, !8, i64 8728, !10, i64 8896, !10, i64 8898, !10, i64 8900, !10, i64 8902, !10, i64 8904, !10, i64 8906, !10, i64 8908, !10, i64 8910, !18, i64 8912, !18, i64 8916, !10, i64 8920, !10, i64 8922, !10, i64 8924, !10, i64 8926, !10, i64 8928, !10, i64 8930, !10, i64 8932, !10, i64 8934, !10, i64 8936, !10, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !10, i64 8944, !10, i64 8946, !10, i64 8948, !10, i64 8950, !10, i64 8952, !10, i64 8954, !26, i64 8956, !26, i64 8960, !18, i64 8964, !10, i64 8968, !10, i64 8970, !26, i64 8972, !10, i64 8976, !10, i64 8978, !10, i64 8980, !10, i64 8982, !72, i64 8984, !8, i64 9760, !8, i64 9772, !10, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !18, i64 10896, !18, i64 10900, !26, i64 10904, !26, i64 10908, !18, i64 10912, !10, i64 10916, !10, i64 10918, !10, i64 10920, !10, i64 10922, !10, i64 10924, !10, i64 10926, !73, i64 10928}
!72 = !{!"ColorBand", !10, i64 0, !10, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!73 = !{!"WalkNavigation", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20, !10, i64 24, !8, i64 26}
!74 = !{!75, !7, i64 1296}
!75 = !{!"Object", !45, i64 0, !7, i64 120, !7, i64 128, !10, i64 136, !10, i64 138, !18, i64 140, !18, i64 144, !18, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !76, i64 312, !7, i64 360, !12, i64 368, !12, i64 384, !12, i64 400, !12, i64 416, !18, i64 432, !18, i64 436, !7, i64 440, !7, i64 448, !18, i64 456, !18, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !26, i64 616, !26, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !18, i64 944, !10, i64 948, !10, i64 950, !10, i64 952, !10, i64 954, !10, i64 956, !10, i64 958, !10, i64 960, !10, i64 962, !10, i64 964, !8, i64 966, !8, i64 967, !18, i64 968, !18, i64 972, !18, i64 976, !18, i64 980, !18, i64 984, !26, i64 988, !26, i64 992, !26, i64 996, !26, i64 1000, !26, i64 1004, !26, i64 1008, !26, i64 1012, !26, i64 1016, !26, i64 1020, !26, i64 1024, !26, i64 1028, !26, i64 1032, !10, i64 1036, !10, i64 1038, !10, i64 1040, !8, i64 1042, !8, i64 1043, !10, i64 1044, !8, i64 1046, !8, i64 1047, !26, i64 1048, !26, i64 1052, !12, i64 1056, !12, i64 1072, !12, i64 1088, !12, i64 1104, !26, i64 1120, !10, i64 1124, !10, i64 1126, !8, i64 1128, !18, i64 1144, !18, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !10, i64 1162, !8, i64 1164, !12, i64 1176, !12, i64 1192, !12, i64 1208, !12, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !10, i64 1266, !26, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !11, i64 1304, !11, i64 1312, !18, i64 1320, !18, i64 1324, !12, i64 1328, !12, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !12, i64 1400, !7, i64 1416}
!76 = !{!"bAnimVizSettings", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !10, i64 16, !10, i64 18, !10, i64 20, !10, i64 22, !10, i64 24, !10, i64 26, !10, i64 28, !10, i64 30, !18, i64 32, !18, i64 36, !18, i64 40, !18, i64 44}
!77 = distinct !{!77, !15}
!78 = distinct !{!78, !15}
!79 = distinct !{!79, !15}
!80 = !{!31, !18, i64 600}
!81 = distinct !{!81, !15}
!82 = distinct !{!82, !15}
!83 = distinct !{!83, !15}
!84 = distinct !{!84, !15}
!85 = !{!86, !7, i64 512}
!86 = !{!"Lamp", !45, i64 0, !7, i64 120, !10, i64 128, !10, i64 130, !18, i64 132, !10, i64 136, !10, i64 138, !26, i64 140, !26, i64 144, !26, i64 148, !26, i64 152, !26, i64 156, !26, i64 160, !26, i64 164, !26, i64 168, !26, i64 172, !26, i64 176, !26, i64 180, !26, i64 184, !26, i64 188, !26, i64 192, !26, i64 196, !7, i64 200, !10, i64 208, !10, i64 210, !26, i64 212, !26, i64 216, !26, i64 220, !26, i64 224, !26, i64 228, !26, i64 232, !26, i64 236, !10, i64 240, !10, i64 242, !10, i64 244, !10, i64 246, !8, i64 248, !8, i64 249, !10, i64 250, !10, i64 252, !10, i64 254, !10, i64 256, !10, i64 258, !26, i64 260, !26, i64 264, !26, i64 268, !26, i64 272, !10, i64 276, !10, i64 278, !10, i64 280, !10, i64 282, !10, i64 284, !10, i64 286, !26, i64 288, !26, i64 292, !26, i64 296, !26, i64 300, !26, i64 304, !26, i64 308, !26, i64 312, !26, i64 316, !26, i64 320, !26, i64 324, !26, i64 328, !26, i64 332, !26, i64 336, !10, i64 340, !8, i64 342, !7, i64 344, !8, i64 352, !10, i64 496, !10, i64 498, !8, i64 500, !7, i64 504, !7, i64 512}
!87 = distinct !{!87, !15}
!88 = !{!89, !7, i64 520}
!89 = !{!"World", !45, i64 0, !7, i64 120, !10, i64 128, !10, i64 130, !10, i64 132, !10, i64 134, !26, i64 136, !26, i64 140, !26, i64 144, !26, i64 148, !26, i64 152, !26, i64 156, !26, i64 160, !26, i64 164, !26, i64 168, !26, i64 172, !26, i64 176, !26, i64 180, !26, i64 184, !26, i64 188, !26, i64 192, !26, i64 196, !10, i64 200, !10, i64 202, !10, i64 204, !10, i64 206, !10, i64 208, !10, i64 210, !10, i64 212, !10, i64 214, !26, i64 216, !26, i64 220, !26, i64 224, !26, i64 228, !26, i64 232, !26, i64 236, !26, i64 240, !26, i64 244, !26, i64 248, !26, i64 252, !26, i64 256, !26, i64 260, !10, i64 264, !10, i64 266, !10, i64 268, !10, i64 270, !26, i64 272, !26, i64 276, !26, i64 280, !26, i64 284, !10, i64 288, !10, i64 290, !10, i64 292, !10, i64 294, !26, i64 296, !26, i64 300, !26, i64 304, !26, i64 308, !26, i64 312, !26, i64 316, !26, i64 320, !10, i64 324, !10, i64 326, !10, i64 328, !10, i64 330, !10, i64 332, !10, i64 334, !7, i64 336, !7, i64 344, !7, i64 352, !8, i64 360, !10, i64 504, !10, i64 506, !8, i64 508, !7, i64 512, !7, i64 520}
!90 = distinct !{!90, !15}
!91 = !{!53, !8, i64 246}
!92 = !{!53, !7, i64 248}
!93 = !{!94, !7, i64 240}
!94 = !{!"bNode", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !8, i64 104, !18, i64 168, !10, i64 172, !10, i64 174, !10, i64 176, !10, i64 178, !10, i64 180, !10, i64 182, !10, i64 184, !10, i64 186, !8, i64 188, !12, i64 200, !12, i64 216, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !12, i64 264, !26, i64 280, !26, i64 284, !26, i64 288, !26, i64 292, !26, i64 296, !26, i64 300, !26, i64 304, !18, i64 308, !8, i64 312, !10, i64 376, !10, i64 378, !26, i64 380, !26, i64 384, !10, i64 388, !10, i64 390, !7, i64 392, !25, i64 400, !25, i64 416, !25, i64 432, !10, i64 448, !10, i64 450, !18, i64 452, !7, i64 456}
!95 = distinct !{!95, !15}
!96 = distinct !{!96, !15}
!97 = !{!75, !7, i64 448}
!98 = !{!8, !8, i64 0}
!99 = distinct !{!99, !15}
!100 = distinct !{!100, !15}
!101 = distinct !{!101, !15}
!102 = !{!75, !7, i64 296}
!103 = !{!75, !7, i64 1328}
!104 = distinct !{!104, !15}
!105 = distinct !{!105, !15}
!106 = !{!107, !7, i64 352}
!107 = !{!"Tex", !45, i64 0, !7, i64 120, !26, i64 128, !26, i64 132, !26, i64 136, !26, i64 140, !26, i64 144, !26, i64 148, !26, i64 152, !26, i64 156, !26, i64 160, !26, i64 164, !26, i64 168, !26, i64 172, !26, i64 176, !26, i64 180, !26, i64 184, !26, i64 188, !26, i64 192, !26, i64 196, !26, i64 200, !26, i64 204, !26, i64 208, !26, i64 212, !10, i64 216, !10, i64 218, !10, i64 220, !10, i64 222, !10, i64 224, !10, i64 226, !10, i64 228, !10, i64 230, !10, i64 232, !10, i64 234, !26, i64 236, !26, i64 240, !26, i64 244, !26, i64 248, !18, i64 252, !18, i64 256, !10, i64 260, !10, i64 262, !10, i64 264, !10, i64 266, !18, i64 268, !18, i64 272, !18, i64 276, !18, i64 280, !26, i64 284, !26, i64 288, !26, i64 292, !108, i64 296, !7, i64 336, !7, i64 344, !7, i64 352, !7, i64 360, !7, i64 368, !7, i64 376, !7, i64 384, !7, i64 392, !7, i64 400, !8, i64 408, !8, i64 409}
!108 = !{!"ImageUser", !7, i64 0, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 27, !10, i64 28, !10, i64 30, !10, i64 32, !10, i64 34, !18, i64 36}
!109 = distinct !{!109, !15}
!110 = !{!75, !18, i64 432}
!111 = distinct !{!111, !15}
!112 = distinct !{!112, !15}
!113 = !{!34, !7, i64 184}
!114 = !{!94, !10, i64 172}
!115 = distinct !{!115, !15}
!116 = !{!117, !7, i64 16}
!117 = !{!"MTex", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !7, i64 8, !7, i64 16, !8, i64 24, !8, i64 88, !8, i64 89, !8, i64 90, !8, i64 91, !8, i64 92, !8, i64 104, !26, i64 116, !10, i64 120, !10, i64 122, !10, i64 124, !10, i64 126, !10, i64 128, !10, i64 130, !8, i64 132, !8, i64 133, !26, i64 140, !26, i64 144, !26, i64 148, !26, i64 152, !26, i64 156, !26, i64 160, !26, i64 164, !26, i64 168, !26, i64 172, !26, i64 176, !26, i64 180, !26, i64 184, !26, i64 188, !26, i64 192, !26, i64 196, !26, i64 200, !26, i64 204, !26, i64 208, !26, i64 212, !26, i64 216, !26, i64 220, !26, i64 224, !26, i64 228, !26, i64 232, !26, i64 236, !26, i64 240, !26, i64 244, !26, i64 248, !26, i64 252, !26, i64 256, !26, i64 260, !26, i64 264, !26, i64 268, !26, i64 272, !26, i64 276, !26, i64 280, !26, i64 284, !26, i64 288, !26, i64 292, !26, i64 296, !26, i64 300, !26, i64 304, !26, i64 308}
!118 = distinct !{!118, !15}
!119 = distinct !{!119, !15}
