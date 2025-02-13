; ModuleID = 'blender/source/blender/windowmanager/intern/wm_draw.c'
source_filename = "blender/source/blender/windowmanager/intern/wm_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.wmDrawTriple = type { [9 x i32], [3 x i32], [3 x i32], i32, i32, i32 }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.RenderEngine = type { ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.ListBase, [512 x i8], i32, i32, ptr, i32, i32, %struct.rctf, %struct.rcti, [4 x [4 x float]], i32, i32 }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.wmPaintCursor = type { ptr, ptr, ptr, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }

@U = external local_unnamed_addr global %struct.UserDef, align 8
@wm_method_draw_overlap_all.rect = internal global %struct.rcti zeroinitializer, align 4
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"wmDrawTriple\00", align 1
@__GLEW_ARB_texture_rectangle = external local_unnamed_addr global i8, align 1
@__GLEW_NV_texture_rectangle = external local_unnamed_addr global i8, align 1
@__GLEW_EXT_texture_rectangle = external local_unnamed_addr global i8, align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [74 x i8] c"WM: failed to allocate texture for triple buffer drawing (glGenTextures).\00", align 1
@str.4 = private unnamed_addr constant [74 x i8] c"WM: failed to allocate texture for triple buffer drawing (out of memory).\00", align 1
@str.5 = private unnamed_addr constant [96 x i8] c"WM: failed to allocate texture for triple buffer drawing (texture too large for graphics card).\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @WM_is_draw_triple(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 24
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 61), align 4, !tbaa !42
  %5 = sext i16 %4 to i32
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 %5, ptr %2, align 8, !tbaa !34
  br label %8

