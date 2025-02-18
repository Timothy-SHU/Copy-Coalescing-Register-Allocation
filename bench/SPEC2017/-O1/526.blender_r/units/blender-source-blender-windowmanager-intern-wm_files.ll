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

; Function Attrs: nounwind uwtable
define dso_local void @WM_file_autoexec_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1024 x i8], align 16
  %3 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !34
  %4 = and i32 %3, 24576
  %5 = icmp eq i32 %4, 8192
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #12
  call void @BLI_split_dir_part(ptr noundef %0, ptr noundef nonnull %2, i64 noundef 1024) #12
  %7 = call zeroext i8 @BKE_autoexec_match(ptr noundef nonnull %2) #12
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !34
  %11 = and i32 %10, -8193
  store i32 %11, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !34
  br label %12

12:                                               ; preds = %9, %6
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #12
  br label %13

13:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_split_dir_part(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_autoexec_match(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @WM_file_read(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [7 x i8], align 1
  %5 = alloca %struct.ListBase, align 8
  %6 = tail call ptr @__errno_location() #13
  store i32 0, ptr %6, align 4, !tbaa !42
  tail call void @WM_cursor_wait(i8 noundef zeroext 1) #12
  %7 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  tail call void @BLI_callback_exec(ptr noundef %7, ptr noundef null, i32 noundef 8) #12
  tail call void @UI_view2d_zoom_cache_reset() #12
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %4) #12
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %10 = trunc i64 %9 to i32
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = add i64 %9, 4294967295
  %14 = and i64 %13, 4294967295
  %15 = getelementptr inbounds i8, ptr %1, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !43
  switch i8 %16, label %17 [
    i8 47, label %28
    i8 92, label %28
  ]

17:                                               ; preds = %12, %3
  %18 = tail call ptr @BLI_gzopen(ptr noundef %1, ptr noundef nonnull @.str.33) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = call i32 @gzread(ptr noundef nonnull %18, ptr noundef nonnull %4, i32 noundef 7) #12
  %22 = call i32 @gzclose(ptr noundef nonnull %18) #12
  %23 = icmp eq i32 %21, 7
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %4, ptr noundef nonnull dereferenceable(7) @.str.34, i64 7)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %20
  br label %28

28:                                               ; preds = %12, %12, %17, %24, %27
  %29 = phi i32 [ -2, %27 ], [ -3, %12 ], [ -3, %12 ], [ -1, %17 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %4) #12
  switch i32 %29, label %81 [
    i32 0, label %30
    i32 -1, label %73
    i32 -2, label %80
  ]

30:                                               ; preds = %28
  %31 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %32 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !44
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = call ptr @CTX_wm_manager(ptr noundef %0) #12
  %36 = getelementptr inbounds %struct.wmWindowManager, ptr %35, i64 0, i32 6
  %37 = load i16, ptr %36, align 2, !tbaa !45
  %38 = icmp eq i16 %37, 0
  br label %39

39:                                               ; preds = %34, %30
  %40 = phi i1 [ false, %30 ], [ %38, %34 ]
  call fastcc void @wm_window_match_init(ptr noundef %0, ptr noundef nonnull %5)
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !49
  %41 = call i32 @BKE_read_file(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  %42 = load ptr, ptr @G, align 8, !tbaa !50
  %43 = getelementptr inbounds %struct.Main, ptr %42, i64 0, i32 2
  %44 = load i8, ptr %43, align 8, !tbaa !43
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 5), align 2, !tbaa !51
  br label %48

47:                                               ; preds = %39
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 5), align 2, !tbaa !51
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !49
  br label %48

48:                                               ; preds = %47, %46
  %49 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !34
  %50 = icmp eq i32 %49, %31
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = and i32 %49, -24577
  %53 = and i32 %31, 24576
  %54 = or disjoint i32 %52, %53
  store i32 %54, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !34
  br label %55

55:                                               ; preds = %51, %48
  call fastcc void @wm_window_match_do(ptr noundef %0, ptr noundef nonnull %5)
  call void @WM_check(ptr noundef %0) #12
  %56 = icmp eq i32 %41, 2
  br i1 %56, label %57, label %58

57:                                               ; preds = %55
  call fastcc void @wm_init_userdef(ptr noundef %0, i8 noundef zeroext 0)
  br label %58

58:                                               ; preds = %57, %55
  %59 = icmp ne i32 %41, 0
  %60 = select i1 %59, i1 %40, i1 false
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  call fastcc void @write_history()
  br label %62

62:                                               ; preds = %61, %58
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 16842752, ptr noundef null) #12
  %63 = call ptr @CTX_wm_manager(ptr noundef %0) #12
  %64 = getelementptr inbounds %struct.wmWindowManager, ptr %63, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !52
  call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %65) #12
  call void @ED_editors_init(ptr noundef %0) #12
  %66 = call ptr @CTX_data_main(ptr noundef %0) #12
  call void @DAG_on_visible_update(ptr noundef %66, i8 noundef zeroext 1) #12
  call void @WM_operatortype_last_properties_clear_all() #12
  %67 = call ptr @CTX_data_main(ptr noundef %0) #12
  call void @BLI_callback_exec(ptr noundef %67, ptr noundef null, i32 noundef 16) #12
  %68 = call ptr @CTX_data_main(ptr noundef %0) #12
  call void @BLI_callback_exec(ptr noundef %68, ptr noundef null, i32 noundef 9) #12
  %69 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !44
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  call void @CTX_wm_window_set(ptr noundef %0, ptr noundef null) #12
  br label %72

72:                                               ; preds = %71, %62
  call void @BKE_reset_undo() #12
  call void @BKE_write_undo(ptr noundef %0, ptr noundef nonnull @.str) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  br label %82

73:                                               ; preds = %28
  %74 = load i32, ptr %6, align 4, !tbaa !42
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = call ptr @strerror(i32 noundef %74) #12
  br label %78

78:                                               ; preds = %73, %76
  %79 = phi ptr [ %77, %76 ], [ @.str.3, %73 ]
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef %1, ptr noundef %79) #12
  br label %82

80:                                               ; preds = %28
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.4, ptr noundef %1) #12
  br label %82

81:                                               ; preds = %28
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %1) #12
  br label %82

82:                                               ; preds = %80, %81, %78, %72
  %83 = phi i8 [ 1, %72 ], [ 0, %78 ], [ 0, %80 ], [ 0, %81 ]
  call void @WM_cursor_wait(i8 noundef zeroext 0) #12
  ret i8 %83
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #2

declare void @BLI_callback_exec(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_zoom_cache_reset() local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @wm_window_match_init(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @G, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !53
  %5 = load ptr, ptr @G, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = tail call ptr @CTX_wm_window(ptr noundef %0) #12
  %8 = load ptr, ptr %1, align 8, !tbaa !54
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %13

10:                                               ; preds = %18, %13
  %11 = load ptr, ptr %14, align 8, !tbaa !54
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13, !llvm.loop !55

13:                                               ; preds = %2, %10
  %14 = phi ptr [ %11, %10 ], [ %8, %2 ]
  tail call void @WM_jobs_kill_all(ptr noundef nonnull %14) #12
  %15 = getelementptr inbounds %struct.wmWindowManager, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = icmp eq ptr %16, null
  br i1 %17, label %10, label %18

18:                                               ; preds = %13, %18
  %19 = phi ptr [ %24, %18 ], [ %16, %13 ]
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef nonnull %19) #12
  %20 = getelementptr inbounds %struct.wmWindow, ptr %19, i64 0, i32 28
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %20) #12
  %21 = getelementptr inbounds %struct.wmWindow, ptr %19, i64 0, i32 29
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %21) #12
  %22 = getelementptr inbounds %struct.wmWindow, ptr %19, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  tail call void @ED_screen_exit(ptr noundef %0, ptr noundef nonnull %19, ptr noundef %23) #12
  %24 = load ptr, ptr %19, align 8, !tbaa !54
  %25 = icmp eq ptr %24, null
  br i1 %25, label %10, label %18, !llvm.loop !60

26:                                               ; preds = %10, %2
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %7) #12
  tail call void @ED_editors_exit(ptr noundef %0) #12
  ret void
}

