; ModuleID = 'blender/source/blender/windowmanager/intern/wm_init_exit.c'
source_filename = "blender/source/blender/windowmanager/intern/wm_init_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
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
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmTimer = type { ptr, ptr, ptr, double, i32, ptr, double, double, double, double, double, i32 }
%struct.RecentFile = type { ptr, ptr, ptr }

@wm_start_with_console = dso_local local_unnamed_addr global i8 0, align 1
@G = external global %struct.Global, align 8
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str = private unnamed_addr constant [13 x i8] c"WM_OT_splash\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"SCREEN_OT_region_quadview\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"WM_OT_window_fullscreen_toggle\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"VIEW3D_OT_game_start\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"No valid 3D View found, game auto start is not possible\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"ReportTimerInfo\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"quit.blend\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Saved session recovery to '%s'\0A\00", align 1
@MEM_get_memory_blocks_in_use = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [36 x i8] c"Error: Not freed memory blocks: %d\0A\00", align 1
@MEM_printmemlist = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [14 x i8] c"\0ABlender quit\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @WM_init(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !34
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @wm_ghost_init(ptr noundef %0) #7
  tail call void @wm_init_cursor_data() #7
  br label %7

7:                                                ; preds = %6, %3
  %8 = tail call i32 @GHOST_CreateSystemPaths() #7
  tail call void @BKE_addon_pref_type_init() #7
  tail call void @wm_operatortype_init() #7
  tail call void @WM_menutype_init() #7
  tail call void @WM_uilisttype_init() #7
  tail call void @set_free_windowmanager_cb(ptr noundef nonnull @wm_close_and_free) #7
  tail call void @set_free_notifier_reference_cb(ptr noundef nonnull @WM_main_remove_notifier_reference) #7
  tail call void @set_blender_test_break_cb(ptr noundef nonnull @wm_window_testbreak) #7
  tail call void @DAG_editors_update_cb(ptr noundef nonnull @ED_render_id_flush_update, ptr noundef nonnull @ED_render_scene_update) #7
  tail call void @ED_spacetypes_init() #7
  tail call void @ED_file_init() #7
  tail call void @ED_node_init_butfuncs() #7
  %9 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !42
  %10 = and i32 %9, -1025
  store i32 %10, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !42
  %11 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 9), align 2, !tbaa !43
  %12 = tail call i32 @wm_homefile_read(ptr noundef %0, ptr noundef null, i8 noundef zeroext %11, ptr noundef null) #7
  tail call void @ED_spacemacros_init() #7
  %13 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !34
  %14 = icmp ne i8 %13, 0
  %15 = load i8, ptr @wm_start_with_console, align 1
  %16 = icmp ne i8 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  %19 = tail call i32 @GHOST_toggleConsole(i32 noundef 3) #7
  br label %20

20:                                               ; preds = %18, %7
  %21 = tail call ptr @CTX_wm_reports(ptr noundef %0) #7
  tail call void @BKE_reports_init(ptr noundef %21, i32 noundef 2) #7
  %22 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !34
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  tail call void @GPU_init() #7
  %25 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 20), align 8, !tbaa !44
  %26 = and i16 %25, 4
  %27 = icmp eq i16 %26, 0
  %28 = zext i1 %27 to i32
  tail call void @GPU_set_mipmap(i32 noundef %28) #7
  %29 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 82), align 2, !tbaa !49
  %30 = sitofp i16 %29 to float
  tail call void @GPU_set_anisotropic(float noundef %30) #7
  %31 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 84), align 2, !tbaa !50
  %32 = sext i16 %31 to i32
  tail call void @GPU_set_gpu_mipmapping(i32 noundef %32) #7
  tail call void @UI_init() #7
  br label %33

33:                                               ; preds = %24, %20
  tail call void @clear_matcopybuf() #7
  tail call void @ED_render_clear_mtex_copybuf() #7
  tail call void @ED_preview_init_dbase() #7
  tail call void @wm_read_history() #7
  %34 = load ptr, ptr @G, align 8, !tbaa !51
  %35 = getelementptr inbounds %struct.Main, ptr %34, i64 0, i32 2
  %36 = tail call ptr @BLI_strncpy(ptr noundef nonnull getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 2), ptr noundef nonnull %35, i64 noundef 1024) #7
  %37 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 23), align 8, !tbaa !52
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  tail call void @BLI_callback_exec(ptr noundef %41, ptr noundef null, i32 noundef 16) #7
  %42 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  tail call void @BLI_callback_exec(ptr noundef %42, ptr noundef null, i32 noundef 9) #7
  br label %43

