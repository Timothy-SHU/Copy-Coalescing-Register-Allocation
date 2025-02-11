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
  %4 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !5
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
  %9 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !13
  %10 = and i32 %9, -1025
  store i32 %10, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !13
  %11 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 9), align 2, !tbaa !14
  %12 = tail call i32 @wm_homefile_read(ptr noundef %0, ptr noundef null, i8 noundef zeroext %11, ptr noundef null) #7
  tail call void @ED_spacemacros_init() #7
  %13 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !5
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
  %21 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !5
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  tail call void @GPU_init() #7
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 20), align 8, !tbaa !15
  %25 = and i16 %24, 4
  %26 = icmp eq i16 %25, 0
  %27 = zext i1 %26 to i32
  tail call void @GPU_set_mipmap(i32 noundef %27) #7
  %28 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 82), align 2, !tbaa !20
  %29 = sitofp i16 %28 to float
  tail call void @GPU_set_anisotropic(float noundef %29) #7
  %30 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 84), align 2, !tbaa !21
  %31 = sext i16 %30 to i32
  tail call void @GPU_set_gpu_mipmapping(i32 noundef %31) #7
  tail call void @UI_init() #7
  br label %32

32:                                               ; preds = %23, %20
  tail call void @clear_matcopybuf() #7
  tail call void @ED_render_clear_mtex_copybuf() #7
  tail call void @ED_preview_init_dbase() #7
  tail call void @wm_read_history() #7
  %33 = load ptr, ptr @G, align 8, !tbaa !22
  %34 = getelementptr inbounds %struct.Main, ptr %33, i64 0, i32 2
  %35 = tail call ptr @BLI_strncpy(ptr noundef nonnull getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 2), ptr noundef nonnull %34, i64 noundef 1024) #7
  %36 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 23), align 8, !tbaa !23
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
define internal fastcc void @wm_init_reports(ptr noundef %0) unnamed_addr #0 {
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
  %2 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !24
  %3 = and i32 %2, 134217728
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %8 = getelementptr inbounds %struct.wmWindowManager, ptr %6, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !25
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
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %3, %1 ], [ %8, %5 ]
  %11 = getelementptr inbounds %struct.wmWindowManager, ptr %2, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !25
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
  %24 = load i16, ptr %23, align 8, !tbaa !32
  %25 = icmp eq i16 %24, 8
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.1, i16 noundef signext 6, ptr noundef null) #7
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 20
  %30 = load ptr, ptr %29, align 8, !tbaa !37
  %31 = icmp eq ptr %30, null
  br i1 %31, label %46, label %32

32:                                               ; preds = %28, %43
  %33 = phi ptr [ %44, %43 ], [ %30, %28 ]
  %34 = getelementptr inbounds %struct.ARegion, ptr %33, i64 0, i32 8
  %35 = load i16, ptr %34, align 2, !tbaa !38
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ARegion, ptr %33, i64 0, i32 10
  %39 = load i16, ptr %38, align 2, !tbaa !39
  %40 = and i16 %39, 1
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  tail call void @ED_region_toggle_hidden(ptr noundef %0, ptr noundef nonnull %33) #7
  br label %43

43:                                               ; preds = %32, %42, %37
  %44 = load ptr, ptr %33, align 8, !tbaa !37
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %32, !llvm.loop !40

46:                                               ; preds = %43, %28
  %47 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !42
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = tail call ptr @ED_screen_state_toggle(ptr noundef %0, ptr noundef %12, ptr noundef nonnull %17, i16 noundef signext 1) #7
  br label %52

52:                                               ; preds = %50, %46
  %53 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 37, i32 1
  %54 = load i16, ptr %53, align 8, !tbaa !44
  %55 = and i16 %54, 1
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %52
  %58 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.2, i16 noundef signext 6, ptr noundef null) #7
  %59 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 3, i32 1
  %60 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 3, i32 3
  tail call void @wm_get_screensize(ptr noundef nonnull %59, ptr noundef nonnull %60) #7
  %61 = load i32, ptr %59, align 4, !tbaa !61
  %62 = trunc i32 %61 to i16
  %63 = add i16 %62, 1
  %64 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 5
  store i16 %63, ptr %64, align 8, !tbaa !62
  %65 = load i32, ptr %60, align 4, !tbaa !63
  %66 = trunc i32 %65 to i16
  %67 = add i16 %66, 1
  %68 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 6
  store i16 %67, ptr %68, align 2, !tbaa !64
  br label %84