declare i32 @BKE_read_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @wm_window_match_do(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  %5 = load ptr, ptr @G, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 40
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = icmp eq ptr %7, null
  br i1 %4, label %9, label %11

9:                                                ; preds = %2
  br i1 %8, label %10, label %161

10:                                               ; preds = %9
  tail call void @wm_add_default(ptr noundef %0) #12
  br label %161

11:                                               ; preds = %2
  br i1 %8, label %12, label %56

12:                                               ; preds = %11
  %13 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !62
  %14 = and i32 %13, 1024
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %52

16:                                               ; preds = %12
  %17 = tail call ptr @CTX_wm_screen(ptr noundef %0) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %52, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %1, align 8, !tbaa !54
  %21 = icmp eq ptr %20, null
  br i1 %21, label %52, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.bScreen, ptr %17, i64 0, i32 11
  br label %27

24:                                               ; preds = %38, %27
  %25 = load ptr, ptr %28, align 8, !tbaa !54
  %26 = icmp eq ptr %25, null
  br i1 %26, label %52, label %27, !llvm.loop !63

27:                                               ; preds = %22, %24
  %28 = phi ptr [ %20, %22 ], [ %25, %24 ]
  %29 = getelementptr inbounds %struct.wmWindowManager, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  %31 = icmp eq ptr %30, null
  br i1 %31, label %24, label %32

32:                                               ; preds = %27, %38
  %33 = phi ptr [ %50, %38 ], [ %30, %27 ]
  %34 = load i16, ptr %23, align 4, !tbaa !64
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call ptr @ED_screen_duplicate(ptr noundef nonnull %33, ptr noundef nonnull %17) #12
  br label %38

38:                                               ; preds = %32, %36
  %39 = phi ptr [ %37, %36 ], [ %17, %32 ]
  %40 = getelementptr inbounds %struct.wmWindow, ptr %33, i64 0, i32 3
  store ptr %39, ptr %40, align 8, !tbaa !58
  %41 = getelementptr inbounds %struct.wmWindow, ptr %33, i64 0, i32 5
  %42 = getelementptr inbounds %struct.wmWindow, ptr %33, i64 0, i32 3
  %43 = getelementptr inbounds %struct.ID, ptr %39, i64 0, i32 4, i64 2
  %44 = tail call ptr @BLI_strncpy(ptr noundef nonnull %41, ptr noundef nonnull %43, i64 noundef 64) #12
  %45 = getelementptr inbounds %struct.wmWindow, ptr %33, i64 0, i32 18
  %46 = load i32, ptr %45, align 8, !tbaa !66
  %47 = trunc i32 %46 to i16
  %48 = load ptr, ptr %42, align 8, !tbaa !58
  %49 = getelementptr inbounds %struct.bScreen, ptr %48, i64 0, i32 11
  store i16 %47, ptr %49, align 4, !tbaa !64
  %50 = load ptr, ptr %33, align 8, !tbaa !54
  %51 = icmp eq ptr %50, null
  br i1 %51, label %24, label %32, !llvm.loop !67

52:                                               ; preds = %24, %19, %16, %12
  %53 = load ptr, ptr @G, align 8, !tbaa !50
  %54 = getelementptr inbounds %struct.Main, ptr %53, i64 0, i32 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %54, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !53
  %55 = load ptr, ptr %54, align 8, !tbaa !68
  tail call void @ED_screens_initialize(ptr noundef %55) #12
  br label %161

56:                                               ; preds = %11
  %57 = getelementptr inbounds %struct.wmWindowManager, ptr %7, i64 0, i32 13
  %58 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %57, ptr noundef nonnull align 8 dereferenceable(16) %58, i64 16, i1 false), !tbaa.struct !53
  %59 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 15
  %60 = load ptr, ptr %59, align 8, !tbaa !71
  %61 = getelementptr inbounds %struct.wmWindowManager, ptr %7, i64 0, i32 15
  store ptr %60, ptr %61, align 8, !tbaa !71
  %62 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 14
  %63 = load ptr, ptr %62, align 8, !tbaa !72
  %64 = getelementptr inbounds %struct.wmWindowManager, ptr %7, i64 0, i32 14
  store ptr %63, ptr %64, align 8, !tbaa !72
  %65 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 16
  %66 = load ptr, ptr %65, align 8, !tbaa !73
  %67 = getelementptr inbounds %struct.wmWindowManager, ptr %7, i64 0, i32 16
  store ptr %66, ptr %67, align 8, !tbaa !73
  %68 = getelementptr inbounds %struct.wmWindowManager, ptr %7, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %58, i8 0, i64 40, i1 false)
  store i32 0, ptr %68, align 8, !tbaa !74
  %69 = getelementptr inbounds %struct.wmWindowManager, ptr %7, i64 0, i32 2
  store ptr null, ptr %69, align 8, !tbaa !75
  %70 = getelementptr inbounds %struct.wmWindowManager, ptr %7, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !54
  %72 = icmp eq ptr %71, null
  br i1 %72, label %128, label %73

73:                                               ; preds = %56
  %74 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 3
  br label %79

75:                                               ; preds = %122, %79
  %76 = phi i8 [ %81, %79 ], [ %123, %122 ]
  %77 = load ptr, ptr %80, align 8, !tbaa !54
  %78 = icmp eq ptr %77, null
  br i1 %78, label %126, label %79, !llvm.loop !76

79:                                               ; preds = %73, %75
  %80 = phi ptr [ %71, %73 ], [ %77, %75 ]
  %81 = phi i8 [ 0, %73 ], [ %76, %75 ]
  %82 = load ptr, ptr %74, align 8, !tbaa !54
  %83 = icmp eq ptr %82, null
  br i1 %83, label %75, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.wmWindow, ptr %80, i64 0, i32 18
  %86 = getelementptr inbounds %struct.wmWindow, ptr %80, i64 0, i32 2
  %87 = getelementptr inbounds %struct.wmWindow, ptr %80, i64 0, i32 12
  %88 = getelementptr inbounds %struct.wmWindow, ptr %80, i64 0, i32 21
  %89 = getelementptr inbounds %struct.wmWindow, ptr %80, i64 0, i32 8
  %90 = getelementptr inbounds %struct.wmWindow, ptr %80, i64 0, i32 9
  %91 = getelementptr inbounds %struct.wmWindow, ptr %80, i64 0, i32 6
  %92 = getelementptr inbounds %struct.wmWindow, ptr %80, i64 0, i32 7
  br label %93

93:                                               ; preds = %84, %122
  %94 = phi ptr [ %82, %84 ], [ %124, %122 ]
  %95 = phi i8 [ %81, %84 ], [ %123, %122 ]
  %96 = getelementptr inbounds %struct.wmWindow, ptr %94, i64 0, i32 18
  %97 = load i32, ptr %96, align 8, !tbaa !66
  %98 = load i32, ptr %85, align 8, !tbaa !66
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %122

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.wmWindow, ptr %94, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !77
  store ptr %102, ptr %86, align 8, !tbaa !77
  %103 = getelementptr inbounds %struct.wmWindow, ptr %94, i64 0, i32 12
  %104 = load i16, ptr %103, align 4, !tbaa !78
  store i16 %104, ptr %87, align 4, !tbaa !78
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  store ptr %80, ptr %69, align 8, !tbaa !75
  br label %107

107:                                              ; preds = %106, %100
  %108 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !44
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  tail call void @GHOST_SetWindowUserData(ptr noundef %102, ptr noundef nonnull %80) #12
  br label %111

111:                                              ; preds = %107, %110
  store ptr null, ptr %101, align 8, !tbaa !77
  %112 = getelementptr inbounds %struct.wmWindow, ptr %94, i64 0, i32 21
  %113 = load ptr, ptr %112, align 8, !tbaa !79
  store ptr %113, ptr %88, align 8, !tbaa !79
  store ptr null, ptr %112, align 8, !tbaa !79
  %114 = getelementptr inbounds %struct.wmWindow, ptr %94, i64 0, i32 8
  %115 = load i16, ptr %114, align 4, !tbaa !80
  store i16 %115, ptr %89, align 4, !tbaa !80
  %116 = getelementptr inbounds %struct.wmWindow, ptr %94, i64 0, i32 9
  %117 = load i16, ptr %116, align 2, !tbaa !81
  store i16 %117, ptr %90, align 2, !tbaa !81
  %118 = getelementptr inbounds %struct.wmWindow, ptr %94, i64 0, i32 6
  %119 = load i16, ptr %118, align 8, !tbaa !82
  store i16 %119, ptr %91, align 8, !tbaa !82
  %120 = getelementptr inbounds %struct.wmWindow, ptr %94, i64 0, i32 7
  %121 = load i16, ptr %120, align 2, !tbaa !83
  store i16 %121, ptr %92, align 2, !tbaa !83
  br label %122

122:                                              ; preds = %93, %111
  %123 = phi i8 [ 1, %111 ], [ %95, %93 ]
  %124 = load ptr, ptr %94, align 8, !tbaa !54
  %125 = icmp eq ptr %124, null
  br i1 %125, label %75, label %93, !llvm.loop !84

