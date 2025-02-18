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
@wm_init_state.0 = internal unnamed_addr global i32 0, align 4
@wm_init_state.1 = internal unnamed_addr global i32 0, align 4
@wm_init_state.2 = internal unnamed_addr global i32 0, align 4
@wm_init_state.3 = internal unnamed_addr global i32 0, align 4
@wm_init_state.4 = internal unnamed_addr global i1 false, align 4
@wm_init_state.5 = internal unnamed_addr global i32 0, align 4
@wm_init_state.6 = internal unnamed_addr global i8 1, align 4
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

; Function Attrs: nounwind uwtable
define dso_local void @wm_get_screensize(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %5 = load ptr, ptr @g_system, align 8, !tbaa !34
  call void @GHOST_GetMainDisplayDimensions(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  %6 = load i32, ptr %3, align 4, !tbaa !38
  store i32 %6, ptr %0, align 4, !tbaa !38
  %7 = load i32, ptr %4, align 4, !tbaa !38
  store i32 %7, ptr %1, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @GHOST_GetMainDisplayDimensions(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @wm_get_desktopsize(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %5 = load ptr, ptr @g_system, align 8, !tbaa !34
  call void @GHOST_GetAllDisplayDimensions(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  %6 = load i32, ptr %3, align 4, !tbaa !38
  store i32 %6, ptr %0, align 4, !tbaa !38
  %7 = load i32, ptr %4, align 4, !tbaa !38
  store i32 %7, ptr %1, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret void
}

declare void @GHOST_GetAllDisplayDimensions(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @wm_window_free(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 28
  tail call void @WM_event_remove_handlers(ptr noundef nonnull %0, ptr noundef nonnull %6) #15
  %7 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 29
  tail call void @WM_event_remove_handlers(ptr noundef nonnull %0, ptr noundef nonnull %7) #15
  %8 = tail call ptr @CTX_wm_window(ptr noundef nonnull %0) #15
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void @CTX_wm_window_set(ptr noundef nonnull %0, ptr noundef null) #15
  br label %11

11:                                               ; preds = %5, %10, %3
  %12 = getelementptr inbounds %struct.wmWindowManager, ptr %1, i64 0, i32 1
  %13 = getelementptr inbounds %struct.wmWindowManager, ptr %1, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

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
  tail call void @wm_jobs_timer_ended(ptr noundef %1, ptr noundef nonnull %17) #15
  br label %27

27:                                               ; preds = %16, %22, %26
  %28 = icmp eq ptr %18, null
  br i1 %28, label %29, label %16, !llvm.loop !51

29:                                               ; preds = %27, %11
  %30 = load ptr, ptr %13, align 8, !tbaa !40
  %31 = icmp eq ptr %30, null
  br i1 %31, label %82, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.wmWindowManager, ptr %1, i64 0, i32 9, i32 5
  %34 = getelementptr inbounds %struct.wmWindowManager, ptr %1, i64 0, i32 3
  br label %35

35:                                               ; preds = %32, %80
  %36 = phi ptr [ %30, %32 ], [ %37, %80 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = getelementptr inbounds %struct.wmTimer, ptr %36, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !49
  %40 = icmp eq ptr %39, %2
  br i1 %40, label %41, label %80

41:                                               ; preds = %35, %41
  %42 = phi ptr [ %43, %41 ], [ %13, %35 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = icmp eq ptr %43, null
  %45 = icmp eq ptr %43, %36
  %46 = or i1 %44, %45
  br i1 %46, label %47, label %41, !llvm.loop !54

47:                                               ; preds = %41
  br i1 %44, label %80, label %48

48:                                               ; preds = %47
  %49 = load ptr, ptr %33, align 8, !tbaa !55
  %50 = icmp eq ptr %49, %43
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store ptr null, ptr %33, align 8, !tbaa !55
  br label %52

52:                                               ; preds = %51, %48
  tail call void @BLI_remlink(ptr noundef nonnull %13, ptr noundef nonnull %43) #15
  %53 = getelementptr inbounds %struct.wmTimer, ptr %43, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !56
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %57(ptr noundef nonnull %54) #15
  br label %58

58:                                               ; preds = %56, %52
  %59 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %59(ptr noundef nonnull %43) #15
  %60 = load ptr, ptr %34, align 8, !tbaa !34
  %61 = icmp eq ptr %60, null
  br i1 %61, label %80, label %65

62:                                               ; preds = %77, %65
  %63 = load ptr, ptr %66, align 8, !tbaa !34
  %64 = icmp eq ptr %63, null
  br i1 %64, label %80, label %65, !llvm.loop !57

65:                                               ; preds = %58, %62
  %66 = phi ptr [ %63, %62 ], [ %60, %58 ]
  %67 = getelementptr inbounds %struct.wmWindow, ptr %66, i64 0, i32 27
  %68 = load ptr, ptr %67, align 8, !tbaa !34
  %69 = icmp eq ptr %68, null
  br i1 %69, label %62, label %70

70:                                               ; preds = %65, %77
  %71 = phi ptr [ %78, %77 ], [ %68, %65 ]
  %72 = getelementptr inbounds %struct.wmEvent, ptr %71, i64 0, i32 28
  %73 = load ptr, ptr %72, align 8, !tbaa !58
  %74 = icmp eq ptr %73, %43
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  store ptr null, ptr %72, align 8, !tbaa !58
  %76 = getelementptr inbounds %struct.wmEvent, ptr %71, i64 0, i32 2
  store i16 0, ptr %76, align 8, !tbaa !60
  br label %77

77:                                               ; preds = %75, %70
  %78 = load ptr, ptr %71, align 8, !tbaa !34
  %79 = icmp eq ptr %78, null
  br i1 %79, label %62, label %70, !llvm.loop !61

80:                                               ; preds = %62, %58, %47, %35
  %81 = icmp eq ptr %37, null
  br i1 %81, label %82, label %35, !llvm.loop !62

82:                                               ; preds = %80, %29
  %83 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 21
  %84 = load ptr, ptr %83, align 8, !tbaa !63
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %87(ptr noundef nonnull %84) #15
  br label %88

88:                                               ; preds = %86, %82
  tail call void @wm_event_free_all(ptr noundef %2) #15
  tail call void @wm_subwindows_free(ptr noundef %2) #15
  %89 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 26
  %90 = load ptr, ptr %89, align 8, !tbaa !65
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %93(ptr noundef nonnull %90) #15
  br label %94

94:                                               ; preds = %92, %88
  %95 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !66
  %97 = icmp eq ptr %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr @g_system, align 8, !tbaa !34
  %100 = tail call i32 @GHOST_DisposeWindow(ptr noundef %99, ptr noundef nonnull %96) #15
  store ptr null, ptr %95, align 8, !tbaa !66
  br label %101

101:                                              ; preds = %94, %98
  %102 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %102(ptr noundef %2) #15
  ret void
}

declare void @WM_event_remove_handlers(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare void @CTX_wm_window_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @wm_jobs_timer_ended(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @WM_event_remove_timer(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 17
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %5 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %7, %2
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %5, !llvm.loop !54

11:                                               ; preds = %5
  br i1 %8, label %46, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 9, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  %15 = icmp eq ptr %14, %7
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store ptr null, ptr %13, align 8, !tbaa !55
  br label %17

17:                                               ; preds = %16, %12
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %7) #15
  %18 = getelementptr inbounds %struct.wmTimer, ptr %7, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !56
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %22(ptr noundef nonnull %19) #15
  br label %23

23:                                               ; preds = %21, %17
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %24(ptr noundef nonnull %7) #15
  %25 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %46, label %31

28:                                               ; preds = %43, %31
  %29 = load ptr, ptr %32, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %46, label %31, !llvm.loop !57

31:                                               ; preds = %23, %28
  %32 = phi ptr [ %29, %28 ], [ %26, %23 ]
  %33 = getelementptr inbounds %struct.wmWindow, ptr %32, i64 0, i32 27
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %28, label %36

36:                                               ; preds = %31, %43
  %37 = phi ptr [ %44, %43 ], [ %34, %31 ]
  %38 = getelementptr inbounds %struct.wmEvent, ptr %37, i64 0, i32 28
  %39 = load ptr, ptr %38, align 8, !tbaa !58
  %40 = icmp eq ptr %39, %7
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  store ptr null, ptr %38, align 8, !tbaa !58
  %42 = getelementptr inbounds %struct.wmEvent, ptr %37, i64 0, i32 2
  store i16 0, ptr %42, align 8, !tbaa !60
  br label %43

43:                                               ; preds = %36, %41
  %44 = load ptr, ptr %37, align 8, !tbaa !34
  %45 = icmp eq ptr %44, null
  br i1 %45, label %28, label %36, !llvm.loop !61

46:                                               ; preds = %28, %23, %11
  ret void
}

declare void @wm_event_free_all(ptr noundef) local_unnamed_addr #2

declare void @wm_subwindows_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @wm_window_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 256, ptr noundef nonnull @.str) #15
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %2, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %4) #15
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %16, %8 ], [ %6, %1 ]
  %10 = phi i32 [ %15, %8 ], [ 1, %1 ]
  %11 = getelementptr inbounds %struct.wmWindow, ptr %9, i64 0, i32 18
  %12 = load i32, ptr %11, align 8, !tbaa !67
  %13 = icmp sgt i32 %10, %12
  %14 = add nsw i32 %12, 1
  %15 = select i1 %13, i32 %10, i32 %14
  %16 = load ptr, ptr %9, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !68

18:                                               ; preds = %8, %1
  %19 = phi i32 [ 1, %1 ], [ %15, %8 ]
  %20 = getelementptr inbounds %struct.wmWindow, ptr %4, i64 0, i32 18
  store i32 %19, ptr %20, align 8, !tbaa !67
  ret ptr %4
}

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @wm_window_copy(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 256, ptr noundef nonnull @.str) #15
  %6 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %5) #15
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %17, %9 ], [ %7, %2 ]
  %11 = phi i32 [ %16, %9 ], [ 1, %2 ]
  %12 = getelementptr inbounds %struct.wmWindow, ptr %10, i64 0, i32 18
  %13 = load i32, ptr %12, align 8, !tbaa !67
  %14 = icmp sgt i32 %11, %13
  %15 = add nsw i32 %13, 1
  %16 = select i1 %14, i32 %11, i32 %15
  %17 = load ptr, ptr %10, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9, !llvm.loop !68

19:                                               ; preds = %9, %2
  %20 = phi i32 [ 1, %2 ], [ %16, %9 ]
  %21 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 18
  store i32 %20, ptr %21, align 8, !tbaa !67
  %22 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 6
  %23 = load i16, ptr %22, align 8, !tbaa !69
  %24 = add i16 %23, 10
  %25 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 6
  store i16 %24, ptr %25, align 8, !tbaa !69
  %26 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 7
  %27 = load i16, ptr %26, align 2, !tbaa !70
  %28 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 7
  store i16 %27, ptr %28, align 2, !tbaa !70
  %29 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 8
  %30 = load i16, ptr %29, align 4, !tbaa !71
  %31 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 8
  store i16 %30, ptr %31, align 4, !tbaa !71
  %32 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 9
  %33 = load i16, ptr %32, align 2, !tbaa !72
  %34 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 9
  store i16 %33, ptr %34, align 2, !tbaa !72
  %35 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !73
  %37 = tail call ptr @ED_screen_duplicate(ptr noundef %5, ptr noundef %36) #15
  %38 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 3
  store ptr %37, ptr %38, align 8, !tbaa !73
  %39 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 5
  %40 = getelementptr inbounds %struct.ID, ptr %37, i64 0, i32 4, i64 2
  %41 = tail call ptr @BLI_strncpy(ptr noundef nonnull %39, ptr noundef nonnull %40, i64 noundef 64) #15
  %42 = load i32, ptr %21, align 8, !tbaa !67
  %43 = trunc i32 %42 to i16
  %44 = load ptr, ptr %38, align 8, !tbaa !73
  %45 = getelementptr inbounds %struct.bScreen, ptr %44, i64 0, i32 11
  store i16 %43, ptr %45, align 4, !tbaa !74
  %46 = getelementptr inbounds %struct.bScreen, ptr %44, i64 0, i32 13
  store i16 1, ptr %46, align 8, !tbaa !76
  %47 = getelementptr inbounds %struct.bScreen, ptr %44, i64 0, i32 12
  store i16 1, ptr %47, align 2, !tbaa !77
  %48 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 61), align 4, !tbaa !78
  %49 = sext i16 %48 to i32
  %50 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 24
  store i32 %49, ptr %50, align 8, !tbaa !83
  %51 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 26
  store ptr null, ptr %51, align 8, !tbaa !65
  ret ptr %5
}

