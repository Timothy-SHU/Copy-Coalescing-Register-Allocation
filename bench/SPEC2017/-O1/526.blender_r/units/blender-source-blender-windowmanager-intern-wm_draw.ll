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
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.RenderEngine = type { ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.ListBase, [512 x i8], i32, i32, ptr, i32, i32, %struct.rctf, %struct.rcti, [4 x [4 x float]], i32, i32 }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.wmDrawTriple = type { [9 x i32], [3 x i32], [3 x i32], i32, i32, i32 }
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

; Function Attrs: nounwind uwtable
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
  %9 = load i32, ptr %2, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = tail call i32 @GPU_type_matches(i32 noundef 2, i32 noundef 1024, i32 noundef 131072) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = tail call i32 @GPU_type_matches(i32 noundef 8, i32 noundef 256, i32 noundef 262144) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = tail call i32 @GPU_type_matches(i32 noundef 8, i32 noundef 1024, i32 noundef 262144) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = tail call i32 @GPU_color_depth() #7
  %22 = icmp slt i32 %21, 24
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %8, %11, %14, %17, %20
  %25 = phi i32 [ 1, %11 ], [ 1, %14 ], [ 1, %17 ], [ %23, %20 ], [ %9, %8 ]
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i8
  ret i8 %27
}

; Function Attrs: nounwind uwtable
define dso_local void @wm_tag_redraw_overlay(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %1, null
  %4 = icmp ne ptr %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %31

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 24
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = tail call i32 @GPU_type_matches(i32 noundef 2, i32 noundef 1024, i32 noundef 131072) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = tail call i32 @GPU_type_matches(i32 noundef 8, i32 noundef 256, i32 noundef 262144) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = tail call i32 @GPU_type_matches(i32 noundef 8, i32 noundef 1024, i32 noundef 262144) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = tail call i32 @GPU_color_depth() #7
  %21 = icmp slt i32 %20, 24
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %6, %10, %13, %16, %19
  %24 = phi i32 [ 1, %10 ], [ 1, %13 ], [ 1, %16 ], [ %22, %19 ], [ %8, %6 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %1) #7
  br label %27

27:                                               ; preds = %26, %23
  %28 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !47
  %30 = getelementptr inbounds %struct.bScreen, ptr %29, i64 0, i32 15
  store i16 1, ptr %30, align 4, !tbaa !48
  br label %31

31:                                               ; preds = %27, %2
  ret void
}

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @WM_paint_cursor_tag_redraw(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.bScreen, ptr %4, i64 0, i32 15
  store i16 1, ptr %5, align 4, !tbaa !48
  %6 = icmp ne ptr %1, null
  %7 = icmp ne ptr %0, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %33

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 24
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call i32 @GPU_type_matches(i32 noundef 2, i32 noundef 1024, i32 noundef 131072) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = tail call i32 @GPU_type_matches(i32 noundef 8, i32 noundef 256, i32 noundef 262144) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = tail call i32 @GPU_type_matches(i32 noundef 8, i32 noundef 1024, i32 noundef 262144) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = tail call i32 @GPU_color_depth() #7
  %24 = icmp slt i32 %23, 24
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %9, %13, %16, %19, %22
  %27 = phi i32 [ 1, %13 ], [ 1, %16 ], [ 1, %19 ], [ %25, %22 ], [ %11, %9 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %1) #7
  br label %30

30:                                               ; preds = %29, %26
  %31 = load ptr, ptr %3, align 8, !tbaa !47
  %32 = getelementptr inbounds %struct.bScreen, ptr %31, i64 0, i32 15
  store i16 1, ptr %32, align 4, !tbaa !48
  br label %33

33:                                               ; preds = %2, %30
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @wm_draw_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.rcti, align 4
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  tail call void @GPU_free_unused_buffers() #7
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = icmp eq ptr %5, null
  br i1 %6, label %553, label %7

7:                                                ; preds = %1, %550
  %8 = phi ptr [ %551, %550 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.wmWindow, ptr %8, i64 0, i32 24
  %10 = load i32, ptr %9, align 8, !tbaa !34
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 61), align 4, !tbaa !42
  %12 = sext i16 %11 to i32
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  call void @wm_draw_window_clear(ptr noundef nonnull %8)
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 61), align 4, !tbaa !42
  %16 = sext i16 %15 to i32
  store i32 %16, ptr %9, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %14, %7
  %18 = getelementptr inbounds %struct.wmWindow, ptr %8, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = getelementptr inbounds %struct.bScreen, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = icmp eq ptr %21, null
  br i1 %22, label %65, label %23

23:                                               ; preds = %17, %61
  %24 = phi ptr [ %63, %61 ], [ %21, %17 ]
  %25 = phi i8 [ %62, %61 ], [ 0, %17 ]
  %26 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 15
  %27 = load i16, ptr %26, align 2, !tbaa !52
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %52, label %29

29:                                               ; preds = %23
  %30 = load i32, ptr %9, align 8, !tbaa !34
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = call i32 @GPU_type_matches(i32 noundef 2, i32 noundef 1024, i32 noundef 131072) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = call i32 @GPU_type_matches(i32 noundef 8, i32 noundef 256, i32 noundef 262144) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = call i32 @GPU_type_matches(i32 noundef 8, i32 noundef 1024, i32 noundef 262144) #7
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = call i32 @GPU_color_depth() #7
  %43 = icmp slt i32 %42, 24
  %44 = zext i1 %43 to i32
  br label %45

45:                                               ; preds = %29, %32, %35, %38, %41
  %46 = phi i32 [ 1, %32 ], [ 1, %35 ], [ 1, %38 ], [ %44, %41 ], [ %30, %29 ]
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  call void @ED_region_tag_redraw(ptr noundef nonnull %24) #7
  br label %49

49:                                               ; preds = %48, %45
  %50 = load ptr, ptr %18, align 8, !tbaa !47
  %51 = getelementptr inbounds %struct.bScreen, ptr %50, i64 0, i32 15
  store i16 1, ptr %51, align 4, !tbaa !48
  store i16 0, ptr %26, align 2, !tbaa !52
  br label %52

52:                                               ; preds = %49, %23
  %53 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 7
  %54 = load i16, ptr %53, align 4, !tbaa !57
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 14
  %58 = load i16, ptr %57, align 4, !tbaa !58
  %59 = icmp eq i16 %58, 0
  %60 = select i1 %59, i8 %25, i8 1
  br label %61

61:                                               ; preds = %56, %52
  %62 = phi i8 [ %25, %52 ], [ %60, %56 ]
  %63 = load ptr, ptr %24, align 8, !tbaa !51
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %23, !llvm.loop !59

65:                                               ; preds = %61, %17
  %66 = phi i8 [ 0, %17 ], [ %62, %61 ]
  %67 = load ptr, ptr %18, align 8, !tbaa !47
  %68 = getelementptr inbounds %struct.bScreen, ptr %67, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !51
  %70 = icmp eq ptr %69, null
  br i1 %70, label %129, label %75

71:                                               ; preds = %125, %75
  %72 = phi i8 [ %77, %75 ], [ %126, %125 ]
  %73 = load ptr, ptr %76, align 8, !tbaa !51
  %74 = icmp eq ptr %73, null
  br i1 %74, label %129, label %75, !llvm.loop !62

75:                                               ; preds = %65, %71
  %76 = phi ptr [ %73, %71 ], [ %69, %65 ]
  %77 = phi i8 [ %72, %71 ], [ %66, %65 ]
  %78 = getelementptr inbounds %struct.ScrArea, ptr %76, i64 0, i32 20
  %79 = load ptr, ptr %78, align 8, !tbaa !51
  %80 = icmp eq ptr %79, null
  br i1 %80, label %71, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.ScrArea, ptr %76, i64 0, i32 8
  %83 = getelementptr inbounds %struct.ScrArea, ptr %76, i64 0, i32 19
  br label %84

84:                                               ; preds = %81, %125
  %85 = phi ptr [ %79, %81 ], [ %127, %125 ]
  %86 = phi i8 [ %77, %81 ], [ %126, %125 ]
  %87 = load ptr, ptr %18, align 8, !tbaa !47
  %88 = load i8, ptr %82, align 8, !tbaa !63
  %89 = icmp eq i8 %88, 1
  br i1 %89, label %90, label %116

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.ARegion, ptr %85, i64 0, i32 30
  %92 = load ptr, ptr %91, align 8, !tbaa !65
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.RegionView3D, ptr %92, i64 0, i32 11
  %96 = load ptr, ptr %95, align 8, !tbaa !66
  br label %97

97:                                               ; preds = %94, %90
  %98 = phi ptr [ %96, %94 ], [ null, %90 ]
  %99 = icmp eq ptr %98, null
  br i1 %99, label %116, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.RenderEngine, ptr %98, i64 0, i32 2
  %102 = load i32, ptr %101, align 8, !tbaa !68
  %103 = and i32 %102, 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %116, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.bScreen, ptr %87, i64 0, i32 5
  %107 = load ptr, ptr %106, align 8, !tbaa !70
  %108 = load ptr, ptr %83, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  %109 = call zeroext i8 @ED_view3d_calc_render_border(ptr noundef %107, ptr noundef %108, ptr noundef nonnull %85, ptr noundef nonnull %2) #7
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %105
  call void @ED_region_tag_redraw_partial(ptr noundef nonnull %85, ptr noundef nonnull %2) #7
  br label %113

112:                                              ; preds = %105
  call void @ED_region_tag_redraw(ptr noundef nonnull %85) #7
  br label %113

113:                                              ; preds = %112, %111
  %114 = load i32, ptr %101, align 8, !tbaa !68
  %115 = and i32 %114, -5
  store i32 %115, ptr %101, align 8, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  br label %116

116:                                              ; preds = %113, %100, %97, %84
  %117 = getelementptr inbounds %struct.ARegion, ptr %85, i64 0, i32 7
  %118 = load i16, ptr %117, align 4, !tbaa !57
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.ARegion, ptr %85, i64 0, i32 14
  %122 = load i16, ptr %121, align 4, !tbaa !58
  %123 = icmp eq i16 %122, 0
  %124 = select i1 %123, i8 %86, i8 1
  br label %125

125:                                              ; preds = %120, %116
  %126 = phi i8 [ %86, %116 ], [ %124, %120 ]
  %127 = load ptr, ptr %85, align 8, !tbaa !51
  %128 = icmp eq ptr %127, null
  br i1 %128, label %71, label %84, !llvm.loop !72

129:                                              ; preds = %71, %65
  %130 = phi i8 [ %66, %65 ], [ %72, %71 ]
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %154

132:                                              ; preds = %129
  %133 = load ptr, ptr %18, align 8, !tbaa !47
  %134 = getelementptr inbounds %struct.bScreen, ptr %133, i64 0, i32 13
  %135 = load i16, ptr %134, align 8, !tbaa !73
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %137, label %154

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.bScreen, ptr %133, i64 0, i32 12
  %139 = load i16, ptr %138, align 2, !tbaa !74
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.bScreen, ptr %133, i64 0, i32 14
  %143 = load i16, ptr %142, align 2, !tbaa !75
  %144 = icmp eq i16 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.bScreen, ptr %133, i64 0, i32 15
  %147 = load i16, ptr %146, align 4, !tbaa !48
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.bScreen, ptr %133, i64 0, i32 16
  %151 = load i16, ptr %150, align 2, !tbaa !76
  %152 = icmp ne i16 %151, 0
  %153 = zext i1 %152 to i8
  br label %154

