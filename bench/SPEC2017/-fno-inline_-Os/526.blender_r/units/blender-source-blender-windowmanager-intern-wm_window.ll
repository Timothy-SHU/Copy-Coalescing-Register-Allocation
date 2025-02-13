; ModuleID = 'blender/source/blender/windowmanager/intern/wm_window.c'
source_filename = "blender/source/blender/windowmanager/intern/wm_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.WMInitStruct = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmTimer = type { ptr, ptr, ptr, double, i32, ptr, double, double, double, double, double, i32 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.GHOST_TEventKeyData = type { i32, i8, [6 x i8] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.GHOST_TEventDragnDropData = type { i32, i32, i32, ptr }
%struct.GHOST_TStringArray = type { i32, ptr }
%struct.GHOST_TEventTrackpadData = type { i32, i32, i32, i32, i32 }
%struct.GHOST_TEventCursorData = type { i32, i32 }
%struct.GHOST_TabletData = type { i32, float, float, float }

@g_system = internal unnamed_addr global ptr null, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"window\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Blender%s [%s%s]\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c" (Recovered)\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Blender\00", align 1
@wm_init_state = internal global %struct.WMInitStruct { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 1 }, align 16
@.str.6 = private unnamed_addr constant [19 x i8] c"window event state\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Window\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Screen Editing\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Blender Render\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Blender User Preferences\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Blender File View\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"%s: set drawable %d\0A\00", align 1
@__func__.wm_window_make_drawable = private unnamed_addr constant [24 x i8] c"wm_window_make_drawable\00", align 1
@wm_window_testbreak.ltime = internal unnamed_addr global double 0.000000e+00, align 8
@.str.15 = private unnamed_addr constant [13 x i8] c"window timer\00", align 1
@wm_window_add_ghostwindow.multisamples = internal unnamed_addr global i32 -1, align 4
@.str.16 = private unnamed_addr constant [24 x i8] c"<!> event has no window\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"<!> event has invalid window\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"%s: ghost redraw %d\0A\00", align 1
@__func__.ghost_event_proc = private unnamed_addr constant [17 x i8] c"ghost_event_proc\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"minimized\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"maximized\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"fullscreen\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"%s: window %d state = %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"win move event pos %d %d size %d %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"WM_OT_open_mainfile\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"drop file %s\0A\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.wm_clipboard_text_get_ex = private unnamed_addr constant [25 x i8] c"wm_clipboard_text_get_ex\00", align 1
@reltable.ghost_event_proc = private unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.19 to i64), i64 ptrtoint (ptr @reltable.ghost_event_proc to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.21 to i64), i64 ptrtoint (ptr @reltable.ghost_event_proc to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.20 to i64), i64 ptrtoint (ptr @reltable.ghost_event_proc to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.22 to i64), i64 ptrtoint (ptr @reltable.ghost_event_proc to i64)) to i32)], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_get_screensize(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %5 = load ptr, ptr @g_system, align 8, !tbaa !34
  call void @GHOST_GetMainDisplayDimensions(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %6 = load i32, ptr %3, align 4, !tbaa !38
  store i32 %6, ptr %0, align 4, !tbaa !38
  %7 = load i32, ptr %4, align 4, !tbaa !38
  store i32 %7, ptr %1, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @GHOST_GetMainDisplayDimensions(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_get_desktopsize(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %5 = load ptr, ptr @g_system, align 8, !tbaa !34
  call void @GHOST_GetAllDisplayDimensions(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %6 = load i32, ptr %3, align 4, !tbaa !38
  store i32 %6, ptr %0, align 4, !tbaa !38
  %7 = load i32, ptr %4, align 4, !tbaa !38
  store i32 %7, ptr %1, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

; Function Attrs: optsize
declare void @GHOST_GetAllDisplayDimensions(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_window_free(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 28
  tail call void @WM_event_remove_handlers(ptr noundef nonnull %0, ptr noundef nonnull %6) #17
  %7 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 29
  tail call void @WM_event_remove_handlers(ptr noundef nonnull %0, ptr noundef nonnull %7) #17
  %8 = tail call ptr @CTX_wm_window(ptr noundef nonnull %0) #17
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void @CTX_wm_window_set(ptr noundef nonnull %0, ptr noundef null) #17
  br label %11

11:                                               ; preds = %5, %10, %3
  %12 = getelementptr inbounds %struct.wmWindowManager, ptr %1, i64 0, i32 1
  %13 = getelementptr inbounds %struct.wmWindowManager, ptr %1, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  %15 = icmp eq ptr %14, null
  br i1 %15, label %41, label %16

16:                                               ; preds = %11, %27
  %17 = phi ptr [ %18, %27 ], [ %14, %11 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.wmTimer, ptr %17, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.wmTimer, ptr %17, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !50
  %25 = icmp eq i32 %24, 276
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void @wm_jobs_timer_ended(ptr noundef %1, ptr noundef nonnull %17) #17
  br label %27

27:                                               ; preds = %16, %22, %26
  %28 = icmp eq ptr %18, null
  br i1 %28, label %29, label %16, !llvm.loop !51

29:                                               ; preds = %27
  %30 = load ptr, ptr %13, align 8, !tbaa !40
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %29, %39
  %33 = phi ptr [ %34, %39 ], [ %30, %29 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = getelementptr inbounds %struct.wmTimer, ptr %33, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !49
  %37 = icmp eq ptr %36, %2
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  tail call void @WM_event_remove_timer(ptr noundef %1, ptr poison, ptr noundef nonnull %33) #18
  br label %39

39:                                               ; preds = %32, %38
  %40 = icmp eq ptr %34, null
  br i1 %40, label %41, label %32, !llvm.loop !53

41:                                               ; preds = %39, %11, %29
  %42 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 21
  %43 = load ptr, ptr %42, align 8, !tbaa !54
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %46(ptr noundef nonnull %43) #17
  br label %47

47:                                               ; preds = %45, %41
  tail call void @wm_event_free_all(ptr noundef nonnull %2) #17
  tail call void @wm_subwindows_free(ptr noundef nonnull %2) #17
  %48 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 26
  %49 = load ptr, ptr %48, align 8, !tbaa !56
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %52(ptr noundef nonnull %49) #17
  br label %53

53:                                               ; preds = %51, %47
  tail call fastcc void @wm_ghostwindow_destroy(ptr noundef nonnull %2) #18
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %54(ptr noundef nonnull %2) #17
  ret void
}

; Function Attrs: optsize
declare void @WM_event_remove_handlers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_wm_window_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wm_jobs_timer_ended(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_event_remove_timer(ptr noundef %0, ptr nocapture readnone %1, ptr noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 17
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %5 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %7, %2
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %5, !llvm.loop !57

11:                                               ; preds = %5
  br i1 %8, label %46, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 9, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  %15 = icmp eq ptr %14, %7
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store ptr null, ptr %13, align 8, !tbaa !58
  br label %17

17:                                               ; preds = %16, %12
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %7) #17
  %18 = getelementptr inbounds %struct.wmTimer, ptr %7, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %22(ptr noundef nonnull %19) #17
  br label %23

23:                                               ; preds = %21, %17
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %24(ptr noundef nonnull %7) #17
  %25 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %46, label %31

28:                                               ; preds = %43, %31
  %29 = load ptr, ptr %32, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %46, label %31, !llvm.loop !60

31:                                               ; preds = %23, %28
  %32 = phi ptr [ %29, %28 ], [ %26, %23 ]
  %33 = getelementptr inbounds %struct.wmWindow, ptr %32, i64 0, i32 27
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %28, label %36

36:                                               ; preds = %31, %43
  %37 = phi ptr [ %44, %43 ], [ %34, %31 ]
  %38 = getelementptr inbounds %struct.wmEvent, ptr %37, i64 0, i32 28
  %39 = load ptr, ptr %38, align 8, !tbaa !61
  %40 = icmp eq ptr %39, %7
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  store ptr null, ptr %38, align 8, !tbaa !61
  %42 = getelementptr inbounds %struct.wmEvent, ptr %37, i64 0, i32 2
  store i16 0, ptr %42, align 8, !tbaa !63
  br label %43

43:                                               ; preds = %36, %41
  %44 = load ptr, ptr %37, align 8, !tbaa !34
  %45 = icmp eq ptr %44, null
  br i1 %45, label %28, label %36, !llvm.loop !64

46:                                               ; preds = %28, %23, %11
  ret void
}

; Function Attrs: optsize
declare void @wm_event_free_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wm_subwindows_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_ghostwindow_destroy(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !65 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @g_system, align 8, !tbaa !34
  %7 = tail call i32 @GHOST_DisposeWindow(ptr noundef %6, ptr noundef nonnull %3) #17
  store ptr null, ptr %2, align 8, !tbaa !66
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @wm_window_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_manager(ptr noundef %0) #17
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 256, ptr noundef nonnull @.str) #17
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %2, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %4) #17
  %6 = tail call fastcc i32 @find_free_winid(ptr noundef %2) #18
  %7 = getelementptr inbounds %struct.wmWindow, ptr %4, i64 0, i32 18
  store i32 %6, ptr %7, align 8, !tbaa !67
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @find_free_winid(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !68 {
  %2 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %13, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %12, %5 ], [ 1, %1 ]
  %8 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 18
  %9 = load i32, ptr %8, align 8, !tbaa !67
  %10 = icmp sgt i32 %7, %9
  %11 = add nsw i32 %9, 1
  %12 = select i1 %10, i32 %7, i32 %11
  %13 = load ptr, ptr %6, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !69

15:                                               ; preds = %5, %1
  %16 = phi i32 [ 1, %1 ], [ %12, %5 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @wm_window_copy(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @wm_window_new(ptr noundef %0) #18
  %4 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 6
  %5 = load i16, ptr %4, align 8, !tbaa !70
  %6 = add i16 %5, 10
  %7 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 6
  store i16 %6, ptr %7, align 8, !tbaa !70
  %8 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 7
  %9 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 7
  %10 = load <2 x i16>, ptr %8, align 2, !tbaa !71
  store <2 x i16> %10, ptr %9, align 2, !tbaa !71
  %11 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 9
  %12 = load i16, ptr %11, align 2, !tbaa !72
  %13 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 9
  store i16 %12, ptr %13, align 2, !tbaa !72
  %14 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !73
  %16 = tail call ptr @ED_screen_duplicate(ptr noundef %3, ptr noundef %15) #17
  %17 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !73
  %18 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 5
  %19 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 4, i64 2
  %20 = tail call ptr @BLI_strncpy(ptr noundef nonnull %18, ptr noundef nonnull %19, i64 noundef 64) #17
  %21 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 18
  %22 = load i32, ptr %21, align 8, !tbaa !67
  %23 = trunc i32 %22 to i16
  %24 = load ptr, ptr %17, align 8, !tbaa !73
  %25 = getelementptr inbounds %struct.bScreen, ptr %24, i64 0, i32 11
  store i16 %23, ptr %25, align 4, !tbaa !74
  %26 = getelementptr inbounds %struct.bScreen, ptr %24, i64 0, i32 13
  store i16 1, ptr %26, align 8, !tbaa !76
  %27 = getelementptr inbounds %struct.bScreen, ptr %24, i64 0, i32 12
  store i16 1, ptr %27, align 2, !tbaa !77
  %28 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 61), align 4, !tbaa !78
  %29 = sext i16 %28 to i32
  %30 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 24
  store i32 %29, ptr %30, align 8, !tbaa !83
  %31 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 26
  store ptr null, ptr %31, align 8, !tbaa !56
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @ED_screen_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_window_close(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3, %16
  %8 = phi ptr [ %17, %16 ], [ %5, %3 ]
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.wmWindow, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !73
  %13 = getelementptr inbounds %struct.bScreen, ptr %12, i64 0, i32 10
  %14 = load i16, ptr %13, align 2, !tbaa !84
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10, %7
  %17 = load ptr, ptr %8, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %7, !llvm.loop !85

19:                                               ; preds = %16, %10, %3
  %20 = phi i1 [ true, %3 ], [ false, %10 ], [ true, %16 ]
  %21 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !86
  %22 = and i32 %21, 1073741824
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.wmWindowManager, ptr %1, i64 0, i32 5
  %26 = load i16, ptr %25, align 4, !tbaa !87
  %27 = icmp eq i16 %26, 0
  %28 = and i1 %20, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !66
  %32 = tail call i32 @GHOST_confirmQuit(ptr noundef %31) #17
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %47, label %35

34:                                               ; preds = %24, %19
  br i1 %20, label %35, label %36

35:                                               ; preds = %29, %34
  tail call void @WM_exit(ptr noundef %0) #17
  br label %47

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !73
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef %2) #17
  tail call void @wm_draw_window_clear(ptr noundef %2) #17
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %2) #17
  %39 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 28
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %39) #17
  %40 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 29
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %40) #17
  %41 = load ptr, ptr %37, align 8, !tbaa !73
  tail call void @ED_screen_exit(ptr noundef %0, ptr noundef %2, ptr noundef %41) #17
  tail call void @wm_window_free(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  %42 = getelementptr inbounds %struct.bScreen, ptr %38, i64 0, i32 10
  %43 = load i16, ptr %42, align 2, !tbaa !84
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %36
  %46 = tail call ptr @CTX_data_main(ptr noundef %0) #17
  tail call void @BKE_libblock_free(ptr noundef %46, ptr noundef nonnull %38) #17
  br label %47

47:                                               ; preds = %35, %45, %36, %29
  ret void
}

; Function Attrs: optsize
declare i32 @GHOST_confirmQuit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wm_draw_window_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_screen_exit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_libblock_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_window_title(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [1048 x i8], align 16
  %4 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 10
  %9 = load i16, ptr %8, align 2, !tbaa !84
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %7, %2
  %12 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = icmp eq ptr %13, null
  br i1 %14, label %42, label %15

15:                                               ; preds = %11
  %16 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 5), align 2, !tbaa !88
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr @G, align 8, !tbaa !90
  %20 = getelementptr inbounds %struct.Main, ptr %19, i64 0, i32 2
  %21 = load i8, ptr %20, align 8, !tbaa !91
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 1048, ptr nonnull %3) #16
  %24 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 5
  %25 = load i16, ptr %24, align 4, !tbaa !87
  %26 = icmp eq i16 %25, 0
  %27 = select i1 %26, ptr @.str.3, ptr @.str.2
  %28 = getelementptr inbounds %struct.Main, ptr %19, i64 0, i32 9
  %29 = load i16, ptr %28, align 8, !tbaa !92
  %30 = icmp eq i16 %29, 0
  %31 = select i1 %30, ptr @.str.2, ptr @.str.4
  %32 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 1048, ptr noundef nonnull @.str.1, ptr noundef nonnull %27, ptr noundef nonnull %20, ptr noundef nonnull %31) #17
  %33 = load ptr, ptr %12, align 8, !tbaa !66
  call void @GHOST_SetTitle(ptr noundef %33, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 1048, ptr nonnull %3) #16
  br label %35

34:                                               ; preds = %18, %15
  tail call void @GHOST_SetTitle(ptr noundef nonnull %13, ptr noundef nonnull @.str.5) #17
  br label %35

35:                                               ; preds = %34, %23
  %36 = load ptr, ptr %12, align 8, !tbaa !66
  %37 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 5
  %38 = load i16, ptr %37, align 4, !tbaa !87
  %39 = icmp eq i16 %38, 0
  %40 = zext i1 %39 to i8
  %41 = call i32 @GHOST_SetWindowModifiedState(ptr noundef %36, i8 noundef zeroext %40) #17
  br label %42

42:                                               ; preds = %11, %35, %7
  ret void
}

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GHOST_SetTitle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GHOST_SetWindowModifiedState(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @wm_window_pixelsize(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = tail call float @GHOST_GetNativePixelSize(ptr noundef %3) #17
  %5 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 107), align 8, !tbaa !95
  %6 = icmp eq i32 %5, 1
  %7 = fmul float %4, 2.000000e+00
  %8 = select i1 %6, float %7, float %4
  ret float %8
}

; Function Attrs: optsize
declare float @GHOST_GetNativePixelSize(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_window_add_ghostwindows(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @wm_init_state, align 16, !tbaa !96
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @wm_get_screensize(ptr noundef nonnull @wm_init_state, ptr noundef nonnull getelementptr inbounds (%struct.WMInitStruct, ptr @wm_init_state, i64 0, i32 1)) #18
  store i32 0, ptr getelementptr inbounds (%struct.WMInitStruct, ptr @wm_init_state, i64 0, i32 2), align 8, !tbaa !98
  store i32 0, ptr getelementptr inbounds (%struct.WMInitStruct, ptr @wm_init_state, i64 0, i32 3), align 4, !tbaa !99
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %64, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  br label %11

11:                                               ; preds = %9, %48
  %12 = phi ptr [ %7, %9 ], [ %62, %48 ]
  %13 = getelementptr inbounds %struct.wmWindow, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %41

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.wmWindow, ptr %12, i64 0, i32 8
  %18 = load i16, ptr %17, align 4, !tbaa !100
  %19 = icmp ne i16 %18, 0
  %20 = load i32, ptr getelementptr inbounds (%struct.WMInitStruct, ptr @wm_init_state, i64 0, i32 5), align 4, !tbaa !101
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %19, i1 %22, i1 false
  br i1 %23, label %31, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.wmWindow, ptr %12, i64 0, i32 6
  %26 = load <4 x i32>, ptr @wm_init_state, align 16, !tbaa !38
  %27 = trunc <4 x i32> %26 to <4 x i16>
  %28 = shufflevector <4 x i16> %27, <4 x i16> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i16> %28, ptr %25, align 8, !tbaa !71
  %29 = getelementptr inbounds %struct.wmWindow, ptr %12, i64 0, i32 10
  store i16 0, ptr %29, align 8, !tbaa !102
  %30 = and i32 %20, -2
  store i32 %30, ptr getelementptr inbounds (%struct.WMInitStruct, ptr @wm_init_state, i64 0, i32 5), align 4, !tbaa !101
  br label %31

31:                                               ; preds = %16, %24
  %32 = phi i32 [ %30, %24 ], [ %20, %16 ]
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr getelementptr inbounds (%struct.WMInitStruct, ptr @wm_init_state, i64 0, i32 4), align 16, !tbaa !103
  %37 = trunc i32 %36 to i16
  %38 = getelementptr inbounds %struct.wmWindow, ptr %12, i64 0, i32 10
  store i16 %37, ptr %38, align 8, !tbaa !102
  %39 = and i32 %32, -3
  store i32 %39, ptr getelementptr inbounds (%struct.WMInitStruct, ptr @wm_init_state, i64 0, i32 5), align 4, !tbaa !101
  br label %40

40:                                               ; preds = %35, %31
  tail call fastcc void @wm_window_add_ghostwindow(ptr noundef nonnull %0, ptr noundef nonnull %12) #18
  br label %41

41:                                               ; preds = %40, %11
  %42 = getelementptr inbounds %struct.wmWindow, ptr %12, i64 0, i32 21
  %43 = load ptr, ptr %42, align 8, !tbaa !54
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %47 = tail call ptr %46(i64 noundef 120, ptr noundef nonnull @.str.6) #17
  store ptr %47, ptr %42, align 8, !tbaa !54
  br label %48

48:                                               ; preds = %45, %41
  %49 = load ptr, ptr %10, align 8, !tbaa !104
  %50 = tail call ptr @WM_keymap_find(ptr noundef %49, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 0) #17
  %51 = getelementptr inbounds %struct.wmWindow, ptr %12, i64 0, i32 28
  %52 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %51, ptr noundef %50) #17
  %53 = load ptr, ptr %10, align 8, !tbaa !104
  %54 = tail call ptr @WM_keymap_find(ptr noundef %53, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 0) #17
  %55 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %51, ptr noundef %54) #17
  %56 = load ptr, ptr %10, align 8, !tbaa !104
  %57 = tail call ptr @WM_keymap_find(ptr noundef %56, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0) #17
  %58 = getelementptr inbounds %struct.wmWindow, ptr %12, i64 0, i32 29
  %59 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %58, ptr noundef %57) #17
  %60 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 0) #17
  %61 = tail call ptr @WM_event_add_dropbox_handler(ptr noundef nonnull %51, ptr noundef %60) #17
  tail call void @wm_window_title(ptr noundef %0, ptr noundef nonnull %12) #18
  %62 = load ptr, ptr %12, align 8, !tbaa !34
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %11, !llvm.loop !105

64:                                               ; preds = %48, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_window_add_ghostwindow(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !106 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %5 = load i32, ptr @wm_window_add_ghostwindow.multisamples, align 4, !tbaa !38
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 88), align 8, !tbaa !107
  %9 = sext i16 %8 to i32
  store i32 %9, ptr @wm_window_add_ghostwindow.multisamples, align 4, !tbaa !38
  br label %10

10:                                               ; preds = %7, %2
  call void @wm_get_screensize(ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %11 = load i32, ptr %4, align 4, !tbaa !38
  %12 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 7
  %13 = load i16, ptr %12, align 2, !tbaa !108
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 9
  %16 = load i16, ptr %15, align 2, !tbaa !72
  %17 = sext i16 %16 to i32
  %18 = add nsw i32 %14, %17
  %19 = sub i32 %11, %18
  %20 = load ptr, ptr @g_system, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 6
  %22 = load i16, ptr %21, align 8, !tbaa !70
  %23 = sext i16 %22 to i32
  %24 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 8
  %25 = load i16, ptr %24, align 4, !tbaa !100
  %26 = sext i16 %25 to i32
  %27 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 10
  %28 = load i16, ptr %27, align 8, !tbaa !102
  %29 = sext i16 %28 to i32
  %30 = load i32, ptr @wm_window_add_ghostwindow.multisamples, align 4, !tbaa !38
  %31 = trunc i32 %30 to i16
  %32 = tail call ptr @GHOST_CreateWindow(ptr noundef %20, ptr noundef nonnull @.str.5, i32 noundef %23, i32 noundef %19, i32 noundef %26, i32 noundef %17, i32 noundef %29, i32 noundef 1, i32 noundef 0, i16 noundef zeroext %31) #17
  %33 = icmp eq ptr %32, null
  br i1 %33, label %58, label %34

34:                                               ; preds = %10
  %35 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 1
  store ptr %1, ptr %35, align 8, !tbaa !109
  tail call void @GPU_init() #17
  %36 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 2
  store ptr %32, ptr %36, align 8, !tbaa !66
  tail call void @GHOST_SetWindowUserData(ptr noundef nonnull %32, ptr noundef nonnull %1) #17
  %37 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 21
  %38 = load ptr, ptr %37, align 8, !tbaa !54
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %42 = tail call ptr %41(i64 noundef 120, ptr noundef nonnull @.str.6) #17
  store ptr %42, ptr %37, align 8, !tbaa !54
  br label %43

43:                                               ; preds = %40, %34
  %44 = load ptr, ptr %36, align 8, !tbaa !66
  %45 = tail call ptr @GHOST_GetClientBounds(ptr noundef %44) #17
  %46 = tail call i32 @GHOST_GetWidthRectangle(ptr noundef %45) #17
  %47 = trunc i32 %46 to i16
  store i16 %47, ptr %24, align 4, !tbaa !100
  %48 = tail call i32 @GHOST_GetHeightRectangle(ptr noundef %45) #17
  %49 = trunc i32 %48 to i16
  store i16 %49, ptr %15, align 2, !tbaa !72
  tail call void @GHOST_DisposeRectangle(ptr noundef %45) #17
  %50 = load i16, ptr %27, align 8, !tbaa !102
  %51 = sext i16 %50 to i32
  %52 = tail call i32 @GHOST_SetWindowState(ptr noundef nonnull %32, i32 noundef %51) #17
  tail call void @glClearColor(float noundef 0x3FE19999A0000000, float noundef 0x3FE19999A0000000, float noundef 0x3FE19999A0000000, float noundef 0.000000e+00) #17
  %53 = tail call i32 @GPU_type_matches(i32 noundef 2, i32 noundef 1024, i32 noundef 131072) #17
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  tail call void @glClear(i32 noundef 16384) #17
  br label %56

56:                                               ; preds = %55, %43
  %57 = tail call float @wm_window_pixelsize(ptr noundef nonnull %1) #18
  store float %57, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !110
  tail call void @BKE_userdef_state() #17
  tail call void @wm_window_swap_buffers(ptr noundef nonnull %1) #18
  tail call void @glEnable(i32 noundef 3089) #17
  tail call void @GPU_state_init() #17
  br label %58

58:                                               ; preds = %56, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_keymap_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_dropboxmap_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_dropbox_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @WM_window_open(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @wm_window_new(ptr noundef %0) #18
  %4 = load i32, ptr %1, align 4, !tbaa !111
  %5 = trunc i32 %4 to i16
  %6 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 6
  store i16 %5, ptr %6, align 8, !tbaa !70
  %7 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !113
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 7
  store i16 %9, ptr %10, align 2, !tbaa !108
  %11 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %1) #18
  %12 = trunc i32 %11 to i16
  %13 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 8
  store i16 %12, ptr %13, align 4, !tbaa !100
  %14 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %1) #18
  %15 = trunc i32 %14 to i16
  %16 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 9
  store i16 %15, ptr %16, align 2, !tbaa !72
  %17 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 61), align 4, !tbaa !78
  %18 = sext i16 %17 to i32
  %19 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 24
  store i32 %18, ptr %19, align 8, !tbaa !83
  %20 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 26
  store ptr null, ptr %20, align 8, !tbaa !56
  tail call void @WM_check(ptr noundef %0) #17
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !114 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !115
  %4 = load i32, ptr %0, align 4, !tbaa !111
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !116 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !117
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !113
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: optsize
declare void @WM_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_window_open_temp(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #17
  tail call fastcc void @wm_window_check_position(ptr noundef %1) #18
  %5 = tail call ptr @CTX_wm_manager(ptr noundef %0) #17
  %6 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 3
  br label %7

7:                                                ; preds = %11, %3
  %8 = phi ptr [ %6, %3 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.wmWindow, ptr %9, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  %14 = getelementptr inbounds %struct.bScreen, ptr %13, i64 0, i32 10
  %15 = load i16, ptr %14, align 2, !tbaa !84
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %7, label %26, !llvm.loop !118

17:                                               ; preds = %7
  %18 = tail call ptr @wm_window_new(ptr noundef %0) #18
  %19 = load i32, ptr %1, align 4, !tbaa !111
  %20 = trunc i32 %19 to i16
  %21 = getelementptr inbounds %struct.wmWindow, ptr %18, i64 0, i32 6
  store i16 %20, ptr %21, align 8, !tbaa !70
  %22 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !113
  %24 = trunc i32 %23 to i16
  %25 = getelementptr inbounds %struct.wmWindow, ptr %18, i64 0, i32 7
  store i16 %24, ptr %25, align 2, !tbaa !108
  br label %26

26:                                               ; preds = %11, %17
  %27 = phi ptr [ %18, %17 ], [ %9, %11 ]
  %28 = tail call fastcc i32 @BLI_rcti_size_x(ptr noundef %1) #18
  %29 = trunc i32 %28 to i16
  %30 = getelementptr inbounds %struct.wmWindow, ptr %27, i64 0, i32 8
  store i16 %29, ptr %30, align 4, !tbaa !100
  %31 = tail call fastcc i32 @BLI_rcti_size_y(ptr noundef %1) #18
  %32 = trunc i32 %31 to i16
  %33 = getelementptr inbounds %struct.wmWindow, ptr %27, i64 0, i32 9
  store i16 %32, ptr %33, align 2, !tbaa !72
  %34 = getelementptr inbounds %struct.wmWindow, ptr %27, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !66
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %26
  %38 = shl i32 %28, 16
  %39 = ashr exact i32 %38, 16
  %40 = shl i32 %31, 16
  %41 = ashr exact i32 %40, 16
  tail call void @wm_window_set_size(ptr noundef nonnull %27, i32 noundef %39, i32 noundef %41) #18
  tail call void @wm_window_raise(ptr noundef nonnull %27) #18
  br label %42

42:                                               ; preds = %37, %26
  %43 = getelementptr inbounds %struct.wmWindow, ptr %27, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !73
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = tail call ptr @ED_screen_add(ptr noundef nonnull %27, ptr noundef %4, ptr noundef nonnull @.str.10) #17
  store ptr %47, ptr %43, align 8, !tbaa !73
  br label %54

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.bScreen, ptr %44, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !119
  %51 = icmp eq ptr %50, %4
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  tail call void @ED_screen_set_scene(ptr noundef %0, ptr noundef nonnull %44, ptr noundef %4) #17
  %53 = load ptr, ptr %43, align 8, !tbaa !73
  br label %54

54:                                               ; preds = %48, %52, %46
  %55 = phi ptr [ %44, %48 ], [ %53, %52 ], [ %47, %46 ]
  %56 = getelementptr inbounds %struct.bScreen, ptr %55, i64 0, i32 10
  store i16 1, ptr %56, align 2, !tbaa !84
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef nonnull %27) #17
  tail call void @WM_check(ptr noundef %0) #17
  %57 = load ptr, ptr %43, align 8, !tbaa !73
  %58 = getelementptr inbounds %struct.bScreen, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !120
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %59) #17
  %60 = icmp eq i32 %2, 0
  %61 = select i1 %60, i32 6, i32 19
  tail call void @ED_area_newspace(ptr noundef %0, ptr noundef %59, i32 noundef %61) #17
  %62 = load ptr, ptr %43, align 8, !tbaa !73
  tail call void @ED_screen_set(ptr noundef %0, ptr noundef %62) #17
  %63 = tail call ptr @CTX_wm_manager(ptr noundef %0) #17
  tail call void @ED_screen_refresh(ptr noundef %63, ptr noundef nonnull %27) #17
  %64 = getelementptr inbounds %struct.ScrArea, ptr %59, i64 0, i32 8
  %65 = load i8, ptr %64, align 8, !tbaa !121
  switch i8 %65, label %68 [
    i8 6, label %69
    i8 3, label %66
    i8 19, label %66
    i8 5, label %67
  ]