8:                                                ; preds = %7, %1
  %9 = tail call fastcc i32 @wm_automatic_draw_method(ptr noundef nonnull %0) #11, !range !47
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @wm_automatic_draw_method(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !48 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 24
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = tail call i32 @GPU_type_matches(i32 noundef 2, i32 noundef 1024, i32 noundef 131072) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = tail call i32 @GPU_type_matches(i32 noundef 8, i32 noundef 256, i32 noundef 262144) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = tail call i32 @GPU_type_matches(i32 noundef 8, i32 noundef 1024, i32 noundef 262144) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = tail call i32 @GPU_color_depth() #12
  %16 = icmp slt i32 %15, 24
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %1, %14, %11, %8, %5
  %19 = phi i32 [ 1, %5 ], [ 4, %8 ], [ 1, %11 ], [ %17, %14 ], [ %3, %1 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_tag_redraw_overlay(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %1, null
  %4 = icmp ne ptr %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @wm_automatic_draw_method(ptr noundef nonnull %0) #11, !range !47
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %1) #12
  br label %10

10:                                               ; preds = %9, %6
  %11 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.bScreen, ptr %12, i64 0, i32 15
  store i16 1, ptr %13, align 4, !tbaa !50
  br label %14

14:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_paint_cursor_tag_redraw(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.bScreen, ptr %4, i64 0, i32 15
  store i16 1, ptr %5, align 4, !tbaa !50
  tail call void @wm_tag_redraw_overlay(ptr noundef %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_draw_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  tail call void @GPU_free_unused_buffers() #12
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %1, %42
  %7 = phi ptr [ %43, %42 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.wmWindow, ptr %7, i64 0, i32 24
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 61), align 4, !tbaa !42
  %11 = sext i16 %10 to i32
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  tail call void @wm_draw_window_clear(ptr noundef nonnull %7) #11
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 61), align 4, !tbaa !42
  %15 = sext i16 %14 to i32
  store i32 %15, ptr %8, align 8, !tbaa !34
  br label %16

16:                                               ; preds = %13, %6
  %17 = tail call fastcc zeroext i8 @wm_draw_update_test_window(ptr noundef nonnull %7) #11, !range !54
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %42, label %19

19:                                               ; preds = %16
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef nonnull %7) #12
  tail call void @wm_window_make_drawable(ptr noundef %2, ptr noundef nonnull %7) #12
  %20 = getelementptr inbounds %struct.wmWindow, ptr %7, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !49
  %22 = getelementptr inbounds %struct.bScreen, ptr %21, i64 0, i32 13
  %23 = load i16, ptr %22, align 8, !tbaa !55
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  tail call void @ED_screen_refresh(ptr noundef %2, ptr noundef nonnull %7) #12
  br label %26

26:                                               ; preds = %25, %19
  %27 = tail call fastcc i32 @wm_automatic_draw_method(ptr noundef nonnull %7) #11, !range !47
  %28 = getelementptr inbounds %struct.wmWindow, ptr %7, i64 0, i32 25
  %29 = load i32, ptr %28, align 4, !tbaa !56
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call fastcc void @wm_method_draw_overlap_all(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 0) #11
  br label %37

32:                                               ; preds = %26
  switch i32 %27, label %36 [
    i32 2, label %33
    i32 1, label %34
    i32 4, label %35
  ]

33:                                               ; preds = %32
  tail call fastcc void @wm_method_draw_full(ptr noundef %0, ptr noundef nonnull %7) #11
  br label %37

34:                                               ; preds = %32
  tail call fastcc void @wm_method_draw_overlap_all(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 0) #11
  br label %37

35:                                               ; preds = %32
  tail call fastcc void @wm_method_draw_overlap_all(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 1) #11
  br label %37

36:                                               ; preds = %32
  tail call fastcc void @wm_method_draw_triple(ptr noundef %0, ptr noundef nonnull %7) #11
  br label %37

37:                                               ; preds = %33, %35, %36, %34, %31
  %38 = load ptr, ptr %20, align 8, !tbaa !49
  %39 = getelementptr inbounds %struct.bScreen, ptr %38, i64 0, i32 14
  store i16 0, ptr %39, align 2, !tbaa !57
  %40 = getelementptr inbounds %struct.bScreen, ptr %38, i64 0, i32 15
  store i16 0, ptr %40, align 4, !tbaa !50
  %41 = getelementptr inbounds %struct.bScreen, ptr %38, i64 0, i32 16
  store i16 0, ptr %41, align 2, !tbaa !58
  tail call void @wm_window_swap_buffers(ptr noundef nonnull %7) #12
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef null) #12
  br label %42

42:                                               ; preds = %16, %37
  %43 = load ptr, ptr %7, align 8, !tbaa !53
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %6, !llvm.loop !59

45:                                               ; preds = %42, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_free_unused_buffers() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_draw_window_clear(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = tail call fastcc i32 @wm_automatic_draw_method(ptr noundef %0) #11, !range !47
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call fastcc void @wm_draw_triple_free(ptr noundef nonnull %0) #11
  br label %7

7:                                                ; preds = %6, %1
  %8 = icmp eq ptr %3, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %16

13:                                               ; preds = %21, %16
  %14 = load ptr, ptr %17, align 8, !tbaa !53
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16, !llvm.loop !61

16:                                               ; preds = %9, %13
  %17 = phi ptr [ %14, %13 ], [ %11, %9 ]
  %18 = getelementptr inbounds %struct.ScrArea, ptr %17, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  %20 = icmp eq ptr %19, null
  br i1 %20, label %13, label %21

21:                                               ; preds = %16, %21
  %22 = phi ptr [ %24, %21 ], [ %19, %16 ]
  %23 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 16
  store i16 0, ptr %23, align 8, !tbaa !62
  %24 = load ptr, ptr %22, align 8, !tbaa !53
  %25 = icmp eq ptr %24, null
  br i1 %25, label %13, label %21, !llvm.loop !67

26:                                               ; preds = %13, %9
  %27 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 17
  store i16 0, ptr %27, align 8, !tbaa !68
  br label %28

28:                                               ; preds = %26, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @wm_draw_update_test_window(ptr noundef %0) unnamed_addr #0 !PGOFuncName !69 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %1, %23
  %8 = phi ptr [ %25, %23 ], [ %5, %1 ]
  %9 = phi i8 [ %24, %23 ], [ 0, %1 ]
  %10 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 15
  %11 = load i16, ptr %10, align 2, !tbaa !70
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @wm_tag_redraw_overlay(ptr noundef %0, ptr noundef nonnull %8) #11
  store i16 0, ptr %10, align 2, !tbaa !70
  br label %14

14:                                               ; preds = %13, %7
  %15 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 7
  %16 = load i16, ptr %15, align 4, !tbaa !71
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 14
  %20 = load i16, ptr %19, align 4, !tbaa !72
  %21 = icmp eq i16 %20, 0
  %22 = select i1 %21, i8 %9, i8 1
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi i8 [ %9, %14 ], [ %22, %18 ]
  %25 = load ptr, ptr %8, align 8, !tbaa !53
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %7, !llvm.loop !73

27:                                               ; preds = %23
  %28 = load ptr, ptr %2, align 8, !tbaa !49
  br label %29

29:                                               ; preds = %27, %1
  %30 = phi ptr [ %3, %1 ], [ %28, %27 ]
  %31 = phi i8 [ 0, %1 ], [ %24, %27 ]
  %32 = getelementptr inbounds %struct.bScreen, ptr %30, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !53
  %34 = icmp eq ptr %33, null
  br i1 %34, label %61, label %39

35:                                               ; preds = %57, %39
  %36 = phi i8 [ %41, %39 ], [ %58, %57 ]
  %37 = load ptr, ptr %40, align 8, !tbaa !53
  %38 = icmp eq ptr %37, null
  br i1 %38, label %61, label %39, !llvm.loop !74

39:                                               ; preds = %29, %35
  %40 = phi ptr [ %37, %35 ], [ %33, %29 ]
  %41 = phi i8 [ %36, %35 ], [ %31, %29 ]
  %42 = getelementptr inbounds %struct.ScrArea, ptr %40, i64 0, i32 20
  %43 = load ptr, ptr %42, align 8, !tbaa !53
  %44 = icmp eq ptr %43, null
  br i1 %44, label %35, label %45

45:                                               ; preds = %39, %57
  %46 = phi ptr [ %59, %57 ], [ %43, %39 ]
  %47 = phi i8 [ %58, %57 ], [ %41, %39 ]
  %48 = load ptr, ptr %2, align 8, !tbaa !49
  tail call fastcc void @wm_region_test_render_do_draw(ptr noundef %48, ptr noundef nonnull %40, ptr noundef nonnull %46) #11
  %49 = getelementptr inbounds %struct.ARegion, ptr %46, i64 0, i32 7
  %50 = load i16, ptr %49, align 4, !tbaa !71
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.ARegion, ptr %46, i64 0, i32 14
  %54 = load i16, ptr %53, align 4, !tbaa !72
  %55 = icmp eq i16 %54, 0
  %56 = select i1 %55, i8 %47, i8 1
  br label %57

57:                                               ; preds = %52, %45
  %58 = phi i8 [ %47, %45 ], [ %56, %52 ]
  %59 = load ptr, ptr %46, align 8, !tbaa !53
  %60 = icmp eq ptr %59, null
  br i1 %60, label %35, label %45, !llvm.loop !75

61:                                               ; preds = %35, %29
  %62 = phi i8 [ %31, %29 ], [ %36, %35 ]
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %61
  %65 = load ptr, ptr %2, align 8, !tbaa !49
  %66 = getelementptr inbounds %struct.bScreen, ptr %65, i64 0, i32 13
  %67 = load i16, ptr %66, align 8, !tbaa !55
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.bScreen, ptr %65, i64 0, i32 12
  %71 = load i16, ptr %70, align 2, !tbaa !76
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.bScreen, ptr %65, i64 0, i32 14
  %75 = load i16, ptr %74, align 2, !tbaa !57
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.bScreen, ptr %65, i64 0, i32 15
  %79 = load i16, ptr %78, align 4, !tbaa !50
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.bScreen, ptr %65, i64 0, i32 16
  %83 = load i16, ptr %82, align 2, !tbaa !58
  %84 = icmp ne i16 %83, 0
  %85 = zext i1 %84 to i8
  br label %86

86:                                               ; preds = %81, %77, %73, %69, %64, %61
  %87 = phi i8 [ 1, %61 ], [ 1, %64 ], [ 1, %69 ], [ 1, %73 ], [ 1, %77 ], [ %85, %81 ]
  ret i8 %87
}

; Function Attrs: optsize
declare void @CTX_wm_window_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_window_make_drawable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_screen_refresh(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_method_draw_overlap_all(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !77 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %13

10:                                               ; preds = %27, %13
  %11 = load ptr, ptr %14, align 8, !tbaa !53
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13, !llvm.loop !78

13:                                               ; preds = %3, %10
  %14 = phi ptr [ %11, %10 ], [ %8, %3 ]
  %15 = getelementptr inbounds %struct.ScrArea, ptr %14, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = icmp eq ptr %16, null
  br i1 %17, label %10, label %18

18:                                               ; preds = %13, %27
  %19 = phi ptr [ %28, %27 ], [ %16, %13 ]
  %20 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 7
  %21 = load i16, ptr %20, align 4, !tbaa !71
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = tail call fastcc zeroext i8 @wm_area_test_invalid_backbuf(ptr noundef nonnull %14) #11, !range !54
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %19) #12
  br label %27

27:                                               ; preds = %18, %23, %26
  %28 = load ptr, ptr %19, align 8, !tbaa !53
  %29 = icmp eq ptr %28, null
  br i1 %29, label %10, label %18, !llvm.loop !79

30:                                               ; preds = %10, %3
  %31 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !80
  %33 = icmp eq ptr %32, null
  br i1 %33, label %96, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %7, align 8, !tbaa !53
  %36 = icmp eq ptr %35, null
  br i1 %36, label %59, label %40

37:                                               ; preds = %56, %40
  %38 = load ptr, ptr %41, align 8, !tbaa !53
  %39 = icmp eq ptr %38, null
  br i1 %39, label %59, label %40, !llvm.loop !81

40:                                               ; preds = %34, %37
  %41 = phi ptr [ %38, %37 ], [ %35, %34 ]
  %42 = getelementptr inbounds %struct.ScrArea, ptr %41, i64 0, i32 20
  %43 = load ptr, ptr %42, align 8, !tbaa !53
  %44 = icmp eq ptr %43, null
  br i1 %44, label %37, label %45

45:                                               ; preds = %40, %56
  %46 = phi ptr [ %57, %56 ], [ %43, %40 ]
  %47 = getelementptr inbounds %struct.ARegion, ptr %46, i64 0, i32 7
  %48 = load i16, ptr %47, align 4, !tbaa !71
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.ARegion, ptr %46, i64 0, i32 14
  %52 = load i16, ptr %51, align 4, !tbaa !72
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ARegion, ptr %46, i64 0, i32 3
  tail call fastcc void @wm_flush_regions_up(ptr noundef %6, ptr noundef nonnull %55) #11
  br label %56

56:                                               ; preds = %45, %50, %54
  %57 = load ptr, ptr %46, align 8, !tbaa !53
  %58 = icmp eq ptr %57, null
  br i1 %58, label %37, label %45, !llvm.loop !82

59:                                               ; preds = %37, %34
  %60 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 4, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !53
  %62 = icmp eq ptr %61, null
  br i1 %62, label %96, label %66

63:                                               ; preds = %77
  %64 = load ptr, ptr %60, align 8, !tbaa !53
  %65 = icmp eq ptr %64, null
  br i1 %65, label %96, label %81

66:                                               ; preds = %59, %77
  %67 = phi ptr [ %79, %77 ], [ %61, %59 ]
  %68 = getelementptr inbounds %struct.ARegion, ptr %67, i64 0, i32 7
  %69 = load i16, ptr %68, align 4, !tbaa !71
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.ARegion, ptr %67, i64 0, i32 14
  %73 = load i16, ptr %72, align 4, !tbaa !72
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.ARegion, ptr %67, i64 0, i32 3
  tail call fastcc void @wm_flush_regions_up(ptr noundef %6, ptr noundef nonnull %76) #11
  br label %77

77:                                               ; preds = %66, %71, %75
  %78 = getelementptr inbounds %struct.ARegion, ptr %67, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !53
  %80 = icmp eq ptr %79, null
  br i1 %80, label %63, label %66, !llvm.loop !83

81:                                               ; preds = %63, %92
  %82 = phi ptr [ %94, %92 ], [ %64, %63 ]
  %83 = getelementptr inbounds %struct.ARegion, ptr %82, i64 0, i32 7
  %84 = load i16, ptr %83, align 4, !tbaa !71
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.ARegion, ptr %82, i64 0, i32 14
  %88 = load i16, ptr %87, align 4, !tbaa !72
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.ARegion, ptr %82, i64 0, i32 3
  tail call fastcc void @wm_flush_regions_down(ptr noundef %6, ptr noundef nonnull %91) #11
  br label %92

92:                                               ; preds = %81, %86, %90
  %93 = getelementptr inbounds %struct.ARegion, ptr %82, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !53
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %81, !llvm.loop !84

96:                                               ; preds = %92, %59, %63, %30
  %97 = load i32, ptr @wm_method_draw_overlap_all.rect, align 4, !tbaa !85
  %98 = load i32, ptr getelementptr inbounds (%struct.rcti, ptr @wm_method_draw_overlap_all.rect, i64 0, i32 1), align 4, !tbaa !86
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  tail call fastcc void @wm_flush_regions_down(ptr noundef %6, ptr noundef nonnull @wm_method_draw_overlap_all.rect) #11
  store i32 0, ptr getelementptr inbounds (%struct.rcti, ptr @wm_method_draw_overlap_all.rect, i64 0, i32 1), align 4, !tbaa !86
  store i32 0, ptr @wm_method_draw_overlap_all.rect, align 4, !tbaa !85
  br label %101

101:                                              ; preds = %100, %96
  %102 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 12
  %103 = load ptr, ptr %102, align 8, !tbaa !87
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  tail call void @wm_drags_draw(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @wm_method_draw_overlap_all.rect) #12
  br label %106

106:                                              ; preds = %105, %101
  %107 = load ptr, ptr %7, align 8, !tbaa !53
  %108 = icmp eq ptr %107, null
  br i1 %108, label %141, label %109

109:                                              ; preds = %106
  %110 = icmp eq i32 %2, 0
  br label %111

111:                                              ; preds = %109, %138
  %112 = phi ptr [ %107, %109 ], [ %139, %138 ]
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %112) #12
  %113 = getelementptr inbounds %struct.ScrArea, ptr %112, i64 0, i32 20
  %114 = load ptr, ptr %113, align 8, !tbaa !53
  %115 = icmp eq ptr %114, null
  br i1 %115, label %138, label %116

116:                                              ; preds = %111, %135
  %117 = phi ptr [ %136, %135 ], [ %114, %111 ]
  %118 = getelementptr inbounds %struct.ARegion, ptr %117, i64 0, i32 7
  %119 = load i16, ptr %118, align 4, !tbaa !71
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %135, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.ARegion, ptr %117, i64 0, i32 14
  %123 = load i16, ptr %122, align 4, !tbaa !72
  %124 = icmp eq i16 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %121
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %117) #12
  tail call void @ED_region_do_draw(ptr noundef %0, ptr noundef nonnull %117) #12
  tail call fastcc void @wm_paintcursor_draw(ptr noundef %0, ptr noundef nonnull %117) #11
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef null) #12
  br i1 %110, label %135, label %126