43:                                               ; preds = %33, %40
  ret void
}

declare void @wm_ghost_init(ptr noundef) local_unnamed_addr #1

declare void @wm_init_cursor_data() local_unnamed_addr #1

declare i32 @GHOST_CreateSystemPaths() local_unnamed_addr #1

declare void @BKE_addon_pref_type_init() local_unnamed_addr #1

declare void @wm_operatortype_init() local_unnamed_addr #1

declare void @WM_menutype_init() local_unnamed_addr #1

declare void @WM_uilisttype_init() local_unnamed_addr #1

declare void @set_free_windowmanager_cb(ptr noundef) local_unnamed_addr #1

declare void @wm_close_and_free(ptr noundef, ptr noundef) #1

declare void @set_free_notifier_reference_cb(ptr noundef) local_unnamed_addr #1

declare void @WM_main_remove_notifier_reference(ptr noundef) #1

declare void @set_blender_test_break_cb(ptr noundef) local_unnamed_addr #1

declare void @wm_window_testbreak() #1

declare void @DAG_editors_update_cb(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_render_id_flush_update(ptr noundef, ptr noundef) #1

declare void @ED_render_scene_update(ptr noundef, ptr noundef, i32 noundef) #1

declare void @ED_spacetypes_init() local_unnamed_addr #1

declare void @ED_file_init() local_unnamed_addr #1

declare void @ED_node_init_butfuncs() local_unnamed_addr #1

declare i32 @wm_homefile_read(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare void @ED_spacemacros_init() local_unnamed_addr #1

declare i32 @GHOST_toggleConsole(i32 noundef) local_unnamed_addr #1

declare void @GPU_init() local_unnamed_addr #1

declare void @GPU_set_mipmap(i32 noundef) local_unnamed_addr #1

declare void @GPU_set_anisotropic(float noundef) local_unnamed_addr #1

declare void @GPU_set_gpu_mipmapping(i32 noundef) local_unnamed_addr #1

declare void @UI_init() local_unnamed_addr #1

declare void @clear_matcopybuf() local_unnamed_addr #1

declare void @ED_render_clear_mtex_copybuf() local_unnamed_addr #1

declare void @ED_preview_init_dbase() local_unnamed_addr #1

declare void @wm_read_history() local_unnamed_addr #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @BLI_callback_exec(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @WM_init_splash(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !53
  %3 = and i32 %2, 134217728
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %8 = getelementptr inbounds %struct.wmWindowManager, ptr %6, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef nonnull %9) #7
  %12 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str, i16 noundef signext 0, ptr noundef null) #7
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %7) #7
  br label %13

13:                                               ; preds = %5, %11, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

declare void @CTX_wm_window_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @WM_init_game(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %7 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %3, %1 ], [ %8, %5 ]
  %11 = getelementptr inbounds %struct.wmWindowManager, ptr %2, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef nonnull %12) #7
  br label %15

15:                                               ; preds = %14, %9
  %16 = tail call ptr @CTX_wm_screen(ptr noundef %0) #7
  %17 = tail call ptr @BKE_screen_find_big_area(ptr noundef %16, i32 noundef 1, i16 noundef signext 0) #7
  %18 = tail call ptr @BKE_area_find_region_type(ptr noundef %17, i32 noundef 0) #7
  %19 = icmp ne ptr %17, null
  %20 = icmp ne ptr %18, null
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %86

22:                                               ; preds = %15
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %17) #7
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %18) #7
  %23 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 9
  %24 = load i16, ptr %23, align 8, !tbaa !61
  %25 = icmp eq i16 %24, 8
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.1, i16 noundef signext 6, ptr noundef null) #7
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 20
  %30 = load ptr, ptr %29, align 8, !tbaa !66
  %31 = icmp eq ptr %30, null
  br i1 %31, label %46, label %32