declare ptr @ED_screen_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @wm_window_close(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %3, %17
  %8 = phi i1 [ %19, %17 ], [ %6, %3 ]
  %9 = phi ptr [ %18, %17 ], [ %5, %3 ]
  %10 = icmp eq ptr %9, %2
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.wmWindow, ptr %9, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  %14 = getelementptr inbounds %struct.bScreen, ptr %13, i64 0, i32 10
  %15 = load i16, ptr %14, align 2, !tbaa !84
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11, %7
  %18 = load ptr, ptr %9, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !llvm.loop !85

20:                                               ; preds = %17, %11, %3
  %21 = phi i1 [ %6, %3 ], [ %19, %17 ], [ %8, %11 ]
  %22 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !86
  %23 = and i32 %22, 1073741824
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.wmWindowManager, ptr %1, i64 0, i32 5
  %27 = load i16, ptr %26, align 4, !tbaa !87
  %28 = icmp eq i16 %27, 0
  %29 = and i1 %21, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !66
  %33 = tail call i32 @GHOST_confirmQuit(ptr noundef %32) #15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %30, %25, %20
  br i1 %21, label %36, label %37

36:                                               ; preds = %35
  tail call void @WM_exit(ptr noundef %0) #15
  br label %48

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !73
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef %2) #15
  tail call void @wm_draw_window_clear(ptr noundef %2) #15
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %2) #15
  %40 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 28
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %40) #15
  %41 = getelementptr inbounds %struct.wmWindow, ptr %2, i64 0, i32 29
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %41) #15
  %42 = load ptr, ptr %38, align 8, !tbaa !73
  tail call void @ED_screen_exit(ptr noundef %0, ptr noundef %2, ptr noundef %42) #15
  tail call void @wm_window_free(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %43 = getelementptr inbounds %struct.bScreen, ptr %39, i64 0, i32 10
  %44 = load i16, ptr %43, align 2, !tbaa !84
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %37
  %47 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  tail call void @BKE_libblock_free(ptr noundef %47, ptr noundef %39) #15
  br label %48

48:                                               ; preds = %36, %46, %37, %30
  ret void
}

declare i32 @GHOST_confirmQuit(ptr noundef) local_unnamed_addr #2

declare void @WM_exit(ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @wm_draw_window_clear(ptr noundef) local_unnamed_addr #2

declare void @ED_screen_exit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare void @BKE_libblock_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
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
  call void @llvm.lifetime.start.p0(i64 1048, ptr nonnull %3) #15
  %24 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 5
  %25 = load i16, ptr %24, align 4, !tbaa !87
  %26 = icmp eq i16 %25, 0
  %27 = select i1 %26, ptr @.str.3, ptr @.str.2
  %28 = getelementptr inbounds %struct.Main, ptr %19, i64 0, i32 9
  %29 = load i16, ptr %28, align 8, !tbaa !92
  %30 = icmp eq i16 %29, 0
  %31 = select i1 %30, ptr @.str.2, ptr @.str.4
  %32 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 1048, ptr noundef nonnull @.str.1, ptr noundef nonnull %27, ptr noundef nonnull %20, ptr noundef nonnull %31) #15
  %33 = load ptr, ptr %12, align 8, !tbaa !66
  call void @GHOST_SetTitle(ptr noundef %33, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 1048, ptr nonnull %3) #15
  br label %35

34:                                               ; preds = %18, %15
  tail call void @GHOST_SetTitle(ptr noundef nonnull %13, ptr noundef nonnull @.str.5) #15
  br label %35

35:                                               ; preds = %34, %23
  %36 = load ptr, ptr %12, align 8, !tbaa !66
  %37 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 5
  %38 = load i16, ptr %37, align 4, !tbaa !87
  %39 = icmp eq i16 %38, 0
  %40 = zext i1 %39 to i8
  %41 = call i32 @GHOST_SetWindowModifiedState(ptr noundef %36, i8 noundef zeroext %40) #15
  br label %42

42:                                               ; preds = %11, %35, %7
  ret void
}

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @GHOST_SetTitle(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @GHOST_SetWindowModifiedState(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local float @wm_window_pixelsize(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = tail call float @GHOST_GetNativePixelSize(ptr noundef %3) #15
  %5 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 107), align 8, !tbaa !95
  %6 = icmp eq i32 %5, 1
  %7 = fmul float %4, 2.000000e+00
  %8 = select i1 %6, float %7, float %4
  ret float %8
}

declare float @GHOST_GetNativePixelSize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @wm_window_add_ghostwindows(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, ptr @wm_init_state.0, align 4, !tbaa !96
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %9 = load ptr, ptr @g_system, align 8, !tbaa !34
  call void @GHOST_GetMainDisplayDimensions(ptr noundef %9, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %10 = load i32, ptr %4, align 4, !tbaa !38
  store i32 %10, ptr @wm_init_state.0, align 4, !tbaa !38
  %11 = load i32, ptr %5, align 4, !tbaa !38
  store i32 %11, ptr @wm_init_state.1, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr @wm_init_state.2, align 4, !tbaa !98
  store i32 0, ptr @wm_init_state.3, align 4, !tbaa !99
  br label %12

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %138, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 1
  %18 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  br label %19

19:                                               ; preds = %16, %122
  %20 = phi ptr [ %14, %16 ], [ %136, %122 ]
  %21 = getelementptr inbounds %struct.wmWindow, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !66
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %115

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.wmWindow, ptr %20, i64 0, i32 8
  %26 = load i16, ptr %25, align 4, !tbaa !71
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr @wm_init_state.5, align 4, !tbaa !100
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %28, %24
  %33 = load i32, ptr @wm_init_state.2, align 4, !tbaa !98
  %34 = trunc i32 %33 to i16
  %35 = getelementptr inbounds %struct.wmWindow, ptr %20, i64 0, i32 6
  store i16 %34, ptr %35, align 8, !tbaa !69
  %36 = load i32, ptr @wm_init_state.3, align 4, !tbaa !99
  %37 = trunc i32 %36 to i16
  %38 = getelementptr inbounds %struct.wmWindow, ptr %20, i64 0, i32 7
  store i16 %37, ptr %38, align 2, !tbaa !70
  %39 = load i32, ptr @wm_init_state.0, align 4, !tbaa !96
  %40 = trunc i32 %39 to i16
  store i16 %40, ptr %25, align 4, !tbaa !71
  %41 = load i32, ptr @wm_init_state.1, align 4, !tbaa !101
  %42 = trunc i32 %41 to i16
  %43 = getelementptr inbounds %struct.wmWindow, ptr %20, i64 0, i32 9
  store i16 %42, ptr %43, align 2, !tbaa !72
  %44 = getelementptr inbounds %struct.wmWindow, ptr %20, i64 0, i32 10
  store i16 0, ptr %44, align 8, !tbaa !102
  %45 = load i32, ptr @wm_init_state.5, align 4, !tbaa !100
  %46 = and i32 %45, -2
  store i32 %46, ptr @wm_init_state.5, align 4, !tbaa !100
  br label %47

47:                                               ; preds = %32, %28
  %48 = load i32, ptr @wm_init_state.5, align 4, !tbaa !100
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load i1, ptr @wm_init_state.4, align 4
  %53 = select i1 %52, i16 3, i16 0
  %54 = getelementptr inbounds %struct.wmWindow, ptr %20, i64 0, i32 10
  store i16 %53, ptr %54, align 8, !tbaa !102
  %55 = and i32 %48, -3
  store i32 %55, ptr @wm_init_state.5, align 4, !tbaa !100
  br label %56

56:                                               ; preds = %51, %47
  %57 = load i32, ptr @wm_window_add_ghostwindow.multisamples, align 4, !tbaa !38
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 88), align 8, !tbaa !103
  %61 = sext i16 %60 to i32
  store i32 %61, ptr @wm_window_add_ghostwindow.multisamples, align 4, !tbaa !38
  br label %62

62:                                               ; preds = %59, %56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %63 = load ptr, ptr @g_system, align 8, !tbaa !34
  call void @GHOST_GetMainDisplayDimensions(ptr noundef %63, ptr noundef nonnull %2, ptr noundef nonnull %3) #15
  %64 = load i32, ptr %3, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  %65 = getelementptr inbounds %struct.wmWindow, ptr %20, i64 0, i32 7
  %66 = load i16, ptr %65, align 2, !tbaa !70
  %67 = sext i16 %66 to i32
  %68 = getelementptr inbounds %struct.wmWindow, ptr %20, i64 0, i32 9
  %69 = load i16, ptr %68, align 2, !tbaa !72
  %70 = sext i16 %69 to i32
  %71 = add nsw i32 %67, %70
  %72 = sub i32 %64, %71
  %73 = load ptr, ptr @g_system, align 8, !tbaa !34
  %74 = getelementptr inbounds %struct.wmWindow, ptr %20, i64 0, i32 6
  %75 = load i16, ptr %74, align 8, !tbaa !69
  %76 = sext i16 %75 to i32
  %77 = load i16, ptr %25, align 4, !tbaa !71
  %78 = sext i16 %77 to i32
  %79 = getelementptr inbounds %struct.wmWindow, ptr %20, i64 0, i32 10
  %80 = load i16, ptr %79, align 8, !tbaa !102
  %81 = sext i16 %80 to i32
  %82 = load i32, ptr @wm_window_add_ghostwindow.multisamples, align 4, !tbaa !38
  %83 = trunc i32 %82 to i16
  %84 = call ptr @GHOST_CreateWindow(ptr noundef %73, ptr noundef nonnull @.str.5, i32 noundef %76, i32 noundef %72, i32 noundef %78, i32 noundef %70, i32 noundef %81, i32 noundef 1, i32 noundef 0, i16 noundef zeroext %83) #15
  %85 = icmp eq ptr %84, null
  br i1 %85, label %115, label %86

86:                                               ; preds = %62
  store ptr %20, ptr %17, align 8, !tbaa !104
  call void @GPU_init() #15
  store ptr %84, ptr %21, align 8, !tbaa !66
  call void @GHOST_SetWindowUserData(ptr noundef nonnull %84, ptr noundef nonnull %20) #15
  %87 = getelementptr inbounds %struct.wmWindow, ptr %20, i64 0, i32 21
  %88 = load ptr, ptr %87, align 8, !tbaa !63
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %92 = call ptr %91(i64 noundef 120, ptr noundef nonnull @.str.6) #15
  store ptr %92, ptr %87, align 8, !tbaa !63
  br label %93

93:                                               ; preds = %90, %86
  %94 = load ptr, ptr %21, align 8, !tbaa !66
  %95 = call ptr @GHOST_GetClientBounds(ptr noundef %94) #15
  %96 = call i32 @GHOST_GetWidthRectangle(ptr noundef %95) #15
  %97 = trunc i32 %96 to i16
  store i16 %97, ptr %25, align 4, !tbaa !71
  %98 = call i32 @GHOST_GetHeightRectangle(ptr noundef %95) #15
  %99 = trunc i32 %98 to i16
  store i16 %99, ptr %68, align 2, !tbaa !72
  call void @GHOST_DisposeRectangle(ptr noundef %95) #15
  %100 = load i16, ptr %79, align 8, !tbaa !102
  %101 = sext i16 %100 to i32
  %102 = call i32 @GHOST_SetWindowState(ptr noundef nonnull %84, i32 noundef %101) #15
  call void @glClearColor(float noundef 0x3FE19999A0000000, float noundef 0x3FE19999A0000000, float noundef 0x3FE19999A0000000, float noundef 0.000000e+00) #15
  %103 = call i32 @GPU_type_matches(i32 noundef 2, i32 noundef 1024, i32 noundef 131072) #15
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %93
  call void @glClear(i32 noundef 16384) #15
  br label %106

106:                                              ; preds = %105, %93
  %107 = load ptr, ptr %21, align 8, !tbaa !66
  %108 = call float @GHOST_GetNativePixelSize(ptr noundef %107) #15
  %109 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 107), align 8, !tbaa !95
  %110 = icmp eq i32 %109, 1
  %111 = fmul float %108, 2.000000e+00
  %112 = select i1 %110, float %111, float %108
  store float %112, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !105
  call void @BKE_userdef_state() #15
  %113 = load ptr, ptr %21, align 8, !tbaa !66
  %114 = call i32 @GHOST_SwapWindowBuffers(ptr noundef %113) #15
  call void @glEnable(i32 noundef 3089) #15
  call void @GPU_state_init() #15
  br label %115

115:                                              ; preds = %106, %62, %19
  %116 = getelementptr inbounds %struct.wmWindow, ptr %20, i64 0, i32 21
  %117 = load ptr, ptr %116, align 8, !tbaa !63
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %121 = call ptr %120(i64 noundef 120, ptr noundef nonnull @.str.6) #15
  store ptr %121, ptr %116, align 8, !tbaa !63
  br label %122

122:                                              ; preds = %119, %115
  %123 = load ptr, ptr %18, align 8, !tbaa !106
  %124 = call ptr @WM_keymap_find(ptr noundef %123, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 0) #15
  %125 = getelementptr inbounds %struct.wmWindow, ptr %20, i64 0, i32 28
  %126 = call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %125, ptr noundef %124) #15
  %127 = load ptr, ptr %18, align 8, !tbaa !106
  %128 = call ptr @WM_keymap_find(ptr noundef %127, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 0) #15
  %129 = call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %125, ptr noundef %128) #15
  %130 = load ptr, ptr %18, align 8, !tbaa !106
  %131 = call ptr @WM_keymap_find(ptr noundef %130, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0) #15
  %132 = getelementptr inbounds %struct.wmWindow, ptr %20, i64 0, i32 29
  %133 = call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %132, ptr noundef %131) #15
  %134 = call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 0) #15
  %135 = call ptr @WM_event_add_dropbox_handler(ptr noundef nonnull %125, ptr noundef %134) #15
  call void @wm_window_title(ptr noundef %0, ptr noundef nonnull %20)
  %136 = load ptr, ptr %20, align 8, !tbaa !34
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %19, !llvm.loop !107

