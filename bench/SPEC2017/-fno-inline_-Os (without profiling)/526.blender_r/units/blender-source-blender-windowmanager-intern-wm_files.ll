; ModuleID = 'blender/source/blender/windowmanager/intern/wm_files.c'
source_filename = "blender/source/blender/windowmanager/intern/wm_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.RecentFile = type { ptr, ptr, ptr }
%struct.LinkNode = type { ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
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
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.wmEventHandler = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@G = external global %struct.Global, align 8
@.str = private unnamed_addr constant [9 x i8] c"original\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Cannot read file '%s': %s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"unable to open the file\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"File format is not supported in file '%s'\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"File path '%s' invalid\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"userpref.blend\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"startup.blend\00", align 1
@U = external global %struct.UserDef, align 8
@.str.9 = private unnamed_addr constant [63 x i8] c"\0ANote: No (valid) '%s' found, fall back to built-in default.\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Could not read '%s'\00", align 1
@datatoc_startup_blend = external global [0 x i8], align 1
@datatoc_startup_blend_size = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"Read new prefs: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"WM_OT_read_factory_settings\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"load_ui\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"Can't read alternative start-up file: '%s'\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"recent-files.txt\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [11 x i8] c"RecentFile\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"_crash.blend\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"written: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"failed: %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"Path is empty, cannot save\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"Path too long, cannot save\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"Cannot save blend file, path '%s' is not writable\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"Cannot overwrite used library '%.240s'\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.26 = private unnamed_addr constant [31 x i8] c"trying to save homefile at %s \00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"trying to save userpref at %s \00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"%d.blend\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"quit.blend\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"use_scripts\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"BLENDER\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__const.blend_file_thumb.err_out = private unnamed_addr constant [256 x i8] c"unknown\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.37 = private unnamed_addr constant [17 x i8] c"write_file thumb\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.38 = private unnamed_addr constant [49 x i8] c"blend_file_thumb failed to create thumbnail: %s\0A\00", align 1
@str.40 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@str.41 = private unnamed_addr constant [5 x i8] c"fail\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_file_autoexec_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1024 x i8], align 16
  %3 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !5
  %4 = and i32 %3, 24576
  %5 = icmp eq i32 %4, 8192
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #14
  call void @BLI_split_dir_part(ptr noundef %0, ptr noundef nonnull %2, i64 noundef 1024) #15
  %7 = call zeroext i8 @BKE_autoexec_match(ptr noundef nonnull %2) #15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !5
  %11 = and i32 %10, -8193
  store i32 %11, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !5
  br label %12

12:                                               ; preds = %9, %6
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #14
  br label %13

13:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_split_dir_part(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_autoexec_match(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @WM_file_read(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @__errno_location() #16
  store i32 0, ptr %5, align 4, !tbaa !13
  tail call void @WM_cursor_wait(i8 noundef zeroext 1) #15
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  tail call void @BLI_callback_exec(ptr noundef %6, ptr noundef null, i32 noundef 8) #15
  tail call void @UI_view2d_zoom_cache_reset() #15
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %8 = tail call fastcc i32 @wm_read_exotic(ptr noundef %1) #17
  switch i32 %8, label %60 [
    i32 0, label %9
    i32 -1, label %52
    i32 -2, label %59
  ]

9:                                                ; preds = %3
  %10 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %11 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %15 = getelementptr inbounds %struct.wmWindowManager, ptr %14, i64 0, i32 6
  %16 = load i16, ptr %15, align 2, !tbaa !15
  %17 = icmp eq i16 %16, 0
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi i1 [ false, %9 ], [ %17, %13 ]
  call fastcc void @wm_window_match_init(ptr noundef %0, ptr noundef nonnull %4) #17
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !19
  %20 = tail call i32 @BKE_read_file(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  %21 = load ptr, ptr @G, align 8, !tbaa !20
  %22 = getelementptr inbounds %struct.Main, ptr %21, i64 0, i32 2
  %23 = load i8, ptr %22, align 8, !tbaa !21
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !19
  br label %26

26:                                               ; preds = %18, %25
  %27 = phi i8 [ 0, %25 ], [ 1, %18 ]
  store i8 %27, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 5), align 2
  %28 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !5
  %29 = icmp eq i32 %28, %10
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = and i32 %28, -24577
  %32 = and i32 %10, 24576
  %33 = or disjoint i32 %31, %32
  store i32 %33, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !5
  br label %34

34:                                               ; preds = %30, %26
  call fastcc void @wm_window_match_do(ptr noundef %0, ptr noundef nonnull %4) #17
  call void @WM_check(ptr noundef %0) #15
  %35 = icmp eq i32 %20, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  call fastcc void @wm_init_userdef(ptr noundef %0, i8 noundef zeroext 0) #17
  br label %37

37:                                               ; preds = %36, %34
  %38 = icmp ne i32 %20, 0
  %39 = select i1 %38, i1 %19, i1 false
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  call fastcc void @write_history() #17
  br label %41

41:                                               ; preds = %40, %37
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 16842752, ptr noundef null) #15
  %42 = call ptr @CTX_wm_manager(ptr noundef %0) #15
  %43 = getelementptr inbounds %struct.wmWindowManager, ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !22
  call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %44) #15
  call void @ED_editors_init(ptr noundef %0) #15
  %45 = call ptr @CTX_data_main(ptr noundef %0) #15
  call void @DAG_on_visible_update(ptr noundef %45, i8 noundef zeroext 1) #15
  call void @WM_operatortype_last_properties_clear_all() #15
  %46 = call ptr @CTX_data_main(ptr noundef %0) #15
  call void @BLI_callback_exec(ptr noundef %46, ptr noundef null, i32 noundef 16) #15
  %47 = call ptr @CTX_data_main(ptr noundef %0) #15
  call void @BLI_callback_exec(ptr noundef %47, ptr noundef null, i32 noundef 9) #15
  %48 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !14
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  call void @CTX_wm_window_set(ptr noundef %0, ptr noundef null) #15
  br label %51

51:                                               ; preds = %50, %41
  call void @BKE_reset_undo() #15
  call void @BKE_write_undo(ptr noundef %0, ptr noundef nonnull @.str) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  br label %61

52:                                               ; preds = %3
  %53 = load i32, ptr %5, align 4, !tbaa !13
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = tail call ptr @strerror(i32 noundef %53) #15
  br label %57

57:                                               ; preds = %52, %55
  %58 = phi ptr [ %56, %55 ], [ @.str.3, %52 ]
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef %1, ptr noundef %58) #15
  br label %61

59:                                               ; preds = %3
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.4, ptr noundef %1) #15
  br label %61

60:                                               ; preds = %3
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %1) #15
  br label %61

61:                                               ; preds = %59, %60, %57, %51
  %62 = phi i8 [ 1, %51 ], [ 0, %57 ], [ 0, %59 ], [ 0, %60 ]
  call void @WM_cursor_wait(i8 noundef zeroext 0) #15
  ret i8 %62
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_callback_exec(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_zoom_cache_reset() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @wm_read_exotic(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [7 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %2) #14
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18
  %4 = trunc i64 %3 to i32
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = add i64 %3, 4294967295
  %8 = and i64 %7, 4294967295
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !21
  switch i8 %10, label %11 [
    i8 47, label %22
    i8 92, label %22
  ]

11:                                               ; preds = %6, %1
  %12 = tail call ptr @BLI_gzopen(ptr noundef %0, ptr noundef nonnull @.str.33) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %11
  %15 = call i32 @gzread(ptr noundef nonnull %12, ptr noundef nonnull %2, i32 noundef 7) #15
  %16 = call i32 @gzclose(ptr noundef nonnull %12) #15
  %17 = icmp eq i32 %15, 7
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %2, ptr noundef nonnull dereferenceable(7) @.str.34, i64 7)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %14
  br label %22

22:                                               ; preds = %18, %11, %6, %6, %21
  %23 = phi i32 [ -2, %21 ], [ -3, %6 ], [ -3, %6 ], [ -1, %11 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %2) #14
  ret i32 %23
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_window_match_init(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @G, align 8, !tbaa !20
  %4 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !23
  %5 = load ptr, ptr @G, align 8, !tbaa !20
  %6 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 40
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %6) #17
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %8 = load ptr, ptr %1, align 8, !tbaa !24
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %13

10:                                               ; preds = %18, %13
  %11 = load ptr, ptr %14, align 8, !tbaa !24
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13, !llvm.loop !25

13:                                               ; preds = %2, %10
  %14 = phi ptr [ %11, %10 ], [ %8, %2 ]
  tail call void @WM_jobs_kill_all(ptr noundef nonnull %14) #15
  %15 = getelementptr inbounds %struct.wmWindowManager, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !24
  %17 = icmp eq ptr %16, null
  br i1 %17, label %10, label %18

18:                                               ; preds = %13, %18
  %19 = phi ptr [ %24, %18 ], [ %16, %13 ]
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef nonnull %19) #15
  %20 = getelementptr inbounds %struct.wmWindow, ptr %19, i64 0, i32 28
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %20) #15
  %21 = getelementptr inbounds %struct.wmWindow, ptr %19, i64 0, i32 29
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %21) #15
  %22 = getelementptr inbounds %struct.wmWindow, ptr %19, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !27
  tail call void @ED_screen_exit(ptr noundef %0, ptr noundef nonnull %19, ptr noundef %23) #15
  %24 = load ptr, ptr %19, align 8, !tbaa !24
  %25 = icmp eq ptr %24, null
  br i1 %25, label %10, label %18, !llvm.loop !29