154:                                              ; preds = %129, %132, %137, %141, %145, %149
  %155 = phi i8 [ 1, %129 ], [ 1, %132 ], [ 1, %137 ], [ 1, %141 ], [ 1, %145 ], [ %153, %149 ]
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %550, label %157

157:                                              ; preds = %154
  call void @CTX_wm_window_set(ptr noundef %0, ptr noundef nonnull %8) #7
  call void @wm_window_make_drawable(ptr noundef %3, ptr noundef nonnull %8) #7
  %158 = load ptr, ptr %18, align 8, !tbaa !47
  %159 = getelementptr inbounds %struct.bScreen, ptr %158, i64 0, i32 13
  %160 = load i16, ptr %159, align 8, !tbaa !73
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %157
  call void @ED_screen_refresh(ptr noundef %3, ptr noundef nonnull %8) #7
  br label %163

163:                                              ; preds = %162, %157
  %164 = load i32, ptr %9, align 8, !tbaa !34
  %165 = icmp eq i32 %164, 3
  br i1 %165, label %166, label %179

166:                                              ; preds = %163
  %167 = call i32 @GPU_type_matches(i32 noundef 2, i32 noundef 1024, i32 noundef 131072) #7
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %179

169:                                              ; preds = %166
  %170 = call i32 @GPU_type_matches(i32 noundef 8, i32 noundef 256, i32 noundef 262144) #7
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %169
  %173 = call i32 @GPU_type_matches(i32 noundef 8, i32 noundef 1024, i32 noundef 262144) #7
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = call i32 @GPU_color_depth() #7
  %177 = icmp slt i32 %176, 24
  %178 = zext i1 %177 to i32
  br label %179

179:                                              ; preds = %163, %166, %169, %172, %175
  %180 = phi i32 [ 1, %166 ], [ 4, %169 ], [ 1, %172 ], [ %178, %175 ], [ %164, %163 ]
  %181 = getelementptr inbounds %struct.wmWindow, ptr %8, i64 0, i32 25
  %182 = load i32, ptr %181, align 4, !tbaa !77
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %179
  call fastcc void @wm_method_draw_overlap_all(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 0)
  br label %545

185:                                              ; preds = %179
  switch i32 %180, label %238 [
    i32 2, label %186
    i32 1, label %236
    i32 4, label %237
  ]

186:                                              ; preds = %185
  %187 = load ptr, ptr %18, align 8, !tbaa !47
  %188 = getelementptr inbounds %struct.bScreen, ptr %187, i64 0, i32 3
  %189 = load ptr, ptr %188, align 8, !tbaa !51
  %190 = icmp eq ptr %189, null
  br i1 %190, label %218, label %191

191:                                              ; preds = %186, %215
  %192 = phi ptr [ %216, %215 ], [ %189, %186 ]
  call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %192) #7
  %193 = getelementptr inbounds %struct.ScrArea, ptr %192, i64 0, i32 20
  %194 = load ptr, ptr %193, align 8, !tbaa !51
  %195 = icmp eq ptr %194, null
  br i1 %195, label %205, label %196

196:                                              ; preds = %191, %202
  %197 = phi ptr [ %203, %202 ], [ %194, %191 ]
  %198 = getelementptr inbounds %struct.ARegion, ptr %197, i64 0, i32 7
  %199 = load i16, ptr %198, align 4, !tbaa !57
  %200 = icmp eq i16 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %196
  call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %197) #7
  call void @ED_region_do_draw(ptr noundef %0, ptr noundef nonnull %197) #7
  call fastcc void @wm_paintcursor_draw(ptr noundef %0, ptr noundef nonnull %197)
  call void @CTX_wm_region_set(ptr noundef %0, ptr noundef null) #7
  br label %202

202:                                              ; preds = %201, %196
  %203 = load ptr, ptr %197, align 8, !tbaa !51
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %196, !llvm.loop !78

205:                                              ; preds = %202, %191
  %206 = getelementptr inbounds %struct.ScrArea, ptr %192, i64 0, i32 8
  %207 = load i8, ptr %206, align 8, !tbaa !63
  %208 = icmp eq i8 %207, 1
  br i1 %208, label %209, label %215

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.ScrArea, ptr %192, i64 0, i32 19
  %211 = load ptr, ptr %210, align 8, !tbaa !71
  %212 = getelementptr inbounds %struct.View3D, ptr %211, i64 0, i32 28
  %213 = load i16, ptr %212, align 8, !tbaa !79
  %214 = or i16 %213, 8
  store i16 %214, ptr %212, align 8, !tbaa !79
  br label %215

215:                                              ; preds = %209, %205
  call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #7
  %216 = load ptr, ptr %192, align 8, !tbaa !51
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %191, !llvm.loop !81

218:                                              ; preds = %215, %186
  call void @ED_screen_draw(ptr noundef nonnull %8) #7
  %219 = getelementptr inbounds %struct.bScreen, ptr %187, i64 0, i32 4
  %220 = load ptr, ptr %219, align 8, !tbaa !51
  %221 = icmp eq ptr %220, null
  br i1 %221, label %231, label %222

222:                                              ; preds = %218, %228
  %223 = phi ptr [ %229, %228 ], [ %220, %218 ]
  %224 = getelementptr inbounds %struct.ARegion, ptr %223, i64 0, i32 7
  %225 = load i16, ptr %224, align 4, !tbaa !57
  %226 = icmp eq i16 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %222
  call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef nonnull %223) #7
  call void @ED_region_do_draw(ptr noundef %0, ptr noundef nonnull %223) #7
  call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef null) #7
  br label %228

228:                                              ; preds = %227, %222
  %229 = load ptr, ptr %223, align 8, !tbaa !51
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %222, !llvm.loop !82

231:                                              ; preds = %228, %218
  %232 = getelementptr inbounds %struct.bScreen, ptr %187, i64 0, i32 14
  %233 = load i16, ptr %232, align 2, !tbaa !75
  %234 = icmp eq i16 %233, 0
  br i1 %234, label %545, label %235

235:                                              ; preds = %231
  call void @wm_gesture_draw(ptr noundef nonnull %8) #7
  br label %545

236:                                              ; preds = %185
  call fastcc void @wm_method_draw_overlap_all(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 0)
  br label %545

237:                                              ; preds = %185
  call fastcc void @wm_method_draw_overlap_all(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 1)
  br label %545

238:                                              ; preds = %185
  %239 = call ptr @CTX_wm_manager(ptr noundef %0) #7
  %240 = load ptr, ptr %18, align 8, !tbaa !47
  %241 = getelementptr inbounds %struct.wmWindow, ptr %8, i64 0, i32 26
  %242 = load ptr, ptr %241, align 8, !tbaa !83
  %243 = icmp eq ptr %242, null
  br i1 %243, label %249, label %244

