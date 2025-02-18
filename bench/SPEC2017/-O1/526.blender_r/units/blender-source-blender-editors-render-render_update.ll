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
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }

@ED_render_scene_update.recursive_check = internal unnamed_addr global i1 false, align 1
@RE_engine_id_BLENDER_RENDER = external local_unnamed_addr global ptr, align 8
@U = external local_unnamed_addr global %struct.UserDef, align 8
@defmaterial = external global %struct.Material, align 8

; Function Attrs: nounwind uwtable
define dso_local void @ED_render_scene_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @BLI_thread_is_main() #3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %68, label %6

6:                                                ; preds = %3
  %7 = load i1, ptr @ED_render_scene_update.recursive_check, align 1
  br i1 %7, label %68, label %8

8:                                                ; preds = %6
  store i1 true, ptr @ED_render_scene_update.recursive_check, align 1
  %9 = tail call ptr @CTX_create() #3
  tail call void @CTX_data_main_set(ptr noundef %9, ptr noundef %0) #3
  tail call void @CTX_data_scene_set(ptr noundef %9, ptr noundef %1) #3
  %10 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 40
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  tail call void @CTX_wm_manager_set(ptr noundef %9, ptr noundef %11) #3
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
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  tail call void @CTX_wm_window_set(ptr noundef %9, ptr noundef nonnull %22) #3
  %25 = getelementptr inbounds %struct.bScreen, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  %27 = icmp eq ptr %26, null
  br i1 %27, label %18, label %28

28:                                               ; preds = %21, %64
  %29 = phi ptr [ %65, %64 ], [ %26, %21 ]
  %30 = getelementptr inbounds %struct.ScrArea, ptr %29, i64 0, i32 8
  %31 = load i8, ptr %30, align 8, !tbaa !49
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
  %40 = load i16, ptr %39, align 2, !tbaa !52
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.ARegion, ptr %38, i64 0, i32 30
  %44 = load ptr, ptr %43, align 8, !tbaa !57
  %45 = getelementptr inbounds %struct.RegionView3D, ptr %44, i64 0, i32 11
  %46 = load ptr, ptr %45, align 8, !tbaa !58
  %47 = icmp eq ptr %46, null
  br i1 %47, label %61, label %48

48:                                               ; preds = %42
  br i1 %17, label %49, label %54

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.RenderEngine, ptr %46, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !60
  %52 = and i32 %51, 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %49, %48
  tail call void @CTX_wm_screen_set(ptr noundef %9, ptr noundef %24) #3
  tail call void @CTX_wm_area_set(ptr noundef %9, ptr noundef nonnull %29) #3
  tail call void @CTX_wm_region_set(ptr noundef %9, ptr noundef nonnull %38) #3
  %55 = getelementptr inbounds %struct.RenderEngine, ptr %46, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !60
  %57 = and i32 %56, -9
  store i32 %57, ptr %55, align 8, !tbaa !60
  %58 = load ptr, ptr %46, align 8, !tbaa !62
  %59 = getelementptr inbounds %struct.RenderEngineType, ptr %58, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !63
  tail call void %60(ptr noundef nonnull %46, ptr noundef %9) #3
  br label %61

61:                                               ; preds = %42, %49, %54, %37
  %62 = load ptr, ptr %38, align 8, !tbaa !42
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %37, !llvm.loop !66

64:                                               ; preds = %61, %33, %28
  %65 = load ptr, ptr %29, align 8, !tbaa !42
  %66 = icmp eq ptr %65, null
  br i1 %66, label %18, label %28, !llvm.loop !67

67:                                               ; preds = %18, %8
  tail call void @CTX_free(ptr noundef %9) #3
  store i1 false, ptr @ED_render_scene_update.recursive_check, align 1
  br label %68

68:                                               ; preds = %6, %3, %67
  ret void
}

declare i32 @BLI_thread_is_main() local_unnamed_addr #1

declare ptr @CTX_create() local_unnamed_addr #1

declare void @CTX_data_main_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CTX_data_scene_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CTX_wm_manager_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CTX_wm_window_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CTX_wm_screen_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CTX_wm_area_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CTX_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_render_engine_area_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 8
  %3 = load i8, ptr %2, align 8, !tbaa !49
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
  %12 = load i16, ptr %11, align 2, !tbaa !52
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 30
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %16, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !58
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @RE_engine_free(ptr noundef nonnull %20) #3
  store ptr null, ptr %19, align 8, !tbaa !58
  br label %23

23:                                               ; preds = %18, %22, %9, %14
  %24 = load ptr, ptr %10, align 8, !tbaa !42
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %9, !llvm.loop !68

26:                                               ; preds = %23, %5, %1
  ret void
}