66:                                               ; preds = %54, %54
  br label %69

67:                                               ; preds = %54
  br label %69

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %54, %66, %68, %67
  %70 = phi ptr [ @.str.12, %66 ], [ @.str.5, %68 ], [ @.str.13, %67 ], [ @.str.11, %54 ]
  %71 = load ptr, ptr %34, align 8, !tbaa !66
  tail call void @GHOST_SetTitle(ptr noundef %71, ptr noundef nonnull %70) #17
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_window_check_position(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !123 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @wm_get_screensize(ptr noundef nonnull %2, ptr noundef nonnull %3) #18
  %4 = load i32, ptr %0, align 4, !tbaa !111
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !115
  %9 = sub nsw i32 %8, %4
  store i32 %9, ptr %7, align 4, !tbaa !115
  store i32 0, ptr %0, align 4, !tbaa !111
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 0, %6 ], [ %4, %1 ]
  %12 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !113
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !117
  %18 = sub nsw i32 %17, %13
  store i32 %18, ptr %16, align 4, !tbaa !117
  store i32 0, ptr %12, align 4, !tbaa !113
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi i32 [ 0, %15 ], [ %13, %10 ]
  %21 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !115
  %23 = load i32, ptr %2, align 4, !tbaa !38
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = sub i32 %23, %22
  store i32 %23, ptr %21, align 4, !tbaa !115
  %27 = add i32 %26, %11
  store i32 %27, ptr %0, align 4, !tbaa !111
  %28 = icmp slt i32 %27, 0
  br label %29