244:                                              ; preds = %238
  call void @glClearColor(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #7
  call void @glClear(i32 noundef 16640) #7
  %245 = getelementptr inbounds %struct.bScreen, ptr %240, i64 0, i32 18
  %246 = load i16, ptr %245, align 2, !tbaa !84
  %247 = sext i16 %246 to i32
  call void @wmSubWindowSet(ptr noundef nonnull %8, i32 noundef %247) #7
  %248 = load ptr, ptr %241, align 8, !tbaa !83
  call fastcc void @wm_triple_draw_textures(ptr noundef nonnull %8, ptr noundef %248, float noundef 1.000000e+00)
  br label %339

249:                                              ; preds = %238
  %250 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %251 = call ptr %250(i64 noundef 72, ptr noundef nonnull @.str) #7
  store ptr %251, ptr %241, align 8, !tbaa !83
  %252 = call i32 @WM_window_pixels_x(ptr noundef nonnull %8) #7
  %253 = call i32 @WM_window_pixels_y(ptr noundef nonnull %8) #7
  %254 = load i8, ptr @__GLEW_ARB_texture_rectangle, align 1, !tbaa !85
  %255 = icmp ne i8 %254, 0
  %256 = load i8, ptr @__GLEW_NV_texture_rectangle, align 1
  %257 = icmp ne i8 %256, 0
  %258 = select i1 %255, i1 true, i1 %257
  %259 = load i8, ptr @__GLEW_EXT_texture_rectangle, align 1
  %260 = icmp ne i8 %259, 0
  %261 = select i1 %258, i1 true, i1 %260
  %262 = getelementptr inbounds %struct.wmDrawTriple, ptr %251, i64 0, i32 1
  br i1 %261, label %263, label %268

263:                                              ; preds = %249
  %264 = getelementptr inbounds %struct.wmDrawTriple, ptr %251, i64 0, i32 5
  store i32 34037, ptr %264, align 4, !tbaa !86
  %265 = getelementptr inbounds %struct.wmDrawTriple, ptr %251, i64 0, i32 3
  store i32 1, ptr %265, align 4, !tbaa !88
  %266 = getelementptr inbounds %struct.wmDrawTriple, ptr %251, i64 0, i32 4
  store i32 1, ptr %266, align 4, !tbaa !89
  store i32 %252, ptr %262, align 4, !tbaa !90
  %267 = getelementptr inbounds %struct.wmDrawTriple, ptr %251, i64 0, i32 2
  store i32 %253, ptr %267, align 4, !tbaa !90
  br label %277

268:                                              ; preds = %249
  %269 = call i32 @GPU_non_power_of_two_support() #7
  %270 = icmp eq i32 %269, 0
  %271 = getelementptr inbounds %struct.wmDrawTriple, ptr %251, i64 0, i32 5
  store i32 3553, ptr %271, align 4, !tbaa !86
  %272 = getelementptr inbounds %struct.wmDrawTriple, ptr %251, i64 0, i32 3
  %273 = getelementptr inbounds %struct.wmDrawTriple, ptr %251, i64 0, i32 4
  %274 = getelementptr inbounds %struct.wmDrawTriple, ptr %251, i64 0, i32 2
  br i1 %270, label %276, label %275

275:                                              ; preds = %268
  store i32 1, ptr %272, align 4, !tbaa !88
  store i32 1, ptr %273, align 4, !tbaa !89
  store i32 %252, ptr %262, align 4, !tbaa !90
  store i32 %253, ptr %274, align 4, !tbaa !90
  br label %277

276:                                              ; preds = %268
  store i32 0, ptr %272, align 4, !tbaa !88
  store i32 0, ptr %273, align 4, !tbaa !89
  call fastcc void @split_width(i32 noundef %252, i32 noundef 3, ptr noundef nonnull %262, ptr noundef nonnull %272)
  call fastcc void @split_width(i32 noundef %253, i32 noundef 3, ptr noundef nonnull %274, ptr noundef nonnull %273)
  br label %277

277:                                              ; preds = %276, %275, %263
  %278 = getelementptr inbounds %struct.wmDrawTriple, ptr %251, i64 0, i32 3
  %279 = load i32, ptr %278, align 4, !tbaa !88
  %280 = getelementptr inbounds %struct.wmDrawTriple, ptr %251, i64 0, i32 4
  %281 = load i32, ptr %280, align 4, !tbaa !89
  %282 = mul nsw i32 %281, %279
  call void @glGenTextures(i32 noundef %282, ptr noundef %251) #7
  %283 = load i32, ptr %251, align 4, !tbaa !90
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %336, label %285

285:                                              ; preds = %277
  %286 = load i32, ptr %280, align 4, !tbaa !89
  %287 = icmp sgt i32 %286, 0
  br i1 %287, label %288, label %339

288:                                              ; preds = %285
  %289 = getelementptr inbounds %struct.wmDrawTriple, ptr %251, i64 0, i32 5
  br label %290

290:                                              ; preds = %288, %331
  %291 = phi i64 [ 0, %288 ], [ %332, %331 ]
  %292 = load i32, ptr %278, align 4, !tbaa !88
  %293 = icmp sgt i32 %292, 0
  br i1 %293, label %294, label %331

294:                                              ; preds = %290
  %295 = getelementptr inbounds %struct.wmDrawTriple, ptr %251, i64 0, i32 2, i64 %291
  %296 = trunc i64 %291 to i32
  br label %302

297:                                              ; preds = %314
  %298 = add nuw nsw i64 %303, 1
  %299 = load i32, ptr %278, align 4, !tbaa !88
  %300 = sext i32 %299 to i64
  %301 = icmp slt i64 %298, %300
  br i1 %301, label %302, label %331, !llvm.loop !91

302:                                              ; preds = %294, %297
  %303 = phi i64 [ 0, %294 ], [ %298, %297 ]
  %304 = call i32 @GPU_max_texture_size() #7
  %305 = getelementptr inbounds %struct.wmDrawTriple, ptr %251, i64 0, i32 1, i64 %303
  %306 = load i32, ptr %305, align 4, !tbaa !90
  %307 = icmp sgt i32 %306, %304
  br i1 %307, label %311, label %308

308:                                              ; preds = %302
  %309 = load i32, ptr %295, align 4, !tbaa !90
  %310 = icmp sgt i32 %309, %304
  br i1 %310, label %311, label %314

311:                                              ; preds = %308, %302
  %312 = getelementptr inbounds %struct.wmDrawTriple, ptr %251, i64 0, i32 5
  %313 = load i32, ptr %312, align 4, !tbaa !86
  call void @glBindTexture(i32 noundef %313, i32 noundef 0) #7
  br label %336

314:                                              ; preds = %308
  %315 = load i32, ptr %289, align 4, !tbaa !86
  %316 = load i32, ptr %278, align 4, !tbaa !88
  %317 = mul nsw i32 %316, %296
  %318 = trunc i64 %303 to i32
  %319 = add nsw i32 %317, %318
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [9 x i32], ptr %251, i64 0, i64 %320
  %322 = load i32, ptr %321, align 4, !tbaa !90
  call void @glBindTexture(i32 noundef %315, i32 noundef %322) #7
  %323 = load i32, ptr %289, align 4, !tbaa !86
  %324 = load i32, ptr %305, align 4, !tbaa !90
  %325 = load i32, ptr %295, align 4, !tbaa !90
  call void @glTexImage2D(i32 noundef %323, i32 noundef 0, i32 noundef 32849, i32 noundef %324, i32 noundef %325, i32 noundef 0, i32 noundef 6407, i32 noundef 5121, ptr noundef null) #7
  %326 = load i32, ptr %289, align 4, !tbaa !86
  call void @glTexParameteri(i32 noundef %326, i32 noundef 10241, i32 noundef 9728) #7
  %327 = load i32, ptr %289, align 4, !tbaa !86
  call void @glTexParameteri(i32 noundef %327, i32 noundef 10240, i32 noundef 9728) #7
  %328 = load i32, ptr %289, align 4, !tbaa !86
  call void @glBindTexture(i32 noundef %328, i32 noundef 0) #7
  %329 = call i32 @glGetError() #7
  %330 = icmp eq i32 %329, 1285
  br i1 %330, label %336, label %297

331:                                              ; preds = %297, %290
  %332 = add nuw nsw i64 %291, 1
  %333 = load i32, ptr %280, align 4, !tbaa !89
  %334 = sext i32 %333 to i64
  %335 = icmp slt i64 %332, %334
  br i1 %335, label %290, label %339, !llvm.loop !92

336:                                              ; preds = %314, %277, %311
  %337 = phi ptr [ @str.5, %311 ], [ @str, %277 ], [ @str.4, %314 ]
  %338 = call i32 @puts(ptr nonnull dereferenceable(1) %337)
  call void @wm_draw_window_clear(ptr noundef nonnull %8)
  store i32 1, ptr %181, align 4, !tbaa !77
  call fastcc void @wm_method_draw_overlap_all(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 0)
  br label %545

339:                                              ; preds = %331, %285, %244
  %340 = load ptr, ptr %241, align 8, !tbaa !83
  %341 = getelementptr inbounds %struct.bScreen, ptr %240, i64 0, i32 3
  %342 = load ptr, ptr %341, align 8, !tbaa !51
  %343 = icmp eq ptr %342, null
  br i1 %343, label %383, label %344

344:                                              ; preds = %339, %380
  %345 = phi ptr [ %381, %380 ], [ %342, %339 ]
  %346 = phi i32 [ %370, %380 ], [ 0, %339 ]
  call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %345) #7
  %347 = getelementptr inbounds %struct.ScrArea, ptr %345, i64 0, i32 20
  %348 = load ptr, ptr %347, align 8, !tbaa !51
  %349 = icmp eq ptr %348, null
  br i1 %349, label %369, label %350

350:                                              ; preds = %344, %365
  %351 = phi ptr [ %367, %365 ], [ %348, %344 ]
  %352 = phi i32 [ %366, %365 ], [ %346, %344 ]
  %353 = getelementptr inbounds %struct.ARegion, ptr %351, i64 0, i32 7
  %354 = load i16, ptr %353, align 4, !tbaa !57
  %355 = icmp eq i16 %354, 0
  br i1 %355, label %365, label %356

356:                                              ; preds = %350
  %357 = getelementptr inbounds %struct.ARegion, ptr %351, i64 0, i32 14
  %358 = load i16, ptr %357, align 4, !tbaa !58
  %359 = icmp eq i16 %358, 0
  br i1 %359, label %365, label %360

360:                                              ; preds = %356
  %361 = getelementptr inbounds %struct.ARegion, ptr %351, i64 0, i32 17
  %362 = load i16, ptr %361, align 2, !tbaa !93
  %363 = icmp eq i16 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %360
  call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %351) #7
  call void @ED_region_do_draw(ptr noundef %0, ptr noundef nonnull %351) #7
  call void @CTX_wm_region_set(ptr noundef %0, ptr noundef null) #7
  br label %365

365:                                              ; preds = %364, %360, %356, %350
  %366 = phi i32 [ 1, %364 ], [ %352, %360 ], [ %352, %356 ], [ %352, %350 ]
  %367 = load ptr, ptr %351, align 8, !tbaa !51
  %368 = icmp eq ptr %367, null
  br i1 %368, label %369, label %350, !llvm.loop !94

369:                                              ; preds = %365, %344
  %370 = phi i32 [ %346, %344 ], [ %366, %365 ]
  %371 = getelementptr inbounds %struct.ScrArea, ptr %345, i64 0, i32 8
  %372 = load i8, ptr %371, align 8, !tbaa !63
  %373 = icmp eq i8 %372, 1
  br i1 %373, label %374, label %380

374:                                              ; preds = %369
  %375 = getelementptr inbounds %struct.ScrArea, ptr %345, i64 0, i32 19
  %376 = load ptr, ptr %375, align 8, !tbaa !71
  %377 = getelementptr inbounds %struct.View3D, ptr %376, i64 0, i32 28
  %378 = load i16, ptr %377, align 8, !tbaa !79
  %379 = or i16 %378, 8
  store i16 %379, ptr %377, align 8, !tbaa !79
  br label %380

380:                                              ; preds = %374, %369
  call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #7
  %381 = load ptr, ptr %345, align 8, !tbaa !51
  %382 = icmp eq ptr %381, null
  br i1 %382, label %383, label %344, !llvm.loop !95

383:                                              ; preds = %380, %339
  %384 = phi i32 [ 0, %339 ], [ %370, %380 ]
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %455, label %386

386:                                              ; preds = %383
  %387 = getelementptr inbounds %struct.bScreen, ptr %240, i64 0, i32 18
  %388 = load i16, ptr %387, align 2, !tbaa !84
  %389 = sext i16 %388 to i32
  call void @wmSubWindowSet(ptr noundef nonnull %8, i32 noundef %389) #7
  %390 = call i32 @WM_window_pixels_x(ptr noundef nonnull %8) #7
  %391 = call i32 @WM_window_pixels_y(ptr noundef nonnull %8) #7
  %392 = getelementptr inbounds %struct.wmDrawTriple, ptr %340, i64 0, i32 4
  %393 = load i32, ptr %392, align 4, !tbaa !89
  %394 = icmp sgt i32 %393, 0
  br i1 %394, label %395, label %452

395:                                              ; preds = %386
  %396 = getelementptr inbounds %struct.wmDrawTriple, ptr %340, i64 0, i32 3
  %397 = getelementptr inbounds %struct.wmDrawTriple, ptr %340, i64 0, i32 5
  br label %398

398:                                              ; preds = %395, %444
  %399 = phi i64 [ 0, %395 ], [ %448, %444 ]
  %400 = phi i32 [ 0, %395 ], [ %447, %444 ]
  %401 = load i32, ptr %396, align 4, !tbaa !88
  %402 = icmp sgt i32 %401, 0
  br i1 %402, label %403, label %444

403:                                              ; preds = %398
  %404 = getelementptr inbounds %struct.wmDrawTriple, ptr %340, i64 0, i32 2, i64 %399
  %405 = sub nsw i32 %391, %400
  %406 = trunc i64 %399 to i32
  br label %407

407:                                              ; preds = %403, %427
  %408 = phi i64 [ 0, %403 ], [ %440, %427 ]
  %409 = phi i32 [ %401, %403 ], [ %441, %427 ]
  %410 = phi i32 [ 0, %403 ], [ %439, %427 ]
  %411 = add nsw i32 %409, -1
  %412 = zext i32 %411 to i64
  %413 = icmp eq i64 %408, %412
  br i1 %413, label %414, label %416

414:                                              ; preds = %407
  %415 = sub nsw i32 %390, %410
  br label %419

416:                                              ; preds = %407
  %417 = getelementptr inbounds %struct.wmDrawTriple, ptr %340, i64 0, i32 1, i64 %408
  %418 = load i32, ptr %417, align 4, !tbaa !90
  br label %419

419:                                              ; preds = %416, %414
  %420 = phi i32 [ %415, %414 ], [ %418, %416 ]
  %421 = load i32, ptr %392, align 4, !tbaa !89
  %422 = add nsw i32 %421, -1
  %423 = zext i32 %422 to i64
  %424 = icmp eq i64 %399, %423
  br i1 %424, label %427, label %425

425:                                              ; preds = %419
  %426 = load i32, ptr %404, align 4, !tbaa !90
  br label %427