69:                                               ; preds = %52
  %70 = getelementptr inbounds %struct.wmWindow, ptr %12, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !65
  %72 = tail call ptr @GHOST_GetClientBounds(ptr noundef %71) #7
  %73 = tail call i32 @GHOST_GetHeightRectangle(ptr noundef %72) #7
  %74 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 3, i32 3
  store i32 %73, ptr %74, align 4, !tbaa !63
  %75 = tail call i32 @GHOST_GetWidthRectangle(ptr noundef %72) #7
  %76 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 3, i32 1
  store i32 %75, ptr %76, align 4, !tbaa !61
  %77 = trunc i32 %75 to i16
  %78 = add i16 %77, 1
  %79 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 5
  store i16 %78, ptr %79, align 8, !tbaa !62
  %80 = load i32, ptr %74, align 4, !tbaa !63
  %81 = trunc i32 %80 to i16
  %82 = add i16 %81, 1
  %83 = getelementptr inbounds %struct.ARegion, ptr %18, i64 0, i32 6
  store i16 %82, ptr %83, align 2, !tbaa !64
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
  %89 = load ptr, ptr %88, align 8, !tbaa !67
  tail call void @WM_event_remove_timer(ptr noundef nonnull %2, ptr noundef null, ptr noundef %89) #7
  %90 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %91 = tail call ptr @WM_event_add_timer(ptr noundef nonnull %2, ptr noundef %90, i32 noundef 272, double noundef 2.000000e-02) #7
  store ptr %91, ptr %88, align 8, !tbaa !67
  %92 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %93 = tail call ptr %92(i64 noundef 20, ptr noundef nonnull @.str.5) #7
  %94 = load ptr, ptr %88, align 8, !tbaa !67
  %95 = getelementptr inbounds %struct.wmTimer, ptr %94, i64 0, i32 5
  store ptr %93, ptr %95, align 8, !tbaa !68
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
  %10 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !5
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %9
  %13 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 23), align 8, !tbaa !23
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = tail call i32 @BKE_undo_valid(ptr noundef null) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %16, %12
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #9
  %20 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !13
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
  %37 = load ptr, ptr %36, align 8, !tbaa !37
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
  %44 = load ptr, ptr %43, align 8, !tbaa !71
  call void @ED_screen_exit(ptr noundef nonnull %0, ptr noundef nonnull %40, ptr noundef %44) #7
  %45 = load ptr, ptr %40, align 8, !tbaa !37
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %39, !llvm.loop !72

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
  %53 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !5
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
  %58 = load ptr, ptr @MEM_get_memory_blocks_in_use, align 8, !tbaa !37
  %59 = call i32 %58() #7
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load ptr, ptr @MEM_get_memory_blocks_in_use, align 8, !tbaa !37
  %63 = call i32 %62() #7
  %64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %63) #8
  %65 = load ptr, ptr @MEM_printmemlist, align 8, !tbaa !37
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
define internal fastcc void @free_openrecent() unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 6), align 8, !tbaa !37
  %2 = icmp eq ptr %1, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %8, %3 ], [ %1, %0 ]
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %6 = getelementptr inbounds %struct.RecentFile, ptr %4, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  tail call void %5(ptr noundef %7) #7
  %8 = load ptr, ptr %4, align 8, !tbaa !37
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %3, !llvm.loop !75

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
define internal fastcc void @wm_free_reports(ptr noundef %0) unnamed_addr #0 {
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
  %3 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !76
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 2081}
!6 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !10, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !11, i64 2084, !11, i64 2086, !11, i64 2088, !8, i64 2090, !11, i64 2092, !12, i64 2096, !12, i64 2100, !8, i64 2104, !12, i64 2108, !12, i64 2112, !8, i64 2116}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"short", !8, i64 0}
!12 = !{!"int", !8, i64 0}
!13 = !{!6, !12, i64 2108}
!14 = !{!6, !8, i64 2082}
!15 = !{!16, !11, i64 8480}
!16 = !{!"UserDef", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !12, i64 8468, !11, i64 8472, !11, i64 8474, !11, i64 8476, !11, i64 8478, !11, i64 8480, !11, i64 8482, !12, i64 8484, !12, i64 8488, !12, i64 8492, !11, i64 8496, !11, i64 8498, !12, i64 8500, !12, i64 8504, !12, i64 8508, !12, i64 8512, !12, i64 8516, !12, i64 8520, !12, i64 8524, !11, i64 8528, !11, i64 8530, !11, i64 8532, !11, i64 8534, !10, i64 8536, !10, i64 8552, !10, i64 8568, !10, i64 8584, !10, i64 8600, !10, i64 8616, !10, i64 8632, !8, i64 8648, !11, i64 8712, !11, i64 8714, !11, i64 8716, !11, i64 8718, !11, i64 8720, !11, i64 8722, !11, i64 8724, !11, i64 8726, !8, i64 8728, !11, i64 8896, !11, i64 8898, !11, i64 8900, !11, i64 8902, !11, i64 8904, !11, i64 8906, !11, i64 8908, !11, i64 8910, !12, i64 8912, !12, i64 8916, !11, i64 8920, !11, i64 8922, !11, i64 8924, !11, i64 8926, !11, i64 8928, !11, i64 8930, !11, i64 8932, !11, i64 8934, !11, i64 8936, !11, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !11, i64 8944, !11, i64 8946, !11, i64 8948, !11, i64 8950, !11, i64 8952, !11, i64 8954, !17, i64 8956, !17, i64 8960, !12, i64 8964, !11, i64 8968, !11, i64 8970, !17, i64 8972, !11, i64 8976, !11, i64 8978, !11, i64 8980, !11, i64 8982, !18, i64 8984, !8, i64 9760, !8, i64 9772, !11, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !12, i64 10896, !12, i64 10900, !17, i64 10904, !17, i64 10908, !12, i64 10912, !11, i64 10916, !11, i64 10918, !11, i64 10920, !11, i64 10922, !11, i64 10924, !11, i64 10926, !19, i64 10928}
!17 = !{!"float", !8, i64 0}
!18 = !{!"ColorBand", !11, i64 0, !11, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!19 = !{!"WalkNavigation", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !11, i64 24, !8, i64 26}
!20 = !{!16, !11, i64 8950}
!21 = !{!16, !11, i64 8954}
!22 = !{!6, !7, i64 0}
!23 = !{!16, !12, i64 8488}
!24 = !{!16, !12, i64 8484}
!25 = !{!26, !7, i64 136}
!26 = !{!"wmWindowManager", !27, i64 0, !7, i64 120, !7, i64 128, !10, i64 136, !12, i64 152, !11, i64 156, !11, i64 158, !10, i64 160, !10, i64 176, !28, i64 192, !10, i64 232, !10, i64 248, !10, i64 264, !10, i64 280, !7, i64 296, !7, i64 304, !7, i64 312, !10, i64 320, !7, i64 336, !8, i64 344, !8, i64 345}
!27 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !11, i64 98, !12, i64 100, !12, i64 104, !12, i64 108, !7, i64 112}
!28 = !{!"ReportList", !10, i64 0, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !7, i64 32}
!29 = !{!30, !7, i64 1088}
!30 = !{!"Main", !7, i64 0, !7, i64 8, !8, i64 16, !11, i64 1040, !11, i64 1042, !11, i64 1044, !11, i64 1046, !31, i64 1048, !8, i64 1056, !11, i64 1072, !7, i64 1080, !10, i64 1088, !10, i64 1104, !10, i64 1120, !10, i64 1136, !10, i64 1152, !10, i64 1168, !10, i64 1184, !10, i64 1200, !10, i64 1216, !10, i64 1232, !10, i64 1248, !10, i64 1264, !10, i64 1280, !10, i64 1296, !10, i64 1312, !10, i64 1328, !10, i64 1344, !10, i64 1360, !10, i64 1376, !10, i64 1392, !10, i64 1408, !10, i64 1424, !10, i64 1440, !10, i64 1456, !10, i64 1472, !10, i64 1488, !10, i64 1504, !10, i64 1520, !10, i64 1536, !10, i64 1552, !10, i64 1568, !10, i64 1584, !10, i64 1600, !10, i64 1616, !8, i64 1632, !7, i64 1888, !7, i64 1896}
!31 = !{!"long", !8, i64 0}
!32 = !{!33, !11, i64 216}
!33 = !{!"ARegion", !7, i64 0, !7, i64 8, !34, i64 16, !36, i64 176, !36, i64 192, !11, i64 208, !11, i64 210, !11, i64 212, !11, i64 214, !11, i64 216, !11, i64 218, !17, i64 220, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !11, i64 232, !11, i64 234, !11, i64 236, !11, i64 238, !7, i64 240, !10, i64 248, !10, i64 264, !10, i64 280, !10, i64 296, !10, i64 312, !10, i64 328, !10, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!34 = !{!"View2D", !35, i64 0, !35, i64 16, !36, i64 32, !36, i64 48, !36, i64 64, !8, i64 80, !8, i64 88, !17, i64 96, !17, i64 100, !11, i64 104, !11, i64 106, !11, i64 108, !11, i64 110, !11, i64 112, !11, i64 114, !11, i64 116, !11, i64 118, !11, i64 120, !11, i64 122, !11, i64 124, !11, i64 126, !7, i64 128, !12, i64 136, !12, i64 140, !7, i64 144, !7, i64 152}
!35 = !{!"rctf", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12}
!36 = !{!"rcti", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!37 = !{!7, !7, i64 0}
!38 = !{!33, !11, i64 214}
!39 = !{!33, !11, i64 218}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!43, !7, i64 48}
!43 = !{!"ScrArea", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !36, i64 56, !8, i64 72, !8, i64 73, !11, i64 74, !11, i64 76, !11, i64 78, !11, i64 80, !11, i64 82, !11, i64 84, !8, i64 86, !8, i64 87, !7, i64 88, !10, i64 96, !10, i64 112, !10, i64 128, !10, i64 144}
!44 = !{!45, !11, i64 4432}
!45 = !{!"Scene", !27, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !12, i64 232, !12, i64 236, !12, i64 240, !11, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !46, i64 280, !53, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !11, i64 4376, !11, i64 4378, !12, i64 4380, !10, i64 4384, !54, i64 4400, !55, i64 4416, !58, i64 4600, !7, i64 4608, !59, i64 4616, !7, i64 4640, !31, i64 4648, !31, i64 4656, !48, i64 4664, !49, i64 4824, !60, i64 4888, !7, i64 4952}
!46 = !{!"RenderData", !47, i64 0, !7, i64 248, !7, i64 256, !50, i64 264, !51, i64 328, !12, i64 400, !12, i64 404, !12, i64 408, !17, i64 412, !12, i64 416, !12, i64 420, !12, i64 424, !12, i64 428, !11, i64 432, !11, i64 434, !17, i64 436, !17, i64 440, !17, i64 444, !17, i64 448, !17, i64 452, !11, i64 456, !11, i64 458, !11, i64 460, !11, i64 462, !11, i64 464, !11, i64 466, !12, i64 468, !11, i64 472, !11, i64 474, !11, i64 476, !11, i64 478, !11, i64 480, !11, i64 482, !12, i64 484, !12, i64 488, !11, i64 492, !11, i64 494, !12, i64 496, !12, i64 500, !11, i64 504, !11, i64 506, !11, i64 508, !11, i64 510, !11, i64 512, !8, i64 514, !8, i64 515, !12, i64 516, !12, i64 520, !12, i64 524, !11, i64 528, !11, i64 530, !11, i64 532, !11, i64 534, !11, i64 536, !11, i64 538, !11, i64 540, !11, i64 542, !35, i64 544, !35, i64 560, !36, i64 576, !10, i64 592, !11, i64 608, !11, i64 610, !17, i64 612, !17, i64 616, !17, i64 620, !17, i64 624, !12, i64 628, !17, i64 632, !17, i64 636, !17, i64 640, !17, i64 644, !11, i64 648, !11, i64 650, !11, i64 652, !11, i64 654, !11, i64 656, !11, i64 658, !17, i64 660, !17, i64 664, !11, i64 668, !11, i64 670, !17, i64 672, !17, i64 676, !8, i64 680, !12, i64 1704, !11, i64 1708, !11, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !12, i64 2520, !11, i64 2524, !11, i64 2526, !17, i64 2528, !17, i64 2532, !11, i64 2536, !11, i64 2538, !17, i64 2540, !11, i64 2544, !11, i64 2546, !12, i64 2548, !11, i64 2552, !11, i64 2554, !11, i64 2556, !11, i64 2558, !17, i64 2560, !17, i64 2564, !7, i64 2568, !12, i64 2576, !17, i64 2580, !8, i64 2584, !52, i64 2616, !12, i64 3976, !12, i64 3980}
!47 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !11, i64 8, !11, i64 10, !17, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !48, i64 24, !49, i64 184}
!48 = !{!"ColorManagedViewSettings", !12, i64 0, !12, i64 4, !8, i64 8, !8, i64 72, !17, i64 136, !17, i64 140, !7, i64 144, !7, i64 152}
!49 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!50 = !{!"QuicktimeCodecSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !11, i64 48, !11, i64 50, !12, i64 52, !12, i64 56, !12, i64 60}
!51 = !{!"FFMpegCodecData", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !17, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !7, i64 64}
!52 = !{!"BakeData", !47, i64 0, !8, i64 248, !11, i64 1272, !11, i64 1274, !11, i64 1276, !11, i64 1278, !17, i64 1280, !17, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!53 = !{!"AudioData", !12, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !12, i64 16, !11, i64 20, !11, i64 22, !17, i64 24, !17, i64 28}
!54 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!55 = !{!"GameData", !54, i64 0, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !11, i64 32, !8, i64 34, !56, i64 40, !11, i64 64, !11, i64 66, !17, i64 68, !57, i64 72, !17, i64 128, !17, i64 132, !12, i64 136, !11, i64 140, !11, i64 142, !11, i64 144, !11, i64 146, !11, i64 148, !11, i64 150, !11, i64 152, !11, i64 154, !11, i64 156, !11, i64 158, !11, i64 160, !11, i64 162, !17, i64 164, !17, i64 168, !17, i64 172, !17, i64 176, !17, i64 180}
!56 = !{!"GameDome", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !17, i64 8, !17, i64 12, !7, i64 16}
!57 = !{!"RecastData", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !12, i64 40, !17, i64 44, !17, i64 48, !11, i64 52, !11, i64 54}
!58 = !{!"UnitSettings", !17, i64 0, !8, i64 4, !8, i64 5, !11, i64 6}
!59 = !{!"PhysicsSettings", !8, i64 0, !12, i64 12, !12, i64 16, !12, i64 20}
!60 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!61 = !{!33, !12, i64 180}
!62 = !{!33, !11, i64 208}
!63 = !{!33, !12, i64 188}
!64 = !{!33, !11, i64 210}
!65 = !{!66, !7, i64 16}
!66 = !{!"wmWindow", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !11, i64 104, !11, i64 106, !11, i64 108, !11, i64 110, !11, i64 112, !11, i64 114, !11, i64 116, !11, i64 118, !11, i64 120, !11, i64 122, !11, i64 124, !11, i64 126, !12, i64 128, !11, i64 132, !11, i64 134, !7, i64 136, !7, i64 144, !7, i64 152, !12, i64 160, !12, i64 164, !7, i64 168, !10, i64 176, !10, i64 192, !10, i64 208, !10, i64 224, !10, i64 240}
!67 = !{!26, !7, i64 224}
!68 = !{!69, !7, i64 40}
!69 = !{!"wmTimer", !7, i64 0, !7, i64 8, !7, i64 16, !70, i64 24, !12, i64 32, !7, i64 40, !70, i64 48, !70, i64 56, !70, i64 64, !70, i64 72, !70, i64 80, !12, i64 88}
!70 = !{!"double", !8, i64 0}
!71 = !{!66, !7, i64 24}
!72 = distinct !{!72, !41}
!73 = !{!74, !7, i64 16}
!74 = !{!"RecentFile", !7, i64 0, !7, i64 8, !7, i64 16}
!75 = distinct !{!75, !41}
!76 = !{!6, !8, i64 2080}
