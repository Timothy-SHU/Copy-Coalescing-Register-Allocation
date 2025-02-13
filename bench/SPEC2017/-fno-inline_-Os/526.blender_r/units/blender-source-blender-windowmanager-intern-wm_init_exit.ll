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

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call fastcc void @wm_init_reports(ptr noundef %0) #8
  %21 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !34
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  tail call void @GPU_init() #7
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 20), align 8, !tbaa !44
  %25 = and i16 %24, 4
  %26 = icmp eq i16 %25, 0
  %27 = zext i1 %26 to i32
  tail call void @GPU_set_mipmap(i32 noundef %27) #7
  %28 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 82), align 2, !tbaa !49
  %29 = sitofp i16 %28 to float
  tail call void @GPU_set_anisotropic(float noundef %29) #7
  %30 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 84), align 2, !tbaa !50
  %31 = sext i16 %30 to i32
  tail call void @GPU_set_gpu_mipmapping(i32 noundef %31) #7
  tail call void @UI_init() #7
  br label %32

32:                                               ; preds = %23, %20
  tail call void @clear_matcopybuf() #7
  tail call void @ED_render_clear_mtex_copybuf() #7
  tail call void @ED_preview_init_dbase() #7
  tail call void @wm_read_history() #7
  %33 = load ptr, ptr @G, align 8, !tbaa !51
  %34 = getelementptr inbounds %struct.Main, ptr %33, i64 0, i32 2
  %35 = tail call ptr @BLI_strncpy(ptr noundef nonnull getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 2), ptr noundef nonnull %34, i64 noundef 1024) #7
  %36 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 23), align 8, !tbaa !52
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  tail call void @BLI_callback_exec(ptr noundef %40, ptr noundef null, i32 noundef 16) #7
  %41 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  tail call void @BLI_callback_exec(ptr noundef %41, ptr noundef null, i32 noundef 9) #7
  br label %42

42:                                               ; preds = %32, %39
  ret void
}

; Function Attrs: optsize
declare void @wm_ghost_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_init_cursor_data() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GHOST_CreateSystemPaths() local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_addon_pref_type_init() local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_operatortype_init() local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_menutype_init() local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_uilisttype_init() local_unnamed_addr #1