427:                                              ; preds = %419, %425
  %428 = phi i32 [ %426, %425 ], [ %405, %419 ]
  %429 = load i32, ptr %397, align 4, !tbaa !86
  %430 = mul nsw i32 %409, %406
  %431 = trunc i64 %408 to i32
  %432 = add nsw i32 %430, %431
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds [9 x i32], ptr %340, i64 0, i64 %433
  %435 = load i32, ptr %434, align 4, !tbaa !90
  call void @glBindTexture(i32 noundef %429, i32 noundef %435) #7
  %436 = load i32, ptr %397, align 4, !tbaa !86
  call void @glCopyTexSubImage2D(i32 noundef %436, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %410, i32 noundef %400, i32 noundef %420, i32 noundef %428) #7
  %437 = getelementptr inbounds %struct.wmDrawTriple, ptr %340, i64 0, i32 1, i64 %408
  %438 = load i32, ptr %437, align 4, !tbaa !90
  %439 = add nsw i32 %438, %410
  %440 = add nuw nsw i64 %408, 1
  %441 = load i32, ptr %396, align 4, !tbaa !88
  %442 = sext i32 %441 to i64
  %443 = icmp slt i64 %440, %442
  br i1 %443, label %407, label %444, !llvm.loop !96

444:                                              ; preds = %427, %398
  %445 = getelementptr inbounds %struct.wmDrawTriple, ptr %340, i64 0, i32 2, i64 %399
  %446 = load i32, ptr %445, align 4, !tbaa !90
  %447 = add nsw i32 %446, %400
  %448 = add nuw nsw i64 %399, 1
  %449 = load i32, ptr %392, align 4, !tbaa !89
  %450 = sext i32 %449 to i64
  %451 = icmp slt i64 %448, %450
  br i1 %451, label %398, label %452, !llvm.loop !97

452:                                              ; preds = %444, %386
  %453 = getelementptr inbounds %struct.wmDrawTriple, ptr %340, i64 0, i32 5
  %454 = load i32, ptr %453, align 4, !tbaa !86
  call void @glBindTexture(i32 noundef %454, i32 noundef 0) #7
  br label %455

455:                                              ; preds = %452, %383
  %456 = getelementptr inbounds %struct.wmWindowManager, ptr %239, i64 0, i32 11
  %457 = load ptr, ptr %456, align 8, !tbaa !98
  %458 = icmp eq ptr %457, null
  br i1 %458, label %488, label %459

459:                                              ; preds = %455
  %460 = load ptr, ptr %341, align 8, !tbaa !51
  %461 = icmp eq ptr %460, null
  br i1 %461, label %484, label %462

462:                                              ; preds = %459
  %463 = getelementptr inbounds %struct.bScreen, ptr %240, i64 0, i32 19
  br label %467

464:                                              ; preds = %481, %467
  %465 = load ptr, ptr %468, align 8, !tbaa !51
  %466 = icmp eq ptr %465, null
  br i1 %466, label %484, label %467, !llvm.loop !101

467:                                              ; preds = %462, %464
  %468 = phi ptr [ %460, %462 ], [ %465, %464 ]
  %469 = getelementptr inbounds %struct.ScrArea, ptr %468, i64 0, i32 20
  %470 = load ptr, ptr %469, align 8, !tbaa !51
  %471 = icmp eq ptr %470, null
  br i1 %471, label %464, label %472

472:                                              ; preds = %467, %481
  %473 = phi ptr [ %482, %481 ], [ %470, %467 ]
  %474 = getelementptr inbounds %struct.ARegion, ptr %473, i64 0, i32 7
  %475 = load i16, ptr %474, align 4, !tbaa !57
  %476 = icmp eq i16 %475, 0
  br i1 %476, label %481, label %477

477:                                              ; preds = %472
  %478 = load i16, ptr %463, align 4, !tbaa !102
  %479 = icmp eq i16 %475, %478
  br i1 %479, label %480, label %481

480:                                              ; preds = %477
  call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %468) #7
  call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %473) #7
  call void @ED_region_set(ptr noundef %0, ptr noundef nonnull %473) #7
  call fastcc void @wm_paintcursor_draw(ptr noundef %0, ptr noundef nonnull %473)
  call void @CTX_wm_region_set(ptr noundef %0, ptr noundef null) #7
  call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #7
  br label %481

481:                                              ; preds = %480, %477, %472
  %482 = load ptr, ptr %473, align 8, !tbaa !51
  %483 = icmp eq ptr %482, null
  br i1 %483, label %464, label %472, !llvm.loop !103

484:                                              ; preds = %464, %459
  %485 = getelementptr inbounds %struct.bScreen, ptr %240, i64 0, i32 18
  %486 = load i16, ptr %485, align 2, !tbaa !84
  %487 = sext i16 %486 to i32
  call void @wmSubWindowSet(ptr noundef nonnull %8, i32 noundef %487) #7
  br label %488

488:                                              ; preds = %484, %455
  %489 = load ptr, ptr %341, align 8, !tbaa !51
  %490 = icmp eq ptr %489, null
  br i1 %490, label %522, label %491

491:                                              ; preds = %488, %519
  %492 = phi ptr [ %520, %519 ], [ %489, %488 ]
  call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %492) #7
  %493 = getelementptr inbounds %struct.ScrArea, ptr %492, i64 0, i32 20
  %494 = load ptr, ptr %493, align 8, !tbaa !51
  %495 = icmp eq ptr %494, null
  br i1 %495, label %519, label %496

496:                                              ; preds = %491, %516
  %497 = phi ptr [ %517, %516 ], [ %494, %491 ]
  %498 = getelementptr inbounds %struct.ARegion, ptr %497, i64 0, i32 7
  %499 = load i16, ptr %498, align 4, !tbaa !57
  %500 = icmp eq i16 %499, 0
  br i1 %500, label %516, label %501

501:                                              ; preds = %496
  %502 = getelementptr inbounds %struct.ARegion, ptr %497, i64 0, i32 17
  %503 = load i16, ptr %502, align 2, !tbaa !93
  %504 = icmp eq i16 %503, 0
  br i1 %504, label %516, label %505

505:                                              ; preds = %501
  call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %497) #7
  call void @ED_region_do_draw(ptr noundef %0, ptr noundef nonnull %497) #7
  call void @CTX_wm_region_set(ptr noundef %0, ptr noundef null) #7
  %506 = call float @ED_region_blend_factor(ptr noundef nonnull %497) #7
  %507 = fcmp olt float %506, 1.000000e+00
  br i1 %507, label %508, label %516

508:                                              ; preds = %505
  %509 = load ptr, ptr %18, align 8, !tbaa !47
  %510 = getelementptr inbounds %struct.bScreen, ptr %509, i64 0, i32 18
  %511 = load i16, ptr %510, align 2, !tbaa !84
  %512 = sext i16 %511 to i32
  %513 = getelementptr inbounds %struct.ARegion, ptr %497, i64 0, i32 3
  call void @wmSubWindowScissorSet(ptr noundef nonnull %8, i32 noundef %512, ptr noundef nonnull %513, i8 noundef zeroext 1) #7
  call void @glEnable(i32 noundef 3042) #7
  %514 = load ptr, ptr %241, align 8, !tbaa !83
  %515 = fsub float 1.000000e+00, %506
  call fastcc void @wm_triple_draw_textures(ptr noundef nonnull %8, ptr noundef %514, float noundef %515)
  call void @glDisable(i32 noundef 3042) #7
  br label %516

516:                                              ; preds = %508, %505, %501, %496
  %517 = load ptr, ptr %497, align 8, !tbaa !51
  %518 = icmp eq ptr %517, null
  br i1 %518, label %519, label %496, !llvm.loop !104

519:                                              ; preds = %516, %491
  call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #7
  %520 = load ptr, ptr %492, align 8, !tbaa !51
  %521 = icmp eq ptr %520, null
  br i1 %521, label %522, label %491, !llvm.loop !105

522:                                              ; preds = %519, %488
  call void @ED_screen_draw(ptr noundef nonnull %8) #7
  %523 = getelementptr inbounds %struct.bScreen, ptr %240, i64 0, i32 4
  %524 = load ptr, ptr %523, align 8, !tbaa !51
  %525 = icmp eq ptr %524, null
  br i1 %525, label %535, label %526

526:                                              ; preds = %522, %532
  %527 = phi ptr [ %533, %532 ], [ %524, %522 ]
  %528 = getelementptr inbounds %struct.ARegion, ptr %527, i64 0, i32 7
  %529 = load i16, ptr %528, align 4, !tbaa !57
  %530 = icmp eq i16 %529, 0
  br i1 %530, label %532, label %531

531:                                              ; preds = %526
  call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef nonnull %527) #7
  call void @ED_region_do_draw(ptr noundef %0, ptr noundef nonnull %527) #7
  call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef null) #7
  br label %532

532:                                              ; preds = %531, %526
  %533 = load ptr, ptr %527, align 8, !tbaa !51
  %534 = icmp eq ptr %533, null
  br i1 %534, label %535, label %526, !llvm.loop !106

535:                                              ; preds = %532, %522
  %536 = getelementptr inbounds %struct.wmWindow, ptr %8, i64 0, i32 31
  %537 = load ptr, ptr %536, align 8, !tbaa !107
  %538 = icmp eq ptr %537, null
  br i1 %538, label %540, label %539

539:                                              ; preds = %535
  call void @wm_gesture_draw(ptr noundef nonnull %8) #7
  br label %540

540:                                              ; preds = %539, %535
  %541 = getelementptr inbounds %struct.wmWindowManager, ptr %239, i64 0, i32 12
  %542 = load ptr, ptr %541, align 8, !tbaa !108
  %543 = icmp eq ptr %542, null
  br i1 %543, label %545, label %544

544:                                              ; preds = %540
  call void @wm_drags_draw(ptr noundef %0, ptr noundef nonnull %8, ptr noundef null) #7
  br label %545

545:                                              ; preds = %544, %540, %336, %235, %231, %237, %236, %184
  %546 = load ptr, ptr %18, align 8, !tbaa !47
  %547 = getelementptr inbounds %struct.bScreen, ptr %546, i64 0, i32 14
  store i16 0, ptr %547, align 2, !tbaa !75
  %548 = getelementptr inbounds %struct.bScreen, ptr %546, i64 0, i32 15
  store i16 0, ptr %548, align 4, !tbaa !48
  %549 = getelementptr inbounds %struct.bScreen, ptr %546, i64 0, i32 16
  store i16 0, ptr %549, align 2, !tbaa !76
  call void @wm_window_swap_buffers(ptr noundef nonnull %8) #7
  call void @CTX_wm_window_set(ptr noundef %0, ptr noundef null) #7
  br label %550

550:                                              ; preds = %154, %545
  %551 = load ptr, ptr %8, align 8, !tbaa !51
  %552 = icmp eq ptr %551, null
  br i1 %552, label %553, label %7, !llvm.loop !109

553:                                              ; preds = %550, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