126:                                              ; preds = %75
  %127 = icmp eq i8 %76, 0
  br i1 %127, label %128, label %160

128:                                              ; preds = %56, %126
  %129 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !52
  %131 = load ptr, ptr %70, align 8, !tbaa !52
  %132 = getelementptr inbounds %struct.wmWindow, ptr %130, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !77
  %134 = getelementptr inbounds %struct.wmWindow, ptr %131, i64 0, i32 2
  store ptr %133, ptr %134, align 8, !tbaa !77
  %135 = getelementptr inbounds %struct.wmWindow, ptr %130, i64 0, i32 12
  %136 = load i16, ptr %135, align 4, !tbaa !78
  %137 = getelementptr inbounds %struct.wmWindow, ptr %131, i64 0, i32 12
  store i16 %136, ptr %137, align 4, !tbaa !78
  %138 = icmp eq i16 %136, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %128
  store ptr %131, ptr %69, align 8, !tbaa !75
  br label %140

140:                                              ; preds = %139, %128
  %141 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !44
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  tail call void @GHOST_SetWindowUserData(ptr noundef %133, ptr noundef %131) #12
  br label %144

144:                                              ; preds = %140, %143
  store ptr null, ptr %132, align 8, !tbaa !77
  %145 = getelementptr inbounds %struct.wmWindow, ptr %130, i64 0, i32 21
  %146 = load ptr, ptr %145, align 8, !tbaa !79
  %147 = getelementptr inbounds %struct.wmWindow, ptr %131, i64 0, i32 21
  store ptr %146, ptr %147, align 8, !tbaa !79
  store ptr null, ptr %145, align 8, !tbaa !79
  %148 = getelementptr inbounds %struct.wmWindow, ptr %130, i64 0, i32 8
  %149 = load i16, ptr %148, align 4, !tbaa !80
  %150 = getelementptr inbounds %struct.wmWindow, ptr %131, i64 0, i32 8
  store i16 %149, ptr %150, align 4, !tbaa !80
  %151 = getelementptr inbounds %struct.wmWindow, ptr %130, i64 0, i32 9
  %152 = load i16, ptr %151, align 2, !tbaa !81
  %153 = getelementptr inbounds %struct.wmWindow, ptr %131, i64 0, i32 9
  store i16 %152, ptr %153, align 2, !tbaa !81
  %154 = getelementptr inbounds %struct.wmWindow, ptr %130, i64 0, i32 6
  %155 = load i16, ptr %154, align 8, !tbaa !82
  %156 = getelementptr inbounds %struct.wmWindow, ptr %131, i64 0, i32 6
  store i16 %155, ptr %156, align 8, !tbaa !82
  %157 = getelementptr inbounds %struct.wmWindow, ptr %130, i64 0, i32 7
  %158 = load i16, ptr %157, align 2, !tbaa !83
  %159 = getelementptr inbounds %struct.wmWindow, ptr %131, i64 0, i32 7
  store i16 %158, ptr %159, align 2, !tbaa !83
  br label %160

160:                                              ; preds = %144, %126
  tail call void @wm_close_and_free_all(ptr noundef %0, ptr noundef nonnull %1) #12
  br label %161

161:                                              ; preds = %52, %160, %10, %9
  ret void
}

declare void @WM_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @wm_init_userdef(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  %4 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 63), align 8, !tbaa !85
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 20
  tail call void @MEM_CacheLimiter_set_maximum(i64 noundef %6) #12
  tail call void @sound_init(ptr noundef %3) #12
  %7 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !90
  %8 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4
  %9 = and i32 %8, -1025
  %10 = lshr i32 %7, 13
  %11 = and i32 %10, 1024
  %12 = or disjoint i32 %9, %11
  store i32 %12, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !62
  %13 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !34
  %14 = and i32 %13, 16384
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = and i32 %7, 4194304
  %18 = icmp eq i32 %17, 0
  %19 = or i32 %13, 8192
  %20 = and i32 %13, -24577
  %21 = select i1 %18, i32 %19, i32 %20
  store i32 %21, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !34
  br label %22

22:                                               ; preds = %16, %2
  %23 = icmp eq i8 %1, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  tail call void @BLO_update_defaults_userpref_blend() #12
  br label %25

25:                                               ; preds = %24, %22
  tail call void @BLI_temp_dir_init(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 5)) #12
  tail call void @BKE_userdef_state() #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @write_history() unnamed_addr #0 {
  %1 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %1) #12
  %2 = load ptr, ptr @G, align 8, !tbaa !50
  %3 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !43
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %64, label %6

6:                                                ; preds = %0
  %7 = tail call ptr @BLI_get_folder_create(i32 noundef 31, ptr noundef null) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %64, label %9

9:                                                ; preds = %6
  call void @BLI_make_file_string(ptr noundef nonnull @.str.16, ptr noundef nonnull %1, ptr noundef nonnull %7, ptr noundef nonnull @.str.17) #12
  %10 = load ptr, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 6), align 8, !tbaa !91
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.RecentFile, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !92
  %15 = load ptr, ptr @G, align 8, !tbaa !50
  %16 = getelementptr inbounds %struct.Main, ptr %15, i64 0, i32 2
  %17 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %16) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %64, label %19

19:                                               ; preds = %12, %9
  %20 = call ptr @BLI_fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.35) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %61, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !54
  %24 = call ptr %23(i64 noundef 24, ptr noundef nonnull @.str.18) #12
  %25 = load ptr, ptr @G, align 8, !tbaa !50
  %26 = getelementptr inbounds %struct.Main, ptr %25, i64 0, i32 2
  %27 = call ptr @BLI_strdup(ptr noundef nonnull %26) #12
  %28 = getelementptr inbounds %struct.RecentFile, ptr %24, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !92
  call void @BLI_addhead(ptr noundef nonnull getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 6), ptr noundef %24) #12
  %29 = load ptr, ptr %28, align 8, !tbaa !92
  %30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %20, ptr noundef nonnull @.str.36, ptr noundef %29)
  %31 = load ptr, ptr %24, align 8, !tbaa !94
  %32 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 70), align 2, !tbaa !95
  %33 = icmp sgt i16 %32, 1
  %34 = icmp ne ptr %31, null
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %59

36:                                               ; preds = %22, %51
  %37 = phi i32 [ %53, %51 ], [ 1, %22 ]
  %38 = phi ptr [ %52, %51 ], [ %31, %22 ]
  %39 = getelementptr inbounds %struct.RecentFile, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !92
  %41 = load ptr, ptr @G, align 8, !tbaa !50
  %42 = getelementptr inbounds %struct.Main, ptr %41, i64 0, i32 2
  %43 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %40, ptr noundef nonnull dereferenceable(1) %42) #14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %20, ptr noundef nonnull @.str.36, ptr noundef %40)
  %47 = load ptr, ptr %38, align 8, !tbaa !94
  br label %51

48:                                               ; preds = %36
  %49 = load ptr, ptr %38, align 8, !tbaa !94
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %50(ptr noundef %40) #12
  call void @BLI_freelinkN(ptr noundef nonnull getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 6), ptr noundef nonnull %38) #12
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi ptr [ %47, %45 ], [ %49, %48 ]
  %53 = add nuw nsw i32 %37, 1
  %54 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 70), align 2, !tbaa !95
  %55 = sext i16 %54 to i32
  %56 = icmp slt i32 %53, %55
  %57 = icmp ne ptr %52, null
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %36, label %59, !llvm.loop !96

59:                                               ; preds = %51, %22
  %60 = call i32 @fclose(ptr noundef nonnull %20)
  br label %61

61:                                               ; preds = %59, %19
  %62 = load ptr, ptr @G, align 8, !tbaa !50
  %63 = getelementptr inbounds %struct.Main, ptr %62, i64 0, i32 2
  call void @GHOST_addToSystemRecentFiles(ptr noundef nonnull %63) #12
  br label %64

64:                                               ; preds = %12, %61, %6, %0
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %1) #12
  ret void
}

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @CTX_wm_window_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_editors_init(ptr noundef) local_unnamed_addr #2