138:                                              ; preds = %122, %12
  ret void
}

declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_event_add_keymap_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_dropboxmap_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_event_add_dropbox_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @WM_window_open(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 256, ptr noundef nonnull @.str) #15
  %6 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %5) #15
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %17, %9 ], [ %7, %2 ]
  %11 = phi i32 [ %16, %9 ], [ 1, %2 ]
  %12 = getelementptr inbounds %struct.wmWindow, ptr %10, i64 0, i32 18
  %13 = load i32, ptr %12, align 8, !tbaa !67
  %14 = icmp sgt i32 %11, %13
  %15 = add nsw i32 %13, 1
  %16 = select i1 %14, i32 %11, i32 %15
  %17 = load ptr, ptr %10, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9, !llvm.loop !68

19:                                               ; preds = %9, %2
  %20 = phi i32 [ 1, %2 ], [ %16, %9 ]
  %21 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 18
  store i32 %20, ptr %21, align 8, !tbaa !67
  %22 = load i32, ptr %1, align 4, !tbaa !108
  %23 = trunc i32 %22 to i16
  %24 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 6
  store i16 %23, ptr %24, align 8, !tbaa !69
  %25 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !110
  %27 = trunc i32 %26 to i16
  %28 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 7
  store i16 %27, ptr %28, align 2, !tbaa !70
  %29 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !111
  %31 = sub nsw i32 %30, %22
  %32 = trunc i32 %31 to i16
  %33 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 8
  store i16 %32, ptr %33, align 4, !tbaa !71
  %34 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !112
  %36 = sub nsw i32 %35, %26
  %37 = trunc i32 %36 to i16
  %38 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 9
  store i16 %37, ptr %38, align 2, !tbaa !72
  %39 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 61), align 4, !tbaa !78
  %40 = sext i16 %39 to i32
  %41 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 24
  store i32 %40, ptr %41, align 8, !tbaa !83
  %42 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 26
  store ptr null, ptr %42, align 8, !tbaa !65
  tail call void @WM_check(ptr noundef %0) #15
  ret ptr %5
}

declare void @WM_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @WM_window_open_temp(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %7 = load ptr, ptr @g_system, align 8, !tbaa !34
  call void @GHOST_GetMainDisplayDimensions(ptr noundef %7, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %8 = load i32, ptr %4, align 4, !tbaa !38
  %9 = load i32, ptr %5, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  %10 = load i32, ptr %1, align 4, !tbaa !108
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !111
  %15 = sub nsw i32 %14, %10
  store i32 %15, ptr %13, align 4, !tbaa !111
  store i32 0, ptr %1, align 4, !tbaa !108
  br label %16

16:                                               ; preds = %12, %3
  %17 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !110
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !112
  %23 = sub nsw i32 %22, %18
  store i32 %23, ptr %21, align 4, !tbaa !112
  store i32 0, ptr %17, align 4, !tbaa !110
  br label %24

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !111
  %27 = icmp sgt i32 %26, %8
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = sub i32 %8, %26
  store i32 %8, ptr %25, align 4, !tbaa !111
  %30 = load i32, ptr %1, align 4, !tbaa !108
  %31 = add i32 %29, %30
  store i32 %31, ptr %1, align 4, !tbaa !108
  br label %32

32:                                               ; preds = %28, %24
  %33 = getelementptr inbounds %struct.rcti, ptr %1, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !112
  %35 = icmp sgt i32 %34, %9
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = sub i32 %9, %34
  store i32 %9, ptr %33, align 4, !tbaa !112
  %38 = load i32, ptr %17, align 4, !tbaa !110
  %39 = add i32 %37, %38
  store i32 %39, ptr %17, align 4, !tbaa !110
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, ptr %1, align 4, !tbaa !108
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, ptr %1, align 4, !tbaa !108
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i32, ptr %17, align 4, !tbaa !110
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, ptr %17, align 4, !tbaa !110
  br label %48

48:                                               ; preds = %44, %47
  %49 = call ptr @CTX_wm_manager(ptr noundef %0) #15
  %50 = getelementptr inbounds %struct.wmWindowManager, ptr %49, i64 0, i32 3
  br label %51

51:                                               ; preds = %55, %48
  %52 = phi ptr [ %50, %48 ], [ %53, %55 ]
  %53 = load ptr, ptr %52, align 8, !tbaa !34
  %54 = icmp eq ptr %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.wmWindow, ptr %53, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !73
  %58 = getelementptr inbounds %struct.bScreen, ptr %57, i64 0, i32 10
  %59 = load i16, ptr %58, align 2, !tbaa !84
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %51, label %87, !llvm.loop !113

61:                                               ; preds = %51
  %62 = call ptr @CTX_wm_manager(ptr noundef %0) #15
  %63 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %64 = call ptr %63(i64 noundef 256, ptr noundef nonnull @.str) #15
  %65 = getelementptr inbounds %struct.wmWindowManager, ptr %62, i64 0, i32 3
  call void @BLI_addtail(ptr noundef nonnull %65, ptr noundef %64) #15
  %66 = load ptr, ptr %65, align 8, !tbaa !34
  %67 = icmp eq ptr %66, null
  br i1 %67, label %78, label %68

68:                                               ; preds = %61, %68
  %69 = phi ptr [ %76, %68 ], [ %66, %61 ]
  %70 = phi i32 [ %75, %68 ], [ 1, %61 ]
  %71 = getelementptr inbounds %struct.wmWindow, ptr %69, i64 0, i32 18
  %72 = load i32, ptr %71, align 8, !tbaa !67
  %73 = icmp sgt i32 %70, %72
  %74 = add nsw i32 %72, 1
  %75 = select i1 %73, i32 %70, i32 %74
  %76 = load ptr, ptr %69, align 8, !tbaa !34
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %68, !llvm.loop !68

78:                                               ; preds = %68, %61
  %79 = phi i32 [ 1, %61 ], [ %75, %68 ]
  %80 = getelementptr inbounds %struct.wmWindow, ptr %64, i64 0, i32 18
  store i32 %79, ptr %80, align 8, !tbaa !67
  %81 = load i32, ptr %1, align 4, !tbaa !108
  %82 = trunc i32 %81 to i16
  %83 = getelementptr inbounds %struct.wmWindow, ptr %64, i64 0, i32 6
  store i16 %82, ptr %83, align 8, !tbaa !69
  %84 = load i32, ptr %17, align 4, !tbaa !110
  %85 = trunc i32 %84 to i16
  %86 = getelementptr inbounds %struct.wmWindow, ptr %64, i64 0, i32 7
  store i16 %85, ptr %86, align 2, !tbaa !70
  br label %87

87:                                               ; preds = %55, %78
  %88 = phi ptr [ %64, %78 ], [ %53, %55 ]
  %89 = load i32, ptr %25, align 4, !tbaa !111
  %90 = load i32, ptr %1, align 4, !tbaa !108
  %91 = sub nsw i32 %89, %90
  %92 = trunc i32 %91 to i16
  %93 = getelementptr inbounds %struct.wmWindow, ptr %88, i64 0, i32 8
  store i16 %92, ptr %93, align 4, !tbaa !71
  %94 = load i32, ptr %33, align 4, !tbaa !112
  %95 = load i32, ptr %17, align 4, !tbaa !110
  %96 = sub nsw i32 %94, %95
  %97 = trunc i32 %96 to i16
  %98 = getelementptr inbounds %struct.wmWindow, ptr %88, i64 0, i32 9
  store i16 %97, ptr %98, align 2, !tbaa !72
  %99 = getelementptr inbounds %struct.wmWindow, ptr %88, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !66
  %101 = icmp eq ptr %100, null
  br i1 %101, label %110, label %102

102:                                              ; preds = %87
  %103 = shl i32 %91, 16
  %104 = ashr exact i32 %103, 16
  %105 = shl i32 %96, 16
  %106 = ashr exact i32 %105, 16
  %107 = call i32 @GHOST_SetClientSize(ptr noundef nonnull %100, i32 noundef %104, i32 noundef %106) #15
  %108 = load ptr, ptr %99, align 8, !tbaa !66
  %109 = call i32 @GHOST_SetWindowOrder(ptr noundef %108, i32 noundef 0) #15
  br label %110

110:                                              ; preds = %102, %87
  %111 = getelementptr inbounds %struct.wmWindow, ptr %88, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !73
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = call ptr @ED_screen_add(ptr noundef %88, ptr noundef %6, ptr noundef nonnull @.str.10) #15
  store ptr %115, ptr %111, align 8, !tbaa !73
  br label %121

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.bScreen, ptr %112, i64 0, i32 5
  %118 = load ptr, ptr %117, align 8, !tbaa !114
  %119 = icmp eq ptr %118, %6
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  call void @ED_screen_set_scene(ptr noundef %0, ptr noundef nonnull %112, ptr noundef %6) #15
  br label %121

121:                                              ; preds = %116, %120, %114
  %122 = load ptr, ptr %111, align 8, !tbaa !73
  %123 = getelementptr inbounds %struct.bScreen, ptr %122, i64 0, i32 10
  store i16 1, ptr %123, align 2, !tbaa !84
  call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %88) #15
  call void @WM_check(ptr noundef %0) #15
  %124 = load ptr, ptr %111, align 8, !tbaa !73
  %125 = getelementptr inbounds %struct.bScreen, ptr %124, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !115
  call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %126) #15
  %127 = icmp eq i32 %2, 0
  %128 = select i1 %127, i32 6, i32 19
  call void @ED_area_newspace(ptr noundef %0, ptr noundef %126, i32 noundef %128) #15
  %129 = load ptr, ptr %111, align 8, !tbaa !73
  call void @ED_screen_set(ptr noundef %0, ptr noundef %129) #15
  %130 = call ptr @CTX_wm_manager(ptr noundef %0) #15
  call void @ED_screen_refresh(ptr noundef %130, ptr noundef %88) #15
  %131 = getelementptr inbounds %struct.ScrArea, ptr %126, i64 0, i32 8
  %132 = load i8, ptr %131, align 8, !tbaa !116
  switch i8 %132, label %135 [
    i8 6, label %136
    i8 3, label %133
    i8 19, label %133
    i8 5, label %134
  ]

133:                                              ; preds = %121, %121
  br label %136

134:                                              ; preds = %121
  br label %136

135:                                              ; preds = %121
  br label %136