32:                                               ; preds = %28, %43
  %33 = phi ptr [ %44, %43 ], [ %30, %28 ]
  %34 = getelementptr inbounds %struct.ARegion, ptr %33, i64 0, i32 8
  %35 = load i16, ptr %34, align 2, !tbaa !67
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ARegion, ptr %33, i64 0, i32 10
  %39 = load i16, ptr %38, align 2, !tbaa !68
  %40 = and i16 %39, 1
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  tail call void @ED_region_toggle_hidden(ptr noundef %0, ptr noundef nonnull %33) #7
  br label %43

43:                                               ; preds = %32, %42, %37
  %44 = load ptr, ptr %33, align 8, !tbaa !66
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %32, !llvm.loop !69

46:                                               ; preds = %43, %28
  %47 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !72
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = tail call ptr @ED_screen_state_toggle(ptr noundef %0, ptr noundef %12, ptr noundef nonnull %17, i16 noundef signext 1) #7
  br label %52

52:                                               ; preds = %50, %46
  %53 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 37, i32 1
  %54 = load i16, ptr %53, align 8, !tbaa !74
  %55 = and i16 %54, 1
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %52
  %58 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.2, i16 noundef signext 6, ptr noundef null) #7
  %59 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 3, i32 1
  %60 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 3, i32 3
  tail call void @wm_get_screensize(ptr noundef nonnull %59, ptr noundef nonnull %60) #7
  %61 = load i32, ptr %59, align 4, !tbaa !91
  %62 = trunc i32 %61 to i16
  %63 = add i16 %62, 1
  %64 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 5
  store i16 %63, ptr %64, align 8, !tbaa !92
  %65 = load i32, ptr %60, align 4, !tbaa !93
  %66 = trunc i32 %65 to i16
  %67 = add i16 %66, 1
  %68 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 6
  store i16 %67, ptr %68, align 2, !tbaa !94
  br label %84

69:                                               ; preds = %52
  %70 = getelementptr inbounds %struct.wmWindow, ptr %12, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !95
  %72 = tail call ptr @GHOST_GetClientBounds(ptr noundef %71) #7
  %73 = tail call i32 @GHOST_GetHeightRectangle(ptr noundef %72) #7
  %74 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 3, i32 3
  store i32 %73, ptr %74, align 4, !tbaa !93
  %75 = tail call i32 @GHOST_GetWidthRectangle(ptr noundef %72) #7
  %76 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 3, i32 1
  store i32 %75, ptr %76, align 4, !tbaa !91
  %77 = trunc i32 %75 to i16
  %78 = add i16 %77, 1
  %79 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 5
  store i16 %78, ptr %79, align 8, !tbaa !92
  %80 = load i32, ptr %74, align 4, !tbaa !93
  %81 = trunc i32 %80 to i16
  %82 = add i16 %81, 1
  %83 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 6
  store i16 %82, ptr %83, align 2, !tbaa !94
  tail call void @GHOST_DisposeRectangle(ptr noundef %72) #7
  br label %84

84:                                               ; preds = %69, %57
  %85 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.3, i16 noundef signext 6, ptr noundef null) #7
  tail call void @sound_exit() #7
  br label %96

86:                                               ; preds = %15
  %87 = getelementptr inbounds %struct.wmWindowManager, ptr %2, i64 0, i32 9
  tail call void @BKE_report(ptr noundef nonnull %87, i32 noundef 32, ptr noundef nonnull @.str.4) #7
  %88 = getelementptr inbounds %struct.wmWindowManager, ptr %2, i64 0, i32 9, i32 5
  %89 = load ptr, ptr %88, align 8, !tbaa !97
  tail call void @WM_event_remove_timer(ptr noundef %2, ptr noundef null, ptr noundef %89) #7
  %90 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %91 = tail call ptr @WM_event_add_timer(ptr noundef %2, ptr noundef %90, i32 noundef 272, double noundef 2.000000e-02) #7
  store ptr %91, ptr %88, align 8, !tbaa !97
  %92 = load ptr, ptr @MEM_callocN, align 8, !tbaa !66
  %93 = tail call ptr %92(i64 noundef 20, ptr noundef nonnull @.str.5) #7
  %94 = load ptr, ptr %88, align 8, !tbaa !97
  %95 = getelementptr inbounds %struct.wmTimer, ptr %94, i64 0, i32 5
  store ptr %93, ptr %95, align 8, !tbaa !98
  br label %96