26:                                               ; preds = %10, %2
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %7) #15
  tail call void @ED_editors_exit(ptr noundef %0) #15
  ret void
}

; Function Attrs: optsize
declare i32 @BKE_read_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_window_match_do(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef %1) #17, !range !30
  %4 = icmp eq i8 %3, 0
  %5 = load ptr, ptr @G, align 8, !tbaa !20
  %6 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 40
  br i1 %4, label %11, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %6, align 8, !tbaa !31
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %105

10:                                               ; preds = %7
  tail call void @wm_add_default(ptr noundef %0) #15
  br label %105

11:                                               ; preds = %2
  %12 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %6) #17, !range !30
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %57, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !34
  %16 = and i32 %15, 1024
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %53

18:                                               ; preds = %14
  %19 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %53, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %1, align 8, !tbaa !24
  %23 = icmp eq ptr %22, null
  br i1 %23, label %53, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.bScreen, ptr %19, i64 0, i32 11
  br label %29

26:                                               ; preds = %40, %29
  %27 = load ptr, ptr %30, align 8, !tbaa !24
  %28 = icmp eq ptr %27, null
  br i1 %28, label %53, label %29, !llvm.loop !35

29:                                               ; preds = %24, %26
  %30 = phi ptr [ %22, %24 ], [ %27, %26 ]
  %31 = getelementptr inbounds %struct.wmWindowManager, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !24
  %33 = icmp eq ptr %32, null
  br i1 %33, label %26, label %34

34:                                               ; preds = %29, %40
  %35 = phi ptr [ %51, %40 ], [ %32, %29 ]
  %36 = load i16, ptr %25, align 4, !tbaa !36
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = tail call ptr @ED_screen_duplicate(ptr noundef nonnull %35, ptr noundef nonnull %19) #15
  br label %40

40:                                               ; preds = %34, %38
  %41 = phi ptr [ %39, %38 ], [ %19, %34 ]
  %42 = getelementptr inbounds %struct.wmWindow, ptr %35, i64 0, i32 3
  store ptr %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.wmWindow, ptr %35, i64 0, i32 5
  %44 = getelementptr inbounds %struct.ID, ptr %41, i64 0, i32 4, i64 2
  %45 = tail call ptr @BLI_strncpy(ptr noundef nonnull %43, ptr noundef nonnull %44, i64 noundef 64) #15
  %46 = getelementptr inbounds %struct.wmWindow, ptr %35, i64 0, i32 18
  %47 = load i32, ptr %46, align 8, !tbaa !38
  %48 = trunc i32 %47 to i16
  %49 = load ptr, ptr %42, align 8, !tbaa !27
  %50 = getelementptr inbounds %struct.bScreen, ptr %49, i64 0, i32 11
  store i16 %48, ptr %50, align 4, !tbaa !36
  %51 = load ptr, ptr %35, align 8, !tbaa !24
  %52 = icmp eq ptr %51, null
  br i1 %52, label %26, label %34, !llvm.loop !39

53:                                               ; preds = %26, %21, %18, %14
  %54 = load ptr, ptr @G, align 8, !tbaa !20
  %55 = getelementptr inbounds %struct.Main, ptr %54, i64 0, i32 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %55, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !23
  %56 = load ptr, ptr %55, align 8, !tbaa !31
  tail call void @ED_screens_initialize(ptr noundef %56) #15
  br label %105

57:                                               ; preds = %11
  %58 = load ptr, ptr %1, align 8, !tbaa !40
  %59 = load ptr, ptr %6, align 8, !tbaa !31
  %60 = getelementptr inbounds %struct.wmWindowManager, ptr %59, i64 0, i32 13
  %61 = getelementptr inbounds %struct.wmWindowManager, ptr %58, i64 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %60, ptr noundef nonnull align 8 dereferenceable(16) %61, i64 16, i1 false), !tbaa.struct !23
  %62 = getelementptr inbounds %struct.wmWindowManager, ptr %58, i64 0, i32 14
  %63 = getelementptr inbounds %struct.wmWindowManager, ptr %59, i64 0, i32 14
  %64 = load <2 x ptr>, ptr %62, align 8, !tbaa !24
  store <2 x ptr> %64, ptr %63, align 8, !tbaa !24
  %65 = getelementptr inbounds %struct.wmWindowManager, ptr %58, i64 0, i32 16
  %66 = load ptr, ptr %65, align 8, !tbaa !41
  %67 = getelementptr inbounds %struct.wmWindowManager, ptr %59, i64 0, i32 16
  store ptr %66, ptr %67, align 8, !tbaa !41
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %61) #17
  %68 = getelementptr inbounds %struct.wmWindowManager, ptr %59, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %62, i8 0, i64 24, i1 false)
  store i32 0, ptr %68, align 8, !tbaa !42
  %69 = getelementptr inbounds %struct.wmWindowManager, ptr %59, i64 0, i32 2
  store ptr null, ptr %69, align 8, !tbaa !43
  %70 = getelementptr inbounds %struct.wmWindowManager, ptr %59, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !24
  %72 = icmp eq ptr %71, null
  br i1 %72, label %100, label %73

73:                                               ; preds = %57
  %74 = getelementptr inbounds %struct.wmWindowManager, ptr %58, i64 0, i32 3
  br label %79

75:                                               ; preds = %94, %79
  %76 = phi i8 [ %81, %79 ], [ %95, %94 ]
  %77 = load ptr, ptr %80, align 8, !tbaa !24
  %78 = icmp eq ptr %77, null
  br i1 %78, label %98, label %79, !llvm.loop !44

79:                                               ; preds = %73, %75
  %80 = phi ptr [ %71, %73 ], [ %77, %75 ]
  %81 = phi i8 [ 0, %73 ], [ %76, %75 ]
  %82 = load ptr, ptr %74, align 8, !tbaa !24
  %83 = icmp eq ptr %82, null
  br i1 %83, label %75, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.wmWindow, ptr %80, i64 0, i32 18
  br label %86

86:                                               ; preds = %84, %94
  %87 = phi ptr [ %82, %84 ], [ %96, %94 ]
  %88 = phi i8 [ %81, %84 ], [ %95, %94 ]
  %89 = getelementptr inbounds %struct.wmWindow, ptr %87, i64 0, i32 18
  %90 = load i32, ptr %89, align 8, !tbaa !38
  %91 = load i32, ptr %85, align 8, !tbaa !38
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  tail call fastcc void @wm_window_substitute_old(ptr noundef %59, ptr noundef nonnull %87, ptr noundef nonnull %80) #17
  br label %94

94:                                               ; preds = %86, %93
  %95 = phi i8 [ 1, %93 ], [ %88, %86 ]
  %96 = load ptr, ptr %87, align 8, !tbaa !24
  %97 = icmp eq ptr %96, null
  br i1 %97, label %75, label %86, !llvm.loop !45

98:                                               ; preds = %75
  %99 = icmp eq i8 %76, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %57, %98
  %101 = getelementptr inbounds %struct.wmWindowManager, ptr %58, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !22
  %103 = load ptr, ptr %70, align 8, !tbaa !22
  tail call fastcc void @wm_window_substitute_old(ptr noundef %59, ptr noundef %102, ptr noundef %103) #17
  br label %104

104:                                              ; preds = %100, %98
  tail call void @wm_close_and_free_all(ptr noundef %0, ptr noundef nonnull %1) #15
  br label %105

105:                                              ; preds = %53, %104, %10, %7
  ret void
}