136:                                              ; preds = %121, %133, %135, %134
  %137 = phi ptr [ @.str.12, %133 ], [ @.str.5, %135 ], [ @.str.13, %134 ], [ @.str.11, %121 ]
  %138 = load ptr, ptr %99, align 8, !tbaa !66
  call void @GHOST_SetTitle(ptr noundef %138, ptr noundef nonnull %137) #15
  ret void
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @wm_window_set_size(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = tail call i32 @GHOST_SetClientSize(ptr noundef %5, i32 noundef %1, i32 noundef %2) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @wm_window_raise(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = tail call i32 @GHOST_SetWindowOrder(ptr noundef %3, i32 noundef 0) #15
  ret void
}

declare ptr @ED_screen_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_screen_set_scene(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CTX_wm_area_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_area_newspace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_screen_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_screen_refresh(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @wm_window_duplicate_exec(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %4 = tail call ptr @wm_window_copy(ptr noundef %0, ptr noundef %3)
  tail call void @WM_check(ptr noundef %0) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 33554435, ptr noundef null) #15
  ret i32 4
}

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @wm_window_fullscreen_toggle_exec(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %4 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !118
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = tail call i32 @GHOST_GetWindowState(ptr noundef %8) #15
  %10 = icmp eq i32 %9, 3
  %11 = load ptr, ptr %7, align 8, !tbaa !66
  %12 = select i1 %10, i32 0, i32 3
  %13 = tail call i32 @GHOST_SetWindowState(ptr noundef %11, i32 noundef %12) #15
  br label %14

14:                                               ; preds = %6, %2
  %15 = phi i32 [ 2, %2 ], [ 4, %6 ]
  ret i32 %15
}

declare i32 @GHOST_GetWindowState(ptr noundef) local_unnamed_addr #2

declare i32 @GHOST_SetWindowState(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @wm_get_cursor_position(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @g_system, align 8, !tbaa !34
  %5 = tail call i32 @GHOST_GetCursorPosition(ptr noundef %4, ptr noundef %1, ptr noundef %2) #15
  %6 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = tail call float @GHOST_GetNativePixelSize(ptr noundef %7) #15
  %9 = load ptr, ptr %6, align 8, !tbaa !66
  %10 = load i32, ptr %1, align 4, !tbaa !38
  %11 = load i32, ptr %2, align 4, !tbaa !38
  tail call void @GHOST_ScreenToClient(ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  %12 = load i32, ptr %1, align 4, !tbaa !38
  %13 = sitofp i32 %12 to float
  %14 = fmul float %8, %13
  %15 = fptosi float %14 to i32
  store i32 %15, ptr %1, align 4, !tbaa !38
  %16 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 9
  %17 = load i16, ptr %16, align 2, !tbaa !72
  %18 = sext i16 %17 to i32
  %19 = load i32, ptr %2, align 4, !tbaa !38
  %20 = xor i32 %19, -1
  %21 = add i32 %20, %18
  %22 = sitofp i32 %21 to float
  %23 = fmul float %8, %22
  %24 = fptosi float %23 to i32
  store i32 %24, ptr %2, align 4, !tbaa !38
  ret void
}

declare i32 @GHOST_GetCursorPosition(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @wm_window_make_drawable(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !104
  %11 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !119
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 18
  %16 = load i32, ptr %15, align 8, !tbaa !67
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef nonnull @__func__.wm_window_make_drawable, i32 noundef %16)
  br label %18

18:                                               ; preds = %14, %10
  %19 = load ptr, ptr %7, align 8, !tbaa !66
  %20 = tail call i32 @GHOST_ActivateWindowDrawingContext(ptr noundef %19) #15
  %21 = load ptr, ptr %7, align 8, !tbaa !66
  %22 = tail call float @GHOST_GetNativePixelSize(ptr noundef %21) #15
  %23 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 107), align 8, !tbaa !95
  %24 = icmp eq i32 %23, 1
  %25 = fmul float %22, 2.000000e+00
  %26 = select i1 %24, float %25, float %22
  store float %26, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !105
  tail call void @BKE_userdef_state() #15
  br label %27

27:                                               ; preds = %18, %6, %2
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare i32 @GHOST_ActivateWindowDrawingContext(ptr noundef) local_unnamed_addr #2

declare void @BKE_userdef_state() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @wm_window_process_events(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.wmEvent, align 8
  %3 = load ptr, ptr @g_system, align 8, !tbaa !34
  %4 = tail call i32 @GHOST_ProcessEvents(ptr noundef %3, i32 noundef 0) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @g_system, align 8, !tbaa !34
  %8 = tail call i32 @GHOST_DispatchEvents(ptr noundef %7) #15
  br label %9

9:                                                ; preds = %6, %1
  %10 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %11 = tail call double @PIL_check_seconds_timer() #15
  %12 = getelementptr inbounds %struct.wmWindowManager, ptr %10, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %61, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %17 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 21
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 25
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  br label %21

21:                                               ; preds = %15, %58
  %22 = phi i32 [ 0, %15 ], [ %59, %58 ]
  %23 = phi ptr [ %13, %15 ], [ %24, %58 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.wmTimer, ptr %23, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !49
  %27 = getelementptr inbounds %struct.wmTimer, ptr %23, i64 0, i32 11
  %28 = load i32, ptr %27, align 8, !tbaa !120
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.wmTimer, ptr %23, i64 0, i32 9
  %32 = load double, ptr %31, align 8, !tbaa !121
  %33 = fcmp ogt double %11, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.wmTimer, ptr %23, i64 0, i32 8
  %36 = load double, ptr %35, align 8, !tbaa !122
  %37 = fsub double %11, %36
  %38 = getelementptr inbounds %struct.wmTimer, ptr %23, i64 0, i32 7
  store double %37, ptr %38, align 8, !tbaa !123
  %39 = getelementptr inbounds %struct.wmTimer, ptr %23, i64 0, i32 6
  %40 = load double, ptr %39, align 8, !tbaa !124
  %41 = fadd double %37, %40
  store double %41, ptr %39, align 8, !tbaa !124
  store double %11, ptr %35, align 8, !tbaa !122
  %42 = getelementptr inbounds %struct.wmTimer, ptr %23, i64 0, i32 10
  %43 = load double, ptr %42, align 8, !tbaa !125
  %44 = getelementptr inbounds %struct.wmTimer, ptr %23, i64 0, i32 3
  %45 = load double, ptr %44, align 8, !tbaa !126
  %46 = fdiv double %41, %45
  %47 = call double @llvm.ceil.f64(double %46)
  %48 = call double @llvm.fmuladd.f64(double %45, double %47, double %43)
  store double %48, ptr %31, align 8, !tbaa !121
  %49 = getelementptr inbounds %struct.wmTimer, ptr %23, i64 0, i32 4
  %50 = load i32, ptr %49, align 8, !tbaa !50
  switch i32 %50, label %53 [
    i32 276, label %51
    i32 277, label %52
  ]

51:                                               ; preds = %34
  call void @wm_jobs_timer(ptr noundef %0, ptr noundef %10, ptr noundef nonnull %23) #15
  br label %58

52:                                               ; preds = %34
  call void @wm_autosave_timer(ptr noundef %0, ptr noundef %10, ptr noundef nonnull %23) #15
  br label %58

53:                                               ; preds = %34
  %54 = icmp eq ptr %26, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %2) #15
  call void @wm_event_init_from_window(ptr noundef nonnull %26, ptr noundef nonnull %2) #15
  %56 = load i32, ptr %49, align 8, !tbaa !50
  %57 = trunc i32 %56 to i16
  store i16 %57, ptr %16, align 8, !tbaa !60
  store i16 0, ptr %17, align 2, !tbaa !127
  store i16 0, ptr %18, align 8, !tbaa !128
  store i16 2, ptr %19, align 8, !tbaa !129
  store ptr %23, ptr %20, align 8, !tbaa !58
  call void @wm_event_add(ptr noundef nonnull %26, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %2) #15
  br label %58

58:                                               ; preds = %55, %53, %52, %51, %30, %21
  %59 = phi i32 [ %22, %51 ], [ %22, %52 ], [ 1, %55 ], [ %22, %53 ], [ %22, %30 ], [ %22, %21 ]
  %60 = icmp eq ptr %24, null
  br i1 %60, label %61, label %21, !llvm.loop !130

61:                                               ; preds = %58, %9
  %62 = phi i32 [ 0, %9 ], [ %59, %58 ]
  %63 = or i32 %62, %4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  call void @PIL_sleep_ms(i32 noundef 5) #15
  br label %66

66:                                               ; preds = %65, %61
  ret void
}

declare i32 @GHOST_ProcessEvents(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @GHOST_DispatchEvents(ptr noundef) local_unnamed_addr #2

declare void @PIL_sleep_ms(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @wm_window_process_events_nosleep() local_unnamed_addr #0 {
  %1 = load ptr, ptr @g_system, align 8, !tbaa !34
  %2 = tail call i32 @GHOST_ProcessEvents(ptr noundef %1, i32 noundef 0) #15
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @g_system, align 8, !tbaa !34
  %6 = tail call i32 @GHOST_DispatchEvents(ptr noundef %5) #15
  br label %7

7:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @wm_window_testbreak() local_unnamed_addr #0 {
  %1 = tail call double @PIL_check_seconds_timer() #15
  %2 = load double, ptr @wm_window_testbreak.ltime, align 8, !tbaa !131
  %3 = fsub double %1, %2
  %4 = fcmp ogt double %3, 5.000000e-02
  br i1 %4, label %5, label %13

5:                                                ; preds = %0
  %6 = load ptr, ptr @g_system, align 8, !tbaa !34
  %7 = tail call i32 @GHOST_ProcessEvents(ptr noundef %6, i32 noundef 0) #15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @g_system, align 8, !tbaa !34
  %11 = tail call i32 @GHOST_DispatchEvents(ptr noundef %10) #15
  br label %12

12:                                               ; preds = %9, %5
  store double %1, ptr @wm_window_testbreak.ltime, align 8, !tbaa !131
  br label %13

13:                                               ; preds = %12, %0
  ret void
}

declare double @PIL_check_seconds_timer() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @wm_ghost_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @g_system, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  %5 = tail call ptr @GHOST_CreateEventConsumer(ptr noundef nonnull @ghost_event_proc, ptr noundef %0) #15
  %6 = tail call ptr @GHOST_CreateSystem() #15
  store ptr %6, ptr @g_system, align 8, !tbaa !34
  %7 = tail call i32 @GHOST_AddEventConsumer(ptr noundef %6, ptr noundef %5) #15
  %8 = load i8, ptr @wm_init_state.6, align 4, !tbaa !132
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @GHOST_UseNativePixels() #15
  br label %12

12:                                               ; preds = %4, %10, %1
  ret void
}

declare ptr @GHOST_CreateEventConsumer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @ghost_event_proc(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.GHOST_TEventKeyData, align 4
  %10 = alloca %struct.wmEvent, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.PointerRNA, align 8
  %18 = alloca %struct.wmEvent, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = tail call ptr @CTX_wm_manager(ptr noundef %1) #15
  %22 = tail call i32 @GHOST_GetEventType(ptr noundef %0) #15
  %23 = tail call i64 @GHOST_GetEventTime(ptr noundef %0) #15
  %24 = trunc i64 %23 to i32
  %25 = icmp eq i32 %22, 10
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  tail call void @WM_exit(ptr noundef %1) #15
  br label %442

27:                                               ; preds = %2
  %28 = tail call ptr @GHOST_GetEventWindow(ptr noundef %0) #15
  %29 = tail call ptr @GHOST_GetEventData(ptr noundef %0) #15
  %30 = getelementptr inbounds %struct.wmWindowManager, ptr %21, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !133
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %442, label %34

34:                                               ; preds = %27
  %35 = icmp eq ptr %28, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.16)
  br label %442

38:                                               ; preds = %34
  %39 = load ptr, ptr @g_system, align 8, !tbaa !34
  %40 = tail call i32 @GHOST_ValidWindow(ptr noundef %39, ptr noundef nonnull %28) #15
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.17)
  br label %442

44:                                               ; preds = %38
  %45 = tail call ptr @GHOST_GetWindowUserData(ptr noundef nonnull %28) #15
  switch i32 %22, label %441 [
    i32 13, label %46
    i32 12, label %51
    i32 11, label %183
    i32 14, label %184
    i32 15, label %218
    i32 16, label %218
    i32 21, label %321
    i32 20, label %329
    i32 22, label %390
    i32 5, label %398
    i32 1, label %420
  ]

46:                                               ; preds = %44
  tail call void @wm_event_add_ghostevent(ptr noundef %21, ptr noundef %45, i32 noundef %22, i32 noundef %24, ptr noundef %29) #15
  %47 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 12
  store i16 0, ptr %47, align 4, !tbaa !134
  %48 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 21
  %49 = load ptr, ptr %48, align 8, !tbaa !63
  %50 = getelementptr inbounds %struct.wmEvent, ptr %49, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %50, i8 0, i64 10, i1 false)
  br label %442

51:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !tbaa !38
  %52 = load ptr, ptr @g_system, align 8, !tbaa !34
  %53 = call i32 @GHOST_GetModifierKeyState(ptr noundef %52, i32 noundef 0, ptr noundef nonnull %6) #15
  %54 = load i32, ptr %6, align 4, !tbaa !38
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load ptr, ptr @g_system, align 8, !tbaa !34
  %58 = call i32 @GHOST_GetModifierKeyState(ptr noundef %57, i32 noundef 1, ptr noundef nonnull %6) #15
  br label %59

59:                                               ; preds = %51, %56
  %60 = load i32, ptr %6, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !tbaa !38
  %61 = load ptr, ptr @g_system, align 8, !tbaa !34
  %62 = call i32 @GHOST_GetModifierKeyState(ptr noundef %61, i32 noundef 4, ptr noundef nonnull %5) #15
  %63 = load i32, ptr %5, align 4, !tbaa !38
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load ptr, ptr @g_system, align 8, !tbaa !34
  %67 = call i32 @GHOST_GetModifierKeyState(ptr noundef %66, i32 noundef 5, ptr noundef nonnull %5) #15
  br label %68

68:                                               ; preds = %59, %65
  %69 = load i32, ptr %5, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  %70 = icmp ne i32 %69, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !tbaa !38
  %71 = load ptr, ptr @g_system, align 8, !tbaa !34
  %72 = call i32 @GHOST_GetModifierKeyState(ptr noundef %71, i32 noundef 2, ptr noundef nonnull %4) #15
  %73 = load i32, ptr %4, align 4, !tbaa !38
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load ptr, ptr @g_system, align 8, !tbaa !34
  %77 = call i32 @GHOST_GetModifierKeyState(ptr noundef %76, i32 noundef 3, ptr noundef nonnull %4) #15
  br label %78

78:                                               ; preds = %68, %75
  %79 = load i32, ptr %4, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  %80 = icmp ne i32 %79, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !tbaa !38
  %81 = load ptr, ptr @g_system, align 8, !tbaa !34
  %82 = call i32 @GHOST_GetModifierKeyState(ptr noundef %81, i32 noundef 6, ptr noundef nonnull %3) #15
  %83 = load i32, ptr %3, align 4, !tbaa !38
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load ptr, ptr @g_system, align 8, !tbaa !34
  %87 = call i32 @GHOST_GetModifierKeyState(ptr noundef %86, i32 noundef 6, ptr noundef nonnull %3) #15
  br label %88

88:                                               ; preds = %78, %85
  %89 = load i32, ptr %3, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  %90 = icmp ne i32 %89, 0
  %91 = getelementptr inbounds %struct.wmWindowManager, ptr %21, i64 0, i32 2
  store ptr %45, ptr %91, align 8, !tbaa !135
  %92 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 12
  store i16 1, ptr %92, align 4, !tbaa !134
  %93 = getelementptr inbounds %struct.GHOST_TEventKeyData, ptr %9, i64 0, i32 1
  store i8 0, ptr %93, align 4, !tbaa !136
  %94 = getelementptr inbounds %struct.GHOST_TEventKeyData, ptr %9, i64 0, i32 2
  store i8 0, ptr %94, align 1, !tbaa !91
  %95 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 21
  %96 = load ptr, ptr %95, align 8, !tbaa !63
  %97 = getelementptr inbounds %struct.wmEvent, ptr %96, i64 0, i32 17
  %98 = load i16, ptr %97, align 8, !tbaa !138
  %99 = icmp ne i16 %98, 0
  %100 = icmp eq i32 %60, 0
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %102, label %103

102:                                              ; preds = %88
  store i32 256, ptr %9, align 4, !tbaa !139
  call void @wm_event_add_ghostevent(ptr noundef %21, ptr noundef %45, i32 noundef 9, i32 noundef %24, ptr noundef nonnull %9) #15
  br label %103

103:                                              ; preds = %102, %88
  %104 = load ptr, ptr %95, align 8, !tbaa !63
  %105 = getelementptr inbounds %struct.wmEvent, ptr %104, i64 0, i32 18
  %106 = load i16, ptr %105, align 2, !tbaa !140
  %107 = icmp eq i16 %106, 0
  %108 = select i1 %107, i1 true, i1 %70
  br i1 %108, label %110, label %109

109:                                              ; preds = %103
  store i32 258, ptr %9, align 4, !tbaa !139
  call void @wm_event_add_ghostevent(ptr noundef %21, ptr noundef %45, i32 noundef 9, i32 noundef %24, ptr noundef nonnull %9) #15
  br label %110

110:                                              ; preds = %103, %109
  %111 = load ptr, ptr %95, align 8, !tbaa !63
  %112 = getelementptr inbounds %struct.wmEvent, ptr %111, i64 0, i32 19
  %113 = load i16, ptr %112, align 4, !tbaa !141
  %114 = icmp eq i16 %113, 0
  %115 = select i1 %114, i1 true, i1 %80
  br i1 %115, label %117, label %116

116:                                              ; preds = %110
  store i32 260, ptr %9, align 4, !tbaa !139
  call void @wm_event_add_ghostevent(ptr noundef %21, ptr noundef %45, i32 noundef 9, i32 noundef %24, ptr noundef nonnull %9) #15
  br label %117

117:                                              ; preds = %110, %116
  %118 = load ptr, ptr %95, align 8, !tbaa !63
  %119 = getelementptr inbounds %struct.wmEvent, ptr %118, i64 0, i32 20
  %120 = load i16, ptr %119, align 2, !tbaa !142
  %121 = icmp eq i16 %120, 0
  %122 = select i1 %121, i1 true, i1 %90
  br i1 %122, label %124, label %123

123:                                              ; preds = %117
  store i32 262, ptr %9, align 4, !tbaa !139
  call void @wm_event_add_ghostevent(ptr noundef %21, ptr noundef %45, i32 noundef 9, i32 noundef %24, ptr noundef nonnull %9) #15
  br label %124

124:                                              ; preds = %117, %123
  %125 = load ptr, ptr %95, align 8, !tbaa !63
  %126 = getelementptr inbounds %struct.wmEvent, ptr %125, i64 0, i32 21
  store i16 0, ptr %126, align 8, !tbaa !128
  %127 = load ptr, ptr @g_system, align 8, !tbaa !34
  %128 = call i32 @GHOST_GetCursorPosition(ptr noundef %127, ptr noundef nonnull %11, ptr noundef nonnull %12) #15
  %129 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !66
  %131 = call float @GHOST_GetNativePixelSize(ptr noundef %130) #15
  %132 = load ptr, ptr %129, align 8, !tbaa !66
  %133 = load i32, ptr %11, align 4, !tbaa !38
  %134 = load i32, ptr %12, align 4, !tbaa !38
  call void @GHOST_ScreenToClient(ptr noundef %132, i32 noundef %133, i32 noundef %134, ptr noundef nonnull %11, ptr noundef nonnull %12) #15
  %135 = load i32, ptr %11, align 4, !tbaa !38
  %136 = sitofp i32 %135 to float
  %137 = fmul float %131, %136
  %138 = fptosi float %137 to i32
  store i32 %138, ptr %11, align 4, !tbaa !38
  %139 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 9
  %140 = load i16, ptr %139, align 2, !tbaa !72
  %141 = sext i16 %140 to i32
  %142 = load i32, ptr %12, align 4, !tbaa !38
  %143 = xor i32 %142, -1
  %144 = add i32 %143, %141
  %145 = sitofp i32 %144 to float
  %146 = fmul float %131, %145
  %147 = fptosi float %146 to i32
  store i32 %147, ptr %12, align 4, !tbaa !38
  %148 = load ptr, ptr %95, align 8, !tbaa !63
  %149 = getelementptr inbounds %struct.wmEvent, ptr %148, i64 0, i32 4
  store i32 %138, ptr %149, align 4, !tbaa !143
  %150 = getelementptr inbounds %struct.wmEvent, ptr %148, i64 0, i32 5
  store i32 %147, ptr %150, align 8, !tbaa !144
  %151 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 17
  store i16 1, ptr %151, align 2, !tbaa !145
  %152 = getelementptr inbounds %struct.wmWindowManager, ptr %21, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !104
  %154 = icmp eq ptr %153, %45
  br i1 %154, label %175, label %155

155:                                              ; preds = %124
  %156 = load ptr, ptr %129, align 8, !tbaa !66
  %157 = icmp eq ptr %156, null
  br i1 %157, label %175, label %158

158:                                              ; preds = %155
  store ptr %45, ptr %152, align 8, !tbaa !104
  %159 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !119
  %160 = and i32 %159, 8
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 18
  %164 = load i32, ptr %163, align 8, !tbaa !67
  %165 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef nonnull @__func__.wm_window_make_drawable, i32 noundef %164)
  br label %166

166:                                              ; preds = %162, %158
  %167 = load ptr, ptr %129, align 8, !tbaa !66
  %168 = call i32 @GHOST_ActivateWindowDrawingContext(ptr noundef %167) #15
  %169 = load ptr, ptr %129, align 8, !tbaa !66
  %170 = call float @GHOST_GetNativePixelSize(ptr noundef %169) #15
  %171 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 107), align 8, !tbaa !95
  %172 = icmp eq i32 %171, 1
  %173 = fmul float %170, 2.000000e+00
  %174 = select i1 %172, float %173, float %170
  store float %174, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !105
  call void @BKE_userdef_state() #15
  br label %175