96:                                               ; preds = %86, %84
  %97 = phi i8 [ 1, %84 ], [ 0, %86 ]
  ret i8 %97
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_screen_find_big_area(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #1

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @CTX_wm_area_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_region_toggle_hidden(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ED_screen_state_toggle(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @wm_get_screensize(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @GHOST_GetClientBounds(ptr noundef) local_unnamed_addr #1

declare i32 @GHOST_GetHeightRectangle(ptr noundef) local_unnamed_addr #1

declare i32 @GHOST_GetWidthRectangle(ptr noundef) local_unnamed_addr #1

declare void @GHOST_DisposeRectangle(ptr noundef) local_unnamed_addr #1

declare void @sound_exit() local_unnamed_addr #1

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @WM_exit_ext(ptr noundef %0, i8 zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = icmp ne ptr %0, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call ptr @CTX_wm_manager(ptr noundef nonnull %0) #7
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  tail call void @sound_exit() #7
  %9 = icmp ne ptr %8, null
  %10 = select i1 %4, i1 %9, i1 false
  br i1 %10, label %11, label %49

11:                                               ; preds = %7
  %12 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !34
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  %15 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 23), align 8, !tbaa !52
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = tail call i32 @BKE_undo_valid(ptr noundef null) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %18, %14
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #7
  %22 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !42
  %23 = tail call ptr @BLI_temp_dir_base() #7
  call void @BLI_make_file_string(ptr noundef nonnull @.str.6, ptr noundef nonnull %3, ptr noundef %23, ptr noundef nonnull @.str.7) #7
  %24 = call zeroext i8 @ED_editors_flush_edits(ptr noundef nonnull %0, i8 noundef zeroext 0) #7
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = and i32 %22, -33554823
  %28 = call ptr @CTX_data_main(ptr noundef nonnull %0) #7
  %29 = call i32 @BLO_write_file(ptr noundef %28, ptr noundef nonnull %3, i32 noundef %27, ptr noundef null, ptr noundef null) #7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %21
  %32 = call zeroext i8 @BKE_undo_save_file(ptr noundef nonnull %3) #7
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31, %26
  %35 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %3)
  br label %36

36:                                               ; preds = %34, %31
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #7
  br label %37

37:                                               ; preds = %18, %36, %11
  call void @WM_jobs_kill_all(ptr noundef nonnull %8) #7
  %38 = getelementptr inbounds %struct.wmWindowManager, ptr %8, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !66
  %40 = icmp eq ptr %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %37, %41
  %42 = phi ptr [ %47, %41 ], [ %39, %37 ]
  call void @CTX_wm_window_set(ptr noundef nonnull %0, ptr noundef nonnull %42) #7
  %43 = getelementptr inbounds %struct.wmWindow, ptr %42, i64 0, i32 28
  call void @WM_event_remove_handlers(ptr noundef nonnull %0, ptr noundef nonnull %43) #7
  %44 = getelementptr inbounds %struct.wmWindow, ptr %42, i64 0, i32 29
  call void @WM_event_remove_handlers(ptr noundef nonnull %0, ptr noundef nonnull %44) #7
  %45 = getelementptr inbounds %struct.wmWindow, ptr %42, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !101
  call void @ED_screen_exit(ptr noundef nonnull %0, ptr noundef nonnull %42, ptr noundef %46) #7
  %47 = load ptr, ptr %42, align 8, !tbaa !66
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %41, !llvm.loop !102

49:                                               ; preds = %41, %37, %7
  call void @BKE_addon_pref_type_free() #7
  call void @wm_operatortype_free() #7
  call void @wm_dropbox_free() #7
  call void @WM_menutype_free() #7
  call void @WM_uilisttype_free() #7
  br i1 %4, label %50, label %51

50:                                               ; preds = %49
  call void @ED_editors_exit(ptr noundef nonnull %0) #7
  br label %51

51:                                               ; preds = %50, %49
  call void @BIF_freeTemplates(ptr noundef %0) #7
  %52 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 6), align 8, !tbaa !66
  %53 = icmp eq ptr %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %51, %54
  %55 = phi ptr [ %59, %54 ], [ %52, %51 ]
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %57 = getelementptr inbounds %struct.RecentFile, ptr %55, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !103
  call void %56(ptr noundef %58) #7
  %59 = load ptr, ptr %55, align 8, !tbaa !66
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %54, !llvm.loop !105

61:                                               ; preds = %54, %51
  call void @BLI_freelistN(ptr noundef nonnull getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 6)) #7
  call void @BKE_mball_cubeTable_free() #7
  call void @RE_FreeAllRender() #7
  call void @RE_engines_exit() #7
  call void @ED_preview_free_dbase() #7
  br i1 %10, label %62, label %64

62:                                               ; preds = %61
  %63 = call ptr @CTX_wm_reports(ptr noundef nonnull %0) #7
  call void @BKE_reports_clear(ptr noundef %63) #7
  br label %64

64:                                               ; preds = %62, %61
  call void @BKE_sequencer_free_clipboard() #7
  call void @BKE_tracking_clipboard_free() #7
  call void @BKE_mask_clipboard_free() #7
  call void @free_blender() #7
  call void @free_anim_copybuf() #7
  call void @free_anim_drivers_copybuf() #7
  call void @free_fmodifiers_copybuf() #7
  call void @ED_clipboard_posebuf_free() #7
  call void @BKE_node_clipboard_clear() #7
  call void @ANIM_keyingset_infos_exit() #7
  %65 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !34
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  call void @GPU_global_buffer_pool_free() #7
  call void @GPU_free_unused_buffers() #7
  call void @GPU_exit() #7
  br label %68

68:                                               ; preds = %67, %64
  call void @BKE_reset_undo() #7
  call void @ED_file_exit() #7
  call void @UI_exit() #7
  call void @BKE_userdef_free() #7
  call void @RNA_exit() #7
  call void @wm_ghost_exit() #7
  call void @CTX_free(ptr noundef %0) #7
  %69 = call i32 @GHOST_DisposeSystemPaths() #7
  call void @BLI_threadapi_exit() #7
  %70 = load ptr, ptr @MEM_get_memory_blocks_in_use, align 8, !tbaa !66
  %71 = call i32 %70() #7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load ptr, ptr @MEM_get_memory_blocks_in_use, align 8, !tbaa !66
  %75 = call i32 %74() #7
  %76 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %75)
  %77 = load ptr, ptr @MEM_printmemlist, align 8, !tbaa !66
  call void %77() #7
  br label %78