; Function Attrs: optsize
declare void @WM_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_init_userdef(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %4 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 63), align 8, !tbaa !46
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 20
  tail call void @MEM_CacheLimiter_set_maximum(i64 noundef %6) #15
  tail call void @sound_init(ptr noundef %3) #15
  %7 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !51
  %8 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4
  %9 = and i32 %8, -1025
  %10 = lshr i32 %7, 13
  %11 = and i32 %10, 1024
  %12 = or disjoint i32 %9, %11
  store i32 %12, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !34
  %13 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !5
  %14 = and i32 %13, 16384
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = and i32 %7, 4194304
  %18 = icmp eq i32 %17, 0
  %19 = or i32 %13, 8192
  %20 = and i32 %13, -24577
  %21 = select i1 %18, i32 %19, i32 %20
  store i32 %21, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !5
  br label %22

22:                                               ; preds = %16, %2
  %23 = icmp eq i8 %1, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  tail call void @BLO_update_defaults_userpref_blend() #15
  br label %25

25:                                               ; preds = %24, %22
  tail call void @BLI_temp_dir_init(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 5)) #15
  tail call void @BKE_userdef_state() #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_history() unnamed_addr #0 {
  %1 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %1) #14
  %2 = load ptr, ptr @G, align 8, !tbaa !20
  %3 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !21
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %64, label %6

6:                                                ; preds = %0
  %7 = tail call ptr @BLI_get_folder_create(i32 noundef 31, ptr noundef null) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %64, label %9

9:                                                ; preds = %6
  call void @BLI_make_file_string(ptr noundef nonnull @.str.16, ptr noundef nonnull %1, ptr noundef nonnull %7, ptr noundef nonnull @.str.17) #15
  %10 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 6), align 8, !tbaa !52
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.RecentFile, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  %15 = load ptr, ptr @G, align 8, !tbaa !20
  %16 = getelementptr inbounds %struct.Main, ptr %15, i64 0, i32 2
  %17 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %16) #18
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %64, label %19

19:                                               ; preds = %12, %9
  %20 = call ptr @BLI_fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.35) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %61, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !24
  %24 = call ptr %23(i64 noundef 24, ptr noundef nonnull @.str.18) #15
  %25 = load ptr, ptr @G, align 8, !tbaa !20
  %26 = getelementptr inbounds %struct.Main, ptr %25, i64 0, i32 2
  %27 = call ptr @BLI_strdup(ptr noundef nonnull %26) #15
  %28 = getelementptr inbounds %struct.RecentFile, ptr %24, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !53
  call void @BLI_addhead(ptr noundef nonnull getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 6), ptr noundef %24) #15
  %29 = load ptr, ptr %28, align 8, !tbaa !53
  %30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %20, ptr noundef nonnull @.str.36, ptr noundef %29) #17
  %31 = load ptr, ptr %24, align 8, !tbaa !55
  %32 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 70), align 2, !tbaa !56
  %33 = icmp sgt i16 %32, 1
  %34 = icmp ne ptr %31, null
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %59

36:                                               ; preds = %22, %51
  %37 = phi i32 [ %53, %51 ], [ 1, %22 ]
  %38 = phi ptr [ %52, %51 ], [ %31, %22 ]
  %39 = getelementptr inbounds %struct.RecentFile, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !53
  %41 = load ptr, ptr @G, align 8, !tbaa !20
  %42 = getelementptr inbounds %struct.Main, ptr %41, i64 0, i32 2
  %43 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %40, ptr noundef nonnull dereferenceable(1) %42) #18
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %20, ptr noundef nonnull @.str.36, ptr noundef %40) #17
  %47 = load ptr, ptr %38, align 8, !tbaa !55
  br label %51

48:                                               ; preds = %36
  %49 = load ptr, ptr %38, align 8, !tbaa !55
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !24
  call void %50(ptr noundef %40) #15
  call void @BLI_freelinkN(ptr noundef nonnull getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 6), ptr noundef nonnull %38) #15
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi ptr [ %47, %45 ], [ %49, %48 ]
  %53 = add nuw nsw i32 %37, 1
  %54 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 70), align 2, !tbaa !56
  %55 = sext i16 %54 to i32
  %56 = icmp slt i32 %53, %55
  %57 = icmp ne ptr %52, null
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %36, label %59, !llvm.loop !57

59:                                               ; preds = %51, %22
  %60 = call i32 @fclose(ptr noundef nonnull %20) #17
  br label %61

61:                                               ; preds = %59, %19
  %62 = load ptr, ptr @G, align 8, !tbaa !20
  %63 = getelementptr inbounds %struct.Main, ptr %62, i64 0, i32 2
  call void @GHOST_addToSystemRecentFiles(ptr noundef nonnull %63) #15
  br label %64

64:                                               ; preds = %12, %61, %6, %0
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %1) #14
  ret void
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_wm_window_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_editors_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_on_visible_update(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operatortype_last_properties_clear_all() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_reset_undo() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_write_undo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @wm_homefile_read(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #14
  %8 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  tail call void @BLI_callback_exec(ptr noundef %8, ptr noundef null, i32 noundef 8) #15
  tail call void @UI_view2d_zoom_cache_reset() #15
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !19
  %9 = icmp eq i8 %2, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %4
  %11 = tail call ptr @BLI_get_folder(i32 noundef 31, ptr noundef null) #15
  %12 = icmp eq ptr %3, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %3, i64 noundef 1024) #15
  %15 = icmp eq ptr %11, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @G, align 8, !tbaa !20
  %18 = getelementptr inbounds %struct.Main, ptr %17, i64 0, i32 2
  call void @BLI_make_file_string(ptr noundef nonnull %18, ptr noundef nonnull %7, ptr noundef nonnull %11, ptr noundef nonnull @.str.7) #15
  br label %29

19:                                               ; preds = %13
  store i8 0, ptr %7, align 16, !tbaa !21
  br label %29

20:                                               ; preds = %10
  %21 = icmp eq ptr %11, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr @G, align 8, !tbaa !20
  %24 = getelementptr inbounds %struct.Main, ptr %23, i64 0, i32 2
  call void @BLI_make_file_string(ptr noundef nonnull %24, ptr noundef nonnull %6, ptr noundef nonnull %11, ptr noundef nonnull @.str.8) #15
  %25 = load ptr, ptr @G, align 8, !tbaa !20
  %26 = getelementptr inbounds %struct.Main, ptr %25, i64 0, i32 2
  call void @BLI_make_file_string(ptr noundef nonnull %26, ptr noundef nonnull %7, ptr noundef nonnull %11, ptr noundef nonnull @.str.7) #15
  br label %29

27:                                               ; preds = %20
  store i8 0, ptr %6, align 16, !tbaa !21
  store i8 0, ptr %7, align 16, !tbaa !21
  br label %28

28:                                               ; preds = %27, %4
  call fastcc void @wm_window_match_init(ptr noundef %0, ptr noundef nonnull %5) #17
  br label %46

29:                                               ; preds = %16, %19, %22
  call fastcc void @wm_window_match_init(ptr noundef %0, ptr noundef nonnull %5) #17
  %30 = call i32 @BLI_access(ptr noundef nonnull %6, i32 noundef 4) #15
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = call i32 @BKE_read_file(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null) #15
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i32 [ %35, %32 ], [ 0, %29 ]
  %38 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38)) #17, !range !30
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !58
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull %6) #17
  br label %46

46:                                               ; preds = %28, %40, %44, %36
  %47 = phi i1 [ false, %28 ], [ true, %36 ], [ true, %44 ], [ true, %40 ]
  %48 = phi i32 [ 0, %28 ], [ %37, %36 ], [ 0, %44 ], [ 0, %40 ]
  %49 = icmp eq i32 %48, 0
  %50 = icmp ne ptr %3, null
  %51 = icmp ne ptr %1, null
  %52 = and i1 %51, %50
  %53 = and i1 %52, %49
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef nonnull %1, i32 noundef 32, ptr noundef nonnull @.str.10, ptr noundef nonnull %3) #15
  br label %56

55:                                               ; preds = %46
  br i1 %49, label %56, label %63

56:                                               ; preds = %54, %55
  %57 = load i32, ptr @datatoc_startup_blend_size, align 4, !tbaa !13
  %58 = call zeroext i8 @BKE_read_file_from_memory(ptr noundef %0, ptr noundef nonnull @datatoc_startup_blend, i32 noundef %57, ptr noundef null, i8 noundef zeroext 1) #15
  %59 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %5) #17, !range !30
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  call void @wm_clear_default_size(ptr noundef %0) #15
  br label %62

62:                                               ; preds = %61, %56
  call void @BLI_temp_dir_init(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 5)) #15
  br label %63