175:                                              ; preds = %124, %155, %166
  call void @wm_event_init_from_window(ptr noundef %45, ptr noundef nonnull %10) #15
  %176 = getelementptr inbounds %struct.wmEvent, ptr %10, i64 0, i32 2
  store i16 4, ptr %176, align 8, !tbaa !60
  %177 = getelementptr inbounds %struct.wmEvent, ptr %10, i64 0, i32 4
  %178 = load i32, ptr %177, align 4, !tbaa !143
  %179 = getelementptr inbounds %struct.wmEvent, ptr %10, i64 0, i32 12
  store i32 %178, ptr %179, align 8, !tbaa !146
  %180 = getelementptr inbounds %struct.wmEvent, ptr %10, i64 0, i32 5
  %181 = load i32, ptr %180, align 8, !tbaa !144
  %182 = getelementptr inbounds %struct.wmEvent, ptr %10, i64 0, i32 13
  store i32 %181, ptr %182, align 4, !tbaa !147
  call void @wm_event_add(ptr noundef %45, ptr noundef nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #15
  br label %442

183:                                              ; preds = %44
  tail call void @wm_window_close(ptr noundef %1, ptr noundef %21, ptr noundef %45)
  br label %442

184:                                              ; preds = %44
  %185 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !119
  %186 = and i32 %185, 8
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %192, label %188

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 18
  %190 = load i32, ptr %189, align 8, !tbaa !67
  %191 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull @__func__.ghost_event_proc, i32 noundef %190)
  br label %192

192:                                              ; preds = %188, %184
  %193 = getelementptr inbounds %struct.wmWindowManager, ptr %21, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !104
  %195 = icmp eq ptr %194, %45
  br i1 %195, label %217, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 2
  %198 = load ptr, ptr %197, align 8, !tbaa !66
  %199 = icmp eq ptr %198, null
  br i1 %199, label %217, label %200

200:                                              ; preds = %196
  store ptr %45, ptr %193, align 8, !tbaa !104
  %201 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !119
  %202 = and i32 %201, 8
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 18
  %206 = load i32, ptr %205, align 8, !tbaa !67
  %207 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef nonnull @__func__.wm_window_make_drawable, i32 noundef %206)
  br label %208

208:                                              ; preds = %204, %200
  %209 = load ptr, ptr %197, align 8, !tbaa !66
  %210 = tail call i32 @GHOST_ActivateWindowDrawingContext(ptr noundef %209) #15
  %211 = load ptr, ptr %197, align 8, !tbaa !66
  %212 = tail call float @GHOST_GetNativePixelSize(ptr noundef %211) #15
  %213 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 107), align 8, !tbaa !95
  %214 = icmp eq i32 %213, 1
  %215 = fmul float %212, 2.000000e+00
  %216 = select i1 %214, float %215, float %212
  store float %216, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !105
  tail call void @BKE_userdef_state() #15
  br label %217

217:                                              ; preds = %192, %196, %208
  tail call void @WM_event_add_notifier(ptr noundef %1, i32 noundef 33554432, ptr noundef null) #15
  br label %442

218:                                              ; preds = %44, %44
  %219 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 2
  %220 = load ptr, ptr %219, align 8, !tbaa !66
  %221 = tail call i32 @GHOST_GetWindowState(ptr noundef %220) #15
  %222 = trunc i32 %221 to i16
  %223 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 10
  store i16 %222, ptr %223, align 8, !tbaa !102
  %224 = icmp eq i32 %22, 15
  br i1 %224, label %225, label %228

225:                                              ; preds = %218
  %226 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 3
  %227 = load ptr, ptr %226, align 8, !tbaa !73
  tail call void @WM_jobs_stop(ptr noundef %21, ptr noundef %227, ptr noundef null) #15
  br label %228

228:                                              ; preds = %225, %218
  %229 = icmp eq i32 %221, 2
  br i1 %229, label %442, label %230