78:                                               ; preds = %73, %68
  call void @wm_autosave_delete() #7
  call void @BLI_temp_dir_session_purge() #7
  ret void
}

declare i32 @BKE_undo_valid(ptr noundef) local_unnamed_addr #1

declare void @BLI_make_file_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_temp_dir_base() local_unnamed_addr #1

declare zeroext i8 @ED_editors_flush_edits(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare i32 @BLO_write_file(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_undo_save_file(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare void @WM_jobs_kill_all(ptr noundef) local_unnamed_addr #1

declare void @WM_event_remove_handlers(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_screen_exit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_addon_pref_type_free() local_unnamed_addr #1

declare void @wm_operatortype_free() local_unnamed_addr #1

declare void @wm_dropbox_free() local_unnamed_addr #1

declare void @WM_menutype_free() local_unnamed_addr #1

declare void @WM_uilisttype_free() local_unnamed_addr #1

declare void @ED_editors_exit(ptr noundef) local_unnamed_addr #1

declare void @BIF_freeTemplates(ptr noundef) local_unnamed_addr #1

declare void @BKE_mball_cubeTable_free() local_unnamed_addr #1

declare void @RE_FreeAllRender() local_unnamed_addr #1

declare void @RE_engines_exit() local_unnamed_addr #1

declare void @ED_preview_free_dbase() local_unnamed_addr #1

declare void @BKE_sequencer_free_clipboard() local_unnamed_addr #1

declare void @BKE_tracking_clipboard_free() local_unnamed_addr #1

declare void @BKE_mask_clipboard_free() local_unnamed_addr #1

declare void @free_blender() local_unnamed_addr #1

declare void @free_anim_copybuf() local_unnamed_addr #1

declare void @free_anim_drivers_copybuf() local_unnamed_addr #1

declare void @free_fmodifiers_copybuf() local_unnamed_addr #1

declare void @ED_clipboard_posebuf_free() local_unnamed_addr #1

declare void @BKE_node_clipboard_clear() local_unnamed_addr #1

declare void @ANIM_keyingset_infos_exit() local_unnamed_addr #1

declare void @GPU_global_buffer_pool_free() local_unnamed_addr #1

declare void @GPU_free_unused_buffers() local_unnamed_addr #1

declare void @GPU_exit() local_unnamed_addr #1

declare void @BKE_reset_undo() local_unnamed_addr #1

declare void @ED_file_exit() local_unnamed_addr #1

declare void @UI_exit() local_unnamed_addr #1

declare void @BKE_userdef_free() local_unnamed_addr #1

declare void @RNA_exit() local_unnamed_addr #1

declare void @wm_ghost_exit() local_unnamed_addr #1

declare void @CTX_free(ptr noundef) local_unnamed_addr #1

declare i32 @GHOST_DisposeSystemPaths() local_unnamed_addr #1

declare void @BLI_threadapi_exit() local_unnamed_addr #1

declare void @wm_autosave_delete() local_unnamed_addr #1

declare void @BLI_temp_dir_session_purge() local_unnamed_addr #1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @WM_exit(ptr noundef %0) local_unnamed_addr #4 {
  tail call void @WM_exit_ext(ptr noundef %0, i8 zeroext poison)
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %3 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !106
  %4 = icmp eq i8 %3, 1
  %5 = zext i1 %4 to i32
  tail call void @exit(i32 noundef %5) #8
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #1

declare void @BKE_reports_init(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

declare void @BKE_reports_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
!34 = !{!35, !37, i64 2081}
!35 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !37, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !37, i64 2104, !41, i64 2108, !41, i64 2112, !37, i64 2116}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"short", !37, i64 0}
!41 = !{!"int", !37, i64 0}
!42 = !{!35, !41, i64 2108}
!43 = !{!35, !37, i64 2082}
!44 = !{!45, !40, i64 8480}
!45 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !41, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !40, i64 8496, !40, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !37, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !41, i64 8912, !41, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !46, i64 8956, !46, i64 8960, !41, i64 8964, !40, i64 8968, !40, i64 8970, !46, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !47, i64 8984, !37, i64 9760, !37, i64 9772, !40, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !41, i64 10896, !41, i64 10900, !46, i64 10904, !46, i64 10908, !41, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !48, i64 10928}
!46 = !{!"float", !37, i64 0}
!47 = !{!"ColorBand", !40, i64 0, !40, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!48 = !{!"WalkNavigation", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !40, i64 24, !37, i64 26}
!49 = !{!45, !40, i64 8950}
!50 = !{!45, !40, i64 8954}
!51 = !{!35, !36, i64 0}
!52 = !{!45, !41, i64 8488}
!53 = !{!45, !41, i64 8484}
!54 = !{!55, !36, i64 136}
!55 = !{!"wmWindowManager", !56, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !41, i64 152, !40, i64 156, !40, i64 158, !39, i64 160, !39, i64 176, !57, i64 192, !39, i64 232, !39, i64 248, !39, i64 264, !39, i64 280, !36, i64 296, !36, i64 304, !36, i64 312, !39, i64 320, !36, i64 336, !37, i64 344, !37, i64 345}
!56 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!57 = !{!"ReportList", !39, i64 0, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !36, i64 32}
!58 = !{!59, !36, i64 1088}
!59 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !60, i64 1048, !37, i64 1056, !40, i64 1072, !36, i64 1080, !39, i64 1088, !39, i64 1104, !39, i64 1120, !39, i64 1136, !39, i64 1152, !39, i64 1168, !39, i64 1184, !39, i64 1200, !39, i64 1216, !39, i64 1232, !39, i64 1248, !39, i64 1264, !39, i64 1280, !39, i64 1296, !39, i64 1312, !39, i64 1328, !39, i64 1344, !39, i64 1360, !39, i64 1376, !39, i64 1392, !39, i64 1408, !39, i64 1424, !39, i64 1440, !39, i64 1456, !39, i64 1472, !39, i64 1488, !39, i64 1504, !39, i64 1520, !39, i64 1536, !39, i64 1552, !39, i64 1568, !39, i64 1584, !39, i64 1600, !39, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!60 = !{!"long", !37, i64 0}
!61 = !{!62, !40, i64 216}
!62 = !{!"ARegion", !36, i64 0, !36, i64 8, !63, i64 16, !65, i64 176, !65, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !46, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!63 = !{!"View2D", !64, i64 0, !64, i64 16, !65, i64 32, !65, i64 48, !65, i64 64, !37, i64 80, !37, i64 88, !46, i64 96, !46, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !36, i64 128, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!64 = !{!"rctf", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!65 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!66 = !{!36, !36, i64 0}
!67 = !{!62, !40, i64 214}
!68 = !{!62, !40, i64 218}
!69 = distinct !{!69, !70, !71}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !{!73, !36, i64 48}
!73 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !65, i64 56, !37, i64 72, !37, i64 73, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !40, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !39, i64 96, !39, i64 112, !39, i64 128, !39, i64 144}
!74 = !{!75, !40, i64 4432}
!75 = !{!"Scene", !56, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !76, i64 280, !83, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !39, i64 4384, !84, i64 4400, !85, i64 4416, !88, i64 4600, !36, i64 4608, !89, i64 4616, !36, i64 4640, !60, i64 4648, !60, i64 4656, !78, i64 4664, !79, i64 4824, !90, i64 4888, !36, i64 4952}
!76 = !{!"RenderData", !77, i64 0, !36, i64 248, !36, i64 256, !80, i64 264, !81, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !46, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !46, i64 436, !46, i64 440, !46, i64 444, !46, i64 448, !46, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !64, i64 544, !64, i64 560, !65, i64 576, !39, i64 592, !40, i64 608, !40, i64 610, !46, i64 612, !46, i64 616, !46, i64 620, !46, i64 624, !41, i64 628, !46, i64 632, !46, i64 636, !46, i64 640, !46, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !46, i64 660, !46, i64 664, !40, i64 668, !40, i64 670, !46, i64 672, !46, i64 676, !37, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !46, i64 2528, !46, i64 2532, !40, i64 2536, !40, i64 2538, !46, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !46, i64 2560, !46, i64 2564, !36, i64 2568, !41, i64 2576, !46, i64 2580, !37, i64 2584, !82, i64 2616, !41, i64 3976, !41, i64 3980}
!77 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !46, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !78, i64 24, !79, i64 184}
!78 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 72, !46, i64 136, !46, i64 140, !36, i64 144, !36, i64 152}
!79 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!80 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!81 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !46, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !36, i64 64}
!82 = !{!"BakeData", !77, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !46, i64 1280, !46, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!83 = !{!"AudioData", !41, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !46, i64 24, !46, i64 28}
!84 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!85 = !{!"GameData", !84, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !37, i64 34, !86, i64 40, !40, i64 64, !40, i64 66, !46, i64 68, !87, i64 72, !46, i64 128, !46, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180}
!86 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !46, i64 8, !46, i64 12, !36, i64 16}
!87 = !{!"RecastData", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !46, i64 32, !46, i64 36, !41, i64 40, !46, i64 44, !46, i64 48, !40, i64 52, !40, i64 54}
!88 = !{!"UnitSettings", !46, i64 0, !37, i64 4, !37, i64 5, !40, i64 6}
!89 = !{!"PhysicsSettings", !37, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!90 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!91 = !{!62, !41, i64 180}
!92 = !{!62, !40, i64 208}
!93 = !{!62, !41, i64 188}
!94 = !{!62, !40, i64 210}
!95 = !{!96, !36, i64 16}
!96 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !41, i64 128, !40, i64 132, !40, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !41, i64 160, !41, i64 164, !36, i64 168, !39, i64 176, !39, i64 192, !39, i64 208, !39, i64 224, !39, i64 240}
!97 = !{!55, !36, i64 224}
!98 = !{!99, !36, i64 40}
!99 = !{!"wmTimer", !36, i64 0, !36, i64 8, !36, i64 16, !100, i64 24, !41, i64 32, !36, i64 40, !100, i64 48, !100, i64 56, !100, i64 64, !100, i64 72, !100, i64 80, !41, i64 88}
!100 = !{!"double", !37, i64 0}
!101 = !{!96, !36, i64 24}
!102 = distinct !{!102, !70, !71}
!103 = !{!104, !36, i64 16}
!104 = !{!"RecentFile", !36, i64 0, !36, i64 8, !36, i64 16}
!105 = distinct !{!105, !70, !71}
!106 = !{!35, !37, i64 2080}
