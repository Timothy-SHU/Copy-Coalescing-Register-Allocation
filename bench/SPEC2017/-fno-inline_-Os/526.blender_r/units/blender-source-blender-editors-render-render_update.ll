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
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  tail call void @CTX_wm_manager_set(ptr noundef %9, ptr noundef %11) #5
  %12 = load ptr, ptr %10, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.wmWindowManager, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = icmp eq ptr %14, null
  br i1 %15, label %67, label %16

16:                                               ; preds = %8
  %17 = icmp eq i32 %2, 0
  br label %21

18:                                               ; preds = %64, %21
  %19 = load ptr, ptr %22, align 8, !tbaa !42
  %20 = icmp eq ptr %19, null
  br i1 %20, label %67, label %21, !llvm.loop !43

21:                                               ; preds = %16, %18
  %22 = phi ptr [ %14, %16 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.wmWindow, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  tail call void @CTX_wm_window_set(ptr noundef %9, ptr noundef nonnull %22) #5
  %25 = getelementptr inbounds %struct.bScreen, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  %27 = icmp eq ptr %26, null
  br i1 %27, label %18, label %28

28:                                               ; preds = %21, %64
  %29 = phi ptr [ %65, %64 ], [ %26, %21 ]
  %30 = getelementptr inbounds %struct.ScrArea, ptr %29, i64 0, i32 8
  %31 = load i8, ptr %30, align 8, !tbaa !48
  %32 = icmp eq i8 %31, 1
  br i1 %32, label %33, label %64

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ScrArea, ptr %29, i64 0, i32 20
  %35 = load ptr, ptr %34, align 8, !tbaa !42
  %36 = icmp eq ptr %35, null
  br i1 %36, label %64, label %37

37:                                               ; preds = %33, %61
  %38 = phi ptr [ %62, %61 ], [ %35, %33 ]
  %39 = getelementptr inbounds %struct.ARegion, ptr %38, i64 0, i32 8
  %40 = load i16, ptr %39, align 2, !tbaa !51
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.ARegion, ptr %38, i64 0, i32 30
  %44 = load ptr, ptr %43, align 8, !tbaa !56
  %45 = getelementptr inbounds %struct.RegionView3D, ptr %44, i64 0, i32 11
  %46 = load ptr, ptr %45, align 8, !tbaa !57
  %47 = icmp eq ptr %46, null
  br i1 %47, label %61, label %48

48:                                               ; preds = %42
  br i1 %17, label %49, label %54

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.RenderEngine, ptr %46, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !59
  %52 = and i32 %51, 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %49, %48
  tail call void @CTX_wm_screen_set(ptr noundef %9, ptr noundef %24) #5
  tail call void @CTX_wm_area_set(ptr noundef %9, ptr noundef nonnull %29) #5
  tail call void @CTX_wm_region_set(ptr noundef %9, ptr noundef nonnull %38) #5
  %55 = getelementptr inbounds %struct.RenderEngine, ptr %46, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !59
  %57 = and i32 %56, -9
  store i32 %57, ptr %55, align 8, !tbaa !59
  %58 = load ptr, ptr %46, align 8, !tbaa !61
  %59 = getelementptr inbounds %struct.RenderEngineType, ptr %58, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !62
  tail call void %60(ptr noundef nonnull %46, ptr noundef %9) #5
  br label %61

61:                                               ; preds = %42, %49, %54, %37
  %62 = load ptr, ptr %38, align 8, !tbaa !42
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %37, !llvm.loop !65

64:                                               ; preds = %61, %33, %28
  %65 = load ptr, ptr %29, align 8, !tbaa !42
  %66 = icmp eq ptr %65, null
  br i1 %66, label %18, label %28, !llvm.loop !66

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
  %3 = load i8, ptr %2, align 8, !tbaa !48
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %5, label %26

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %5, %23
  %10 = phi ptr [ %24, %23 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 8
  %12 = load i16, ptr %11, align 2, !tbaa !51
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 30
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @RE_engine_free(ptr noundef nonnull %20) #5
  store ptr null, ptr %19, align 8, !tbaa !57
  br label %23

23:                                               ; preds = %18, %22, %9, %14
  %24 = load ptr, ptr %10, align 8, !tbaa !42
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %9, !llvm.loop !67

26:                                               ; preds = %23, %5, %1
  ret void
}

; Function Attrs: optsize
declare void @RE_engine_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_render_engine_changed(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 26
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %8

5:                                                ; preds = %13, %8
  %6 = load ptr, ptr %9, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8, !llvm.loop !68

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.bScreen, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = icmp eq ptr %11, null
  br i1 %12, label %5, label %13

13:                                               ; preds = %8, %13
  %14 = phi ptr [ %15, %13 ], [ %11, %8 ]
  tail call void @ED_render_engine_area_exit(ptr noundef nonnull %14) #6
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = icmp eq ptr %15, null
  br i1 %16, label %5, label %13, !llvm.loop !69

17:                                               ; preds = %5, %1
  tail call void @RE_FreePersistentData() #5
  %18 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17, %21
  %22 = phi ptr [ %23, %21 ], [ %19, %17 ]
  tail call void @ED_render_id_flush_update(ptr noundef %0, ptr noundef nonnull %22) #6
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %21, !llvm.loop !70

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
  %7 = load i16, ptr %6, align 8, !tbaa !71
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
define internal fastcc void @material_changed(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !72 {
  %3 = tail call i32 @BKE_icon_getid(ptr noundef %1) #5
  tail call void @BKE_icon_changed(i32 noundef %3) #5
  %4 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 136
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @GPU_material_free(ptr noundef nonnull %1) #5
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = icmp eq ptr %10, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %8, %30
  %13 = phi ptr [ %31, %30 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.Material, ptr %13, i64 0, i32 77
  %15 = load i8, ptr %14, align 1, !tbaa !78
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.Material, ptr %13, i64 0, i32 103
  %19 = load ptr, ptr %18, align 8, !tbaa !79
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = tail call fastcc i32 @nodes_use_material(ptr noundef nonnull %19, ptr noundef %1) #6, !range !80
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @BKE_icon_getid(ptr noundef nonnull %13) #5
  tail call void @BKE_icon_changed(i32 noundef %25) #5
  %26 = getelementptr inbounds %struct.Material, ptr %13, i64 0, i32 136
  %27 = load ptr, ptr %26, align 8, !tbaa !73
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call void @GPU_material_free(ptr noundef nonnull %13) #5
  br label %30

30:                                               ; preds = %24, %29, %12, %17, %21
  %31 = load ptr, ptr %13, align 8, !tbaa !42
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %12, !llvm.loop !81

33:                                               ; preds = %30, %8
  %34 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  br label %35

35:                                               ; preds = %39, %33
  %36 = phi ptr [ %34, %33 ], [ %37, %39 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !42
  %38 = icmp eq ptr %37, null
  br i1 %38, label %81, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.Scene, ptr %37, i64 0, i32 42
  %41 = load i64, ptr %40, align 8, !tbaa !82
  %42 = and i64 %41, 32
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %35, label %44, !llvm.loop !99

44:                                               ; preds = %39
  %45 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 20), align 8, !tbaa !100
  %46 = and i16 %45, 8
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %81

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %50 = load ptr, ptr %49, align 8, !tbaa !42
  %51 = icmp eq ptr %50, null
  br i1 %51, label %81, label %52

52:                                               ; preds = %48, %78
  %53 = phi ptr [ %79, %78 ], [ %50, %48 ]
  %54 = getelementptr inbounds %struct.Object, ptr %53, i64 0, i32 120
  %55 = load ptr, ptr %54, align 8, !tbaa !104
  %56 = tail call ptr @give_matarar(ptr noundef nonnull %53) #5
  %57 = tail call ptr @give_totcolp(ptr noundef nonnull %53) #5
  %58 = icmp ne ptr %55, null
  %59 = icmp ne ptr %57, null
  %60 = select i1 %58, i1 %59, i1 false
  %61 = icmp ne ptr %56, null
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %78

63:                                               ; preds = %52
  %64 = load i16, ptr %57, align 2, !tbaa !71
  %65 = icmp sgt i16 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load ptr, ptr %56, align 8, !tbaa !42
  %68 = zext nneg i16 %64 to i64
  br label %72

69:                                               ; preds = %72
  %70 = add nuw nsw i64 %73, 1
  %71 = icmp eq i64 %70, %68
  br i1 %71, label %78, label %72, !llvm.loop !107

72:                                               ; preds = %66, %69
  %73 = phi i64 [ 0, %66 ], [ %70, %69 ]
  %74 = getelementptr inbounds ptr, ptr %67, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !42
  %76 = icmp eq ptr %75, %1
  br i1 %76, label %77, label %69

77:                                               ; preds = %72
  tail call void @GPU_drawobject_free(ptr noundef nonnull %55) #5
  br label %78

78:                                               ; preds = %69, %63, %77, %52
  %79 = load ptr, ptr %53, align 8, !tbaa !42
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %52, !llvm.loop !108

81:                                               ; preds = %35, %78, %48, %44
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @render_engine_flag_changed(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !109 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 26
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %9

6:                                                ; preds = %41, %9
  %7 = load ptr, ptr %10, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %44, label %9, !llvm.loop !110

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %11 = getelementptr inbounds %struct.bScreen, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = icmp eq ptr %12, null
  br i1 %13, label %6, label %14

14:                                               ; preds = %9, %41
  %15 = phi ptr [ %42, %41 ], [ %12, %9 ]
  %16 = getelementptr inbounds %struct.ScrArea, ptr %15, i64 0, i32 8
  %17 = load i8, ptr %16, align 8, !tbaa !48
  %18 = icmp eq i8 %17, 1
  br i1 %18, label %19, label %41

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ScrArea, ptr %15, i64 0, i32 20
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = icmp eq ptr %21, null
  br i1 %22, label %41, label %23

23:                                               ; preds = %19, %38
  %24 = phi ptr [ %39, %38 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 8
  %26 = load i16, ptr %25, align 2, !tbaa !51
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 30
  %30 = load ptr, ptr %29, align 8, !tbaa !56
  %31 = getelementptr inbounds %struct.RegionView3D, ptr %30, i64 0, i32 11
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.RenderEngine, ptr %32, i64 0, i32 13
  %36 = load i32, ptr %35, align 8, !tbaa !111
  %37 = or i32 %36, %1
  store i32 %37, ptr %35, align 8, !tbaa !111
  br label %38

38:                                               ; preds = %28, %34, %23
  %39 = load ptr, ptr %24, align 8, !tbaa !42
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %23, !llvm.loop !112

41:                                               ; preds = %38, %19, %14
  %42 = load ptr, ptr %15, align 8, !tbaa !42
  %43 = icmp eq ptr %42, null
  br i1 %43, label %6, label %14, !llvm.loop !113

44:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @texture_changed(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !114 {
  %3 = tail call i32 @BKE_icon_getid(ptr noundef %1) #5
  tail call void @BKE_icon_changed(i32 noundef %3) #5
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %2 ]
  tail call void @BKE_paint_invalidate_overlay_tex(ptr noundef nonnull %8, ptr noundef %1) #5
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7, !llvm.loop !115

11:                                               ; preds = %7, %2
  %12 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %11, %25
  %16 = phi ptr [ %26, %25 ], [ %13, %11 ]
  %17 = tail call fastcc i32 @material_uses_texture(ptr noundef nonnull %16, ptr noundef %1) #6, !range !80
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @BKE_icon_getid(ptr noundef nonnull %16) #5
  tail call void @BKE_icon_changed(i32 noundef %20) #5
  %21 = getelementptr inbounds %struct.Material, ptr %16, i64 0, i32 136
  %22 = load ptr, ptr %21, align 8, !tbaa !73
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void @GPU_material_free(ptr noundef nonnull %16) #5
  br label %25

25:                                               ; preds = %19, %24, %15
  %26 = load ptr, ptr %16, align 8, !tbaa !42
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %15, !llvm.loop !116

28:                                               ; preds = %25, %11
  %29 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 21
  %30 = load ptr, ptr %29, align 8, !tbaa !42
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
  %39 = load ptr, ptr %38, align 8, !tbaa !117
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = tail call fastcc i32 @nodes_use_tex(ptr noundef nonnull %39, ptr noundef %1) #6, !range !80
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %32
  tail call fastcc void @lamp_changed(ptr noundef %0, ptr noundef nonnull %33) #6
  br label %45

45:                                               ; preds = %44, %37, %41
  %46 = load ptr, ptr %33, align 8, !tbaa !42
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %32, !llvm.loop !119

48:                                               ; preds = %45, %28
  %49 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 25
  %50 = load ptr, ptr %49, align 8, !tbaa !42
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %69, %48
  %53 = load ptr, ptr %4, align 8, !tbaa !42
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
  %62 = load ptr, ptr %61, align 8, !tbaa !120
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = tail call fastcc i32 @nodes_use_tex(ptr noundef nonnull %62, ptr noundef %1) #6, !range !80
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64, %55
  %68 = tail call i32 @BKE_icon_getid(ptr noundef nonnull %56) #5
  tail call void @BKE_icon_changed(i32 noundef %68) #5
  br label %69

69:                                               ; preds = %60, %64, %67
  %70 = load ptr, ptr %56, align 8, !tbaa !42
  %71 = icmp eq ptr %70, null
  br i1 %71, label %52, label %55, !llvm.loop !122

72:                                               ; preds = %52, %95
  %73 = phi ptr [ %101, %95 ], [ %53, %52 ]
  %74 = phi i8 [ %100, %95 ], [ 0, %52 ]
  %75 = getelementptr inbounds %struct.Scene, ptr %73, i64 0, i32 16
  %76 = load i8, ptr %75, align 2, !tbaa !123
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %95, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.Scene, ptr %73, i64 0, i32 18
  %80 = load ptr, ptr %79, align 8, !tbaa !124
  %81 = icmp eq ptr %80, null
  br i1 %81, label %95, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.bNodeTree, ptr %80, i64 0, i32 7
  %84 = load ptr, ptr %83, align 8, !tbaa !42
  %85 = icmp eq ptr %84, null
  br i1 %85, label %95, label %86

86:                                               ; preds = %82, %92
  %87 = phi ptr [ %93, %92 ], [ %84, %82 ]
  %88 = getelementptr inbounds %struct.bNode, ptr %87, i64 0, i32 20
  %89 = load ptr, ptr %88, align 8, !tbaa !125
  %90 = icmp eq ptr %89, %1
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  tail call void @ED_node_tag_update_id(ptr noundef nonnull %73) #5
  br label %92

92:                                               ; preds = %86, %91
  %93 = load ptr, ptr %87, align 8, !tbaa !42
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %86, !llvm.loop !127

95:                                               ; preds = %92, %82, %78, %72
  %96 = getelementptr inbounds %struct.Scene, ptr %73, i64 0, i32 42
  %97 = load i64, ptr %96, align 8, !tbaa !82
  %98 = and i64 %97, 32
  %99 = icmp eq i64 %98, 0
  %100 = select i1 %99, i8 %74, i8 1
  %101 = load ptr, ptr %73, align 8, !tbaa !42
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %72, !llvm.loop !128

103:                                              ; preds = %95
  %104 = icmp eq i8 %100, 0
  br i1 %104, label %156, label %105

105:                                              ; preds = %103
  %106 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 20), align 8, !tbaa !100
  %107 = and i16 %106, 8
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %109, label %156

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %111 = load ptr, ptr %110, align 8, !tbaa !42
  %112 = icmp eq ptr %111, null
  br i1 %112, label %156, label %113

113:                                              ; preds = %109, %153
  %114 = phi ptr [ %154, %153 ], [ %111, %109 ]
  %115 = getelementptr inbounds %struct.Object, ptr %114, i64 0, i32 120
  %116 = load ptr, ptr %115, align 8, !tbaa !104
  %117 = tail call ptr @give_matarar(ptr noundef nonnull %114) #5
  %118 = tail call ptr @give_totcolp(ptr noundef nonnull %114) #5
  %119 = icmp ne ptr %116, null
  %120 = icmp ne ptr %118, null
  %121 = select i1 %119, i1 %120, i1 false
  %122 = icmp ne ptr %117, null
  %123 = select i1 %121, i1 %122, i1 false
  br i1 %123, label %124, label %153

124:                                              ; preds = %113
  %125 = load i16, ptr %118, align 2, !tbaa !71
  %126 = icmp sgt i16 %125, 0
  br i1 %126, label %127, label %153

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.Object, ptr %114, i64 0, i32 30
  %129 = load ptr, ptr %128, align 8, !tbaa !129
  %130 = icmp eq ptr %129, null
  %131 = getelementptr inbounds %struct.Object, ptr %114, i64 0, i32 29
  %132 = zext nneg i16 %125 to i64
  br label %133

133:                                              ; preds = %127, %150
  %134 = phi i64 [ 0, %127 ], [ %151, %150 ]
  br i1 %130, label %139, label %135

135:                                              ; preds = %133
  %136 = getelementptr inbounds i8, ptr %129, i64 %134
  %137 = load i8, ptr %136, align 1, !tbaa !130
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %135, %133
  br label %140

140:                                              ; preds = %135, %139
  %141 = phi ptr [ %117, %139 ], [ %131, %135 ]
  %142 = load ptr, ptr %141, align 8, !tbaa !42
  %143 = getelementptr inbounds ptr, ptr %142, i64 %134
  %144 = load ptr, ptr %143, align 8, !tbaa !42
  %145 = icmp eq ptr %144, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %140
  %147 = tail call fastcc i32 @material_uses_texture(ptr noundef nonnull %144, ptr noundef %1) #6, !range !80
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %146
  tail call void @GPU_drawobject_free(ptr noundef nonnull %116) #5
  br label %153

150:                                              ; preds = %140, %146
  %151 = add nuw nsw i64 %134, 1
  %152 = icmp eq i64 %151, %132
  br i1 %152, label %153, label %133, !llvm.loop !131

153:                                              ; preds = %150, %124, %149, %113
  %154 = load ptr, ptr %114, align 8, !tbaa !42
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %113, !llvm.loop !132

156:                                              ; preds = %153, %52, %109, %105, %103
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @world_changed(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !133 {
  %3 = tail call i32 @BKE_icon_getid(ptr noundef %1) #5
  tail call void @BKE_icon_changed(i32 noundef %3) #5
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2, %13
  %8 = phi ptr [ %14, %13 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 136
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @GPU_material_free(ptr noundef nonnull %8) #5
  br label %13

13:                                               ; preds = %7, %12
  %14 = load ptr, ptr %8, align 8, !tbaa !42
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !134

16:                                               ; preds = %13, %2
  %17 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 136), align 8, !tbaa !73
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @GPU_material_free(ptr noundef nonnull @defmaterial) #5
  br label %20

20:                                               ; preds = %19, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lamp_changed(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !135 {
  %3 = tail call i32 @BKE_icon_getid(ptr noundef %1) #5
  tail call void @BKE_icon_changed(i32 noundef %3) #5
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2, %17
  %8 = phi ptr [ %18, %17 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !136
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 125
  %14 = load ptr, ptr %13, align 8, !tbaa !137
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @GPU_lamp_free(ptr noundef nonnull %8) #5
  br label %17

17:                                               ; preds = %7, %12, %16
  %18 = load ptr, ptr %8, align 8, !tbaa !42
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !llvm.loop !138

20:                                               ; preds = %17, %2
  %21 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %20, %30
  %25 = phi ptr [ %31, %30 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.Material, ptr %25, i64 0, i32 136
  %27 = load ptr, ptr %26, align 8, !tbaa !73
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call void @GPU_material_free(ptr noundef nonnull %25) #5
  br label %30

30:                                               ; preds = %24, %29
  %31 = load ptr, ptr %25, align 8, !tbaa !42
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %24, !llvm.loop !139

33:                                               ; preds = %30, %20
  %34 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 136), align 8, !tbaa !73
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @GPU_material_free(ptr noundef nonnull @defmaterial) #5
  br label %37

37:                                               ; preds = %36, %33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @image_changed(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !140 {
  %3 = tail call i32 @BKE_icon_getid(ptr noundef %1) #5
  tail call void @BKE_icon_changed(i32 noundef %3) #5
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2, %13
  %8 = phi ptr [ %14, %13 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.Tex, ptr %8, i64 0, i32 54
  %10 = load ptr, ptr %9, align 8, !tbaa !141
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call fastcc void @texture_changed(ptr noundef %0, ptr noundef nonnull %8) #6
  br label %13

13:                                               ; preds = %7, %12
  %14 = load ptr, ptr %8, align 8, !tbaa !42
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !144

16:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scene_changed(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !145 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2, %21
  %7 = phi ptr [ %22, %21 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 125
  %9 = load ptr, ptr %8, align 8, !tbaa !137
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @GPU_lamp_free(ptr noundef nonnull %7) #5
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 27
  %14 = load i32, ptr %13, align 8, !tbaa !146
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  tail call void @BKE_texpaint_slots_refresh_object(ptr noundef %1, ptr noundef nonnull %7) #5
  %18 = tail call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef %1, ptr noundef nonnull %7, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #5
  %19 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 120
  %20 = load ptr, ptr %19, align 8, !tbaa !104
  tail call void @GPU_drawobject_free(ptr noundef %20) #5
  br label %21

21:                                               ; preds = %12, %17
  %22 = load ptr, ptr %7, align 8, !tbaa !42
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %6, !llvm.loop !147

24:                                               ; preds = %21, %2
  %25 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %24, %34
  %29 = phi ptr [ %35, %34 ], [ %26, %24 ]
  %30 = getelementptr inbounds %struct.Material, ptr %29, i64 0, i32 136
  %31 = load ptr, ptr %30, align 8, !tbaa !73
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call void @GPU_material_free(ptr noundef nonnull %29) #5
  br label %34

34:                                               ; preds = %28, %33
  %35 = load ptr, ptr %29, align 8, !tbaa !42
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %28, !llvm.loop !148

37:                                               ; preds = %34, %24
  %38 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 136), align 8, !tbaa !73
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
  %1 = load ptr, ptr @RE_engine_id_BLENDER_RENDER, align 8, !tbaa !42
  %2 = tail call ptr @RE_engines_find(ptr noundef %1) #5
  %3 = getelementptr inbounds %struct.RenderEngineType, ptr %2, i64 0, i32 8
  store ptr @render_view3d_update, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.RenderEngineType, ptr %2, i64 0, i32 9
  store ptr @render_view3d_draw, ptr %4, align 8, !tbaa !149
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
define internal fastcc noundef i32 @nodes_use_material(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 !PGOFuncName !150 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %2, %20
  %7 = phi ptr [ %21, %20 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !125
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %9, %1
  br i1 %12, label %23, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 8
  %15 = load i16, ptr %14, align 4, !tbaa !151
  %16 = icmp eq i16 %15, 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = tail call fastcc i32 @nodes_use_material(ptr noundef nonnull %9, ptr noundef %1) #6, !range !80
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %6, %13, %17
  %21 = load ptr, ptr %7, align 8, !tbaa !42
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %6, !llvm.loop !152

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
define internal fastcc noundef i32 @material_uses_texture(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 !PGOFuncName !153 {
  %3 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102
  %4 = tail call fastcc i32 @mtex_use_tex(ptr noundef nonnull %3, ptr noundef %1) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 77
  %8 = load i8, ptr %7, align 1, !tbaa !78
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = tail call fastcc i32 @nodes_use_tex(ptr noundef nonnull %12, ptr noundef %1) #6, !range !80
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %6, %10, %14
  br label %18

18:                                               ; preds = %14, %2, %17
  %19 = phi i32 [ 0, %17 ], [ 1, %2 ], [ 1, %14 ]
  ret i32 %19
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @mtex_use_tex(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 !PGOFuncName !154 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2, %13
  %5 = phi i64 [ %14, %13 ], [ 0, %2 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !155
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %16, label %13

13:                                               ; preds = %4, %9
  %14 = add nuw nsw i64 %5, 1
  %15 = icmp eq i64 %14, 18
  br i1 %15, label %16, label %4, !llvm.loop !157

16:                                               ; preds = %13, %9, %2
  %17 = phi i32 [ 0, %2 ], [ 0, %13 ], [ 1, %9 ]
  ret i32 %17
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @nodes_use_tex(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 !PGOFuncName !158 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %2, %28
  %7 = phi ptr [ %29, %28 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !125
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %9, %1
  br i1 %12, label %31, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %15 = load i16, ptr %14, align 8, !tbaa !71
  %16 = icmp eq i16 %15, 16717
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Material, ptr %9, i64 0, i32 102
  %19 = tail call fastcc i32 @mtex_use_tex(ptr noundef nonnull %18, ptr noundef %1) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %31

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 8
  %23 = load i16, ptr %22, align 4, !tbaa !151
  %24 = icmp eq i16 %23, 2
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = tail call fastcc i32 @nodes_use_tex(ptr noundef nonnull %9, ptr noundef %1) #6, !range !80
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %6, %17, %25, %21
  %29 = load ptr, ptr %7, align 8, !tbaa !42
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %6, !llvm.loop !159

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
!34 = !{!35, !36, i64 1552}
!35 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 1040, !39, i64 1042, !39, i64 1044, !39, i64 1046, !40, i64 1048, !37, i64 1056, !39, i64 1072, !36, i64 1080, !41, i64 1088, !41, i64 1104, !41, i64 1120, !41, i64 1136, !41, i64 1152, !41, i64 1168, !41, i64 1184, !41, i64 1200, !41, i64 1216, !41, i64 1232, !41, i64 1248, !41, i64 1264, !41, i64 1280, !41, i64 1296, !41, i64 1312, !41, i64 1328, !41, i64 1344, !41, i64 1360, !41, i64 1376, !41, i64 1392, !41, i64 1408, !41, i64 1424, !41, i64 1440, !41, i64 1456, !41, i64 1472, !41, i64 1488, !41, i64 1504, !41, i64 1520, !41, i64 1536, !41, i64 1552, !41, i64 1568, !41, i64 1584, !41, i64 1600, !41, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"long", !37, i64 0}
!41 = !{!"ListBase", !36, i64 0, !36, i64 8}
!42 = !{!36, !36, i64 0}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!46, !36, i64 24}
!46 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !47, i64 128, !39, i64 132, !39, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !47, i64 160, !47, i64 164, !36, i64 168, !41, i64 176, !41, i64 192, !41, i64 208, !41, i64 224, !41, i64 240}
!47 = !{!"int", !37, i64 0}
!48 = !{!49, !37, i64 72}
!49 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !50, i64 56, !37, i64 72, !37, i64 73, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !39, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !41, i64 96, !41, i64 112, !41, i64 128, !41, i64 144}
!50 = !{!"rcti", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!51 = !{!52, !39, i64 214}
!52 = !{!"ARegion", !36, i64 0, !36, i64 8, !53, i64 16, !50, i64 176, !50, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !55, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !36, i64 240, !41, i64 248, !41, i64 264, !41, i64 280, !41, i64 296, !41, i64 312, !41, i64 328, !41, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!53 = !{!"View2D", !54, i64 0, !54, i64 16, !50, i64 32, !50, i64 48, !50, i64 64, !37, i64 80, !37, i64 88, !55, i64 96, !55, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !36, i64 128, !47, i64 136, !47, i64 140, !36, i64 144, !36, i64 152}
!54 = !{!"rctf", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12}
!55 = !{!"float", !37, i64 0}
!56 = !{!52, !36, i64 376}
!57 = !{!58, !36, i64 656}
!58 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !37, i64 696, !37, i64 760, !55, i64 776, !55, i64 780, !55, i64 784, !55, i64 788, !37, i64 792, !55, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !39, i64 824, !39, i64 826, !37, i64 828, !39, i64 844, !39, i64 846, !55, i64 848, !37, i64 852, !55, i64 864, !37, i64 868}
!59 = !{!60, !47, i64 16}
!60 = !{!"RenderEngine", !36, i64 0, !36, i64 8, !47, i64 16, !36, i64 24, !47, i64 32, !47, i64 36, !47, i64 40, !36, i64 48, !41, i64 56, !37, i64 72, !47, i64 584, !47, i64 588, !36, i64 592, !47, i64 600, !47, i64 604, !54, i64 608, !50, i64 624, !37, i64 640, !47, i64 704, !47, i64 708}
!61 = !{!60, !36, i64 0}
!62 = !{!63, !36, i64 176}
!63 = !{!"RenderEngineType", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !47, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !64, i64 200}
!64 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!65 = distinct !{!65, !44}
!66 = distinct !{!66, !44}
!67 = distinct !{!67, !44}
!68 = distinct !{!68, !44}
!69 = distinct !{!69, !44}
!70 = distinct !{!70, !44}
!71 = !{!39, !39, i64 0}
!72 = !{!"render_update.c:material_changed"}
!73 = !{!74, !36, i64 928}
!74 = !{!"Material", !75, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !55, i64 132, !55, i64 136, !55, i64 140, !55, i64 144, !55, i64 148, !55, i64 152, !55, i64 156, !55, i64 160, !55, i64 164, !55, i64 168, !55, i64 172, !55, i64 176, !55, i64 180, !55, i64 184, !55, i64 188, !55, i64 192, !55, i64 196, !55, i64 200, !55, i64 204, !55, i64 208, !55, i64 212, !55, i64 216, !55, i64 220, !76, i64 224, !77, i64 312, !55, i64 328, !55, i64 332, !55, i64 336, !55, i64 340, !55, i64 344, !55, i64 348, !55, i64 352, !39, i64 356, !39, i64 358, !39, i64 360, !37, i64 362, !37, i64 363, !55, i64 364, !55, i64 368, !39, i64 372, !39, i64 374, !55, i64 376, !55, i64 380, !55, i64 384, !55, i64 388, !39, i64 392, !39, i64 394, !47, i64 396, !47, i64 400, !47, i64 404, !47, i64 408, !39, i64 412, !39, i64 414, !39, i64 416, !39, i64 418, !55, i64 420, !55, i64 424, !55, i64 428, !55, i64 432, !55, i64 436, !55, i64 440, !55, i64 444, !55, i64 448, !55, i64 452, !55, i64 456, !37, i64 460, !55, i64 524, !55, i64 528, !55, i64 532, !47, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !39, i64 544, !39, i64 546, !39, i64 548, !37, i64 550, !37, i64 551, !39, i64 552, !39, i64 554, !55, i64 556, !55, i64 560, !37, i64 564, !55, i64 580, !55, i64 584, !39, i64 588, !39, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !39, i64 612, !39, i64 614, !55, i64 616, !55, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !55, i64 800, !55, i64 804, !55, i64 808, !55, i64 812, !55, i64 816, !39, i64 820, !39, i64 822, !37, i64 824, !37, i64 836, !55, i64 848, !55, i64 852, !55, i64 856, !55, i64 860, !55, i64 864, !55, i64 868, !55, i64 872, !39, i64 876, !39, i64 878, !47, i64 880, !39, i64 884, !39, i64 886, !37, i64 888, !39, i64 904, !39, i64 906, !39, i64 908, !39, i64 910, !39, i64 912, !37, i64 914, !36, i64 920, !41, i64 928}
!75 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !47, i64 100, !47, i64 104, !47, i64 108, !36, i64 112}
!76 = !{!"VolumeSettings", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !55, i64 52, !55, i64 56, !55, i64 60, !39, i64 64, !39, i64 66, !39, i64 68, !39, i64 70, !55, i64 72, !55, i64 76, !55, i64 80, !55, i64 84}
!77 = !{!"GameSettings", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!78 = !{!74, !37, i64 543}
!79 = !{!74, !36, i64 768}
!80 = !{i32 0, i32 2}
!81 = distinct !{!81, !44}
!82 = !{!83, !40, i64 4648}
!83 = !{!"Scene", !75, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !47, i64 232, !47, i64 236, !47, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !84, i64 280, !91, i64 4264, !41, i64 4296, !41, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !39, i64 4376, !39, i64 4378, !47, i64 4380, !41, i64 4384, !92, i64 4400, !93, i64 4416, !96, i64 4600, !36, i64 4608, !97, i64 4616, !36, i64 4640, !40, i64 4648, !40, i64 4656, !86, i64 4664, !87, i64 4824, !98, i64 4888, !36, i64 4952}
!84 = !{!"RenderData", !85, i64 0, !36, i64 248, !36, i64 256, !88, i64 264, !89, i64 328, !47, i64 400, !47, i64 404, !47, i64 408, !55, i64 412, !47, i64 416, !47, i64 420, !47, i64 424, !47, i64 428, !39, i64 432, !39, i64 434, !55, i64 436, !55, i64 440, !55, i64 444, !55, i64 448, !55, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !47, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !47, i64 484, !47, i64 488, !39, i64 492, !39, i64 494, !47, i64 496, !47, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !47, i64 516, !47, i64 520, !47, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !54, i64 544, !54, i64 560, !50, i64 576, !41, i64 592, !39, i64 608, !39, i64 610, !55, i64 612, !55, i64 616, !55, i64 620, !55, i64 624, !47, i64 628, !55, i64 632, !55, i64 636, !55, i64 640, !55, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !55, i64 660, !55, i64 664, !39, i64 668, !39, i64 670, !55, i64 672, !55, i64 676, !37, i64 680, !47, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !47, i64 2520, !39, i64 2524, !39, i64 2526, !55, i64 2528, !55, i64 2532, !39, i64 2536, !39, i64 2538, !55, i64 2540, !39, i64 2544, !39, i64 2546, !47, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !55, i64 2560, !55, i64 2564, !36, i64 2568, !47, i64 2576, !55, i64 2580, !37, i64 2584, !90, i64 2616, !47, i64 3976, !47, i64 3980}
!85 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !55, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !86, i64 24, !87, i64 184}
!86 = !{!"ColorManagedViewSettings", !47, i64 0, !47, i64 4, !37, i64 8, !37, i64 72, !55, i64 136, !55, i64 140, !36, i64 144, !36, i64 152}
!87 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!88 = !{!"QuicktimeCodecSettings", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36, !47, i64 40, !47, i64 44, !39, i64 48, !39, i64 50, !47, i64 52, !47, i64 56, !47, i64 60}
!89 = !{!"FFMpegCodecData", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !55, i64 32, !47, i64 36, !47, i64 40, !47, i64 44, !47, i64 48, !47, i64 52, !47, i64 56, !47, i64 60, !36, i64 64}
!90 = !{!"BakeData", !85, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !55, i64 1280, !55, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!91 = !{!"AudioData", !47, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !47, i64 16, !39, i64 20, !39, i64 22, !55, i64 24, !55, i64 28}
!92 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!93 = !{!"GameData", !92, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !94, i64 40, !39, i64 64, !39, i64 66, !55, i64 68, !95, i64 72, !55, i64 128, !55, i64 132, !47, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !55, i64 164, !55, i64 168, !55, i64 172, !55, i64 176, !55, i64 180}
!94 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !55, i64 8, !55, i64 12, !36, i64 16}
!95 = !{!"RecastData", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !55, i64 24, !55, i64 28, !55, i64 32, !55, i64 36, !47, i64 40, !55, i64 44, !55, i64 48, !39, i64 52, !39, i64 54}
!96 = !{!"UnitSettings", !55, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!97 = !{!"PhysicsSettings", !37, i64 0, !47, i64 12, !47, i64 16, !47, i64 20}
!98 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!99 = distinct !{!99, !44}
!100 = !{!101, !39, i64 8480}
!101 = !{!"UserDef", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !47, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !47, i64 8484, !47, i64 8488, !47, i64 8492, !39, i64 8496, !39, i64 8498, !47, i64 8500, !47, i64 8504, !47, i64 8508, !47, i64 8512, !47, i64 8516, !47, i64 8520, !47, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !41, i64 8536, !41, i64 8552, !41, i64 8568, !41, i64 8584, !41, i64 8600, !41, i64 8616, !41, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !47, i64 8912, !47, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !55, i64 8956, !55, i64 8960, !47, i64 8964, !39, i64 8968, !39, i64 8970, !55, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !102, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !47, i64 10896, !47, i64 10900, !55, i64 10904, !55, i64 10908, !47, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !103, i64 10928}
!102 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!103 = !{!"WalkNavigation", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !39, i64 24, !37, i64 26}
!104 = !{!105, !36, i64 1296}
!105 = !{!"Object", !75, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !39, i64 138, !47, i64 140, !47, i64 144, !47, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !106, i64 312, !36, i64 360, !41, i64 368, !41, i64 384, !41, i64 400, !41, i64 416, !47, i64 432, !47, i64 436, !36, i64 440, !36, i64 448, !47, i64 456, !47, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !55, i64 616, !55, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !47, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !47, i64 968, !47, i64 972, !47, i64 976, !47, i64 980, !47, i64 984, !55, i64 988, !55, i64 992, !55, i64 996, !55, i64 1000, !55, i64 1004, !55, i64 1008, !55, i64 1012, !55, i64 1016, !55, i64 1020, !55, i64 1024, !55, i64 1028, !55, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !55, i64 1048, !55, i64 1052, !41, i64 1056, !41, i64 1072, !41, i64 1088, !41, i64 1104, !55, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !47, i64 1144, !47, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !41, i64 1176, !41, i64 1192, !41, i64 1208, !41, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !55, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !40, i64 1304, !40, i64 1312, !47, i64 1320, !47, i64 1324, !41, i64 1328, !41, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !41, i64 1400, !36, i64 1416}
!106 = !{!"bAnimVizSettings", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !47, i64 32, !47, i64 36, !47, i64 40, !47, i64 44}
!107 = distinct !{!107, !44}
!108 = distinct !{!108, !44}
!109 = !{!"render_update.c:render_engine_flag_changed"}
!110 = distinct !{!110, !44}
!111 = !{!60, !47, i64 600}
!112 = distinct !{!112, !44}
!113 = distinct !{!113, !44}
!114 = !{!"render_update.c:texture_changed"}
!115 = distinct !{!115, !44}
!116 = distinct !{!116, !44}
!117 = !{!118, !36, i64 512}
!118 = !{!"Lamp", !75, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !47, i64 132, !39, i64 136, !39, i64 138, !55, i64 140, !55, i64 144, !55, i64 148, !55, i64 152, !55, i64 156, !55, i64 160, !55, i64 164, !55, i64 168, !55, i64 172, !55, i64 176, !55, i64 180, !55, i64 184, !55, i64 188, !55, i64 192, !55, i64 196, !36, i64 200, !39, i64 208, !39, i64 210, !55, i64 212, !55, i64 216, !55, i64 220, !55, i64 224, !55, i64 228, !55, i64 232, !55, i64 236, !39, i64 240, !39, i64 242, !39, i64 244, !39, i64 246, !37, i64 248, !37, i64 249, !39, i64 250, !39, i64 252, !39, i64 254, !39, i64 256, !39, i64 258, !55, i64 260, !55, i64 264, !55, i64 268, !55, i64 272, !39, i64 276, !39, i64 278, !39, i64 280, !39, i64 282, !39, i64 284, !39, i64 286, !55, i64 288, !55, i64 292, !55, i64 296, !55, i64 300, !55, i64 304, !55, i64 308, !55, i64 312, !55, i64 316, !55, i64 320, !55, i64 324, !55, i64 328, !55, i64 332, !55, i64 336, !39, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !39, i64 496, !39, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!119 = distinct !{!119, !44}
!120 = !{!121, !36, i64 520}
!121 = !{!"World", !75, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !39, i64 132, !39, i64 134, !55, i64 136, !55, i64 140, !55, i64 144, !55, i64 148, !55, i64 152, !55, i64 156, !55, i64 160, !55, i64 164, !55, i64 168, !55, i64 172, !55, i64 176, !55, i64 180, !55, i64 184, !55, i64 188, !55, i64 192, !55, i64 196, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !55, i64 216, !55, i64 220, !55, i64 224, !55, i64 228, !55, i64 232, !55, i64 236, !55, i64 240, !55, i64 244, !55, i64 248, !55, i64 252, !55, i64 256, !55, i64 260, !39, i64 264, !39, i64 266, !39, i64 268, !39, i64 270, !55, i64 272, !55, i64 276, !55, i64 280, !55, i64 284, !39, i64 288, !39, i64 290, !39, i64 292, !39, i64 294, !55, i64 296, !55, i64 300, !55, i64 304, !55, i64 308, !55, i64 312, !55, i64 316, !55, i64 320, !39, i64 324, !39, i64 326, !39, i64 328, !39, i64 330, !39, i64 332, !39, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !39, i64 504, !39, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!122 = distinct !{!122, !44}
!123 = !{!83, !37, i64 246}
!124 = !{!83, !36, i64 248}
!125 = !{!126, !36, i64 240}
!126 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !47, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !41, i64 200, !41, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !41, i64 264, !55, i64 280, !55, i64 284, !55, i64 288, !55, i64 292, !55, i64 296, !55, i64 300, !55, i64 304, !47, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !55, i64 380, !55, i64 384, !39, i64 388, !39, i64 390, !36, i64 392, !54, i64 400, !54, i64 416, !54, i64 432, !39, i64 448, !39, i64 450, !47, i64 452, !36, i64 456}
!127 = distinct !{!127, !44}
!128 = distinct !{!128, !44}
!129 = !{!105, !36, i64 448}
!130 = !{!37, !37, i64 0}
!131 = distinct !{!131, !44}
!132 = distinct !{!132, !44}
!133 = !{!"render_update.c:world_changed"}
!134 = distinct !{!134, !44}
!135 = !{!"render_update.c:lamp_changed"}
!136 = !{!105, !36, i64 296}
!137 = !{!105, !36, i64 1328}
!138 = distinct !{!138, !44}
!139 = distinct !{!139, !44}
!140 = !{!"render_update.c:image_changed"}
!141 = !{!142, !36, i64 352}
!142 = !{!"Tex", !75, i64 0, !36, i64 120, !55, i64 128, !55, i64 132, !55, i64 136, !55, i64 140, !55, i64 144, !55, i64 148, !55, i64 152, !55, i64 156, !55, i64 160, !55, i64 164, !55, i64 168, !55, i64 172, !55, i64 176, !55, i64 180, !55, i64 184, !55, i64 188, !55, i64 192, !55, i64 196, !55, i64 200, !55, i64 204, !55, i64 208, !55, i64 212, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !55, i64 236, !55, i64 240, !55, i64 244, !55, i64 248, !47, i64 252, !47, i64 256, !39, i64 260, !39, i64 262, !39, i64 264, !39, i64 266, !47, i64 268, !47, i64 272, !47, i64 276, !47, i64 280, !55, i64 284, !55, i64 288, !55, i64 292, !143, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!143 = !{!"ImageUser", !36, i64 0, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !47, i64 36}
!144 = distinct !{!144, !44}
!145 = !{!"render_update.c:scene_changed"}
!146 = !{!105, !47, i64 432}
!147 = distinct !{!147, !44}
!148 = distinct !{!148, !44}
!149 = !{!63, !36, i64 184}
!150 = !{!"render_update.c:nodes_use_material"}
!151 = !{!126, !39, i64 172}
!152 = distinct !{!152, !44}
!153 = !{!"render_update.c:material_uses_texture"}
!154 = !{!"render_update.c:mtex_use_tex"}
!155 = !{!156, !36, i64 16}
!156 = !{!"MTex", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !55, i64 116, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !39, i64 128, !39, i64 130, !37, i64 132, !37, i64 133, !55, i64 140, !55, i64 144, !55, i64 148, !55, i64 152, !55, i64 156, !55, i64 160, !55, i64 164, !55, i64 168, !55, i64 172, !55, i64 176, !55, i64 180, !55, i64 184, !55, i64 188, !55, i64 192, !55, i64 196, !55, i64 200, !55, i64 204, !55, i64 208, !55, i64 212, !55, i64 216, !55, i64 220, !55, i64 224, !55, i64 228, !55, i64 232, !55, i64 236, !55, i64 240, !55, i64 244, !55, i64 248, !55, i64 252, !55, i64 256, !55, i64 260, !55, i64 264, !55, i64 268, !55, i64 272, !55, i64 276, !55, i64 280, !55, i64 284, !55, i64 288, !55, i64 292, !55, i64 296, !55, i64 300, !55, i64 304, !55, i64 308}
!157 = distinct !{!157, !44}
!158 = !{!"render_update.c:nodes_use_tex"}
!159 = distinct !{!159, !44}