declare void @GPU_free_unused_buffers() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @wm_draw_window_clear(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 24
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = tail call i32 @GPU_type_matches(i32 noundef 2, i32 noundef 1024, i32 noundef 131072) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = tail call i32 @GPU_type_matches(i32 noundef 8, i32 noundef 256, i32 noundef 262144) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = tail call i32 @GPU_type_matches(i32 noundef 8, i32 noundef 1024, i32 noundef 262144) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = tail call i32 @GPU_color_depth() #7
  %18 = icmp slt i32 %17, 24
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %1, %7, %10, %13, %16
  %21 = phi i32 [ 1, %7 ], [ 1, %10 ], [ 1, %13 ], [ %19, %16 ], [ %5, %1 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 26
  %25 = load ptr, ptr %24, align 8, !tbaa !83
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.wmDrawTriple, ptr %25, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !88
  %30 = getelementptr inbounds %struct.wmDrawTriple, ptr %25, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !89
  %32 = mul nsw i32 %31, %29
  tail call void @glDeleteTextures(i32 noundef %32, ptr noundef nonnull %25) #7
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  tail call void %33(ptr noundef nonnull %25) #7
  store ptr null, ptr %24, align 8, !tbaa !83
  br label %34

34:                                               ; preds = %27, %23, %20
  %35 = icmp eq ptr %3, null
  br i1 %35, label %55, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !51
  %39 = icmp eq ptr %38, null
  br i1 %39, label %53, label %43

40:                                               ; preds = %48, %43
  %41 = load ptr, ptr %44, align 8, !tbaa !51
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %43, !llvm.loop !110

43:                                               ; preds = %36, %40
  %44 = phi ptr [ %41, %40 ], [ %38, %36 ]
  %45 = getelementptr inbounds %struct.ScrArea, ptr %44, i64 0, i32 20
  %46 = load ptr, ptr %45, align 8, !tbaa !51
  %47 = icmp eq ptr %46, null
  br i1 %47, label %40, label %48

48:                                               ; preds = %43, %48
  %49 = phi ptr [ %51, %48 ], [ %46, %43 ]
  %50 = getelementptr inbounds %struct.ARegion, ptr %49, i64 0, i32 16
  store i16 0, ptr %50, align 8, !tbaa !111
  %51 = load ptr, ptr %49, align 8, !tbaa !51
  %52 = icmp eq ptr %51, null
  br i1 %52, label %40, label %48, !llvm.loop !112

53:                                               ; preds = %40, %36
  %54 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 17
  store i16 0, ptr %54, align 8, !tbaa !113
  br label %55

55:                                               ; preds = %53, %34
  ret void
}

declare void @CTX_wm_window_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @wm_window_make_drawable(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_screen_refresh(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @wm_method_draw_overlap_all(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %13

10:                                               ; preds = %40, %13
  %11 = load ptr, ptr %14, align 8, !tbaa !51
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13, !llvm.loop !114

13:                                               ; preds = %3, %10
  %14 = phi ptr [ %11, %10 ], [ %8, %3 ]
  %15 = getelementptr inbounds %struct.ScrArea, ptr %14, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !51
  %17 = icmp eq ptr %16, null
  br i1 %17, label %10, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ScrArea, ptr %14, i64 0, i32 8
  %20 = getelementptr inbounds %struct.ScrArea, ptr %14, i64 0, i32 19
  br label %21

21:                                               ; preds = %18, %40
  %22 = phi ptr [ %16, %18 ], [ %41, %40 ]
  %23 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 7
  %24 = load i16, ptr %23, align 4, !tbaa !57
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %21
  %27 = load i8, ptr %19, align 8, !tbaa !63
  %28 = icmp eq i8 %27, 1
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load ptr, ptr %20, align 8, !tbaa !71
  %31 = getelementptr inbounds %struct.View3D, ptr %30, i64 0, i32 28
  %32 = load i16, ptr %31, align 8, !tbaa !79
  %33 = trunc i16 %32 to i8
  %34 = lshr i8 %33, 3
  %35 = and i8 %34, 1
  br label %36

36:                                               ; preds = %26, %29
  %37 = phi i8 [ %35, %29 ], [ 1, %26 ]
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  tail call void @ED_region_tag_redraw(ptr noundef nonnull %22) #7
  br label %40

40:                                               ; preds = %21, %36, %39
  %41 = load ptr, ptr %22, align 8, !tbaa !51
  %42 = icmp eq ptr %41, null
  br i1 %42, label %10, label %21, !llvm.loop !115

43:                                               ; preds = %10, %3
  %44 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !116
  %46 = icmp eq ptr %45, null
  br i1 %46, label %159, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %7, align 8, !tbaa !51
  %49 = icmp eq ptr %48, null
  br i1 %49, label %86, label %53

50:                                               ; preds = %83, %53
  %51 = load ptr, ptr %54, align 8, !tbaa !51
  %52 = icmp eq ptr %51, null
  br i1 %52, label %86, label %53, !llvm.loop !117

53:                                               ; preds = %47, %50
  %54 = phi ptr [ %51, %50 ], [ %48, %47 ]
  %55 = getelementptr inbounds %struct.ScrArea, ptr %54, i64 0, i32 20
  %56 = load ptr, ptr %55, align 8, !tbaa !51
  %57 = icmp eq ptr %56, null
  br i1 %57, label %50, label %58

58:                                               ; preds = %53, %83
  %59 = phi ptr [ %84, %83 ], [ %56, %53 ]
  %60 = getelementptr inbounds %struct.ARegion, ptr %59, i64 0, i32 7
  %61 = load i16, ptr %60, align 4, !tbaa !57
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %83, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.ARegion, ptr %59, i64 0, i32 14
  %65 = load i16, ptr %64, align 4, !tbaa !58
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.ARegion, ptr %59, i64 0, i32 3
  %69 = load ptr, ptr %44, align 8, !tbaa !51
  %70 = icmp eq ptr %69, null
  br i1 %70, label %83, label %71

71:                                               ; preds = %67, %80
  %72 = phi ptr [ %81, %80 ], [ %69, %67 ]
  %73 = getelementptr inbounds %struct.ARegion, ptr %72, i64 0, i32 3
  %74 = tail call zeroext i8 @BLI_rcti_isect(ptr noundef nonnull %68, ptr noundef nonnull %73, ptr noundef null) #7
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.ARegion, ptr %72, i64 0, i32 14
  store i16 1, ptr %77, align 4, !tbaa !58
  %78 = getelementptr inbounds %struct.ARegion, ptr %72, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %78, i8 0, i64 16, i1 false)
  %79 = getelementptr inbounds %struct.ARegion, ptr %72, i64 0, i32 16
  store i16 0, ptr %79, align 8, !tbaa !111
  br label %80

80:                                               ; preds = %76, %71
  %81 = load ptr, ptr %72, align 8, !tbaa !51
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %71, !llvm.loop !118

83:                                               ; preds = %80, %67, %58, %63
  %84 = load ptr, ptr %59, align 8, !tbaa !51
  %85 = icmp eq ptr %84, null
  br i1 %85, label %50, label %58, !llvm.loop !119

86:                                               ; preds = %50, %47
  %87 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 4, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !51
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %118, %86
  %91 = load ptr, ptr %87, align 8, !tbaa !51
  %92 = icmp eq ptr %91, null
  br i1 %92, label %159, label %122

93:                                               ; preds = %86, %118
  %94 = phi ptr [ %120, %118 ], [ %88, %86 ]
  %95 = getelementptr inbounds %struct.ARegion, ptr %94, i64 0, i32 7
  %96 = load i16, ptr %95, align 4, !tbaa !57
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %118, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.ARegion, ptr %94, i64 0, i32 14
  %100 = load i16, ptr %99, align 4, !tbaa !58
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %118, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.ARegion, ptr %94, i64 0, i32 3
  %104 = load ptr, ptr %44, align 8, !tbaa !51
  %105 = icmp eq ptr %104, null
  br i1 %105, label %118, label %106

106:                                              ; preds = %102, %115
  %107 = phi ptr [ %116, %115 ], [ %104, %102 ]
  %108 = getelementptr inbounds %struct.ARegion, ptr %107, i64 0, i32 3
  %109 = tail call zeroext i8 @BLI_rcti_isect(ptr noundef nonnull %103, ptr noundef nonnull %108, ptr noundef null) #7
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.ARegion, ptr %107, i64 0, i32 14
  store i16 1, ptr %112, align 4, !tbaa !58
  %113 = getelementptr inbounds %struct.ARegion, ptr %107, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %113, i8 0, i64 16, i1 false)
  %114 = getelementptr inbounds %struct.ARegion, ptr %107, i64 0, i32 16
  store i16 0, ptr %114, align 8, !tbaa !111
  br label %115

115:                                              ; preds = %111, %106
  %116 = load ptr, ptr %107, align 8, !tbaa !51
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %106, !llvm.loop !118

118:                                              ; preds = %115, %102, %93, %98
  %119 = getelementptr inbounds %struct.ARegion, ptr %94, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !51
  %121 = icmp eq ptr %120, null
  br i1 %121, label %90, label %93, !llvm.loop !120

122:                                              ; preds = %90, %155
  %123 = phi ptr [ %157, %155 ], [ %91, %90 ]
  %124 = getelementptr inbounds %struct.ARegion, ptr %123, i64 0, i32 7
  %125 = load i16, ptr %124, align 4, !tbaa !57
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %155, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.ARegion, ptr %123, i64 0, i32 14
  %129 = load i16, ptr %128, align 4, !tbaa !58
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %155, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.ARegion, ptr %123, i64 0, i32 3
  %133 = load ptr, ptr %7, align 8, !tbaa !51
  %134 = icmp eq ptr %133, null
  br i1 %134, label %155, label %138

135:                                              ; preds = %152, %138
  %136 = load ptr, ptr %139, align 8, !tbaa !51
  %137 = icmp eq ptr %136, null
  br i1 %137, label %155, label %138, !llvm.loop !121

138:                                              ; preds = %131, %135
  %139 = phi ptr [ %136, %135 ], [ %133, %131 ]
  %140 = getelementptr inbounds %struct.ScrArea, ptr %139, i64 0, i32 20
  %141 = load ptr, ptr %140, align 8, !tbaa !51
  %142 = icmp eq ptr %141, null
  br i1 %142, label %135, label %143

143:                                              ; preds = %138, %152
  %144 = phi ptr [ %153, %152 ], [ %141, %138 ]
  %145 = getelementptr inbounds %struct.ARegion, ptr %144, i64 0, i32 3
  %146 = tail call zeroext i8 @BLI_rcti_isect(ptr noundef nonnull %132, ptr noundef nonnull %145, ptr noundef null) #7
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.ARegion, ptr %144, i64 0, i32 14
  store i16 1, ptr %149, align 4, !tbaa !58
  %150 = getelementptr inbounds %struct.ARegion, ptr %144, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %150, i8 0, i64 16, i1 false)
  %151 = getelementptr inbounds %struct.ARegion, ptr %144, i64 0, i32 16
  store i16 0, ptr %151, align 8, !tbaa !111
  br label %152

152:                                              ; preds = %148, %143
  %153 = load ptr, ptr %144, align 8, !tbaa !51
  %154 = icmp eq ptr %153, null
  br i1 %154, label %135, label %143, !llvm.loop !122

155:                                              ; preds = %135, %131, %122, %127
  %156 = getelementptr inbounds %struct.ARegion, ptr %123, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !51
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %122, !llvm.loop !123

159:                                              ; preds = %155, %90, %43
  %160 = load i32, ptr @wm_method_draw_overlap_all.rect, align 4, !tbaa !124
  %161 = load i32, ptr getelementptr inbounds (%struct.rcti, ptr @wm_method_draw_overlap_all.rect, i64 0, i32 1), align 4, !tbaa !125
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %187, label %163

163:                                              ; preds = %159
  %164 = load ptr, ptr %7, align 8, !tbaa !51
  %165 = icmp eq ptr %164, null
  br i1 %165, label %186, label %169

166:                                              ; preds = %183, %169
  %167 = load ptr, ptr %170, align 8, !tbaa !51
  %168 = icmp eq ptr %167, null
  br i1 %168, label %186, label %169, !llvm.loop !121

169:                                              ; preds = %163, %166
  %170 = phi ptr [ %167, %166 ], [ %164, %163 ]
  %171 = getelementptr inbounds %struct.ScrArea, ptr %170, i64 0, i32 20
  %172 = load ptr, ptr %171, align 8, !tbaa !51
  %173 = icmp eq ptr %172, null
  br i1 %173, label %166, label %174

174:                                              ; preds = %169, %183
  %175 = phi ptr [ %184, %183 ], [ %172, %169 ]
  %176 = getelementptr inbounds %struct.ARegion, ptr %175, i64 0, i32 3
  %177 = tail call zeroext i8 @BLI_rcti_isect(ptr noundef nonnull @wm_method_draw_overlap_all.rect, ptr noundef nonnull %176, ptr noundef null) #7
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct.ARegion, ptr %175, i64 0, i32 14
  store i16 1, ptr %180, align 4, !tbaa !58
  %181 = getelementptr inbounds %struct.ARegion, ptr %175, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %181, i8 0, i64 16, i1 false)
  %182 = getelementptr inbounds %struct.ARegion, ptr %175, i64 0, i32 16
  store i16 0, ptr %182, align 8, !tbaa !111
  br label %183