230:                                              ; preds = %228
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #15
  %231 = load ptr, ptr %219, align 8, !tbaa !66
  %232 = tail call ptr @GHOST_GetClientBounds(ptr noundef %231) #15
  call void @GHOST_GetRectangle(ptr noundef %232, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16) #15
  call void @GHOST_DisposeRectangle(ptr noundef %232) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  %233 = load ptr, ptr @g_system, align 8, !tbaa !34
  call void @GHOST_GetAllDisplayDimensions(ptr noundef %233, ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  %234 = load i32, ptr %8, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  %235 = load i32, ptr %15, align 4, !tbaa !38
  %236 = load i32, ptr %13, align 4, !tbaa !38
  %237 = sub nsw i32 %235, %236
  %238 = load i32, ptr %16, align 4, !tbaa !38
  %239 = load i32, ptr %14, align 4, !tbaa !38
  %240 = sub nsw i32 %238, %239
  %241 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 9
  %242 = load i16, ptr %241, align 2, !tbaa !72
  %243 = sext i16 %242 to i32
  %244 = add i32 %239, %243
  %245 = sub i32 %234, %244
  %246 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 8
  %247 = load i16, ptr %246, align 4, !tbaa !71
  %248 = sext i16 %247 to i32
  %249 = icmp eq i32 %237, %248
  %250 = icmp eq i32 %240, %243
  %251 = select i1 %249, i1 %250, i1 false
  br i1 %251, label %252, label %262

252:                                              ; preds = %230
  %253 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 6
  %254 = load i16, ptr %253, align 8, !tbaa !69
  %255 = sext i16 %254 to i32
  %256 = icmp eq i32 %236, %255
  br i1 %256, label %257, label %262

257:                                              ; preds = %252
  %258 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 7
  %259 = load i16, ptr %258, align 2, !tbaa !70
  %260 = sext i16 %259 to i32
  %261 = icmp eq i32 %245, %260
  br i1 %261, label %320, label %262

262:                                              ; preds = %257, %252, %230
  %263 = trunc i32 %237 to i16
  store i16 %263, ptr %246, align 4, !tbaa !71
  %264 = trunc i32 %240 to i16
  store i16 %264, ptr %241, align 2, !tbaa !72
  %265 = trunc i32 %236 to i16
  %266 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 6
  store i16 %265, ptr %266, align 8, !tbaa !69
  %267 = trunc i32 %245 to i16
  %268 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 7
  store i16 %267, ptr %268, align 2, !tbaa !70
  %269 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !119
  %270 = and i32 %269, 8
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %295, label %272

272:                                              ; preds = %262
  %273 = load ptr, ptr %219, align 8, !tbaa !66
  %274 = call i32 @GHOST_GetWindowState(ptr noundef %273) #15
  %275 = icmp ult i32 %274, 4
  br i1 %275, label %276, label %280

276:                                              ; preds = %272
  %277 = zext nneg i32 %274 to i64
  %278 = shl i64 %277, 2
  %279 = call ptr @llvm.load.relative.i64(ptr @reltable.ghost_event_proc, i64 %278)
  br label %280

280:                                              ; preds = %272, %276
  %281 = phi ptr [ %279, %276 ], [ @.str.23, %272 ]
  %282 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 18
  %283 = load i32, ptr %282, align 8, !tbaa !67
  %284 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef nonnull @__func__.ghost_event_proc, i32 noundef %283, ptr noundef nonnull %281)
  br i1 %224, label %295, label %285

285:                                              ; preds = %280
  %286 = load i16, ptr %266, align 8, !tbaa !69
  %287 = sext i16 %286 to i32
  %288 = load i16, ptr %268, align 2, !tbaa !70
  %289 = sext i16 %288 to i32
  %290 = load i16, ptr %246, align 4, !tbaa !71
  %291 = sext i16 %290 to i32
  %292 = load i16, ptr %241, align 2, !tbaa !72
  %293 = sext i16 %292 to i32
  %294 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %287, i32 noundef %289, i32 noundef %291, i32 noundef %293)
  br label %295

295:                                              ; preds = %280, %285, %262
  %296 = getelementptr inbounds %struct.wmWindowManager, ptr %21, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !104
  %298 = icmp eq ptr %297, %45
  br i1 %298, label %319, label %299

299:                                              ; preds = %295
  %300 = load ptr, ptr %219, align 8, !tbaa !66
  %301 = icmp eq ptr %300, null
  br i1 %301, label %319, label %302

302:                                              ; preds = %299
  store ptr %45, ptr %296, align 8, !tbaa !104
  %303 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !119
  %304 = and i32 %303, 8
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %310, label %306

306:                                              ; preds = %302
  %307 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 18
  %308 = load i32, ptr %307, align 8, !tbaa !67
  %309 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef nonnull @__func__.wm_window_make_drawable, i32 noundef %308)
  br label %310

310:                                              ; preds = %306, %302
  %311 = load ptr, ptr %219, align 8, !tbaa !66
  %312 = call i32 @GHOST_ActivateWindowDrawingContext(ptr noundef %311) #15
  %313 = load ptr, ptr %219, align 8, !tbaa !66
  %314 = call float @GHOST_GetNativePixelSize(ptr noundef %313) #15
  %315 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 107), align 8, !tbaa !95
  %316 = icmp eq i32 %315, 1
  %317 = fmul float %314, 2.000000e+00
  %318 = select i1 %316, float %317, float %314
  store float %318, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !105
  call void @BKE_userdef_state() #15
  br label %319

319:                                              ; preds = %295, %299, %310
  call void @wm_draw_window_clear(ptr noundef %45) #15
  call void @WM_event_add_notifier(ptr noundef %1, i32 noundef 50331649, ptr noundef null) #15
  call void @WM_event_add_notifier(ptr noundef %1, i32 noundef 33554433, ptr noundef null) #15
  br label %320

320:                                              ; preds = %319, %257
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #15
  br label %442

321:                                              ; preds = %44
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #15
  %322 = tail call ptr @GHOST_GetEventData(ptr noundef %0) #15
  %323 = icmp eq ptr %322, null
  br i1 %323, label %328, label %324

324:                                              ; preds = %321
  %325 = tail call ptr @WM_operatortype_find(ptr noundef nonnull @.str.26, i8 noundef zeroext 0) #15
  %326 = tail call ptr @CTX_wm_window(ptr noundef %1) #15
  tail call void @CTX_wm_window_set(ptr noundef %1, ptr noundef %45) #15
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %17, ptr noundef %325) #15
  call void @RNA_string_set(ptr noundef nonnull %17, ptr noundef nonnull @.str.27, ptr noundef nonnull %322) #15
  %327 = call i32 @WM_operator_name_call_ptr(ptr noundef %1, ptr noundef %325, i16 noundef signext 6, ptr noundef nonnull %17) #15
  call void @WM_operator_properties_free(ptr noundef nonnull %17) #15
  call void @CTX_wm_window_set(ptr noundef %1, ptr noundef %326) #15
  br label %328

328:                                              ; preds = %324, %321
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #15
  br label %442

329:                                              ; preds = %44
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %18) #15
  %330 = tail call ptr @GHOST_GetEventData(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #15
  %331 = load ptr, ptr @g_system, align 8, !tbaa !34
  %332 = call i32 @GHOST_GetCursorPosition(ptr noundef %331, ptr noundef nonnull %19, ptr noundef nonnull %20) #15
  %333 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 2
  %334 = load ptr, ptr %333, align 8, !tbaa !66
  %335 = call float @GHOST_GetNativePixelSize(ptr noundef %334) #15
  %336 = load ptr, ptr %333, align 8, !tbaa !66
  %337 = load i32, ptr %19, align 4, !tbaa !38
  %338 = load i32, ptr %20, align 4, !tbaa !38
  call void @GHOST_ScreenToClient(ptr noundef %336, i32 noundef %337, i32 noundef %338, ptr noundef nonnull %19, ptr noundef nonnull %20) #15
  %339 = load i32, ptr %19, align 4, !tbaa !38
  %340 = sitofp i32 %339 to float
  %341 = fmul float %335, %340
  %342 = fptosi float %341 to i32
  store i32 %342, ptr %19, align 4, !tbaa !38
  %343 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 9
  %344 = load i16, ptr %343, align 2, !tbaa !72
  %345 = sext i16 %344 to i32
  %346 = load i32, ptr %20, align 4, !tbaa !38
  %347 = xor i32 %346, -1
  %348 = add i32 %347, %345
  %349 = sitofp i32 %348 to float
  %350 = fmul float %335, %349
  %351 = fptosi float %350 to i32
  store i32 %351, ptr %20, align 4, !tbaa !38
  %352 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 21
  %353 = load ptr, ptr %352, align 8, !tbaa !63
  %354 = getelementptr inbounds %struct.wmEvent, ptr %353, i64 0, i32 4
  store i32 %342, ptr %354, align 4, !tbaa !143
  %355 = getelementptr inbounds %struct.wmEvent, ptr %353, i64 0, i32 5
  store i32 %351, ptr %355, align 8, !tbaa !144
  call void @wm_event_init_from_window(ptr noundef %45, ptr noundef nonnull %18) #15
  %356 = getelementptr inbounds %struct.wmEvent, ptr %18, i64 0, i32 2
  store i16 4, ptr %356, align 8, !tbaa !60
  %357 = getelementptr inbounds %struct.wmEvent, ptr %18, i64 0, i32 4
  %358 = load i32, ptr %357, align 4, !tbaa !143
  %359 = getelementptr inbounds %struct.wmEvent, ptr %18, i64 0, i32 12
  store i32 %358, ptr %359, align 8, !tbaa !146
  %360 = getelementptr inbounds %struct.wmEvent, ptr %18, i64 0, i32 5
  %361 = load i32, ptr %360, align 8, !tbaa !144
  %362 = getelementptr inbounds %struct.wmEvent, ptr %18, i64 0, i32 13
  store i32 %361, ptr %362, align 4, !tbaa !147
  %363 = getelementptr inbounds %struct.wmWindowManager, ptr %21, i64 0, i32 2
  store ptr %45, ptr %363, align 8, !tbaa !135
  %364 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 12
  store i16 1, ptr %364, align 4, !tbaa !134
  call void @wm_event_add(ptr noundef %45, ptr noundef nonnull %18) #15
  store i16 20515, ptr %356, align 8, !tbaa !60
  %365 = getelementptr inbounds %struct.wmEvent, ptr %18, i64 0, i32 3
  store i16 2, ptr %365, align 2, !tbaa !127
  %366 = getelementptr inbounds %struct.wmEvent, ptr %18, i64 0, i32 25
  store i16 3, ptr %366, align 8, !tbaa !129
  %367 = getelementptr inbounds %struct.wmWindowManager, ptr %21, i64 0, i32 12
  %368 = getelementptr inbounds %struct.wmEvent, ptr %18, i64 0, i32 28
  store ptr %367, ptr %368, align 8, !tbaa !58
  %369 = getelementptr inbounds %struct.wmEvent, ptr %18, i64 0, i32 26
  store i16 1, ptr %369, align 2, !tbaa !148
  call void @wm_event_add(ptr noundef %45, ptr noundef nonnull %18) #15
  %370 = getelementptr inbounds %struct.GHOST_TEventDragnDropData, ptr %330, i64 0, i32 2
  %371 = load i32, ptr %370, align 8, !tbaa !149
  %372 = icmp eq i32 %371, 1
  br i1 %372, label %373, label %389

373:                                              ; preds = %329
  %374 = getelementptr inbounds %struct.GHOST_TEventDragnDropData, ptr %330, i64 0, i32 3
  %375 = load ptr, ptr %374, align 8, !tbaa !151
  %376 = load i32, ptr %375, align 8, !tbaa !152
  %377 = icmp sgt i32 %376, 0
  br i1 %377, label %378, label %389

378:                                              ; preds = %373
  %379 = getelementptr inbounds %struct.GHOST_TStringArray, ptr %375, i64 0, i32 1
  %380 = load ptr, ptr %379, align 8, !tbaa !154
  %381 = load ptr, ptr %380, align 8, !tbaa !34
  %382 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef %381)
  %383 = load ptr, ptr %379, align 8, !tbaa !154
  %384 = load ptr, ptr %383, align 8, !tbaa !34
  %385 = call i32 @ED_file_extension_icon(ptr noundef %384) #15
  %386 = load ptr, ptr %379, align 8, !tbaa !154
  %387 = load ptr, ptr %386, align 8, !tbaa !34
  %388 = call ptr @WM_event_start_drag(ptr noundef %1, i32 noundef %385, i32 noundef 2, ptr noundef %387, double noundef 0.000000e+00, i32 noundef 0) #15
  br label %389

389:                                              ; preds = %373, %378, %329
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #15
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %18) #15
  br label %442

390:                                              ; preds = %44
  %391 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 2
  %392 = load ptr, ptr %391, align 8, !tbaa !66
  %393 = tail call float @GHOST_GetNativePixelSize(ptr noundef %392) #15
  %394 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 107), align 8, !tbaa !95
  %395 = icmp eq i32 %394, 1
  %396 = fmul float %393, 2.000000e+00
  %397 = select i1 %395, float %396, float %393
  store float %397, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !105
  tail call void @BKE_userdef_state() #15
  tail call void @WM_event_add_notifier(ptr noundef %1, i32 noundef 50331649, ptr noundef null) #15
  tail call void @WM_event_add_notifier(ptr noundef %1, i32 noundef 33554433, ptr noundef null) #15
  br label %442