declare void @RE_engine_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_render_engine_changed(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 26
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %42, label %8

5:                                                ; preds = %39, %8
  %6 = load ptr, ptr %9, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  br i1 %7, label %42, label %8, !llvm.loop !69

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.bScreen, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = icmp eq ptr %11, null
  br i1 %12, label %5, label %13

13:                                               ; preds = %8, %39
  %14 = phi ptr [ %40, %39 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.ScrArea, ptr %14, i64 0, i32 8
  %16 = load i8, ptr %15, align 8, !tbaa !49
  %17 = icmp eq i8 %16, 1
  br i1 %17, label %18, label %39

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ScrArea, ptr %14, i64 0, i32 20
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = icmp eq ptr %20, null
  br i1 %21, label %39, label %22

22:                                               ; preds = %18, %36
  %23 = phi ptr [ %37, %36 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 8
  %25 = load i16, ptr %24, align 2, !tbaa !52
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 30
  %29 = load ptr, ptr %28, align 8, !tbaa !57
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.RegionView3D, ptr %29, i64 0, i32 11
  %33 = load ptr, ptr %32, align 8, !tbaa !58
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @RE_engine_free(ptr noundef nonnull %33) #3
  store ptr null, ptr %32, align 8, !tbaa !58
  br label %36

36:                                               ; preds = %35, %31, %27, %22
  %37 = load ptr, ptr %23, align 8, !tbaa !42
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %22, !llvm.loop !68

39:                                               ; preds = %36, %13, %18
  %40 = load ptr, ptr %14, align 8, !tbaa !42
  %41 = icmp eq ptr %40, null
  br i1 %41, label %5, label %13, !llvm.loop !70

42:                                               ; preds = %5, %1
  tail call void @RE_FreePersistentData() #3
  %43 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %44 = load ptr, ptr %43, align 8, !tbaa !42
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %42, %46
  %47 = phi ptr [ %48, %46 ], [ %44, %42 ]
  tail call void @ED_render_id_flush_update(ptr noundef %0, ptr noundef nonnull %47)
  %48 = load ptr, ptr %47, align 8, !tbaa !42
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %46, !llvm.loop !71

50:                                               ; preds = %46, %42
  ret void
}

declare void @RE_FreePersistentData() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_render_id_flush_update(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @BLI_thread_is_main() #3
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %286, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !72
  switch i16 %7, label %244 [
    i16 16717, label %8
    i16 17748, label %129
    i16 20311, label %130
    i16 16716, label %148
    i16 19785, label %149
    i16 17235, label %163
  ]

8:                                                ; preds = %5
  %9 = tail call i32 @BKE_icon_getid(ptr noundef %1) #3
  tail call void @BKE_icon_changed(i32 noundef %9) #3
  %10 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 136
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @GPU_material_free(ptr noundef %1) #3
  br label %14

14:                                               ; preds = %13, %8
  %15 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %14, %36
  %19 = phi ptr [ %37, %36 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.Material, ptr %19, i64 0, i32 77
  %21 = load i8, ptr %20, align 1, !tbaa !78
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.Material, ptr %19, i64 0, i32 103
  %25 = load ptr, ptr %24, align 8, !tbaa !79
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = tail call fastcc i32 @nodes_use_material(ptr noundef nonnull %25, ptr noundef %1), !range !80
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @BKE_icon_getid(ptr noundef nonnull %19) #3
  tail call void @BKE_icon_changed(i32 noundef %31) #3
  %32 = getelementptr inbounds %struct.Material, ptr %19, i64 0, i32 136
  %33 = load ptr, ptr %32, align 8, !tbaa !73
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call void @GPU_material_free(ptr noundef nonnull %19) #3
  br label %36

36:                                               ; preds = %35, %30, %27, %23, %18
  %37 = load ptr, ptr %19, align 8, !tbaa !42
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %18, !llvm.loop !81

39:                                               ; preds = %36, %14
  %40 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  br label %41

41:                                               ; preds = %45, %39
  %42 = phi ptr [ %40, %39 ], [ %43, %45 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !42
  %44 = icmp eq ptr %43, null
  br i1 %44, label %87, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.Scene, ptr %43, i64 0, i32 42
  %47 = load i64, ptr %46, align 8, !tbaa !82
  %48 = and i64 %47, 32
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %41, label %50, !llvm.loop !99

50:                                               ; preds = %45
  %51 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 20), align 8, !tbaa !100
  %52 = and i16 %51, 8
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %87

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %56 = load ptr, ptr %55, align 8, !tbaa !42
  %57 = icmp eq ptr %56, null
  br i1 %57, label %87, label %58

58:                                               ; preds = %54, %84
  %59 = phi ptr [ %85, %84 ], [ %56, %54 ]
  %60 = getelementptr inbounds %struct.Object, ptr %59, i64 0, i32 120
  %61 = load ptr, ptr %60, align 8, !tbaa !104
  %62 = tail call ptr @give_matarar(ptr noundef nonnull %59) #3
  %63 = tail call ptr @give_totcolp(ptr noundef nonnull %59) #3
  %64 = icmp ne ptr %61, null
  %65 = icmp ne ptr %63, null
  %66 = select i1 %64, i1 %65, i1 false
  %67 = icmp ne ptr %62, null
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %69, label %84

69:                                               ; preds = %58
  %70 = load i16, ptr %63, align 2, !tbaa !72
  %71 = icmp sgt i16 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load ptr, ptr %62, align 8, !tbaa !42
  br label %77

74:                                               ; preds = %77
  %75 = add nuw nsw i16 %78, 1
  %76 = icmp eq i16 %75, %70
  br i1 %76, label %84, label %77, !llvm.loop !107

77:                                               ; preds = %72, %74
  %78 = phi i16 [ 0, %72 ], [ %75, %74 ]
  %79 = zext nneg i16 %78 to i64
  %80 = getelementptr inbounds ptr, ptr %73, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !42
  %82 = icmp eq ptr %81, %1
  br i1 %82, label %83, label %74

83:                                               ; preds = %77
  tail call void @GPU_drawobject_free(ptr noundef nonnull %61) #3
  br label %84

84:                                               ; preds = %74, %69, %83, %58
  %85 = load ptr, ptr %59, align 8, !tbaa !42
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %58, !llvm.loop !108

87:                                               ; preds = %41, %84, %54, %50
  %88 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 26
  %89 = load ptr, ptr %88, align 8, !tbaa !42
  %90 = icmp eq ptr %89, null
  br i1 %90, label %286, label %94

91:                                               ; preds = %126, %94
  %92 = load ptr, ptr %95, align 8, !tbaa !42
  %93 = icmp eq ptr %92, null
  br i1 %93, label %286, label %94, !llvm.loop !109

94:                                               ; preds = %87, %91
  %95 = phi ptr [ %92, %91 ], [ %89, %87 ]
  %96 = getelementptr inbounds %struct.bScreen, ptr %95, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !42
  %98 = icmp eq ptr %97, null
  br i1 %98, label %91, label %99

99:                                               ; preds = %94, %126
  %100 = phi ptr [ %127, %126 ], [ %97, %94 ]
  %101 = getelementptr inbounds %struct.ScrArea, ptr %100, i64 0, i32 8
  %102 = load i8, ptr %101, align 8, !tbaa !49
  %103 = icmp eq i8 %102, 1
  br i1 %103, label %104, label %126

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.ScrArea, ptr %100, i64 0, i32 20
  %106 = load ptr, ptr %105, align 8, !tbaa !42
  %107 = icmp eq ptr %106, null
  br i1 %107, label %126, label %108

108:                                              ; preds = %104, %123
  %109 = phi ptr [ %124, %123 ], [ %106, %104 ]
  %110 = getelementptr inbounds %struct.ARegion, ptr %109, i64 0, i32 8
  %111 = load i16, ptr %110, align 2, !tbaa !52
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.ARegion, ptr %109, i64 0, i32 30
  %115 = load ptr, ptr %114, align 8, !tbaa !57
  %116 = getelementptr inbounds %struct.RegionView3D, ptr %115, i64 0, i32 11
  %117 = load ptr, ptr %116, align 8, !tbaa !58
  %118 = icmp eq ptr %117, null
  br i1 %118, label %123, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.RenderEngine, ptr %117, i64 0, i32 13
  %121 = load i32, ptr %120, align 8, !tbaa !110
  %122 = or i32 %121, 1
  store i32 %122, ptr %120, align 8, !tbaa !110
  br label %123

123:                                              ; preds = %119, %113, %108
  %124 = load ptr, ptr %109, align 8, !tbaa !42
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %108, !llvm.loop !111

126:                                              ; preds = %123, %104, %99
  %127 = load ptr, ptr %100, align 8, !tbaa !42
  %128 = icmp eq ptr %127, null
  br i1 %128, label %91, label %99, !llvm.loop !112

129:                                              ; preds = %5
  tail call fastcc void @texture_changed(ptr noundef %0, ptr noundef %1)
  br label %286

130:                                              ; preds = %5
  %131 = tail call i32 @BKE_icon_getid(ptr noundef %1) #3
  tail call void @BKE_icon_changed(i32 noundef %131) #3
  %132 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %133 = load ptr, ptr %132, align 8, !tbaa !42
  %134 = icmp eq ptr %133, null
  br i1 %134, label %144, label %135

135:                                              ; preds = %130, %141
  %136 = phi ptr [ %142, %141 ], [ %133, %130 ]
  %137 = getelementptr inbounds %struct.Material, ptr %136, i64 0, i32 136
  %138 = load ptr, ptr %137, align 8, !tbaa !73
  %139 = icmp eq ptr %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %135
  tail call void @GPU_material_free(ptr noundef nonnull %136) #3
  br label %141

141:                                              ; preds = %140, %135
  %142 = load ptr, ptr %136, align 8, !tbaa !42
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %135, !llvm.loop !113

144:                                              ; preds = %141, %130
  %145 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 136), align 8, !tbaa !73
  %146 = icmp eq ptr %145, null
  br i1 %146, label %286, label %147

147:                                              ; preds = %144
  tail call void @GPU_material_free(ptr noundef nonnull @defmaterial) #3
  br label %286

148:                                              ; preds = %5
  tail call fastcc void @lamp_changed(ptr noundef %0, ptr noundef %1)
  br label %286

149:                                              ; preds = %5
  %150 = tail call i32 @BKE_icon_getid(ptr noundef %1) #3
  tail call void @BKE_icon_changed(i32 noundef %150) #3
  %151 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 18
  %152 = load ptr, ptr %151, align 8, !tbaa !42
  %153 = icmp eq ptr %152, null
  br i1 %153, label %286, label %154

154:                                              ; preds = %149, %160
  %155 = phi ptr [ %161, %160 ], [ %152, %149 ]
  %156 = getelementptr inbounds %struct.Tex, ptr %155, i64 0, i32 54
  %157 = load ptr, ptr %156, align 8, !tbaa !114
  %158 = icmp eq ptr %157, %1
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  tail call fastcc void @texture_changed(ptr noundef %0, ptr noundef nonnull %155)
  br label %160

160:                                              ; preds = %159, %154
  %161 = load ptr, ptr %155, align 8, !tbaa !42
  %162 = icmp eq ptr %161, null
  br i1 %162, label %286, label %154, !llvm.loop !117

163:                                              ; preds = %5
  %164 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %165 = load ptr, ptr %164, align 8, !tbaa !42
  %166 = icmp eq ptr %165, null
  br i1 %166, label %185, label %167

167:                                              ; preds = %163, %182
  %168 = phi ptr [ %183, %182 ], [ %165, %163 ]
  %169 = getelementptr inbounds %struct.Object, ptr %168, i64 0, i32 125
  %170 = load ptr, ptr %169, align 8, !tbaa !118
  %171 = icmp eq ptr %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %167
  tail call void @GPU_lamp_free(ptr noundef nonnull %168) #3
  br label %173

173:                                              ; preds = %172, %167
  %174 = getelementptr inbounds %struct.Object, ptr %168, i64 0, i32 27
  %175 = load i32, ptr %174, align 8, !tbaa !119
  %176 = and i32 %175, 16
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %173
  tail call void @BKE_texpaint_slots_refresh_object(ptr noundef %1, ptr noundef nonnull %168) #3
  %179 = tail call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef %1, ptr noundef nonnull %168, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #3
  %180 = getelementptr inbounds %struct.Object, ptr %168, i64 0, i32 120
  %181 = load ptr, ptr %180, align 8, !tbaa !104
  tail call void @GPU_drawobject_free(ptr noundef %181) #3
  br label %182

182:                                              ; preds = %178, %173
  %183 = load ptr, ptr %168, align 8, !tbaa !42
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %167, !llvm.loop !120

185:                                              ; preds = %182, %163
  %186 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %187 = load ptr, ptr %186, align 8, !tbaa !42
  %188 = icmp eq ptr %187, null
  br i1 %188, label %198, label %189

189:                                              ; preds = %185, %195
  %190 = phi ptr [ %196, %195 ], [ %187, %185 ]
  %191 = getelementptr inbounds %struct.Material, ptr %190, i64 0, i32 136
  %192 = load ptr, ptr %191, align 8, !tbaa !73
  %193 = icmp eq ptr %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %189
  tail call void @GPU_material_free(ptr noundef nonnull %190) #3
  br label %195

195:                                              ; preds = %194, %189
  %196 = load ptr, ptr %190, align 8, !tbaa !42
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %189, !llvm.loop !121

198:                                              ; preds = %195, %185
  %199 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 136), align 8, !tbaa !73
  %200 = icmp eq ptr %199, null
  br i1 %200, label %202, label %201

201:                                              ; preds = %198
  tail call void @GPU_material_free(ptr noundef nonnull @defmaterial) #3
  br label %202

202:                                              ; preds = %198, %201
  %203 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 26
  %204 = load ptr, ptr %203, align 8, !tbaa !42
  %205 = icmp eq ptr %204, null
  br i1 %205, label %286, label %209

206:                                              ; preds = %241, %209
  %207 = load ptr, ptr %210, align 8, !tbaa !42
  %208 = icmp eq ptr %207, null
  br i1 %208, label %286, label %209, !llvm.loop !109

209:                                              ; preds = %202, %206
  %210 = phi ptr [ %207, %206 ], [ %204, %202 ]
  %211 = getelementptr inbounds %struct.bScreen, ptr %210, i64 0, i32 3
  %212 = load ptr, ptr %211, align 8, !tbaa !42
  %213 = icmp eq ptr %212, null
  br i1 %213, label %206, label %214

214:                                              ; preds = %209, %241
  %215 = phi ptr [ %242, %241 ], [ %212, %209 ]
  %216 = getelementptr inbounds %struct.ScrArea, ptr %215, i64 0, i32 8
  %217 = load i8, ptr %216, align 8, !tbaa !49
  %218 = icmp eq i8 %217, 1
  br i1 %218, label %219, label %241

219:                                              ; preds = %214
  %220 = getelementptr inbounds %struct.ScrArea, ptr %215, i64 0, i32 20
  %221 = load ptr, ptr %220, align 8, !tbaa !42
  %222 = icmp eq ptr %221, null
  br i1 %222, label %241, label %223

223:                                              ; preds = %219, %238
  %224 = phi ptr [ %239, %238 ], [ %221, %219 ]
  %225 = getelementptr inbounds %struct.ARegion, ptr %224, i64 0, i32 8
  %226 = load i16, ptr %225, align 2, !tbaa !52
  %227 = icmp eq i16 %226, 0
  br i1 %227, label %228, label %238

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.ARegion, ptr %224, i64 0, i32 30
  %230 = load ptr, ptr %229, align 8, !tbaa !57
  %231 = getelementptr inbounds %struct.RegionView3D, ptr %230, i64 0, i32 11
  %232 = load ptr, ptr %231, align 8, !tbaa !58
  %233 = icmp eq ptr %232, null
  br i1 %233, label %238, label %234

234:                                              ; preds = %228
  %235 = getelementptr inbounds %struct.RenderEngine, ptr %232, i64 0, i32 13
  %236 = load i32, ptr %235, align 8, !tbaa !110
  %237 = or i32 %236, 2
  store i32 %237, ptr %235, align 8, !tbaa !110
  br label %238

238:                                              ; preds = %234, %228, %223
  %239 = load ptr, ptr %224, align 8, !tbaa !42
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %223, !llvm.loop !111

241:                                              ; preds = %238, %219, %214
  %242 = load ptr, ptr %215, align 8, !tbaa !42
  %243 = icmp eq ptr %242, null
  br i1 %243, label %206, label %214, !llvm.loop !112

244:                                              ; preds = %5
  %245 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 26
  %246 = load ptr, ptr %245, align 8, !tbaa !42
  %247 = icmp eq ptr %246, null
  br i1 %247, label %286, label %251

248:                                              ; preds = %283, %251
  %249 = load ptr, ptr %252, align 8, !tbaa !42
  %250 = icmp eq ptr %249, null
  br i1 %250, label %286, label %251, !llvm.loop !109

251:                                              ; preds = %244, %248
  %252 = phi ptr [ %249, %248 ], [ %246, %244 ]
  %253 = getelementptr inbounds %struct.bScreen, ptr %252, i64 0, i32 3
  %254 = load ptr, ptr %253, align 8, !tbaa !42
  %255 = icmp eq ptr %254, null
  br i1 %255, label %248, label %256

256:                                              ; preds = %251, %283
  %257 = phi ptr [ %284, %283 ], [ %254, %251 ]
  %258 = getelementptr inbounds %struct.ScrArea, ptr %257, i64 0, i32 8
  %259 = load i8, ptr %258, align 8, !tbaa !49
  %260 = icmp eq i8 %259, 1
  br i1 %260, label %261, label %283

261:                                              ; preds = %256
  %262 = getelementptr inbounds %struct.ScrArea, ptr %257, i64 0, i32 20
  %263 = load ptr, ptr %262, align 8, !tbaa !42
  %264 = icmp eq ptr %263, null
  br i1 %264, label %283, label %265

265:                                              ; preds = %261, %280
  %266 = phi ptr [ %281, %280 ], [ %263, %261 ]
  %267 = getelementptr inbounds %struct.ARegion, ptr %266, i64 0, i32 8
  %268 = load i16, ptr %267, align 2, !tbaa !52
  %269 = icmp eq i16 %268, 0
  br i1 %269, label %270, label %280

270:                                              ; preds = %265
  %271 = getelementptr inbounds %struct.ARegion, ptr %266, i64 0, i32 30
  %272 = load ptr, ptr %271, align 8, !tbaa !57
  %273 = getelementptr inbounds %struct.RegionView3D, ptr %272, i64 0, i32 11
  %274 = load ptr, ptr %273, align 8, !tbaa !58
  %275 = icmp eq ptr %274, null
  br i1 %275, label %280, label %276

276:                                              ; preds = %270
  %277 = getelementptr inbounds %struct.RenderEngine, ptr %274, i64 0, i32 13
  %278 = load i32, ptr %277, align 8, !tbaa !110
  %279 = or i32 %278, 2
  store i32 %279, ptr %277, align 8, !tbaa !110
  br label %280

280:                                              ; preds = %276, %270, %265
  %281 = load ptr, ptr %266, align 8, !tbaa !42
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %265, !llvm.loop !111

283:                                              ; preds = %280, %261, %256
  %284 = load ptr, ptr %257, align 8, !tbaa !42
  %285 = icmp eq ptr %284, null
  br i1 %285, label %248, label %256, !llvm.loop !112

286:                                              ; preds = %206, %160, %91, %248, %202, %149, %87, %244, %147, %144, %2, %148, %129
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @texture_changed(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @BKE_icon_getid(ptr noundef %1) #3
  tail call void @BKE_icon_changed(i32 noundef %3) #3
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %2 ]
  tail call void @BKE_paint_invalidate_overlay_tex(ptr noundef nonnull %8, ptr noundef %1) #3
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7, !llvm.loop !122

11:                                               ; preds = %7, %2
  %12 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = icmp eq ptr %13, null
  br i1 %14, label %53, label %15

15:                                               ; preds = %11, %50
  %16 = phi ptr [ %51, %50 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.Material, ptr %16, i64 0, i32 102
  br label %18

18:                                               ; preds = %28, %15
  %19 = phi i64 [ 0, %15 ], [ %29, %28 ]
  %20 = phi i1 [ false, %15 ], [ %30, %28 ]
  %21 = getelementptr inbounds ptr, ptr %17, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.MTex, ptr %22, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !123
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %32, label %28

28:                                               ; preds = %24, %18
  %29 = add nuw nsw i64 %19, 1
  %30 = icmp ugt i64 %19, 16
  %31 = icmp eq i64 %29, 18
  br i1 %31, label %33, label %18, !llvm.loop !125

32:                                               ; preds = %24
  br i1 %20, label %33, label %44

33:                                               ; preds = %28, %32
  %34 = getelementptr inbounds %struct.Material, ptr %16, i64 0, i32 77
  %35 = load i8, ptr %34, align 1, !tbaa !78
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.Material, ptr %16, i64 0, i32 103
  %39 = load ptr, ptr %38, align 8, !tbaa !79
  %40 = icmp eq ptr %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %37
  %42 = tail call fastcc i32 @nodes_use_tex(ptr noundef nonnull %39, ptr noundef %1), !range !80
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41, %32
  %45 = tail call i32 @BKE_icon_getid(ptr noundef nonnull %16) #3
  tail call void @BKE_icon_changed(i32 noundef %45) #3
  %46 = getelementptr inbounds %struct.Material, ptr %16, i64 0, i32 136
  %47 = load ptr, ptr %46, align 8, !tbaa !73
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  tail call void @GPU_material_free(ptr noundef nonnull %16) #3
  br label %50

50:                                               ; preds = %33, %37, %41, %44, %49
  %51 = load ptr, ptr %16, align 8, !tbaa !42
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %15, !llvm.loop !126

53:                                               ; preds = %50, %11
  %54 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 21
  %55 = load ptr, ptr %54, align 8, !tbaa !42
  %56 = icmp eq ptr %55, null
  br i1 %56, label %86, label %57

57:                                               ; preds = %53, %83
  %58 = phi ptr [ %84, %83 ], [ %55, %53 ]
  %59 = getelementptr inbounds %struct.Lamp, ptr %58, i64 0, i32 69
  br label %60

60:                                               ; preds = %57, %70
  %61 = phi i64 [ 0, %57 ], [ %71, %70 ]
  %62 = phi i1 [ false, %57 ], [ %72, %70 ]
  %63 = getelementptr inbounds ptr, ptr %59, i64 %61
  %64 = load ptr, ptr %63, align 8, !tbaa !42
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.MTex, ptr %64, i64 0, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !123
  %69 = icmp eq ptr %68, %1
  br i1 %69, label %74, label %70

70:                                               ; preds = %66, %60
  %71 = add nuw nsw i64 %61, 1
  %72 = icmp ugt i64 %61, 16
  %73 = icmp eq i64 %71, 18
  br i1 %73, label %75, label %60, !llvm.loop !125

74:                                               ; preds = %66
  br i1 %62, label %75, label %82

75:                                               ; preds = %70, %74
  %76 = getelementptr inbounds %struct.Lamp, ptr %58, i64 0, i32 74
  %77 = load ptr, ptr %76, align 8, !tbaa !127
  %78 = icmp eq ptr %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = tail call fastcc i32 @nodes_use_tex(ptr noundef nonnull %77, ptr noundef %1), !range !80
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79, %74
  tail call fastcc void @lamp_changed(ptr noundef %0, ptr noundef nonnull %58)
  br label %83

83:                                               ; preds = %82, %75, %79
  %84 = load ptr, ptr %58, align 8, !tbaa !42
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %57, !llvm.loop !129

86:                                               ; preds = %83, %53
  %87 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 25
  %88 = load ptr, ptr %87, align 8, !tbaa !42
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %120, %86
  %91 = load ptr, ptr %4, align 8, !tbaa !42
  %92 = icmp eq ptr %91, null
  br i1 %92, label %232, label %123

93:                                               ; preds = %86, %120
  %94 = phi ptr [ %121, %120 ], [ %88, %86 ]
  %95 = getelementptr inbounds %struct.World, ptr %94, i64 0, i32 70
  br label %96

96:                                               ; preds = %93, %106
  %97 = phi i64 [ 0, %93 ], [ %107, %106 ]
  %98 = phi i1 [ false, %93 ], [ %108, %106 ]
  %99 = getelementptr inbounds ptr, ptr %95, i64 %97
  %100 = load ptr, ptr %99, align 8, !tbaa !42
  %101 = icmp eq ptr %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.MTex, ptr %100, i64 0, i32 5
  %104 = load ptr, ptr %103, align 8, !tbaa !123
  %105 = icmp eq ptr %104, %1
  br i1 %105, label %110, label %106

106:                                              ; preds = %102, %96
  %107 = add nuw nsw i64 %97, 1
  %108 = icmp ugt i64 %97, 16
  %109 = icmp eq i64 %107, 18
  br i1 %109, label %111, label %96, !llvm.loop !125

110:                                              ; preds = %102
  br i1 %98, label %111, label %118

111:                                              ; preds = %106, %110
  %112 = getelementptr inbounds %struct.World, ptr %94, i64 0, i32 75
  %113 = load ptr, ptr %112, align 8, !tbaa !130
  %114 = icmp eq ptr %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %111
  %116 = tail call fastcc i32 @nodes_use_tex(ptr noundef nonnull %113, ptr noundef %1), !range !80
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %115, %110
  %119 = tail call i32 @BKE_icon_getid(ptr noundef nonnull %94) #3
  tail call void @BKE_icon_changed(i32 noundef %119) #3
  br label %120

120:                                              ; preds = %111, %115, %118
  %121 = load ptr, ptr %94, align 8, !tbaa !42
  %122 = icmp eq ptr %121, null
  br i1 %122, label %90, label %93, !llvm.loop !132

123:                                              ; preds = %90, %146
  %124 = phi ptr [ %152, %146 ], [ %91, %90 ]
  %125 = phi i8 [ %151, %146 ], [ 0, %90 ]
  %126 = getelementptr inbounds %struct.Scene, ptr %124, i64 0, i32 16
  %127 = load i8, ptr %126, align 2, !tbaa !133
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %146, label %129

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.Scene, ptr %124, i64 0, i32 18
  %131 = load ptr, ptr %130, align 8, !tbaa !134
  %132 = icmp eq ptr %131, null
  br i1 %132, label %146, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.bNodeTree, ptr %131, i64 0, i32 7
  %135 = load ptr, ptr %134, align 8, !tbaa !42
  %136 = icmp eq ptr %135, null
  br i1 %136, label %146, label %137

137:                                              ; preds = %133, %143
  %138 = phi ptr [ %144, %143 ], [ %135, %133 ]
  %139 = getelementptr inbounds %struct.bNode, ptr %138, i64 0, i32 20
  %140 = load ptr, ptr %139, align 8, !tbaa !135
  %141 = icmp eq ptr %140, %1
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  tail call void @ED_node_tag_update_id(ptr noundef nonnull %124) #3
  br label %143

143:                                              ; preds = %137, %142
  %144 = load ptr, ptr %138, align 8, !tbaa !42
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %137, !llvm.loop !137

146:                                              ; preds = %143, %133, %129, %123
  %147 = getelementptr inbounds %struct.Scene, ptr %124, i64 0, i32 42
  %148 = load i64, ptr %147, align 8, !tbaa !82
  %149 = and i64 %148, 32
  %150 = icmp eq i64 %149, 0
  %151 = select i1 %150, i8 %125, i8 1
  %152 = load ptr, ptr %124, align 8, !tbaa !42
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %123, !llvm.loop !138

154:                                              ; preds = %146
  %155 = icmp eq i8 %151, 0
  br i1 %155, label %232, label %156

156:                                              ; preds = %154
  %157 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 20), align 8, !tbaa !100
  %158 = and i16 %157, 8
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %160, label %232

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %162 = load ptr, ptr %161, align 8, !tbaa !42
  %163 = icmp eq ptr %162, null
  br i1 %163, label %232, label %164

164:                                              ; preds = %160, %229
  %165 = phi ptr [ %230, %229 ], [ %162, %160 ]
  %166 = getelementptr inbounds %struct.Object, ptr %165, i64 0, i32 120
  %167 = load ptr, ptr %166, align 8, !tbaa !104
  %168 = tail call ptr @give_matarar(ptr noundef nonnull %165) #3
  %169 = tail call ptr @give_totcolp(ptr noundef nonnull %165) #3
  %170 = icmp ne ptr %167, null
  %171 = icmp ne ptr %169, null
  %172 = select i1 %170, i1 %171, i1 false
  %173 = icmp ne ptr %168, null
  %174 = select i1 %172, i1 %173, i1 false
  br i1 %174, label %175, label %229

175:                                              ; preds = %164
  %176 = load i16, ptr %169, align 2, !tbaa !72
  %177 = icmp sgt i16 %176, 0
  br i1 %177, label %178, label %229

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.Object, ptr %165, i64 0, i32 30
  %180 = load ptr, ptr %179, align 8, !tbaa !139
  %181 = icmp eq ptr %180, null
  %182 = getelementptr inbounds %struct.Object, ptr %165, i64 0, i32 29
  %183 = zext nneg i16 %176 to i64
  br label %184

184:                                              ; preds = %178, %226
  %185 = phi i64 [ 0, %178 ], [ %227, %226 ]
  br i1 %181, label %190, label %186

186:                                              ; preds = %184
  %187 = getelementptr inbounds i8, ptr %180, i64 %185
  %188 = load i8, ptr %187, align 1, !tbaa !140
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %186, %184
  br label %191

191:                                              ; preds = %186, %190
  %192 = phi ptr [ %168, %190 ], [ %182, %186 ]
  %193 = load ptr, ptr %192, align 8, !tbaa !42
  %194 = getelementptr inbounds ptr, ptr %193, i64 %185
  %195 = load ptr, ptr %194, align 8, !tbaa !42
  %196 = icmp eq ptr %195, null
  br i1 %196, label %226, label %197

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.Material, ptr %195, i64 0, i32 102
  br label %199

199:                                              ; preds = %209, %197
  %200 = phi i64 [ 0, %197 ], [ %210, %209 ]
  %201 = phi i1 [ false, %197 ], [ %211, %209 ]
  %202 = getelementptr inbounds ptr, ptr %198, i64 %200
  %203 = load ptr, ptr %202, align 8, !tbaa !42
  %204 = icmp eq ptr %203, null
  br i1 %204, label %209, label %205

205:                                              ; preds = %199
  %206 = getelementptr inbounds %struct.MTex, ptr %203, i64 0, i32 5
  %207 = load ptr, ptr %206, align 8, !tbaa !123
  %208 = icmp eq ptr %207, %1
  br i1 %208, label %213, label %209

209:                                              ; preds = %205, %199
  %210 = add nuw nsw i64 %200, 1
  %211 = icmp ugt i64 %200, 16
  %212 = icmp eq i64 %210, 18
  br i1 %212, label %214, label %199, !llvm.loop !125

213:                                              ; preds = %205
  br i1 %201, label %214, label %225

214:                                              ; preds = %209, %213
  %215 = getelementptr inbounds %struct.Material, ptr %195, i64 0, i32 77
  %216 = load i8, ptr %215, align 1, !tbaa !78
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %226, label %218

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.Material, ptr %195, i64 0, i32 103
  %220 = load ptr, ptr %219, align 8, !tbaa !79
  %221 = icmp eq ptr %220, null
  br i1 %221, label %226, label %222

222:                                              ; preds = %218
  %223 = tail call fastcc i32 @nodes_use_tex(ptr noundef nonnull %220, ptr noundef %1), !range !80
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %222, %213
  tail call void @GPU_drawobject_free(ptr noundef nonnull %167) #3
  br label %229

226:                                              ; preds = %214, %218, %222, %191
  %227 = add nuw nsw i64 %185, 1
  %228 = icmp eq i64 %227, %183
  br i1 %228, label %229, label %184, !llvm.loop !141

229:                                              ; preds = %226, %175, %225, %164
  %230 = load ptr, ptr %165, align 8, !tbaa !42
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %164, !llvm.loop !142

232:                                              ; preds = %229, %90, %160, %156, %154
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @lamp_changed(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @BKE_icon_getid(ptr noundef %1) #3
  tail call void @BKE_icon_changed(i32 noundef %3) #3
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2, %17
  %8 = phi ptr [ %18, %17 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !143
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 125
  %14 = load ptr, ptr %13, align 8, !tbaa !118
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @GPU_lamp_free(ptr noundef nonnull %8) #3
  br label %17

17:                                               ; preds = %7, %12, %16
  %18 = load ptr, ptr %8, align 8, !tbaa !42
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !llvm.loop !144

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
  tail call void @GPU_material_free(ptr noundef nonnull %25) #3
  br label %30

30:                                               ; preds = %24, %29
  %31 = load ptr, ptr %25, align 8, !tbaa !42
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %24, !llvm.loop !145

33:                                               ; preds = %30, %20
  %34 = load ptr, ptr getelementptr inbounds (%struct.Material, ptr @defmaterial, i64 0, i32 136), align 8, !tbaa !73
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @GPU_material_free(ptr noundef nonnull @defmaterial) #3
  br label %37

37:                                               ; preds = %36, %33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_render_internal_init() local_unnamed_addr #0 {
  %1 = load ptr, ptr @RE_engine_id_BLENDER_RENDER, align 8, !tbaa !42
  %2 = tail call ptr @RE_engines_find(ptr noundef %1) #3
  %3 = getelementptr inbounds %struct.RenderEngineType, ptr %2, i64 0, i32 8
  store ptr @render_view3d_update, ptr %3, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.RenderEngineType, ptr %2, i64 0, i32 9
  store ptr @render_view3d_draw, ptr %4, align 8, !tbaa !146
  ret void
}

declare ptr @RE_engines_find(ptr noundef) local_unnamed_addr #1

declare void @render_view3d_update(ptr noundef, ptr noundef) #1

declare void @render_view3d_draw(ptr noundef, ptr noundef) #1

declare void @BKE_icon_changed(i32 noundef) local_unnamed_addr #1

declare i32 @BKE_icon_getid(ptr noundef) local_unnamed_addr #1

declare void @GPU_material_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @nodes_use_material(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %2, %20
  %7 = phi ptr [ %21, %20 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !135
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %9, %1
  br i1 %12, label %23, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 8
  %15 = load i16, ptr %14, align 4, !tbaa !147
  %16 = icmp eq i16 %15, 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = tail call fastcc i32 @nodes_use_material(ptr noundef nonnull %9, ptr noundef %1), !range !80
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %6, %13, %17
  %21 = load ptr, ptr %7, align 8, !tbaa !42
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %6, !llvm.loop !148

23:                                               ; preds = %11, %17, %20, %2
  %24 = phi i32 [ 0, %2 ], [ 1, %11 ], [ 1, %17 ], [ 0, %20 ]
  ret i32 %24
}

declare ptr @give_matarar(ptr noundef) local_unnamed_addr #1

declare ptr @give_totcolp(ptr noundef) local_unnamed_addr #1

declare void @GPU_drawobject_free(ptr noundef) local_unnamed_addr #1

declare void @BKE_paint_invalidate_overlay_tex(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @nodes_use_tex(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %2, %41
  %7 = phi ptr [ %42, %41 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !135
  %10 = icmp eq ptr %9, null
  br i1 %10, label %41, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %9, %1
  br i1 %12, label %44, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %15 = load i16, ptr %14, align 8, !tbaa !72
  %16 = icmp eq i16 %15, 16717
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Material, ptr %9, i64 0, i32 102
  br label %19

19:                                               ; preds = %17, %29
  %20 = phi i64 [ 0, %17 ], [ %30, %29 ]
  %21 = phi i1 [ false, %17 ], [ %31, %29 ]
  %22 = getelementptr inbounds ptr, ptr %18, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.MTex, ptr %23, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !123
  %28 = icmp eq ptr %27, %1
  br i1 %28, label %33, label %29

29:                                               ; preds = %25, %19
  %30 = add nuw nsw i64 %20, 1
  %31 = icmp ugt i64 %20, 16
  %32 = icmp eq i64 %30, 18
  br i1 %32, label %41, label %19, !llvm.loop !125

33:                                               ; preds = %25
  br i1 %21, label %41, label %44

34:                                               ; preds = %13
  %35 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 8
  %36 = load i16, ptr %35, align 4, !tbaa !147
  %37 = icmp eq i16 %36, 2
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = tail call fastcc i32 @nodes_use_tex(ptr noundef nonnull %9, ptr noundef %1), !range !80
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29, %6, %33, %38, %34
  %42 = load ptr, ptr %7, align 8, !tbaa !42
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %6, !llvm.loop !149

44:                                               ; preds = %11, %33, %38, %41, %2
  %45 = phi i32 [ 0, %2 ], [ 1, %11 ], [ 1, %33 ], [ 1, %38 ], [ 0, %41 ]
  ret i32 %45
}

declare void @ED_node_tag_update_id(ptr noundef) local_unnamed_addr #1

declare void @GPU_lamp_free(ptr noundef) local_unnamed_addr #1

declare void @BKE_texpaint_slots_refresh_object(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!34 = !{!35, !36, i64 1552}
!35 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 1040, !39, i64 1042, !39, i64 1044, !39, i64 1046, !40, i64 1048, !37, i64 1056, !39, i64 1072, !36, i64 1080, !41, i64 1088, !41, i64 1104, !41, i64 1120, !41, i64 1136, !41, i64 1152, !41, i64 1168, !41, i64 1184, !41, i64 1200, !41, i64 1216, !41, i64 1232, !41, i64 1248, !41, i64 1264, !41, i64 1280, !41, i64 1296, !41, i64 1312, !41, i64 1328, !41, i64 1344, !41, i64 1360, !41, i64 1376, !41, i64 1392, !41, i64 1408, !41, i64 1424, !41, i64 1440, !41, i64 1456, !41, i64 1472, !41, i64 1488, !41, i64 1504, !41, i64 1520, !41, i64 1536, !41, i64 1552, !41, i64 1568, !41, i64 1584, !41, i64 1600, !41, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"long", !37, i64 0}
!41 = !{!"ListBase", !36, i64 0, !36, i64 8}
!42 = !{!36, !36, i64 0}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!47, !36, i64 24}
!47 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !48, i64 128, !39, i64 132, !39, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !48, i64 160, !48, i64 164, !36, i64 168, !41, i64 176, !41, i64 192, !41, i64 208, !41, i64 224, !41, i64 240}
!48 = !{!"int", !37, i64 0}
!49 = !{!50, !37, i64 72}
!50 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !51, i64 56, !37, i64 72, !37, i64 73, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !39, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !41, i64 96, !41, i64 112, !41, i64 128, !41, i64 144}
!51 = !{!"rcti", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!52 = !{!53, !39, i64 214}
!53 = !{!"ARegion", !36, i64 0, !36, i64 8, !54, i64 16, !51, i64 176, !51, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !56, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !36, i64 240, !41, i64 248, !41, i64 264, !41, i64 280, !41, i64 296, !41, i64 312, !41, i64 328, !41, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!54 = !{!"View2D", !55, i64 0, !55, i64 16, !51, i64 32, !51, i64 48, !51, i64 64, !37, i64 80, !37, i64 88, !56, i64 96, !56, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !36, i64 128, !48, i64 136, !48, i64 140, !36, i64 144, !36, i64 152}
!55 = !{!"rctf", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12}
!56 = !{!"float", !37, i64 0}
!57 = !{!53, !36, i64 376}
!58 = !{!59, !36, i64 656}
!59 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !37, i64 696, !37, i64 760, !56, i64 776, !56, i64 780, !56, i64 784, !56, i64 788, !37, i64 792, !56, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !39, i64 824, !39, i64 826, !37, i64 828, !39, i64 844, !39, i64 846, !56, i64 848, !37, i64 852, !56, i64 864, !37, i64 868}
!60 = !{!61, !48, i64 16}
!61 = !{!"RenderEngine", !36, i64 0, !36, i64 8, !48, i64 16, !36, i64 24, !48, i64 32, !48, i64 36, !48, i64 40, !36, i64 48, !41, i64 56, !37, i64 72, !48, i64 584, !48, i64 588, !36, i64 592, !48, i64 600, !48, i64 604, !55, i64 608, !51, i64 624, !37, i64 640, !48, i64 704, !48, i64 708}
!62 = !{!61, !36, i64 0}
!63 = !{!64, !36, i64 176}
!64 = !{!"RenderEngineType", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !48, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !65, i64 200}
!65 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!66 = distinct !{!66, !44, !45}
!67 = distinct !{!67, !44, !45}
!68 = distinct !{!68, !44, !45}
!69 = distinct !{!69, !44, !45}
!70 = distinct !{!70, !44, !45}
!71 = distinct !{!71, !44, !45}
!72 = !{!39, !39, i64 0}
!73 = !{!74, !36, i64 928}
!74 = !{!"Material", !75, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !56, i64 132, !56, i64 136, !56, i64 140, !56, i64 144, !56, i64 148, !56, i64 152, !56, i64 156, !56, i64 160, !56, i64 164, !56, i64 168, !56, i64 172, !56, i64 176, !56, i64 180, !56, i64 184, !56, i64 188, !56, i64 192, !56, i64 196, !56, i64 200, !56, i64 204, !56, i64 208, !56, i64 212, !56, i64 216, !56, i64 220, !76, i64 224, !77, i64 312, !56, i64 328, !56, i64 332, !56, i64 336, !56, i64 340, !56, i64 344, !56, i64 348, !56, i64 352, !39, i64 356, !39, i64 358, !39, i64 360, !37, i64 362, !37, i64 363, !56, i64 364, !56, i64 368, !39, i64 372, !39, i64 374, !56, i64 376, !56, i64 380, !56, i64 384, !56, i64 388, !39, i64 392, !39, i64 394, !48, i64 396, !48, i64 400, !48, i64 404, !48, i64 408, !39, i64 412, !39, i64 414, !39, i64 416, !39, i64 418, !56, i64 420, !56, i64 424, !56, i64 428, !56, i64 432, !56, i64 436, !56, i64 440, !56, i64 444, !56, i64 448, !56, i64 452, !56, i64 456, !37, i64 460, !56, i64 524, !56, i64 528, !56, i64 532, !48, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !39, i64 544, !39, i64 546, !39, i64 548, !37, i64 550, !37, i64 551, !39, i64 552, !39, i64 554, !56, i64 556, !56, i64 560, !37, i64 564, !56, i64 580, !56, i64 584, !39, i64 588, !39, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !39, i64 612, !39, i64 614, !56, i64 616, !56, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !56, i64 800, !56, i64 804, !56, i64 808, !56, i64 812, !56, i64 816, !39, i64 820, !39, i64 822, !37, i64 824, !37, i64 836, !56, i64 848, !56, i64 852, !56, i64 856, !56, i64 860, !56, i64 864, !56, i64 868, !56, i64 872, !39, i64 876, !39, i64 878, !48, i64 880, !39, i64 884, !39, i64 886, !37, i64 888, !39, i64 904, !39, i64 906, !39, i64 908, !39, i64 910, !39, i64 912, !37, i64 914, !36, i64 920, !41, i64 928}
!75 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !48, i64 100, !48, i64 104, !48, i64 108, !36, i64 112}
!76 = !{!"VolumeSettings", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !56, i64 52, !56, i64 56, !56, i64 60, !39, i64 64, !39, i64 66, !39, i64 68, !39, i64 70, !56, i64 72, !56, i64 76, !56, i64 80, !56, i64 84}
!77 = !{!"GameSettings", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!78 = !{!74, !37, i64 543}
!79 = !{!74, !36, i64 768}
!80 = !{i32 0, i32 2}
!81 = distinct !{!81, !44, !45}
!82 = !{!83, !40, i64 4648}
!83 = !{!"Scene", !75, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !48, i64 232, !48, i64 236, !48, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !84, i64 280, !91, i64 4264, !41, i64 4296, !41, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !39, i64 4376, !39, i64 4378, !48, i64 4380, !41, i64 4384, !92, i64 4400, !93, i64 4416, !96, i64 4600, !36, i64 4608, !97, i64 4616, !36, i64 4640, !40, i64 4648, !40, i64 4656, !86, i64 4664, !87, i64 4824, !98, i64 4888, !36, i64 4952}
!84 = !{!"RenderData", !85, i64 0, !36, i64 248, !36, i64 256, !88, i64 264, !89, i64 328, !48, i64 400, !48, i64 404, !48, i64 408, !56, i64 412, !48, i64 416, !48, i64 420, !48, i64 424, !48, i64 428, !39, i64 432, !39, i64 434, !56, i64 436, !56, i64 440, !56, i64 444, !56, i64 448, !56, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !48, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !48, i64 484, !48, i64 488, !39, i64 492, !39, i64 494, !48, i64 496, !48, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !48, i64 516, !48, i64 520, !48, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !55, i64 544, !55, i64 560, !51, i64 576, !41, i64 592, !39, i64 608, !39, i64 610, !56, i64 612, !56, i64 616, !56, i64 620, !56, i64 624, !48, i64 628, !56, i64 632, !56, i64 636, !56, i64 640, !56, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !56, i64 660, !56, i64 664, !39, i64 668, !39, i64 670, !56, i64 672, !56, i64 676, !37, i64 680, !48, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !48, i64 2520, !39, i64 2524, !39, i64 2526, !56, i64 2528, !56, i64 2532, !39, i64 2536, !39, i64 2538, !56, i64 2540, !39, i64 2544, !39, i64 2546, !48, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !56, i64 2560, !56, i64 2564, !36, i64 2568, !48, i64 2576, !56, i64 2580, !37, i64 2584, !90, i64 2616, !48, i64 3976, !48, i64 3980}
!85 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !56, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !86, i64 24, !87, i64 184}
!86 = !{!"ColorManagedViewSettings", !48, i64 0, !48, i64 4, !37, i64 8, !37, i64 72, !56, i64 136, !56, i64 140, !36, i64 144, !36, i64 152}
!87 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!88 = !{!"QuicktimeCodecSettings", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !48, i64 40, !48, i64 44, !39, i64 48, !39, i64 50, !48, i64 52, !48, i64 56, !48, i64 60}
!89 = !{!"FFMpegCodecData", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !56, i64 32, !48, i64 36, !48, i64 40, !48, i64 44, !48, i64 48, !48, i64 52, !48, i64 56, !48, i64 60, !36, i64 64}
!90 = !{!"BakeData", !85, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !56, i64 1280, !56, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!91 = !{!"AudioData", !48, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !48, i64 16, !39, i64 20, !39, i64 22, !56, i64 24, !56, i64 28}
!92 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!93 = !{!"GameData", !92, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !94, i64 40, !39, i64 64, !39, i64 66, !56, i64 68, !95, i64 72, !56, i64 128, !56, i64 132, !48, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !56, i64 164, !56, i64 168, !56, i64 172, !56, i64 176, !56, i64 180}
!94 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !56, i64 8, !56, i64 12, !36, i64 16}
!95 = !{!"RecastData", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !48, i64 40, !56, i64 44, !56, i64 48, !39, i64 52, !39, i64 54}
!96 = !{!"UnitSettings", !56, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!97 = !{!"PhysicsSettings", !37, i64 0, !48, i64 12, !48, i64 16, !48, i64 20}
!98 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!99 = distinct !{!99, !44, !45}
!100 = !{!101, !39, i64 8480}
!101 = !{!"UserDef", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !48, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !48, i64 8484, !48, i64 8488, !48, i64 8492, !39, i64 8496, !39, i64 8498, !48, i64 8500, !48, i64 8504, !48, i64 8508, !48, i64 8512, !48, i64 8516, !48, i64 8520, !48, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !41, i64 8536, !41, i64 8552, !41, i64 8568, !41, i64 8584, !41, i64 8600, !41, i64 8616, !41, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !48, i64 8912, !48, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !56, i64 8956, !56, i64 8960, !48, i64 8964, !39, i64 8968, !39, i64 8970, !56, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !102, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !48, i64 10896, !48, i64 10900, !56, i64 10904, !56, i64 10908, !48, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !103, i64 10928}
!102 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!103 = !{!"WalkNavigation", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !39, i64 24, !37, i64 26}
!104 = !{!105, !36, i64 1296}
!105 = !{!"Object", !75, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !39, i64 138, !48, i64 140, !48, i64 144, !48, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !106, i64 312, !36, i64 360, !41, i64 368, !41, i64 384, !41, i64 400, !41, i64 416, !48, i64 432, !48, i64 436, !36, i64 440, !36, i64 448, !48, i64 456, !48, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !56, i64 616, !56, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !48, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !48, i64 968, !48, i64 972, !48, i64 976, !48, i64 980, !48, i64 984, !56, i64 988, !56, i64 992, !56, i64 996, !56, i64 1000, !56, i64 1004, !56, i64 1008, !56, i64 1012, !56, i64 1016, !56, i64 1020, !56, i64 1024, !56, i64 1028, !56, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !56, i64 1048, !56, i64 1052, !41, i64 1056, !41, i64 1072, !41, i64 1088, !41, i64 1104, !56, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !48, i64 1144, !48, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !41, i64 1176, !41, i64 1192, !41, i64 1208, !41, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !56, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !40, i64 1304, !40, i64 1312, !48, i64 1320, !48, i64 1324, !41, i64 1328, !41, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !41, i64 1400, !36, i64 1416}
!106 = !{!"bAnimVizSettings", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !48, i64 32, !48, i64 36, !48, i64 40, !48, i64 44}
!107 = distinct !{!107, !44, !45}
!108 = distinct !{!108, !44, !45}
!109 = distinct !{!109, !44, !45}
!110 = !{!61, !48, i64 600}
!111 = distinct !{!111, !44, !45}
!112 = distinct !{!112, !44, !45}
!113 = distinct !{!113, !44, !45}
!114 = !{!115, !36, i64 352}
!115 = !{!"Tex", !75, i64 0, !36, i64 120, !56, i64 128, !56, i64 132, !56, i64 136, !56, i64 140, !56, i64 144, !56, i64 148, !56, i64 152, !56, i64 156, !56, i64 160, !56, i64 164, !56, i64 168, !56, i64 172, !56, i64 176, !56, i64 180, !56, i64 184, !56, i64 188, !56, i64 192, !56, i64 196, !56, i64 200, !56, i64 204, !56, i64 208, !56, i64 212, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !56, i64 236, !56, i64 240, !56, i64 244, !56, i64 248, !48, i64 252, !48, i64 256, !39, i64 260, !39, i64 262, !39, i64 264, !39, i64 266, !48, i64 268, !48, i64 272, !48, i64 276, !48, i64 280, !56, i64 284, !56, i64 288, !56, i64 292, !116, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!116 = !{!"ImageUser", !36, i64 0, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !48, i64 36}
!117 = distinct !{!117, !44, !45}
!118 = !{!105, !36, i64 1328}
!119 = !{!105, !48, i64 432}
!120 = distinct !{!120, !44, !45}
!121 = distinct !{!121, !44, !45}
!122 = distinct !{!122, !44, !45}
!123 = !{!124, !36, i64 16}
!124 = !{!"MTex", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !56, i64 116, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !39, i64 128, !39, i64 130, !37, i64 132, !37, i64 133, !56, i64 140, !56, i64 144, !56, i64 148, !56, i64 152, !56, i64 156, !56, i64 160, !56, i64 164, !56, i64 168, !56, i64 172, !56, i64 176, !56, i64 180, !56, i64 184, !56, i64 188, !56, i64 192, !56, i64 196, !56, i64 200, !56, i64 204, !56, i64 208, !56, i64 212, !56, i64 216, !56, i64 220, !56, i64 224, !56, i64 228, !56, i64 232, !56, i64 236, !56, i64 240, !56, i64 244, !56, i64 248, !56, i64 252, !56, i64 256, !56, i64 260, !56, i64 264, !56, i64 268, !56, i64 272, !56, i64 276, !56, i64 280, !56, i64 284, !56, i64 288, !56, i64 292, !56, i64 296, !56, i64 300, !56, i64 304, !56, i64 308}
!125 = distinct !{!125, !44, !45}
!126 = distinct !{!126, !44, !45}
!127 = !{!128, !36, i64 512}
!128 = !{!"Lamp", !75, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !48, i64 132, !39, i64 136, !39, i64 138, !56, i64 140, !56, i64 144, !56, i64 148, !56, i64 152, !56, i64 156, !56, i64 160, !56, i64 164, !56, i64 168, !56, i64 172, !56, i64 176, !56, i64 180, !56, i64 184, !56, i64 188, !56, i64 192, !56, i64 196, !36, i64 200, !39, i64 208, !39, i64 210, !56, i64 212, !56, i64 216, !56, i64 220, !56, i64 224, !56, i64 228, !56, i64 232, !56, i64 236, !39, i64 240, !39, i64 242, !39, i64 244, !39, i64 246, !37, i64 248, !37, i64 249, !39, i64 250, !39, i64 252, !39, i64 254, !39, i64 256, !39, i64 258, !56, i64 260, !56, i64 264, !56, i64 268, !56, i64 272, !39, i64 276, !39, i64 278, !39, i64 280, !39, i64 282, !39, i64 284, !39, i64 286, !56, i64 288, !56, i64 292, !56, i64 296, !56, i64 300, !56, i64 304, !56, i64 308, !56, i64 312, !56, i64 316, !56, i64 320, !56, i64 324, !56, i64 328, !56, i64 332, !56, i64 336, !39, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !39, i64 496, !39, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!129 = distinct !{!129, !44, !45}
!130 = !{!131, !36, i64 520}
!131 = !{!"World", !75, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !39, i64 132, !39, i64 134, !56, i64 136, !56, i64 140, !56, i64 144, !56, i64 148, !56, i64 152, !56, i64 156, !56, i64 160, !56, i64 164, !56, i64 168, !56, i64 172, !56, i64 176, !56, i64 180, !56, i64 184, !56, i64 188, !56, i64 192, !56, i64 196, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !56, i64 216, !56, i64 220, !56, i64 224, !56, i64 228, !56, i64 232, !56, i64 236, !56, i64 240, !56, i64 244, !56, i64 248, !56, i64 252, !56, i64 256, !56, i64 260, !39, i64 264, !39, i64 266, !39, i64 268, !39, i64 270, !56, i64 272, !56, i64 276, !56, i64 280, !56, i64 284, !39, i64 288, !39, i64 290, !39, i64 292, !39, i64 294, !56, i64 296, !56, i64 300, !56, i64 304, !56, i64 308, !56, i64 312, !56, i64 316, !56, i64 320, !39, i64 324, !39, i64 326, !39, i64 328, !39, i64 330, !39, i64 332, !39, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !39, i64 504, !39, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!132 = distinct !{!132, !44, !45}
!133 = !{!83, !37, i64 246}
!134 = !{!83, !36, i64 248}
!135 = !{!136, !36, i64 240}
!136 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !48, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !41, i64 200, !41, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !41, i64 264, !56, i64 280, !56, i64 284, !56, i64 288, !56, i64 292, !56, i64 296, !56, i64 300, !56, i64 304, !48, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !56, i64 380, !56, i64 384, !39, i64 388, !39, i64 390, !36, i64 392, !55, i64 400, !55, i64 416, !55, i64 432, !39, i64 448, !39, i64 450, !48, i64 452, !36, i64 456}
!137 = distinct !{!137, !44, !45}
!138 = distinct !{!138, !44, !45}
!139 = !{!105, !36, i64 448}
!140 = !{!37, !37, i64 0}
!141 = distinct !{!141, !44, !45}
!142 = distinct !{!142, !44, !45}
!143 = !{!105, !36, i64 296}
!144 = distinct !{!144, !44, !45}
!145 = distinct !{!145, !44, !45}
!146 = !{!64, !36, i64 184}
!147 = !{!136, !39, i64 172}
!148 = distinct !{!148, !44, !45}
!149 = distinct !{!149, !44, !45}