183:                                              ; preds = %179, %174
  %184 = load ptr, ptr %175, align 8, !tbaa !51
  %185 = icmp eq ptr %184, null
  br i1 %185, label %166, label %174, !llvm.loop !122

186:                                              ; preds = %166, %163
  store i32 0, ptr getelementptr inbounds (%struct.rcti, ptr @wm_method_draw_overlap_all.rect, i64 0, i32 1), align 4, !tbaa !125
  store i32 0, ptr @wm_method_draw_overlap_all.rect, align 4, !tbaa !124
  br label %187

187:                                              ; preds = %186, %159
  %188 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 12
  %189 = load ptr, ptr %188, align 8, !tbaa !108
  %190 = icmp eq ptr %189, null
  br i1 %190, label %192, label %191

191:                                              ; preds = %187
  tail call void @wm_drags_draw(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @wm_method_draw_overlap_all.rect) #7
  br label %192

192:                                              ; preds = %191, %187
  %193 = load ptr, ptr %7, align 8, !tbaa !51
  %194 = icmp eq ptr %193, null
  br i1 %194, label %238, label %195

195:                                              ; preds = %192
  %196 = icmp eq i32 %2, 0
  %197 = icmp eq i32 %2, 0
  br label %198

198:                                              ; preds = %195, %235
  %199 = phi ptr [ %193, %195 ], [ %236, %235 ]
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef nonnull %199) #7
  %200 = getelementptr inbounds %struct.ScrArea, ptr %199, i64 0, i32 20
  %201 = load ptr, ptr %200, align 8, !tbaa !51
  %202 = icmp eq ptr %201, null
  br i1 %202, label %225, label %203

203:                                              ; preds = %198, %222
  %204 = phi ptr [ %223, %222 ], [ %201, %198 ]
  %205 = getelementptr inbounds %struct.ARegion, ptr %204, i64 0, i32 7
  %206 = load i16, ptr %205, align 4, !tbaa !57
  %207 = icmp eq i16 %206, 0
  br i1 %207, label %222, label %208

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.ARegion, ptr %204, i64 0, i32 14
  %210 = load i16, ptr %209, align 4, !tbaa !58
  %211 = icmp eq i16 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %208
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %204) #7
  tail call void @ED_region_do_draw(ptr noundef %0, ptr noundef nonnull %204) #7
  tail call fastcc void @wm_paintcursor_draw(ptr noundef %0, ptr noundef nonnull %204)
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef null) #7
  br i1 %196, label %222, label %213

213:                                              ; preds = %212
  %214 = getelementptr inbounds %struct.ARegion, ptr %204, i64 0, i32 16
  store i16 2, ptr %214, align 8, !tbaa !111
  br label %222

215:                                              ; preds = %208
  br i1 %197, label %222, label %216

216:                                              ; preds = %215
  %217 = getelementptr inbounds %struct.ARegion, ptr %204, i64 0, i32 16
  %218 = load i16, ptr %217, align 8, !tbaa !111
  switch i16 %218, label %222 [
    i16 2, label %219
    i16 1, label %220
    i16 3, label %221
  ]

219:                                              ; preds = %216
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef nonnull %204) #7
  tail call void @ED_region_do_draw(ptr noundef %0, ptr noundef nonnull %204) #7
  tail call fastcc void @wm_paintcursor_draw(ptr noundef %0, ptr noundef nonnull %204)
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef null) #7
  store i16 3, ptr %217, align 8, !tbaa !111
  br label %222

220:                                              ; preds = %216
  store i16 2, ptr %217, align 8, !tbaa !111
  br label %222

221:                                              ; preds = %216
  store i16 3, ptr %217, align 8, !tbaa !111
  br label %222

222:                                              ; preds = %216, %203, %215, %220, %221, %219, %212, %213
  %223 = load ptr, ptr %204, align 8, !tbaa !51
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %203, !llvm.loop !126

225:                                              ; preds = %222, %198
  %226 = getelementptr inbounds %struct.ScrArea, ptr %199, i64 0, i32 8
  %227 = load i8, ptr %226, align 8, !tbaa !63
  %228 = icmp eq i8 %227, 1
  br i1 %228, label %229, label %235

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.ScrArea, ptr %199, i64 0, i32 19
  %231 = load ptr, ptr %230, align 8, !tbaa !71
  %232 = getelementptr inbounds %struct.View3D, ptr %231, i64 0, i32 28
  %233 = load i16, ptr %232, align 8, !tbaa !79
  %234 = or i16 %233, 8
  store i16 %234, ptr %232, align 8, !tbaa !79
  br label %235

235:                                              ; preds = %225, %229
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef null) #7
  %236 = load ptr, ptr %199, align 8, !tbaa !51
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %198, !llvm.loop !127

238:                                              ; preds = %235, %192
  %239 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 12
  %240 = load i16, ptr %239, align 2, !tbaa !74
  %241 = icmp eq i16 %240, 0
  br i1 %241, label %246, label %242

242:                                              ; preds = %238
  tail call void @ED_screen_draw(ptr noundef %1) #7
  %243 = icmp eq i32 %2, 0
  br i1 %243, label %254, label %244

244:                                              ; preds = %242
  %245 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 17
  store i16 2, ptr %245, align 8, !tbaa !113
  br label %254

246:                                              ; preds = %238
  %247 = icmp eq i32 %2, 0
  br i1 %247, label %254, label %248

248:                                              ; preds = %246
  %249 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 17
  %250 = load i16, ptr %249, align 8, !tbaa !113
  switch i16 %250, label %254 [
    i16 2, label %251
    i16 1, label %252
    i16 3, label %253
  ]

251:                                              ; preds = %248
  tail call void @ED_screen_draw(ptr noundef %1) #7
  store i16 3, ptr %249, align 8, !tbaa !113
  br label %254

252:                                              ; preds = %248
  store i16 2, ptr %249, align 8, !tbaa !113
  br label %254

253:                                              ; preds = %248
  store i16 3, ptr %249, align 8, !tbaa !113
  br label %254

254:                                              ; preds = %248, %246, %252, %253, %251, %242, %244
  %255 = load ptr, ptr %44, align 8, !tbaa !51
  %256 = icmp eq ptr %255, null
  br i1 %256, label %270, label %257

257:                                              ; preds = %254, %267
  %258 = phi ptr [ %268, %267 ], [ %255, %254 ]
  %259 = getelementptr inbounds %struct.ARegion, ptr %258, i64 0, i32 7
  %260 = load i16, ptr %259, align 4, !tbaa !57
  %261 = icmp eq i16 %260, 0
  br i1 %261, label %267, label %262

262:                                              ; preds = %257
  %263 = getelementptr inbounds %struct.ARegion, ptr %258, i64 0, i32 14
  %264 = load i16, ptr %263, align 4, !tbaa !58
  %265 = icmp eq i16 %264, 0
  br i1 %265, label %267, label %266

266:                                              ; preds = %262
  tail call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef nonnull %258) #7
  tail call void @ED_region_do_draw(ptr noundef %0, ptr noundef nonnull %258) #7
  tail call void @CTX_wm_menu_set(ptr noundef %0, ptr noundef null) #7
  br label %267

267:                                              ; preds = %257, %262, %266
  %268 = load ptr, ptr %258, align 8, !tbaa !51
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %257, !llvm.loop !128

270:                                              ; preds = %267, %254
  %271 = getelementptr inbounds %struct.bScreen, ptr %6, i64 0, i32 14
  %272 = load i16, ptr %271, align 2, !tbaa !75
  %273 = icmp eq i16 %272, 0
  br i1 %273, label %275, label %274

274:                                              ; preds = %270
  tail call void @wm_gesture_draw(ptr noundef %1) #7
  br label %275

275:                                              ; preds = %274, %270
  %276 = load ptr, ptr %188, align 8, !tbaa !108
  %277 = icmp eq ptr %276, null
  br i1 %277, label %279, label %278

278:                                              ; preds = %275
  tail call void @wm_drags_draw(ptr noundef %0, ptr noundef %1, ptr noundef null) #7
  br label %279

279:                                              ; preds = %278, %275
  ret void
}