398:                                              ; preds = %44
  %399 = getelementptr inbounds %struct.GHOST_TEventTrackpadData, ptr %29, i64 0, i32 1
  %400 = getelementptr inbounds %struct.GHOST_TEventTrackpadData, ptr %29, i64 0, i32 2
  %401 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 2
  %402 = load ptr, ptr %401, align 8, !tbaa !66
  %403 = tail call float @GHOST_GetNativePixelSize(ptr noundef %402) #15
  %404 = load ptr, ptr %401, align 8, !tbaa !66
  %405 = load i32, ptr %399, align 4, !tbaa !38
  %406 = load i32, ptr %400, align 4, !tbaa !38
  tail call void @GHOST_ScreenToClient(ptr noundef %404, i32 noundef %405, i32 noundef %406, ptr noundef nonnull %399, ptr noundef nonnull %400) #15
  %407 = load i32, ptr %399, align 4, !tbaa !38
  %408 = sitofp i32 %407 to float
  %409 = fmul float %403, %408
  %410 = fptosi float %409 to i32
  store i32 %410, ptr %399, align 4, !tbaa !38
  %411 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 9
  %412 = load i16, ptr %411, align 2, !tbaa !72
  %413 = sext i16 %412 to i32
  %414 = load i32, ptr %400, align 4, !tbaa !38
  %415 = xor i32 %414, -1
  %416 = add i32 %415, %413
  %417 = sitofp i32 %416 to float
  %418 = fmul float %403, %417
  %419 = fptosi float %418 to i32
  store i32 %419, ptr %400, align 4, !tbaa !38
  tail call void @wm_event_add_ghostevent(ptr noundef %21, ptr noundef %45, i32 noundef %22, i32 noundef %24, ptr noundef %29) #15
  br label %442

420:                                              ; preds = %44
  %421 = getelementptr inbounds %struct.GHOST_TEventCursorData, ptr %29, i64 0, i32 1
  %422 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 2
  %423 = load ptr, ptr %422, align 8, !tbaa !66
  %424 = tail call float @GHOST_GetNativePixelSize(ptr noundef %423) #15
  %425 = load ptr, ptr %422, align 8, !tbaa !66
  %426 = load i32, ptr %29, align 4, !tbaa !38
  %427 = load i32, ptr %421, align 4, !tbaa !38
  tail call void @GHOST_ScreenToClient(ptr noundef %425, i32 noundef %426, i32 noundef %427, ptr noundef nonnull %29, ptr noundef nonnull %421) #15
  %428 = load i32, ptr %29, align 4, !tbaa !38
  %429 = sitofp i32 %428 to float
  %430 = fmul float %424, %429
  %431 = fptosi float %430 to i32
  store i32 %431, ptr %29, align 4, !tbaa !38
  %432 = getelementptr inbounds %struct.wmWindow, ptr %45, i64 0, i32 9
  %433 = load i16, ptr %432, align 2, !tbaa !72
  %434 = sext i16 %433 to i32
  %435 = load i32, ptr %421, align 4, !tbaa !38
  %436 = xor i32 %435, -1
  %437 = add i32 %436, %434
  %438 = sitofp i32 %437 to float
  %439 = fmul float %424, %438
  %440 = fptosi float %439 to i32
  store i32 %440, ptr %421, align 4, !tbaa !38
  tail call void @wm_event_add_ghostevent(ptr noundef %21, ptr noundef %45, i32 noundef %22, i32 noundef %24, ptr noundef nonnull %29) #15
  br label %442

441:                                              ; preds = %44
  tail call void @wm_event_add_ghostevent(ptr noundef %21, ptr noundef %45, i32 noundef %22, i32 noundef %24, ptr noundef %29) #15
  br label %442

442:                                              ; preds = %42, %36, %27, %26, %46, %175, %183, %217, %328, %389, %390, %398, %420, %441, %320, %228
  ret i32 1
}

declare ptr @GHOST_CreateSystem() local_unnamed_addr #2

declare i32 @GHOST_AddEventConsumer(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @GHOST_UseNativePixels() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @wm_ghost_exit() local_unnamed_addr #0 {
  %1 = load ptr, ptr @g_system, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @GHOST_DisposeSystem(ptr noundef nonnull %1) #15
  br label %5

5:                                                ; preds = %3, %0
  store ptr null, ptr @g_system, align 8, !tbaa !34
  ret void
}