declare void @DAG_on_visible_update(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @WM_operatortype_last_properties_clear_all() local_unnamed_addr #2

declare void @BKE_reset_undo() local_unnamed_addr #2

declare void @BKE_write_undo(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @wm_homefile_read(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #12
  %8 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  tail call void @BLI_callback_exec(ptr noundef %8, ptr noundef null, i32 noundef 8) #12
  tail call void @UI_view2d_zoom_cache_reset() #12
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !49
  %9 = icmp eq i8 %2, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %4
  %11 = tail call ptr @BLI_get_folder(i32 noundef 31, ptr noundef null) #12
  %12 = icmp eq ptr %3, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %3, i64 noundef 1024) #12
  %15 = icmp eq ptr %11, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @G, align 8, !tbaa !50
  %18 = getelementptr inbounds %struct.Main, ptr %17, i64 0, i32 2
  call void @BLI_make_file_string(ptr noundef nonnull %18, ptr noundef nonnull %7, ptr noundef nonnull %11, ptr noundef nonnull @.str.7) #12
  br label %28

19:                                               ; preds = %13
  store i8 0, ptr %7, align 16, !tbaa !43
  br label %28

20:                                               ; preds = %10
  %21 = icmp eq ptr %11, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr @G, align 8, !tbaa !50
  %24 = getelementptr inbounds %struct.Main, ptr %23, i64 0, i32 2
  call void @BLI_make_file_string(ptr noundef nonnull %24, ptr noundef nonnull %6, ptr noundef nonnull %11, ptr noundef nonnull @.str.8) #12
  %25 = load ptr, ptr @G, align 8, !tbaa !50
  %26 = getelementptr inbounds %struct.Main, ptr %25, i64 0, i32 2
  call void @BLI_make_file_string(ptr noundef nonnull %26, ptr noundef nonnull %7, ptr noundef nonnull %11, ptr noundef nonnull @.str.7) #12
  br label %28

27:                                               ; preds = %20
  store i8 0, ptr %6, align 16, !tbaa !43
  store i8 0, ptr %7, align 16, !tbaa !43
  br label %28

28:                                               ; preds = %19, %16, %27, %22, %4
  %29 = phi i1 [ false, %4 ], [ true, %16 ], [ true, %19 ], [ true, %22 ], [ false, %27 ]
  call fastcc void @wm_window_match_init(ptr noundef %0, ptr noundef nonnull %5)
  br i1 %29, label %30, label %47

30:                                               ; preds = %28
  %31 = call i32 @BLI_access(ptr noundef nonnull %6, i32 noundef 4) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = call i32 @BKE_read_file(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null) #12
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  br label %37

37:                                               ; preds = %33, %30
  %38 = phi i32 [ %36, %33 ], [ 0, %30 ]
  %39 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !61
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !97
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull %6)
  br label %47

47:                                               ; preds = %41, %45, %37, %28
  %48 = phi i32 [ 0, %28 ], [ %38, %37 ], [ 0, %45 ], [ 0, %41 ]
  %49 = icmp eq i32 %48, 0
  %50 = icmp ne ptr %3, null
  %51 = icmp ne ptr %1, null
  %52 = and i1 %51, %50
  %53 = and i1 %52, %49
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef nonnull %1, i32 noundef 32, ptr noundef nonnull @.str.10, ptr noundef nonnull %3) #12
  br label %55

55:                                               ; preds = %54, %47
  br i1 %49, label %56, label %63

56:                                               ; preds = %55
  %57 = load i32, ptr @datatoc_startup_blend_size, align 4, !tbaa !42
  %58 = call zeroext i8 @BKE_read_file_from_memory(ptr noundef %0, ptr noundef nonnull @datatoc_startup_blend, i32 noundef %57, ptr noundef null, i8 noundef zeroext 1) #12
  %59 = load ptr, ptr %5, align 8, !tbaa !61
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  call void @wm_clear_default_size(ptr noundef %0) #12
  br label %62

62:                                               ; preds = %61, %56
  call void @BLI_temp_dir_init(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 5)) #12
  br label %63

63:                                               ; preds = %62, %55
  br i1 %29, label %64, label %72

64:                                               ; preds = %63
  %65 = call i32 @BLI_exists(ptr noundef nonnull %7) #12
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = call i32 @BKE_read_file_userdef(ptr noundef nonnull %7, ptr noundef null) #12
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef nonnull %7)
  br label %72

72:                                               ; preds = %67, %70, %64, %63
  %73 = phi i8 [ 1, %63 ], [ 1, %64 ], [ 0, %70 ], [ 1, %67 ]
  %74 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !62
  %75 = and i32 %74, -16777217
  store i32 %75, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !62
  call fastcc void @wm_init_userdef(ptr noundef %0, i8 noundef zeroext %73)
  call fastcc void @wm_window_match_do(ptr noundef %0, ptr noundef nonnull %5)
  call void @WM_check(ptr noundef %0) #12
  %76 = load ptr, ptr @G, align 8, !tbaa !50
  %77 = getelementptr inbounds %struct.Main, ptr %76, i64 0, i32 2
  store i8 0, ptr %77, align 8, !tbaa !43
  %78 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !44
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = call i32 @GPU_default_lights() #12
  br label %82

82:                                               ; preds = %80, %72
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 5), align 2, !tbaa !51
  %83 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !62
  %84 = and i32 %83, -5
  store i32 %84, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !62
  call void @BKE_reset_undo() #12
  call void @BKE_write_undo(ptr noundef %0, ptr noundef nonnull @.str) #12
  call void @ED_editors_init(ptr noundef %0) #12
  %85 = call ptr @CTX_data_main(ptr noundef %0) #12
  call void @DAG_on_visible_update(ptr noundef %85, i8 noundef zeroext 1) #12
  call void @WM_operatortype_last_properties_clear_all() #12
  %86 = call ptr @CTX_data_main(ptr noundef %0) #12
  call void @BLI_callback_exec(ptr noundef %86, ptr noundef null, i32 noundef 16) #12
  %87 = call ptr @CTX_data_main(ptr noundef %0) #12
  call void @BLI_callback_exec(ptr noundef %87, ptr noundef null, i32 noundef 9) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 16842752, ptr noundef null) #12
  %88 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !44
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  call void @CTX_wm_window_set(ptr noundef %0, ptr noundef null) #12
  br label %91

91:                                               ; preds = %90, %82
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  ret i32 1
}

declare ptr @BLI_get_folder(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLI_make_file_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_access(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare zeroext i8 @BKE_read_file_from_memory(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @wm_clear_default_size(ptr noundef) local_unnamed_addr #2

declare void @BLI_temp_dir_init(ptr noundef) local_unnamed_addr #2

declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #2

declare i32 @BKE_read_file_userdef(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @GPU_default_lights() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @wm_history_read_exec(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  tail call void @ED_file_read_bookmarks() #12
  tail call void @wm_read_history()
  ret i32 4
}

declare void @ED_file_read_bookmarks() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @wm_read_history() local_unnamed_addr #0 {
  %1 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %1) #12
  %2 = tail call ptr @BLI_get_folder(i32 noundef 31, ptr noundef null) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %0
  call void @BLI_make_file_string(ptr noundef nonnull @.str.16, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull @.str.17) #12
  %5 = call ptr @BLI_file_read_as_lines(ptr noundef nonnull %1) #12
  %6 = icmp ne ptr %5, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 6), i8 0, i64 16, i1 false)
  %7 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 70), align 2
  %8 = icmp sgt i16 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %34

10:                                               ; preds = %4, %26
  %11 = phi ptr [ %28, %26 ], [ %5, %4 ]
  %12 = phi i32 [ %27, %26 ], [ 0, %4 ]
  %13 = getelementptr inbounds %struct.LinkNode, ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  %15 = load i8, ptr %14, align 1, !tbaa !43
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %10
  %18 = call i32 @BLI_exists(ptr noundef nonnull %14) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !54
  %22 = call ptr %21(i64 noundef 24, ptr noundef nonnull @.str.18) #12
  call void @BLI_addtail(ptr noundef nonnull getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 6), ptr noundef %22) #12
  %23 = call ptr @BLI_strdup(ptr noundef nonnull %14) #12
  %24 = getelementptr inbounds %struct.RecentFile, ptr %22, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !92
  %25 = add nsw i32 %12, 1
  br label %26

26:                                               ; preds = %10, %17, %20
  %27 = phi i32 [ %25, %20 ], [ %12, %17 ], [ %12, %10 ]
  %28 = load ptr, ptr %11, align 8, !tbaa !100
  %29 = icmp ne ptr %28, null
  %30 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 70), align 2
  %31 = sext i16 %30 to i32
  %32 = icmp slt i32 %27, %31
  %33 = select i1 %29, i1 %32, i1 false
  br i1 %33, label %10, label %34, !llvm.loop !101

34:                                               ; preds = %26, %4
  call void @BLI_file_free_lines(ptr noundef %5) #12
  br label %35