29:                                               ; preds = %25, %19
  %30 = phi i1 [ %28, %25 ], [ false, %19 ]
  %31 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !117
  %33 = load i32, ptr %3, align 4, !tbaa !38
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = sub i32 %33, %32
  store i32 %33, ptr %31, align 4, !tbaa !117
  %37 = add i32 %36, %20
  store i32 %37, ptr %12, align 4, !tbaa !113
  %38 = icmp slt i32 %37, 0
  br label %39

39:                                               ; preds = %35, %29
  %40 = phi i1 [ %38, %35 ], [ false, %29 ]
  br i1 %30, label %41, label %42

41:                                               ; preds = %39
  store i32 0, ptr %0, align 4, !tbaa !111
  br label %42

42:                                               ; preds = %41, %39
  br i1 %40, label %43, label %44

43:                                               ; preds = %42
  store i32 0, ptr %12, align 4, !tbaa !113
  br label %44

44:                                               ; preds = %43, %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_window_set_size(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = tail call i32 @GHOST_SetClientSize(ptr noundef %5, i32 noundef %1, i32 noundef %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_window_raise(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = tail call i32 @GHOST_SetWindowOrder(ptr noundef %3, i32 noundef 0) #17
  ret void
}

; Function Attrs: optsize
declare ptr @ED_screen_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_screen_set_scene(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_wm_area_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_newspace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_screen_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_screen_refresh(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @wm_window_duplicate_exec(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #17
  %4 = tail call ptr @wm_window_copy(ptr noundef %0, ptr noundef %3) #18
  tail call void @WM_check(ptr noundef %0) #17
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554435, ptr noundef null) #17
  ret i32 4
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @wm_window_fullscreen_toggle_exec(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #17
  %4 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !124
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = tail call i32 @GHOST_GetWindowState(ptr noundef %8) #17
  %10 = icmp eq i32 %9, 3
  %11 = load ptr, ptr %7, align 8, !tbaa !66
  %12 = select i1 %10, i32 0, i32 3
  %13 = tail call i32 @GHOST_SetWindowState(ptr noundef %11, i32 noundef %12) #17
  br label %14

14:                                               ; preds = %6, %2
  %15 = phi i32 [ 2, %2 ], [ 4, %6 ]
  ret i32 %15
}

; Function Attrs: optsize
declare i32 @GHOST_GetWindowState(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GHOST_SetWindowState(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_get_cursor_position(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @g_system, align 8, !tbaa !34
  %5 = tail call i32 @GHOST_GetCursorPosition(ptr noundef %4, ptr noundef %1, ptr noundef %2) #17
  tail call fastcc void @wm_convert_cursor_position(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret void
}

; Function Attrs: optsize
declare i32 @GHOST_GetCursorPosition(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_convert_cursor_position(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !125 {
  %4 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = tail call float @GHOST_GetNativePixelSize(ptr noundef %5) #17
  %7 = load ptr, ptr %4, align 8, !tbaa !66
  %8 = load i32, ptr %1, align 4, !tbaa !38
  %9 = load i32, ptr %2, align 4, !tbaa !38
  tail call void @GHOST_ScreenToClient(ptr noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef nonnull %1, ptr noundef nonnull %2) #17
  %10 = load i32, ptr %1, align 4, !tbaa !38
  %11 = sitofp i32 %10 to float
  %12 = fmul float %6, %11
  %13 = fptosi float %12 to i32
  store i32 %13, ptr %1, align 4, !tbaa !38
  %14 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 9
  %15 = load i16, ptr %14, align 2, !tbaa !72
  %16 = sext i16 %15 to i32
  %17 = load i32, ptr %2, align 4, !tbaa !38
  %18 = xor i32 %17, -1
  %19 = add i32 %18, %16
  %20 = sitofp i32 %19 to float
  %21 = fmul float %6, %20
  %22 = fptosi float %21 to i32
  store i32 %22, ptr %2, align 4, !tbaa !38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_window_make_drawable(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !109
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !109
  %11 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !126
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 18
  %16 = load i32, ptr %15, align 8, !tbaa !67
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef nonnull @__func__.wm_window_make_drawable, i32 noundef %16) #18
  %18 = load ptr, ptr %7, align 8, !tbaa !66
  br label %19

19:                                               ; preds = %14, %10
  %20 = phi ptr [ %18, %14 ], [ %8, %10 ]
  %21 = tail call i32 @GHOST_ActivateWindowDrawingContext(ptr noundef %20) #17
  %22 = tail call float @wm_window_pixelsize(ptr noundef nonnull %1) #18
  store float %22, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !110
  tail call void @BKE_userdef_state() #17
  br label %23

23:                                               ; preds = %19, %6, %2
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @GHOST_ActivateWindowDrawingContext(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_userdef_state() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_window_process_events(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @g_system, align 8, !tbaa !34
  %3 = tail call i32 @GHOST_ProcessEvents(ptr noundef %2, i32 noundef 0) #17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @g_system, align 8, !tbaa !34
  %7 = tail call i32 @GHOST_DispatchEvents(ptr noundef %6) #17
  br label %8

8:                                                ; preds = %5, %1
  %9 = tail call fastcc i32 @wm_window_timer(ptr noundef %0) #18, !range !127
  %10 = or i32 %9, %3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @PIL_sleep_ms(i32 noundef 5) #17
  br label %13

13:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: optsize
declare i32 @GHOST_ProcessEvents(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GHOST_DispatchEvents(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @wm_window_timer(ptr noundef %0) unnamed_addr #0 !PGOFuncName !128 {
  %2 = alloca %struct.wmEvent, align 8
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #17
  %4 = tail call double @PIL_check_seconds_timer() #17
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = icmp eq ptr %6, null
  br i1 %7, label %54, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 21
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 25
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  br label %14

14:                                               ; preds = %8, %51
  %15 = phi i32 [ 0, %8 ], [ %52, %51 ]
  %16 = phi ptr [ %6, %8 ], [ %17, %51 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.wmTimer, ptr %16, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  %20 = getelementptr inbounds %struct.wmTimer, ptr %16, i64 0, i32 11
  %21 = load i32, ptr %20, align 8, !tbaa !129
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.wmTimer, ptr %16, i64 0, i32 9
  %25 = load double, ptr %24, align 8, !tbaa !130
  %26 = fcmp ogt double %4, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.wmTimer, ptr %16, i64 0, i32 8
  %29 = load double, ptr %28, align 8, !tbaa !131
  %30 = fsub double %4, %29
  %31 = getelementptr inbounds %struct.wmTimer, ptr %16, i64 0, i32 7
  store double %30, ptr %31, align 8, !tbaa !132
  %32 = getelementptr inbounds %struct.wmTimer, ptr %16, i64 0, i32 6
  %33 = load double, ptr %32, align 8, !tbaa !133
  %34 = fadd double %30, %33
  store double %34, ptr %32, align 8, !tbaa !133
  store double %4, ptr %28, align 8, !tbaa !131
  %35 = getelementptr inbounds %struct.wmTimer, ptr %16, i64 0, i32 10
  %36 = load double, ptr %35, align 8, !tbaa !134
  %37 = getelementptr inbounds %struct.wmTimer, ptr %16, i64 0, i32 3
  %38 = load double, ptr %37, align 8, !tbaa !135
  %39 = fdiv double %34, %38
  %40 = call double @llvm.ceil.f64(double %39)
  %41 = call double @llvm.fmuladd.f64(double %38, double %40, double %36)
  store double %41, ptr %24, align 8, !tbaa !130
  %42 = getelementptr inbounds %struct.wmTimer, ptr %16, i64 0, i32 4
  %43 = load i32, ptr %42, align 8, !tbaa !50
  switch i32 %43, label %46 [
    i32 276, label %44
    i32 277, label %45
  ]

44:                                               ; preds = %27
  call void @wm_jobs_timer(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %16) #17
  br label %51

45:                                               ; preds = %27
  call void @wm_autosave_timer(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %16) #17
  br label %51

46:                                               ; preds = %27
  %47 = icmp eq ptr %19, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %2) #16
  call void @wm_event_init_from_window(ptr noundef nonnull %19, ptr noundef nonnull %2) #17
  %49 = load i32, ptr %42, align 8, !tbaa !50
  %50 = trunc i32 %49 to i16
  store i16 %50, ptr %9, align 8, !tbaa !63
  store i16 0, ptr %10, align 2, !tbaa !136
  store i16 0, ptr %11, align 8, !tbaa !137
  store i16 2, ptr %12, align 8, !tbaa !138
  store ptr %16, ptr %13, align 8, !tbaa !61
  call void @wm_event_add(ptr noundef nonnull %19, ptr noundef nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %2) #16
  br label %51

51:                                               ; preds = %14, %44, %46, %48, %45, %23
  %52 = phi i32 [ %15, %44 ], [ %15, %45 ], [ 1, %48 ], [ %15, %46 ], [ %15, %23 ], [ %15, %14 ]
  %53 = icmp eq ptr %17, null
  br i1 %53, label %54, label %14, !llvm.loop !139

54:                                               ; preds = %51, %1
  %55 = phi i32 [ 0, %1 ], [ %52, %51 ]
  ret i32 %55
}

; Function Attrs: optsize
declare void @PIL_sleep_ms(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_window_process_events_nosleep() local_unnamed_addr #0 {
  %1 = load ptr, ptr @g_system, align 8, !tbaa !34
  %2 = tail call i32 @GHOST_ProcessEvents(ptr noundef %1, i32 noundef 0) #17
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @g_system, align 8, !tbaa !34
  %6 = tail call i32 @GHOST_DispatchEvents(ptr noundef %5) #17
  br label %7

7:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_window_testbreak() local_unnamed_addr #0 {
  %1 = tail call double @PIL_check_seconds_timer() #17
  %2 = load double, ptr @wm_window_testbreak.ltime, align 8, !tbaa !140
  %3 = fsub double %1, %2
  %4 = fcmp ogt double %3, 5.000000e-02
  br i1 %4, label %5, label %13

5:                                                ; preds = %0
  %6 = load ptr, ptr @g_system, align 8, !tbaa !34
  %7 = tail call i32 @GHOST_ProcessEvents(ptr noundef %6, i32 noundef 0) #17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @g_system, align 8, !tbaa !34
  %11 = tail call i32 @GHOST_DispatchEvents(ptr noundef %10) #17
  br label %12

12:                                               ; preds = %9, %5
  store double %1, ptr @wm_window_testbreak.ltime, align 8, !tbaa !140
  br label %13

13:                                               ; preds = %12, %0
  ret void
}

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_ghost_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @g_system, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  %5 = tail call ptr @GHOST_CreateEventConsumer(ptr noundef nonnull @ghost_event_proc, ptr noundef %0) #17
  %6 = tail call ptr @GHOST_CreateSystem() #17
  store ptr %6, ptr @g_system, align 8, !tbaa !34
  %7 = tail call i32 @GHOST_AddEventConsumer(ptr noundef %6, ptr noundef %5) #17
  %8 = load i8, ptr getelementptr inbounds (%struct.WMInitStruct, ptr @wm_init_state, i64 0, i32 6), align 8, !tbaa !141
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @GHOST_UseNativePixels() #17
  br label %12

12:                                               ; preds = %4, %10, %1
  ret void
}

; Function Attrs: optsize
declare ptr @GHOST_CreateEventConsumer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ghost_event_proc(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !142 {
  %3 = alloca %struct.GHOST_TEventKeyData, align 4
  %4 = alloca %struct.wmEvent, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.PointerRNA, align 8
  %14 = alloca %struct.wmEvent, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = tail call ptr @CTX_wm_manager(ptr noundef %1) #17
  %18 = tail call i32 @GHOST_GetEventType(ptr noundef %0) #17
  %19 = tail call i64 @GHOST_GetEventTime(ptr noundef %0) #17
  %20 = trunc i64 %19 to i32
  %21 = icmp eq i32 %18, 10
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  tail call void @WM_exit(ptr noundef %1) #17
  br label %248

23:                                               ; preds = %2
  %24 = tail call ptr @GHOST_GetEventWindow(ptr noundef %0) #17
  %25 = tail call ptr @GHOST_GetEventData(ptr noundef %0) #17
  %26 = getelementptr inbounds %struct.wmWindowManager, ptr %17, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !143
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %248, label %30

30:                                               ; preds = %23
  %31 = icmp eq ptr %24, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.16) #18
  br label %248

34:                                               ; preds = %30
  %35 = load ptr, ptr @g_system, align 8, !tbaa !34
  %36 = tail call i32 @GHOST_ValidWindow(ptr noundef %35, ptr noundef nonnull %24) #17
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.17) #18
  br label %248

40:                                               ; preds = %34
  %41 = tail call ptr @GHOST_GetWindowUserData(ptr noundef nonnull %24) #17
  switch i32 %18, label %247 [
    i32 13, label %42
    i32 12, label %47
    i32 11, label %105
    i32 14, label %106
    i32 15, label %115
    i32 16, label %115
    i32 21, label %193
    i32 20, label %201
    i32 22, label %240
    i32 5, label %242
    i32 1, label %245
  ]

42:                                               ; preds = %40
  tail call void @wm_event_add_ghostevent(ptr noundef nonnull %17, ptr noundef %41, i32 noundef 13, i32 noundef %20, ptr noundef %25) #17
  %43 = getelementptr inbounds %struct.wmWindow, ptr %41, i64 0, i32 12
  store i16 0, ptr %43, align 4, !tbaa !144
  %44 = getelementptr inbounds %struct.wmWindow, ptr %41, i64 0, i32 21
  %45 = load ptr, ptr %44, align 8, !tbaa !54
  %46 = getelementptr inbounds %struct.wmEvent, ptr %45, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %46, i8 0, i64 10, i1 false)
  br label %248

47:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %48 = tail call fastcc i32 @query_qual(i32 noundef 115) #18
  %49 = tail call fastcc i32 @query_qual(i32 noundef 99) #18
  %50 = icmp ne i32 %49, 0
  %51 = tail call fastcc i32 @query_qual(i32 noundef 97) #18
  %52 = icmp ne i32 %51, 0
  %53 = tail call fastcc i32 @query_qual(i32 noundef 67) #18
  %54 = icmp ne i32 %53, 0
  %55 = getelementptr inbounds %struct.wmWindowManager, ptr %17, i64 0, i32 2
  store ptr %41, ptr %55, align 8, !tbaa !145
  %56 = getelementptr inbounds %struct.wmWindow, ptr %41, i64 0, i32 12
  store i16 1, ptr %56, align 4, !tbaa !144
  %57 = getelementptr inbounds %struct.GHOST_TEventKeyData, ptr %3, i64 0, i32 1
  store i8 0, ptr %57, align 4, !tbaa !146
  %58 = getelementptr inbounds %struct.GHOST_TEventKeyData, ptr %3, i64 0, i32 2
  store i8 0, ptr %58, align 1, !tbaa !91
  %59 = getelementptr inbounds %struct.wmWindow, ptr %41, i64 0, i32 21
  %60 = load ptr, ptr %59, align 8, !tbaa !54
  %61 = getelementptr inbounds %struct.wmEvent, ptr %60, i64 0, i32 17
  %62 = load i16, ptr %61, align 8, !tbaa !148
  %63 = icmp ne i16 %62, 0
  %64 = icmp eq i32 %48, 0
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %66, label %68

66:                                               ; preds = %47
  store i32 256, ptr %3, align 4, !tbaa !149
  call void @wm_event_add_ghostevent(ptr noundef nonnull %17, ptr noundef nonnull %41, i32 noundef 9, i32 noundef %20, ptr noundef nonnull %3) #17
  %67 = load ptr, ptr %59, align 8, !tbaa !54
  br label %68

68:                                               ; preds = %66, %47
  %69 = phi ptr [ %67, %66 ], [ %60, %47 ]
  %70 = getelementptr inbounds %struct.wmEvent, ptr %69, i64 0, i32 18
  %71 = load i16, ptr %70, align 2, !tbaa !150
  %72 = icmp eq i16 %71, 0
  %73 = select i1 %72, i1 true, i1 %50
  br i1 %73, label %76, label %74

74:                                               ; preds = %68
  store i32 258, ptr %3, align 4, !tbaa !149
  call void @wm_event_add_ghostevent(ptr noundef nonnull %17, ptr noundef nonnull %41, i32 noundef 9, i32 noundef %20, ptr noundef nonnull %3) #17
  %75 = load ptr, ptr %59, align 8, !tbaa !54
  br label %76

76:                                               ; preds = %68, %74
  %77 = phi ptr [ %69, %68 ], [ %75, %74 ]
  %78 = getelementptr inbounds %struct.wmEvent, ptr %77, i64 0, i32 19
  %79 = load i16, ptr %78, align 4, !tbaa !151
  %80 = icmp eq i16 %79, 0
  %81 = select i1 %80, i1 true, i1 %52
  br i1 %81, label %84, label %82

82:                                               ; preds = %76
  store i32 260, ptr %3, align 4, !tbaa !149
  call void @wm_event_add_ghostevent(ptr noundef nonnull %17, ptr noundef nonnull %41, i32 noundef 9, i32 noundef %20, ptr noundef nonnull %3) #17
  %83 = load ptr, ptr %59, align 8, !tbaa !54
  br label %84

84:                                               ; preds = %76, %82
  %85 = phi ptr [ %77, %76 ], [ %83, %82 ]
  %86 = getelementptr inbounds %struct.wmEvent, ptr %85, i64 0, i32 20
  %87 = load i16, ptr %86, align 2, !tbaa !152
  %88 = icmp eq i16 %87, 0
  %89 = select i1 %88, i1 true, i1 %54
  br i1 %89, label %92, label %90

90:                                               ; preds = %84
  store i32 262, ptr %3, align 4, !tbaa !149
  call void @wm_event_add_ghostevent(ptr noundef nonnull %17, ptr noundef nonnull %41, i32 noundef 9, i32 noundef %20, ptr noundef nonnull %3) #17
  %91 = load ptr, ptr %59, align 8, !tbaa !54
  br label %92

92:                                               ; preds = %84, %90
  %93 = phi ptr [ %85, %84 ], [ %91, %90 ]
  %94 = getelementptr inbounds %struct.wmEvent, ptr %93, i64 0, i32 21
  store i16 0, ptr %94, align 8, !tbaa !137
  call void @wm_get_cursor_position(ptr noundef nonnull %41, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %95 = load i32, ptr %5, align 4, !tbaa !38
  %96 = load ptr, ptr %59, align 8, !tbaa !54
  %97 = getelementptr inbounds %struct.wmEvent, ptr %96, i64 0, i32 4
  store i32 %95, ptr %97, align 4, !tbaa !153
  %98 = load i32, ptr %6, align 4, !tbaa !38
  %99 = getelementptr inbounds %struct.wmEvent, ptr %96, i64 0, i32 5
  store i32 %98, ptr %99, align 8, !tbaa !154
  %100 = getelementptr inbounds %struct.wmWindow, ptr %41, i64 0, i32 17
  store i16 1, ptr %100, align 2, !tbaa !155
  call void @wm_window_make_drawable(ptr noundef nonnull %17, ptr noundef nonnull %41) #18
  call void @wm_event_init_from_window(ptr noundef nonnull %41, ptr noundef nonnull %4) #17
  %101 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 2
  store i16 4, ptr %101, align 8, !tbaa !63
  %102 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 4
  %103 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 12
  %104 = load <2 x i32>, ptr %102, align 4, !tbaa !38
  store <2 x i32> %104, ptr %103, align 8, !tbaa !38
  call void @wm_event_add(ptr noundef nonnull %41, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  br label %248

105:                                              ; preds = %40
  tail call void @wm_window_close(ptr noundef %1, ptr noundef nonnull %17, ptr noundef %41) #18
  br label %248

106:                                              ; preds = %40
  %107 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !126
  %108 = and i32 %107, 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.wmWindow, ptr %41, i64 0, i32 18
  %112 = load i32, ptr %111, align 8, !tbaa !67
  %113 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull @__func__.ghost_event_proc, i32 noundef %112) #18
  br label %114

114:                                              ; preds = %110, %106
  tail call void @wm_window_make_drawable(ptr noundef nonnull %17, ptr noundef %41) #18
  tail call void @WM_event_add_notifier(ptr noundef %1, i32 noundef 33554432, ptr noundef null) #17
  br label %248

115:                                              ; preds = %40, %40
  %116 = getelementptr inbounds %struct.wmWindow, ptr %41, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !66
  %118 = tail call i32 @GHOST_GetWindowState(ptr noundef %117) #17
  %119 = trunc i32 %118 to i16
  %120 = getelementptr inbounds %struct.wmWindow, ptr %41, i64 0, i32 10
  store i16 %119, ptr %120, align 8, !tbaa !102
  %121 = icmp eq i32 %18, 15
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.wmWindow, ptr %41, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !73
  tail call void @WM_jobs_stop(ptr noundef nonnull %17, ptr noundef %124, ptr noundef null) #17
  br label %125

125:                                              ; preds = %122, %115
  %126 = icmp eq i32 %118, 2
  br i1 %126, label %248, label %127

127:                                              ; preds = %125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #16
  %128 = load ptr, ptr %116, align 8, !tbaa !66
  %129 = tail call ptr @GHOST_GetClientBounds(ptr noundef %128) #17
  call void @GHOST_GetRectangle(ptr noundef %129, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #17
  call void @GHOST_DisposeRectangle(ptr noundef %129) #17
  call void @wm_get_desktopsize(ptr noundef nonnull %11, ptr noundef nonnull %12) #18
  %130 = load i32, ptr %9, align 4, !tbaa !38
  %131 = load i32, ptr %7, align 4, !tbaa !38
  %132 = sub nsw i32 %130, %131
  %133 = load i32, ptr %10, align 4, !tbaa !38
  %134 = load i32, ptr %8, align 4, !tbaa !38
  %135 = sub nsw i32 %133, %134
  %136 = load i32, ptr %12, align 4, !tbaa !38
  %137 = getelementptr inbounds %struct.wmWindow, ptr %41, i64 0, i32 9
  %138 = load i16, ptr %137, align 2, !tbaa !72
  %139 = sext i16 %138 to i32
  %140 = add i32 %134, %139
  %141 = sub i32 %136, %140
  %142 = getelementptr inbounds %struct.wmWindow, ptr %41, i64 0, i32 8
  %143 = load i16, ptr %142, align 4, !tbaa !100
  %144 = sext i16 %143 to i32
  %145 = icmp eq i32 %132, %144
  %146 = icmp eq i32 %135, %139
  %147 = select i1 %145, i1 %146, i1 false
  br i1 %147, label %148, label %158

148:                                              ; preds = %127
  %149 = getelementptr inbounds %struct.wmWindow, ptr %41, i64 0, i32 6
  %150 = load i16, ptr %149, align 8, !tbaa !70
  %151 = sext i16 %150 to i32
  %152 = icmp eq i32 %131, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.wmWindow, ptr %41, i64 0, i32 7
  %155 = load i16, ptr %154, align 2, !tbaa !108
  %156 = sext i16 %155 to i32
  %157 = icmp eq i32 %141, %156
  br i1 %157, label %192, label %158

158:                                              ; preds = %153, %148, %127
  %159 = trunc i32 %132 to i16
  store i16 %159, ptr %142, align 4, !tbaa !100
  %160 = trunc i32 %135 to i16
  store i16 %160, ptr %137, align 2, !tbaa !72
  %161 = trunc i32 %131 to i16
  %162 = getelementptr inbounds %struct.wmWindow, ptr %41, i64 0, i32 6
  store i16 %161, ptr %162, align 8, !tbaa !70
  %163 = trunc i32 %141 to i16
  %164 = getelementptr inbounds %struct.wmWindow, ptr %41, i64 0, i32 7
  store i16 %163, ptr %164, align 2, !tbaa !108
  %165 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !126
  %166 = and i32 %165, 8
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %191, label %168

168:                                              ; preds = %158
  %169 = load ptr, ptr %116, align 8, !tbaa !66
  %170 = call i32 @GHOST_GetWindowState(ptr noundef %169) #17
  %171 = icmp ult i32 %170, 4
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = zext nneg i32 %170 to i64
  %174 = shl i64 %173, 2
  %175 = call ptr @llvm.load.relative.i64(ptr @reltable.ghost_event_proc, i64 %174)
  br label %176

176:                                              ; preds = %168, %172
  %177 = phi ptr [ %175, %172 ], [ @.str.23, %168 ]
  %178 = getelementptr inbounds %struct.wmWindow, ptr %41, i64 0, i32 18
  %179 = load i32, ptr %178, align 8, !tbaa !67
  %180 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef nonnull @__func__.ghost_event_proc, i32 noundef %179, ptr noundef nonnull %177) #18
  br i1 %121, label %191, label %181

181:                                              ; preds = %176
  %182 = load i16, ptr %162, align 8, !tbaa !70
  %183 = sext i16 %182 to i32
  %184 = load i16, ptr %164, align 2, !tbaa !108
  %185 = sext i16 %184 to i32
  %186 = load i16, ptr %142, align 4, !tbaa !100
  %187 = sext i16 %186 to i32
  %188 = load i16, ptr %137, align 2, !tbaa !72
  %189 = sext i16 %188 to i32
  %190 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %183, i32 noundef %185, i32 noundef %187, i32 noundef %189) #18
  br label %191

191:                                              ; preds = %176, %181, %158
  call void @wm_window_make_drawable(ptr noundef nonnull %17, ptr noundef nonnull %41) #18
  call void @wm_draw_window_clear(ptr noundef nonnull %41) #17
  call void @WM_event_add_notifier(ptr noundef %1, i32 noundef 50331649, ptr noundef null) #17
  call void @WM_event_add_notifier(ptr noundef %1, i32 noundef 33554433, ptr noundef null) #17
  br label %192

192:                                              ; preds = %191, %153
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  br label %248

193:                                              ; preds = %40
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #16
  %194 = tail call ptr @GHOST_GetEventData(ptr noundef %0) #17
  %195 = icmp eq ptr %194, null
  br i1 %195, label %200, label %196

196:                                              ; preds = %193
  %197 = tail call ptr @WM_operatortype_find(ptr noundef nonnull @.str.26, i8 noundef zeroext 0) #17
  %198 = tail call ptr @CTX_wm_window(ptr noundef %1) #17
  tail call void @CTX_wm_window_set(ptr noundef %1, ptr noundef %41) #17
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %13, ptr noundef %197) #17
  call void @RNA_string_set(ptr noundef nonnull %13, ptr noundef nonnull @.str.27, ptr noundef nonnull %194) #17
  %199 = call i32 @WM_operator_name_call_ptr(ptr noundef %1, ptr noundef %197, i16 noundef signext 6, ptr noundef nonnull %13) #17
  call void @WM_operator_properties_free(ptr noundef nonnull %13) #17
  call void @CTX_wm_window_set(ptr noundef %1, ptr noundef %198) #17
  br label %200

200:                                              ; preds = %196, %193
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #16
  br label %248

201:                                              ; preds = %40
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %14) #16
  %202 = tail call ptr @GHOST_GetEventData(ptr noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #16
  call void @wm_get_cursor_position(ptr noundef %41, ptr noundef nonnull %15, ptr noundef nonnull %16) #18
  %203 = load i32, ptr %15, align 4, !tbaa !38
  %204 = getelementptr inbounds %struct.wmWindow, ptr %41, i64 0, i32 21
  %205 = load ptr, ptr %204, align 8, !tbaa !54
  %206 = getelementptr inbounds %struct.wmEvent, ptr %205, i64 0, i32 4
  store i32 %203, ptr %206, align 4, !tbaa !153
  %207 = load i32, ptr %16, align 4, !tbaa !38
  %208 = getelementptr inbounds %struct.wmEvent, ptr %205, i64 0, i32 5
  store i32 %207, ptr %208, align 8, !tbaa !154
  call void @wm_event_init_from_window(ptr noundef %41, ptr noundef nonnull %14) #17
  %209 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 2
  store i16 4, ptr %209, align 8, !tbaa !63
  %210 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 4
  %211 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 12
  %212 = load <2 x i32>, ptr %210, align 4, !tbaa !38
  store <2 x i32> %212, ptr %211, align 8, !tbaa !38
  %213 = getelementptr inbounds %struct.wmWindowManager, ptr %17, i64 0, i32 2
  store ptr %41, ptr %213, align 8, !tbaa !145
  %214 = getelementptr inbounds %struct.wmWindow, ptr %41, i64 0, i32 12
  store i16 1, ptr %214, align 4, !tbaa !144
  call void @wm_event_add(ptr noundef %41, ptr noundef nonnull %14) #17
  store i16 20515, ptr %209, align 8, !tbaa !63
  %215 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 3
  store i16 2, ptr %215, align 2, !tbaa !136
  %216 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 25
  store i16 3, ptr %216, align 8, !tbaa !138
  %217 = getelementptr inbounds %struct.wmWindowManager, ptr %17, i64 0, i32 12
  %218 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 28
  store ptr %217, ptr %218, align 8, !tbaa !61
  %219 = getelementptr inbounds %struct.wmEvent, ptr %14, i64 0, i32 26
  store i16 1, ptr %219, align 2, !tbaa !156
  call void @wm_event_add(ptr noundef %41, ptr noundef nonnull %14) #17
  %220 = getelementptr inbounds %struct.GHOST_TEventDragnDropData, ptr %202, i64 0, i32 2
  %221 = load i32, ptr %220, align 8, !tbaa !157
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %223, label %239

223:                                              ; preds = %201
  %224 = getelementptr inbounds %struct.GHOST_TEventDragnDropData, ptr %202, i64 0, i32 3
  %225 = load ptr, ptr %224, align 8, !tbaa !159
  %226 = load i32, ptr %225, align 8, !tbaa !160
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %239

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.GHOST_TStringArray, ptr %225, i64 0, i32 1
  %230 = load ptr, ptr %229, align 8, !tbaa !162
  %231 = load ptr, ptr %230, align 8, !tbaa !34
  %232 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef %231) #18
  %233 = load ptr, ptr %229, align 8, !tbaa !162
  %234 = load ptr, ptr %233, align 8, !tbaa !34
  %235 = call i32 @ED_file_extension_icon(ptr noundef %234) #17
  %236 = load ptr, ptr %229, align 8, !tbaa !162
  %237 = load ptr, ptr %236, align 8, !tbaa !34
  %238 = call ptr @WM_event_start_drag(ptr noundef %1, i32 noundef %235, i32 noundef 2, ptr noundef %237, double noundef 0.000000e+00, i32 noundef 0) #17
  br label %239

239:                                              ; preds = %223, %228, %201
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %14) #16
  br label %248

240:                                              ; preds = %40
  %241 = tail call float @wm_window_pixelsize(ptr noundef %41) #18
  store float %241, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !110
  tail call void @BKE_userdef_state() #17
  tail call void @WM_event_add_notifier(ptr noundef %1, i32 noundef 50331649, ptr noundef null) #17
  tail call void @WM_event_add_notifier(ptr noundef %1, i32 noundef 33554433, ptr noundef null) #17
  br label %248

242:                                              ; preds = %40
  %243 = getelementptr inbounds %struct.GHOST_TEventTrackpadData, ptr %25, i64 0, i32 1
  %244 = getelementptr inbounds %struct.GHOST_TEventTrackpadData, ptr %25, i64 0, i32 2
  tail call fastcc void @wm_convert_cursor_position(ptr noundef %41, ptr noundef nonnull %243, ptr noundef nonnull %244) #18
  tail call void @wm_event_add_ghostevent(ptr noundef nonnull %17, ptr noundef %41, i32 noundef 5, i32 noundef %20, ptr noundef %25) #17
  br label %248

245:                                              ; preds = %40
  %246 = getelementptr inbounds %struct.GHOST_TEventCursorData, ptr %25, i64 0, i32 1
  tail call fastcc void @wm_convert_cursor_position(ptr noundef %41, ptr noundef %25, ptr noundef nonnull %246) #18
  tail call void @wm_event_add_ghostevent(ptr noundef nonnull %17, ptr noundef %41, i32 noundef 1, i32 noundef %20, ptr noundef %25) #17
  br label %248

247:                                              ; preds = %40
  tail call void @wm_event_add_ghostevent(ptr noundef nonnull %17, ptr noundef %41, i32 noundef %18, i32 noundef %20, ptr noundef %25) #17
  br label %248

248:                                              ; preds = %38, %32, %23, %22, %42, %92, %105, %114, %200, %239, %240, %242, %245, %247, %192, %125
  ret i32 1
}

; Function Attrs: optsize
declare ptr @GHOST_CreateSystem() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GHOST_AddEventConsumer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GHOST_UseNativePixels() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_ghost_exit() local_unnamed_addr #0 {
  %1 = load ptr, ptr @g_system, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @GHOST_DisposeSystem(ptr noundef nonnull %1) #17
  br label %5

5:                                                ; preds = %3, %0
  store ptr null, ptr @g_system, align 8, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare i32 @GHOST_DisposeSystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WM_event_timer_sleep(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef readnone %2, i8 noundef zeroext %3) local_unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 17
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %6 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  %10 = icmp eq ptr %8, %2
  %11 = or i1 %9, %10
  br i1 %11, label %12, label %6, !llvm.loop !163

12:                                               ; preds = %6
  br i1 %9, label %16, label %13

13:                                               ; preds = %12
  %14 = zext i8 %3 to i32
  %15 = getelementptr inbounds %struct.wmTimer, ptr %8, i64 0, i32 11
  store i32 %14, ptr %15, align 8, !tbaa !129
  br label %16

16:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_event_add_timer(ptr noundef %0, ptr noundef %1, i32 noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 96, ptr noundef nonnull @.str.15) #17
  %7 = getelementptr inbounds %struct.wmTimer, ptr %6, i64 0, i32 4
  store i32 %2, ptr %7, align 8, !tbaa !50
  %8 = tail call double @PIL_check_seconds_timer() #17
  %9 = getelementptr inbounds %struct.wmTimer, ptr %6, i64 0, i32 8
  store double %8, ptr %9, align 8, !tbaa !131
  %10 = fadd double %8, %3
  %11 = getelementptr inbounds %struct.wmTimer, ptr %6, i64 0, i32 9
  store double %10, ptr %11, align 8, !tbaa !130
  %12 = getelementptr inbounds %struct.wmTimer, ptr %6, i64 0, i32 10
  store double %8, ptr %12, align 8, !tbaa !134
  %13 = getelementptr inbounds %struct.wmTimer, ptr %6, i64 0, i32 3
  store double %3, ptr %13, align 8, !tbaa !135
  %14 = getelementptr inbounds %struct.wmTimer, ptr %6, i64 0, i32 2
  store ptr %1, ptr %14, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 17
  tail call void @BLI_addtail(ptr noundef nonnull %15, ptr noundef %6) #17
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_clipboard_text_get(i8 noundef zeroext %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @wm_clipboard_text_get_ex(i8 noundef zeroext %0, ptr noundef %1, i8 noundef zeroext 0) #18
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @wm_clipboard_text_get_ex(i8 noundef zeroext %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !164 {
  %4 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !124
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %38

6:                                                ; preds = %3
  %7 = zext i8 %0 to i32
  %8 = tail call ptr @GHOST_getClipboard(i32 noundef %7) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %38, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #19
  %13 = add i64 %12, 1
  %14 = tail call ptr %11(i64 noundef %13, ptr noundef nonnull @__func__.wm_clipboard_text_get_ex) #17
  %15 = icmp eq i8 %2, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %10, %20
  %17 = phi ptr [ %21, %20 ], [ %14, %10 ]
  %18 = phi ptr [ %22, %20 ], [ %8, %10 ]
  %19 = load i8, ptr %18, align 1, !tbaa !91
  switch i8 %19, label %20 [
    i8 0, label %32
    i8 10, label %32
    i8 13, label %32
  ]

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 %19, ptr %17, align 1, !tbaa !91
  %22 = getelementptr inbounds i8, ptr %18, i64 1
  br label %16, !llvm.loop !165

23:                                               ; preds = %10, %29
  %24 = phi ptr [ %30, %29 ], [ %14, %10 ]
  %25 = phi ptr [ %31, %29 ], [ %8, %10 ]
  %26 = load i8, ptr %25, align 1, !tbaa !91
  switch i8 %26, label %27 [
    i8 0, label %32
    i8 13, label %29
  ]

27:                                               ; preds = %23
  %28 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 %26, ptr %24, align 1, !tbaa !91
  br label %29

29:                                               ; preds = %23, %27
  %30 = phi ptr [ %28, %27 ], [ %24, %23 ]
  %31 = getelementptr inbounds i8, ptr %25, i64 1
  br label %23, !llvm.loop !166

32:                                               ; preds = %16, %16, %16, %23
  %33 = phi ptr [ %24, %23 ], [ %17, %16 ], [ %17, %16 ], [ %17, %16 ]
  store i8 0, ptr %33, align 1, !tbaa !91
  tail call void @free(ptr noundef %8) #17
  %34 = ptrtoint ptr %33 to i64
  %35 = ptrtoint ptr %14 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  br label %38

38:                                               ; preds = %6, %3, %32
  %39 = phi i32 [ %37, %32 ], [ 0, %3 ], [ 0, %6 ]
  %40 = phi ptr [ %14, %32 ], [ null, %3 ], [ null, %6 ]
  store i32 %39, ptr %1, align 4, !tbaa !38
  ret ptr %40
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_clipboard_text_get_firstline(i8 noundef zeroext %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @wm_clipboard_text_get_ex(i8 noundef zeroext %0, ptr noundef %1, i8 noundef zeroext 1) #18
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_clipboard_text_set(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !124
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = zext i8 %1 to i32
  tail call void @GHOST_putClipboard(ptr noundef %0, i32 noundef %6) #17
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: optsize
declare void @GHOST_putClipboard(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_progress_set(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = tail call i32 @GHOST_SetProgressBar(ptr noundef %4, float noundef %1) #17
  ret void
}

; Function Attrs: optsize
declare i32 @GHOST_SetProgressBar(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_progress_clear(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = tail call i32 @GHOST_EndProgressBar(ptr noundef %3) #17
  ret void
}

; Function Attrs: optsize
declare i32 @GHOST_EndProgressBar(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @wm_window_get_position(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 6
  %5 = load i16, ptr %4, align 8, !tbaa !70
  %6 = sext i16 %5 to i32
  store i32 %6, ptr %1, align 4, !tbaa !38
  %7 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 7
  %8 = load i16, ptr %7, align 2, !tbaa !108
  %9 = sext i16 %8 to i32
  store i32 %9, ptr %2, align 4, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare i32 @GHOST_SetClientSize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_window_lower(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = tail call i32 @GHOST_SetWindowOrder(ptr noundef %3, i32 noundef 1) #17
  ret void
}

; Function Attrs: optsize
declare i32 @GHOST_SetWindowOrder(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_window_swap_buffers(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = tail call i32 @GHOST_SwapWindowBuffers(ptr noundef %3) #17
  ret void
}

; Function Attrs: optsize
declare i32 @GHOST_SwapWindowBuffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_window_set_swap_interval(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = tail call i32 @GHOST_SetSwapInterval(ptr noundef %4, i32 noundef %1) #17
  ret void
}

; Function Attrs: optsize
declare i32 @GHOST_SetSwapInterval(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @wm_window_get_swap_interval(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = tail call i32 @GHOST_GetSwapInterval(ptr noundef %4, ptr noundef %1) #17
  %6 = trunc i32 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare i32 @GHOST_GetSwapInterval(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @WM_init_state_size_set(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 {
  store i32 %0, ptr getelementptr inbounds (%struct.WMInitStruct, ptr @wm_init_state, i64 0, i32 2), align 8, !tbaa !98
  store i32 %1, ptr getelementptr inbounds (%struct.WMInitStruct, ptr @wm_init_state, i64 0, i32 3), align 4, !tbaa !99
  %5 = tail call i32 @llvm.smax.i32(i32 %2, i32 640)
  store i32 %5, ptr @wm_init_state, align 16, !tbaa !96
  %6 = tail call i32 @llvm.smax.i32(i32 %3, i32 480)
  store i32 %6, ptr getelementptr inbounds (%struct.WMInitStruct, ptr @wm_init_state, i64 0, i32 1), align 4, !tbaa !167
  %7 = load i32, ptr getelementptr inbounds (%struct.WMInitStruct, ptr @wm_init_state, i64 0, i32 5), align 4, !tbaa !101
  %8 = or i32 %7, 1
  store i32 %8, ptr getelementptr inbounds (%struct.WMInitStruct, ptr @wm_init_state, i64 0, i32 5), align 4, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @WM_init_state_fullscreen_set() local_unnamed_addr #8 {
  store i32 3, ptr getelementptr inbounds (%struct.WMInitStruct, ptr @wm_init_state, i64 0, i32 4), align 16, !tbaa !103
  %1 = load i32, ptr getelementptr inbounds (%struct.WMInitStruct, ptr @wm_init_state, i64 0, i32 5), align 4, !tbaa !101
  %2 = or i32 %1, 2
  store i32 %2, ptr getelementptr inbounds (%struct.WMInitStruct, ptr @wm_init_state, i64 0, i32 5), align 4, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @WM_init_state_normal_set() local_unnamed_addr #8 {
  store i32 0, ptr getelementptr inbounds (%struct.WMInitStruct, ptr @wm_init_state, i64 0, i32 4), align 16, !tbaa !103
  %1 = load i32, ptr getelementptr inbounds (%struct.WMInitStruct, ptr @wm_init_state, i64 0, i32 5), align 4, !tbaa !101
  %2 = or i32 %1, 2
  store i32 %2, ptr getelementptr inbounds (%struct.WMInitStruct, ptr @wm_init_state, i64 0, i32 5), align 4, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @WM_init_native_pixels(i8 noundef zeroext %0) local_unnamed_addr #9 {
  store i8 %0, ptr getelementptr inbounds (%struct.WMInitStruct, ptr @wm_init_state, i64 0, i32 6), align 8, !tbaa !141
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_cursor_warp(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = icmp eq ptr %0, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = icmp eq ptr %9, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %7
  %12 = tail call float @GHOST_GetNativePixelSize(ptr noundef nonnull %9) #17
  %13 = sitofp i32 %1 to float
  %14 = fdiv float %13, %12
  %15 = fptosi float %14 to i32
  store i32 %15, ptr %4, align 4, !tbaa !38
  %16 = sitofp i32 %2 to float
  %17 = fdiv float %16, %12
  %18 = fptosi float %17 to i32
  %19 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 9
  %20 = load i16, ptr %19, align 2, !tbaa !72
  %21 = sext i16 %20 to i32
  %22 = xor i32 %18, -1
  %23 = add i32 %21, %22
  store i32 %23, ptr %5, align 4, !tbaa !38
  %24 = load ptr, ptr %8, align 8, !tbaa !66
  call void @GHOST_ClientToScreen(ptr noundef %24, i32 noundef %15, i32 noundef %23, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %25 = load ptr, ptr @g_system, align 8, !tbaa !34
  %26 = load i32, ptr %4, align 4, !tbaa !38
  %27 = load i32, ptr %5, align 4, !tbaa !38
  %28 = call i32 @GHOST_SetCursorPosition(ptr noundef %25, i32 noundef %26, i32 noundef %27) #17
  %29 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 21
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  %31 = getelementptr inbounds %struct.wmEvent, ptr %30, i64 0, i32 12
  store i32 %1, ptr %31, align 8, !tbaa !168
  %32 = getelementptr inbounds %struct.wmEvent, ptr %30, i64 0, i32 13
  store i32 %2, ptr %32, align 4, !tbaa !169
  %33 = getelementptr inbounds %struct.wmEvent, ptr %30, i64 0, i32 4
  store i32 %1, ptr %33, align 4, !tbaa !153
  %34 = getelementptr inbounds %struct.wmEvent, ptr %30, i64 0, i32 5
  store i32 %2, ptr %34, align 8, !tbaa !154
  br label %35

35:                                               ; preds = %11, %7, %3
  ret void
}

; Function Attrs: optsize
declare void @GHOST_ClientToScreen(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GHOST_SetCursorPosition(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @WM_cursor_pressure(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = tail call ptr @GHOST_GetTabletData(ptr noundef %3) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr %4, align 4, !tbaa !170
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.GHOST_TabletData, ptr %4, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !172
  br label %12

12:                                               ; preds = %1, %6, %9
  %13 = phi float [ %11, %9 ], [ -1.000000e+00, %6 ], [ -1.000000e+00, %1 ]
  ret float %13
}

; Function Attrs: optsize
declare ptr @GHOST_GetTabletData(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WM_window_pixels_x(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = tail call float @GHOST_GetNativePixelSize(ptr noundef %3) #17
  %5 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 8
  %6 = load i16, ptr %5, align 4, !tbaa !100
  %7 = sitofp i16 %6 to float
  %8 = fmul float %4, %7
  %9 = fptosi float %8 to i32
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WM_window_pixels_y(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = tail call float @GHOST_GetNativePixelSize(ptr noundef %3) #17
  %5 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 9
  %6 = load i16, ptr %5, align 2, !tbaa !72
  %7 = sitofp i16 %6 to float
  %8 = fmul float %4, %7
  %9 = fptosi float %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @WM_window_is_fullscreen(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 10
  %3 = load i16, ptr %2, align 8, !tbaa !102
  %4 = icmp eq i16 %3, 3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare i32 @GHOST_DisposeWindow(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GHOST_CreateWindow(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_init() local_unnamed_addr #2

; Function Attrs: optsize
declare void @GHOST_SetWindowUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GHOST_GetClientBounds(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GHOST_GetWidthRectangle(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GHOST_GetHeightRectangle(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GHOST_DisposeRectangle(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glClearColor(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GPU_type_matches(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glClear(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_state_init() local_unnamed_addr #2

; Function Attrs: optsize
declare void @GHOST_ScreenToClient(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: optsize
declare void @wm_jobs_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wm_autosave_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wm_event_init_from_window(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wm_event_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GHOST_GetEventType(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @GHOST_GetEventTime(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GHOST_GetEventWindow(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GHOST_GetEventData(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @GHOST_ValidWindow(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GHOST_GetWindowUserData(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wm_event_add_ghostevent(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @query_qual(i32 noundef %0) unnamed_addr #0 !PGOFuncName !173 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !tbaa !38
  switch i32 %0, label %5 [
    i32 115, label %6
    i32 99, label %3
    i32 67, label %4
  ]

3:                                                ; preds = %1
  br label %6

4:                                                ; preds = %1
  br label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %1, %5, %4, %3
  %7 = phi i32 [ 2, %5 ], [ 6, %4 ], [ 4, %3 ], [ 0, %1 ]
  %8 = phi i32 [ 3, %5 ], [ 6, %4 ], [ 5, %3 ], [ 1, %1 ]
  %9 = load ptr, ptr @g_system, align 8, !tbaa !34
  %10 = call i32 @GHOST_GetModifierKeyState(ptr noundef %9, i32 noundef %7, ptr noundef nonnull %2) #17
  %11 = load i32, ptr %2, align 4, !tbaa !38
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = load ptr, ptr @g_system, align 8, !tbaa !34
  %15 = call i32 @GHOST_GetModifierKeyState(ptr noundef %14, i32 noundef %8, ptr noundef nonnull %2) #17
  %16 = load i32, ptr %2, align 4, !tbaa !38
  br label %17

17:                                               ; preds = %13, %6
  %18 = phi i32 [ %16, %13 ], [ %11, %6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret i32 %18
}

; Function Attrs: optsize
declare void @WM_jobs_stop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GHOST_GetRectangle(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_properties_create_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_operator_name_call_ptr(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_properties_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_file_extension_icon(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_start_drag(ptr noundef, i32 noundef, i32 noundef, ptr noundef, double noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GHOST_GetModifierKeyState(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GHOST_getClipboard(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!41, !35, i64 320}
!41 = !{!"wmWindowManager", !42, i64 0, !35, i64 120, !35, i64 128, !44, i64 136, !39, i64 152, !43, i64 156, !43, i64 158, !44, i64 160, !44, i64 176, !45, i64 192, !44, i64 232, !44, i64 248, !44, i64 264, !44, i64 280, !35, i64 296, !35, i64 304, !35, i64 312, !44, i64 320, !35, i64 336, !36, i64 344, !36, i64 345}
!42 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !43, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !35, i64 112}
!43 = !{!"short", !36, i64 0}
!44 = !{!"ListBase", !35, i64 0, !35, i64 8}
!45 = !{!"ReportList", !44, i64 0, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !35, i64 32}
!46 = !{!47, !35, i64 0}
!47 = !{!"wmTimer", !35, i64 0, !35, i64 8, !35, i64 16, !48, i64 24, !39, i64 32, !35, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !48, i64 72, !48, i64 80, !39, i64 88}
!48 = !{!"double", !36, i64 0}
!49 = !{!47, !35, i64 16}
!50 = !{!47, !39, i64 32}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = distinct !{!53, !52}
!54 = !{!55, !35, i64 136}
!55 = !{!"wmWindow", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !43, i64 104, !43, i64 106, !43, i64 108, !43, i64 110, !43, i64 112, !43, i64 114, !43, i64 116, !43, i64 118, !43, i64 120, !43, i64 122, !43, i64 124, !43, i64 126, !39, i64 128, !43, i64 132, !43, i64 134, !35, i64 136, !35, i64 144, !35, i64 152, !39, i64 160, !39, i64 164, !35, i64 168, !44, i64 176, !44, i64 192, !44, i64 208, !44, i64 224, !44, i64 240}
!56 = !{!55, !35, i64 168}
!57 = distinct !{!57, !52}
!58 = !{!41, !35, i64 224}
!59 = !{!47, !35, i64 40}
!60 = distinct !{!60, !52}
!61 = !{!62, !35, i64 112}
!62 = !{!"wmEvent", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 18, !39, i64 20, !39, i64 24, !36, i64 28, !36, i64 36, !36, i64 42, !36, i64 43, !43, i64 44, !43, i64 46, !39, i64 48, !39, i64 52, !48, i64 56, !39, i64 64, !39, i64 68, !43, i64 72, !43, i64 74, !43, i64 76, !43, i64 78, !43, i64 80, !43, i64 82, !35, i64 88, !35, i64 96, !43, i64 104, !43, i64 106, !39, i64 108, !35, i64 112}
!63 = !{!62, !43, i64 16}
!64 = distinct !{!64, !52}
!65 = !{!"wm_window.c:wm_ghostwindow_destroy"}
!66 = !{!55, !35, i64 16}
!67 = !{!55, !39, i64 128}
!68 = !{!"wm_window.c:find_free_winid"}
!69 = distinct !{!69, !52}
!70 = !{!55, !43, i64 104}
!71 = !{!43, !43, i64 0}
!72 = !{!55, !43, i64 110}
!73 = !{!55, !35, i64 24}
!74 = !{!75, !43, i64 212}
!75 = !{!"bScreen", !42, i64 0, !44, i64 120, !44, i64 136, !44, i64 152, !44, i64 168, !35, i64 184, !35, i64 192, !39, i64 200, !39, i64 204, !43, i64 208, !43, i64 210, !43, i64 212, !43, i64 214, !43, i64 216, !43, i64 218, !43, i64 220, !43, i64 222, !43, i64 224, !43, i64 226, !43, i64 228, !43, i64 230, !35, i64 232, !35, i64 240}
!76 = !{!75, !43, i64 216}
!77 = !{!75, !43, i64 214}
!78 = !{!79, !43, i64 8908}
!79 = !{!"UserDef", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !39, i64 8468, !43, i64 8472, !43, i64 8474, !43, i64 8476, !43, i64 8478, !43, i64 8480, !43, i64 8482, !39, i64 8484, !39, i64 8488, !39, i64 8492, !43, i64 8496, !43, i64 8498, !39, i64 8500, !39, i64 8504, !39, i64 8508, !39, i64 8512, !39, i64 8516, !39, i64 8520, !39, i64 8524, !43, i64 8528, !43, i64 8530, !43, i64 8532, !43, i64 8534, !44, i64 8536, !44, i64 8552, !44, i64 8568, !44, i64 8584, !44, i64 8600, !44, i64 8616, !44, i64 8632, !36, i64 8648, !43, i64 8712, !43, i64 8714, !43, i64 8716, !43, i64 8718, !43, i64 8720, !43, i64 8722, !43, i64 8724, !43, i64 8726, !36, i64 8728, !43, i64 8896, !43, i64 8898, !43, i64 8900, !43, i64 8902, !43, i64 8904, !43, i64 8906, !43, i64 8908, !43, i64 8910, !39, i64 8912, !39, i64 8916, !43, i64 8920, !43, i64 8922, !43, i64 8924, !43, i64 8926, !43, i64 8928, !43, i64 8930, !43, i64 8932, !43, i64 8934, !43, i64 8936, !43, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !43, i64 8944, !43, i64 8946, !43, i64 8948, !43, i64 8950, !43, i64 8952, !43, i64 8954, !80, i64 8956, !80, i64 8960, !39, i64 8964, !43, i64 8968, !43, i64 8970, !80, i64 8972, !43, i64 8976, !43, i64 8978, !43, i64 8980, !43, i64 8982, !81, i64 8984, !36, i64 9760, !36, i64 9772, !43, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !39, i64 10896, !39, i64 10900, !80, i64 10904, !80, i64 10908, !39, i64 10912, !43, i64 10916, !43, i64 10918, !43, i64 10920, !43, i64 10922, !43, i64 10924, !43, i64 10926, !82, i64 10928}
!80 = !{!"float", !36, i64 0}
!81 = !{!"ColorBand", !43, i64 0, !43, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!82 = !{!"WalkNavigation", !80, i64 0, !80, i64 4, !80, i64 8, !80, i64 12, !80, i64 16, !80, i64 20, !43, i64 24, !36, i64 26}
!83 = !{!55, !39, i64 160}
!84 = !{!75, !43, i64 210}
!85 = distinct !{!85, !52}
!86 = !{!79, !39, i64 8484}
!87 = !{!41, !43, i64 156}
!88 = !{!89, !36, i64 2058}
!89 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !44, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !43, i64 2084, !43, i64 2086, !43, i64 2088, !36, i64 2090, !43, i64 2092, !39, i64 2096, !39, i64 2100, !36, i64 2104, !39, i64 2108, !39, i64 2112, !36, i64 2116}
!90 = !{!89, !35, i64 0}
!91 = !{!36, !36, i64 0}
!92 = !{!93, !43, i64 1072}
!93 = !{!"Main", !35, i64 0, !35, i64 8, !36, i64 16, !43, i64 1040, !43, i64 1042, !43, i64 1044, !43, i64 1046, !94, i64 1048, !36, i64 1056, !43, i64 1072, !35, i64 1080, !44, i64 1088, !44, i64 1104, !44, i64 1120, !44, i64 1136, !44, i64 1152, !44, i64 1168, !44, i64 1184, !44, i64 1200, !44, i64 1216, !44, i64 1232, !44, i64 1248, !44, i64 1264, !44, i64 1280, !44, i64 1296, !44, i64 1312, !44, i64 1328, !44, i64 1344, !44, i64 1360, !44, i64 1376, !44, i64 1392, !44, i64 1408, !44, i64 1424, !44, i64 1440, !44, i64 1456, !44, i64 1472, !44, i64 1488, !44, i64 1504, !44, i64 1520, !44, i64 1536, !44, i64 1552, !44, i64 1568, !44, i64 1584, !44, i64 1600, !44, i64 1616, !36, i64 1632, !35, i64 1888, !35, i64 1896}
!94 = !{!"long", !36, i64 0}
!95 = !{!79, !39, i64 10912}
!96 = !{!97, !39, i64 0}
!97 = !{!"WMInitStruct", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !36, i64 24}
!98 = !{!97, !39, i64 8}
!99 = !{!97, !39, i64 12}
!100 = !{!55, !43, i64 108}
!101 = !{!97, !39, i64 20}
!102 = !{!55, !43, i64 112}
!103 = !{!97, !39, i64 16}
!104 = !{!41, !35, i64 296}
!105 = distinct !{!105, !52}
!106 = !{!"wm_window.c:wm_window_add_ghostwindow"}
!107 = !{!79, !43, i64 8968}
!108 = !{!55, !43, i64 106}
!109 = !{!41, !35, i64 120}
!110 = !{!79, !80, i64 10908}
!111 = !{!112, !39, i64 0}
!112 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!113 = !{!112, !39, i64 8}
!114 = !{!"wm_window.c:BLI_rcti_size_x"}
!115 = !{!112, !39, i64 4}
!116 = !{!"wm_window.c:BLI_rcti_size_y"}
!117 = !{!112, !39, i64 12}
!118 = distinct !{!118, !52}
!119 = !{!75, !35, i64 184}
!120 = !{!75, !35, i64 152}
!121 = !{!122, !36, i64 72}
!122 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !112, i64 56, !36, i64 72, !36, i64 73, !43, i64 74, !43, i64 76, !43, i64 78, !43, i64 80, !43, i64 82, !43, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !44, i64 96, !44, i64 112, !44, i64 128, !44, i64 144}
!123 = !{!"wm_window.c:wm_window_check_position"}
!124 = !{!89, !36, i64 2081}
!125 = !{!"wm_window.c:wm_convert_cursor_position"}
!126 = !{!89, !39, i64 2100}
!127 = !{i32 0, i32 2}
!128 = !{!"wm_window.c:wm_window_timer"}
!129 = !{!47, !39, i64 88}
!130 = !{!47, !48, i64 72}
!131 = !{!47, !48, i64 64}
!132 = !{!47, !48, i64 56}
!133 = !{!47, !48, i64 48}
!134 = !{!47, !48, i64 80}
!135 = !{!47, !48, i64 24}
!136 = !{!62, !43, i64 18}
!137 = !{!62, !43, i64 80}
!138 = !{!62, !43, i64 104}
!139 = distinct !{!139, !52}
!140 = !{!48, !48, i64 0}
!141 = !{!97, !36, i64 24}
!142 = !{!"wm_window.c:ghost_event_proc"}
!143 = !{!41, !39, i64 152}
!144 = !{!55, !43, i64 116}
!145 = !{!41, !35, i64 128}
!146 = !{!147, !36, i64 4}
!147 = !{!"", !39, i64 0, !36, i64 4, !36, i64 5}
!148 = !{!62, !43, i64 72}
!149 = !{!147, !39, i64 0}
!150 = !{!62, !43, i64 74}
!151 = !{!62, !43, i64 76}
!152 = !{!62, !43, i64 78}
!153 = !{!62, !39, i64 20}
!154 = !{!62, !39, i64 24}
!155 = !{!55, !43, i64 126}
!156 = !{!62, !43, i64 106}
!157 = !{!158, !39, i64 8}
!158 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !35, i64 16}
!159 = !{!158, !35, i64 16}
!160 = !{!161, !39, i64 0}
!161 = !{!"", !39, i64 0, !35, i64 8}
!162 = !{!161, !35, i64 8}
!163 = distinct !{!163, !52}
!164 = !{!"wm_window.c:wm_clipboard_text_get_ex"}
!165 = distinct !{!165, !52}
!166 = distinct !{!166, !52}
!167 = !{!97, !39, i64 4}
!168 = !{!62, !39, i64 48}
!169 = !{!62, !39, i64 52}
!170 = !{!171, !39, i64 0}
!171 = !{!"GHOST_TabletData", !39, i64 0, !80, i64 4, !80, i64 8, !80, i64 12}
!172 = !{!171, !80, i64 4}
!173 = !{!"wm_window.c:query_qual"}