; Function Attrs: optsize
declare void @set_free_windowmanager_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_close_and_free(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @set_free_notifier_reference_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_main_remove_notifier_reference(ptr noundef) #1

; Function Attrs: optsize
declare void @set_blender_test_break_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_window_testbreak() #1

; Function Attrs: optsize
declare void @DAG_editors_update_cb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_render_id_flush_update(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @ED_render_scene_update(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: optsize
declare void @ED_spacetypes_init() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_file_init() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_node_init_butfuncs() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @wm_homefile_read(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_spacemacros_init() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GHOST_toggleConsole(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_init_reports(ptr noundef %0) unnamed_addr #0 !PGOFuncName !53 {
  %2 = tail call ptr @CTX_wm_reports(ptr noundef %0) #7
  tail call void @BKE_reports_init(ptr noundef %2, i32 noundef 2) #7
  ret void
}

; Function Attrs: optsize
declare void @GPU_init() local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_set_mipmap(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_set_anisotropic(float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_set_gpu_mipmapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_init() local_unnamed_addr #1

; Function Attrs: optsize
declare void @clear_matcopybuf() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_render_clear_mtex_copybuf() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_preview_init_dbase() local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_read_history() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_callback_exec(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_init_splash(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !54
  %3 = and i32 %2, 134217728
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %8 = getelementptr inbounds %struct.wmWindowManager, ptr %6, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !55
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

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_wm_window_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @WM_init_game(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %7 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %3, %1 ], [ %8, %5 ]
  %11 = getelementptr inbounds %struct.wmWindowManager, ptr %2, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !55
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
  %24 = load i16, ptr %23, align 8, !tbaa !62
  %25 = icmp eq i16 %24, 8
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.1, i16 noundef signext 6, ptr noundef null) #7
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 20
  %30 = load ptr, ptr %29, align 8, !tbaa !67
  %31 = icmp eq ptr %30, null
  br i1 %31, label %46, label %32

32:                                               ; preds = %28, %43
  %33 = phi ptr [ %44, %43 ], [ %30, %28 ]
  %34 = getelementptr inbounds %struct.ARegion, ptr %33, i64 0, i32 8
  %35 = load i16, ptr %34, align 2, !tbaa !68
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ARegion, ptr %33, i64 0, i32 10
  %39 = load i16, ptr %38, align 2, !tbaa !69
  %40 = and i16 %39, 1
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  tail call void @ED_region_toggle_hidden(ptr noundef %0, ptr noundef nonnull %33) #7
  br label %43

43:                                               ; preds = %32, %42, %37
  %44 = load ptr, ptr %33, align 8, !tbaa !67
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %32, !llvm.loop !70

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
  tail call void @WM_event_remove_timer(ptr noundef nonnull %2, ptr noundef null, ptr noundef %89) #7
  %90 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %91 = tail call ptr @WM_event_add_timer(ptr noundef nonnull %2, ptr noundef %90, i32 noundef 272, double noundef 2.000000e-02) #7
  store ptr %91, ptr %88, align 8, !tbaa !97
  %92 = load ptr, ptr @MEM_callocN, align 8, !tbaa !67
  %93 = tail call ptr %92(i64 noundef 20, ptr noundef nonnull @.str.5) #7
  %94 = load ptr, ptr %88, align 8, !tbaa !97
  %95 = getelementptr inbounds %struct.wmTimer, ptr %94, i64 0, i32 5
  store ptr %93, ptr %95, align 8, !tbaa !98
  br label %96

96:                                               ; preds = %86, %84
  %97 = phi i8 [ 1, %84 ], [ 0, %86 ]
  ret i8 %97
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_screen_find_big_area(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_wm_area_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_toggle_hidden(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ED_screen_state_toggle(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_get_screensize(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GHOST_GetClientBounds(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GHOST_GetHeightRectangle(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GHOST_GetWidthRectangle(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GHOST_DisposeRectangle(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sound_exit() local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_exit_ext(ptr noundef %0, i8 zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @sound_exit() #7
  br label %47

6:                                                ; preds = %2
  %7 = tail call ptr @CTX_wm_manager(ptr noundef nonnull %0) #7
  tail call void @sound_exit() #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %47, label %9

9:                                                ; preds = %6
  %10 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !34
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %9
  %13 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 23), align 8, !tbaa !52
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = tail call i32 @BKE_undo_valid(ptr noundef null) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %16, %12
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #9
  %20 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !42
  %21 = tail call ptr @BLI_temp_dir_base() #7
  call void @BLI_make_file_string(ptr noundef nonnull @.str.6, ptr noundef nonnull %3, ptr noundef %21, ptr noundef nonnull @.str.7) #7
  %22 = call zeroext i8 @ED_editors_flush_edits(ptr noundef nonnull %0, i8 noundef zeroext 0) #7
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = and i32 %20, -33554823
  %26 = call ptr @CTX_data_main(ptr noundef nonnull %0) #7
  %27 = call i32 @BLO_write_file(ptr noundef %26, ptr noundef nonnull %3, i32 noundef %25, ptr noundef null, ptr noundef null) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %19
  %30 = call zeroext i8 @BKE_undo_save_file(ptr noundef nonnull %3) #7
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29, %24
  %33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %3) #8
  br label %34

34:                                               ; preds = %32, %29
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #9
  br label %35

35:                                               ; preds = %16, %34, %9
  call void @WM_jobs_kill_all(ptr noundef nonnull %7) #7
  %36 = getelementptr inbounds %struct.wmWindowManager, ptr %7, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !67
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %35, %39
  %40 = phi ptr [ %45, %39 ], [ %37, %35 ]
  call void @CTX_wm_window_set(ptr noundef nonnull %0, ptr noundef nonnull %40) #7
  %41 = getelementptr inbounds %struct.wmWindow, ptr %40, i64 0, i32 28
  call void @WM_event_remove_handlers(ptr noundef nonnull %0, ptr noundef nonnull %41) #7
  %42 = getelementptr inbounds %struct.wmWindow, ptr %40, i64 0, i32 29
  call void @WM_event_remove_handlers(ptr noundef nonnull %0, ptr noundef nonnull %42) #7
  %43 = getelementptr inbounds %struct.wmWindow, ptr %40, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !101
  call void @ED_screen_exit(ptr noundef nonnull %0, ptr noundef nonnull %40, ptr noundef %44) #7
  %45 = load ptr, ptr %40, align 8, !tbaa !67
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %39, !llvm.loop !102

47:                                               ; preds = %39, %35, %5, %6
  %48 = phi i1 [ false, %5 ], [ false, %6 ], [ true, %35 ], [ true, %39 ]
  call void @BKE_addon_pref_type_free() #7
  call void @wm_operatortype_free() #7
  call void @wm_dropbox_free() #7
  call void @WM_menutype_free() #7
  call void @WM_uilisttype_free() #7
  br i1 %4, label %50, label %49

49:                                               ; preds = %47
  call void @ED_editors_exit(ptr noundef nonnull %0) #7
  br label %50

50:                                               ; preds = %49, %47
  call void @BIF_freeTemplates(ptr noundef %0) #7
  call fastcc void @free_openrecent() #8
  call void @BKE_mball_cubeTable_free() #7
  call void @RE_FreeAllRender() #7
  call void @RE_engines_exit() #7
  call void @ED_preview_free_dbase() #7
  br i1 %48, label %51, label %52

51:                                               ; preds = %50
  call fastcc void @wm_free_reports(ptr noundef nonnull %0) #8
  br label %52

52:                                               ; preds = %51, %50
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
  %53 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !34
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  call void @GPU_global_buffer_pool_free() #7
  call void @GPU_free_unused_buffers() #7
  call void @GPU_exit() #7
  br label %56

56:                                               ; preds = %55, %52
  call void @BKE_reset_undo() #7
  call void @ED_file_exit() #7
  call void @UI_exit() #7
  call void @BKE_userdef_free() #7
  call void @RNA_exit() #7
  call void @wm_ghost_exit() #7
  call void @CTX_free(ptr noundef %0) #7
  %57 = call i32 @GHOST_DisposeSystemPaths() #7
  call void @BLI_threadapi_exit() #7
  %58 = load ptr, ptr @MEM_get_memory_blocks_in_use, align 8, !tbaa !67
  %59 = call i32 %58() #7
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load ptr, ptr @MEM_get_memory_blocks_in_use, align 8, !tbaa !67
  %63 = call i32 %62() #7
  %64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %63) #8
  %65 = load ptr, ptr @MEM_printmemlist, align 8, !tbaa !67
  call void %65() #7
  br label %66

66:                                               ; preds = %61, %56
  call void @wm_autosave_delete() #7
  call void @BLI_temp_dir_session_purge() #7
  ret void
}

; Function Attrs: optsize
declare i32 @BKE_undo_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_make_file_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_temp_dir_base() local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @ED_editors_flush_edits(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLO_write_file(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_undo_save_file(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_jobs_kill_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_remove_handlers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_screen_exit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_addon_pref_type_free() local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_operatortype_free() local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_dropbox_free() local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_menutype_free() local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_uilisttype_free() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_editors_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BIF_freeTemplates(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_openrecent() unnamed_addr #0 !PGOFuncName !103 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 6), align 8, !tbaa !67
  %2 = icmp eq ptr %1, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %8, %3 ], [ %1, %0 ]
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.RecentFile, ptr %4, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !104
  tail call void %5(ptr noundef %7) #7
  %8 = load ptr, ptr %4, align 8, !tbaa !67
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %3, !llvm.loop !106

10:                                               ; preds = %3, %0
  tail call void @BLI_freelistN(ptr noundef nonnull getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 6)) #7
  ret void
}

; Function Attrs: optsize
declare void @BKE_mball_cubeTable_free() local_unnamed_addr #1

; Function Attrs: optsize
declare void @RE_FreeAllRender() local_unnamed_addr #1

; Function Attrs: optsize
declare void @RE_engines_exit() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_preview_free_dbase() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_free_reports(ptr noundef %0) unnamed_addr #0 !PGOFuncName !107 {
  %2 = tail call ptr @CTX_wm_reports(ptr noundef %0) #7
  tail call void @BKE_reports_clear(ptr noundef %2) #7
  ret void
}

; Function Attrs: optsize
declare void @BKE_sequencer_free_clipboard() local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_clipboard_free() local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_mask_clipboard_free() local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_blender() local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_anim_copybuf() local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_anim_drivers_copybuf() local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_fmodifiers_copybuf() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_clipboard_posebuf_free() local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_node_clipboard_clear() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ANIM_keyingset_infos_exit() local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_global_buffer_pool_free() local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_free_unused_buffers() local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_exit() local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_reset_undo() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_file_exit() local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_exit() local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_userdef_free() local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_exit() local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_ghost_exit() local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GHOST_DisposeSystemPaths() local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_threadapi_exit() local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_autosave_delete() local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_temp_dir_session_purge() local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind optsize uwtable
define dso_local void @WM_exit(ptr noundef %0) local_unnamed_addr #4 {
  tail call void @WM_exit_ext(ptr noundef %0, i8 zeroext poison) #8
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %3 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !108
  %4 = icmp eq i8 %3, 1
  %5 = zext i1 %4 to i32
  tail call void @exit(i32 noundef %5) #10
  unreachable
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_reports_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_reports_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind optsize }

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
!53 = !{!"wm_init_exit.c:wm_init_reports"}
!54 = !{!45, !41, i64 8484}
!55 = !{!56, !36, i64 136}
!56 = !{!"wmWindowManager", !57, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !41, i64 152, !40, i64 156, !40, i64 158, !39, i64 160, !39, i64 176, !58, i64 192, !39, i64 232, !39, i64 248, !39, i64 264, !39, i64 280, !36, i64 296, !36, i64 304, !36, i64 312, !39, i64 320, !36, i64 336, !37, i64 344, !37, i64 345}
!57 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!58 = !{!"ReportList", !39, i64 0, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !36, i64 32}
!59 = !{!60, !36, i64 1088}
!60 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !61, i64 1048, !37, i64 1056, !40, i64 1072, !36, i64 1080, !39, i64 1088, !39, i64 1104, !39, i64 1120, !39, i64 1136, !39, i64 1152, !39, i64 1168, !39, i64 1184, !39, i64 1200, !39, i64 1216, !39, i64 1232, !39, i64 1248, !39, i64 1264, !39, i64 1280, !39, i64 1296, !39, i64 1312, !39, i64 1328, !39, i64 1344, !39, i64 1360, !39, i64 1376, !39, i64 1392, !39, i64 1408, !39, i64 1424, !39, i64 1440, !39, i64 1456, !39, i64 1472, !39, i64 1488, !39, i64 1504, !39, i64 1520, !39, i64 1536, !39, i64 1552, !39, i64 1568, !39, i64 1584, !39, i64 1600, !39, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!61 = !{!"long", !37, i64 0}
!62 = !{!63, !40, i64 216}
!63 = !{!"ARegion", !36, i64 0, !36, i64 8, !64, i64 16, !66, i64 176, !66, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !46, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!64 = !{!"View2D", !65, i64 0, !65, i64 16, !66, i64 32, !66, i64 48, !66, i64 64, !37, i64 80, !37, i64 88, !46, i64 96, !46, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !36, i64 128, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!65 = !{!"rctf", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!66 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!67 = !{!36, !36, i64 0}
!68 = !{!63, !40, i64 214}
!69 = !{!63, !40, i64 218}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!73, !36, i64 48}
!73 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !66, i64 56, !37, i64 72, !37, i64 73, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !40, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !39, i64 96, !39, i64 112, !39, i64 128, !39, i64 144}
!74 = !{!75, !40, i64 4432}
!75 = !{!"Scene", !57, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !76, i64 280, !83, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !39, i64 4384, !84, i64 4400, !85, i64 4416, !88, i64 4600, !36, i64 4608, !89, i64 4616, !36, i64 4640, !61, i64 4648, !61, i64 4656, !78, i64 4664, !79, i64 4824, !90, i64 4888, !36, i64 4952}
!76 = !{!"RenderData", !77, i64 0, !36, i64 248, !36, i64 256, !80, i64 264, !81, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !46, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !46, i64 436, !46, i64 440, !46, i64 444, !46, i64 448, !46, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !65, i64 544, !65, i64 560, !66, i64 576, !39, i64 592, !40, i64 608, !40, i64 610, !46, i64 612, !46, i64 616, !46, i64 620, !46, i64 624, !41, i64 628, !46, i64 632, !46, i64 636, !46, i64 640, !46, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !46, i64 660, !46, i64 664, !40, i64 668, !40, i64 670, !46, i64 672, !46, i64 676, !37, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !46, i64 2528, !46, i64 2532, !40, i64 2536, !40, i64 2538, !46, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !46, i64 2560, !46, i64 2564, !36, i64 2568, !41, i64 2576, !46, i64 2580, !37, i64 2584, !82, i64 2616, !41, i64 3976, !41, i64 3980}
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
!91 = !{!63, !41, i64 180}
!92 = !{!63, !40, i64 208}
!93 = !{!63, !41, i64 188}
!94 = !{!63, !40, i64 210}
!95 = !{!96, !36, i64 16}
!96 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !41, i64 128, !40, i64 132, !40, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !41, i64 160, !41, i64 164, !36, i64 168, !39, i64 176, !39, i64 192, !39, i64 208, !39, i64 224, !39, i64 240}
!97 = !{!56, !36, i64 224}
!98 = !{!99, !36, i64 40}
!99 = !{!"wmTimer", !36, i64 0, !36, i64 8, !36, i64 16, !100, i64 24, !41, i64 32, !36, i64 40, !100, i64 48, !100, i64 56, !100, i64 64, !100, i64 72, !100, i64 80, !41, i64 88}
!100 = !{!"double", !37, i64 0}
!101 = !{!96, !36, i64 24}
!102 = distinct !{!102, !71}
!103 = !{!"wm_init_exit.c:free_openrecent"}
!104 = !{!105, !36, i64 16}
!105 = !{!"RecentFile", !36, i64 0, !36, i64 8, !36, i64 16}
!106 = distinct !{!106, !71}
!107 = !{!"wm_init_exit.c:wm_free_reports"}
!108 = !{!35, !37, i64 2080}