63:                                               ; preds = %62, %55
  br i1 %47, label %64, label %72

64:                                               ; preds = %63
  %65 = call i32 @BLI_exists(ptr noundef nonnull %7) #15
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = call i32 @BKE_read_file_userdef(ptr noundef nonnull %7, ptr noundef null) #15
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef nonnull %7) #17
  br label %72

72:                                               ; preds = %67, %70, %64, %63
  %73 = phi i8 [ 1, %63 ], [ 1, %64 ], [ 0, %70 ], [ 1, %67 ]
  %74 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !34
  %75 = and i32 %74, -16777217
  store i32 %75, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !34
  call fastcc void @wm_init_userdef(ptr noundef %0, i8 noundef zeroext %73) #17
  call fastcc void @wm_window_match_do(ptr noundef %0, ptr noundef nonnull %5) #17
  call void @WM_check(ptr noundef %0) #15
  %76 = load ptr, ptr @G, align 8, !tbaa !20
  %77 = getelementptr inbounds %struct.Main, ptr %76, i64 0, i32 2
  store i8 0, ptr %77, align 8, !tbaa !21
  %78 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !14
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = call i32 @GPU_default_lights() #15
  br label %82

82:                                               ; preds = %80, %72
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 5), align 2, !tbaa !59
  %83 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !34
  %84 = and i32 %83, -5
  store i32 %84, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !34
  call void @BKE_reset_undo() #15
  call void @BKE_write_undo(ptr noundef %0, ptr noundef nonnull @.str) #15
  call void @ED_editors_init(ptr noundef %0) #15
  %85 = call ptr @CTX_data_main(ptr noundef %0) #15
  call void @DAG_on_visible_update(ptr noundef %85, i8 noundef zeroext 1) #15
  call void @WM_operatortype_last_properties_clear_all() #15
  %86 = call ptr @CTX_data_main(ptr noundef %0) #15
  call void @BLI_callback_exec(ptr noundef %86, ptr noundef null, i32 noundef 16) #15
  %87 = call ptr @CTX_data_main(ptr noundef %0) #15
  call void @BLI_callback_exec(ptr noundef %87, ptr noundef null, i32 noundef 9) #15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 16842752, ptr noundef null) #15
  %88 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !14
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  call void @CTX_wm_window_set(ptr noundef %0, ptr noundef null) #15
  br label %91

91:                                               ; preds = %90, %82
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  ret i32 1
}

; Function Attrs: optsize
declare ptr @BLI_get_folder(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_make_file_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_access(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !40
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @BKE_read_file_from_memory(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wm_clear_default_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_temp_dir_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_read_file_userdef(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GPU_default_lights() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @wm_history_read_exec(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  tail call void @ED_file_read_bookmarks() #15
  tail call void @wm_read_history() #17
  ret i32 4
}

; Function Attrs: optsize
declare void @ED_file_read_bookmarks() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_read_history() local_unnamed_addr #0 {
  %1 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %1) #14
  %2 = tail call ptr @BLI_get_folder(i32 noundef 31, ptr noundef null) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %0
  call void @BLI_make_file_string(ptr noundef nonnull @.str.16, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull @.str.17) #15
  %5 = call ptr @BLI_file_read_as_lines(ptr noundef nonnull %1) #15
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 6)) #17
  %6 = icmp ne ptr %5, null
  %7 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 70), align 2
  %8 = icmp sgt i16 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %34

10:                                               ; preds = %4, %26
  %11 = phi ptr [ %28, %26 ], [ %5, %4 ]
  %12 = phi i32 [ %27, %26 ], [ 0, %4 ]
  %13 = getelementptr inbounds %struct.LinkNode, ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = load i8, ptr %14, align 1, !tbaa !21
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %10
  %18 = call i32 @BLI_exists(ptr noundef nonnull %14) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !24
  %22 = call ptr %21(i64 noundef 24, ptr noundef nonnull @.str.18) #15
  call void @BLI_addtail(ptr noundef nonnull getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 6), ptr noundef %22) #15
  %23 = call ptr @BLI_strdup(ptr noundef nonnull %14) #15
  %24 = getelementptr inbounds %struct.RecentFile, ptr %22, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !53
  %25 = add nsw i32 %12, 1
  br label %26

26:                                               ; preds = %10, %17, %20
  %27 = phi i32 [ %25, %20 ], [ %12, %17 ], [ %12, %10 ]
  %28 = load ptr, ptr %11, align 8, !tbaa !62
  %29 = icmp ne ptr %28, null
  %30 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 70), align 2
  %31 = sext i16 %30 to i32
  %32 = icmp slt i32 %27, %31
  %33 = select i1 %29, i1 %32, i1 false
  br i1 %33, label %10, label %34, !llvm.loop !63

34:                                               ; preds = %26, %4
  call void @BLI_file_free_lines(ptr noundef %5) #15
  br label %35

35:                                               ; preds = %0, %34
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @wm_homefile_read_exec(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(28) @.str.12) #18
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #14
  br i1 %9, label %32, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  %14 = tail call ptr @RNA_struct_find_property(ptr noundef %13, ptr noundef nonnull @.str.13) #15
  tail call void @wm_open_init_load_ui(ptr noundef nonnull %1, i8 noundef zeroext 1) #17
  %15 = load ptr, ptr %12, align 8, !tbaa !69
  %16 = tail call i32 @RNA_boolean_get(ptr noundef %15, ptr noundef nonnull @.str.14) #15
  %17 = icmp eq i32 %16, 0
  %18 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4
  %19 = and i32 %18, -1025
  %20 = select i1 %17, i32 1024, i32 0
  %21 = or disjoint i32 %19, %20
  store i32 %21, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !34
  %22 = load ptr, ptr %12, align 8, !tbaa !69
  %23 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %22, ptr noundef %14) #15
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %11
  %26 = load ptr, ptr %12, align 8, !tbaa !69
  call void @RNA_property_string_get(ptr noundef %26, ptr noundef %14, ptr noundef nonnull %3) #15
  %27 = call i32 @BLI_access(ptr noundef nonnull %3, i32 noundef 4) #15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !70
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %31, i32 noundef 32, ptr noundef nonnull @.str.15, ptr noundef nonnull %3) #15
  br label %37

32:                                               ; preds = %11, %25, %2
  %33 = phi ptr [ null, %2 ], [ null, %11 ], [ %3, %25 ]
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !70
  %36 = call i32 @wm_homefile_read(ptr noundef %0, ptr noundef %35, i8 noundef zeroext %10, ptr noundef %33) #17
  br label %37

37:                                               ; preds = %29, %32
  %38 = phi i32 [ 4, %32 ], [ 2, %29 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #14
  ret i32 %38
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_open_init_load_ui(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = tail call ptr @RNA_struct_find_property(ptr noundef %4, ptr noundef nonnull @.str.14) #15
  %6 = load ptr, ptr %3, align 8, !tbaa !69
  %7 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %6, ptr noundef %5) #15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = icmp eq i8 %1, 0
  %11 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8
  %12 = lshr i32 %11, 23
  %13 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4
  %14 = lshr i32 %13, 10
  %15 = select i1 %10, i32 %14, i32 %12
  %16 = and i32 %15, 1
  %17 = xor i32 %16, 1
  %18 = load ptr, ptr %3, align 8, !tbaa !69
  tail call void @RNA_property_boolean_set(ptr noundef %18, ptr noundef %5, i32 noundef %17) #15
  br label %19

19:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_file_read_as_lines(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #8 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_file_free_lines(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @write_crash_blend() local_unnamed_addr #0 {
  %1 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %1) #14
  %2 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !34
  %3 = and i32 %2, -33554433
  %4 = load ptr, ptr @G, align 8, !tbaa !20
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 2
  %6 = call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef nonnull %5, i64 noundef 1024) #15
  %7 = call zeroext i8 @BLI_replace_extension(ptr noundef nonnull %1, i64 noundef 1024, ptr noundef nonnull @.str.19) #15
  %8 = load ptr, ptr @G, align 8, !tbaa !20
  %9 = call i32 @BLO_write_file(ptr noundef %8, ptr noundef nonnull %1, i32 noundef %3, ptr noundef null, ptr noundef null) #15
  %10 = icmp ne i32 %9, 0
  %11 = select i1 %10, ptr @.str.20, ptr @.str.21
  %12 = zext i1 %10 to i8
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull %1) #17
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %1) #14
  ret i8 %12
}