35:                                               ; preds = %0, %34
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %1) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @wm_homefile_read_exec(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !102
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !104
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(28) @.str.12) #14
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #12
  br i1 %9, label %47, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !107
  %14 = tail call ptr @RNA_struct_find_property(ptr noundef %13, ptr noundef nonnull @.str.13) #12
  %15 = load ptr, ptr %12, align 8, !tbaa !107
  %16 = tail call ptr @RNA_struct_find_property(ptr noundef %15, ptr noundef nonnull @.str.14) #12
  %17 = load ptr, ptr %12, align 8, !tbaa !107
  %18 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %17, ptr noundef %16) #12
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %11
  %21 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8
  %22 = lshr i32 %21, 23
  %23 = and i32 %22, 1
  %24 = xor i32 %23, 1
  %25 = load ptr, ptr %12, align 8, !tbaa !107
  tail call void @RNA_property_boolean_set(ptr noundef %25, ptr noundef %16, i32 noundef %24) #12
  br label %26

26:                                               ; preds = %11, %20
  %27 = load ptr, ptr %12, align 8, !tbaa !107
  %28 = tail call i32 @RNA_boolean_get(ptr noundef %27, ptr noundef nonnull @.str.14) #12
  %29 = icmp eq i32 %28, 0
  %30 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4
  %31 = and i32 %30, -1025
  %32 = select i1 %29, i32 1024, i32 0
  %33 = or disjoint i32 %31, %32
  store i32 %33, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !62
  %34 = load ptr, ptr %12, align 8, !tbaa !107
  %35 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %34, ptr noundef %14) #12
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %26
  %38 = load ptr, ptr %12, align 8, !tbaa !107
  call void @RNA_property_string_get(ptr noundef %38, ptr noundef %14, ptr noundef nonnull %3) #12
  %39 = call i32 @BLI_access(ptr noundef nonnull %3, i32 noundef 4) #12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !108
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %43, i32 noundef 32, ptr noundef nonnull @.str.15, ptr noundef nonnull %3) #12
  br label %44

44:                                               ; preds = %26, %37, %41
  %45 = phi ptr [ %3, %41 ], [ %3, %37 ], [ null, %26 ]
  %46 = phi i1 [ false, %41 ], [ true, %37 ], [ true, %26 ]
  br i1 %46, label %47, label %52

47:                                               ; preds = %44, %2
  %48 = phi ptr [ null, %2 ], [ %45, %44 ]
  %49 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %50 = load ptr, ptr %49, align 8, !tbaa !108
  %51 = call i32 @wm_homefile_read(ptr noundef %0, ptr noundef %50, i8 noundef zeroext %10, ptr noundef %48)
  br label %52

52:                                               ; preds = %44, %47
  %53 = phi i32 [ 4, %47 ], [ 2, %44 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #12
  ret i32 %53
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @wm_open_init_load_ui(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  %5 = tail call ptr @RNA_struct_find_property(ptr noundef %4, ptr noundef nonnull @.str.14) #12
  %6 = load ptr, ptr %3, align 8, !tbaa !107
  %7 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %6, ptr noundef %5) #12
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
  %18 = load ptr, ptr %3, align 8, !tbaa !107
  tail call void @RNA_property_boolean_set(ptr noundef %18, ptr noundef %5, i32 noundef %17) #12
  br label %19

19:                                               ; preds = %9, %2
  ret void
}

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_file_read_as_lines(ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #2

declare void @BLI_file_free_lines(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @write_crash_blend() local_unnamed_addr #0 {
  %1 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %1) #12
  %2 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !62
  %3 = and i32 %2, -33554433
  %4 = load ptr, ptr @G, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 2
  %6 = call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef nonnull %5, i64 noundef 1024) #12
  %7 = call zeroext i8 @BLI_replace_extension(ptr noundef nonnull %1, i64 noundef 1024, ptr noundef nonnull @.str.19) #12
  %8 = load ptr, ptr @G, align 8, !tbaa !50
  %9 = call i32 @BLO_write_file(ptr noundef %8, ptr noundef nonnull %1, i32 noundef %3, ptr noundef null, ptr noundef null) #12
  %10 = icmp ne i32 %9, 0
  %11 = select i1 %10, ptr @.str.20, ptr @.str.21
  %12 = zext i1 %10 to i8
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %1) #12
  ret i8 %12
}

declare zeroext i8 @BLI_replace_extension(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLO_write_file(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @wm_file_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [256 x i8], align 16
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %7 = trunc i64 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @BKE_report(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.22) #12
  br label %164

10:                                               ; preds = %4
  %11 = icmp sgt i32 %7, 1023
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void @BKE_report(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.23) #12
  br label %164

13:                                               ; preds = %10
  %14 = tail call i32 @BLI_exists(ptr noundef %1) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = tail call zeroext i8 @BLI_file_is_writable(ptr noundef %1) #12
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.24, ptr noundef %1) #12
  br label %164

20:                                               ; preds = %16, %13
  %21 = load ptr, ptr @G, align 8, !tbaa !50
  %22 = getelementptr inbounds %struct.Main, ptr %21, i64 0, i32 12
  br label %23

23:                                               ; preds = %27, %20
  %24 = phi ptr [ %22, %20 ], [ %25, %27 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !54
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Library, ptr %25, i64 0, i32 4
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) %1) #14
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %23, !llvm.loop !109

31:                                               ; preds = %27
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.25, ptr noundef %1) #12
  br label %164

32:                                               ; preds = %23
  %33 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !90
  %34 = and i32 %33, 65536
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %106, label %36

36:                                               ; preds = %32
  %37 = tail call i32 @BLI_thread_is_main() #12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %106, label %39

39:                                               ; preds = %36
  %40 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %41 = tail call ptr @CTX_wm_screen(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %5, ptr noundef nonnull align 16 dereferenceable(256) @__const.blend_file_thumb.err_out, i64 256, i1 false)
  %42 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !44
  %43 = icmp ne i8 %42, 0
  %44 = icmp eq ptr %40, null
  %45 = or i1 %44, %43
  br i1 %45, label %103, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.Scene, ptr %40, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !110
  %49 = icmp eq ptr %48, null
  %50 = icmp ne ptr %41, null
  %51 = and i1 %50, %49
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = tail call ptr @BKE_screen_find_big_area(ptr noundef nonnull %41, i32 noundef 1, i16 noundef signext 0) #12
  %54 = tail call ptr @BKE_area_find_region_type(ptr noundef %53, i32 noundef 0) #12
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.ScrArea, ptr %53, i64 0, i32 19
  %58 = load ptr, ptr %57, align 8, !tbaa !129
  br label %59

59:                                               ; preds = %56, %52, %46
  %60 = phi ptr [ %54, %56 ], [ null, %52 ], [ null, %46 ]
  %61 = phi ptr [ %58, %56 ], [ null, %52 ], [ null, %46 ]
  %62 = load ptr, ptr %47, align 8, !tbaa !110
  %63 = icmp eq ptr %62, null
  %64 = icmp eq ptr %61, null
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %103, label %66

66:                                               ; preds = %59
  br i1 %63, label %69, label %67

67:                                               ; preds = %66
  %68 = call ptr @ED_view3d_draw_offscreen_imbuf_simple(ptr noundef %40, ptr noundef nonnull %62, i32 noundef 256, i32 noundef 256, i32 noundef 1, i32 noundef 3, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %5) #12
  br label %71

69:                                               ; preds = %66
  %70 = call ptr @ED_view3d_draw_offscreen_imbuf(ptr noundef %40, ptr noundef %61, ptr noundef %60, i32 noundef 256, i32 noundef 256, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %5) #12
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi ptr [ %68, %67 ], [ %70, %69 ]
  %73 = icmp eq ptr %72, null
  br i1 %73, label %100, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.Scene, ptr %40, i64 0, i32 22, i32 33
  %76 = load i32, ptr %75, align 4, !tbaa !131
  %77 = sitofp i32 %76 to float
  %78 = getelementptr inbounds %struct.Scene, ptr %40, i64 0, i32 22, i32 63
  %79 = load float, ptr %78, align 4, !tbaa !132
  %80 = fmul float %79, %77
  %81 = getelementptr inbounds %struct.Scene, ptr %40, i64 0, i32 22, i32 34
  %82 = load i32, ptr %81, align 8, !tbaa !133
  %83 = sitofp i32 %82 to float
  %84 = getelementptr inbounds %struct.Scene, ptr %40, i64 0, i32 22, i32 64
  %85 = load float, ptr %84, align 8, !tbaa !134
  %86 = fmul float %85, %83
  %87 = fdiv float %80, %86
  %88 = call ptr @IMB_scaleImBuf(ptr noundef nonnull %72, i32 noundef 128, i32 noundef 128) #12
  %89 = getelementptr inbounds %struct.ImBuf, ptr %72, i64 0, i32 8
  %90 = load ptr, ptr %89, align 8, !tbaa !135
  %91 = getelementptr inbounds %struct.ImBuf, ptr %72, i64 0, i32 2
  %92 = load i32, ptr %91, align 8, !tbaa !138
  %93 = getelementptr inbounds %struct.ImBuf, ptr %72, i64 0, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !139
  call void @IMB_overlayblend_thumb(ptr noundef %90, i32 noundef %92, i32 noundef %94, float noundef %87) #12
  %95 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !54
  %96 = call ptr %95(i64 noundef 65544, ptr noundef nonnull @.str.37) #12
  store i32 128, ptr %96, align 4, !tbaa !42
  %97 = getelementptr inbounds i32, ptr %96, i64 1
  store i32 128, ptr %97, align 4, !tbaa !42
  %98 = getelementptr inbounds i32, ptr %96, i64 2
  %99 = load ptr, ptr %89, align 8, !tbaa !135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(65536) %98, ptr noundef nonnull align 4 dereferenceable(65536) %99, i64 65536, i1 false)
  br label %103