declare void @wm_window_swap_buffers(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @wm_draw_region_clear(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 24
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = tail call i32 @GPU_type_matches(i32 noundef 2, i32 noundef 1024, i32 noundef 131072) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = tail call i32 @GPU_type_matches(i32 noundef 8, i32 noundef 256, i32 noundef 262144) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = tail call i32 @GPU_type_matches(i32 noundef 8, i32 noundef 1024, i32 noundef 262144) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = tail call i32 @GPU_color_depth() #7
  %17 = icmp slt i32 %16, 24
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %2, %6, %9, %12, %15
  %20 = phi i32 [ 1, %6 ], [ 4, %9 ], [ 1, %12 ], [ %18, %15 ], [ %4, %2 ]
  switch i32 %20, label %48 [
    i32 4, label %21
    i32 1, label %21
  ]

21:                                               ; preds = %19, %19
  %22 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %25 = getelementptr inbounds %struct.bScreen, ptr %23, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !51
  %27 = icmp eq ptr %26, null
  br i1 %27, label %48, label %31

28:                                               ; preds = %45, %31
  %29 = load ptr, ptr %32, align 8, !tbaa !51
  %30 = icmp eq ptr %29, null
  br i1 %30, label %48, label %31, !llvm.loop !121

31:                                               ; preds = %21, %28
  %32 = phi ptr [ %29, %28 ], [ %26, %21 ]
  %33 = getelementptr inbounds %struct.ScrArea, ptr %32, i64 0, i32 20
  %34 = load ptr, ptr %33, align 8, !tbaa !51
  %35 = icmp eq ptr %34, null
  br i1 %35, label %28, label %36

36:                                               ; preds = %31, %45
  %37 = phi ptr [ %46, %45 ], [ %34, %31 ]
  %38 = getelementptr inbounds %struct.ARegion, ptr %37, i64 0, i32 3
  %39 = tail call zeroext i8 @BLI_rcti_isect(ptr noundef nonnull %24, ptr noundef nonnull %38, ptr noundef null) #7
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.ARegion, ptr %37, i64 0, i32 14
  store i16 1, ptr %42, align 4, !tbaa !58
  %43 = getelementptr inbounds %struct.ARegion, ptr %37, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  %44 = getelementptr inbounds %struct.ARegion, ptr %37, i64 0, i32 16
  store i16 0, ptr %44, align 8, !tbaa !111
  br label %45

45:                                               ; preds = %41, %36
  %46 = load ptr, ptr %37, align 8, !tbaa !51
  %47 = icmp eq ptr %46, null
  br i1 %47, label %28, label %36, !llvm.loop !122

48:                                               ; preds = %28, %21, %19
  %49 = getelementptr inbounds %struct.wmWindow, ptr %0, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !47
  %51 = getelementptr inbounds %struct.bScreen, ptr %50, i64 0, i32 12
  store i16 1, ptr %51, align 2, !tbaa !74
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_redraw_windows(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  tail call void @wm_draw_update(ptr noundef %0)
  tail call void @CTX_wm_window_set(ptr noundef %0, ptr noundef %2) #7
  tail call void @CTX_wm_area_set(ptr noundef %0, ptr noundef %3) #7
  tail call void @CTX_wm_region_set(ptr noundef %0, ptr noundef %4) #7
  ret void
}

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

declare void @CTX_wm_area_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CTX_wm_region_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @GPU_type_matches(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @GPU_color_depth() local_unnamed_addr #1

declare zeroext i8 @ED_view3d_calc_render_border(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_region_tag_redraw_partial(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @wm_drags_draw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_region_do_draw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @wm_paintcursor_draw(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !98
  %8 = icmp eq ptr %7, null
  br i1 %8, label %71, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 7
  %12 = load i16, ptr %11, align 4, !tbaa !57
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %71, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.wmWindow, ptr %10, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = getelementptr inbounds %struct.bScreen, ptr %16, i64 0, i32 19
  %18 = load i16, ptr %17, align 4, !tbaa !102
  %19 = icmp eq i16 %18, %12
  br i1 %19, label %20, label %71

20:                                               ; preds = %14
  %21 = load ptr, ptr %6, align 8, !tbaa !51
  %22 = icmp eq ptr %21, null
  br i1 %22, label %71, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.wmWindow, ptr %10, i64 0, i32 16
  %25 = getelementptr inbounds %struct.wmWindow, ptr %10, i64 0, i32 21
  br label %26

26:                                               ; preds = %23, %68
  %27 = phi ptr [ %21, %23 ], [ %69, %68 ]
  %28 = getelementptr inbounds %struct.wmPaintCursor, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !129
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = call i32 %29(ptr noundef %0) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %68, label %34

34:                                               ; preds = %31, %26
  %35 = call ptr @CTX_wm_region(ptr noundef %0) #7
  %36 = load i16, ptr %24, align 4, !tbaa !131
  %37 = and i16 %36, -2
  %38 = icmp eq i16 %37, 2
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !tbaa !90
  call void @wm_get_cursor_position(ptr noundef %10, ptr noundef nonnull %3, ptr noundef nonnull %4) #7
  %40 = getelementptr inbounds %struct.wmPaintCursor, ptr %27, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !132
  %42 = load i32, ptr %3, align 4, !tbaa !90
  %43 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 3
  %44 = load i32, ptr %43, align 8, !tbaa !133
  %45 = sub nsw i32 %42, %44
  %46 = load i32, ptr %4, align 4, !tbaa !90
  %47 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 3, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !134
  %49 = sub nsw i32 %46, %48
  %50 = getelementptr inbounds %struct.wmPaintCursor, ptr %27, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !135
  call void %41(ptr noundef %0, i32 noundef %45, i32 noundef %49, ptr noundef %51) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %68

52:                                               ; preds = %34
  %53 = getelementptr inbounds %struct.wmPaintCursor, ptr %27, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !132
  %55 = load ptr, ptr %25, align 8, !tbaa !136
  %56 = getelementptr inbounds %struct.wmEvent, ptr %55, i64 0, i32 4
  %57 = load i32, ptr %56, align 4, !tbaa !137
  %58 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 3
  %59 = load i32, ptr %58, align 8, !tbaa !133
  %60 = sub nsw i32 %57, %59
  %61 = getelementptr inbounds %struct.wmEvent, ptr %55, i64 0, i32 5
  %62 = load i32, ptr %61, align 8, !tbaa !140
  %63 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 3, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !134
  %65 = sub nsw i32 %62, %64
  %66 = getelementptr inbounds %struct.wmPaintCursor, ptr %27, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !135
  call void %54(ptr noundef %0, i32 noundef %60, i32 noundef %65, ptr noundef %67) #7
  br label %68

68:                                               ; preds = %39, %52, %31
  %69 = load ptr, ptr %27, align 8, !tbaa !51
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %26, !llvm.loop !141

71:                                               ; preds = %68, %20, %9, %14, %2
  ret void
}

declare void @ED_screen_draw(ptr noundef) local_unnamed_addr #1

declare void @CTX_wm_menu_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @wm_gesture_draw(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BLI_rcti_isect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare void @wm_get_cursor_position(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @glClearColor(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @glClear(i32 noundef) local_unnamed_addr #1

declare void @wmSubWindowSet(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @wm_triple_draw_textures(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #0 {
  %4 = tail call i32 @WM_window_pixels_x(ptr noundef %0) #7
  %5 = tail call i32 @WM_window_pixels_y(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !86
  tail call void @glEnable(i32 noundef %7) #7
  %8 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !89
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %93

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 3
  br label %13

13:                                               ; preds = %11, %85
  %14 = phi i64 [ 0, %11 ], [ %89, %85 ]
  %15 = phi i32 [ 0, %11 ], [ %88, %85 ]
  %16 = load i32, ptr %12, align 4, !tbaa !88
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %85

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 2, i64 %14
  %20 = sub nsw i32 %5, %15
  %21 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 2, i64 %14
  %22 = sitofp i32 %15 to float
  %23 = trunc i64 %14 to i32
  br label %24

24:                                               ; preds = %18, %60
  %25 = phi i64 [ 0, %18 ], [ %81, %60 ]
  %26 = phi i32 [ %16, %18 ], [ %82, %60 ]
  %27 = phi i32 [ 0, %18 ], [ %80, %60 ]
  %28 = add nsw i32 %26, -1
  %29 = zext i32 %28 to i64
  %30 = icmp eq i64 %25, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = sub nsw i32 %4, %27
  br label %36

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 1, i64 %25
  %35 = load i32, ptr %34, align 4, !tbaa !90
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi i32 [ %32, %31 ], [ %35, %33 ]
  %38 = load i32, ptr %8, align 4, !tbaa !89
  %39 = add nsw i32 %38, -1
  %40 = zext i32 %39 to i64
  %41 = icmp eq i64 %14, %40
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = load i32, ptr %19, align 4, !tbaa !90
  br label %44

44:                                               ; preds = %36, %42
  %45 = phi i32 [ %43, %42 ], [ %20, %36 ]
  %46 = sitofp i32 %37 to float
  %47 = sitofp i32 %45 to float
  %48 = load i32, ptr %6, align 4, !tbaa !86
  %49 = icmp eq i32 %48, 3553
  br i1 %49, label %50, label %60

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 1, i64 %25
  %52 = load i32, ptr %51, align 4, !tbaa !90
  %53 = sitofp i32 %52 to float
  %54 = fdiv float %46, %53
  %55 = load i32, ptr %21, align 4, !tbaa !90
  %56 = sitofp i32 %55 to float
  %57 = fdiv float %47, %56
  %58 = fdiv float 3.750000e-01, %53
  %59 = fdiv float 3.750000e-01, %56
  br label %60

60:                                               ; preds = %50, %44
  %61 = phi float [ %54, %50 ], [ %46, %44 ]
  %62 = phi float [ %57, %50 ], [ %47, %44 ]
  %63 = phi float [ %59, %50 ], [ 3.750000e-01, %44 ]
  %64 = phi float [ %58, %50 ], [ 3.750000e-01, %44 ]
  %65 = mul nsw i32 %26, %23
  %66 = trunc i64 %25 to i32
  %67 = add nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [9 x i32], ptr %1, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !90
  tail call void @glBindTexture(i32 noundef %48, i32 noundef %70) #7
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef %2) #7
  tail call void @glBegin(i32 noundef 7) #7
  tail call void @glTexCoord2f(float noundef %64, float noundef %63) #7
  %71 = sitofp i32 %27 to float
  tail call void @glVertex2f(float noundef %71, float noundef %22) #7
  %72 = fadd float %61, %64
  tail call void @glTexCoord2f(float noundef %72, float noundef %63) #7
  %73 = add nsw i32 %37, %27
  %74 = sitofp i32 %73 to float
  tail call void @glVertex2f(float noundef %74, float noundef %22) #7
  %75 = fadd float %62, %63
  tail call void @glTexCoord2f(float noundef %72, float noundef %75) #7
  %76 = add nsw i32 %45, %15
  %77 = sitofp i32 %76 to float
  tail call void @glVertex2f(float noundef %74, float noundef %77) #7
  tail call void @glTexCoord2f(float noundef %64, float noundef %75) #7
  tail call void @glVertex2f(float noundef %71, float noundef %77) #7
  tail call void @glEnd() #7
  %78 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 1, i64 %25
  %79 = load i32, ptr %78, align 4, !tbaa !90
  %80 = add nsw i32 %79, %27
  %81 = add nuw nsw i64 %25, 1
  %82 = load i32, ptr %12, align 4, !tbaa !88
  %83 = sext i32 %82 to i64
  %84 = icmp slt i64 %81, %83
  br i1 %84, label %24, label %85, !llvm.loop !142

85:                                               ; preds = %60, %13
  %86 = getelementptr inbounds %struct.wmDrawTriple, ptr %1, i64 0, i32 2, i64 %14
  %87 = load i32, ptr %86, align 4, !tbaa !90
  %88 = add nsw i32 %87, %15
  %89 = add nuw nsw i64 %14, 1
  %90 = load i32, ptr %8, align 4, !tbaa !89
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %89, %91
  br i1 %92, label %13, label %93, !llvm.loop !143

93:                                               ; preds = %85, %3
  %94 = load i32, ptr %6, align 4, !tbaa !86
  tail call void @glBindTexture(i32 noundef %94, i32 noundef 0) #7
  %95 = load i32, ptr %6, align 4, !tbaa !86
  tail call void @glDisable(i32 noundef %95) #7
  ret void
}

declare void @ED_region_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @WM_window_pixels_x(ptr noundef) local_unnamed_addr #1

declare i32 @WM_window_pixels_y(ptr noundef) local_unnamed_addr #1

declare void @glEnable(i32 noundef) local_unnamed_addr #1

declare void @glBindTexture(i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @glBegin(i32 noundef) local_unnamed_addr #1

declare void @glTexCoord2f(float noundef, float noundef) local_unnamed_addr #1

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #1

declare void @glEnd() local_unnamed_addr #1

declare void @glDisable(i32 noundef) local_unnamed_addr #1

declare i32 @GPU_non_power_of_two_support() local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @split_width(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #4 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  %6 = tail call i32 @llvm.ctpop.i32(i32 %0), !range !144
  %7 = icmp ugt i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  store i32 %0, ptr %2, align 4, !tbaa !90
  %9 = load i32, ptr %3, align 4, !tbaa !90
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %3, align 4, !tbaa !90
  br label %71

11:                                               ; preds = %4
  %12 = icmp eq i32 %1, 1
  br i1 %12, label %13, label %23

13:                                               ; preds = %11, %13
  %14 = phi i32 [ %16, %13 ], [ %0, %11 ]
  %15 = add nsw i32 %14, -1
  %16 = and i32 %15, %14
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16), !range !144
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %13, label %19, !llvm.loop !145

19:                                               ; preds = %13
  %20 = shl nsw i32 %16, 1
  store i32 %20, ptr %2, align 4, !tbaa !90
  %21 = load i32, ptr %3, align 4, !tbaa !90
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %3, align 4, !tbaa !90
  br label %71

23:                                               ; preds = %11, %27
  %24 = phi i32 [ %29, %27 ], [ %0, %11 ]
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24), !range !144
  %26 = icmp ugt i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = add nsw i32 %24, -1
  %29 = and i32 %28, %24
  br label %23, !llvm.loop !146

30:                                               ; preds = %23
  store i32 %24, ptr %2, align 4, !tbaa !90
  %31 = load i32, ptr %3, align 4, !tbaa !90
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %3, align 4, !tbaa !90
  store i32 %32, ptr %5, align 4, !tbaa !90
  %33 = load i32, ptr %2, align 4, !tbaa !90
  %34 = sub nsw i32 %0, %33
  %35 = add nsw i32 %1, -1
  %36 = getelementptr inbounds i32, ptr %2, i64 1
  call fastcc void @split_width(i32 noundef %34, i32 noundef %35, ptr noundef nonnull %36, ptr noundef nonnull %5)
  %37 = icmp sgt i32 %1, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = zext nneg i32 %1 to i64
  br label %42

40:                                               ; preds = %42, %30
  %41 = phi i32 [ 0, %30 ], [ %47, %42 ]
  br label %50

42:                                               ; preds = %38, %42
  %43 = phi i64 [ 0, %38 ], [ %48, %42 ]
  %44 = phi i32 [ 0, %38 ], [ %47, %42 ]
  %45 = getelementptr inbounds i32, ptr %2, i64 %43
  %46 = load i32, ptr %45, align 4, !tbaa !90
  %47 = add nsw i32 %46, %44
  %48 = add nuw nsw i64 %43, 1
  %49 = icmp eq i64 %48, %39
  br i1 %49, label %40, label %42, !llvm.loop !147

50:                                               ; preds = %40, %50
  %51 = phi i32 [ %53, %50 ], [ %0, %40 ]
  %52 = add nsw i32 %51, -1
  %53 = and i32 %52, %51
  %54 = tail call i32 @llvm.ctpop.i32(i32 %53), !range !144
  %55 = icmp ugt i32 %54, 1
  br i1 %55, label %50, label %56, !llvm.loop !145

56:                                               ; preds = %50
  %57 = shl nsw i32 %53, 1
  %58 = icmp slt i32 %41, %57
  br i1 %58, label %69, label %59

59:                                               ; preds = %56, %59
  %60 = phi i32 [ %62, %59 ], [ %0, %56 ]
  %61 = add nsw i32 %60, -1
  %62 = and i32 %61, %60
  %63 = tail call i32 @llvm.ctpop.i32(i32 %62), !range !144
  %64 = icmp ugt i32 %63, 1
  br i1 %64, label %59, label %65, !llvm.loop !145

65:                                               ; preds = %59
  %66 = shl nsw i32 %62, 1
  store i32 %66, ptr %2, align 4, !tbaa !90
  %67 = zext nneg i32 %35 to i64
  %68 = shl nuw nsw i64 %67, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %36, i8 0, i64 %68, i1 false)
  br label %71

69:                                               ; preds = %56
  %70 = load i32, ptr %5, align 4, !tbaa !90
  store i32 %70, ptr %3, align 4, !tbaa !90
  br label %71

71:                                               ; preds = %19, %69, %65, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret void
}

declare void @glGenTextures(i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @GPU_max_texture_size() local_unnamed_addr #1

declare void @glTexImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @glTexParameteri(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @glGetError() local_unnamed_addr #1

declare void @glCopyTexSubImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare float @ED_region_blend_factor(ptr noundef) local_unnamed_addr #1

declare void @wmSubWindowScissorSet(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @glDeleteTextures(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!47 = !{!35, !36, i64 24}
!48 = !{!49, !39, i64 220}
!49 = !{!"bScreen", !50, i64 0, !41, i64 120, !41, i64 136, !41, i64 152, !41, i64 168, !36, i64 184, !36, i64 192, !40, i64 200, !40, i64 204, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !36, i64 232, !36, i64 240}
!50 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!51 = !{!36, !36, i64 0}
!52 = !{!53, !39, i64 230}
!53 = !{!"ARegion", !36, i64 0, !36, i64 8, !54, i64 16, !56, i64 176, !56, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !44, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !36, i64 240, !41, i64 248, !41, i64 264, !41, i64 280, !41, i64 296, !41, i64 312, !41, i64 328, !41, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!54 = !{!"View2D", !55, i64 0, !55, i64 16, !56, i64 32, !56, i64 48, !56, i64 64, !37, i64 80, !37, i64 88, !44, i64 96, !44, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !36, i64 128, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!55 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!56 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!57 = !{!53, !39, i64 212}
!58 = !{!53, !39, i64 228}
!59 = distinct !{!59, !60, !61}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = distinct !{!62, !60, !61}
!63 = !{!64, !37, i64 72}
!64 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !56, i64 56, !37, i64 72, !37, i64 73, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !39, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !41, i64 96, !41, i64 112, !41, i64 128, !41, i64 144}
!65 = !{!53, !36, i64 376}
!66 = !{!67, !36, i64 656}
!67 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !37, i64 696, !37, i64 760, !44, i64 776, !44, i64 780, !44, i64 784, !44, i64 788, !37, i64 792, !44, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !39, i64 824, !39, i64 826, !37, i64 828, !39, i64 844, !39, i64 846, !44, i64 848, !37, i64 852, !44, i64 864, !37, i64 868}
!68 = !{!69, !40, i64 16}
!69 = !{!"RenderEngine", !36, i64 0, !36, i64 8, !40, i64 16, !36, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !36, i64 48, !41, i64 56, !37, i64 72, !40, i64 584, !40, i64 588, !36, i64 592, !40, i64 600, !40, i64 604, !55, i64 608, !56, i64 624, !37, i64 640, !40, i64 704, !40, i64 708}
!70 = !{!49, !36, i64 184}
!71 = !{!64, !36, i64 96}
!72 = distinct !{!72, !60, !61}
!73 = !{!49, !39, i64 216}
!74 = !{!49, !39, i64 214}
!75 = !{!49, !39, i64 218}
!76 = !{!49, !39, i64 222}
!77 = !{!35, !40, i64 164}
!78 = distinct !{!78, !60, !61}
!79 = !{!80, !39, i64 240}
!80 = !{!"View3D", !36, i64 0, !36, i64 8, !41, i64 16, !40, i64 32, !44, i64 36, !37, i64 40, !37, i64 56, !44, i64 72, !44, i64 76, !37, i64 80, !37, i64 81, !40, i64 84, !40, i64 88, !39, i64 92, !39, i64 94, !36, i64 96, !36, i64 104, !55, i64 112, !41, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !40, i64 224, !40, i64 228, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !37, i64 260, !37, i64 272, !39, i64 284, !39, i64 286, !39, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !41, i64 296, !41, i64 312, !41, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!81 = distinct !{!81, !60, !61}
!82 = distinct !{!82, !60, !61}
!83 = !{!35, !36, i64 168}
!84 = !{!49, !39, i64 226}
!85 = !{!37, !37, i64 0}
!86 = !{!87, !40, i64 68}
!87 = !{!"wmDrawTriple", !37, i64 0, !37, i64 36, !37, i64 48, !40, i64 60, !40, i64 64, !40, i64 68}
!88 = !{!87, !40, i64 60}
!89 = !{!87, !40, i64 64}
!90 = !{!40, !40, i64 0}
!91 = distinct !{!91, !60, !61}
!92 = distinct !{!92, !60, !61}
!93 = !{!53, !39, i64 234}
!94 = distinct !{!94, !60, !61}
!95 = distinct !{!95, !60, !61}
!96 = distinct !{!96, !60, !61}
!97 = distinct !{!97, !60, !61}
!98 = !{!99, !36, i64 248}
!99 = !{!"wmWindowManager", !50, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !40, i64 152, !39, i64 156, !39, i64 158, !41, i64 160, !41, i64 176, !100, i64 192, !41, i64 232, !41, i64 248, !41, i64 264, !41, i64 280, !36, i64 296, !36, i64 304, !36, i64 312, !41, i64 320, !36, i64 336, !37, i64 344, !37, i64 345}
!100 = !{!"ReportList", !41, i64 0, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32}
!101 = distinct !{!101, !60, !61}
!102 = !{!49, !39, i64 228}
!103 = distinct !{!103, !60, !61}
!104 = distinct !{!104, !60, !61}
!105 = distinct !{!105, !60, !61}
!106 = distinct !{!106, !60, !61}
!107 = !{!35, !36, i64 240}
!108 = !{!99, !36, i64 264}
!109 = distinct !{!109, !60, !61}
!110 = distinct !{!110, !60, !61}
!111 = !{!53, !39, i64 232}
!112 = distinct !{!112, !60, !61}
!113 = !{!49, !39, i64 224}
!114 = distinct !{!114, !60, !61}
!115 = distinct !{!115, !60, !61}
!116 = !{!49, !36, i64 168}
!117 = distinct !{!117, !60, !61}
!118 = distinct !{!118, !60, !61}
!119 = distinct !{!119, !60, !61}
!120 = distinct !{!120, !60, !61}
!121 = distinct !{!121, !60, !61}
!122 = distinct !{!122, !60, !61}
!123 = distinct !{!123, !60, !61}
!124 = !{!56, !40, i64 0}
!125 = !{!56, !40, i64 4}
!126 = distinct !{!126, !60, !61}
!127 = distinct !{!127, !60, !61}
!128 = distinct !{!128, !60, !61}
!129 = !{!130, !36, i64 24}
!130 = !{!"wmPaintCursor", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!131 = !{!35, !39, i64 124}
!132 = !{!130, !36, i64 32}
!133 = !{!53, !40, i64 176}
!134 = !{!53, !40, i64 184}
!135 = !{!130, !36, i64 16}
!136 = !{!35, !36, i64 136}
!137 = !{!138, !40, i64 20}
!138 = !{!"wmEvent", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !40, i64 20, !40, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !39, i64 44, !39, i64 46, !40, i64 48, !40, i64 52, !139, i64 56, !40, i64 64, !40, i64 68, !39, i64 72, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !36, i64 88, !36, i64 96, !39, i64 104, !39, i64 106, !40, i64 108, !36, i64 112}
!139 = !{!"double", !37, i64 0}
!140 = !{!138, !40, i64 24}
!141 = distinct !{!141, !60, !61}
!142 = distinct !{!142, !60, !61}
!143 = distinct !{!143, !60, !61}
!144 = !{i32 0, i32 33}
!145 = distinct !{!145, !60, !61}
!146 = distinct !{!146, !60, !61}
!147 = distinct !{!147, !60, !61}