; Function Attrs: optsize
declare zeroext i8 @BLI_replace_extension(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLO_write_file(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @wm_file_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  store ptr null, ptr %5, align 8, !tbaa !24
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %7 = trunc i64 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @BKE_report(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.22) #15
  br label %102

10:                                               ; preds = %4
  %11 = icmp sgt i32 %7, 1023
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void @BKE_report(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.23) #15
  br label %102

13:                                               ; preds = %10
  %14 = tail call i32 @BLI_exists(ptr noundef %1) #15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = tail call zeroext i8 @BLI_file_is_writable(ptr noundef %1) #15
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.24, ptr noundef %1) #15
  br label %102

20:                                               ; preds = %16, %13
  %21 = load ptr, ptr @G, align 8, !tbaa !20
  %22 = getelementptr inbounds %struct.Main, ptr %21, i64 0, i32 12
  br label %23

23:                                               ; preds = %27, %20
  %24 = phi ptr [ %22, %20 ], [ %25, %27 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !24
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Library, ptr %25, i64 0, i32 4
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) %1) #18
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %23, !llvm.loop !71

31:                                               ; preds = %27
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.25, ptr noundef %1) #15
  br label %102

32:                                               ; preds = %23
  %33 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !51
  %34 = and i32 %33, 65536
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  %37 = tail call i32 @BLI_thread_is_main() #15
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %41 = tail call ptr @CTX_wm_screen(ptr noundef %0) #15
  %42 = call fastcc ptr @blend_file_thumb(ptr noundef %40, ptr noundef %41, ptr noundef nonnull %5) #17
  br label %43

43:                                               ; preds = %39, %36, %32
  %44 = phi ptr [ %42, %39 ], [ null, %36 ], [ null, %32 ]
  %45 = load ptr, ptr @G, align 8, !tbaa !20
  tail call void @BLI_callback_exec(ptr noundef %45, ptr noundef null, i32 noundef 10) #15
  %46 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !34
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %43
  %50 = load ptr, ptr @G, align 8, !tbaa !20
  tail call void @packAll(ptr noundef %50, ptr noundef %3) #15
  br label %51

51:                                               ; preds = %49, %43
  tail call void @WM_cursor_wait(i8 noundef zeroext 1) #15
  %52 = tail call zeroext i8 @ED_editors_flush_edits(ptr noundef %0, i8 noundef zeroext 0) #15
  %53 = or i32 %2, 33554432
  %54 = load ptr, ptr @G, align 8, !tbaa !20
  %55 = getelementptr inbounds %struct.Main, ptr %54, i64 0, i32 2
  %56 = load i8, ptr %55, align 8, !tbaa !21
  %57 = icmp eq i8 %56, 0
  %58 = and i32 %2, 134217728
  %59 = icmp eq i32 %58, 0
  %60 = and i1 %59, %57
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = tail call ptr @BLI_strncpy(ptr noundef nonnull %55, ptr noundef %1, i64 noundef 1024) #15
  %63 = load ptr, ptr @G, align 8, !tbaa !20
  br label %64

64:                                               ; preds = %61, %51
  %65 = phi ptr [ %63, %61 ], [ %54, %51 ]
  %66 = getelementptr inbounds %struct.Main, ptr %65, i64 0, i32 9
  store i16 0, ptr %66, align 8, !tbaa !72
  %67 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %68 = load ptr, ptr %5, align 8, !tbaa !24
  %69 = tail call i32 @BLO_write_file(ptr noundef %67, ptr noundef %1, i32 noundef %53, ptr noundef %3, ptr noundef %68) #15
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %93, label %71

71:                                               ; preds = %64
  br i1 %59, label %72, label %76

72:                                               ; preds = %71
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !19
  %73 = load ptr, ptr @G, align 8, !tbaa !20
  %74 = getelementptr inbounds %struct.Main, ptr %73, i64 0, i32 2
  %75 = tail call ptr @BLI_strncpy(ptr noundef nonnull %74, ptr noundef %1, i64 noundef 1024) #15
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 5), align 2, !tbaa !59
  br label %76

76:                                               ; preds = %72, %71
  %77 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4
  %78 = and i32 %77, -7
  %79 = and i32 %2, 6
  %80 = or disjoint i32 %78, %79
  store i32 %80, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !34
  %81 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !14
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  tail call fastcc void @write_history() #17
  br label %84

84:                                               ; preds = %83, %76
  %85 = load ptr, ptr @G, align 8, !tbaa !20
  tail call void @BLI_callback_exec(ptr noundef %85, ptr noundef null, i32 noundef 11) #15
  %86 = icmp eq ptr %44, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  tail call void @IMB_thumb_delete(ptr noundef %1, i32 noundef 2) #15
  %88 = tail call ptr @IMB_thumb_create(ptr noundef %1, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %44) #15
  tail call void @IMB_freeImBuf(ptr noundef %88) #15
  br label %89

89:                                               ; preds = %87, %84
  %90 = icmp eq ptr %68, null
  br i1 %90, label %101, label %91

91:                                               ; preds = %89
  %92 = load ptr, ptr @MEM_freeN, align 8, !tbaa !24
  tail call void %92(ptr noundef nonnull %68) #15
  br label %101

93:                                               ; preds = %64
  %94 = icmp eq ptr %44, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %93
  tail call void @IMB_freeImBuf(ptr noundef nonnull %44) #15
  br label %96

96:                                               ; preds = %95, %93
  %97 = icmp eq ptr %68, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %96
  %99 = load ptr, ptr @MEM_freeN, align 8, !tbaa !24
  tail call void %99(ptr noundef nonnull %68) #15
  br label %100

100:                                              ; preds = %98, %96
  tail call void @WM_cursor_wait(i8 noundef zeroext 0) #15
  br label %102

101:                                              ; preds = %89, %91
  tail call void @WM_cursor_wait(i8 noundef zeroext 0) #15
  br label %102