100:                                              ; preds = %71
  %101 = load ptr, ptr @stderr, align 8, !tbaa !54
  %102 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef nonnull @.str.38, ptr noundef nonnull %5) #15
  br label %103

103:                                              ; preds = %74, %100, %39, %59
  %104 = phi ptr [ null, %39 ], [ null, %59 ], [ %96, %74 ], [ null, %100 ]
  %105 = phi ptr [ null, %39 ], [ null, %59 ], [ %72, %74 ], [ %72, %100 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #12
  br label %106

106:                                              ; preds = %103, %36, %32
  %107 = phi ptr [ null, %32 ], [ null, %36 ], [ %104, %103 ]
  %108 = phi ptr [ null, %32 ], [ null, %36 ], [ %105, %103 ]
  %109 = load ptr, ptr @G, align 8, !tbaa !50
  call void @BLI_callback_exec(ptr noundef %109, ptr noundef null, i32 noundef 10) #12
  %110 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !62
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %106
  %114 = load ptr, ptr @G, align 8, !tbaa !50
  call void @packAll(ptr noundef %114, ptr noundef %3) #12
  br label %115

115:                                              ; preds = %113, %106
  call void @WM_cursor_wait(i8 noundef zeroext 1) #12
  %116 = call zeroext i8 @ED_editors_flush_edits(ptr noundef %0, i8 noundef zeroext 0) #12
  %117 = or i32 %2, 33554432
  %118 = load ptr, ptr @G, align 8, !tbaa !50
  %119 = getelementptr inbounds %struct.Main, ptr %118, i64 0, i32 2
  %120 = load i8, ptr %119, align 8, !tbaa !43
  %121 = icmp eq i8 %120, 0
  %122 = and i32 %2, 134217728
  %123 = icmp eq i32 %122, 0
  %124 = and i1 %123, %121
  br i1 %124, label %125, label %127

125:                                              ; preds = %115
  %126 = call ptr @BLI_strncpy(ptr noundef nonnull %119, ptr noundef %1, i64 noundef 1024) #12
  br label %127

127:                                              ; preds = %125, %115
  %128 = load ptr, ptr @G, align 8, !tbaa !50
  %129 = getelementptr inbounds %struct.Main, ptr %128, i64 0, i32 9
  store i16 0, ptr %129, align 8, !tbaa !140
  %130 = call ptr @CTX_data_main(ptr noundef %0) #12
  %131 = call i32 @BLO_write_file(ptr noundef %130, ptr noundef %1, i32 noundef %117, ptr noundef %3, ptr noundef %107) #12
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %155, label %133

133:                                              ; preds = %127
  br i1 %123, label %134, label %138

134:                                              ; preds = %133
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !49
  %135 = load ptr, ptr @G, align 8, !tbaa !50
  %136 = getelementptr inbounds %struct.Main, ptr %135, i64 0, i32 2
  %137 = call ptr @BLI_strncpy(ptr noundef nonnull %136, ptr noundef %1, i64 noundef 1024) #12
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 5), align 2, !tbaa !51
  br label %138

138:                                              ; preds = %134, %133
  %139 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4
  %140 = and i32 %139, -7
  %141 = and i32 %2, 6
  %142 = or disjoint i32 %140, %141
  store i32 %142, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !62
  %143 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !44
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  call fastcc void @write_history()
  br label %146

146:                                              ; preds = %145, %138
  %147 = load ptr, ptr @G, align 8, !tbaa !50
  call void @BLI_callback_exec(ptr noundef %147, ptr noundef null, i32 noundef 11) #12
  %148 = icmp eq ptr %108, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %146
  call void @IMB_thumb_delete(ptr noundef %1, i32 noundef 2) #12
  %150 = call ptr @IMB_thumb_create(ptr noundef %1, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %108) #12
  call void @IMB_freeImBuf(ptr noundef %150) #12
  br label %151

151:                                              ; preds = %149, %146
  %152 = icmp eq ptr %107, null
  br i1 %152, label %163, label %153

153:                                              ; preds = %151
  %154 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %154(ptr noundef nonnull %107) #12
  br label %163

155:                                              ; preds = %127
  %156 = icmp eq ptr %108, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %155
  call void @IMB_freeImBuf(ptr noundef nonnull %108) #12
  br label %158

158:                                              ; preds = %157, %155
  %159 = icmp eq ptr %107, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %158
  %161 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %161(ptr noundef nonnull %107) #12
  br label %162

162:                                              ; preds = %160, %158
  call void @WM_cursor_wait(i8 noundef zeroext 0) #12
  br label %164

163:                                              ; preds = %151, %153
  call void @WM_cursor_wait(i8 noundef zeroext 0) #12
  br label %164

164:                                              ; preds = %163, %162, %31, %19, %12, %9
  %165 = phi i32 [ -1, %9 ], [ -1, %12 ], [ -1, %31 ], [ 0, %163 ], [ -1, %162 ], [ -1, %19 ]
  ret i32 %165
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_file_is_writable(ptr noundef) local_unnamed_addr #2

declare i32 @BLI_thread_is_main() local_unnamed_addr #2

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