126:                                              ; preds = %125
  %127 = getelementptr inbounds %struct.ARegion, ptr %117, i64 0, i32 16
  store i16 2, ptr %127, align 8, !tbaa !62
  br label %135

128:                                              ; preds = %121
  br i1 %110, label %135, label %129

129:                                              ; preds = %128
  %130 = getelementptr inbounds %struct.ARegion, ptr %117, i64 0, i32 16
  %131 = load i16, ptr %130, align 8, !tbaa !62
  switch i16 %131, label %135 [
    i16 2, label %132
    i16 1, label %133
    i16 3, label %134
  ]

132:                                              ; preds = %129
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %117) #12
  tail call void @ED_region_do_draw(ptr noundef %0, ptr noundef nonnull %117) #12
  tail call fastcc void @wm_paintcursor_draw(ptr noundef %0, ptr noundef nonnull %117) #11
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef null) #12
  store i16 3, ptr %130, align 8, !tbaa !62
  br label %135

133:                                              ; preds = %129
  store i16 2, ptr %130, align 8, !tbaa !62
  br label %135

134:                                              ; preds = %129
  store i16 3, ptr %130, align 8, !tbaa !62
  br label %135

135:                                              ; preds = %129, %116, %128, %133, %134, %132, %125, %126
  %136 = load ptr, ptr %117, align 8, !tbaa !53
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %116, !llvm.loop !90

138:                                              ; preds = %135, %111
  tail call fastcc void @wm_area_mark_invalid_backbuf(ptr noundef nonnull %112) #11
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #12
  %139 = load ptr, ptr %112, align 8, !tbaa !53
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %111, !llvm.loop !91

141:                                              ; preds = %138, %106
  %142 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 12
  %143 = load i16, ptr %142, align 2, !tbaa !76
  %144 = icmp eq i16 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  tail call void @ED_screen_draw(ptr noundef %1) #12
  %146 = icmp eq i32 %2, 0
  br i1 %146, label %157, label %147

147:                                              ; preds = %145
  %148 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 17
  store i16 2, ptr %148, align 8, !tbaa !68
  br label %157

149:                                              ; preds = %141
  %150 = icmp eq i32 %2, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %149
  %152 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 17
  %153 = load i16, ptr %152, align 8, !tbaa !68
  switch i16 %153, label %157 [
    i16 2, label %154
    i16 1, label %155
    i16 3, label %156
  ]

154:                                              ; preds = %151
  tail call void @ED_screen_draw(ptr noundef %1) #12
  store i16 3, ptr %152, align 8, !tbaa !68
  br label %157

155:                                              ; preds = %151
  store i16 2, ptr %152, align 8, !tbaa !68
  br label %157

156:                                              ; preds = %151
  store i16 3, ptr %152, align 8, !tbaa !68
  br label %157

157:                                              ; preds = %151, %149, %155, %156, %154, %145, %147
  %158 = load ptr, ptr %31, align 8, !tbaa !53
  %159 = icmp eq ptr %158, null
  br i1 %159, label %173, label %160

160:                                              ; preds = %157, %170
  %161 = phi ptr [ %171, %170 ], [ %158, %157 ]
  %162 = getelementptr inbounds %struct.ARegion, ptr %161, i64 0, i32 7
  %163 = load i16, ptr %162, align 4, !tbaa !71
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.ARegion, ptr %161, i64 0, i32 14
  %167 = load i16, ptr %166, align 4, !tbaa !72
  %168 = icmp eq i16 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %165
  tail call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef nonnull %161) #12
  tail call void @ED_region_do_draw(ptr noundef %0, ptr noundef nonnull %161) #12
  tail call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef null) #12
  br label %170

170:                                              ; preds = %160, %165, %169
  %171 = load ptr, ptr %161, align 8, !tbaa !53
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %160, !llvm.loop !92

173:                                              ; preds = %170, %157
  %174 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 14
  %175 = load i16, ptr %174, align 2, !tbaa !57
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %173
  tail call void @wm_gesture_draw(ptr noundef %1) #12
  br label %178

178:                                              ; preds = %177, %173
  %179 = load ptr, ptr %102, align 8, !tbaa !87
  %180 = icmp eq ptr %179, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %178
  tail call void @wm_drags_draw(ptr noundef %0, ptr noundef %1, ptr noundef null) #12
  br label %182

182:                                              ; preds = %181, %178
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_method_draw_full(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !93 {
  %3 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.bScreen, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %2, %22
  %9 = phi ptr [ %23, %22 ], [ %6, %2 ]
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %9) #12
  %10 = getelementptr inbounds %struct.ScrArea, ptr %9, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %8, %19
  %14 = phi ptr [ %20, %19 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.ARegion, ptr %14, i64 0, i32 7
  %16 = load i16, ptr %15, align 4, !tbaa !71
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %14) #12
  tail call void @ED_region_do_draw(ptr noundef %0, ptr noundef nonnull %14) #12
  tail call fastcc void @wm_paintcursor_draw(ptr noundef %0, ptr noundef nonnull %14) #11
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef null) #12
  br label %19

19:                                               ; preds = %13, %18
  %20 = load ptr, ptr %14, align 8, !tbaa !53
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %13, !llvm.loop !94

22:                                               ; preds = %19, %8
  tail call fastcc void @wm_area_mark_invalid_backbuf(ptr noundef nonnull %9) #11
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #12
  %23 = load ptr, ptr %9, align 8, !tbaa !53
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %8, !llvm.loop !95

25:                                               ; preds = %22, %2
  tail call void @ED_screen_draw(ptr noundef %1) #12
  %26 = getelementptr inbounds %struct.bScreen, ptr %4, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %25, %35
  %30 = phi ptr [ %36, %35 ], [ %27, %25 ]
  %31 = getelementptr inbounds %struct.ARegion, ptr %30, i64 0, i32 7
  %32 = load i16, ptr %31, align 4, !tbaa !71
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  tail call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef nonnull %30) #12
  tail call void @ED_region_do_draw(ptr noundef %0, ptr noundef nonnull %30) #12
  tail call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef null) #12
  br label %35

35:                                               ; preds = %29, %34
  %36 = load ptr, ptr %30, align 8, !tbaa !53
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %29, !llvm.loop !96

38:                                               ; preds = %35, %25
  %39 = getelementptr inbounds %struct.bScreen, ptr %4, i64 0, i32 14
  %40 = load i16, ptr %39, align 2, !tbaa !57
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @wm_gesture_draw(ptr noundef %1) #12
  br label %43

43:                                               ; preds = %42, %38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_method_draw_triple(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !97 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 26
  %7 = load ptr, ptr %6, align 8, !tbaa !98
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  tail call void @glClearColor(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #12
  tail call void @glClear(i32 noundef 16640) #12
  %10 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 18
  %11 = load i16, ptr %10, align 2, !tbaa !99
  %12 = sext i16 %11 to i32
  tail call void @wmSubWindowSet(ptr noundef nonnull %1, i32 noundef %12) #12
  %13 = load ptr, ptr %6, align 8, !tbaa !98
  tail call fastcc void @wm_triple_draw_textures(ptr noundef nonnull %1, ptr noundef %13, float noundef 1.000000e+00) #11
  br label %20

14:                                               ; preds = %2
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %16 = tail call ptr %15(i64 noundef 72, ptr noundef nonnull @.str) #12
  store ptr %16, ptr %6, align 8, !tbaa !98
  %17 = tail call fastcc i32 @wm_triple_gen_textures(ptr noundef nonnull %1, ptr noundef %16) #11, !range !100
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call fastcc void @wm_draw_triple_fail(ptr noundef %0, ptr noundef nonnull %1) #11
  br label %143

20:                                               ; preds = %14, %9
  %21 = load ptr, ptr %6, align 8, !tbaa !98
  %22 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  %24 = icmp eq ptr %23, null
  br i1 %24, label %62, label %25

25:                                               ; preds = %20, %50
  %26 = phi ptr [ %52, %50 ], [ %23, %20 ]
  %27 = phi i32 [ %51, %50 ], [ 0, %20 ]
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %26) #12
  %28 = getelementptr inbounds %struct.ScrArea, ptr %26, i64 0, i32 20
  %29 = load ptr, ptr %28, align 8, !tbaa !53
  %30 = icmp eq ptr %29, null
  br i1 %30, label %50, label %31

31:                                               ; preds = %25, %46
  %32 = phi ptr [ %48, %46 ], [ %29, %25 ]
  %33 = phi i32 [ %47, %46 ], [ %27, %25 ]
  %34 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 7
  %35 = load i16, ptr %34, align 4, !tbaa !71
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 14
  %39 = load i16, ptr %38, align 4, !tbaa !72
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 17
  %43 = load i16, ptr %42, align 2, !tbaa !101
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %32) #12
  tail call void @ED_region_do_draw(ptr noundef %0, ptr noundef nonnull %32) #12
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef null) #12
  br label %46