102:                                              ; preds = %101, %100, %31, %19, %12, %9
  %103 = phi i32 [ -1, %9 ], [ -1, %12 ], [ -1, %31 ], [ 0, %101 ], [ -1, %100 ], [ -1, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret i32 %103
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_file_is_writable(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_thread_is_main() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @blend_file_thumb(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, ptr noundef nonnull align 16 dereferenceable(256) @__const.blend_file_thumb.err_out, i64 256, i1 false)
  store ptr null, ptr %2, align 8, !tbaa !24
  %5 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !14
  %6 = icmp ne i8 %5, 0
  %7 = icmp eq ptr %0, null
  %8 = or i1 %7, %6
  br i1 %8, label %67, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = icmp eq ptr %11, null
  %13 = icmp ne ptr %1, null
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %25

15:                                               ; preds = %9
  %16 = tail call ptr @BKE_screen_find_big_area(ptr noundef nonnull %1, i32 noundef 1, i16 noundef signext 0) #15
  %17 = tail call ptr @BKE_area_find_region_type(ptr noundef %16, i32 noundef 0) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ScrArea, ptr %16, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !92
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi ptr [ null, %15 ], [ %21, %19 ]
  %24 = load ptr, ptr %10, align 8, !tbaa !73
  br label %25

25:                                               ; preds = %22, %9
  %26 = phi ptr [ %24, %22 ], [ %11, %9 ]
  %27 = phi ptr [ %17, %22 ], [ null, %9 ]
  %28 = phi ptr [ %23, %22 ], [ null, %9 ]
  %29 = icmp eq ptr %26, null
  %30 = icmp eq ptr %28, null
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %67, label %32

32:                                               ; preds = %25
  br i1 %29, label %35, label %33

33:                                               ; preds = %32
  %34 = call ptr @ED_view3d_draw_offscreen_imbuf_simple(ptr noundef nonnull %0, ptr noundef nonnull %26, i32 noundef 256, i32 noundef 256, i32 noundef 1, i32 noundef 3, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %4) #15
  br label %37

35:                                               ; preds = %32
  %36 = call ptr @ED_view3d_draw_offscreen_imbuf(ptr noundef nonnull %0, ptr noundef %28, ptr noundef %27, i32 noundef 256, i32 noundef 256, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %4) #15
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi ptr [ %34, %33 ], [ %36, %35 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %62, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 33
  %42 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 63
  %43 = load <2 x i32>, ptr %41, align 4, !tbaa !13
  %44 = sitofp <2 x i32> %43 to <2 x float>
  %45 = load <2 x float>, ptr %42, align 4, !tbaa !94
  %46 = fmul <2 x float> %45, %44
  %47 = extractelement <2 x float> %46, i64 0
  %48 = extractelement <2 x float> %46, i64 1
  %49 = fdiv float %47, %48
  %50 = call ptr @IMB_scaleImBuf(ptr noundef nonnull %38, i32 noundef 128, i32 noundef 128) #15
  %51 = getelementptr inbounds %struct.ImBuf, ptr %38, i64 0, i32 8
  %52 = load ptr, ptr %51, align 8, !tbaa !95
  %53 = getelementptr inbounds %struct.ImBuf, ptr %38, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !98
  %55 = getelementptr inbounds %struct.ImBuf, ptr %38, i64 0, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !99
  call void @IMB_overlayblend_thumb(ptr noundef %52, i32 noundef %54, i32 noundef %56, float noundef %49) #15
  %57 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !24
  %58 = call ptr %57(i64 noundef 65544, ptr noundef nonnull @.str.37) #15
  store i32 128, ptr %58, align 4, !tbaa !13
  %59 = getelementptr inbounds i32, ptr %58, i64 1
  store i32 128, ptr %59, align 4, !tbaa !13
  %60 = getelementptr inbounds i32, ptr %58, i64 2
  %61 = load ptr, ptr %51, align 8, !tbaa !95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(65536) %60, ptr noundef nonnull align 4 dereferenceable(65536) %61, i64 65536, i1 false)
  br label %65

62:                                               ; preds = %37
  %63 = load ptr, ptr @stderr, align 8, !tbaa !24
  %64 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef nonnull @.str.38, ptr noundef nonnull %4) #19
  br label %65

65:                                               ; preds = %62, %40
  %66 = phi ptr [ %58, %40 ], [ null, %62 ]
  store ptr %66, ptr %2, align 8, !tbaa !24
  br label %67

67:                                               ; preds = %25, %3, %65
  %68 = phi ptr [ %38, %65 ], [ null, %3 ], [ null, %25 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #14
  ret ptr %68
}

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @packAll(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_editors_flush_edits(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_thumb_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_thumb_create(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @wm_homefile_write_exec(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.bScreen, ptr %9, i64 0, i32 10
  %11 = load i16, ptr %10, align 2, !tbaa !100
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @wm_window_close(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %5) #15
  br label %14

14:                                               ; preds = %13, %7, %2
  tail call void @WM_keyconfig_update(ptr noundef %4) #15
  %15 = tail call ptr @BLI_get_folder_create(i32 noundef 31, ptr noundef null) #15
  call void @BLI_make_file_string(ptr noundef nonnull @.str.16, ptr noundef nonnull %3, ptr noundef %15, ptr noundef nonnull @.str.8) #15
  %16 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull %3) #17
  %17 = call zeroext i8 @ED_editors_flush_edits(ptr noundef %0, i8 noundef zeroext 0) #15
  %18 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !34
  %19 = and i32 %18, -33555335
  %20 = call ptr @CTX_data_main(ptr noundef %0) #15
  %21 = or disjoint i32 %19, 512
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !70
  %24 = call i32 @BLO_write_file(ptr noundef %20, ptr noundef nonnull %3, i32 noundef %21, ptr noundef %23, ptr noundef null) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = call i32 @puts(ptr nonnull dereferenceable(1) @str.41)
  br label %30

28:                                               ; preds = %14
  %29 = call i32 @puts(ptr nonnull dereferenceable(1) @str.40)
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 5), align 2, !tbaa !59
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ 2, %26 ], [ 4, %28 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #14
  ret i32 %31
}

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wm_window_close(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_keyconfig_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_get_folder_create(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @wm_userpref_write_exec(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #14
  tail call void @WM_keyconfig_update(ptr noundef %4) #15
  %5 = tail call ptr @BLI_get_folder_create(i32 noundef 31, ptr noundef null) #15
  call void @BLI_make_file_string(ptr noundef nonnull @.str.16, ptr noundef nonnull %3, ptr noundef %5, ptr noundef nonnull @.str.7) #15
  %6 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, ptr noundef nonnull %3) #17
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = call i32 @BKE_write_file_userdef(ptr noundef nonnull %3, ptr noundef %8) #15
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, ptr @str.41, ptr @str.40
  %12 = select i1 %10, i32 2, i32 4
  %13 = call i32 @puts(ptr nonnull dereferenceable(1) %11)
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #14
  ret i32 %12
}

; Function Attrs: optsize
declare i32 @BKE_write_file_userdef(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_autosave_location(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #14
  %3 = tail call i32 @getpid() #15
  %4 = tail call i32 @llvm.abs.i32(i32 %3, i1 true)
  %5 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %2, i64 noundef 32, ptr noundef nonnull @.str.30, i32 noundef %4) #15
  %6 = call ptr @BLI_temp_dir_base() #15
  call void @BLI_make_file_string(ptr noundef nonnull @.str.16, ptr noundef %0, ptr noundef %6, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #14
  ret void
}

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i32 @getpid() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: optsize
declare ptr @BLI_temp_dir_base() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_autosave_init(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @wm_autosave_timer_ended(ptr noundef %0) #17
  %2 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !51
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 4), align 8, !tbaa !101
  %7 = sitofp i32 %6 to double
  %8 = fmul double %7, 6.000000e+01
  %9 = tail call ptr @WM_event_add_timer(ptr noundef %0, ptr noundef null, i32 noundef 277, double noundef %8) #15
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 18
  store ptr %9, ptr %10, align 8, !tbaa !102
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_autosave_timer_ended(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @WM_event_remove_timer(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %3) #15
  store ptr null, ptr %2, align 8, !tbaa !102
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_autosave_timer(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %1, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  tail call void @WM_event_remove_timer(ptr noundef %1, ptr noundef null, ptr noundef %6) #15
  %7 = getelementptr inbounds %struct.wmWindowManager, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %13

10:                                               ; preds = %16
  %11 = load ptr, ptr %14, align 8, !tbaa !24
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13, !llvm.loop !103

13:                                               ; preds = %3, %10
  %14 = phi ptr [ %11, %10 ], [ %8, %3 ]
  %15 = getelementptr inbounds %struct.wmWindow, ptr %14, i64 0, i32 29
  br label %16

16:                                               ; preds = %20, %13
  %17 = phi ptr [ %15, %13 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  %19 = icmp eq ptr %18, null
  br i1 %19, label %10, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.wmEventHandler, ptr %18, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !104
  %23 = icmp eq ptr %22, null
  br i1 %23, label %16, label %24, !llvm.loop !106

24:                                               ; preds = %20
  %25 = tail call ptr @WM_event_add_timer(ptr noundef %1, ptr noundef null, i32 noundef 277, double noundef 1.000000e+01) #15
  br label %43

26:                                               ; preds = %10, %3
  %27 = tail call zeroext i8 @ED_editors_flush_edits(ptr noundef %0, i8 noundef zeroext 0) #15
  call void @wm_autosave_location(ptr noundef nonnull %4) #17
  %28 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !107
  %29 = and i32 %28, 8192
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = call zeroext i8 @BKE_undo_save_file(ptr noundef nonnull %4) #15
  br label %38

33:                                               ; preds = %26
  %34 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !34
  %35 = and i32 %34, -33554823
  %36 = call ptr @CTX_data_main(ptr noundef %0) #15
  %37 = call i32 @BLO_write_file(ptr noundef %36, ptr noundef nonnull %4, i32 noundef %35, ptr noundef null, ptr noundef null) #15
  br label %38

38:                                               ; preds = %33, %31
  %39 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 4), align 8, !tbaa !101
  %40 = sitofp i32 %39 to double
  %41 = fmul double %40, 6.000000e+01
  %42 = call ptr @WM_event_add_timer(ptr noundef %1, ptr noundef null, i32 noundef 277, double noundef %41) #15
  br label %43

43:                                               ; preds = %38, %24
  %44 = phi ptr [ %42, %38 ], [ %25, %24 ]
  store ptr %44, ptr %5, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #14
  ret void
}

; Function Attrs: optsize
declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_undo_save_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_autosave_delete() local_unnamed_addr #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %1) #14
  call void @wm_autosave_location(ptr noundef nonnull %1) #17
  %3 = call i32 @BLI_exists(ptr noundef nonnull %1) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #14
  %6 = call ptr @BLI_temp_dir_base() #15
  call void @BLI_make_file_string(ptr noundef nonnull @.str.16, ptr noundef nonnull %2, ptr noundef %6, ptr noundef nonnull @.str.31) #15
  %7 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !107
  %8 = and i32 %7, 8192
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = call i32 @BLI_delete(ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  br label %14

12:                                               ; preds = %5
  %13 = call i32 @BLI_rename(ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  br label %14

14:                                               ; preds = %12, %10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #14
  br label %15

15:                                               ; preds = %14, %0
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %1) #14
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_delete(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_rename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_autosave_read(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #14
  call void @wm_autosave_location(ptr noundef nonnull %3) #17
  %4 = call zeroext i8 @WM_file_read(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1) #17, !range !30
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #14
  ret void
}

; Function Attrs: optsize
declare void @RNA_property_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_open_init_use_scripts(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = tail call ptr @RNA_struct_find_property(ptr noundef %4, ptr noundef nonnull @.str.32) #15
  %6 = load ptr, ptr %3, align 8, !tbaa !69
  %7 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %6, ptr noundef %5) #15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = icmp eq i8 %1, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !51
  %13 = lshr i32 %12, 22
  %14 = and i32 %13, 1
  %15 = xor i32 %14, 1
  br label %20

16:                                               ; preds = %9
  %17 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !5
  %18 = lshr i32 %17, 13
  %19 = and i32 %18, 1
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi i32 [ %15, %11 ], [ %19, %16 ]
  %22 = load ptr, ptr %3, align 8, !tbaa !69
  tail call void @RNA_property_boolean_set(ptr noundef %22, ptr noundef %5, i32 noundef %21) #15
  br label %23

23:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_gzopen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @gzread(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @gzclose(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: optsize
declare void @WM_jobs_kill_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_remove_handlers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_screen_exit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_editors_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wm_add_default(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_screen_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_screens_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_window_substitute_old(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !108
  %7 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 12
  %8 = load i16, ptr %7, align 4, !tbaa !109
  %9 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 12
  store i16 %8, ptr %9, align 4, !tbaa !109
  %10 = icmp eq i16 %8, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 2
  store ptr %2, ptr %12, align 8, !tbaa !43
  br label %13

13:                                               ; preds = %11, %3
  %14 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !14
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void @GHOST_SetWindowUserData(ptr noundef %5, ptr noundef nonnull %2) #15
  br label %17

17:                                               ; preds = %16, %13
  store ptr null, ptr %4, align 8, !tbaa !108
  %18 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 21
  %19 = load ptr, ptr %18, align 8, !tbaa !110
  %20 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 21
  store ptr %19, ptr %20, align 8, !tbaa !110
  store ptr null, ptr %18, align 8, !tbaa !110
  %21 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 6
  %22 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 6
  %23 = load <4 x i16>, ptr %21, align 8, !tbaa !111
  store <4 x i16> %23, ptr %22, align 8, !tbaa !111
  ret void
}

; Function Attrs: optsize
declare void @wm_close_and_free_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GHOST_SetWindowUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @MEM_CacheLimiter_set_maximum(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sound_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLO_update_defaults_userpref_blend() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_userdef_state() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @GHOST_addToSystemRecentFiles(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_screen_find_big_area(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_view3d_draw_offscreen_imbuf_simple(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_view3d_draw_offscreen_imbuf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_scaleImBuf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_overlayblend_thumb(ptr noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree nounwind willreturn memory(argmem: read) }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind optsize willreturn memory(none) }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize willreturn memory(read) }
attributes #19 = { cold optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !12, i64 2096}
!6 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !10, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !11, i64 2084, !11, i64 2086, !11, i64 2088, !8, i64 2090, !11, i64 2092, !12, i64 2096, !12, i64 2100, !8, i64 2104, !12, i64 2108, !12, i64 2112, !8, i64 2116}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"short", !8, i64 0}
!12 = !{!"int", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!6, !8, i64 2081}
!15 = !{!16, !11, i64 158}
!16 = !{!"wmWindowManager", !17, i64 0, !7, i64 120, !7, i64 128, !10, i64 136, !12, i64 152, !11, i64 156, !11, i64 158, !10, i64 160, !10, i64 176, !18, i64 192, !10, i64 232, !10, i64 248, !10, i64 264, !10, i64 280, !7, i64 296, !7, i64 304, !7, i64 312, !10, i64 320, !7, i64 336, !8, i64 344, !8, i64 345}
!17 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !11, i64 98, !12, i64 100, !12, i64 104, !12, i64 108, !7, i64 112}
!18 = !{!"ReportList", !10, i64 0, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !7, i64 32}
!19 = !{!6, !8, i64 2056}
!20 = !{!6, !7, i64 0}
!21 = !{!8, !8, i64 0}
!22 = !{!16, !7, i64 136}
!23 = !{i64 0, i64 8, !24, i64 8, i64 8, !24}
!24 = !{!7, !7, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!28, !7, i64 24}
!28 = !{!"wmWindow", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !11, i64 104, !11, i64 106, !11, i64 108, !11, i64 110, !11, i64 112, !11, i64 114, !11, i64 116, !11, i64 118, !11, i64 120, !11, i64 122, !11, i64 124, !11, i64 126, !12, i64 128, !11, i64 132, !11, i64 134, !7, i64 136, !7, i64 144, !7, i64 152, !12, i64 160, !12, i64 164, !7, i64 168, !10, i64 176, !10, i64 192, !10, i64 208, !10, i64 224, !10, i64 240}
!29 = distinct !{!29, !26}
!30 = !{i8 0, i8 2}
!31 = !{!32, !7, i64 1552}
!32 = !{!"Main", !7, i64 0, !7, i64 8, !8, i64 16, !11, i64 1040, !11, i64 1042, !11, i64 1044, !11, i64 1046, !33, i64 1048, !8, i64 1056, !11, i64 1072, !7, i64 1080, !10, i64 1088, !10, i64 1104, !10, i64 1120, !10, i64 1136, !10, i64 1152, !10, i64 1168, !10, i64 1184, !10, i64 1200, !10, i64 1216, !10, i64 1232, !10, i64 1248, !10, i64 1264, !10, i64 1280, !10, i64 1296, !10, i64 1312, !10, i64 1328, !10, i64 1344, !10, i64 1360, !10, i64 1376, !10, i64 1392, !10, i64 1408, !10, i64 1424, !10, i64 1440, !10, i64 1456, !10, i64 1472, !10, i64 1488, !10, i64 1504, !10, i64 1520, !10, i64 1536, !10, i64 1552, !10, i64 1568, !10, i64 1584, !10, i64 1600, !10, i64 1616, !8, i64 1632, !7, i64 1888, !7, i64 1896}
!33 = !{!"long", !8, i64 0}
!34 = !{!6, !12, i64 2108}
!35 = distinct !{!35, !26}
!36 = !{!37, !11, i64 212}
!37 = !{!"bScreen", !17, i64 0, !10, i64 120, !10, i64 136, !10, i64 152, !10, i64 168, !7, i64 184, !7, i64 192, !12, i64 200, !12, i64 204, !11, i64 208, !11, i64 210, !11, i64 212, !11, i64 214, !11, i64 216, !11, i64 218, !11, i64 220, !11, i64 222, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !7, i64 232, !7, i64 240}
!38 = !{!28, !12, i64 128}
!39 = distinct !{!39, !26}
!40 = !{!10, !7, i64 0}
!41 = !{!16, !7, i64 312}
!42 = !{!16, !12, i64 152}
!43 = !{!16, !7, i64 128}
!44 = distinct !{!44, !26}
!45 = distinct !{!45, !26}
!46 = !{!47, !12, i64 8912}
!47 = !{!"UserDef", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !12, i64 8468, !11, i64 8472, !11, i64 8474, !11, i64 8476, !11, i64 8478, !11, i64 8480, !11, i64 8482, !12, i64 8484, !12, i64 8488, !12, i64 8492, !11, i64 8496, !11, i64 8498, !12, i64 8500, !12, i64 8504, !12, i64 8508, !12, i64 8512, !12, i64 8516, !12, i64 8520, !12, i64 8524, !11, i64 8528, !11, i64 8530, !11, i64 8532, !11, i64 8534, !10, i64 8536, !10, i64 8552, !10, i64 8568, !10, i64 8584, !10, i64 8600, !10, i64 8616, !10, i64 8632, !8, i64 8648, !11, i64 8712, !11, i64 8714, !11, i64 8716, !11, i64 8718, !11, i64 8720, !11, i64 8722, !11, i64 8724, !11, i64 8726, !8, i64 8728, !11, i64 8896, !11, i64 8898, !11, i64 8900, !11, i64 8902, !11, i64 8904, !11, i64 8906, !11, i64 8908, !11, i64 8910, !12, i64 8912, !12, i64 8916, !11, i64 8920, !11, i64 8922, !11, i64 8924, !11, i64 8926, !11, i64 8928, !11, i64 8930, !11, i64 8932, !11, i64 8934, !11, i64 8936, !11, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !11, i64 8944, !11, i64 8946, !11, i64 8948, !11, i64 8950, !11, i64 8952, !11, i64 8954, !48, i64 8956, !48, i64 8960, !12, i64 8964, !11, i64 8968, !11, i64 8970, !48, i64 8972, !11, i64 8976, !11, i64 8978, !11, i64 8980, !11, i64 8982, !49, i64 8984, !8, i64 9760, !8, i64 9772, !11, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !12, i64 10896, !12, i64 10900, !48, i64 10904, !48, i64 10908, !12, i64 10912, !11, i64 10916, !11, i64 10918, !11, i64 10920, !11, i64 10922, !11, i64 10924, !11, i64 10926, !50, i64 10928}
!48 = !{!"float", !8, i64 0}
!49 = !{!"ColorBand", !11, i64 0, !11, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!50 = !{!"WalkNavigation", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !11, i64 24, !8, i64 26}
!51 = !{!47, !12, i64 8}
!52 = !{!6, !7, i64 2064}
!53 = !{!54, !7, i64 16}
!54 = !{!"RecentFile", !7, i64 0, !7, i64 8, !7, i64 16}
!55 = !{!54, !7, i64 0}
!56 = !{!47, !11, i64 8930}
!57 = distinct !{!57, !26}
!58 = !{!6, !12, i64 2100}
!59 = !{!6, !8, i64 2058}
!60 = !{!61, !7, i64 8}
!61 = !{!"LinkNode", !7, i64 0, !7, i64 8}
!62 = !{!61, !7, i64 0}
!63 = distinct !{!63, !26}
!64 = !{!65, !7, i64 88}
!65 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !11, i64 160, !8, i64 162}
!66 = !{!67, !7, i64 8}
!67 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !68, i64 152, !11, i64 184}
!68 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!69 = !{!65, !7, i64 112}
!70 = !{!65, !7, i64 120}
!71 = distinct !{!71, !26}
!72 = !{!32, !11, i64 1072}
!73 = !{!74, !7, i64 128}
!74 = !{!"Scene", !17, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !12, i64 232, !12, i64 236, !12, i64 240, !11, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !75, i64 280, !84, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !11, i64 4376, !11, i64 4378, !12, i64 4380, !10, i64 4384, !85, i64 4400, !86, i64 4416, !89, i64 4600, !7, i64 4608, !90, i64 4616, !7, i64 4640, !33, i64 4648, !33, i64 4656, !77, i64 4664, !78, i64 4824, !91, i64 4888, !7, i64 4952}
!75 = !{!"RenderData", !76, i64 0, !7, i64 248, !7, i64 256, !79, i64 264, !80, i64 328, !12, i64 400, !12, i64 404, !12, i64 408, !48, i64 412, !12, i64 416, !12, i64 420, !12, i64 424, !12, i64 428, !11, i64 432, !11, i64 434, !48, i64 436, !48, i64 440, !48, i64 444, !48, i64 448, !48, i64 452, !11, i64 456, !11, i64 458, !11, i64 460, !11, i64 462, !11, i64 464, !11, i64 466, !12, i64 468, !11, i64 472, !11, i64 474, !11, i64 476, !11, i64 478, !11, i64 480, !11, i64 482, !12, i64 484, !12, i64 488, !11, i64 492, !11, i64 494, !12, i64 496, !12, i64 500, !11, i64 504, !11, i64 506, !11, i64 508, !11, i64 510, !11, i64 512, !8, i64 514, !8, i64 515, !12, i64 516, !12, i64 520, !12, i64 524, !11, i64 528, !11, i64 530, !11, i64 532, !11, i64 534, !11, i64 536, !11, i64 538, !11, i64 540, !11, i64 542, !81, i64 544, !81, i64 560, !82, i64 576, !10, i64 592, !11, i64 608, !11, i64 610, !48, i64 612, !48, i64 616, !48, i64 620, !48, i64 624, !12, i64 628, !48, i64 632, !48, i64 636, !48, i64 640, !48, i64 644, !11, i64 648, !11, i64 650, !11, i64 652, !11, i64 654, !11, i64 656, !11, i64 658, !48, i64 660, !48, i64 664, !11, i64 668, !11, i64 670, !48, i64 672, !48, i64 676, !8, i64 680, !12, i64 1704, !11, i64 1708, !11, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !12, i64 2520, !11, i64 2524, !11, i64 2526, !48, i64 2528, !48, i64 2532, !11, i64 2536, !11, i64 2538, !48, i64 2540, !11, i64 2544, !11, i64 2546, !12, i64 2548, !11, i64 2552, !11, i64 2554, !11, i64 2556, !11, i64 2558, !48, i64 2560, !48, i64 2564, !7, i64 2568, !12, i64 2576, !48, i64 2580, !8, i64 2584, !83, i64 2616, !12, i64 3976, !12, i64 3980}
!76 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !11, i64 8, !11, i64 10, !48, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !77, i64 24, !78, i64 184}
!77 = !{!"ColorManagedViewSettings", !12, i64 0, !12, i64 4, !8, i64 8, !8, i64 72, !48, i64 136, !48, i64 140, !7, i64 144, !7, i64 152}
!78 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!79 = !{!"QuicktimeCodecSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !11, i64 48, !11, i64 50, !12, i64 52, !12, i64 56, !12, i64 60}
!80 = !{!"FFMpegCodecData", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !48, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !7, i64 64}
!81 = !{!"rctf", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!82 = !{!"rcti", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!83 = !{!"BakeData", !76, i64 0, !8, i64 248, !11, i64 1272, !11, i64 1274, !11, i64 1276, !11, i64 1278, !48, i64 1280, !48, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!84 = !{!"AudioData", !12, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !12, i64 16, !11, i64 20, !11, i64 22, !48, i64 24, !48, i64 28}
!85 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!86 = !{!"GameData", !85, i64 0, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !11, i64 32, !8, i64 34, !87, i64 40, !11, i64 64, !11, i64 66, !48, i64 68, !88, i64 72, !48, i64 128, !48, i64 132, !12, i64 136, !11, i64 140, !11, i64 142, !11, i64 144, !11, i64 146, !11, i64 148, !11, i64 150, !11, i64 152, !11, i64 154, !11, i64 156, !11, i64 158, !11, i64 160, !11, i64 162, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180}
!87 = !{!"GameDome", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !48, i64 8, !48, i64 12, !7, i64 16}
!88 = !{!"RecastData", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !12, i64 40, !48, i64 44, !48, i64 48, !11, i64 52, !11, i64 54}
!89 = !{!"UnitSettings", !48, i64 0, !8, i64 4, !8, i64 5, !11, i64 6}
!90 = !{!"PhysicsSettings", !8, i64 0, !12, i64 12, !12, i64 16, !12, i64 20}
!91 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!92 = !{!93, !7, i64 96}
!93 = !{!"ScrArea", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !82, i64 56, !8, i64 72, !8, i64 73, !11, i64 74, !11, i64 76, !11, i64 78, !11, i64 80, !11, i64 82, !11, i64 84, !8, i64 86, !8, i64 87, !7, i64 88, !10, i64 96, !10, i64 112, !10, i64 128, !10, i64 144}
!94 = !{!48, !48, i64 0}
!95 = !{!96, !7, i64 40}
!96 = !{!"ImBuf", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 20, !8, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !7, i64 40, !7, i64 48, !8, i64 56, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !7, i64 88, !7, i64 96, !7, i64 104, !48, i64 112, !8, i64 120, !12, i64 280, !12, i64 284, !12, i64 288, !12, i64 292, !7, i64 296, !7, i64 304, !12, i64 312, !8, i64 316, !8, i64 1340, !7, i64 2368, !12, i64 2376, !7, i64 2384, !12, i64 2392, !12, i64 2396, !7, i64 2400, !7, i64 2408, !7, i64 2416, !7, i64 2424, !12, i64 2432, !82, i64 2436, !97, i64 2456}
!97 = !{!"DDSData", !12, i64 0, !12, i64 4, !7, i64 8, !12, i64 16}
!98 = !{!96, !12, i64 16}
!99 = !{!96, !12, i64 20}
!100 = !{!37, !11, i64 210}
!101 = !{!47, !12, i64 16}
!102 = !{!16, !7, i64 336}
!103 = distinct !{!103, !26}
!104 = !{!105, !7, i64 48}
!105 = !{!"wmEventHandler", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 20, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128}
!106 = distinct !{!106, !26}
!107 = !{!47, !12, i64 8484}
!108 = !{!28, !7, i64 16}
!109 = !{!28, !11, i64 116}
!110 = !{!28, !7, i64 136}
!111 = !{!11, !11, i64 0}