declare void @packAll(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_editors_flush_edits(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @IMB_thumb_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @IMB_thumb_create(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @wm_homefile_write_exec(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = getelementptr inbounds %struct.bScreen, ptr %9, i64 0, i32 10
  %11 = load i16, ptr %10, align 2, !tbaa !141
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @wm_window_close(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %5) #12
  br label %14

14:                                               ; preds = %13, %7, %2
  tail call void @WM_keyconfig_update(ptr noundef %4) #12
  %15 = tail call ptr @BLI_get_folder_create(i32 noundef 31, ptr noundef null) #12
  call void @BLI_make_file_string(ptr noundef nonnull @.str.16, ptr noundef nonnull %3, ptr noundef %15, ptr noundef nonnull @.str.8) #12
  %16 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull %3)
  %17 = call zeroext i8 @ED_editors_flush_edits(ptr noundef %0, i8 noundef zeroext 0) #12
  %18 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !62
  %19 = and i32 %18, -33555335
  %20 = call ptr @CTX_data_main(ptr noundef %0) #12
  %21 = or disjoint i32 %19, 512
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !108
  %24 = call i32 @BLO_write_file(ptr noundef %20, ptr noundef nonnull %3, i32 noundef %21, ptr noundef %23, ptr noundef null) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = call i32 @puts(ptr nonnull dereferenceable(1) @str.41)
  br label %30

28:                                               ; preds = %14
  %29 = call i32 @puts(ptr nonnull dereferenceable(1) @str.40)
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 5), align 2, !tbaa !51
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ 2, %26 ], [ 4, %28 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #12
  ret i32 %31
}

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare void @wm_window_close(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_keyconfig_update(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_get_folder_create(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @wm_userpref_write_exec(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #12
  tail call void @WM_keyconfig_update(ptr noundef %4) #12
  %5 = tail call ptr @BLI_get_folder_create(i32 noundef 31, ptr noundef null) #12
  call void @BLI_make_file_string(ptr noundef nonnull @.str.16, ptr noundef nonnull %3, ptr noundef %5, ptr noundef nonnull @.str.7) #12
  %6 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, ptr noundef nonnull %3)
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !108
  %9 = call i32 @BKE_write_file_userdef(ptr noundef nonnull %3, ptr noundef %8) #12
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, ptr @str.41, ptr @str.40
  %12 = select i1 %10, i32 2, i32 4
  %13 = call i32 @puts(ptr nonnull dereferenceable(1) %11)
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #12
  ret i32 %12
}

declare i32 @BKE_write_file_userdef(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @wm_autosave_location(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #12
  %3 = tail call i32 @getpid() #12
  %4 = tail call i32 @llvm.abs.i32(i32 %3, i1 true)
  %5 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %2, i64 noundef 32, ptr noundef nonnull @.str.30, i32 noundef %4) #12
  %6 = call ptr @BLI_temp_dir_base() #12
  call void @BLI_make_file_string(ptr noundef nonnull @.str.16, ptr noundef %0, ptr noundef %6, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #12
  ret void
}

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

declare ptr @BLI_temp_dir_base() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @WM_autosave_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @WM_event_remove_timer(ptr noundef %0, ptr noundef null, ptr noundef nonnull %3) #12
  store ptr null, ptr %2, align 8, !tbaa !142
  br label %6

6:                                                ; preds = %1, %5
  %7 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !90
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 4), align 8, !tbaa !143
  %12 = sitofp i32 %11 to double
  %13 = fmul double %12, 6.000000e+01
  %14 = tail call ptr @WM_event_add_timer(ptr noundef %0, ptr noundef null, i32 noundef 277, double noundef %13) #12
  store ptr %14, ptr %2, align 8, !tbaa !142
  br label %15

15:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @wm_autosave_timer_ended(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @WM_event_remove_timer(ptr noundef %0, ptr noundef null, ptr noundef nonnull %3) #12
  store ptr null, ptr %2, align 8, !tbaa !142
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @wm_autosave_timer(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = alloca [32 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #12
  %6 = getelementptr inbounds %struct.wmWindowManager, ptr %1, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !142
  tail call void @WM_event_remove_timer(ptr noundef %1, ptr noundef null, ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.wmWindowManager, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %14

11:                                               ; preds = %17
  %12 = load ptr, ptr %15, align 8, !tbaa !54
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14, !llvm.loop !144

14:                                               ; preds = %3, %11
  %15 = phi ptr [ %12, %11 ], [ %9, %3 ]
  %16 = getelementptr inbounds %struct.wmWindow, ptr %15, i64 0, i32 29
  br label %17

17:                                               ; preds = %21, %14
  %18 = phi ptr [ %16, %14 ], [ %19, %21 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  %20 = icmp eq ptr %19, null
  br i1 %20, label %11, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.wmEventHandler, ptr %19, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !145
  %24 = icmp eq ptr %23, null
  br i1 %24, label %17, label %45, !llvm.loop !147

25:                                               ; preds = %11, %3
  %26 = tail call zeroext i8 @ED_editors_flush_edits(ptr noundef %0, i8 noundef zeroext 0) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #12
  %27 = tail call i32 @getpid() #12
  %28 = tail call i32 @llvm.abs.i32(i32 %27, i1 true)
  %29 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 32, ptr noundef nonnull @.str.30, i32 noundef %28) #12
  %30 = call ptr @BLI_temp_dir_base() #12
  call void @BLI_make_file_string(ptr noundef nonnull @.str.16, ptr noundef nonnull %5, ptr noundef %30, ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #12
  %31 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !148
  %32 = and i32 %31, 8192
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %25
  %35 = call zeroext i8 @BKE_undo_save_file(ptr noundef nonnull %5) #12
  br label %41

36:                                               ; preds = %25
  %37 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !62
  %38 = and i32 %37, -33554823
  %39 = call ptr @CTX_data_main(ptr noundef %0) #12
  %40 = call i32 @BLO_write_file(ptr noundef %39, ptr noundef nonnull %5, i32 noundef %38, ptr noundef null, ptr noundef null) #12
  br label %41

41:                                               ; preds = %36, %34
  %42 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 4), align 8, !tbaa !143
  %43 = sitofp i32 %42 to double
  %44 = fmul double %43, 6.000000e+01
  br label %45

45:                                               ; preds = %21, %41
  %46 = phi double [ %44, %41 ], [ 1.000000e+01, %21 ]
  %47 = call ptr @WM_event_add_timer(ptr noundef %1, ptr noundef null, i32 noundef 277, double noundef %46) #12
  store ptr %47, ptr %6, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #12
  ret void
}

declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_undo_save_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @wm_autosave_delete() local_unnamed_addr #0 {
  %1 = alloca [32 x i8], align 16
  %2 = alloca [1024 x i8], align 16
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #12
  %4 = tail call i32 @getpid() #12
  %5 = tail call i32 @llvm.abs.i32(i32 %4, i1 true)
  %6 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %1, i64 noundef 32, ptr noundef nonnull @.str.30, i32 noundef %5) #12
  %7 = call ptr @BLI_temp_dir_base() #12
  call void @BLI_make_file_string(ptr noundef nonnull @.str.16, ptr noundef nonnull %2, ptr noundef %7, ptr noundef nonnull %1) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #12
  %8 = call i32 @BLI_exists(ptr noundef nonnull %2) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %0
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #12
  %11 = call ptr @BLI_temp_dir_base() #12
  call void @BLI_make_file_string(ptr noundef nonnull @.str.16, ptr noundef nonnull %3, ptr noundef %11, ptr noundef nonnull @.str.31) #12
  %12 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !148
  %13 = and i32 %12, 8192
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = call i32 @BLI_delete(ptr noundef nonnull %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  br label %19

17:                                               ; preds = %10
  %18 = call i32 @BLI_rename(ptr noundef nonnull %2, ptr noundef nonnull %3) #12
  br label %19

19:                                               ; preds = %17, %15
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #12
  br label %20

20:                                               ; preds = %19, %0
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #12
  ret void
}

declare i32 @BLI_delete(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @BLI_rename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @wm_autosave_read(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [32 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  %5 = tail call i32 @getpid() #12
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 32, ptr noundef nonnull @.str.30, i32 noundef %6) #12
  %8 = call ptr @BLI_temp_dir_base() #12
  call void @BLI_make_file_string(ptr noundef nonnull @.str.16, ptr noundef nonnull %4, ptr noundef %8, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  %9 = call zeroext i8 @WM_file_read(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1), !range !149
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #12
  ret void
}

declare void @RNA_property_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @wm_open_init_use_scripts(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  %5 = tail call ptr @RNA_struct_find_property(ptr noundef %4, ptr noundef nonnull @.str.32) #12
  %6 = load ptr, ptr %3, align 8, !tbaa !107
  %7 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %6, ptr noundef %5) #12
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = icmp eq i8 %1, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !90
  %13 = lshr i32 %12, 22
  %14 = and i32 %13, 1
  %15 = xor i32 %14, 1
  br label %20

16:                                               ; preds = %9
  %17 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !34
  %18 = lshr i32 %17, 13
  %19 = and i32 %18, 1
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi i32 [ %15, %11 ], [ %19, %16 ]
  %22 = load ptr, ptr %3, align 8, !tbaa !107
  tail call void @RNA_property_boolean_set(ptr noundef %22, ptr noundef %5, i32 noundef %21) #12
  br label %23

23:                                               ; preds = %20, %2
  ret void
}

declare ptr @BLI_gzopen(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gzread(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gzclose(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare void @WM_jobs_kill_all(ptr noundef) local_unnamed_addr #2

declare void @WM_event_remove_handlers(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_screen_exit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_editors_exit(ptr noundef) local_unnamed_addr #2

declare void @wm_add_default(ptr noundef) local_unnamed_addr #2

declare ptr @ED_screen_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_screens_initialize(ptr noundef) local_unnamed_addr #2

declare void @wm_close_and_free_all(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GHOST_SetWindowUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @MEM_CacheLimiter_set_maximum(i64 noundef) local_unnamed_addr #2

declare void @sound_init(ptr noundef) local_unnamed_addr #2

declare void @BLO_update_defaults_userpref_blend() local_unnamed_addr #2

declare void @BKE_userdef_state() local_unnamed_addr #2

declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

declare void @GHOST_addToSystemRecentFiles(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_screen_find_big_area(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ED_view3d_draw_offscreen_imbuf_simple(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_view3d_draw_offscreen_imbuf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @IMB_scaleImBuf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @IMB_overlayblend_thumb(ptr noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { cold }

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
!34 = !{!35, !41, i64 2096}
!35 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !37, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !37, i64 2104, !41, i64 2108, !41, i64 2112, !37, i64 2116}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"short", !37, i64 0}
!41 = !{!"int", !37, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!37, !37, i64 0}
!44 = !{!35, !37, i64 2081}
!45 = !{!46, !40, i64 158}
!46 = !{!"wmWindowManager", !47, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !41, i64 152, !40, i64 156, !40, i64 158, !39, i64 160, !39, i64 176, !48, i64 192, !39, i64 232, !39, i64 248, !39, i64 264, !39, i64 280, !36, i64 296, !36, i64 304, !36, i64 312, !39, i64 320, !36, i64 336, !37, i64 344, !37, i64 345}
!47 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!48 = !{!"ReportList", !39, i64 0, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !36, i64 32}
!49 = !{!35, !37, i64 2056}
!50 = !{!35, !36, i64 0}
!51 = !{!35, !37, i64 2058}
!52 = !{!46, !36, i64 136}
!53 = !{i64 0, i64 8, !54, i64 8, i64 8, !54}
!54 = !{!36, !36, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!59, !36, i64 24}
!59 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !41, i64 128, !40, i64 132, !40, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !41, i64 160, !41, i64 164, !36, i64 168, !39, i64 176, !39, i64 192, !39, i64 208, !39, i64 224, !39, i64 240}
!60 = distinct !{!60, !56, !57}
!61 = !{!39, !36, i64 0}
!62 = !{!35, !41, i64 2108}
!63 = distinct !{!63, !56, !57}
!64 = !{!65, !40, i64 212}
!65 = !{!"bScreen", !47, i64 0, !39, i64 120, !39, i64 136, !39, i64 152, !39, i64 168, !36, i64 184, !36, i64 192, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !36, i64 232, !36, i64 240}
!66 = !{!59, !41, i64 128}
!67 = distinct !{!67, !56, !57}
!68 = !{!69, !36, i64 1552}
!69 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !70, i64 1048, !37, i64 1056, !40, i64 1072, !36, i64 1080, !39, i64 1088, !39, i64 1104, !39, i64 1120, !39, i64 1136, !39, i64 1152, !39, i64 1168, !39, i64 1184, !39, i64 1200, !39, i64 1216, !39, i64 1232, !39, i64 1248, !39, i64 1264, !39, i64 1280, !39, i64 1296, !39, i64 1312, !39, i64 1328, !39, i64 1344, !39, i64 1360, !39, i64 1376, !39, i64 1392, !39, i64 1408, !39, i64 1424, !39, i64 1440, !39, i64 1456, !39, i64 1472, !39, i64 1488, !39, i64 1504, !39, i64 1520, !39, i64 1536, !39, i64 1552, !39, i64 1568, !39, i64 1584, !39, i64 1600, !39, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!70 = !{!"long", !37, i64 0}
!71 = !{!46, !36, i64 304}
!72 = !{!46, !36, i64 296}
!73 = !{!46, !36, i64 312}
!74 = !{!46, !41, i64 152}
!75 = !{!46, !36, i64 128}
!76 = distinct !{!76, !56, !57}
!77 = !{!59, !36, i64 16}
!78 = !{!59, !40, i64 116}
!79 = !{!59, !36, i64 136}
!80 = !{!59, !40, i64 108}
!81 = !{!59, !40, i64 110}
!82 = !{!59, !40, i64 104}
!83 = !{!59, !40, i64 106}
!84 = distinct !{!84, !56, !57}
!85 = !{!86, !41, i64 8912}
!86 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !41, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !40, i64 8496, !40, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !37, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !41, i64 8912, !41, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !87, i64 8956, !87, i64 8960, !41, i64 8964, !40, i64 8968, !40, i64 8970, !87, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !88, i64 8984, !37, i64 9760, !37, i64 9772, !40, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !41, i64 10896, !41, i64 10900, !87, i64 10904, !87, i64 10908, !41, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !89, i64 10928}
!87 = !{!"float", !37, i64 0}
!88 = !{!"ColorBand", !40, i64 0, !40, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!89 = !{!"WalkNavigation", !87, i64 0, !87, i64 4, !87, i64 8, !87, i64 12, !87, i64 16, !87, i64 20, !40, i64 24, !37, i64 26}
!90 = !{!86, !41, i64 8}
!91 = !{!35, !36, i64 2064}
!92 = !{!93, !36, i64 16}
!93 = !{!"RecentFile", !36, i64 0, !36, i64 8, !36, i64 16}
!94 = !{!93, !36, i64 0}
!95 = !{!86, !40, i64 8930}
!96 = distinct !{!96, !56, !57}
!97 = !{!35, !41, i64 2100}
!98 = !{!99, !36, i64 8}
!99 = !{!"LinkNode", !36, i64 0, !36, i64 8}
!100 = !{!99, !36, i64 0}
!101 = distinct !{!101, !56, !57}
!102 = !{!103, !36, i64 88}
!103 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !40, i64 160, !37, i64 162}
!104 = !{!105, !36, i64 8}
!105 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !106, i64 152, !40, i64 184}
!106 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!107 = !{!103, !36, i64 112}
!108 = !{!103, !36, i64 120}
!109 = distinct !{!109, !56, !57}
!110 = !{!111, !36, i64 128}
!111 = !{!"Scene", !47, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !112, i64 280, !121, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !39, i64 4384, !122, i64 4400, !123, i64 4416, !126, i64 4600, !36, i64 4608, !127, i64 4616, !36, i64 4640, !70, i64 4648, !70, i64 4656, !114, i64 4664, !115, i64 4824, !128, i64 4888, !36, i64 4952}
!112 = !{!"RenderData", !113, i64 0, !36, i64 248, !36, i64 256, !116, i64 264, !117, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !87, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !87, i64 436, !87, i64 440, !87, i64 444, !87, i64 448, !87, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !118, i64 544, !118, i64 560, !119, i64 576, !39, i64 592, !40, i64 608, !40, i64 610, !87, i64 612, !87, i64 616, !87, i64 620, !87, i64 624, !41, i64 628, !87, i64 632, !87, i64 636, !87, i64 640, !87, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !87, i64 660, !87, i64 664, !40, i64 668, !40, i64 670, !87, i64 672, !87, i64 676, !37, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !87, i64 2528, !87, i64 2532, !40, i64 2536, !40, i64 2538, !87, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !87, i64 2560, !87, i64 2564, !36, i64 2568, !41, i64 2576, !87, i64 2580, !37, i64 2584, !120, i64 2616, !41, i64 3976, !41, i64 3980}
!113 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !87, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !114, i64 24, !115, i64 184}
!114 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 72, !87, i64 136, !87, i64 140, !36, i64 144, !36, i64 152}
!115 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!116 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!117 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !87, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !36, i64 64}
!118 = !{!"rctf", !87, i64 0, !87, i64 4, !87, i64 8, !87, i64 12}
!119 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!120 = !{!"BakeData", !113, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !87, i64 1280, !87, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!121 = !{!"AudioData", !41, i64 0, !87, i64 4, !87, i64 8, !87, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !87, i64 24, !87, i64 28}
!122 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!123 = !{!"GameData", !122, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !37, i64 34, !124, i64 40, !40, i64 64, !40, i64 66, !87, i64 68, !125, i64 72, !87, i64 128, !87, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !87, i64 164, !87, i64 168, !87, i64 172, !87, i64 176, !87, i64 180}
!124 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !87, i64 8, !87, i64 12, !36, i64 16}
!125 = !{!"RecastData", !87, i64 0, !87, i64 4, !87, i64 8, !87, i64 12, !87, i64 16, !87, i64 20, !87, i64 24, !87, i64 28, !87, i64 32, !87, i64 36, !41, i64 40, !87, i64 44, !87, i64 48, !40, i64 52, !40, i64 54}
!126 = !{!"UnitSettings", !87, i64 0, !37, i64 4, !37, i64 5, !40, i64 6}
!127 = !{!"PhysicsSettings", !37, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!128 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!129 = !{!130, !36, i64 96}
!130 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !119, i64 56, !37, i64 72, !37, i64 73, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !40, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !39, i64 96, !39, i64 112, !39, i64 128, !39, i64 144}
!131 = !{!111, !41, i64 764}
!132 = !{!111, !87, i64 892}
!133 = !{!111, !41, i64 768}
!134 = !{!111, !87, i64 896}
!135 = !{!136, !36, i64 40}
!136 = !{!"ImBuf", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !37, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !87, i64 112, !37, i64 120, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !36, i64 296, !36, i64 304, !41, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !41, i64 2376, !36, i64 2384, !41, i64 2392, !41, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !41, i64 2432, !119, i64 2436, !137, i64 2456}
!137 = !{!"DDSData", !41, i64 0, !41, i64 4, !36, i64 8, !41, i64 16}
!138 = !{!136, !41, i64 16}
!139 = !{!136, !41, i64 20}
!140 = !{!69, !40, i64 1072}
!141 = !{!65, !40, i64 210}
!142 = !{!46, !36, i64 336}
!143 = !{!86, !41, i64 16}
!144 = distinct !{!144, !56, !57}
!145 = !{!146, !36, i64 48}
!146 = !{!"wmEventHandler", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128}
!147 = distinct !{!147, !56, !57}
!148 = !{!86, !41, i64 8484}
!149 = !{i8 0, i8 2}