46:                                               ; preds = %31, %37, %45, %41
  %47 = phi i32 [ 1, %45 ], [ %33, %41 ], [ %33, %37 ], [ %33, %31 ]
  %48 = load ptr, ptr %32, align 8, !tbaa !53
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %31, !llvm.loop !102

50:                                               ; preds = %46, %25
  %51 = phi i32 [ %27, %25 ], [ %47, %46 ]
  tail call fastcc void @wm_area_mark_invalid_backbuf(ptr noundef nonnull %26) #11
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #12
  %52 = load ptr, ptr %26, align 8, !tbaa !53
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %25, !llvm.loop !103

54:                                               ; preds = %50
  %55 = icmp eq i32 %51, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 18
  %58 = load i16, ptr %57, align 2, !tbaa !99
  %59 = sext i16 %58 to i32
  tail call void @wmSubWindowSet(ptr noundef %1, i32 noundef %59) #12
  tail call fastcc void @wm_triple_copy_textures(ptr noundef %1, ptr noundef %21) #11
  br label %60

60:                                               ; preds = %54, %56
  %61 = load ptr, ptr %22, align 8, !tbaa !53
  br label %62

62:                                               ; preds = %20, %60
  %63 = phi ptr [ %61, %60 ], [ null, %20 ]
  %64 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 11
  %65 = load ptr, ptr %64, align 8, !tbaa !104
  %66 = icmp eq ptr %65, null
  br i1 %66, label %96, label %67

67:                                               ; preds = %62
  %68 = icmp eq ptr %63, null
  br i1 %68, label %91, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 19
  br label %74

71:                                               ; preds = %88, %74
  %72 = load ptr, ptr %75, align 8, !tbaa !53
  %73 = icmp eq ptr %72, null
  br i1 %73, label %91, label %74, !llvm.loop !105

74:                                               ; preds = %69, %71
  %75 = phi ptr [ %63, %69 ], [ %72, %71 ]
  %76 = getelementptr inbounds %struct.ScrArea, ptr %75, i64 0, i32 20
  %77 = load ptr, ptr %76, align 8, !tbaa !53
  %78 = icmp eq ptr %77, null
  br i1 %78, label %71, label %79

79:                                               ; preds = %74, %88
  %80 = phi ptr [ %89, %88 ], [ %77, %74 ]
  %81 = getelementptr inbounds %struct.ARegion, ptr %80, i64 0, i32 7
  %82 = load i16, ptr %81, align 4, !tbaa !71
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %79
  %85 = load i16, ptr %70, align 4, !tbaa !106
  %86 = icmp eq i16 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %75) #12
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %80) #12
  tail call void @ED_region_set(ptr noundef %0, ptr noundef nonnull %80) #12
  tail call fastcc void @wm_paintcursor_draw(ptr noundef %0, ptr noundef nonnull %80) #11
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef null) #12
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #12
  br label %88

88:                                               ; preds = %79, %84, %87
  %89 = load ptr, ptr %80, align 8, !tbaa !53
  %90 = icmp eq ptr %89, null
  br i1 %90, label %71, label %79, !llvm.loop !107

91:                                               ; preds = %71, %67
  %92 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 18
  %93 = load i16, ptr %92, align 2, !tbaa !99
  %94 = sext i16 %93 to i32
  tail call void @wmSubWindowSet(ptr noundef %1, i32 noundef %94) #12
  %95 = load ptr, ptr %22, align 8, !tbaa !53
  br label %96

96:                                               ; preds = %91, %62
  %97 = phi ptr [ %95, %91 ], [ %63, %62 ]
  %98 = icmp eq ptr %97, null
  br i1 %98, label %120, label %99

99:                                               ; preds = %96, %117
  %100 = phi ptr [ %118, %117 ], [ %97, %96 ]
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %100) #12
  %101 = getelementptr inbounds %struct.ScrArea, ptr %100, i64 0, i32 20
  %102 = load ptr, ptr %101, align 8, !tbaa !53
  %103 = icmp eq ptr %102, null
  br i1 %103, label %117, label %104

104:                                              ; preds = %99, %114
  %105 = phi ptr [ %115, %114 ], [ %102, %99 ]
  %106 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 7
  %107 = load i16, ptr %106, align 4, !tbaa !71
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 17
  %111 = load i16, ptr %110, align 2, !tbaa !101
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %105) #12
  tail call void @ED_region_do_draw(ptr noundef %0, ptr noundef nonnull %105) #12
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef null) #12
  tail call fastcc void @wm_draw_region_blend(ptr noundef %1, ptr noundef nonnull %105) #11
  br label %114

114:                                              ; preds = %104, %109, %113
  %115 = load ptr, ptr %105, align 8, !tbaa !53
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %104, !llvm.loop !108

117:                                              ; preds = %114, %99
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #12
  %118 = load ptr, ptr %100, align 8, !tbaa !53
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %99, !llvm.loop !109

120:                                              ; preds = %117, %96
  tail call void @ED_screen_draw(ptr noundef %1) #12
  %121 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 4
  %122 = load ptr, ptr %121, align 8, !tbaa !53
  %123 = icmp eq ptr %122, null
  br i1 %123, label %133, label %124

124:                                              ; preds = %120, %130
  %125 = phi ptr [ %131, %130 ], [ %122, %120 ]
  %126 = getelementptr inbounds %struct.ARegion, ptr %125, i64 0, i32 7
  %127 = load i16, ptr %126, align 4, !tbaa !71
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %124
  tail call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef nonnull %125) #12
  tail call void @ED_region_do_draw(ptr noundef %0, ptr noundef nonnull %125) #12
  tail call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef null) #12
  br label %130

130:                                              ; preds = %124, %129
  %131 = load ptr, ptr %125, align 8, !tbaa !53
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %124, !llvm.loop !110

133:                                              ; preds = %130, %120
  %134 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 31
  %135 = load ptr, ptr %134, align 8, !tbaa !111
  %136 = icmp eq ptr %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %133
  tail call void @wm_gesture_draw(ptr noundef nonnull %1) #12
  br label %138

138:                                              ; preds = %137, %133
  %139 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 12
  %140 = load ptr, ptr %139, align 8, !tbaa !87
  %141 = icmp eq ptr %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %138
  tail call void @wm_drags_draw(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null) #12
  br label %143

143:                                              ; preds = %138, %142, %19
  ret void
}