declare i32 @GHOST_DisposeSystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WM_event_timer_sleep(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef readnone %2, i8 noundef zeroext %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 17
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %6 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  %10 = icmp eq ptr %8, %2
  %11 = or i1 %9, %10
  br i1 %11, label %12, label %6, !llvm.loop !155

12:                                               ; preds = %6
  br i1 %9, label %16, label %13

13:                                               ; preds = %12
  %14 = zext i8 %3 to i32
  %15 = getelementptr inbounds %struct.wmTimer, ptr %8, i64 0, i32 11
  store i32 %14, ptr %15, align 8, !tbaa !120
  br label %16

16:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_event_add_timer(ptr noundef %0, ptr noundef %1, i32 noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 96, ptr noundef nonnull @.str.15) #15
  %7 = getelementptr inbounds %struct.wmTimer, ptr %6, i64 0, i32 4
  store i32 %2, ptr %7, align 8, !tbaa !50
  %8 = tail call double @PIL_check_seconds_timer() #15
  %9 = getelementptr inbounds %struct.wmTimer, ptr %6, i64 0, i32 8
  store double %8, ptr %9, align 8, !tbaa !122
  %10 = fadd double %8, %3
  %11 = getelementptr inbounds %struct.wmTimer, ptr %6, i64 0, i32 9
  store double %10, ptr %11, align 8, !tbaa !121
  %12 = getelementptr inbounds %struct.wmTimer, ptr %6, i64 0, i32 10
  store double %8, ptr %12, align 8, !tbaa !125
  %13 = getelementptr inbounds %struct.wmTimer, ptr %6, i64 0, i32 3
  store double %3, ptr %13, align 8, !tbaa !126
  %14 = getelementptr inbounds %struct.wmTimer, ptr %6, i64 0, i32 2
  store ptr %1, ptr %14, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 17
  tail call void @BLI_addtail(ptr noundef nonnull %15, ptr noundef %6) #15
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_clipboard_text_get(i8 noundef zeroext %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !118
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %2
  %6 = zext i8 %0 to i32
  %7 = tail call ptr @GHOST_getClipboard(i32 noundef %6) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #16
  %12 = add i64 %11, 1
  %13 = tail call ptr %10(i64 noundef %12, ptr noundef nonnull @__func__.wm_clipboard_text_get_ex) #15
  br label %14

14:                                               ; preds = %20, %9
  %15 = phi ptr [ %21, %20 ], [ %13, %9 ]
  %16 = phi ptr [ %22, %20 ], [ %7, %9 ]
  %17 = load i8, ptr %16, align 1, !tbaa !91
  switch i8 %17, label %18 [
    i8 0, label %23
    i8 13, label %20
  ]

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 %17, ptr %15, align 1, !tbaa !91
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi ptr [ %19, %18 ], [ %15, %14 ]
  %22 = getelementptr inbounds i8, ptr %16, i64 1
  br label %14, !llvm.loop !156

23:                                               ; preds = %14
  store i8 0, ptr %15, align 1, !tbaa !91
  tail call void @free(ptr noundef %7) #15
  %24 = ptrtoint ptr %15 to i64
  %25 = ptrtoint ptr %13 to i64
  %26 = sub i64 %24, %25
  %27 = trunc i64 %26 to i32
  br label %28

28:                                               ; preds = %5, %2, %23
  %29 = phi i32 [ %27, %23 ], [ 0, %2 ], [ 0, %5 ]
  %30 = phi ptr [ %13, %23 ], [ null, %2 ], [ null, %5 ]
  store i32 %29, ptr %1, align 4, !tbaa !38
  ret ptr %30
}

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_clipboard_text_get_firstline(i8 noundef zeroext %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !118
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %26

5:                                                ; preds = %2
  %6 = zext i8 %0 to i32
  %7 = tail call ptr @GHOST_getClipboard(i32 noundef %6) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #16
  %12 = add i64 %11, 1
  %13 = tail call ptr %10(i64 noundef %12, ptr noundef nonnull @__func__.wm_clipboard_text_get_ex) #15
  br label %14

14:                                               ; preds = %18, %9
  %15 = phi ptr [ %19, %18 ], [ %13, %9 ]
  %16 = phi ptr [ %20, %18 ], [ %7, %9 ]
  %17 = load i8, ptr %16, align 1, !tbaa !91
  switch i8 %17, label %18 [
    i8 0, label %21
    i8 10, label %21
    i8 13, label %21
  ]

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 %17, ptr %15, align 1, !tbaa !91
  %20 = getelementptr inbounds i8, ptr %16, i64 1
  br label %14, !llvm.loop !157

21:                                               ; preds = %14, %14, %14
  store i8 0, ptr %15, align 1, !tbaa !91
  tail call void @free(ptr noundef %7) #15
  %22 = ptrtoint ptr %15 to i64
  %23 = ptrtoint ptr %13 to i64
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  br label %26

26:                                               ; preds = %5, %2, %21
  %27 = phi i32 [ %25, %21 ], [ 0, %2 ], [ 0, %5 ]
  %28 = phi ptr [ %13, %21 ], [ null, %2 ], [ null, %5 ]
  store i32 %27, ptr %1, align 4, !tbaa !38
  ret ptr %28
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_clipboard_text_set(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !118
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = zext i8 %1 to i32
  tail call void @GHOST_putClipboard(ptr noundef %0, i32 noundef %6) #15
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

declare void @GHOST_putClipboard(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @WM_progress_set(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = tail call i32 @GHOST_SetProgressBar(ptr noundef %4, float noundef %1) #15
  ret void
}

declare i32 @GHOST_SetProgressBar(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @WM_progress_clear(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = tail call i32 @GHOST_EndProgressBar(ptr noundef %3) #15
  ret void
}

declare i32 @GHOST_EndProgressBar(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @wm_window_get_position(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 6
  %5 = load i16, ptr %4, align 8, !tbaa !69
  %6 = sext i16 %5 to i32
  store i32 %6, ptr %1, align 4, !tbaa !38
  %7 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 7
  %8 = load i16, ptr %7, align 2, !tbaa !70
  %9 = sext i16 %8 to i32
  store i32 %9, ptr %2, align 4, !tbaa !38
  ret void
}

declare i32 @GHOST_SetClientSize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @wm_window_lower(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = tail call i32 @GHOST_SetWindowOrder(ptr noundef %3, i32 noundef 1) #15
  ret void
}

declare i32 @GHOST_SetWindowOrder(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @wm_window_swap_buffers(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = tail call i32 @GHOST_SwapWindowBuffers(ptr noundef %3) #15
  ret void
}

declare i32 @GHOST_SwapWindowBuffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @wm_window_set_swap_interval(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = tail call i32 @GHOST_SetSwapInterval(ptr noundef %4, i32 noundef %1) #15
  ret void
}

declare i32 @GHOST_SetSwapInterval(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @wm_window_get_swap_interval(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = tail call i32 @GHOST_GetSwapInterval(ptr noundef %4, ptr noundef %1) #15
  %6 = trunc i32 %5 to i8
  ret i8 %6
}

declare i32 @GHOST_GetSwapInterval(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @WM_init_state_size_set(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
  store i32 %0, ptr @wm_init_state.2, align 4, !tbaa !98
  store i32 %1, ptr @wm_init_state.3, align 4, !tbaa !99
  %5 = tail call i32 @llvm.smax.i32(i32 %2, i32 640)
  store i32 %5, ptr @wm_init_state.0, align 4, !tbaa !96
  %6 = tail call i32 @llvm.smax.i32(i32 %3, i32 480)
  store i32 %6, ptr @wm_init_state.1, align 4, !tbaa !101
  %7 = load i32, ptr @wm_init_state.5, align 4, !tbaa !100
  %8 = or i32 %7, 1
  store i32 %8, ptr @wm_init_state.5, align 4, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @WM_init_state_fullscreen_set() local_unnamed_addr #6 {
  store i1 true, ptr @wm_init_state.4, align 4
  %1 = load i32, ptr @wm_init_state.5, align 4, !tbaa !100
  %2 = or i32 %1, 2
  store i32 %2, ptr @wm_init_state.5, align 4, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @WM_init_state_normal_set() local_unnamed_addr #6 {
  store i1 false, ptr @wm_init_state.4, align 4
  %1 = load i32, ptr @wm_init_state.5, align 4, !tbaa !100
  %2 = or i32 %1, 2
  store i32 %2, ptr @wm_init_state.5, align 4, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @WM_init_native_pixels(i8 noundef zeroext %0) local_unnamed_addr #7 {
  store i8 %0, ptr @wm_init_state.6, align 4, !tbaa !132
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_cursor_warp(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %1, ptr %4, align 4, !tbaa !38
  store i32 %2, ptr %5, align 4, !tbaa !38
  %6 = icmp eq ptr %0, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = icmp eq ptr %9, null
  br i1 %10, label %37, label %11

11:                                               ; preds = %7
  %12 = tail call float @GHOST_GetNativePixelSize(ptr noundef nonnull %9) #15
  %13 = load i32, ptr %4, align 4, !tbaa !38
  %14 = load i32, ptr %5, align 4, !tbaa !38
  %15 = sitofp i32 %13 to float
  %16 = fdiv float %15, %12
  %17 = fptosi float %16 to i32
  store i32 %17, ptr %4, align 4, !tbaa !38
  %18 = sitofp i32 %14 to float
  %19 = fdiv float %18, %12
  %20 = fptosi float %19 to i32
  store i32 %20, ptr %5, align 4, !tbaa !38
  %21 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 9
  %22 = load i16, ptr %21, align 2, !tbaa !72
  %23 = sext i16 %22 to i32
  %24 = xor i32 %20, -1
  %25 = add i32 %23, %24
  store i32 %25, ptr %5, align 4, !tbaa !38
  %26 = load ptr, ptr %8, align 8, !tbaa !66
  call void @GHOST_ClientToScreen(ptr noundef %26, i32 noundef %17, i32 noundef %25, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %27 = load ptr, ptr @g_system, align 8, !tbaa !34
  %28 = load i32, ptr %4, align 4, !tbaa !38
  %29 = load i32, ptr %5, align 4, !tbaa !38
  %30 = call i32 @GHOST_SetCursorPosition(ptr noundef %27, i32 noundef %28, i32 noundef %29) #15
  %31 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 21
  %32 = load ptr, ptr %31, align 8, !tbaa !63
  %33 = getelementptr inbounds %struct.wmEvent, ptr %32, i64 0, i32 12
  store i32 %13, ptr %33, align 8, !tbaa !146
  %34 = getelementptr inbounds %struct.wmEvent, ptr %32, i64 0, i32 13
  store i32 %14, ptr %34, align 4, !tbaa !147
  %35 = getelementptr inbounds %struct.wmEvent, ptr %32, i64 0, i32 4
  store i32 %13, ptr %35, align 4, !tbaa !143
  %36 = getelementptr inbounds %struct.wmEvent, ptr %32, i64 0, i32 5
  store i32 %14, ptr %36, align 8, !tbaa !144
  br label %37

37:                                               ; preds = %11, %7, %3
  ret void
}

declare void @GHOST_ClientToScreen(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @GHOST_SetCursorPosition(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local float @WM_cursor_pressure(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = tail call ptr @GHOST_GetTabletData(ptr noundef %3) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr %4, align 4, !tbaa !158
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.GHOST_TabletData, ptr %4, i64 0, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !160
  br label %12

12:                                               ; preds = %1, %6, %9
  %13 = phi float [ %11, %9 ], [ -1.000000e+00, %6 ], [ -1.000000e+00, %1 ]
  ret float %13
}

declare ptr @GHOST_GetTabletData(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @WM_window_pixels_x(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = tail call float @GHOST_GetNativePixelSize(ptr noundef %3) #15
  %5 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 8
  %6 = load i16, ptr %5, align 4, !tbaa !71
  %7 = sitofp i16 %6 to float
  %8 = fmul float %4, %7
  %9 = fptosi float %8 to i32
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define dso_local i32 @WM_window_pixels_y(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = tail call float @GHOST_GetNativePixelSize(ptr noundef %3) #15
  %5 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 9
  %6 = load i16, ptr %5, align 2, !tbaa !72
  %7 = sitofp i16 %6 to float
  %8 = fmul float %4, %7
  %9 = fptosi float %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @WM_window_is_fullscreen(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 10
  %3 = load i16, ptr %2, align 8, !tbaa !102
  %4 = icmp eq i16 %3, 3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

declare i32 @GHOST_DisposeWindow(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GHOST_CreateWindow(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

declare void @GPU_init() local_unnamed_addr #2

declare void @GHOST_SetWindowUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GHOST_GetClientBounds(ptr noundef) local_unnamed_addr #2

declare i32 @GHOST_GetWidthRectangle(ptr noundef) local_unnamed_addr #2

declare i32 @GHOST_GetHeightRectangle(ptr noundef) local_unnamed_addr #2

declare void @GHOST_DisposeRectangle(ptr noundef) local_unnamed_addr #2

declare void @glClearColor(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare i32 @GPU_type_matches(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glClear(i32 noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @GPU_state_init() local_unnamed_addr #2

declare void @GHOST_ScreenToClient(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

declare void @wm_jobs_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @wm_autosave_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @wm_event_init_from_window(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @wm_event_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @GHOST_GetEventType(ptr noundef) local_unnamed_addr #2

declare i64 @GHOST_GetEventTime(ptr noundef) local_unnamed_addr #2

declare ptr @GHOST_GetEventWindow(ptr noundef) local_unnamed_addr #2

declare ptr @GHOST_GetEventData(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #3

declare i32 @GHOST_ValidWindow(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GHOST_GetWindowUserData(ptr noundef) local_unnamed_addr #2

declare void @wm_event_add_ghostevent(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_jobs_stop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GHOST_GetRectangle(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @WM_operator_properties_create_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WM_operator_name_call_ptr(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @WM_operator_properties_free(ptr noundef) local_unnamed_addr #2

declare i32 @ED_file_extension_icon(ptr noundef) local_unnamed_addr #2

declare ptr @WM_event_start_drag(ptr noundef, i32 noundef, i32 noundef, ptr noundef, double noundef, i32 noundef) local_unnamed_addr #2

declare i32 @GHOST_GetModifierKeyState(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GHOST_getClipboard(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }

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
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = distinct !{!54, !52, !53}
!55 = !{!41, !35, i64 224}
!56 = !{!47, !35, i64 40}
!57 = distinct !{!57, !52, !53}
!58 = !{!59, !35, i64 112}
!59 = !{!"wmEvent", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 18, !39, i64 20, !39, i64 24, !36, i64 28, !36, i64 36, !36, i64 42, !36, i64 43, !43, i64 44, !43, i64 46, !39, i64 48, !39, i64 52, !48, i64 56, !39, i64 64, !39, i64 68, !43, i64 72, !43, i64 74, !43, i64 76, !43, i64 78, !43, i64 80, !43, i64 82, !35, i64 88, !35, i64 96, !43, i64 104, !43, i64 106, !39, i64 108, !35, i64 112}
!60 = !{!59, !43, i64 16}
!61 = distinct !{!61, !52, !53}
!62 = distinct !{!62, !52, !53}
!63 = !{!64, !35, i64 136}
!64 = !{!"wmWindow", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !43, i64 104, !43, i64 106, !43, i64 108, !43, i64 110, !43, i64 112, !43, i64 114, !43, i64 116, !43, i64 118, !43, i64 120, !43, i64 122, !43, i64 124, !43, i64 126, !39, i64 128, !43, i64 132, !43, i64 134, !35, i64 136, !35, i64 144, !35, i64 152, !39, i64 160, !39, i64 164, !35, i64 168, !44, i64 176, !44, i64 192, !44, i64 208, !44, i64 224, !44, i64 240}
!65 = !{!64, !35, i64 168}
!66 = !{!64, !35, i64 16}
!67 = !{!64, !39, i64 128}
!68 = distinct !{!68, !52, !53}
!69 = !{!64, !43, i64 104}
!70 = !{!64, !43, i64 106}
!71 = !{!64, !43, i64 108}
!72 = !{!64, !43, i64 110}
!73 = !{!64, !35, i64 24}
!74 = !{!75, !43, i64 212}
!75 = !{!"bScreen", !42, i64 0, !44, i64 120, !44, i64 136, !44, i64 152, !44, i64 168, !35, i64 184, !35, i64 192, !39, i64 200, !39, i64 204, !43, i64 208, !43, i64 210, !43, i64 212, !43, i64 214, !43, i64 216, !43, i64 218, !43, i64 220, !43, i64 222, !43, i64 224, !43, i64 226, !43, i64 228, !43, i64 230, !35, i64 232, !35, i64 240}
!76 = !{!75, !43, i64 216}
!77 = !{!75, !43, i64 214}
!78 = !{!79, !43, i64 8908}
!79 = !{!"UserDef", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !39, i64 8468, !43, i64 8472, !43, i64 8474, !43, i64 8476, !43, i64 8478, !43, i64 8480, !43, i64 8482, !39, i64 8484, !39, i64 8488, !39, i64 8492, !43, i64 8496, !43, i64 8498, !39, i64 8500, !39, i64 8504, !39, i64 8508, !39, i64 8512, !39, i64 8516, !39, i64 8520, !39, i64 8524, !43, i64 8528, !43, i64 8530, !43, i64 8532, !43, i64 8534, !44, i64 8536, !44, i64 8552, !44, i64 8568, !44, i64 8584, !44, i64 8600, !44, i64 8616, !44, i64 8632, !36, i64 8648, !43, i64 8712, !43, i64 8714, !43, i64 8716, !43, i64 8718, !43, i64 8720, !43, i64 8722, !43, i64 8724, !43, i64 8726, !36, i64 8728, !43, i64 8896, !43, i64 8898, !43, i64 8900, !43, i64 8902, !43, i64 8904, !43, i64 8906, !43, i64 8908, !43, i64 8910, !39, i64 8912, !39, i64 8916, !43, i64 8920, !43, i64 8922, !43, i64 8924, !43, i64 8926, !43, i64 8928, !43, i64 8930, !43, i64 8932, !43, i64 8934, !43, i64 8936, !43, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !43, i64 8944, !43, i64 8946, !43, i64 8948, !43, i64 8950, !43, i64 8952, !43, i64 8954, !80, i64 8956, !80, i64 8960, !39, i64 8964, !43, i64 8968, !43, i64 8970, !80, i64 8972, !43, i64 8976, !43, i64 8978, !43, i64 8980, !43, i64 8982, !81, i64 8984, !36, i64 9760, !36, i64 9772, !43, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !39, i64 10896, !39, i64 10900, !80, i64 10904, !80, i64 10908, !39, i64 10912, !43, i64 10916, !43, i64 10918, !43, i64 10920, !43, i64 10922, !43, i64 10924, !43, i64 10926, !82, i64 10928}
!80 = !{!"float", !36, i64 0}
!81 = !{!"ColorBand", !43, i64 0, !43, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!82 = !{!"WalkNavigation", !80, i64 0, !80, i64 4, !80, i64 8, !80, i64 12, !80, i64 16, !80, i64 20, !43, i64 24, !36, i64 26}
!83 = !{!64, !39, i64 160}
!84 = !{!75, !43, i64 210}
!85 = distinct !{!85, !52, !53}
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
!100 = !{!97, !39, i64 20}
!101 = !{!97, !39, i64 4}
!102 = !{!64, !43, i64 112}
!103 = !{!79, !43, i64 8968}
!104 = !{!41, !35, i64 120}
!105 = !{!79, !80, i64 10908}
!106 = !{!41, !35, i64 296}
!107 = distinct !{!107, !52, !53}
!108 = !{!109, !39, i64 0}
!109 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!110 = !{!109, !39, i64 8}
!111 = !{!109, !39, i64 4}
!112 = !{!109, !39, i64 12}
!113 = distinct !{!113, !52, !53}
!114 = !{!75, !35, i64 184}
!115 = !{!75, !35, i64 152}
!116 = !{!117, !36, i64 72}
!117 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !109, i64 56, !36, i64 72, !36, i64 73, !43, i64 74, !43, i64 76, !43, i64 78, !43, i64 80, !43, i64 82, !43, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !44, i64 96, !44, i64 112, !44, i64 128, !44, i64 144}
!118 = !{!89, !36, i64 2081}
!119 = !{!89, !39, i64 2100}
!120 = !{!47, !39, i64 88}
!121 = !{!47, !48, i64 72}
!122 = !{!47, !48, i64 64}
!123 = !{!47, !48, i64 56}
!124 = !{!47, !48, i64 48}
!125 = !{!47, !48, i64 80}
!126 = !{!47, !48, i64 24}
!127 = !{!59, !43, i64 18}
!128 = !{!59, !43, i64 80}
!129 = !{!59, !43, i64 104}
!130 = distinct !{!130, !52, !53}
!131 = !{!48, !48, i64 0}
!132 = !{!97, !36, i64 24}
!133 = !{!41, !39, i64 152}
!134 = !{!64, !43, i64 116}
!135 = !{!41, !35, i64 128}
!136 = !{!137, !36, i64 4}
!137 = !{!"", !39, i64 0, !36, i64 4, !36, i64 5}
!138 = !{!59, !43, i64 72}
!139 = !{!137, !39, i64 0}
!140 = !{!59, !43, i64 74}
!141 = !{!59, !43, i64 76}
!142 = !{!59, !43, i64 78}
!143 = !{!59, !39, i64 20}
!144 = !{!59, !39, i64 24}
!145 = !{!64, !43, i64 126}
!146 = !{!59, !39, i64 48}
!147 = !{!59, !39, i64 52}
!148 = !{!59, !43, i64 106}
!149 = !{!150, !39, i64 8}
!150 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !35, i64 16}
!151 = !{!150, !35, i64 16}
!152 = !{!153, !39, i64 0}
!153 = !{!"", !39, i64 0, !35, i64 8}
!154 = !{!153, !35, i64 8}
!155 = distinct !{!155, !52, !53}
!156 = distinct !{!156, !52, !53}
!157 = distinct !{!157, !52, !53}
!158 = !{!159, !39, i64 0}
!159 = !{!"GHOST_TabletData", !39, i64 0, !80, i64 4, !80, i64 8, !80, i64 12}
!160 = !{!159, !80, i64 4}