; Function Attrs: optsize
declare void @wm_window_swap_buffers(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_draw_triple_free(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !112 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 26
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wmDrawTriple, ptr %3, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !113
  %8 = getelementptr inbounds %struct.wmDrawTriple, ptr %3, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !115
  %10 = mul nsw i32 %9, %7
  tail call void @glDeleteTextures(i32 noundef %10, ptr noundef nonnull %3) #12
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %11(ptr noundef nonnull %3) #12
  store ptr null, ptr %2, align 8, !tbaa !98
  br label %12

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_draw_region_clear(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @wm_automatic_draw_method(ptr noundef %0) #11, !range !47
  switch i32 %3, label %8 [
    i32 4, label %4
    i32 1, label %4
  ]

4:                                                ; preds = %2, %2
  %5 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  tail call fastcc void @wm_flush_regions_down(ptr noundef %6, ptr noundef nonnull %7) #11
  br label %8

8:                                                ; preds = %2, %4
  %9 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.bScreen, ptr %10, i64 0, i32 12
  store i16 1, ptr %11, align 2, !tbaa !76
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_flush_regions_down(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !116 {
  %3 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %9

6:                                                ; preds = %23, %9
  %7 = load ptr, ptr %10, align 8, !tbaa !53
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9, !llvm.loop !117

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %11 = getelementptr inbounds %struct.ScrArea, ptr %10, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = icmp eq ptr %12, null
  br i1 %13, label %6, label %14

14:                                               ; preds = %9, %23
  %15 = phi ptr [ %24, %23 ], [ %12, %9 ]
  %16 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 3
  %17 = tail call zeroext i8 @BLI_rcti_isect(ptr noundef %1, ptr noundef nonnull %16, ptr noundef null) #12
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 14
  store i16 1, ptr %20, align 4, !tbaa !72
  %21 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %22 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 16
  store i16 0, ptr %22, align 8, !tbaa !62
  br label %23

23:                                               ; preds = %14, %19
  %24 = load ptr, ptr %15, align 8, !tbaa !53
  %25 = icmp eq ptr %24, null
  br i1 %25, label %6, label %14, !llvm.loop !118

26:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_redraw_windows(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #12
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #12
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #12
  tail call void @wm_draw_update(ptr noundef %0) #11
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %2) #12
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %3) #12
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %4) #12
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_wm_area_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GPU_type_matches(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GPU_color_depth() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_region_test_render_do_draw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !119 {
  %4 = alloca %struct.rcti, align 4
  %5 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !120
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %8, label %33

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %10 = load ptr, ptr %9, align 8, !tbaa !122
  %11 = icmp eq ptr %10, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %10, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !123
  %15 = icmp eq ptr %14, null
  br i1 %15, label %33, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.RenderEngine, ptr %14, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !125
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !127
  %24 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %25 = load ptr, ptr %24, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %26 = call zeroext i8 @ED_view3d_calc_render_border(ptr noundef %23, ptr noundef %25, ptr noundef nonnull %2, ptr noundef nonnull %4) #12
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  call void @ED_region_tag_redraw_partial(ptr noundef nonnull %2, ptr noundef nonnull %4) #12
  br label %30

29:                                               ; preds = %21
  call void @ED_region_tag_redraw(ptr noundef nonnull %2) #12
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i32, ptr %17, align 8, !tbaa !125
  %32 = and i32 %31, -5
  store i32 %32, ptr %17, align 8, !tbaa !125
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  br label %33

33:                                               ; preds = %8, %12, %16, %30, %3
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_calc_render_border(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_tag_redraw_partial(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @wm_area_test_invalid_backbuf(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !129 {
  %2 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 8
  %3 = load i8, ptr %2, align 8, !tbaa !120
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !128
  %8 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 28
  %9 = load i16, ptr %8, align 8, !tbaa !130
  %10 = trunc i16 %9 to i8
  %11 = lshr i8 %10, 3
  %12 = and i8 %11, 1
  br label %13

13:                                               ; preds = %1, %5
  %14 = phi i8 [ %12, %5 ], [ 1, %1 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_flush_regions_up(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !132 {
  %3 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2, %15
  %7 = phi ptr [ %16, %15 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3
  %9 = tail call zeroext i8 @BLI_rcti_isect(ptr noundef %1, ptr noundef nonnull %8, ptr noundef null) #12
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 14
  store i16 1, ptr %12, align 4, !tbaa !72
  %13 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %14 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 16
  store i16 0, ptr %14, align 8, !tbaa !62
  br label %15

15:                                               ; preds = %6, %11
  %16 = load ptr, ptr %7, align 8, !tbaa !53
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !133

18:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: optsize
declare void @wm_drags_draw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_do_draw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_paintcursor_draw(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !134 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_wm_manager(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !104
  %8 = icmp eq ptr %7, null
  br i1 %8, label %71, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @CTX_wm_window(ptr noundef %0) #12
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 7
  %12 = load i16, ptr %11, align 4, !tbaa !71
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %71, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.wmWindow, ptr %10, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = getelementptr inbounds %struct.bScreen, ptr %16, i64 0, i32 19
  %18 = load i16, ptr %17, align 4, !tbaa !106
  %19 = icmp eq i16 %18, %12
  br i1 %19, label %20, label %71

20:                                               ; preds = %14
  %21 = load ptr, ptr %6, align 8, !tbaa !53
  %22 = icmp eq ptr %21, null
  br i1 %22, label %71, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.wmWindow, ptr %10, i64 0, i32 16
  %25 = getelementptr inbounds %struct.wmWindow, ptr %10, i64 0, i32 21
  br label %26

26:                                               ; preds = %23, %68
  %27 = phi ptr [ %21, %23 ], [ %69, %68 ]
  %28 = getelementptr inbounds %struct.wmPaintCursor, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !135
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = call i32 %29(ptr noundef %0) #12
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %68, label %34

34:                                               ; preds = %31, %26
  %35 = call ptr @CTX_wm_region(ptr noundef %0) #12
  %36 = load i16, ptr %24, align 4, !tbaa !137
  %37 = and i16 %36, -2
  %38 = icmp eq i16 %37, 2
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !tbaa !138
  call void @wm_get_cursor_position(ptr noundef nonnull %10, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %40 = getelementptr inbounds %struct.wmPaintCursor, ptr %27, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !139
  %42 = load i32, ptr %3, align 4, !tbaa !138
  %43 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 3
  %44 = load i32, ptr %43, align 8, !tbaa !140
  %45 = sub nsw i32 %42, %44
  %46 = load i32, ptr %4, align 4, !tbaa !138
  %47 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 3, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !141
  %49 = sub nsw i32 %46, %48
  %50 = getelementptr inbounds %struct.wmPaintCursor, ptr %27, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !142
  call void %41(ptr noundef %0, i32 noundef %45, i32 noundef %49, ptr noundef %51) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %68

52:                                               ; preds = %34
  %53 = getelementptr inbounds %struct.wmPaintCursor, ptr %27, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !139
  %55 = load ptr, ptr %25, align 8, !tbaa !143
  %56 = getelementptr inbounds %struct.wmEvent, ptr %55, i64 0, i32 4
  %57 = load i32, ptr %56, align 4, !tbaa !144
  %58 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 3
  %59 = load i32, ptr %58, align 8, !tbaa !140
  %60 = sub nsw i32 %57, %59
  %61 = getelementptr inbounds %struct.wmEvent, ptr %55, i64 0, i32 5
  %62 = load i32, ptr %61, align 8, !tbaa !147
  %63 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 3, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !141
  %65 = sub nsw i32 %62, %64
  %66 = getelementptr inbounds %struct.wmPaintCursor, ptr %27, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !142
  call void %54(ptr noundef %0, i32 noundef %60, i32 noundef %65, ptr noundef %67) #12
  br label %68

68:                                               ; preds = %39, %52, %31
  %69 = load ptr, ptr %27, align 8, !tbaa !53
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %26, !llvm.loop !148

71:                                               ; preds = %68, %20, %9, %14, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @wm_area_mark_invalid_backbuf(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !149 {
  %2 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 8
  %3 = load i8, ptr %2, align 8, !tbaa !120
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !128
  %8 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 28
  %9 = load i16, ptr %8, align 8, !tbaa !130
  %10 = or i16 %9, 8
  store i16 %10, ptr %8, align 8, !tbaa !130
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @ED_screen_draw(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_wm_menu_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_gesture_draw(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_isect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @wm_get_cursor_position(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glClearColor(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glClear(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wmSubWindowSet(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_triple_draw_textures(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #0 !PGOFuncName !150 {
  %4 = tail call i32 @WM_window_pixels_x(ptr noundef %0) #12
  %5 = tail call i32 @WM_window_pixels_y(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !151
  tail call void @glEnable(i32 noundef %7) #12
  %8 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !115
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %100

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !113
  br label %14

14:                                               ; preds = %11, %91
  %15 = phi i32 [ %9, %11 ], [ %92, %91 ]
  %16 = phi i32 [ %13, %11 ], [ %93, %91 ]
  %17 = phi i64 [ 0, %11 ], [ %97, %91 ]
  %18 = phi i32 [ 0, %11 ], [ %96, %91 ]
  %19 = icmp sgt i32 %16, 0
  br i1 %19, label %20, label %91

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 2, i64 %17
  %22 = sub nsw i32 %5, %18
  %23 = sitofp i32 %18 to float
  %24 = trunc i64 %17 to i32
  br label %25

25:                                               ; preds = %20, %63
  %26 = phi i64 [ 0, %20 ], [ %85, %63 ]
  %27 = phi i32 [ %16, %20 ], [ %86, %63 ]
  %28 = phi i32 [ 0, %20 ], [ %84, %63 ]
  %29 = add nsw i32 %27, -1
  %30 = zext i32 %29 to i64
  %31 = icmp eq i64 %26, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = sub nsw i32 %4, %28
  br label %37

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 1, i64 %26
  %36 = load i32, ptr %35, align 4, !tbaa !138
  br label %37

37:                                               ; preds = %34, %32
  %38 = phi i32 [ %33, %32 ], [ %36, %34 ]
  %39 = load i32, ptr %8, align 4, !tbaa !115
  %40 = add nsw i32 %39, -1
  %41 = zext i32 %40 to i64
  %42 = icmp eq i64 %17, %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = load i32, ptr %21, align 4, !tbaa !138
  br label %45

45:                                               ; preds = %37, %43
  %46 = phi i32 [ %44, %43 ], [ %22, %37 ]
  %47 = insertelement <2 x i32> poison, i32 %38, i64 0
  %48 = insertelement <2 x i32> %47, i32 %46, i64 1
  %49 = sitofp <2 x i32> %48 to <2 x float>
  %50 = load i32, ptr %6, align 4, !tbaa !151
  %51 = icmp eq i32 %50, 3553
  %52 = shufflevector <2 x float> %49, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %53 = shufflevector <4 x float> %52, <4 x float> <float poison, float poison, float 3.750000e-01, float 3.750000e-01>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br i1 %51, label %54, label %63

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 1, i64 %26
  %56 = load i32, ptr %55, align 4, !tbaa !138
  %57 = load i32, ptr %21, align 4, !tbaa !138
  %58 = insertelement <2 x i32> poison, i32 %56, i64 0
  %59 = insertelement <2 x i32> %58, i32 %57, i64 1
  %60 = sitofp <2 x i32> %59 to <2 x float>
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %62 = fdiv <4 x float> %53, %61
  br label %63

63:                                               ; preds = %54, %45
  %64 = phi <4 x float> [ %62, %54 ], [ %53, %45 ]
  %65 = mul nsw i32 %27, %24
  %66 = trunc i64 %26 to i32
  %67 = add nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [9 x i32], ptr %1, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !138
  tail call void @glBindTexture(i32 noundef %50, i32 noundef %70) #12
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef %2) #12
  tail call void @glBegin(i32 noundef 7) #12
  %71 = extractelement <4 x float> %64, i64 2
  %72 = extractelement <4 x float> %64, i64 3
  tail call void @glTexCoord2f(float noundef %71, float noundef %72) #12
  %73 = sitofp i32 %28 to float
  tail call void @glVertex2f(float noundef %73, float noundef %23) #12
  %74 = extractelement <4 x float> %64, i64 0
  %75 = fadd float %74, %71
  tail call void @glTexCoord2f(float noundef %75, float noundef %72) #12
  %76 = add nsw i32 %38, %28
  %77 = sitofp i32 %76 to float
  tail call void @glVertex2f(float noundef %77, float noundef %23) #12
  %78 = extractelement <4 x float> %64, i64 1
  %79 = fadd float %78, %72
  tail call void @glTexCoord2f(float noundef %75, float noundef %79) #12
  %80 = add nsw i32 %46, %18
  %81 = sitofp i32 %80 to float
  tail call void @glVertex2f(float noundef %77, float noundef %81) #12
  tail call void @glTexCoord2f(float noundef %71, float noundef %79) #12
  tail call void @glVertex2f(float noundef %73, float noundef %81) #12
  tail call void @glEnd() #12
  %82 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 1, i64 %26
  %83 = load i32, ptr %82, align 4, !tbaa !138
  %84 = add nsw i32 %83, %28
  %85 = add nuw nsw i64 %26, 1
  %86 = load i32, ptr %12, align 4, !tbaa !113
  %87 = sext i32 %86 to i64
  %88 = icmp slt i64 %85, %87
  br i1 %88, label %25, label %89, !llvm.loop !152

89:                                               ; preds = %63
  %90 = load i32, ptr %8, align 4, !tbaa !115
  br label %91

91:                                               ; preds = %89, %14
  %92 = phi i32 [ %90, %89 ], [ %15, %14 ]
  %93 = phi i32 [ %86, %89 ], [ %16, %14 ]
  %94 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 2, i64 %17
  %95 = load i32, ptr %94, align 4, !tbaa !138
  %96 = add nsw i32 %95, %18
  %97 = add nuw nsw i64 %17, 1
  %98 = sext i32 %92 to i64
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %14, label %100, !llvm.loop !153

100:                                              ; preds = %91, %3
  %101 = load i32, ptr %6, align 4, !tbaa !151
  tail call void @glBindTexture(i32 noundef %101, i32 noundef 0) #12
  %102 = load i32, ptr %6, align 4, !tbaa !151
  tail call void @glDisable(i32 noundef %102) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @wm_triple_gen_textures(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !154 {
  %3 = tail call i32 @WM_window_pixels_x(ptr noundef %0) #12
  %4 = tail call i32 @WM_window_pixels_y(ptr noundef %0) #12
  %5 = load i8, ptr @__GLEW_ARB_texture_rectangle, align 1, !tbaa !155
  %6 = icmp ne i8 %5, 0
  %7 = load i8, ptr @__GLEW_NV_texture_rectangle, align 1
  %8 = icmp ne i8 %7, 0
  %9 = select i1 %6, i1 true, i1 %8
  %10 = load i8, ptr @__GLEW_EXT_texture_rectangle, align 1
  %11 = icmp ne i8 %10, 0
  %12 = select i1 %9, i1 true, i1 %11
  %13 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 1
  br i1 %12, label %14, label %19

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 5
  store i32 34037, ptr %15, align 4, !tbaa !151
  %16 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 3
  store i32 1, ptr %16, align 4, !tbaa !113
  %17 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 4
  store i32 1, ptr %17, align 4, !tbaa !115
  store i32 %3, ptr %13, align 4, !tbaa !138
  %18 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 2
  store i32 %4, ptr %18, align 4, !tbaa !138
  br label %30

19:                                               ; preds = %2
  %20 = tail call i32 @GPU_non_power_of_two_support() #12
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 5
  store i32 3553, ptr %22, align 4, !tbaa !151
  %23 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 3
  %24 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 4
  %25 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 2
  br i1 %21, label %27, label %26

26:                                               ; preds = %19
  store i32 1, ptr %23, align 4, !tbaa !113
  store i32 1, ptr %24, align 4, !tbaa !115
  store i32 %3, ptr %13, align 4, !tbaa !138
  store i32 %4, ptr %25, align 4, !tbaa !138
  br label %30

27:                                               ; preds = %19
  store i32 0, ptr %23, align 4, !tbaa !113
  store i32 0, ptr %24, align 4, !tbaa !115
  tail call fastcc void @split_width(i32 noundef %3, i32 noundef 3, ptr noundef nonnull %13, ptr noundef nonnull %23) #11
  tail call fastcc void @split_width(i32 noundef %4, i32 noundef 3, ptr noundef nonnull %25, ptr noundef nonnull %24) #11
  %28 = load i32, ptr %23, align 4, !tbaa !113
  %29 = load i32, ptr %24, align 4, !tbaa !115
  br label %30

30:                                               ; preds = %26, %27, %14
  %31 = phi i32 [ 1, %26 ], [ %29, %27 ], [ 1, %14 ]
  %32 = phi i32 [ 1, %26 ], [ %28, %27 ], [ 1, %14 ]
  %33 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 3
  %34 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 4
  %35 = mul nsw i32 %31, %32
  tail call void @glGenTextures(i32 noundef %35, ptr noundef nonnull %1) #12
  %36 = load i32, ptr %1, align 4, !tbaa !138
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %93, label %38

38:                                               ; preds = %30
  %39 = load i32, ptr %34, align 4, !tbaa !115
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %96

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 5
  %43 = load i32, ptr %33, align 4, !tbaa !113
  br label %44

44:                                               ; preds = %41, %87
  %45 = phi i32 [ %39, %41 ], [ %88, %87 ]
  %46 = phi i32 [ %43, %41 ], [ %89, %87 ]
  %47 = phi i64 [ 0, %41 ], [ %90, %87 ]
  %48 = icmp sgt i32 %46, 0
  br i1 %48, label %49, label %87

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 2, i64 %47
  %51 = trunc i64 %47 to i32
  br label %57

52:                                               ; preds = %68
  %53 = add nuw nsw i64 %58, 1
  %54 = load i32, ptr %33, align 4, !tbaa !113
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %57, label %85, !llvm.loop !156

57:                                               ; preds = %49, %52
  %58 = phi i64 [ 0, %49 ], [ %53, %52 ]
  %59 = tail call i32 @GPU_max_texture_size() #12
  %60 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 1, i64 %58
  %61 = load i32, ptr %60, align 4, !tbaa !138
  %62 = icmp sgt i32 %61, %59
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load i32, ptr %50, align 4, !tbaa !138
  %65 = icmp sgt i32 %64, %59
  br i1 %65, label %66, label %68

66:                                               ; preds = %63, %57
  %67 = load i32, ptr %42, align 4, !tbaa !151
  tail call void @glBindTexture(i32 noundef %67, i32 noundef 0) #12
  br label %93

68:                                               ; preds = %63
  %69 = load i32, ptr %42, align 4, !tbaa !151
  %70 = load i32, ptr %33, align 4, !tbaa !113
  %71 = mul nsw i32 %70, %51
  %72 = trunc i64 %58 to i32
  %73 = add nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [9 x i32], ptr %1, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !138
  tail call void @glBindTexture(i32 noundef %69, i32 noundef %76) #12
  %77 = load i32, ptr %42, align 4, !tbaa !151
  %78 = load i32, ptr %60, align 4, !tbaa !138
  %79 = load i32, ptr %50, align 4, !tbaa !138
  tail call void @glTexImage2D(i32 noundef %77, i32 noundef 0, i32 noundef 32849, i32 noundef %78, i32 noundef %79, i32 noundef 0, i32 noundef 6407, i32 noundef 5121, ptr noundef null) #12
  %80 = load i32, ptr %42, align 4, !tbaa !151
  tail call void @glTexParameteri(i32 noundef %80, i32 noundef 10241, i32 noundef 9728) #12
  %81 = load i32, ptr %42, align 4, !tbaa !151
  tail call void @glTexParameteri(i32 noundef %81, i32 noundef 10240, i32 noundef 9728) #12
  %82 = load i32, ptr %42, align 4, !tbaa !151
  tail call void @glBindTexture(i32 noundef %82, i32 noundef 0) #12
  %83 = tail call i32 @glGetError() #12
  %84 = icmp eq i32 %83, 1285
  br i1 %84, label %93, label %52

85:                                               ; preds = %52
  %86 = load i32, ptr %34, align 4, !tbaa !115
  br label %87

87:                                               ; preds = %85, %44
  %88 = phi i32 [ %86, %85 ], [ %45, %44 ]
  %89 = phi i32 [ %54, %85 ], [ %46, %44 ]
  %90 = add nuw nsw i64 %47, 1
  %91 = sext i32 %88 to i64
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %44, label %96, !llvm.loop !157

93:                                               ; preds = %68, %30, %66
  %94 = phi ptr [ @str.5, %66 ], [ @str, %30 ], [ @str.4, %68 ]
  %95 = tail call i32 @puts(ptr nonnull dereferenceable(1) %94)
  br label %96

96:                                               ; preds = %87, %93, %38
  %97 = phi i32 [ 1, %38 ], [ 0, %93 ], [ 1, %87 ]
  ret i32 %97
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_draw_triple_fail(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !158 {
  tail call void @wm_draw_window_clear(ptr noundef %1) #11
  %3 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 25
  store i32 1, ptr %3, align 4, !tbaa !56
  tail call fastcc void @wm_method_draw_overlap_all(ptr noundef %0, ptr noundef %1, i32 noundef 0) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_triple_copy_textures(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !159 {
  %3 = tail call i32 @WM_window_pixels_x(ptr noundef %0) #12
  %4 = tail call i32 @WM_window_pixels_y(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !115
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %70

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 3
  %10 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 5
  %11 = load i32, ptr %9, align 4, !tbaa !113
  br label %12

12:                                               ; preds = %8, %61
  %13 = phi i32 [ %6, %8 ], [ %62, %61 ]
  %14 = phi i32 [ %11, %8 ], [ %63, %61 ]
  %15 = phi i64 [ 0, %8 ], [ %67, %61 ]
  %16 = phi i32 [ 0, %8 ], [ %66, %61 ]
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 2, i64 %15
  %20 = sub nsw i32 %4, %16
  %21 = trunc i64 %15 to i32
  br label %22

22:                                               ; preds = %18, %42
  %23 = phi i64 [ 0, %18 ], [ %55, %42 ]
  %24 = phi i32 [ %14, %18 ], [ %56, %42 ]
  %25 = phi i32 [ 0, %18 ], [ %54, %42 ]
  %26 = add nsw i32 %24, -1
  %27 = zext i32 %26 to i64
  %28 = icmp eq i64 %23, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = sub nsw i32 %3, %25
  br label %34

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 1, i64 %23
  %33 = load i32, ptr %32, align 4, !tbaa !138
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i32 [ %30, %29 ], [ %33, %31 ]
  %36 = load i32, ptr %5, align 4, !tbaa !115
  %37 = add nsw i32 %36, -1
  %38 = zext i32 %37 to i64
  %39 = icmp eq i64 %15, %38
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = load i32, ptr %19, align 4, !tbaa !138
  br label %42

42:                                               ; preds = %34, %40
  %43 = phi i32 [ %41, %40 ], [ %20, %34 ]
  %44 = load i32, ptr %10, align 4, !tbaa !151
  %45 = mul nsw i32 %24, %21
  %46 = trunc i64 %23 to i32
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [9 x i32], ptr %1, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !138
  tail call void @glBindTexture(i32 noundef %44, i32 noundef %50) #12
  %51 = load i32, ptr %10, align 4, !tbaa !151
  tail call void @glCopyTexSubImage2D(i32 noundef %51, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %25, i32 noundef %16, i32 noundef %35, i32 noundef %43) #12
  %52 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 1, i64 %23
  %53 = load i32, ptr %52, align 4, !tbaa !138
  %54 = add nsw i32 %53, %25
  %55 = add nuw nsw i64 %23, 1
  %56 = load i32, ptr %9, align 4, !tbaa !113
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %55, %57
  br i1 %58, label %22, label %59, !llvm.loop !160

59:                                               ; preds = %42
  %60 = load i32, ptr %5, align 4, !tbaa !115
  br label %61

61:                                               ; preds = %59, %12
  %62 = phi i32 [ %60, %59 ], [ %13, %12 ]
  %63 = phi i32 [ %56, %59 ], [ %14, %12 ]
  %64 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 2, i64 %15
  %65 = load i32, ptr %64, align 4, !tbaa !138
  %66 = add nsw i32 %65, %16
  %67 = add nuw nsw i64 %15, 1
  %68 = sext i32 %62 to i64
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %12, label %70, !llvm.loop !161

70:                                               ; preds = %61, %2
  %71 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 5
  %72 = load i32, ptr %71, align 4, !tbaa !151
  tail call void @glBindTexture(i32 noundef %72, i32 noundef 0) #12
  ret void
}

; Function Attrs: optsize
declare void @ED_region_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_draw_region_blend(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !162 {
  %3 = tail call float @ED_region_blend_factor(ptr noundef %1) #12
  %4 = fcmp olt float %3, 1.000000e+00
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.bScreen, ptr %7, i64 0, i32 18
  %9 = load i16, ptr %8, align 2, !tbaa !99
  %10 = sext i16 %9 to i32
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  tail call void @wmSubWindowScissorSet(ptr noundef %0, i32 noundef %10, ptr noundef nonnull %11, i8 noundef zeroext 1) #12
  tail call void @glEnable(i32 noundef 3042) #12
  %12 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 26
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = fsub float 1.000000e+00, %3
  tail call fastcc void @wm_triple_draw_textures(ptr noundef %0, ptr noundef %13, float noundef %14) #11
  tail call void @glDisable(i32 noundef 3042) #12
  br label %15

15:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: optsize
declare i32 @WM_window_pixels_x(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @WM_window_pixels_y(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glBindTexture(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glTexCoord2f(float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #1

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GPU_non_power_of_two_support() local_unnamed_addr #1

; Function Attrs: nofree noinline nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @split_width(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #6 !PGOFuncName !163 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %6 = tail call fastcc i32 @is_power_of_2_i(i32 noundef %0) #11, !range !100
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  store i32 %0, ptr %2, align 4, !tbaa !138
  %9 = load i32, ptr %3, align 4, !tbaa !138
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %3, align 4, !tbaa !138
  br label %45

11:                                               ; preds = %4
  %12 = icmp eq i32 %1, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = tail call fastcc i32 @power_of_2_max_i(i32 noundef %0) #11
  store i32 %14, ptr %2, align 4, !tbaa !138
  %15 = load i32, ptr %3, align 4, !tbaa !138
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %3, align 4, !tbaa !138
  br label %45

17:                                               ; preds = %11
  %18 = tail call fastcc i32 @power_of_2_min_i(i32 noundef %0) #11
  store i32 %18, ptr %2, align 4, !tbaa !138
  %19 = load i32, ptr %3, align 4, !tbaa !138
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %3, align 4, !tbaa !138
  store i32 %20, ptr %5, align 4, !tbaa !138
  %21 = load i32, ptr %2, align 4, !tbaa !138
  %22 = sub nsw i32 %0, %21
  %23 = add nsw i32 %1, -1
  %24 = getelementptr inbounds i32, ptr %2, i64 1
  call fastcc void @split_width(i32 noundef %22, i32 noundef %23, ptr noundef nonnull %24, ptr noundef nonnull %5) #11
  %25 = icmp sgt i32 %1, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %17
  %27 = zext nneg i32 %1 to i64
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi i64 [ 0, %26 ], [ %34, %28 ]
  %30 = phi i32 [ 0, %26 ], [ %33, %28 ]
  %31 = getelementptr inbounds i32, ptr %2, i64 %29
  %32 = load i32, ptr %31, align 4, !tbaa !138
  %33 = add nsw i32 %32, %30
  %34 = add nuw nsw i64 %29, 1
  %35 = icmp eq i64 %34, %27
  br i1 %35, label %36, label %28, !llvm.loop !164

36:                                               ; preds = %28, %17
  %37 = phi i32 [ 0, %17 ], [ %33, %28 ]
  %38 = tail call fastcc i32 @power_of_2_max_i(i32 noundef %0) #11
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  store i32 %38, ptr %2, align 4, !tbaa !138
  %41 = zext nneg i32 %23 to i64
  %42 = shl nuw nsw i64 %41, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %24, i8 0, i64 %42, i1 false)
  br label %45

43:                                               ; preds = %36
  %44 = load i32, ptr %5, align 4, !tbaa !138
  store i32 %44, ptr %3, align 4, !tbaa !138
  br label %45

45:                                               ; preds = %13, %43, %40, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: optsize
declare void @glGenTextures(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GPU_max_texture_size() local_unnamed_addr #1

; Function Attrs: optsize
declare void @glTexImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glTexParameteri(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @glGetError() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @is_power_of_2_i(i32 noundef %0) unnamed_addr #7 !PGOFuncName !165 {
  %2 = tail call i32 @llvm.ctpop.i32(i32 %0), !range !166
  %3 = icmp ult i32 %2, 2
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i32 @power_of_2_max_i(i32 noundef %0) unnamed_addr #8 !PGOFuncName !167 {
  %2 = tail call fastcc i32 @is_power_of_2_i(i32 noundef %0) #11, !range !100
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %1, %4
  %5 = phi i32 [ %7, %4 ], [ %0, %1 ]
  %6 = add nsw i32 %5, -1
  %7 = and i32 %6, %5
  %8 = tail call fastcc i32 @is_power_of_2_i(i32 noundef %7) #11, !range !100
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %4, label %10, !llvm.loop !168

10:                                               ; preds = %4
  %11 = shl nsw i32 %7, 1
  br label %12

12:                                               ; preds = %1, %10
  %13 = phi i32 [ %11, %10 ], [ %0, %1 ]
  ret i32 %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc noundef i32 @power_of_2_min_i(i32 noundef %0) unnamed_addr #8 !PGOFuncName !169 {
  %2 = tail call fastcc i32 @is_power_of_2_i(i32 noundef %0) #11, !range !100
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %1, %4
  %5 = phi i32 [ %7, %4 ], [ %0, %1 ]
  %6 = add nsw i32 %5, -1
  %7 = and i32 %6, %5
  %8 = tail call fastcc i32 @is_power_of_2_i(i32 noundef %7) #11, !range !100
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %4, label %10, !llvm.loop !170

10:                                               ; preds = %4, %1
  %11 = phi i32 [ %0, %1 ], [ %7, %4 ]
  ret i32 %11
}

; Function Attrs: optsize
declare void @glCopyTexSubImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @ED_region_blend_factor(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wmSubWindowScissorSet(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glDeleteTextures(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree noinline nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind }

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
!34 = !{!35, !40, i64 160}
!35 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !40, i64 128, !39, i64 132, !39, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !40, i64 160, !40, i64 164, !36, i64 168, !41, i64 176, !41, i64 192, !41, i64 208, !41, i64 224, !41, i64 240}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!"ListBase", !36, i64 0, !36, i64 8}
!42 = !{!43, !39, i64 8908}
!43 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !40, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !39, i64 8496, !39, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !41, i64 8536, !41, i64 8552, !41, i64 8568, !41, i64 8584, !41, i64 8600, !41, i64 8616, !41, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !40, i64 8912, !40, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !44, i64 8956, !44, i64 8960, !40, i64 8964, !39, i64 8968, !39, i64 8970, !44, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !45, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !40, i64 10896, !40, i64 10900, !44, i64 10904, !44, i64 10908, !40, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !46, i64 10928}
!44 = !{!"float", !37, i64 0}
!45 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!46 = !{!"WalkNavigation", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !39, i64 24, !37, i64 26}
!47 = !{i32 4, i32 3}
!48 = !{!"wm_draw.c:wm_automatic_draw_method"}
!49 = !{!35, !36, i64 24}
!50 = !{!51, !39, i64 220}
!51 = !{!"bScreen", !52, i64 0, !41, i64 120, !41, i64 136, !41, i64 152, !41, i64 168, !36, i64 184, !36, i64 192, !40, i64 200, !40, i64 204, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !36, i64 232, !36, i64 240}
!52 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!53 = !{!36, !36, i64 0}
!54 = !{i8 0, i8 2}
!55 = !{!51, !39, i64 216}
!56 = !{!35, !40, i64 164}
!57 = !{!51, !39, i64 218}
!58 = !{!51, !39, i64 222}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = distinct !{!61, !60}
!62 = !{!63, !39, i64 232}
!63 = !{!"ARegion", !36, i64 0, !36, i64 8, !64, i64 16, !66, i64 176, !66, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !44, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !36, i64 240, !41, i64 248, !41, i64 264, !41, i64 280, !41, i64 296, !41, i64 312, !41, i64 328, !41, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!64 = !{!"View2D", !65, i64 0, !65, i64 16, !66, i64 32, !66, i64 48, !66, i64 64, !37, i64 80, !37, i64 88, !44, i64 96, !44, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !36, i64 128, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!65 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!66 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!67 = distinct !{!67, !60}
!68 = !{!51, !39, i64 224}
!69 = !{!"wm_draw.c:wm_draw_update_test_window"}
!70 = !{!63, !39, i64 230}
!71 = !{!63, !39, i64 212}
!72 = !{!63, !39, i64 228}
!73 = distinct !{!73, !60}
!74 = distinct !{!74, !60}
!75 = distinct !{!75, !60}
!76 = !{!51, !39, i64 214}
!77 = !{!"wm_draw.c:wm_method_draw_overlap_all"}
!78 = distinct !{!78, !60}
!79 = distinct !{!79, !60}
!80 = !{!51, !36, i64 168}
!81 = distinct !{!81, !60}
!82 = distinct !{!82, !60}
!83 = distinct !{!83, !60}
!84 = distinct !{!84, !60}
!85 = !{!66, !40, i64 0}
!86 = !{!66, !40, i64 4}
!87 = !{!88, !36, i64 264}
!88 = !{!"wmWindowManager", !52, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !40, i64 152, !39, i64 156, !39, i64 158, !41, i64 160, !41, i64 176, !89, i64 192, !41, i64 232, !41, i64 248, !41, i64 264, !41, i64 280, !36, i64 296, !36, i64 304, !36, i64 312, !41, i64 320, !36, i64 336, !37, i64 344, !37, i64 345}
!89 = !{!"ReportList", !41, i64 0, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32}
!90 = distinct !{!90, !60}
!91 = distinct !{!91, !60}
!92 = distinct !{!92, !60}
!93 = !{!"wm_draw.c:wm_method_draw_full"}
!94 = distinct !{!94, !60}
!95 = distinct !{!95, !60}
!96 = distinct !{!96, !60}
!97 = !{!"wm_draw.c:wm_method_draw_triple"}
!98 = !{!35, !36, i64 168}
!99 = !{!51, !39, i64 226}
!100 = !{i32 0, i32 2}
!101 = !{!63, !39, i64 234}
!102 = distinct !{!102, !60}
!103 = distinct !{!103, !60}
!104 = !{!88, !36, i64 248}
!105 = distinct !{!105, !60}
!106 = !{!51, !39, i64 228}
!107 = distinct !{!107, !60}
!108 = distinct !{!108, !60}
!109 = distinct !{!109, !60}
!110 = distinct !{!110, !60}
!111 = !{!35, !36, i64 240}
!112 = !{!"wm_draw.c:wm_draw_triple_free"}
!113 = !{!114, !40, i64 60}
!114 = !{!"wmDrawTriple", !37, i64 0, !37, i64 36, !37, i64 48, !40, i64 60, !40, i64 64, !40, i64 68}
!115 = !{!114, !40, i64 64}
!116 = !{!"wm_draw.c:wm_flush_regions_down"}
!117 = distinct !{!117, !60}
!118 = distinct !{!118, !60}
!119 = !{!"wm_draw.c:wm_region_test_render_do_draw"}
!120 = !{!121, !37, i64 72}
!121 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !66, i64 56, !37, i64 72, !37, i64 73, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !39, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !41, i64 96, !41, i64 112, !41, i64 128, !41, i64 144}
!122 = !{!63, !36, i64 376}
!123 = !{!124, !36, i64 656}
!124 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !37, i64 696, !37, i64 760, !44, i64 776, !44, i64 780, !44, i64 784, !44, i64 788, !37, i64 792, !44, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !39, i64 824, !39, i64 826, !37, i64 828, !39, i64 844, !39, i64 846, !44, i64 848, !37, i64 852, !44, i64 864, !37, i64 868}
!125 = !{!126, !40, i64 16}
!126 = !{!"RenderEngine", !36, i64 0, !36, i64 8, !40, i64 16, !36, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !36, i64 48, !41, i64 56, !37, i64 72, !40, i64 584, !40, i64 588, !36, i64 592, !40, i64 600, !40, i64 604, !65, i64 608, !66, i64 624, !37, i64 640, !40, i64 704, !40, i64 708}
!127 = !{!51, !36, i64 184}
!128 = !{!121, !36, i64 96}
!129 = !{!"wm_draw.c:wm_area_test_invalid_backbuf"}
!130 = !{!131, !39, i64 240}
!131 = !{!"View3D", !36, i64 0, !36, i64 8, !41, i64 16, !40, i64 32, !44, i64 36, !37, i64 40, !37, i64 56, !44, i64 72, !44, i64 76, !37, i64 80, !37, i64 81, !40, i64 84, !40, i64 88, !39, i64 92, !39, i64 94, !36, i64 96, !36, i64 104, !65, i64 112, !41, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !40, i64 224, !40, i64 228, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !37, i64 260, !37, i64 272, !39, i64 284, !39, i64 286, !39, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !41, i64 296, !41, i64 312, !41, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!132 = !{!"wm_draw.c:wm_flush_regions_up"}
!133 = distinct !{!133, !60}
!134 = !{!"wm_draw.c:wm_paintcursor_draw"}
!135 = !{!136, !36, i64 24}
!136 = !{!"wmPaintCursor", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!137 = !{!35, !39, i64 124}
!138 = !{!40, !40, i64 0}
!139 = !{!136, !36, i64 32}
!140 = !{!63, !40, i64 176}
!141 = !{!63, !40, i64 184}
!142 = !{!136, !36, i64 16}
!143 = !{!35, !36, i64 136}
!144 = !{!145, !40, i64 20}
!145 = !{!"wmEvent", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !40, i64 20, !40, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !39, i64 44, !39, i64 46, !40, i64 48, !40, i64 52, !146, i64 56, !40, i64 64, !40, i64 68, !39, i64 72, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !36, i64 88, !36, i64 96, !39, i64 104, !39, i64 106, !40, i64 108, !36, i64 112}
!146 = !{!"double", !37, i64 0}
!147 = !{!145, !40, i64 24}
!148 = distinct !{!148, !60}
!149 = !{!"wm_draw.c:wm_area_mark_invalid_backbuf"}
!150 = !{!"wm_draw.c:wm_triple_draw_textures"}
!151 = !{!114, !40, i64 68}
!152 = distinct !{!152, !60}
!153 = distinct !{!153, !60}
!154 = !{!"wm_draw.c:wm_triple_gen_textures"}
!155 = !{!37, !37, i64 0}
!156 = distinct !{!156, !60}
!157 = distinct !{!157, !60}
!158 = !{!"wm_draw.c:wm_draw_triple_fail"}
!159 = !{!"wm_draw.c:wm_triple_copy_textures"}
!160 = distinct !{!160, !60}
!161 = distinct !{!161, !60}
!162 = !{!"wm_draw.c:wm_draw_region_blend"}
!163 = !{!"wm_draw.c:split_width"}
!164 = distinct !{!164, !60}
!165 = !{!"wm_draw.c:is_power_of_2_i"}
!166 = !{i32 0, i32 33}
!167 = !{!"wm_draw.c:power_of_2_max_i"}
!168 = distinct !{!168, !60}
!169 = !{!"wm_draw.c:power_of_2_min_i"}
!170 = distinct !{!170, !60}
